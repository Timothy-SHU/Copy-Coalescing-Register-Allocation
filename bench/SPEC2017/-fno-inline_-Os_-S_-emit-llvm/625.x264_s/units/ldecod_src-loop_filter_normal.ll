; ModuleID = 'ldecod_src/loop_filter_normal.c'
source_filename = "ldecod_src/loop_filter_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@PicPos = external local_unnamed_addr global ptr, align 8
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@ALPHA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = internal unnamed_addr constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16
@pelnum_cr = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_normal(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 162
  store ptr @GetStrengthVer, ptr %2, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 163
  store ptr @GetStrengthHor, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 164
  store ptr @EdgeLoopLumaVer, ptr %4, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 165
  store ptr @EdgeLoopLumaHor, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 166
  store ptr @EdgeLoopChromaVer, ptr %6, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 167
  store ptr @EdgeLoopChromaHor, ptr %7, align 8, !tbaa !21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthVer(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i8 4, i8 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %13, i64 16, i1 false)
  br label %149

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !28
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %146

18:                                               ; preds = %14
  %19 = add nsw i32 %2, -1
  %20 = tail call fastcc ptr @get_non_aff_neighbor_luma(ptr noundef nonnull %1, i32 noundef %19, i32 noundef 0) #8
  %21 = icmp eq i32 %2, 0
  %22 = select i1 %21, ptr %20, ptr %1
  br i1 %21, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.macroblock, ptr %20, i64 0, i32 18
  %25 = load i32, ptr %24, align 8, !tbaa !28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %145

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr @PicPos, align 8, !tbaa !29
  %29 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.BlockPos, ptr %28, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa.struct !31
  %34 = getelementptr inbounds i8, ptr %32, i64 2
  %35 = load i16, ptr %34, align 2, !tbaa.struct !33
  %36 = shl i16 %33, 2
  %37 = shl i16 %35, 2
  %38 = ashr i32 %2, 2
  %39 = and i32 %19, 15
  %40 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %41 = load i64, ptr %40, align 8, !tbaa !34
  %42 = lshr i32 %39, 2
  %43 = getelementptr inbounds %struct.macroblock, ptr %22, i64 0, i32 33
  %44 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 30
  %45 = sext i16 %37 to i32
  %46 = sext i16 %36 to i32
  %47 = and i32 %38, 3
  %48 = or disjoint i32 %47, %46
  %49 = getelementptr inbounds %struct.macroblock, ptr %20, i64 0, i32 9
  %50 = getelementptr inbounds %struct.macroblock, ptr %20, i64 0, i32 8
  %51 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %52 = sext i32 %48 to i64
  br label %53

53:                                               ; preds = %27, %139
  %54 = phi i64 [ 0, %27 ], [ %143, %139 ]
  %55 = trunc i64 %54 to i32
  %56 = add i32 %38, %55
  %57 = tail call fastcc i64 @i64_power2(i32 noundef %56) #8
  %58 = and i64 %57, %41
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %139

60:                                               ; preds = %53
  %61 = load i64, ptr %43, align 8, !tbaa !34
  %62 = trunc i64 %54 to i32
  %63 = or disjoint i32 %42, %62
  %64 = tail call fastcc i64 @i64_power2(i32 noundef %63) #8
  %65 = and i64 %64, %61
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %139

67:                                               ; preds = %60
  br i1 %21, label %72, label %68

68:                                               ; preds = %67
  %69 = load i16, ptr %44, align 8, !tbaa !35
  %70 = add i16 %69, -1
  %71 = icmp ult i16 %70, 2
  br i1 %71, label %139, label %72

72:                                               ; preds = %68, %67
  %73 = ashr i32 %56, 2
  %74 = add nsw i32 %73, %45
  %75 = load i32, ptr %49, align 8, !tbaa !36
  %76 = trunc i64 %54 to i32
  %77 = add nsw i32 %75, %76
  %78 = shl i32 %77, 16
  %79 = ashr i32 %78, 18
  %80 = load i32, ptr %50, align 4, !tbaa !37
  %81 = add nsw i32 %80, %39
  %82 = shl i32 %81, 16
  %83 = ashr i32 %82, 18
  %84 = load ptr, ptr %51, align 8, !tbaa !38
  %85 = sext i32 %74 to i64
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !29
  %88 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %52
  %89 = load ptr, ptr %88, align 8, !tbaa !29
  %90 = getelementptr inbounds [2 x ptr], ptr %88, i64 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !29
  %92 = sext i32 %79 to i64
  %93 = getelementptr inbounds ptr, ptr %84, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !29
  %95 = sext i32 %83 to i64
  %96 = getelementptr inbounds %struct.pic_motion_params, ptr %94, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !29
  %98 = getelementptr inbounds [2 x ptr], ptr %96, i64 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !29
  %100 = icmp eq ptr %89, %97
  %101 = icmp eq ptr %91, %99
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %107, label %103

103:                                              ; preds = %72
  %104 = icmp eq ptr %89, %99
  %105 = icmp eq ptr %91, %97
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %139

107:                                              ; preds = %103, %72
  %108 = icmp eq ptr %89, %91
  %109 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %52, i32 1
  %110 = getelementptr inbounds %struct.pic_motion_params, ptr %94, i64 %95, i32 1
  br i1 %108, label %124, label %111

111:                                              ; preds = %107
  br i1 %100, label %112, label %118

112:                                              ; preds = %111
  %113 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %109, ptr noundef nonnull %110, i32 noundef %3) #8, !range !41
  %114 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %52, i32 1, i64 1
  %115 = getelementptr inbounds %struct.pic_motion_params, ptr %94, i64 %95, i32 1, i64 1
  %116 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %114, ptr noundef nonnull %115, i32 noundef %3) #8, !range !41
  %117 = or i32 %116, %113
  br label %139

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.pic_motion_params, ptr %94, i64 %95, i32 1, i64 1
  %120 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %109, ptr noundef nonnull %119, i32 noundef %3) #8, !range !41
  %121 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %52, i32 1, i64 1
  %122 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %121, ptr noundef nonnull %110, i32 noundef %3) #8, !range !41
  %123 = or i32 %122, %120
  br label %139

124:                                              ; preds = %107
  %125 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %109, ptr noundef nonnull %110, i32 noundef %3) #8, !range !41
  %126 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %52, i32 1, i64 1
  %127 = getelementptr inbounds %struct.pic_motion_params, ptr %94, i64 %95, i32 1, i64 1
  %128 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %126, ptr noundef nonnull %127, i32 noundef %3) #8, !range !41
  %129 = or i32 %128, %125
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %124
  %132 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %109, ptr noundef nonnull %127, i32 noundef %3) #8, !range !41
  %133 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %126, ptr noundef nonnull %110, i32 noundef %3) #8, !range !41
  %134 = or i32 %133, %132
  %135 = icmp ne i32 %134, 0
  br label %136

136:                                              ; preds = %131, %124
  %137 = phi i1 [ false, %124 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %68, %112, %118, %136, %103, %53, %60
  %140 = phi i32 [ 2, %60 ], [ 2, %53 ], [ 0, %68 ], [ %117, %112 ], [ %123, %118 ], [ %138, %136 ], [ 1, %103 ]
  %141 = mul nuw nsw i32 %140, 16843009
  %142 = getelementptr inbounds i8, ptr %0, i64 %54
  store i32 %141, ptr %142, align 4, !tbaa !42
  %143 = add nuw nsw i64 %54, 4
  %144 = icmp ult i64 %54, 12
  br i1 %144, label %53, label %149, !llvm.loop !43

145:                                              ; preds = %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 4, i64 16, i1 false)
  br label %149

146:                                              ; preds = %14
  %147 = icmp eq i32 %2, 0
  %148 = select i1 %147, i8 4, i8 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %148, i64 16, i1 false)
  br label %149

149:                                              ; preds = %139, %145, %146, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthHor(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %145, label %149

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !28
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %143

17:                                               ; preds = %13
  %18 = icmp slt i32 %2, 16
  %19 = add nsw i32 %2, -1
  %20 = select i1 %18, i32 %19, i32 0
  %21 = tail call fastcc ptr @get_non_aff_neighbor_luma(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %20) #8
  %22 = icmp eq i32 %2, 0
  %23 = select i1 %22, ptr %21, ptr %1
  br i1 %22, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.macroblock, ptr %21, i64 0, i32 18
  %26 = load i32, ptr %25, align 8, !tbaa !28
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %145

28:                                               ; preds = %24, %17
  %29 = load ptr, ptr @PicPos, align 8, !tbaa !29
  %30 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.BlockPos, ptr %29, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa.struct !31
  %35 = getelementptr inbounds i8, ptr %33, i64 2
  %36 = load i16, ptr %35, align 2, !tbaa.struct !33
  %37 = shl i16 %34, 2
  %38 = shl i16 %36, 2
  %39 = add nsw i32 %20, 1
  %40 = and i32 %39, 65532
  %41 = and i32 %20, 15
  %42 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %43 = load i64, ptr %42, align 8, !tbaa !34
  %44 = and i32 %20, 12
  %45 = getelementptr inbounds %struct.macroblock, ptr %23, i64 0, i32 33
  %46 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 30
  %47 = sext i16 %38 to i32
  %48 = lshr exact i32 %40, 2
  %49 = add nsw i32 %48, %47
  %50 = getelementptr inbounds %struct.macroblock, ptr %21, i64 0, i32 9
  %51 = getelementptr inbounds %struct.macroblock, ptr %21, i64 0, i32 8
  %52 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %53 = sext i32 %49 to i64
  %54 = sext i16 %37 to i64
  br label %55

55:                                               ; preds = %28, %137
  %56 = phi i64 [ 0, %28 ], [ %141, %137 ]
  %57 = lshr exact i64 %56, 2
  %58 = trunc i64 %57 to i32
  %59 = or i32 %40, %58
  %60 = tail call fastcc i64 @i64_power2(i32 noundef %59) #8
  %61 = and i64 %60, %43
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %137

63:                                               ; preds = %55
  %64 = load i64, ptr %45, align 8, !tbaa !34
  %65 = trunc i64 %57 to i32
  %66 = or i32 %44, %65
  %67 = tail call fastcc i64 @i64_power2(i32 noundef %66) #8
  %68 = and i64 %67, %64
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %137

70:                                               ; preds = %63
  br i1 %22, label %73, label %71

71:                                               ; preds = %70
  %72 = load i16, ptr %46, align 8, !tbaa !35
  switch i16 %72, label %73 [
    i16 1, label %137
    i16 3, label %137
  ]

73:                                               ; preds = %71, %70
  %74 = or disjoint i64 %57, %54
  %75 = load i32, ptr %50, align 8, !tbaa !36
  %76 = add nsw i32 %75, %41
  %77 = ashr i32 %76, 2
  %78 = load i32, ptr %51, align 4, !tbaa !37
  %79 = trunc i64 %56 to i32
  %80 = add nsw i32 %78, %79
  %81 = shl i32 %80, 16
  %82 = ashr i32 %81, 18
  %83 = load ptr, ptr %52, align 8, !tbaa !38
  %84 = getelementptr inbounds ptr, ptr %83, i64 %53
  %85 = load ptr, ptr %84, align 8, !tbaa !29
  %86 = getelementptr inbounds %struct.pic_motion_params, ptr %85, i64 %74
  %87 = sext i32 %77 to i64
  %88 = getelementptr inbounds ptr, ptr %83, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !29
  %90 = sext i32 %82 to i64
  %91 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %90
  %92 = load ptr, ptr %86, align 8, !tbaa !29
  %93 = load ptr, ptr %91, align 8, !tbaa !29
  %94 = getelementptr inbounds [2 x ptr], ptr %86, i64 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !29
  %96 = getelementptr inbounds [2 x ptr], ptr %91, i64 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !29
  %98 = icmp eq ptr %92, %93
  %99 = icmp eq ptr %95, %97
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %105, label %101

101:                                              ; preds = %73
  %102 = icmp eq ptr %92, %97
  %103 = icmp eq ptr %95, %93
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %137

105:                                              ; preds = %101, %73
  %106 = icmp eq ptr %92, %95
  %107 = getelementptr inbounds %struct.pic_motion_params, ptr %85, i64 %74, i32 1
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %90, i32 1
  br i1 %106, label %122, label %109

109:                                              ; preds = %105
  br i1 %98, label %110, label %116

110:                                              ; preds = %109
  %111 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %107, ptr noundef nonnull %108, i32 noundef %3) #8, !range !41
  %112 = getelementptr inbounds %struct.pic_motion_params, ptr %85, i64 %74, i32 1, i64 1
  %113 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %90, i32 1, i64 1
  %114 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %112, ptr noundef nonnull %113, i32 noundef %3) #8, !range !41
  %115 = or i32 %114, %111
  br label %137

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %90, i32 1, i64 1
  %118 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %107, ptr noundef nonnull %117, i32 noundef %3) #8, !range !41
  %119 = getelementptr inbounds %struct.pic_motion_params, ptr %85, i64 %74, i32 1, i64 1
  %120 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %119, ptr noundef nonnull %108, i32 noundef %3) #8, !range !41
  %121 = or i32 %120, %118
  br label %137

122:                                              ; preds = %105
  %123 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %107, ptr noundef nonnull %108, i32 noundef %3) #8, !range !41
  %124 = getelementptr inbounds %struct.pic_motion_params, ptr %85, i64 %74, i32 1, i64 1
  %125 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %90, i32 1, i64 1
  %126 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %124, ptr noundef nonnull %125, i32 noundef %3) #8, !range !41
  %127 = or i32 %126, %123
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %107, ptr noundef nonnull %125, i32 noundef %3) #8, !range !41
  %131 = tail call fastcc i32 @compare_mvs(ptr noundef nonnull %124, ptr noundef nonnull %108, i32 noundef %3) #8, !range !41
  %132 = or i32 %131, %130
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %129, %122
  %135 = phi i1 [ false, %122 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  br label %137

137:                                              ; preds = %110, %116, %134, %101, %71, %71, %55, %63
  %138 = phi i32 [ 2, %63 ], [ 2, %55 ], [ 0, %71 ], [ 0, %71 ], [ %115, %110 ], [ %121, %116 ], [ %136, %134 ], [ 1, %101 ]
  %139 = mul nuw nsw i32 %138, 16843009
  %140 = getelementptr inbounds i8, ptr %0, i64 %56
  store i32 %139, ptr %140, align 4, !tbaa !42
  %141 = add nuw nsw i64 %56, 4
  %142 = icmp ult i64 %56, 12
  br i1 %142, label %55, label %151, !llvm.loop !45

143:                                              ; preds = %13
  %144 = icmp eq i32 %2, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %143, %24, %11
  %146 = load i32, ptr %4, align 8, !tbaa !46
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i8 4, i8 3
  br label %149

149:                                              ; preds = %145, %143, %11
  %150 = phi i8 [ 3, %11 ], [ 3, %143 ], [ %148, %145 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %150, i64 16, i1 false)
  br label %151

151:                                              ; preds = %137, %149
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaVer(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, ptr nocapture readnone %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = add nsw i32 %4, -1
  %10 = tail call fastcc ptr @get_non_aff_neighbor_luma(ptr noundef %3, i32 noundef %9, i32 noundef 0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %14 = load i16, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %365

16:                                               ; preds = %12, %6
  %17 = icmp eq i32 %0, 0
  %18 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %19 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = load i32, ptr %20, align 4, !tbaa !42
  %22 = getelementptr inbounds %struct.macroblock, ptr %10, i64 0, i32 14
  %23 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 14
  %24 = add i32 %0, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.macroblock, ptr %10, i64 0, i32 15, i64 %25
  %27 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 15, i64 %25
  %28 = select i1 %17, ptr %23, ptr %27
  %29 = select i1 %17, ptr %22, ptr %26
  %30 = load i32, ptr %29, align 4, !tbaa !42
  %31 = load i32, ptr %28, align 4, !tbaa !42
  %32 = add nsw i32 %31, %30
  %33 = add nsw i32 %32, 1
  %34 = ashr i32 %33, 1
  %35 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %36 = load i16, ptr %35, align 2, !tbaa !49
  %37 = sext i16 %36 to i32
  %38 = add nsw i32 %34, %37
  %39 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %38) #8
  %40 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %41 = load i16, ptr %40, align 4, !tbaa !50
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %34, %42
  %44 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %43) #8
  %45 = sext i32 %39 to i64
  %46 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !51
  %48 = zext i8 %47 to i32
  %49 = mul nsw i32 %21, %48
  %50 = sext i32 %44 to i64
  %51 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !51
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %21, %53
  %55 = or i32 %54, %49
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %365, label %57

57:                                               ; preds = %16
  %58 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %45
  %59 = zext i32 %0 to i64
  %60 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !42
  %62 = getelementptr inbounds %struct.macroblock, ptr %10, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !37
  %64 = and i32 %9, 15
  %65 = add nsw i32 %63, %64
  %66 = getelementptr inbounds %struct.macroblock, ptr %10, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !36
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %1, i64 %68
  %70 = sext i32 %65 to i64
  %71 = ashr i32 %49, 2
  %72 = add nsw i32 %71, 2
  br label %73

73:                                               ; preds = %57, %360
  %74 = phi ptr [ %2, %57 ], [ %362, %360 ]
  %75 = phi ptr [ %69, %57 ], [ %361, %360 ]
  %76 = phi i32 [ 0, %57 ], [ %363, %360 ]
  %77 = load i8, ptr %74, align 1, !tbaa !51
  switch i8 %77, label %203 [
    i8 4, label %78
    i8 0, label %358
  ]

78:                                               ; preds = %73, %200
  %79 = phi ptr [ %81, %200 ], [ %75, %73 ]
  %80 = phi i32 [ %201, %200 ], [ 0, %73 ]
  %81 = getelementptr inbounds ptr, ptr %79, i64 1
  %82 = load ptr, ptr %79, align 8, !tbaa !29
  %83 = getelementptr inbounds i16, ptr %82, i64 %70
  %84 = getelementptr inbounds i16, ptr %83, i64 1
  %85 = load i16, ptr %83, align 2, !tbaa !32
  %86 = load i16, ptr %84, align 2, !tbaa !32
  %87 = zext i16 %86 to i32
  %88 = zext i16 %85 to i32
  %89 = sub nsw i32 %87, %88
  %90 = tail call fastcc i32 @iabs(i32 noundef %89) #8
  %91 = icmp slt i32 %90, %49
  br i1 %91, label %92, label %200

92:                                               ; preds = %78
  %93 = getelementptr inbounds i16, ptr %83, i64 2
  %94 = load i16, ptr %93, align 2, !tbaa !32
  %95 = getelementptr inbounds i16, ptr %83, i64 -1
  %96 = zext i16 %94 to i32
  %97 = sub nsw i32 %87, %96
  %98 = tail call fastcc i32 @iabs(i32 noundef %97) #8
  %99 = icmp slt i32 %98, %54
  br i1 %99, label %100, label %200

100:                                              ; preds = %92
  %101 = load i16, ptr %95, align 2, !tbaa !32
  %102 = zext i16 %101 to i32
  %103 = sub nsw i32 %88, %102
  %104 = tail call fastcc i32 @iabs(i32 noundef %103) #8
  %105 = icmp slt i32 %104, %54
  br i1 %105, label %106, label %200

106:                                              ; preds = %100
  %107 = icmp slt i32 %90, %72
  br i1 %107, label %108, label %184

108:                                              ; preds = %106
  %109 = getelementptr inbounds i16, ptr %83, i64 3
  %110 = load i16, ptr %109, align 2, !tbaa !32
  %111 = getelementptr inbounds i16, ptr %83, i64 -2
  %112 = load i16, ptr %111, align 2, !tbaa !32
  %113 = add nuw nsw i32 %87, %88
  %114 = zext i16 %112 to i32
  %115 = sub nsw i32 %88, %114
  %116 = tail call fastcc i32 @iabs(i32 noundef %115) #8
  %117 = icmp slt i32 %116, %54
  br i1 %117, label %118, label %141

118:                                              ; preds = %108
  %119 = getelementptr inbounds i16, ptr %83, i64 -3
  %120 = load i16, ptr %119, align 2, !tbaa !32
  %121 = add nuw nsw i32 %113, %102
  %122 = shl nuw nsw i32 %121, 1
  %123 = add nuw nsw i32 %96, 4
  %124 = add nuw nsw i32 %123, %122
  %125 = add nuw nsw i32 %124, %114
  %126 = lshr i32 %125, 3
  %127 = add nuw nsw i32 %113, 2
  %128 = add nuw nsw i32 %127, %102
  %129 = add nuw nsw i32 %128, %114
  %130 = lshr i32 %129, 2
  %131 = trunc i32 %130 to i16
  store i16 %131, ptr %95, align 2, !tbaa !32
  %132 = zext i16 %120 to i32
  %133 = add nuw nsw i32 %132, %114
  %134 = shl nuw nsw i32 %133, 1
  %135 = add nuw nsw i32 %113, 4
  %136 = add nuw nsw i32 %135, %102
  %137 = add nuw nsw i32 %136, %114
  %138 = add nuw nsw i32 %137, %134
  %139 = lshr i32 %138, 3
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr %111, align 2, !tbaa !32
  br label %147

141:                                              ; preds = %108
  %142 = shl nuw nsw i32 %102, 1
  %143 = add nuw nsw i32 %88, 2
  %144 = add nuw nsw i32 %143, %96
  %145 = add nuw nsw i32 %144, %142
  %146 = lshr i32 %145, 2
  br label %147

147:                                              ; preds = %141, %118
  %148 = phi i32 [ %126, %118 ], [ %146, %141 ]
  %149 = trunc i32 %148 to i16
  store i16 %149, ptr %83, align 2
  %150 = zext i16 %110 to i32
  %151 = sub nsw i32 %87, %150
  %152 = tail call fastcc i32 @iabs(i32 noundef %151) #8
  %153 = icmp slt i32 %152, %54
  br i1 %153, label %154, label %178

154:                                              ; preds = %147
  %155 = getelementptr inbounds i16, ptr %83, i64 4
  %156 = load i16, ptr %155, align 2, !tbaa !32
  %157 = add nuw nsw i32 %113, %96
  %158 = shl nuw nsw i32 %157, 1
  %159 = add nuw nsw i32 %158, 4
  %160 = add nuw nsw i32 %159, %102
  %161 = add nuw nsw i32 %160, %150
  %162 = lshr i32 %161, 3
  %163 = trunc i32 %162 to i16
  store i16 %163, ptr %84, align 2, !tbaa !32
  %164 = add nuw nsw i32 %88, 2
  %165 = add nuw nsw i32 %164, %87
  %166 = add nuw nsw i32 %165, %96
  %167 = add nuw nsw i32 %166, %150
  %168 = lshr i32 %167, 2
  %169 = trunc i32 %168 to i16
  store i16 %169, ptr %93, align 2, !tbaa !32
  %170 = zext i16 %156 to i32
  %171 = add nuw nsw i32 %170, %150
  %172 = shl nuw nsw i32 %171, 1
  %173 = add nuw nsw i32 %113, 4
  %174 = add nuw nsw i32 %173, %96
  %175 = add nuw nsw i32 %174, %150
  %176 = add nuw nsw i32 %175, %172
  %177 = lshr i32 %176, 3
  br label %196

178:                                              ; preds = %147
  %179 = shl nuw nsw i32 %96, 1
  %180 = add nuw nsw i32 %87, 2
  %181 = add nuw nsw i32 %180, %179
  %182 = add nuw nsw i32 %181, %102
  %183 = lshr i32 %182, 2
  br label %196

184:                                              ; preds = %106
  %185 = shl nuw nsw i32 %102, 1
  %186 = add nuw nsw i32 %88, 2
  %187 = add nuw nsw i32 %186, %96
  %188 = add nuw nsw i32 %187, %185
  %189 = lshr i32 %188, 2
  %190 = trunc i32 %189 to i16
  store i16 %190, ptr %83, align 2, !tbaa !32
  %191 = shl nuw nsw i32 %96, 1
  %192 = add nuw nsw i32 %87, 2
  %193 = add nuw nsw i32 %192, %191
  %194 = add nuw nsw i32 %193, %102
  %195 = lshr i32 %194, 2
  br label %196

196:                                              ; preds = %154, %178, %184
  %197 = phi i32 [ %195, %184 ], [ %183, %178 ], [ %177, %154 ]
  %198 = phi ptr [ %84, %184 ], [ %84, %178 ], [ %109, %154 ]
  %199 = trunc i32 %197 to i16
  store i16 %199, ptr %198, align 2, !tbaa !32
  br label %200

200:                                              ; preds = %196, %92, %100, %78
  %201 = add nuw nsw i32 %80, 1
  %202 = icmp eq i32 %201, 4
  br i1 %202, label %360, label %78, !llvm.loop !52

203:                                              ; preds = %73
  %204 = zext i8 %77 to i64
  %205 = getelementptr inbounds i8, ptr %58, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !51
  %207 = zext i8 %206 to i32
  %208 = mul nsw i32 %21, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %203
  %211 = sub nsw i32 0, %208
  br label %274

212:                                              ; preds = %203, %271
  %213 = phi ptr [ %215, %271 ], [ %75, %203 ]
  %214 = phi i32 [ %272, %271 ], [ 0, %203 ]
  %215 = getelementptr inbounds ptr, ptr %213, i64 1
  %216 = load ptr, ptr %213, align 8, !tbaa !29
  %217 = getelementptr inbounds i16, ptr %216, i64 %70
  %218 = getelementptr inbounds i16, ptr %217, i64 1
  %219 = load i16, ptr %218, align 2, !tbaa !32
  %220 = zext i16 %219 to i32
  %221 = load i16, ptr %217, align 2, !tbaa !32
  %222 = zext i16 %221 to i32
  %223 = sub nsw i32 %220, %222
  %224 = tail call fastcc i32 @iabs(i32 noundef %223) #8
  %225 = icmp slt i32 %224, %49
  br i1 %225, label %226, label %271

226:                                              ; preds = %212
  %227 = getelementptr inbounds i16, ptr %217, i64 2
  %228 = load i16, ptr %227, align 2, !tbaa !32
  %229 = zext i16 %228 to i32
  %230 = sub nsw i32 %220, %229
  %231 = tail call fastcc i32 @iabs(i32 noundef %230) #8
  %232 = icmp slt i32 %231, %54
  br i1 %232, label %233, label %271

233:                                              ; preds = %226
  %234 = getelementptr inbounds i16, ptr %217, i64 -1
  %235 = load i16, ptr %234, align 2, !tbaa !32
  %236 = zext i16 %235 to i32
  %237 = sub nsw i32 %222, %236
  %238 = tail call fastcc i32 @iabs(i32 noundef %237) #8
  %239 = icmp slt i32 %238, %54
  br i1 %239, label %240, label %271

240:                                              ; preds = %233
  %241 = getelementptr inbounds i16, ptr %217, i64 3
  %242 = load i16, ptr %241, align 2, !tbaa !32
  %243 = getelementptr inbounds i16, ptr %217, i64 -2
  %244 = load i16, ptr %243, align 2, !tbaa !32
  %245 = zext i16 %242 to i32
  %246 = sub nsw i32 %220, %245
  %247 = tail call fastcc i32 @iabs(i32 noundef %246) #8
  %248 = icmp slt i32 %247, %54
  %249 = zext i1 %248 to i32
  %250 = zext i16 %244 to i32
  %251 = sub nsw i32 %222, %250
  %252 = tail call fastcc i32 @iabs(i32 noundef %251) #8
  %253 = icmp slt i32 %252, %54
  %254 = zext i1 %253 to i32
  %255 = add nuw nsw i32 %254, %249
  %256 = sub nsw i32 0, %255
  %257 = shl nsw i32 %223, 2
  %258 = add nsw i32 %257, 4
  %259 = sub nsw i32 %258, %229
  %260 = add nsw i32 %259, %236
  %261 = ashr i32 %260, 3
  %262 = tail call fastcc i32 @iClip3(i32 noundef %256, i32 noundef %255, i32 noundef %261) #8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %240
  %265 = add nsw i32 %262, %222
  %266 = tail call fastcc i32 @iClip1(i32 noundef %61, i32 noundef %265) #8
  %267 = trunc i32 %266 to i16
  store i16 %267, ptr %217, align 2, !tbaa !32
  %268 = sub nsw i32 %220, %262
  %269 = tail call fastcc i32 @iClip1(i32 noundef %61, i32 noundef %268) #8
  %270 = trunc i32 %269 to i16
  store i16 %270, ptr %218, align 2, !tbaa !32
  br label %271

271:                                              ; preds = %226, %233, %264, %240, %212
  %272 = add nuw nsw i32 %214, 1
  %273 = icmp eq i32 %272, 4
  br i1 %273, label %360, label %212, !llvm.loop !53

274:                                              ; preds = %210, %355
  %275 = phi ptr [ %75, %210 ], [ %277, %355 ]
  %276 = phi i32 [ 0, %210 ], [ %356, %355 ]
  %277 = getelementptr inbounds ptr, ptr %275, i64 1
  %278 = load ptr, ptr %275, align 8, !tbaa !29
  %279 = getelementptr inbounds i16, ptr %278, i64 %70
  %280 = getelementptr inbounds i16, ptr %279, i64 1
  %281 = load i16, ptr %280, align 2, !tbaa !32
  %282 = zext i16 %281 to i32
  %283 = load i16, ptr %279, align 2, !tbaa !32
  %284 = zext i16 %283 to i32
  %285 = sub nsw i32 %282, %284
  %286 = tail call fastcc i32 @iabs(i32 noundef %285) #8
  %287 = icmp slt i32 %286, %49
  br i1 %287, label %288, label %355

288:                                              ; preds = %274
  %289 = getelementptr inbounds i16, ptr %279, i64 2
  %290 = getelementptr inbounds i16, ptr %279, i64 -1
  %291 = load i16, ptr %289, align 2, !tbaa !32
  %292 = zext i16 %291 to i32
  %293 = sub nsw i32 %282, %292
  %294 = tail call fastcc i32 @iabs(i32 noundef %293) #8
  %295 = icmp slt i32 %294, %54
  br i1 %295, label %296, label %355

296:                                              ; preds = %288
  %297 = load i16, ptr %290, align 2, !tbaa !32
  %298 = zext i16 %297 to i32
  %299 = sub nsw i32 %284, %298
  %300 = tail call fastcc i32 @iabs(i32 noundef %299) #8
  %301 = icmp slt i32 %300, %54
  br i1 %301, label %302, label %355

302:                                              ; preds = %296
  %303 = add nuw nsw i32 %282, 1
  %304 = add nuw nsw i32 %303, %284
  %305 = lshr i32 %304, 1
  %306 = getelementptr inbounds i16, ptr %279, i64 3
  %307 = load i16, ptr %306, align 2, !tbaa !32
  %308 = getelementptr inbounds i16, ptr %279, i64 -2
  %309 = load i16, ptr %308, align 2, !tbaa !32
  %310 = zext i16 %307 to i32
  %311 = sub nsw i32 %282, %310
  %312 = tail call fastcc i32 @iabs(i32 noundef %311) #8
  %313 = icmp slt i32 %312, %54
  %314 = zext i1 %313 to i32
  %315 = zext i16 %309 to i32
  %316 = sub nsw i32 %284, %315
  %317 = tail call fastcc i32 @iabs(i32 noundef %316) #8
  %318 = icmp slt i32 %317, %54
  %319 = zext i1 %318 to i32
  %320 = add i32 %208, %314
  %321 = add i32 %320, %319
  %322 = sub nsw i32 0, %321
  %323 = shl nsw i32 %285, 2
  %324 = add nsw i32 %323, 4
  %325 = sub nsw i32 %324, %292
  %326 = add nsw i32 %325, %298
  %327 = ashr i32 %326, 3
  %328 = tail call fastcc i32 @iClip3(i32 noundef %322, i32 noundef %321, i32 noundef %327) #8
  br i1 %318, label %329, label %337

329:                                              ; preds = %302
  %330 = shl nuw nsw i32 %298, 1
  %331 = sub nsw i32 %305, %330
  %332 = add nsw i32 %331, %315
  %333 = ashr i32 %332, 1
  %334 = tail call fastcc i32 @iClip3(i32 noundef %211, i32 noundef %208, i32 noundef %333) #8
  %335 = trunc i32 %334 to i16
  %336 = add i16 %297, %335
  store i16 %336, ptr %290, align 2, !tbaa !32
  br label %337

337:                                              ; preds = %329, %302
  %338 = icmp eq i32 %328, 0
  br i1 %338, label %346, label %339

339:                                              ; preds = %337
  %340 = add nsw i32 %328, %284
  %341 = tail call fastcc i32 @iClip1(i32 noundef %61, i32 noundef %340) #8
  %342 = trunc i32 %341 to i16
  store i16 %342, ptr %279, align 2, !tbaa !32
  %343 = sub nsw i32 %282, %328
  %344 = tail call fastcc i32 @iClip1(i32 noundef %61, i32 noundef %343) #8
  %345 = trunc i32 %344 to i16
  store i16 %345, ptr %280, align 2, !tbaa !32
  br label %346

346:                                              ; preds = %339, %337
  br i1 %313, label %347, label %355

347:                                              ; preds = %346
  %348 = add nuw nsw i32 %305, %310
  %349 = shl nuw nsw i32 %292, 1
  %350 = sub nsw i32 %348, %349
  %351 = ashr i32 %350, 1
  %352 = tail call fastcc i32 @iClip3(i32 noundef %211, i32 noundef %208, i32 noundef %351) #8
  %353 = trunc i32 %352 to i16
  %354 = add i16 %291, %353
  store i16 %354, ptr %289, align 2, !tbaa !32
  br label %355

355:                                              ; preds = %288, %296, %347, %346, %274
  %356 = add nuw nsw i32 %276, 1
  %357 = icmp eq i32 %356, 4
  br i1 %357, label %360, label %274, !llvm.loop !54

358:                                              ; preds = %73
  %359 = getelementptr inbounds ptr, ptr %75, i64 4
  br label %360

360:                                              ; preds = %200, %355, %271, %358
  %361 = phi ptr [ %359, %358 ], [ %215, %271 ], [ %277, %355 ], [ %81, %200 ]
  %362 = getelementptr inbounds i8, ptr %74, i64 4
  %363 = add nuw nsw i32 %76, 4
  %364 = icmp ult i32 %76, 12
  br i1 %364, label %73, label %365, !llvm.loop !55

365:                                              ; preds = %360, %16, %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaHor(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp slt i32 %4, 16
  %10 = add nsw i32 %4, -1
  %11 = select i1 %9, i32 %10, i32 0
  %12 = tail call fastcc ptr @get_non_aff_neighbor_luma(ptr noundef %3, i32 noundef 0, i32 noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %16 = load i16, ptr %15, align 8, !tbaa !48
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %389

18:                                               ; preds = %14, %6
  %19 = icmp eq i32 %0, 0
  %20 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %21 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66
  %22 = select i1 %19, ptr %21, ptr %20
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 14
  %25 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 14
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 15, i64 %27
  %29 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 15, i64 %27
  %30 = select i1 %19, ptr %25, ptr %29
  %31 = select i1 %19, ptr %24, ptr %28
  %32 = load i32, ptr %31, align 4, !tbaa !42
  %33 = load i32, ptr %30, align 4, !tbaa !42
  %34 = add nsw i32 %33, %32
  %35 = add nsw i32 %34, 1
  %36 = ashr i32 %35, 1
  %37 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %38 = load i16, ptr %37, align 2, !tbaa !49
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %36, %39
  %41 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %40) #8
  %42 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %43 = load i16, ptr %42, align 4, !tbaa !50
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %36, %44
  %46 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %45) #8
  %47 = sext i32 %41 to i64
  %48 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %23, %50
  %52 = sext i32 %46 to i64
  %53 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !51
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %23, %55
  %57 = or i32 %56, %51
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %389, label %59

59:                                               ; preds = %18
  %60 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %47
  %61 = zext i32 %0 to i64
  %62 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !42
  %64 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 67
  %65 = load i32, ptr %64, align 4, !tbaa !56
  %66 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !36
  %68 = and i32 %11, 15
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %1, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !29
  %73 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 8
  %74 = load i32, ptr %73, align 4, !tbaa !37
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, ptr %72, i64 %75
  %77 = sext i32 %65 to i64
  %78 = getelementptr inbounds i16, ptr %76, i64 %77
  %79 = shl nsw i32 %65, 1
  %80 = mul nsw i32 %65, 3
  %81 = sub nsw i64 0, %77
  %82 = ashr i32 %51, 2
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %79 to i64
  %85 = sub nsw i64 0, %84
  %86 = sext i32 %80 to i64
  %87 = sub nsw i64 0, %86
  br label %88

88:                                               ; preds = %59, %383
  %89 = phi ptr [ %2, %59 ], [ %386, %383 ]
  %90 = phi ptr [ %76, %59 ], [ %385, %383 ]
  %91 = phi ptr [ %78, %59 ], [ %384, %383 ]
  %92 = phi i32 [ 0, %59 ], [ %387, %383 ]
  %93 = load i8, ptr %89, align 1, !tbaa !51
  switch i8 %93, label %219 [
    i8 4, label %94
    i8 0, label %380
  ]

94:                                               ; preds = %88, %216
  %95 = phi ptr [ %98, %216 ], [ %90, %88 ]
  %96 = phi ptr [ %99, %216 ], [ %91, %88 ]
  %97 = phi i32 [ %217, %216 ], [ 0, %88 ]
  %98 = getelementptr inbounds i16, ptr %95, i64 1
  %99 = getelementptr inbounds i16, ptr %96, i64 1
  %100 = load i16, ptr %95, align 2, !tbaa !32
  %101 = load i16, ptr %96, align 2, !tbaa !32
  %102 = zext i16 %101 to i32
  %103 = zext i16 %100 to i32
  %104 = sub nsw i32 %102, %103
  %105 = tail call fastcc i32 @iabs(i32 noundef %104) #8
  %106 = icmp slt i32 %105, %51
  br i1 %106, label %107, label %216

107:                                              ; preds = %94
  %108 = getelementptr inbounds i16, ptr %95, i64 %81
  %109 = getelementptr inbounds i16, ptr %96, i64 %77
  %110 = load i16, ptr %109, align 2, !tbaa !32
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %102, %111
  %113 = tail call fastcc i32 @iabs(i32 noundef %112) #8
  %114 = icmp slt i32 %113, %56
  br i1 %114, label %115, label %216

115:                                              ; preds = %107
  %116 = load i16, ptr %108, align 2, !tbaa !32
  %117 = zext i16 %116 to i32
  %118 = sub nsw i32 %103, %117
  %119 = tail call fastcc i32 @iabs(i32 noundef %118) #8
  %120 = icmp slt i32 %119, %56
  br i1 %120, label %121, label %216

121:                                              ; preds = %115
  %122 = icmp slt i32 %105, %83
  br i1 %122, label %123, label %203

123:                                              ; preds = %121
  %124 = getelementptr inbounds i16, ptr %95, i64 %85
  %125 = load i16, ptr %124, align 2, !tbaa !32
  %126 = getelementptr inbounds i16, ptr %96, i64 %84
  %127 = load i16, ptr %126, align 2, !tbaa !32
  %128 = add nuw nsw i32 %102, %103
  %129 = zext i16 %125 to i32
  %130 = sub nsw i32 %103, %129
  %131 = tail call fastcc i32 @iabs(i32 noundef %130) #8
  %132 = icmp slt i32 %131, %56
  br i1 %132, label %133, label %158

133:                                              ; preds = %123
  %134 = getelementptr inbounds i16, ptr %95, i64 %87
  %135 = load i16, ptr %134, align 2, !tbaa !32
  %136 = add nuw nsw i32 %128, %117
  %137 = shl nuw nsw i32 %136, 1
  %138 = add nuw nsw i32 %111, 4
  %139 = add nuw nsw i32 %138, %137
  %140 = add nuw nsw i32 %139, %129
  %141 = lshr i32 %140, 3
  %142 = trunc i32 %141 to i16
  store i16 %142, ptr %95, align 2, !tbaa !32
  %143 = add nuw nsw i32 %128, 2
  %144 = add nuw nsw i32 %143, %117
  %145 = add nuw nsw i32 %144, %129
  %146 = lshr i32 %145, 2
  %147 = trunc i32 %146 to i16
  store i16 %147, ptr %108, align 2, !tbaa !32
  %148 = zext i16 %135 to i32
  %149 = add nuw nsw i32 %148, %129
  %150 = shl nuw nsw i32 %149, 1
  %151 = add nuw nsw i32 %128, 4
  %152 = add nuw nsw i32 %151, %117
  %153 = add nuw nsw i32 %152, %129
  %154 = add nuw nsw i32 %153, %150
  %155 = lshr i32 %154, 3
  %156 = trunc i32 %155 to i16
  %157 = getelementptr inbounds i16, ptr %108, i64 %81
  store i16 %156, ptr %157, align 2, !tbaa !32
  br label %165

158:                                              ; preds = %123
  %159 = shl nuw nsw i32 %117, 1
  %160 = add nuw nsw i32 %103, 2
  %161 = add nuw nsw i32 %160, %111
  %162 = add nuw nsw i32 %161, %159
  %163 = lshr i32 %162, 2
  %164 = trunc i32 %163 to i16
  store i16 %164, ptr %95, align 2, !tbaa !32
  br label %165

165:                                              ; preds = %158, %133
  %166 = zext i16 %127 to i32
  %167 = sub nsw i32 %102, %166
  %168 = tail call fastcc i32 @iabs(i32 noundef %167) #8
  %169 = icmp slt i32 %168, %56
  br i1 %169, label %170, label %196

170:                                              ; preds = %165
  %171 = getelementptr inbounds i16, ptr %96, i64 %86
  %172 = load i16, ptr %171, align 2, !tbaa !32
  %173 = add nuw nsw i32 %128, %111
  %174 = shl nuw nsw i32 %173, 1
  %175 = add nuw nsw i32 %174, 4
  %176 = add nuw nsw i32 %175, %117
  %177 = add nuw nsw i32 %176, %166
  %178 = lshr i32 %177, 3
  %179 = trunc i32 %178 to i16
  store i16 %179, ptr %96, align 2, !tbaa !32
  %180 = add nuw nsw i32 %103, 2
  %181 = add nuw nsw i32 %180, %102
  %182 = add nuw nsw i32 %181, %111
  %183 = add nuw nsw i32 %182, %166
  %184 = lshr i32 %183, 2
  %185 = trunc i32 %184 to i16
  store i16 %185, ptr %109, align 2, !tbaa !32
  %186 = zext i16 %172 to i32
  %187 = add nuw nsw i32 %186, %166
  %188 = shl nuw nsw i32 %187, 1
  %189 = add nuw nsw i32 %128, 4
  %190 = add nuw nsw i32 %189, %111
  %191 = add nuw nsw i32 %190, %166
  %192 = add nuw nsw i32 %191, %188
  %193 = lshr i32 %192, 3
  %194 = trunc i32 %193 to i16
  %195 = getelementptr inbounds i16, ptr %109, i64 %77
  store i16 %194, ptr %195, align 2, !tbaa !32
  br label %216

196:                                              ; preds = %165
  %197 = shl nuw nsw i32 %111, 1
  %198 = add nuw nsw i32 %102, 2
  %199 = add nuw nsw i32 %198, %197
  %200 = add nuw nsw i32 %199, %117
  %201 = lshr i32 %200, 2
  %202 = trunc i32 %201 to i16
  store i16 %202, ptr %96, align 2, !tbaa !32
  br label %216

203:                                              ; preds = %121
  %204 = shl nuw nsw i32 %117, 1
  %205 = add nuw nsw i32 %103, 2
  %206 = add nuw nsw i32 %205, %111
  %207 = add nuw nsw i32 %206, %204
  %208 = lshr i32 %207, 2
  %209 = trunc i32 %208 to i16
  store i16 %209, ptr %95, align 2, !tbaa !32
  %210 = shl nuw nsw i32 %111, 1
  %211 = add nuw nsw i32 %102, 2
  %212 = add nuw nsw i32 %211, %210
  %213 = add nuw nsw i32 %212, %117
  %214 = lshr i32 %213, 2
  %215 = trunc i32 %214 to i16
  store i16 %215, ptr %96, align 2, !tbaa !32
  br label %216

216:                                              ; preds = %107, %115, %203, %196, %170, %94
  %217 = add nuw nsw i32 %97, 1
  %218 = icmp eq i32 %217, 4
  br i1 %218, label %383, label %94, !llvm.loop !57

219:                                              ; preds = %88
  %220 = zext i8 %93 to i64
  %221 = getelementptr inbounds i8, ptr %60, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !51
  %223 = zext i8 %222 to i32
  %224 = mul nsw i32 %23, %223
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %219
  %227 = sub nsw i32 0, %224
  br label %291

228:                                              ; preds = %219, %288
  %229 = phi ptr [ %232, %288 ], [ %90, %219 ]
  %230 = phi ptr [ %233, %288 ], [ %91, %219 ]
  %231 = phi i32 [ %289, %288 ], [ 0, %219 ]
  %232 = getelementptr inbounds i16, ptr %229, i64 1
  %233 = getelementptr inbounds i16, ptr %230, i64 1
  %234 = load i16, ptr %230, align 2, !tbaa !32
  %235 = zext i16 %234 to i32
  %236 = load i16, ptr %229, align 2, !tbaa !32
  %237 = zext i16 %236 to i32
  %238 = sub nsw i32 %235, %237
  %239 = tail call fastcc i32 @iabs(i32 noundef %238) #8
  %240 = icmp slt i32 %239, %51
  br i1 %240, label %241, label %288

241:                                              ; preds = %228
  %242 = getelementptr inbounds i16, ptr %230, i64 %77
  %243 = getelementptr inbounds i16, ptr %229, i64 %81
  %244 = load i16, ptr %242, align 2, !tbaa !32
  %245 = zext i16 %244 to i32
  %246 = sub nsw i32 %235, %245
  %247 = tail call fastcc i32 @iabs(i32 noundef %246) #8
  %248 = icmp slt i32 %247, %56
  br i1 %248, label %249, label %288

249:                                              ; preds = %241
  %250 = load i16, ptr %243, align 2, !tbaa !32
  %251 = zext i16 %250 to i32
  %252 = sub nsw i32 %237, %251
  %253 = tail call fastcc i32 @iabs(i32 noundef %252) #8
  %254 = icmp slt i32 %253, %56
  br i1 %254, label %255, label %288

255:                                              ; preds = %249
  %256 = getelementptr inbounds i16, ptr %242, i64 %77
  %257 = load i16, ptr %256, align 2, !tbaa !32
  %258 = getelementptr inbounds i16, ptr %243, i64 %81
  %259 = load i16, ptr %258, align 2, !tbaa !32
  %260 = zext i16 %257 to i32
  %261 = sub nsw i32 %235, %260
  %262 = tail call fastcc i32 @iabs(i32 noundef %261) #8
  %263 = icmp slt i32 %262, %56
  %264 = zext i1 %263 to i32
  %265 = zext i16 %259 to i32
  %266 = sub nsw i32 %237, %265
  %267 = tail call fastcc i32 @iabs(i32 noundef %266) #8
  %268 = icmp slt i32 %267, %56
  %269 = zext i1 %268 to i32
  %270 = add nuw nsw i32 %269, %264
  %271 = sub nsw i32 0, %270
  %272 = shl nsw i32 %238, 2
  %273 = add nsw i32 %272, 4
  %274 = sub nsw i32 %273, %245
  %275 = add nsw i32 %274, %251
  %276 = ashr i32 %275, 3
  %277 = tail call fastcc i32 @iClip3(i32 noundef %271, i32 noundef %270, i32 noundef %276) #8
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %288, label %279

279:                                              ; preds = %255
  %280 = add nsw i32 %277, %237
  %281 = tail call fastcc i32 @iClip1(i32 noundef %63, i32 noundef %280) #8
  %282 = trunc i32 %281 to i16
  store i16 %282, ptr %229, align 2, !tbaa !32
  %283 = load i16, ptr %230, align 2, !tbaa !32
  %284 = zext i16 %283 to i32
  %285 = sub nsw i32 %284, %277
  %286 = tail call fastcc i32 @iClip1(i32 noundef %63, i32 noundef %285) #8
  %287 = trunc i32 %286 to i16
  store i16 %287, ptr %230, align 2, !tbaa !32
  br label %288

288:                                              ; preds = %241, %249, %279, %255, %228
  %289 = add nuw nsw i32 %231, 1
  %290 = icmp eq i32 %289, 4
  br i1 %290, label %383, label %228, !llvm.loop !58

291:                                              ; preds = %226, %377
  %292 = phi ptr [ %90, %226 ], [ %295, %377 ]
  %293 = phi ptr [ %91, %226 ], [ %296, %377 ]
  %294 = phi i32 [ 0, %226 ], [ %378, %377 ]
  %295 = getelementptr inbounds i16, ptr %292, i64 1
  %296 = getelementptr inbounds i16, ptr %293, i64 1
  %297 = load i16, ptr %293, align 2, !tbaa !32
  %298 = zext i16 %297 to i32
  %299 = load i16, ptr %292, align 2, !tbaa !32
  %300 = zext i16 %299 to i32
  %301 = sub nsw i32 %298, %300
  %302 = tail call fastcc i32 @iabs(i32 noundef %301) #8
  %303 = icmp slt i32 %302, %51
  br i1 %303, label %304, label %377

304:                                              ; preds = %291
  %305 = getelementptr inbounds i16, ptr %293, i64 %77
  %306 = getelementptr inbounds i16, ptr %292, i64 %81
  %307 = load i16, ptr %305, align 2, !tbaa !32
  %308 = zext i16 %307 to i32
  %309 = sub nsw i32 %298, %308
  %310 = tail call fastcc i32 @iabs(i32 noundef %309) #8
  %311 = icmp slt i32 %310, %56
  br i1 %311, label %312, label %377

312:                                              ; preds = %304
  %313 = load i16, ptr %306, align 2, !tbaa !32
  %314 = zext i16 %313 to i32
  %315 = sub nsw i32 %300, %314
  %316 = tail call fastcc i32 @iabs(i32 noundef %315) #8
  %317 = icmp slt i32 %316, %56
  br i1 %317, label %318, label %377

318:                                              ; preds = %312
  %319 = add nuw nsw i32 %298, 1
  %320 = add nuw nsw i32 %319, %300
  %321 = lshr i32 %320, 1
  %322 = getelementptr inbounds i16, ptr %305, i64 %77
  %323 = load i16, ptr %322, align 2, !tbaa !32
  %324 = getelementptr inbounds i16, ptr %306, i64 %81
  %325 = load i16, ptr %324, align 2, !tbaa !32
  %326 = zext i16 %323 to i32
  %327 = sub nsw i32 %298, %326
  %328 = tail call fastcc i32 @iabs(i32 noundef %327) #8
  %329 = icmp slt i32 %328, %56
  %330 = zext i1 %329 to i32
  %331 = zext i16 %325 to i32
  %332 = sub nsw i32 %300, %331
  %333 = tail call fastcc i32 @iabs(i32 noundef %332) #8
  %334 = icmp slt i32 %333, %56
  %335 = zext i1 %334 to i32
  %336 = add i32 %224, %330
  %337 = add i32 %336, %335
  %338 = sub nsw i32 0, %337
  %339 = shl nsw i32 %301, 2
  %340 = add nsw i32 %339, 4
  %341 = sub nsw i32 %340, %308
  %342 = add nsw i32 %341, %314
  %343 = ashr i32 %342, 3
  %344 = tail call fastcc i32 @iClip3(i32 noundef %338, i32 noundef %337, i32 noundef %343) #8
  br i1 %334, label %345, label %353

345:                                              ; preds = %318
  %346 = shl nuw nsw i32 %314, 1
  %347 = sub nsw i32 %321, %346
  %348 = add nsw i32 %347, %331
  %349 = ashr i32 %348, 1
  %350 = tail call fastcc i32 @iClip3(i32 noundef %227, i32 noundef %224, i32 noundef %349) #8
  %351 = trunc i32 %350 to i16
  %352 = add i16 %313, %351
  store i16 %352, ptr %306, align 2, !tbaa !32
  br label %353

353:                                              ; preds = %345, %318
  %354 = icmp eq i32 %344, 0
  br i1 %354, label %366, label %355

355:                                              ; preds = %353
  %356 = load i16, ptr %292, align 2, !tbaa !32
  %357 = zext i16 %356 to i32
  %358 = add nsw i32 %344, %357
  %359 = tail call fastcc i32 @iClip1(i32 noundef %63, i32 noundef %358) #8
  %360 = trunc i32 %359 to i16
  store i16 %360, ptr %292, align 2, !tbaa !32
  %361 = load i16, ptr %293, align 2, !tbaa !32
  %362 = zext i16 %361 to i32
  %363 = sub nsw i32 %362, %344
  %364 = tail call fastcc i32 @iClip1(i32 noundef %63, i32 noundef %363) #8
  %365 = trunc i32 %364 to i16
  store i16 %365, ptr %293, align 2, !tbaa !32
  br label %366

366:                                              ; preds = %355, %353
  br i1 %329, label %367, label %377

367:                                              ; preds = %366
  %368 = add nuw nsw i32 %321, %326
  %369 = load i16, ptr %305, align 2, !tbaa !32
  %370 = zext i16 %369 to i32
  %371 = shl nuw nsw i32 %370, 1
  %372 = sub nsw i32 %368, %371
  %373 = ashr i32 %372, 1
  %374 = tail call fastcc i32 @iClip3(i32 noundef %227, i32 noundef %224, i32 noundef %373) #8
  %375 = trunc i32 %374 to i16
  %376 = add i16 %369, %375
  store i16 %376, ptr %305, align 2, !tbaa !32
  br label %377

377:                                              ; preds = %304, %312, %367, %366, %291
  %378 = add nuw nsw i32 %294, 1
  %379 = icmp eq i32 %378, 4
  br i1 %379, label %383, label %291, !llvm.loop !59

380:                                              ; preds = %88
  %381 = getelementptr inbounds i16, ptr %90, i64 4
  %382 = getelementptr inbounds i16, ptr %91, i64 4
  br label %383

383:                                              ; preds = %216, %377, %288, %380
  %384 = phi ptr [ %382, %380 ], [ %233, %288 ], [ %296, %377 ], [ %99, %216 ]
  %385 = phi ptr [ %381, %380 ], [ %232, %288 ], [ %295, %377 ], [ %98, %216 ]
  %386 = getelementptr inbounds i8, ptr %89, i64 4
  %387 = add nuw nsw i32 %92, 4
  %388 = icmp ult i32 %92, 12
  br i1 %388, label %88, label %389, !llvm.loop !60

389:                                              ; preds = %383, %18, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopChromaVer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 77
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 78
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = add nsw i32 %3, -1
  %14 = tail call fastcc ptr @get_non_aff_neighbor_chroma(ptr noundef %2, i32 noundef %13, i32 noundef 0, i32 noundef %10, i32 noundef %12) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 42
  %18 = load i16, ptr %17, align 8, !tbaa !48
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %156

20:                                               ; preds = %16, %6
  %21 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !42
  %23 = add nsw i32 %4, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %28 = load i16, ptr %27, align 2, !tbaa !49
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %31 = load i16, ptr %30, align 4, !tbaa !50
  %32 = sext i16 %31 to i32
  %33 = sext i32 %4 to i64
  %34 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 15, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !42
  %36 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 15, i64 %33
  %37 = load i32, ptr %36, align 4, !tbaa !42
  %38 = add i32 %35, 1
  %39 = add i32 %38, %37
  %40 = ashr i32 %39, 1
  %41 = add nsw i32 %40, %29
  %42 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %41) #8
  %43 = add nsw i32 %40, %32
  %44 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %43) #8
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !51
  %48 = zext i8 %47 to i32
  %49 = mul nsw i32 %22, %48
  %50 = sext i32 %44 to i64
  %51 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !51
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %22, %53
  %55 = or i32 %54, %49
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %156, label %57

57:                                               ; preds = %20
  %58 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %59 = load i32, ptr %58, align 4, !tbaa !63
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !42
  %63 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %45
  %64 = icmp sgt i32 %62, 0
  br i1 %64, label %65, label %156

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 11
  %67 = load i32, ptr %66, align 8, !tbaa !64
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %0, i64 %68
  %70 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 10
  %71 = load i32, ptr %70, align 4, !tbaa !65
  %72 = add nsw i32 %10, -1
  %73 = and i32 %72, %13
  %74 = add nsw i32 %71, %73
  %75 = icmp eq i32 %62, 8
  %76 = sext i32 %74 to i64
  br label %77

77:                                               ; preds = %65, %152
  %78 = phi i32 [ 0, %65 ], [ %154, %152 ]
  %79 = phi ptr [ %69, %65 ], [ %153, %152 ]
  %80 = shl nuw i32 %78, 1
  %81 = and i32 %80, -4
  %82 = and i32 %78, 1
  %83 = or disjoint i32 %81, %82
  %84 = select i1 %75, i32 %83, i32 %78
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %1, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !51
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %152, label %89

89:                                               ; preds = %77
  %90 = load ptr, ptr %79, align 8, !tbaa !29
  %91 = getelementptr inbounds i16, ptr %90, i64 %76
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %92, align 2, !tbaa !32
  %94 = zext i16 %93 to i32
  %95 = load i16, ptr %91, align 2, !tbaa !32
  %96 = zext i16 %95 to i32
  %97 = sub nsw i32 %94, %96
  %98 = tail call fastcc i32 @iabs(i32 noundef %97) #8
  %99 = icmp slt i32 %98, %49
  br i1 %99, label %100, label %152

100:                                              ; preds = %89
  %101 = getelementptr inbounds i16, ptr %91, i64 2
  %102 = load i16, ptr %101, align 2, !tbaa !32
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %94, %103
  %105 = tail call fastcc i32 @iabs(i32 noundef %104) #8
  %106 = icmp slt i32 %105, %54
  br i1 %106, label %107, label %152

107:                                              ; preds = %100
  %108 = getelementptr inbounds i16, ptr %91, i64 -1
  %109 = load i16, ptr %108, align 2, !tbaa !32
  %110 = zext i16 %109 to i32
  %111 = sub nsw i32 %96, %110
  %112 = tail call fastcc i32 @iabs(i32 noundef %111) #8
  %113 = icmp slt i32 %112, %54
  br i1 %113, label %114, label %152

114:                                              ; preds = %107
  %115 = icmp eq i8 %87, 4
  br i1 %115, label %116, label %128

116:                                              ; preds = %114
  %117 = shl nuw nsw i32 %110, 1
  %118 = add nuw nsw i32 %96, 2
  %119 = add nuw nsw i32 %118, %103
  %120 = add nuw nsw i32 %119, %117
  %121 = lshr i32 %120, 2
  %122 = trunc i32 %121 to i16
  store i16 %122, ptr %91, align 2, !tbaa !32
  %123 = shl nuw nsw i32 %103, 1
  %124 = add nuw nsw i32 %94, 2
  %125 = add nuw nsw i32 %124, %123
  %126 = add nuw nsw i32 %125, %110
  %127 = lshr i32 %126, 2
  br label %149

128:                                              ; preds = %114
  %129 = zext i8 %87 to i64
  %130 = getelementptr inbounds i8, ptr %63, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !51
  %132 = zext i8 %131 to i32
  %133 = mul nsw i32 %22, %132
  %134 = add nsw i32 %133, 1
  %135 = xor i32 %133, -1
  %136 = shl nsw i32 %97, 2
  %137 = add nsw i32 %136, 4
  %138 = sub nsw i32 %137, %103
  %139 = add nsw i32 %138, %110
  %140 = ashr i32 %139, 3
  %141 = tail call fastcc i32 @iClip3(i32 noundef %135, i32 noundef %134, i32 noundef %140) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %128
  %144 = add nsw i32 %141, %96
  %145 = tail call fastcc i32 @iClip1(i32 noundef %26, i32 noundef %144) #8
  %146 = trunc i32 %145 to i16
  store i16 %146, ptr %91, align 2, !tbaa !32
  %147 = sub nsw i32 %94, %141
  %148 = tail call fastcc i32 @iClip1(i32 noundef %26, i32 noundef %147) #8
  br label %149

149:                                              ; preds = %143, %116
  %150 = phi i32 [ %127, %116 ], [ %148, %143 ]
  %151 = trunc i32 %150 to i16
  store i16 %151, ptr %92, align 2, !tbaa !32
  br label %152

152:                                              ; preds = %149, %89, %107, %128, %100, %77
  %153 = getelementptr inbounds ptr, ptr %79, i64 1
  %154 = add nuw nsw i32 %78, 1
  %155 = icmp eq i32 %154, %62
  br i1 %155, label %156, label %77, !llvm.loop !66

156:                                              ; preds = %152, %57, %20, %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopChromaHor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 77
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 78
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = icmp slt i32 %3, 16
  %14 = add nsw i32 %3, -1
  %15 = select i1 %13, i32 %14, i32 0
  %16 = tail call fastcc ptr @get_non_aff_neighbor_chroma(ptr noundef %2, i32 noundef 0, i32 noundef %15, i32 noundef %10, i32 noundef %12) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 42
  %20 = load i16, ptr %19, align 8, !tbaa !48
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %168

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !42
  %25 = add nsw i32 %4, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !42
  %29 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %30 = load i16, ptr %29, align 2, !tbaa !49
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %33 = load i16, ptr %32, align 4, !tbaa !50
  %34 = sext i16 %33 to i32
  %35 = sext i32 %4 to i64
  %36 = getelementptr inbounds %struct.macroblock, ptr %16, i64 0, i32 15, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !42
  %38 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 15, i64 %35
  %39 = load i32, ptr %38, align 4, !tbaa !42
  %40 = add i32 %37, 1
  %41 = add i32 %40, %39
  %42 = ashr i32 %41, 1
  %43 = add nsw i32 %42, %31
  %44 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %43) #8
  %45 = add nsw i32 %42, %34
  %46 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %45) #8
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %24, %50
  %52 = sext i32 %46 to i64
  %53 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !51
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %24, %55
  %57 = or i32 %56, %51
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %168, label %59

59:                                               ; preds = %22
  %60 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 68
  %61 = load i32, ptr %60, align 8, !tbaa !67
  %62 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %63 = load i32, ptr %62, align 4, !tbaa !63
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x [4 x i32]], ptr @pelnum_cr, i64 0, i64 1, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !42
  %67 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %47
  %68 = sext i32 %61 to i64
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %70, label %168

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.macroblock, ptr %16, i64 0, i32 11
  %72 = load i32, ptr %71, align 8, !tbaa !64
  %73 = add nsw i32 %12, -1
  %74 = and i32 %73, %15
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !29
  %79 = getelementptr inbounds %struct.macroblock, ptr %16, i64 0, i32 10
  %80 = load i32, ptr %79, align 4, !tbaa !65
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16, ptr %78, i64 %81
  %83 = getelementptr inbounds i16, ptr %82, i64 %68
  %84 = icmp eq i32 %66, 8
  %85 = sub nsw i64 0, %68
  br label %86

86:                                               ; preds = %70, %163
  %87 = phi i32 [ 0, %70 ], [ %166, %163 ]
  %88 = phi ptr [ %82, %70 ], [ %164, %163 ]
  %89 = phi ptr [ %83, %70 ], [ %165, %163 ]
  %90 = shl nuw i32 %87, 1
  %91 = and i32 %90, -4
  %92 = and i32 %87, 1
  %93 = or disjoint i32 %91, %92
  %94 = select i1 %84, i32 %93, i32 %87
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %1, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !51
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %163, label %99

99:                                               ; preds = %86
  %100 = load i16, ptr %89, align 2, !tbaa !32
  %101 = zext i16 %100 to i32
  %102 = load i16, ptr %88, align 2, !tbaa !32
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %101, %103
  %105 = tail call fastcc i32 @iabs(i32 noundef %104) #8
  %106 = icmp slt i32 %105, %51
  br i1 %106, label %107, label %163

107:                                              ; preds = %99
  %108 = getelementptr inbounds i16, ptr %89, i64 %68
  %109 = load i16, ptr %108, align 2, !tbaa !32
  %110 = zext i16 %109 to i32
  %111 = sub nsw i32 %101, %110
  %112 = tail call fastcc i32 @iabs(i32 noundef %111) #8
  %113 = icmp slt i32 %112, %56
  br i1 %113, label %114, label %163

114:                                              ; preds = %107
  %115 = getelementptr inbounds i16, ptr %88, i64 %85
  %116 = load i16, ptr %115, align 2, !tbaa !32
  %117 = zext i16 %116 to i32
  %118 = sub nsw i32 %103, %117
  %119 = tail call fastcc i32 @iabs(i32 noundef %118) #8
  %120 = icmp slt i32 %119, %56
  br i1 %120, label %121, label %163

121:                                              ; preds = %114
  %122 = icmp eq i8 %97, 4
  br i1 %122, label %123, label %137

123:                                              ; preds = %121
  %124 = shl nuw nsw i32 %117, 1
  %125 = add nuw nsw i32 %103, 2
  %126 = add nuw nsw i32 %125, %110
  %127 = add nuw nsw i32 %126, %124
  %128 = lshr i32 %127, 2
  %129 = trunc i32 %128 to i16
  store i16 %129, ptr %88, align 2, !tbaa !32
  %130 = shl nuw nsw i32 %110, 1
  %131 = load i16, ptr %89, align 2, !tbaa !32
  %132 = zext i16 %131 to i32
  %133 = add nuw nsw i32 %130, 2
  %134 = add nuw nsw i32 %133, %117
  %135 = add nuw nsw i32 %134, %132
  %136 = lshr i32 %135, 2
  br label %160

137:                                              ; preds = %121
  %138 = zext i8 %97 to i64
  %139 = getelementptr inbounds i8, ptr %67, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !51
  %141 = zext i8 %140 to i32
  %142 = mul nsw i32 %24, %141
  %143 = add nsw i32 %142, 1
  %144 = xor i32 %142, -1
  %145 = shl nsw i32 %104, 2
  %146 = add nsw i32 %145, 4
  %147 = sub nsw i32 %146, %110
  %148 = add nsw i32 %147, %117
  %149 = ashr i32 %148, 3
  %150 = tail call fastcc i32 @iClip3(i32 noundef %144, i32 noundef %143, i32 noundef %149) #8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %137
  %153 = add nsw i32 %150, %103
  %154 = tail call fastcc i32 @iClip1(i32 noundef %28, i32 noundef %153) #8
  %155 = trunc i32 %154 to i16
  store i16 %155, ptr %88, align 2, !tbaa !32
  %156 = load i16, ptr %89, align 2, !tbaa !32
  %157 = zext i16 %156 to i32
  %158 = sub nsw i32 %157, %150
  %159 = tail call fastcc i32 @iClip1(i32 noundef %28, i32 noundef %158) #8
  br label %160

160:                                              ; preds = %152, %123
  %161 = phi i32 [ %136, %123 ], [ %159, %152 ]
  %162 = trunc i32 %161 to i16
  store i16 %162, ptr %89, align 2, !tbaa !32
  br label %163

163:                                              ; preds = %160, %99, %114, %137, %107, %86
  %164 = getelementptr inbounds i16, ptr %88, i64 1
  %165 = getelementptr inbounds i16, ptr %89, i64 1
  %166 = add nuw nsw i32 %87, 1
  %167 = icmp eq i32 %166, %66
  br i1 %167, label %168, label %86, !llvm.loop !68

168:                                              ; preds = %163, %59, %22, %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_non_aff_neighbor_luma(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 29
  br label %11

7:                                                ; preds = %3
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 28
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %6, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %0, %7 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @i64_power2(i32 noundef %0) unnamed_addr #5 {
  %2 = icmp sgt i32 %0, 63
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @compare_mvs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = load i16, ptr %0, align 2, !tbaa !69
  %5 = sext i16 %4 to i32
  %6 = load i16, ptr %1, align 2, !tbaa !69
  %7 = sext i16 %6 to i32
  %8 = sub nsw i32 %5, %7
  %9 = tail call fastcc i32 @iabs(i32 noundef %8) #8
  %10 = icmp sgt i32 %9, 3
  %11 = getelementptr inbounds %struct.MotionVector, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !70
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.MotionVector, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !70
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %13, %16
  %18 = tail call fastcc i32 @iabs(i32 noundef %17) #8
  %19 = icmp sge i32 %18, %2
  %20 = or i1 %10, %19
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = tail call fastcc i32 @imax(i32 noundef %2, i32 noundef %0) #8
  %5 = tail call fastcc i32 @imin(i32 noundef %4, i32 noundef %1) #8
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1, i32 noundef 0) #8
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #8
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_non_aff_neighbor_chroma(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = icmp slt i32 %2, %4
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  br label %22

12:                                               ; preds = %5
  %13 = icmp slt i32 %1, %3
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = icmp slt i32 %2, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  br label %22

19:                                               ; preds = %14
  %20 = icmp slt i32 %2, %4
  %21 = select i1 %20, ptr %0, ptr null
  br label %22

22:                                               ; preds = %12, %19, %7, %16, %9
  %23 = phi ptr [ %11, %9 ], [ %18, %16 ], [ null, %7 ], [ %21, %19 ], [ null, %12 ]
  ret ptr %23
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 856760}
!7 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !12, i64 849040, !12, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !13, i64 849304, !13, i64 849624, !13, i64 849944, !13, i64 850264, !13, i64 850584, !13, i64 850904, !13, i64 851224, !13, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !16, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = !{!"image_data", !14, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!14 = !{!"frame_format", !11, i64 0, !11, i64 4, !15, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!15 = !{!"double", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!7, !8, i64 856768}
!18 = !{!7, !8, i64 856776}
!19 = !{!7, !8, i64 856784}
!20 = !{!7, !8, i64 856792}
!21 = !{!7, !8, i64 856800}
!22 = !{!23, !8, i64 0}
!23 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !24, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !12, i64 108, !9, i64 110, !9, i64 111, !12, i64 112, !12, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !12, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !12, i64 376, !12, i64 378, !12, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!24 = !{!"", !12, i64 0, !12, i64 2}
!25 = !{!26, !11, i64 164}
!26 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !12, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !27, i64 1188, !12, i64 1220, !12, i64 1222, !12, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !12, i64 13272, !12, i64 13274, !12, i64 13276, !12, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !12, i64 13304, !12, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!27 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!28 = !{!23, !11, i64 96}
!29 = !{!8, !8, i64 0}
!30 = !{!23, !11, i64 24}
!31 = !{i64 0, i64 2, !32, i64 2, i64 2, !32}
!32 = !{!12, !12, i64 0}
!33 = !{i64 0, i64 2, !32}
!34 = !{!16, !16, i64 0}
!35 = !{!23, !12, i64 152}
!36 = !{!23, !11, i64 48}
!37 = !{!23, !11, i64 44}
!38 = !{!39, !8, i64 152}
!39 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !12, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !40, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!40 = !{!"pic_motion_params_old", !8, i64 0}
!41 = !{i32 0, i32 2}
!42 = !{!11, !11, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!39, !11, i64 0}
!47 = !{!23, !8, i64 8}
!48 = !{!23, !12, i64 376}
!49 = !{!23, !12, i64 378}
!50 = !{!23, !12, i64 380}
!51 = !{!9, !9, i64 0}
!52 = distinct !{!52, !44}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
!55 = distinct !{!55, !44}
!56 = !{!39, !11, i64 356}
!57 = distinct !{!57, !44}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44}
!61 = !{!7, !11, i64 849108}
!62 = !{!7, !11, i64 849112}
!63 = !{!39, !11, i64 268}
!64 = !{!23, !11, i64 56}
!65 = !{!23, !11, i64 52}
!66 = distinct !{!66, !44}
!67 = !{!39, !11, i64 360}
!68 = distinct !{!68, !44}
!69 = !{!24, !12, i64 0}
!70 = !{!24, !12, i64 2}
!71 = !{!23, !8, i64 144}
!72 = !{!23, !8, i64 136}
