; ModuleID = 'ldecod_src/loop_filter_mbaff.c'
source_filename = "ldecod_src/loop_filter_mbaff.c"
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
%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@pelnum_cr = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16
@ALPHA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = internal unnamed_addr constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_mbaff(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 162
  store ptr @GetStrengthVerMBAff, ptr %2, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 163
  store ptr @GetStrengthHorMBAff, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 164
  store ptr @EdgeLoopLumaVerMBAff, ptr %4, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 165
  store ptr @EdgeLoopLumaHorMBAff, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 166
  store ptr @EdgeLoopChromaVerMBAff, ptr %6, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 167
  store ptr @EdgeLoopChromaHorMBAff, ptr %7, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GetStrengthVerMBAff(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %9 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 43
  %12 = load i32, ptr %11, align 8, !tbaa !25
  %13 = add i32 %12, -3
  %14 = icmp ult i32 %13, 2
  %15 = add nsw i32 %2, -1
  %16 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  br i1 %14, label %17, label %38

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 35
  %19 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %20 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 45
  %21 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  %22 = icmp eq i32 %2, 0
  %23 = select i1 %22, i8 4, i8 3
  br label %24

24:                                               ; preds = %17, %24
  %25 = phi i64 [ 0, %17 ], [ %36, %24 ]
  %26 = trunc i64 %25 to i32
  call void @getAffNeighbour(ptr noundef nonnull %1, i32 noundef %15, i32 noundef %26, ptr noundef nonnull %16, ptr noundef nonnull %8) #10
  %27 = load ptr, ptr %18, align 8, !tbaa !28
  %28 = load i32, ptr %19, align 4, !tbaa !29
  %29 = sext i32 %28 to i64
  %30 = load i32, ptr %20, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.macroblock, ptr %27, i64 %29, i32 45
  %32 = load i32, ptr %31, align 8, !tbaa !31
  %33 = icmp ne i32 %30, %32
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %21, align 8, !tbaa !32
  %35 = getelementptr inbounds i8, ptr %0, i64 %25
  store i8 %23, ptr %35, align 1, !tbaa !33
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, 16
  br i1 %37, label %345, label %24, !llvm.loop !34

38:                                               ; preds = %5
  call void @getAffNeighbour(ptr noundef nonnull %1, i32 noundef %15, i32 noundef 0, ptr noundef nonnull %16, ptr noundef nonnull %8) #10
  %39 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 35
  %40 = load ptr, ptr %39, align 8, !tbaa !28
  %41 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !29
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 45
  %45 = load i32, ptr %44, align 8, !tbaa !31
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %197

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.macroblock, ptr %40, i64 %43, i32 45
  %49 = load i32, ptr %48, align 8, !tbaa !31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %197

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  store i8 0, ptr %52, align 8, !tbaa !32
  %53 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %54 = load i32, ptr %53, align 8, !tbaa !36
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.macroblock, ptr %40, i64 %43, i32 18
  %58 = load i32, ptr %57, align 8, !tbaa !36
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %51
  %61 = icmp eq i32 %2, 0
  %62 = select i1 %61, i8 4, i8 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %62, i64 16, i1 false)
  br label %345

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !37
  call void @get_mb_block_pos_mbaff(i32 noundef %65, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %66 = lshr i32 %2, 2
  %67 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 3
  %68 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %69 = load i64, ptr %68, align 8, !tbaa !38
  %70 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 2
  %71 = load i16, ptr %70, align 4
  %72 = ashr i16 %71, 2
  %73 = getelementptr inbounds %struct.macroblock, ptr %40, i64 %43, i32 33
  %74 = icmp eq i32 %2, 0
  %75 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 30
  %76 = load i16, ptr %7, align 2
  %77 = sext i16 %76 to i32
  %78 = shl nsw i32 %77, 2
  %79 = load i16, ptr %6, align 2
  %80 = sext i16 %79 to i32
  %81 = shl nsw i32 %80, 2
  %82 = and i32 %66, 3
  %83 = or disjoint i32 %81, %82
  %84 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %85 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %86 = load i16, ptr %85, align 4
  %87 = ashr i16 %86, 2
  %88 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %89 = sext i32 %83 to i64
  %90 = sext i16 %87 to i64
  %91 = load i16, ptr %67, align 2, !tbaa !39
  %92 = load i16, ptr %84, align 2, !tbaa !40
  br label %93

93:                                               ; preds = %63, %186
  %94 = phi i16 [ %92, %63 ], [ %192, %186 ]
  %95 = phi i16 [ %91, %63 ], [ %191, %186 ]
  %96 = phi i32 [ 0, %63 ], [ %195, %186 ]
  %97 = phi i32 [ 0, %63 ], [ %193, %186 ]
  %98 = and i32 %97, 65532
  %99 = add nuw nsw i32 %98, %66
  %100 = shl i32 %99, 16
  %101 = ashr exact i32 %100, 16
  %102 = call fastcc i64 @i64_power2(i32 noundef %101) #11
  %103 = and i64 %102, %69
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %186

105:                                              ; preds = %93
  %106 = and i16 %95, -4
  %107 = add i16 %72, %106
  %108 = load i64, ptr %73, align 8, !tbaa !38
  %109 = sext i16 %107 to i32
  %110 = call fastcc i64 @i64_power2(i32 noundef %109) #11
  %111 = and i64 %110, %108
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %186

113:                                              ; preds = %105
  br i1 %74, label %118, label %114

114:                                              ; preds = %113
  %115 = load i16, ptr %75, align 8, !tbaa !41
  %116 = add i16 %115, -1
  %117 = icmp ult i16 %116, 2
  br i1 %117, label %186, label %118

118:                                              ; preds = %114, %113
  %119 = ashr i32 %100, 18
  %120 = add nsw i32 %78, %119
  %121 = ashr i16 %94, 2
  %122 = load ptr, ptr %88, align 8, !tbaa !42
  %123 = sext i32 %120 to i64
  %124 = getelementptr inbounds ptr, ptr %122, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !43
  %126 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %89
  %127 = sext i16 %121 to i64
  %128 = getelementptr inbounds ptr, ptr %122, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !43
  %130 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90
  %131 = load ptr, ptr %126, align 8, !tbaa !43
  %132 = load ptr, ptr %130, align 8, !tbaa !43
  %133 = getelementptr inbounds [2 x ptr], ptr %126, i64 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !43
  %135 = getelementptr inbounds [2 x ptr], ptr %130, i64 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !43
  %137 = icmp eq ptr %131, %132
  %138 = icmp eq ptr %134, %136
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %144, label %140

140:                                              ; preds = %118
  %141 = icmp eq ptr %131, %136
  %142 = icmp eq ptr %134, %132
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %183

144:                                              ; preds = %140, %118
  %145 = icmp eq ptr %131, %134
  %146 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %89, i32 1
  br i1 %145, label %166, label %147

147:                                              ; preds = %144
  br i1 %137, label %148, label %157

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90, i32 1
  %150 = call fastcc i32 @compare_mvs(ptr noundef nonnull %146, ptr noundef nonnull %149, i32 noundef %3) #11, !range !44
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %183

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %89, i32 1, i64 1
  %154 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90, i32 1, i64 1
  %155 = call fastcc i32 @compare_mvs(ptr noundef nonnull %153, ptr noundef nonnull %154, i32 noundef %3) #11, !range !44
  %156 = icmp ne i32 %155, 0
  br label %183

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90, i32 1, i64 1
  %159 = call fastcc i32 @compare_mvs(ptr noundef nonnull %146, ptr noundef nonnull %158, i32 noundef %3) #11, !range !44
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90, i32 1
  %163 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %89, i32 1, i64 1
  %164 = call fastcc i32 @compare_mvs(ptr noundef nonnull %163, ptr noundef nonnull %162, i32 noundef %3) #11, !range !44
  %165 = icmp ne i32 %164, 0
  br label %183

166:                                              ; preds = %144
  %167 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90, i32 1
  %168 = call fastcc i32 @compare_mvs(ptr noundef nonnull %146, ptr noundef nonnull %167, i32 noundef %3) #11, !range !44
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %89, i32 1, i64 1
  %172 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90, i32 1, i64 1
  %173 = call fastcc i32 @compare_mvs(ptr noundef nonnull %171, ptr noundef nonnull %172, i32 noundef %3) #11, !range !44
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %170, %166
  %176 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %90, i32 1, i64 1
  %177 = call fastcc i32 @compare_mvs(ptr noundef nonnull %146, ptr noundef nonnull %176, i32 noundef %3) #11, !range !44
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %89, i32 1, i64 1
  %181 = call fastcc i32 @compare_mvs(ptr noundef nonnull %180, ptr noundef nonnull %167, i32 noundef %3) #11, !range !44
  %182 = icmp ne i32 %181, 0
  br label %183

183:                                              ; preds = %140, %170, %179, %175, %157, %161, %148, %152
  %184 = phi i1 [ true, %148 ], [ %156, %152 ], [ true, %157 ], [ %165, %161 ], [ false, %170 ], [ true, %175 ], [ %182, %179 ], [ true, %140 ]
  %185 = zext i1 %184 to i32
  br label %186

186:                                              ; preds = %114, %93, %105, %183
  %187 = phi i32 [ %185, %183 ], [ 2, %105 ], [ 2, %93 ], [ 0, %114 ]
  %188 = mul nuw nsw i32 %187, 16843009
  %189 = sext i32 %96 to i64
  %190 = getelementptr inbounds i8, ptr %0, i64 %189
  store i32 %188, ptr %190, align 4, !tbaa !45
  %191 = add i16 %95, 4
  store i16 %191, ptr %67, align 2, !tbaa !39
  %192 = add i16 %94, 4
  store i16 %192, ptr %84, align 2, !tbaa !40
  %193 = add nsw i32 %96, 4
  %194 = shl i32 %193, 16
  %195 = ashr exact i32 %194, 16
  %196 = icmp slt i32 %195, 16
  br i1 %196, label %93, label %345, !llvm.loop !46

197:                                              ; preds = %47, %38
  %198 = lshr i32 %2, 2
  %199 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 3
  %200 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 2
  %201 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  %202 = icmp eq i32 %2, 0
  %203 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %204 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %205 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %206 = and i32 %198, 3
  %207 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %208 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %209 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %210 = select i1 %202, i8 4, i8 3
  br label %211

211:                                              ; preds = %197, %342
  %212 = phi i64 [ 0, %197 ], [ %343, %342 ]
  %213 = trunc i64 %212 to i32
  call void @getAffNeighbour(ptr noundef nonnull %1, i32 noundef %15, i32 noundef %213, ptr noundef nonnull %16, ptr noundef nonnull %8) #10
  %214 = and i32 %213, 12
  %215 = add nuw nsw i32 %214, %198
  %216 = load i16, ptr %199, align 2, !tbaa !39
  %217 = and i16 %216, -4
  %218 = load i16, ptr %200, align 4, !tbaa !47
  %219 = ashr i16 %218, 2
  %220 = add i16 %219, %217
  %221 = load ptr, ptr %39, align 8, !tbaa !28
  %222 = load i32, ptr %41, align 4, !tbaa !29
  %223 = sext i32 %222 to i64
  %224 = load i32, ptr %44, align 8, !tbaa !31
  %225 = getelementptr inbounds %struct.macroblock, ptr %221, i64 %223, i32 45
  %226 = load i32, ptr %225, align 8, !tbaa !31
  %227 = icmp ne i32 %224, %226
  %228 = zext i1 %227 to i8
  store i8 %228, ptr %201, align 8, !tbaa !32
  %229 = getelementptr inbounds i8, ptr %0, i64 %212
  store i8 %210, ptr %229, align 1, !tbaa !33
  %230 = load i32, ptr %203, align 8, !tbaa !36
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %342

232:                                              ; preds = %211
  %233 = getelementptr inbounds %struct.macroblock, ptr %221, i64 %223, i32 18
  %234 = load i32, ptr %233, align 8, !tbaa !36
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %342

236:                                              ; preds = %232
  %237 = load i64, ptr %204, align 8, !tbaa !38
  %238 = shl i32 %215, 16
  %239 = ashr exact i32 %238, 16
  %240 = call fastcc i64 @i64_power2(i32 noundef %239) #11
  %241 = and i64 %240, %237
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %340

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.macroblock, ptr %221, i64 %223, i32 33
  %245 = load i64, ptr %244, align 8, !tbaa !38
  %246 = sext i16 %220 to i32
  %247 = call fastcc i64 @i64_power2(i32 noundef %246) #11
  %248 = and i64 %247, %245
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %340

250:                                              ; preds = %243
  %251 = load i8, ptr %201, align 8, !tbaa !32
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %340

253:                                              ; preds = %250
  %254 = load i32, ptr %205, align 8, !tbaa !37
  call void @get_mb_block_pos_mbaff(i32 noundef %254, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %255 = load i16, ptr %7, align 2, !tbaa !48
  %256 = sext i16 %255 to i32
  %257 = shl nsw i32 %256, 2
  %258 = ashr i32 %238, 18
  %259 = add nsw i32 %257, %258
  %260 = load i16, ptr %6, align 2, !tbaa !48
  %261 = sext i16 %260 to i32
  %262 = shl nsw i32 %261, 2
  %263 = or disjoint i32 %262, %206
  %264 = load i16, ptr %207, align 2, !tbaa !40
  %265 = ashr i16 %264, 2
  %266 = load i16, ptr %208, align 4, !tbaa !49
  %267 = ashr i16 %266, 2
  %268 = load ptr, ptr %209, align 8, !tbaa !42
  %269 = sext i32 %259 to i64
  %270 = getelementptr inbounds ptr, ptr %268, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !43
  %272 = sext i32 %263 to i64
  %273 = getelementptr inbounds %struct.pic_motion_params, ptr %271, i64 %272
  %274 = sext i16 %265 to i64
  %275 = getelementptr inbounds ptr, ptr %268, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !43
  %277 = sext i16 %267 to i64
  %278 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277
  %279 = load ptr, ptr %273, align 8, !tbaa !43
  %280 = load ptr, ptr %278, align 8, !tbaa !43
  %281 = getelementptr inbounds [2 x ptr], ptr %273, i64 0, i64 1
  %282 = load ptr, ptr %281, align 8, !tbaa !43
  %283 = getelementptr inbounds [2 x ptr], ptr %278, i64 0, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !43
  %285 = icmp eq ptr %279, %280
  %286 = icmp eq ptr %282, %284
  %287 = select i1 %285, i1 %286, i1 false
  br i1 %287, label %292, label %288

288:                                              ; preds = %253
  %289 = icmp eq ptr %279, %284
  %290 = icmp eq ptr %282, %280
  %291 = select i1 %289, i1 %290, i1 false
  br i1 %291, label %292, label %340

292:                                              ; preds = %288, %253
  store i8 0, ptr %229, align 1, !tbaa !33
  %293 = icmp eq ptr %279, %282
  %294 = getelementptr inbounds %struct.pic_motion_params, ptr %271, i64 %272, i32 1
  br i1 %293, label %320, label %295

295:                                              ; preds = %292
  br i1 %285, label %296, label %308

296:                                              ; preds = %295
  %297 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277, i32 1
  %298 = call fastcc i32 @compare_mvs(ptr noundef nonnull %294, ptr noundef nonnull %297, i32 noundef %3) #11, !range !44
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.pic_motion_params, ptr %271, i64 %272, i32 1, i64 1
  %302 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277, i32 1, i64 1
  %303 = call fastcc i32 @compare_mvs(ptr noundef nonnull %301, ptr noundef nonnull %302, i32 noundef %3) #11, !range !44
  %304 = icmp ne i32 %303, 0
  br label %305

305:                                              ; preds = %300, %296
  %306 = phi i1 [ true, %296 ], [ %304, %300 ]
  %307 = zext i1 %306 to i8
  br label %340

308:                                              ; preds = %295
  %309 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277, i32 1, i64 1
  %310 = call fastcc i32 @compare_mvs(ptr noundef nonnull %294, ptr noundef nonnull %309, i32 noundef %3) #11, !range !44
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277, i32 1
  %314 = getelementptr inbounds %struct.pic_motion_params, ptr %271, i64 %272, i32 1, i64 1
  %315 = call fastcc i32 @compare_mvs(ptr noundef nonnull %314, ptr noundef nonnull %313, i32 noundef %3) #11, !range !44
  %316 = icmp ne i32 %315, 0
  br label %317

317:                                              ; preds = %312, %308
  %318 = phi i1 [ true, %308 ], [ %316, %312 ]
  %319 = zext i1 %318 to i8
  br label %340

320:                                              ; preds = %292
  %321 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277, i32 1
  %322 = call fastcc i32 @compare_mvs(ptr noundef nonnull %294, ptr noundef nonnull %321, i32 noundef %3) #11, !range !44
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.pic_motion_params, ptr %271, i64 %272, i32 1, i64 1
  %326 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277, i32 1, i64 1
  %327 = call fastcc i32 @compare_mvs(ptr noundef nonnull %325, ptr noundef nonnull %326, i32 noundef %3) #11, !range !44
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %337, label %329

329:                                              ; preds = %324, %320
  %330 = getelementptr inbounds %struct.pic_motion_params, ptr %276, i64 %277, i32 1, i64 1
  %331 = call fastcc i32 @compare_mvs(ptr noundef nonnull %294, ptr noundef nonnull %330, i32 noundef %3) #11, !range !44
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.pic_motion_params, ptr %271, i64 %272, i32 1, i64 1
  %335 = call fastcc i32 @compare_mvs(ptr noundef nonnull %334, ptr noundef nonnull %321, i32 noundef %3) #11, !range !44
  %336 = icmp ne i32 %335, 0
  br label %337

337:                                              ; preds = %329, %333, %324
  %338 = phi i1 [ false, %324 ], [ true, %329 ], [ %336, %333 ]
  %339 = zext i1 %338 to i8
  br label %340

340:                                              ; preds = %288, %250, %236, %243, %337, %317, %305
  %341 = phi i8 [ %307, %305 ], [ %319, %317 ], [ %339, %337 ], [ 2, %243 ], [ 2, %236 ], [ 1, %250 ], [ 1, %288 ]
  store i8 %341, ptr %229, align 1, !tbaa !33
  br label %342

342:                                              ; preds = %340, %211, %232
  %343 = add nuw nsw i64 %212, 1
  %344 = icmp eq i64 %343, 16
  br i1 %344, label %345, label %211, !llvm.loop !50

345:                                              ; preds = %342, %186, %24, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GetStrengthHorMBAff(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.pix_pos, align 4
  %9 = icmp slt i32 %2, 16
  %10 = select i1 %9, i32 %2, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %11 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 43
  %14 = load i32, ptr %13, align 8, !tbaa !25
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, 2
  %17 = add nsw i32 %10, -1
  %18 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  br i1 %16, label %19, label %46

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %21 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %22 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 45
  %23 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i32 [ 0, %19 ], [ %44, %24 ]
  call void @getAffNeighbour(ptr noundef nonnull %1, i32 noundef %25, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8) #10
  %26 = load ptr, ptr %20, align 8, !tbaa !28
  %27 = load i32, ptr %21, align 4, !tbaa !29
  %28 = sext i32 %27 to i64
  %29 = load i32, ptr %22, align 8, !tbaa !31
  %30 = freeze i32 %29
  %31 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %28, i32 45
  %32 = load i32, ptr %31, align 8, !tbaa !31
  %33 = icmp ne i32 %30, %32
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %23, align 8, !tbaa !32
  %35 = icmp eq i32 %32, 0
  %36 = or i32 %30, %2
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i1 %35, i1 false
  %39 = select i1 %38, i32 67372036, i32 50529027
  %40 = sext i32 %25 to i64
  %41 = getelementptr inbounds i8, ptr %0, i64 %40
  store i32 %39, ptr %41, align 4, !tbaa !45
  %42 = shl nsw i32 %25, 16
  %43 = add i32 %42, 262144
  %44 = ashr exact i32 %43, 16
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %24, label %203, !llvm.loop !51

46:                                               ; preds = %5
  call void @getAffNeighbour(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8) #10
  %47 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %48 = load ptr, ptr %47, align 8, !tbaa !28
  %49 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !29
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 45
  %53 = load i32, ptr %52, align 8, !tbaa !31
  %54 = getelementptr inbounds %struct.macroblock, ptr %48, i64 %51, i32 45
  %55 = load i32, ptr %54, align 8, !tbaa !31
  %56 = icmp ne i32 %53, %55
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  store i8 %57, ptr %58, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %60 = load i32, ptr %59, align 8, !tbaa !36
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %76, label %62

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.macroblock, ptr %48, i64 %51, i32 18
  %64 = load i32, ptr %63, align 8, !tbaa !36
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = and i32 %10, 65532
  %68 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %69 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 2
  %70 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 3
  %71 = getelementptr inbounds %struct.macroblock, ptr %48, i64 %51, i32 33
  %72 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %73 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %74 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %75 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  br label %83

76:                                               ; preds = %62, %46
  %77 = icmp eq i32 %2, 0
  %78 = icmp eq i32 %55, 0
  %79 = select i1 %77, i1 %78, i1 false
  %80 = icmp eq i32 %53, 0
  %81 = select i1 %79, i1 %80, i1 false
  %82 = select i1 %81, i8 4, i8 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %82, i64 16, i1 false)
  br label %203

83:                                               ; preds = %66, %194
  %84 = phi i32 [ 0, %66 ], [ %201, %194 ]
  %85 = phi i32 [ 0, %66 ], [ %200, %194 ]
  call void @getAffNeighbour(ptr noundef nonnull %1, i32 noundef %84, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8) #10
  %86 = ashr i32 %85, 18
  %87 = add nsw i32 %86, %67
  %88 = load i64, ptr %68, align 8, !tbaa !38
  %89 = shl i32 %87, 16
  %90 = ashr exact i32 %89, 16
  %91 = call fastcc i64 @i64_power2(i32 noundef %90) #11
  %92 = and i64 %91, %88
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %194

94:                                               ; preds = %83
  %95 = load i16, ptr %69, align 4, !tbaa !47
  %96 = load i16, ptr %70, align 2, !tbaa !39
  %97 = ashr i16 %95, 2
  %98 = and i16 %96, -4
  %99 = add i16 %98, %97
  %100 = load i64, ptr %71, align 8, !tbaa !38
  %101 = sext i16 %99 to i32
  %102 = call fastcc i64 @i64_power2(i32 noundef %101) #11
  %103 = and i64 %102, %100
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %194

105:                                              ; preds = %94
  %106 = load i8, ptr %58, align 8, !tbaa !32
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %194

108:                                              ; preds = %105
  %109 = load i32, ptr %72, align 8, !tbaa !37
  call void @get_mb_block_pos_mbaff(i32 noundef %109, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %110 = load i16, ptr %7, align 2, !tbaa !48
  %111 = sext i16 %110 to i32
  %112 = shl nsw i32 %111, 2
  %113 = ashr i32 %89, 18
  %114 = add nsw i32 %112, %113
  %115 = zext i32 %114 to i64
  %116 = load i16, ptr %6, align 2, !tbaa !48
  %117 = sext i16 %116 to i32
  %118 = shl nsw i32 %117, 2
  %119 = and i32 %86, 3
  %120 = or disjoint i32 %118, %119
  %121 = zext i32 %120 to i64
  %122 = load i16, ptr %73, align 2, !tbaa !40
  %123 = ashr i16 %122, 2
  %124 = load i16, ptr %74, align 4, !tbaa !49
  %125 = ashr i16 %124, 2
  %126 = load ptr, ptr %75, align 8, !tbaa !42
  %127 = shl i64 %115, 48
  %128 = ashr exact i64 %127, 48
  %129 = getelementptr inbounds ptr, ptr %126, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !43
  %131 = shl i64 %121, 48
  %132 = ashr exact i64 %131, 48
  %133 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %132
  %134 = sext i16 %123 to i64
  %135 = getelementptr inbounds ptr, ptr %126, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !43
  %137 = sext i16 %125 to i64
  %138 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137
  %139 = load ptr, ptr %133, align 8, !tbaa !43
  %140 = load ptr, ptr %138, align 8, !tbaa !43
  %141 = getelementptr inbounds [2 x ptr], ptr %133, i64 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !43
  %143 = getelementptr inbounds [2 x ptr], ptr %138, i64 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !43
  %145 = icmp eq ptr %139, %140
  %146 = icmp eq ptr %142, %144
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %152, label %148

148:                                              ; preds = %108
  %149 = icmp eq ptr %139, %144
  %150 = icmp eq ptr %142, %140
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %152, label %191

152:                                              ; preds = %148, %108
  %153 = icmp eq ptr %139, %142
  %154 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %132, i32 1
  br i1 %153, label %174, label %155

155:                                              ; preds = %152
  br i1 %145, label %156, label %165

156:                                              ; preds = %155
  %157 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 1
  %158 = call fastcc i32 @compare_mvs(ptr noundef nonnull %154, ptr noundef nonnull %157, i32 noundef %3) #11, !range !44
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %191

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %132, i32 1, i64 1
  %162 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 1, i64 1
  %163 = call fastcc i32 @compare_mvs(ptr noundef nonnull %161, ptr noundef nonnull %162, i32 noundef %3) #11, !range !44
  %164 = icmp ne i32 %163, 0
  br label %191

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 1, i64 1
  %167 = call fastcc i32 @compare_mvs(ptr noundef nonnull %154, ptr noundef nonnull %166, i32 noundef %3) #11, !range !44
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %191

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 1
  %171 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %132, i32 1, i64 1
  %172 = call fastcc i32 @compare_mvs(ptr noundef nonnull %171, ptr noundef nonnull %170, i32 noundef %3) #11, !range !44
  %173 = icmp ne i32 %172, 0
  br label %191

174:                                              ; preds = %152
  %175 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 1
  %176 = call fastcc i32 @compare_mvs(ptr noundef nonnull %154, ptr noundef nonnull %175, i32 noundef %3) #11, !range !44
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %132, i32 1, i64 1
  %180 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 1, i64 1
  %181 = call fastcc i32 @compare_mvs(ptr noundef nonnull %179, ptr noundef nonnull %180, i32 noundef %3) #11, !range !44
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %178, %174
  %184 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 1, i64 1
  %185 = call fastcc i32 @compare_mvs(ptr noundef nonnull %154, ptr noundef nonnull %184, i32 noundef %3) #11, !range !44
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %132, i32 1, i64 1
  %189 = call fastcc i32 @compare_mvs(ptr noundef nonnull %188, ptr noundef nonnull %175, i32 noundef %3) #11, !range !44
  %190 = icmp ne i32 %189, 0
  br label %191

191:                                              ; preds = %148, %178, %187, %183, %165, %169, %156, %160
  %192 = phi i1 [ true, %156 ], [ %164, %160 ], [ true, %165 ], [ %173, %169 ], [ false, %178 ], [ true, %183 ], [ %190, %187 ], [ true, %148 ]
  %193 = zext i1 %192 to i32
  br label %194

194:                                              ; preds = %105, %83, %94, %191
  %195 = phi i32 [ %193, %191 ], [ 2, %94 ], [ 2, %83 ], [ 1, %105 ]
  %196 = mul nuw nsw i32 %195, 16843009
  %197 = sext i32 %84 to i64
  %198 = getelementptr inbounds i8, ptr %0, i64 %197
  store i32 %196, ptr %198, align 4, !tbaa !45
  %199 = shl nsw i32 %84, 16
  %200 = add i32 %199, 262144
  %201 = ashr exact i32 %200, 16
  %202 = icmp slt i32 %201, 16
  br i1 %202, label %83, label %203, !llvm.loop !52

203:                                              ; preds = %194, %24, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @EdgeLoopLumaVerMBAff(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !45
  br label %16

16:                                               ; preds = %6, %10
  %17 = phi i32 [ %15, %10 ], [ 16, %6 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %18 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 66, i64 1
  %21 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 66
  %22 = select i1 %9, ptr %21, ptr %20
  %23 = load i32, ptr %22, align 4, !tbaa !45
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 70, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !45
  %27 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %28 = load i16, ptr %27, align 2, !tbaa !54
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %31 = load i16, ptr %30, align 4, !tbaa !55
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %34 = load i16, ptr %33, align 8, !tbaa !56
  %35 = icmp eq i16 %34, 0
  %36 = icmp sgt i32 %17, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %270

38:                                               ; preds = %16
  %39 = add nsw i32 %4, -1
  %40 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 81
  %41 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 35
  %42 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %43 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %44 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %45 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %46 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %47 = add i32 %0, -1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 15, i64 %48
  %50 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 14
  %51 = zext nneg i32 %17 to i64
  %52 = select i1 %9, ptr %50, ptr %49
  br label %53

53:                                               ; preds = %38, %267
  %54 = phi i64 [ 0, %38 ], [ %268, %267 ]
  %55 = trunc i64 %54 to i32
  call void @getAffNeighbour(ptr noundef %3, i32 noundef %39, i32 noundef %55, ptr noundef nonnull %40, ptr noundef nonnull %7) #10
  %56 = load i32, ptr %7, align 4, !tbaa !57
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %267, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %2, i64 %54
  %60 = load i8, ptr %59, align 1, !tbaa !33
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %267, label %62

62:                                               ; preds = %58
  call void @getAffNeighbour(ptr noundef %3, i32 noundef %4, i32 noundef %55, ptr noundef nonnull %40, ptr noundef nonnull %8) #10
  %63 = load ptr, ptr %41, align 8, !tbaa !28
  %64 = load i32, ptr %42, align 4, !tbaa !29
  %65 = sext i32 %64 to i64
  %66 = load i16, ptr %43, align 2, !tbaa !40
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  %70 = load i16, ptr %44, align 4, !tbaa !49
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i16, ptr %69, i64 %71
  %73 = load i16, ptr %45, align 2, !tbaa !40
  %74 = sext i16 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %1, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = load i16, ptr %46, align 4, !tbaa !49
  %78 = sext i16 %77 to i64
  %79 = getelementptr inbounds i16, ptr %76, i64 %78
  %80 = getelementptr inbounds %struct.macroblock, ptr %63, i64 %65, i32 14
  %81 = getelementptr inbounds %struct.macroblock, ptr %63, i64 %65, i32 15, i64 %48
  %82 = select i1 %9, ptr %80, ptr %81
  %83 = load i32, ptr %82, align 4, !tbaa !45
  %84 = load i32, ptr %52, align 4, !tbaa !45
  %85 = add nsw i32 %84, %83
  %86 = add nsw i32 %85, 1
  %87 = ashr i32 %86, 1
  %88 = add nsw i32 %87, %29
  %89 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %88) #11
  %90 = add nsw i32 %87, %32
  %91 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %90) #11
  %92 = sext i32 %89 to i64
  %93 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !33
  %95 = zext i8 %94 to i32
  %96 = mul nsw i32 %23, %95
  %97 = sext i32 %91 to i64
  %98 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !33
  %100 = zext i8 %99 to i32
  %101 = mul nsw i32 %23, %100
  %102 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %92
  %103 = load i16, ptr %79, align 2, !tbaa !48
  %104 = load i16, ptr %72, align 2, !tbaa !48
  %105 = zext i16 %104 to i32
  %106 = zext i16 %103 to i32
  %107 = sub nsw i32 %105, %106
  %108 = call fastcc i32 @iabs(i32 noundef %107) #11
  %109 = icmp slt i32 %108, %96
  br i1 %109, label %110, label %267

110:                                              ; preds = %62
  %111 = getelementptr inbounds i16, ptr %79, i64 -1
  %112 = load i16, ptr %111, align 2, !tbaa !48
  %113 = getelementptr inbounds i16, ptr %72, i64 1
  %114 = load i16, ptr %113, align 2, !tbaa !48
  %115 = zext i16 %114 to i32
  %116 = sub nsw i32 %105, %115
  %117 = call fastcc i32 @iabs(i32 noundef %116) #11
  %118 = icmp slt i32 %117, %101
  br i1 %118, label %119, label %267

119:                                              ; preds = %110
  %120 = zext i16 %112 to i32
  %121 = sub nsw i32 %106, %120
  %122 = call fastcc i32 @iabs(i32 noundef %121) #11
  %123 = icmp slt i32 %122, %101
  br i1 %123, label %124, label %267

124:                                              ; preds = %119
  %125 = getelementptr inbounds i16, ptr %79, i64 -2
  %126 = load i16, ptr %125, align 2, !tbaa !48
  %127 = getelementptr inbounds i16, ptr %72, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !48
  %129 = icmp eq i8 %60, 4
  %130 = add nuw nsw i32 %105, %106
  br i1 %129, label %131, label %208

131:                                              ; preds = %124
  %132 = ashr i32 %96, 2
  %133 = add nsw i32 %132, 2
  %134 = icmp slt i32 %108, %133
  %135 = zext i16 %128 to i32
  %136 = sub nsw i32 %105, %135
  %137 = call fastcc i32 @iabs(i32 noundef %136) #11
  %138 = icmp slt i32 %137, %101
  %139 = and i1 %134, %138
  %140 = zext i16 %126 to i32
  %141 = sub nsw i32 %106, %140
  %142 = call fastcc i32 @iabs(i32 noundef %141) #11
  %143 = icmp slt i32 %142, %101
  %144 = and i1 %134, %143
  br i1 %144, label %145, label %168

145:                                              ; preds = %131
  %146 = getelementptr inbounds i16, ptr %79, i64 -3
  %147 = load i16, ptr %146, align 2, !tbaa !48
  %148 = zext i16 %147 to i32
  %149 = add nuw nsw i32 %148, %140
  %150 = shl nuw nsw i32 %149, 1
  %151 = add nuw nsw i32 %130, 4
  %152 = add nuw nsw i32 %151, %120
  %153 = add nuw nsw i32 %152, %140
  %154 = add nuw nsw i32 %153, %150
  %155 = lshr i32 %154, 3
  %156 = trunc i32 %155 to i16
  store i16 %156, ptr %125, align 2, !tbaa !48
  %157 = add nuw nsw i32 %130, 2
  %158 = add nuw nsw i32 %157, %120
  %159 = add nuw nsw i32 %158, %140
  %160 = lshr i32 %159, 2
  %161 = trunc i32 %160 to i16
  store i16 %161, ptr %111, align 2, !tbaa !48
  %162 = add nuw nsw i32 %130, %120
  %163 = shl nuw nsw i32 %162, 1
  %164 = add nuw nsw i32 %115, 4
  %165 = add nuw nsw i32 %164, %163
  %166 = add nuw nsw i32 %165, %140
  %167 = lshr i32 %166, 3
  br label %174

168:                                              ; preds = %131
  %169 = shl nuw nsw i32 %120, 1
  %170 = add nuw nsw i32 %106, 2
  %171 = add nuw nsw i32 %170, %169
  %172 = add nuw nsw i32 %171, %115
  %173 = lshr i32 %172, 2
  br label %174

174:                                              ; preds = %168, %145
  %175 = phi i32 [ %173, %168 ], [ %167, %145 ]
  %176 = trunc i32 %175 to i16
  store i16 %176, ptr %79, align 2, !tbaa !48
  br i1 %139, label %177, label %201

177:                                              ; preds = %174
  %178 = getelementptr inbounds i16, ptr %72, i64 3
  %179 = load i16, ptr %178, align 2, !tbaa !48
  %180 = add nuw nsw i32 %130, %115
  %181 = shl nuw nsw i32 %180, 1
  %182 = add nuw nsw i32 %120, 4
  %183 = add nuw nsw i32 %182, %181
  %184 = add nuw nsw i32 %183, %135
  %185 = lshr i32 %184, 3
  %186 = trunc i32 %185 to i16
  store i16 %186, ptr %72, align 2, !tbaa !48
  %187 = add nuw nsw i32 %130, 2
  %188 = add nuw nsw i32 %187, %115
  %189 = add nuw nsw i32 %188, %135
  %190 = lshr i32 %189, 2
  %191 = trunc i32 %190 to i16
  store i16 %191, ptr %113, align 2, !tbaa !48
  %192 = zext i16 %179 to i32
  %193 = add nuw nsw i32 %192, %135
  %194 = shl nuw nsw i32 %193, 1
  %195 = add nuw nsw i32 %130, 4
  %196 = add nuw nsw i32 %195, %115
  %197 = add nuw nsw i32 %196, %135
  %198 = add nuw nsw i32 %197, %194
  %199 = lshr i32 %198, 3
  %200 = trunc i32 %199 to i16
  store i16 %200, ptr %127, align 2, !tbaa !48
  br label %267

201:                                              ; preds = %174
  %202 = shl nuw nsw i32 %115, 1
  %203 = add nuw nsw i32 %105, 2
  %204 = add nuw nsw i32 %203, %120
  %205 = add nuw nsw i32 %204, %202
  %206 = lshr i32 %205, 2
  %207 = trunc i32 %206 to i16
  store i16 %207, ptr %72, align 2, !tbaa !48
  br label %267

208:                                              ; preds = %124
  %209 = add nuw nsw i32 %130, 1
  %210 = lshr i32 %209, 1
  %211 = zext i16 %128 to i32
  %212 = sub nsw i32 %105, %211
  %213 = call fastcc i32 @iabs(i32 noundef %212) #11
  %214 = icmp slt i32 %213, %101
  %215 = zext i1 %214 to i32
  %216 = zext i16 %126 to i32
  %217 = sub nsw i32 %106, %216
  %218 = call fastcc i32 @iabs(i32 noundef %217) #11
  %219 = icmp slt i32 %218, %101
  %220 = zext i1 %219 to i32
  %221 = zext i8 %60 to i64
  %222 = getelementptr inbounds i8, ptr %102, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !33
  %224 = zext i8 %223 to i32
  %225 = mul nsw i32 %23, %224
  %226 = add nuw nsw i32 %220, %215
  %227 = add i32 %226, %225
  %228 = sub nsw i32 0, %227
  %229 = shl nsw i32 %107, 2
  %230 = add nsw i32 %229, 4
  %231 = add nsw i32 %230, %120
  %232 = sub nsw i32 %231, %115
  %233 = ashr i32 %232, 3
  %234 = call fastcc i32 @iClip3(i32 noundef %228, i32 noundef %227, i32 noundef %233) #11
  %235 = icmp ne i32 %225, 0
  %236 = and i1 %219, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %208
  %238 = sub nsw i32 0, %225
  %239 = shl nuw nsw i32 %120, 1
  %240 = sub nsw i32 %210, %239
  %241 = add nsw i32 %240, %216
  %242 = ashr i32 %241, 1
  %243 = call fastcc i32 @iClip3(i32 noundef %238, i32 noundef %225, i32 noundef %242) #11
  %244 = trunc i32 %243 to i16
  %245 = add i16 %112, %244
  store i16 %245, ptr %111, align 2, !tbaa !48
  br label %246

246:                                              ; preds = %237, %208
  %247 = icmp eq i32 %234, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %246
  %249 = add nsw i32 %234, %106
  %250 = call fastcc i32 @iClip1(i32 noundef %26, i32 noundef %249) #11
  %251 = trunc i32 %250 to i16
  store i16 %251, ptr %79, align 2, !tbaa !48
  %252 = sub nsw i32 %105, %234
  %253 = call fastcc i32 @iClip1(i32 noundef %26, i32 noundef %252) #11
  %254 = trunc i32 %253 to i16
  store i16 %254, ptr %72, align 2, !tbaa !48
  br label %255

255:                                              ; preds = %248, %246
  %256 = and i1 %214, %235
  br i1 %256, label %257, label %267

257:                                              ; preds = %255
  %258 = sub nsw i32 0, %225
  %259 = shl nuw nsw i32 %115, 1
  %260 = sub nsw i32 %210, %259
  %261 = add nsw i32 %260, %211
  %262 = ashr i32 %261, 1
  %263 = call fastcc i32 @iClip3(i32 noundef %258, i32 noundef %225, i32 noundef %262) #11
  %264 = load i16, ptr %113, align 2, !tbaa !48
  %265 = trunc i32 %263 to i16
  %266 = add i16 %264, %265
  store i16 %266, ptr %113, align 2, !tbaa !48
  br label %267

267:                                              ; preds = %255, %257, %177, %201, %53, %62, %119, %110, %58
  %268 = add nuw nsw i64 %54, 1
  %269 = icmp eq i64 %268, %51
  br i1 %269, label %270, label %53, !llvm.loop !58

270:                                              ; preds = %267, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @EdgeLoopLumaHorMBAff(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 67
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [4 x i32]], ptr @pelnum_cr, i64 0, i64 1, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !45
  br label %18

18:                                               ; preds = %6, %12
  %19 = phi i32 [ %17, %12 ], [ 16, %6 ]
  %20 = icmp slt i32 %4, 16
  %21 = select i1 %20, i32 %4, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %22 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 66, i64 1
  %25 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 66
  %26 = select i1 %11, ptr %25, ptr %24
  %27 = load i32, ptr %26, align 4, !tbaa !45
  %28 = zext i32 %0 to i64
  %29 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 70, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = add nsw i32 %21, -1
  %32 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 81
  call void @getAffNeighbour(ptr noundef %3, i32 noundef 0, i32 noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %7) #10
  %33 = load i32, ptr %7, align 4, !tbaa !57
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %37 = load i16, ptr %36, align 8, !tbaa !56
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %309

39:                                               ; preds = %35, %18
  %40 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %41 = load i16, ptr %40, align 2, !tbaa !54
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %44 = load i16, ptr %43, align 4, !tbaa !55
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 35
  %47 = load ptr, ptr %46, align 8, !tbaa !28
  %48 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !29
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %50, i32 45
  %52 = load i32, ptr %51, align 8, !tbaa !31
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 45
  %55 = load i32, ptr %54, align 8, !tbaa !31
  %56 = icmp eq i32 %55, 0
  %57 = xor i1 %53, true
  %58 = select i1 %57, i1 %56, i1 false
  %59 = zext i1 %58 to i32
  %60 = shl nsw i32 %10, %59
  %61 = icmp ne i32 %55, 0
  %62 = and i1 %53, %61
  %63 = zext i1 %62 to i32
  %64 = shl nsw i32 %10, %63
  %65 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %50, i32 14
  %66 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 14
  %67 = add i32 %0, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %50, i32 15, i64 %68
  %70 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 15, i64 %68
  %71 = select i1 %11, ptr %66, ptr %70
  %72 = select i1 %11, ptr %65, ptr %69
  %73 = load i32, ptr %72, align 4, !tbaa !45
  %74 = load i32, ptr %71, align 4, !tbaa !45
  %75 = add nsw i32 %74, %73
  %76 = add nsw i32 %75, 1
  %77 = ashr i32 %76, 1
  %78 = add nsw i32 %77, %42
  %79 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %78) #11
  %80 = add nsw i32 %77, %45
  %81 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %80) #11
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !33
  %85 = zext i8 %84 to i32
  %86 = mul nsw i32 %27, %85
  %87 = sext i32 %81 to i64
  %88 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !33
  %90 = zext i8 %89 to i32
  %91 = mul nsw i32 %27, %90
  %92 = or i32 %91, %86
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %309, label %94

94:                                               ; preds = %39
  %95 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %82
  call void @getAffNeighbour(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %21, ptr noundef nonnull %32, ptr noundef nonnull %8) #10
  %96 = icmp sgt i32 %19, 0
  br i1 %96, label %97, label %309

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %99 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %100 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %101 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %102 = sub nsw i32 0, %64
  %103 = sext i32 %102 to i64
  %104 = sext i32 %60 to i64
  %105 = shl nsw i32 %102, 1
  %106 = sext i32 %105 to i64
  %107 = shl nsw i32 %60, 1
  %108 = sext i32 %107 to i64
  %109 = sext i32 %64 to i64
  %110 = sub nsw i64 0, %109
  %111 = ashr i32 %86, 2
  %112 = add nsw i32 %111, 2
  %113 = mul i32 %64, -3
  %114 = sext i32 %113 to i64
  %115 = mul nsw i32 %60, 3
  %116 = sext i32 %115 to i64
  %117 = zext nneg i32 %19 to i64
  br label %118

118:                                              ; preds = %97, %302
  %119 = phi i64 [ 0, %97 ], [ %307, %302 ]
  %120 = getelementptr inbounds i8, ptr %2, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !33
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %302, label %123

123:                                              ; preds = %118
  %124 = load i16, ptr %98, align 2, !tbaa !40
  %125 = sext i16 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %1, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !43
  %128 = load i16, ptr %99, align 4, !tbaa !49
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds i16, ptr %127, i64 %129
  %131 = load i16, ptr %100, align 2, !tbaa !40
  %132 = sext i16 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %1, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !43
  %135 = load i16, ptr %101, align 4, !tbaa !49
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds i16, ptr %134, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !48
  %139 = load i16, ptr %130, align 2, !tbaa !48
  %140 = zext i16 %139 to i32
  %141 = zext i16 %138 to i32
  %142 = sub nsw i32 %140, %141
  %143 = call fastcc i32 @iabs(i32 noundef %142) #11
  %144 = icmp slt i32 %143, %86
  br i1 %144, label %145, label %302

145:                                              ; preds = %123
  %146 = getelementptr inbounds i16, ptr %137, i64 %103
  %147 = getelementptr inbounds i16, ptr %130, i64 %104
  %148 = load i16, ptr %147, align 2, !tbaa !48
  %149 = zext i16 %148 to i32
  %150 = sub nsw i32 %140, %149
  %151 = call fastcc i32 @iabs(i32 noundef %150) #11
  %152 = icmp slt i32 %151, %91
  br i1 %152, label %153, label %302

153:                                              ; preds = %145
  %154 = load i16, ptr %146, align 2, !tbaa !48
  %155 = zext i16 %154 to i32
  %156 = sub nsw i32 %141, %155
  %157 = call fastcc i32 @iabs(i32 noundef %156) #11
  %158 = icmp slt i32 %157, %91
  br i1 %158, label %159, label %302

159:                                              ; preds = %153
  %160 = getelementptr inbounds i16, ptr %137, i64 %106
  %161 = load i16, ptr %160, align 2, !tbaa !48
  %162 = getelementptr inbounds i16, ptr %130, i64 %108
  %163 = load i16, ptr %162, align 2, !tbaa !48
  %164 = icmp eq i8 %121, 4
  %165 = add nuw nsw i32 %140, %141
  br i1 %164, label %166, label %241

166:                                              ; preds = %159
  %167 = icmp slt i32 %143, %112
  %168 = zext i16 %163 to i32
  %169 = sub nsw i32 %140, %168
  %170 = call fastcc i32 @iabs(i32 noundef %169) #11
  %171 = icmp slt i32 %170, %91
  %172 = and i1 %167, %171
  %173 = zext i16 %161 to i32
  %174 = sub nsw i32 %141, %173
  %175 = call fastcc i32 @iabs(i32 noundef %174) #11
  %176 = icmp slt i32 %175, %91
  %177 = and i1 %167, %176
  br i1 %177, label %178, label %201

178:                                              ; preds = %166
  %179 = getelementptr inbounds i16, ptr %137, i64 %114
  %180 = load i16, ptr %179, align 2, !tbaa !48
  %181 = zext i16 %180 to i32
  %182 = add nuw nsw i32 %181, %173
  %183 = shl nuw nsw i32 %182, 1
  %184 = add nuw nsw i32 %165, 4
  %185 = add nuw nsw i32 %184, %155
  %186 = add nuw nsw i32 %185, %173
  %187 = add nuw nsw i32 %186, %183
  %188 = lshr i32 %187, 3
  %189 = trunc i32 %188 to i16
  store i16 %189, ptr %160, align 2, !tbaa !48
  %190 = add nuw nsw i32 %165, 2
  %191 = add nuw nsw i32 %190, %155
  %192 = add nuw nsw i32 %191, %173
  %193 = lshr i32 %192, 2
  %194 = trunc i32 %193 to i16
  store i16 %194, ptr %146, align 2, !tbaa !48
  %195 = add nuw nsw i32 %165, %155
  %196 = shl nuw nsw i32 %195, 1
  %197 = add nuw nsw i32 %149, 4
  %198 = add nuw nsw i32 %197, %196
  %199 = add nuw nsw i32 %198, %173
  %200 = lshr i32 %199, 3
  br label %207

201:                                              ; preds = %166
  %202 = shl nuw nsw i32 %155, 1
  %203 = add nuw nsw i32 %141, 2
  %204 = add nuw nsw i32 %203, %149
  %205 = add nuw nsw i32 %204, %202
  %206 = lshr i32 %205, 2
  br label %207

207:                                              ; preds = %201, %178
  %208 = phi i32 [ %206, %201 ], [ %200, %178 ]
  %209 = trunc i32 %208 to i16
  store i16 %209, ptr %137, align 2, !tbaa !48
  br i1 %172, label %210, label %234

210:                                              ; preds = %207
  %211 = getelementptr inbounds i16, ptr %130, i64 %116
  %212 = load i16, ptr %211, align 2, !tbaa !48
  %213 = add nuw nsw i32 %165, %149
  %214 = shl nuw nsw i32 %213, 1
  %215 = add nuw nsw i32 %214, 4
  %216 = add nuw nsw i32 %215, %155
  %217 = add nuw nsw i32 %216, %168
  %218 = lshr i32 %217, 3
  %219 = trunc i32 %218 to i16
  store i16 %219, ptr %130, align 2, !tbaa !48
  %220 = add nuw nsw i32 %165, 2
  %221 = add nuw nsw i32 %220, %149
  %222 = add nuw nsw i32 %221, %168
  %223 = lshr i32 %222, 2
  %224 = trunc i32 %223 to i16
  store i16 %224, ptr %147, align 2, !tbaa !48
  %225 = zext i16 %212 to i32
  %226 = add nuw nsw i32 %225, %168
  %227 = shl nuw nsw i32 %226, 1
  %228 = add nuw nsw i32 %165, 4
  %229 = add nuw nsw i32 %228, %149
  %230 = add nuw nsw i32 %229, %168
  %231 = add nuw nsw i32 %230, %227
  %232 = lshr i32 %231, 3
  %233 = trunc i32 %232 to i16
  store i16 %233, ptr %162, align 2, !tbaa !48
  br label %302

234:                                              ; preds = %207
  %235 = shl nuw nsw i32 %149, 1
  %236 = add nuw nsw i32 %140, 2
  %237 = add nuw nsw i32 %236, %235
  %238 = add nuw nsw i32 %237, %155
  %239 = lshr i32 %238, 2
  %240 = trunc i32 %239 to i16
  store i16 %240, ptr %130, align 2, !tbaa !48
  br label %302

241:                                              ; preds = %159
  %242 = add nuw nsw i32 %165, 1
  %243 = lshr i32 %242, 1
  %244 = zext i16 %163 to i32
  %245 = sub nsw i32 %140, %244
  %246 = call fastcc i32 @iabs(i32 noundef %245) #11
  %247 = icmp slt i32 %246, %91
  %248 = zext i1 %247 to i32
  %249 = zext i16 %161 to i32
  %250 = sub nsw i32 %141, %249
  %251 = call fastcc i32 @iabs(i32 noundef %250) #11
  %252 = icmp slt i32 %251, %91
  %253 = zext i1 %252 to i32
  %254 = zext i8 %121 to i64
  %255 = getelementptr inbounds i8, ptr %95, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !33
  %257 = zext i8 %256 to i32
  %258 = mul nsw i32 %27, %257
  %259 = add nuw nsw i32 %253, %248
  %260 = add i32 %259, %258
  %261 = sub nsw i32 0, %260
  %262 = shl nsw i32 %142, 2
  %263 = add nsw i32 %262, 4
  %264 = sub nsw i32 %263, %149
  %265 = add nsw i32 %264, %155
  %266 = ashr i32 %265, 3
  %267 = call fastcc i32 @iClip3(i32 noundef %261, i32 noundef %260, i32 noundef %266) #11
  %268 = icmp ne i32 %258, 0
  %269 = and i1 %252, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %241
  %271 = sub nsw i32 0, %258
  %272 = shl nuw nsw i32 %155, 1
  %273 = sub nsw i32 %243, %272
  %274 = add nsw i32 %273, %249
  %275 = ashr i32 %274, 1
  %276 = call fastcc i32 @iClip3(i32 noundef %271, i32 noundef %258, i32 noundef %275) #11
  %277 = getelementptr inbounds i16, ptr %137, i64 %110
  %278 = load i16, ptr %277, align 2, !tbaa !48
  %279 = trunc i32 %276 to i16
  %280 = add i16 %278, %279
  store i16 %280, ptr %277, align 2, !tbaa !48
  br label %281

281:                                              ; preds = %270, %241
  %282 = icmp eq i32 %267, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %281
  %284 = add nsw i32 %267, %141
  %285 = call fastcc i32 @iClip1(i32 noundef %30, i32 noundef %284) #11
  %286 = trunc i32 %285 to i16
  store i16 %286, ptr %137, align 2, !tbaa !48
  %287 = sub nsw i32 %140, %267
  %288 = call fastcc i32 @iClip1(i32 noundef %30, i32 noundef %287) #11
  %289 = trunc i32 %288 to i16
  store i16 %289, ptr %130, align 2, !tbaa !48
  br label %290

290:                                              ; preds = %283, %281
  %291 = and i1 %247, %268
  br i1 %291, label %292, label %302

292:                                              ; preds = %290
  %293 = sub nsw i32 0, %258
  %294 = shl nuw nsw i32 %149, 1
  %295 = sub nsw i32 %243, %294
  %296 = add nsw i32 %295, %244
  %297 = ashr i32 %296, 1
  %298 = call fastcc i32 @iClip3(i32 noundef %293, i32 noundef %258, i32 noundef %297) #11
  %299 = load i16, ptr %147, align 2, !tbaa !48
  %300 = trunc i32 %298 to i16
  %301 = add i16 %299, %300
  store i16 %301, ptr %147, align 2, !tbaa !48
  br label %302

302:                                              ; preds = %123, %234, %210, %292, %290, %153, %145, %118
  %303 = load i16, ptr %101, align 4, !tbaa !49
  %304 = add i16 %303, 1
  store i16 %304, ptr %101, align 4, !tbaa !49
  %305 = load i16, ptr %99, align 4, !tbaa !49
  %306 = add i16 %305, 1
  store i16 %306, ptr %99, align 4, !tbaa !49
  %307 = add nuw nsw i64 %119, 1
  %308 = icmp eq i64 %307, %117
  br i1 %308, label %309, label %118, !llvm.loop !60

309:                                              ; preds = %302, %94, %39, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @EdgeLoopChromaVerMBAff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %16 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 66, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = add nsw i32 %4, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !45
  %22 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %23 = load i16, ptr %22, align 2, !tbaa !54
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %26 = load i16, ptr %25, align 4, !tbaa !55
  %27 = sext i16 %26 to i32
  %28 = icmp sgt i32 %15, 0
  br i1 %28, label %29, label %173

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  %31 = add nsw i32 %3, -1
  %32 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 35
  %33 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %34 = icmp eq i32 %15, 8
  %35 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 45
  %36 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 42
  %37 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %38 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %39 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %40 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %41 = sext i32 %4 to i64
  %42 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 15, i64 %41
  br label %43

43:                                               ; preds = %29, %170
  %44 = phi i32 [ 0, %29 ], [ %171, %170 ]
  call void @getAffNeighbour(ptr noundef %2, i32 noundef %3, i32 noundef %44, ptr noundef nonnull %30, ptr noundef nonnull %8) #10
  call void @getAffNeighbour(ptr noundef %2, i32 noundef %31, i32 noundef %44, ptr noundef nonnull %30, ptr noundef nonnull %7) #10
  %45 = load ptr, ptr %32, align 8, !tbaa !28
  %46 = load i32, ptr %33, align 4, !tbaa !29
  %47 = sext i32 %46 to i64
  br i1 %34, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32, ptr %35, align 8, !tbaa !31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.macroblock, ptr %45, i64 %47, i32 45
  %53 = load i32, ptr %52, align 8, !tbaa !31
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = shl nuw i32 %44, 1
  br label %62

57:                                               ; preds = %51, %48
  %58 = shl nuw i32 %44, 1
  %59 = and i32 %58, -4
  %60 = and i32 %44, 1
  %61 = or disjoint i32 %59, %60
  br label %62

62:                                               ; preds = %43, %55, %57
  %63 = phi i32 [ %56, %55 ], [ %61, %57 ], [ %44, %43 ]
  %64 = load i32, ptr %7, align 4, !tbaa !57
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i16, ptr %36, align 8, !tbaa !56
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %170

69:                                               ; preds = %66, %62
  %70 = sext i32 %63 to i64
  %71 = getelementptr inbounds i8, ptr %1, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !33
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %170, label %74

74:                                               ; preds = %69
  %75 = load i16, ptr %37, align 2, !tbaa !40
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !43
  %79 = load i16, ptr %38, align 4, !tbaa !49
  %80 = sext i16 %79 to i64
  %81 = getelementptr inbounds i16, ptr %78, i64 %80
  %82 = load i16, ptr %39, align 2, !tbaa !40
  %83 = sext i16 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !43
  %86 = load i16, ptr %40, align 4, !tbaa !49
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds i16, ptr %85, i64 %87
  %89 = getelementptr inbounds %struct.macroblock, ptr %45, i64 %47, i32 15, i64 %41
  %90 = load i32, ptr %89, align 4, !tbaa !45
  %91 = load i32, ptr %42, align 4, !tbaa !45
  %92 = add i32 %90, 1
  %93 = add i32 %92, %91
  %94 = ashr i32 %93, 1
  %95 = add nsw i32 %94, %24
  %96 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %95) #11
  %97 = add nsw i32 %94, %27
  %98 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %97) #11
  %99 = sext i32 %96 to i64
  %100 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !33
  %102 = zext i8 %101 to i32
  %103 = mul nsw i32 %17, %102
  %104 = sext i32 %98 to i64
  %105 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !33
  %107 = zext i8 %106 to i32
  %108 = mul nsw i32 %17, %107
  %109 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %99
  %110 = load i16, ptr %88, align 2, !tbaa !48
  %111 = load i16, ptr %81, align 2, !tbaa !48
  %112 = zext i16 %111 to i32
  %113 = zext i16 %110 to i32
  %114 = sub nsw i32 %112, %113
  %115 = call fastcc i32 @iabs(i32 noundef %114) #11
  %116 = icmp slt i32 %115, %103
  br i1 %116, label %117, label %170

117:                                              ; preds = %74
  %118 = getelementptr inbounds i16, ptr %81, i64 1
  %119 = load i16, ptr %118, align 2, !tbaa !48
  %120 = zext i16 %119 to i32
  %121 = sub nsw i32 %112, %120
  %122 = call fastcc i32 @iabs(i32 noundef %121) #11
  %123 = icmp slt i32 %122, %108
  br i1 %123, label %124, label %170

124:                                              ; preds = %117
  %125 = getelementptr inbounds i16, ptr %88, i64 -1
  %126 = load i16, ptr %125, align 2, !tbaa !48
  %127 = zext i16 %126 to i32
  %128 = sub nsw i32 %113, %127
  %129 = call fastcc i32 @iabs(i32 noundef %128) #11
  %130 = icmp slt i32 %129, %108
  br i1 %130, label %131, label %170

131:                                              ; preds = %124
  %132 = icmp eq i8 %72, 4
  br i1 %132, label %133, label %145

133:                                              ; preds = %131
  %134 = shl nuw nsw i32 %120, 1
  %135 = add nuw nsw i32 %112, 2
  %136 = add nuw nsw i32 %135, %134
  %137 = add nuw nsw i32 %136, %127
  %138 = lshr i32 %137, 2
  %139 = trunc i32 %138 to i16
  store i16 %139, ptr %81, align 2, !tbaa !48
  %140 = shl nuw nsw i32 %127, 1
  %141 = add nuw nsw i32 %113, 2
  %142 = add nuw nsw i32 %141, %120
  %143 = add nuw nsw i32 %142, %140
  %144 = lshr i32 %143, 2
  br label %166

145:                                              ; preds = %131
  %146 = zext i8 %72 to i64
  %147 = getelementptr inbounds i8, ptr %109, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !33
  %149 = zext i8 %148 to i32
  %150 = mul nsw i32 %17, %149
  %151 = add nsw i32 %150, 1
  %152 = xor i32 %150, -1
  %153 = shl nsw i32 %114, 2
  %154 = add nsw i32 %153, 4
  %155 = sub nsw i32 %154, %120
  %156 = add nsw i32 %155, %127
  %157 = ashr i32 %156, 3
  %158 = call fastcc i32 @iClip3(i32 noundef %152, i32 noundef %151, i32 noundef %157) #11
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %145
  %161 = add nsw i32 %158, %113
  %162 = call fastcc i32 @iClip1(i32 noundef %21, i32 noundef %161) #11
  %163 = trunc i32 %162 to i16
  store i16 %163, ptr %88, align 2, !tbaa !48
  %164 = sub nsw i32 %112, %158
  %165 = call fastcc i32 @iClip1(i32 noundef %21, i32 noundef %164) #11
  br label %166

166:                                              ; preds = %133, %160
  %167 = phi i32 [ %165, %160 ], [ %144, %133 ]
  %168 = phi ptr [ %81, %160 ], [ %88, %133 ]
  %169 = trunc i32 %167 to i16
  store i16 %169, ptr %168, align 2, !tbaa !48
  br label %170

170:                                              ; preds = %166, %145, %66, %74, %124, %117, %69
  %171 = add nuw nsw i32 %44, 1
  %172 = icmp eq i32 %171, %15
  br i1 %172, label %173, label %43, !llvm.loop !61

173:                                              ; preds = %170, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @EdgeLoopChromaHorMBAff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x [4 x i32]], ptr @pelnum_cr, i64 0, i64 1, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !45
  %16 = icmp slt i32 %3, 16
  %17 = select i1 %16, i32 %3, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %18 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 66, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = add nsw i32 %4, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !45
  %24 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %25 = load i16, ptr %24, align 2, !tbaa !54
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %28 = load i16, ptr %27, align 4, !tbaa !55
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 68
  %31 = load i32, ptr %30, align 8, !tbaa !62
  %32 = add nsw i32 %17, -1
  %33 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef %2, i32 noundef 0, i32 noundef %32, ptr noundef nonnull %33, ptr noundef nonnull %7) #10
  call void @getAffNeighbour(ptr noundef %2, i32 noundef 0, i32 noundef %17, ptr noundef nonnull %33, ptr noundef nonnull %8) #10
  %34 = load i32, ptr %7, align 4, !tbaa !57
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 42
  %38 = load i16, ptr %37, align 8, !tbaa !56
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %192

40:                                               ; preds = %36, %6
  %41 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 35
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !29
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.macroblock, ptr %42, i64 %45, i32 45
  %47 = load i32, ptr %46, align 8, !tbaa !31
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 45
  %50 = load i32, ptr %49, align 8, !tbaa !31
  %51 = icmp eq i32 %50, 0
  %52 = xor i1 %48, true
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  %55 = shl nsw i32 %31, %54
  %56 = icmp ne i32 %50, 0
  %57 = and i1 %48, %56
  %58 = zext i1 %57 to i32
  %59 = shl nsw i32 %31, %58
  %60 = sext i32 %4 to i64
  %61 = getelementptr inbounds %struct.macroblock, ptr %42, i64 %45, i32 15, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !45
  %63 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 15, i64 %60
  %64 = load i32, ptr %63, align 4, !tbaa !45
  %65 = add i32 %62, 1
  %66 = add i32 %65, %64
  %67 = ashr i32 %66, 1
  %68 = add nsw i32 %67, %26
  %69 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %68) #11
  %70 = add nsw i32 %67, %29
  %71 = call fastcc i32 @iClip3(i32 noundef 0, i32 noundef 51, i32 noundef %70) #11
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !33
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 %19, %75
  %77 = sext i32 %71 to i64
  %78 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !33
  %80 = zext i8 %79 to i32
  %81 = mul nsw i32 %19, %80
  %82 = or i32 %81, %76
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %192, label %84

84:                                               ; preds = %40
  %85 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %72
  %86 = icmp sgt i32 %15, 0
  br i1 %86, label %87, label %192

87:                                               ; preds = %84
  %88 = icmp eq i32 %15, 8
  %89 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %90 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %91 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %92 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %93 = sext i32 %55 to i64
  %94 = sub nsw i32 0, %59
  %95 = sext i32 %94 to i64
  br label %96

96:                                               ; preds = %87, %185
  %97 = phi i32 [ 0, %87 ], [ %190, %185 ]
  br i1 %88, label %98, label %104

98:                                               ; preds = %96
  %99 = shl nuw i32 %97, 1
  br i1 %57, label %104, label %100

100:                                              ; preds = %98
  %101 = and i32 %99, -4
  %102 = and i32 %97, 1
  %103 = or disjoint i32 %101, %102
  br label %104

104:                                              ; preds = %98, %96, %100
  %105 = phi i32 [ %103, %100 ], [ %97, %96 ], [ %99, %98 ]
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %1, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !33
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %185, label %110

110:                                              ; preds = %104
  %111 = load i16, ptr %89, align 2, !tbaa !40
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !43
  %115 = load i16, ptr %90, align 4, !tbaa !49
  %116 = sext i16 %115 to i64
  %117 = getelementptr inbounds i16, ptr %114, i64 %116
  %118 = load i16, ptr %91, align 2, !tbaa !40
  %119 = sext i16 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %0, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !43
  %122 = load i16, ptr %92, align 4, !tbaa !49
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds i16, ptr %121, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !48
  %126 = load i16, ptr %117, align 2, !tbaa !48
  %127 = zext i16 %126 to i32
  %128 = zext i16 %125 to i32
  %129 = sub nsw i32 %127, %128
  %130 = call fastcc i32 @iabs(i32 noundef %129) #11
  %131 = icmp slt i32 %130, %76
  br i1 %131, label %132, label %185

132:                                              ; preds = %110
  %133 = getelementptr inbounds i16, ptr %117, i64 %93
  %134 = load i16, ptr %133, align 2, !tbaa !48
  %135 = zext i16 %134 to i32
  %136 = sub nsw i32 %127, %135
  %137 = call fastcc i32 @iabs(i32 noundef %136) #11
  %138 = icmp slt i32 %137, %81
  br i1 %138, label %139, label %185

139:                                              ; preds = %132
  %140 = getelementptr inbounds i16, ptr %124, i64 %95
  %141 = load i16, ptr %140, align 2, !tbaa !48
  %142 = zext i16 %141 to i32
  %143 = sub nsw i32 %128, %142
  %144 = call fastcc i32 @iabs(i32 noundef %143) #11
  %145 = icmp slt i32 %144, %81
  br i1 %145, label %146, label %185

146:                                              ; preds = %139
  %147 = icmp eq i8 %108, 4
  br i1 %147, label %148, label %160

148:                                              ; preds = %146
  %149 = shl nuw nsw i32 %135, 1
  %150 = add nuw nsw i32 %127, 2
  %151 = add nuw nsw i32 %150, %149
  %152 = add nuw nsw i32 %151, %142
  %153 = lshr i32 %152, 2
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr %117, align 2, !tbaa !48
  %155 = shl nuw nsw i32 %142, 1
  %156 = add nuw nsw i32 %128, 2
  %157 = add nuw nsw i32 %156, %135
  %158 = add nuw nsw i32 %157, %155
  %159 = lshr i32 %158, 2
  br label %181

160:                                              ; preds = %146
  %161 = zext i8 %108 to i64
  %162 = getelementptr inbounds i8, ptr %85, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !33
  %164 = zext i8 %163 to i32
  %165 = mul nsw i32 %19, %164
  %166 = add nsw i32 %165, 1
  %167 = xor i32 %165, -1
  %168 = shl nsw i32 %129, 2
  %169 = add nsw i32 %168, 4
  %170 = sub nsw i32 %169, %135
  %171 = add nsw i32 %170, %142
  %172 = ashr i32 %171, 3
  %173 = call fastcc i32 @iClip3(i32 noundef %167, i32 noundef %166, i32 noundef %172) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %160
  %176 = add nsw i32 %173, %128
  %177 = call fastcc i32 @iClip1(i32 noundef %23, i32 noundef %176) #11
  %178 = trunc i32 %177 to i16
  store i16 %178, ptr %124, align 2, !tbaa !48
  %179 = sub nsw i32 %127, %173
  %180 = call fastcc i32 @iClip1(i32 noundef %23, i32 noundef %179) #11
  br label %181

181:                                              ; preds = %148, %175
  %182 = phi i32 [ %180, %175 ], [ %159, %148 ]
  %183 = phi ptr [ %117, %175 ], [ %124, %148 ]
  %184 = trunc i32 %182 to i16
  store i16 %184, ptr %183, align 2, !tbaa !48
  br label %185

185:                                              ; preds = %181, %110, %160, %139, %132, %104
  %186 = load i16, ptr %92, align 4, !tbaa !49
  %187 = add i16 %186, 1
  store i16 %187, ptr %92, align 4, !tbaa !49
  %188 = load i16, ptr %90, align 4, !tbaa !49
  %189 = add i16 %188, 1
  store i16 %189, ptr %90, align 4, !tbaa !49
  %190 = add nuw nsw i32 %97, 1
  %191 = icmp eq i32 %190, %15
  br i1 %191, label %192, label %96, !llvm.loop !63

192:                                              ; preds = %185, %84, %40, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @get_mb_block_pos_mbaff(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @i64_power2(i32 noundef %0) unnamed_addr #5 {
  %2 = icmp sgt i32 %0, 63
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @compare_mvs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = load i16, ptr %0, align 2, !tbaa !64
  %5 = sext i16 %4 to i32
  %6 = load i16, ptr %1, align 2, !tbaa !64
  %7 = sext i16 %6 to i32
  %8 = sub nsw i32 %5, %7
  %9 = tail call fastcc i32 @iabs(i32 noundef %8) #11
  %10 = icmp sgt i32 %9, 3
  %11 = getelementptr inbounds %struct.MotionVector, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !65
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.MotionVector, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !65
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %13, %16
  %18 = tail call fastcc i32 @iabs(i32 noundef %17) #11
  %19 = icmp sge i32 %18, %2
  %20 = or i1 %10, %19
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = tail call fastcc i32 @imax(i32 noundef %2, i32 noundef %0) #11
  %5 = tail call fastcc i32 @imin(i32 noundef %4, i32 noundef %1) #11
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1, i32 noundef 0) #11
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #11
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_non_aff_neighbor_luma(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %0, %7 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @get_non_aff_neighbor_chroma(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = icmp slt i32 %2, %4
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  br label %22

12:                                               ; preds = %5
  %13 = icmp slt i32 %1, %3
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = icmp slt i32 %2, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !67
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
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

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
!22 = !{!23, !8, i64 8}
!23 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !24, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !12, i64 108, !9, i64 110, !9, i64 111, !12, i64 112, !12, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !12, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !12, i64 376, !12, i64 378, !12, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!24 = !{!"", !12, i64 0, !12, i64 2}
!25 = !{!26, !11, i64 248}
!26 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !12, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !27, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!27 = !{!"pic_motion_params_old", !8, i64 0}
!28 = !{!7, !8, i64 848888}
!29 = !{!30, !11, i64 4}
!30 = !{!"pix_pos", !11, i64 0, !11, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!31 = !{!23, !11, i64 384}
!32 = !{!23, !9, i64 472}
!33 = !{!9, !9, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!23, !11, i64 96}
!37 = !{!23, !11, i64 24}
!38 = !{!16, !16, i64 0}
!39 = !{!30, !12, i64 10}
!40 = !{!30, !12, i64 14}
!41 = !{!23, !12, i64 152}
!42 = !{!26, !8, i64 152}
!43 = !{!8, !8, i64 0}
!44 = !{i32 0, i32 2}
!45 = !{!11, !11, i64 0}
!46 = distinct !{!46, !35}
!47 = !{!30, !12, i64 8}
!48 = !{!12, !12, i64 0}
!49 = !{!30, !12, i64 12}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = !{!26, !11, i64 268}
!54 = !{!23, !12, i64 378}
!55 = !{!23, !12, i64 380}
!56 = !{!23, !12, i64 376}
!57 = !{!30, !11, i64 0}
!58 = distinct !{!58, !35}
!59 = !{!26, !11, i64 356}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = !{!26, !11, i64 360}
!63 = distinct !{!63, !35}
!64 = !{!24, !12, i64 0}
!65 = !{!24, !12, i64 2}
!66 = !{!23, !8, i64 144}
!67 = !{!23, !8, i64 136}
