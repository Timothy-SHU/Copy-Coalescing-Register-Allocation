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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_mbaff(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 162
  store ptr @GetStrengthVerMBAff, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 163
  store ptr @GetStrengthHorMBAff, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 164
  store ptr @EdgeLoopLumaVerMBAff, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 165
  store ptr @EdgeLoopLumaHorMBAff, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 166
  store ptr @EdgeLoopChromaVerMBAff, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 167
  store ptr @EdgeLoopChromaHorMBAff, ptr %7, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetStrengthVerMBAff(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %9 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 43
  %12 = load i32, ptr %11, align 8, !tbaa !53
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
  call void @getAffNeighbour(ptr noundef %1, i32 noundef %15, i32 noundef %26, ptr noundef nonnull %16, ptr noundef nonnull %8) #7
  %27 = load ptr, ptr %18, align 8, !tbaa !56
  %28 = load i32, ptr %19, align 4, !tbaa !57
  %29 = sext i32 %28 to i64
  %30 = load i32, ptr %20, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.macroblock, ptr %27, i64 %29, i32 45
  %32 = load i32, ptr %31, align 8, !tbaa !59
  %33 = icmp ne i32 %30, %32
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %21, align 8, !tbaa !60
  %35 = getelementptr inbounds i8, ptr %0, i64 %25
  store i8 %23, ptr %35, align 1, !tbaa !61
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, 16
  br i1 %37, label %579, label %24, !llvm.loop !62

38:                                               ; preds = %5
  call void @getAffNeighbour(ptr noundef %1, i32 noundef %15, i32 noundef 0, ptr noundef nonnull %16, ptr noundef nonnull %8) #7
  %39 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 35
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !57
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 45
  %45 = load i32, ptr %44, align 8, !tbaa !59
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %300

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.macroblock, ptr %40, i64 %43, i32 45
  %49 = load i32, ptr %48, align 8, !tbaa !59
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %300

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  store i8 0, ptr %52, align 8, !tbaa !60
  %53 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %54 = load i32, ptr %53, align 8, !tbaa !65
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.macroblock, ptr %40, i64 %43, i32 18
  %58 = load i32, ptr %57, align 8, !tbaa !65
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %51
  %61 = icmp eq i32 %2, 0
  %62 = select i1 %61, i8 4, i8 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %62, i64 16, i1 false)
  br label %579

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !66
  call void @get_mb_block_pos_mbaff(i32 noundef %65, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %66 = lshr i32 %2, 2
  %67 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 3
  %68 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 2
  %69 = load i16, ptr %68, align 4, !tbaa !67
  %70 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %71 = load i64, ptr %70, align 8, !tbaa !68
  %72 = ashr i16 %69, 2
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
  %91 = load i16, ptr %67, align 2, !tbaa !69
  %92 = load i16, ptr %84, align 2, !tbaa !70
  br label %93

93:                                               ; preds = %63, %289
  %94 = phi i16 [ %92, %63 ], [ %295, %289 ]
  %95 = phi i16 [ %91, %63 ], [ %294, %289 ]
  %96 = phi i32 [ 0, %63 ], [ %298, %289 ]
  %97 = phi i32 [ 0, %63 ], [ %296, %289 ]
  %98 = and i32 %97, 65532
  %99 = add nuw nsw i32 %98, %66
  %100 = shl i32 %99, 16
  %101 = ashr exact i32 %100, 16
  %102 = icmp sgt i32 %101, 63
  br i1 %102, label %107, label %103

103:                                              ; preds = %93
  %104 = sext i32 %101 to i64
  %105 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !68
  br label %107

107:                                              ; preds = %93, %103
  %108 = phi i64 [ %106, %103 ], [ 0, %93 ]
  %109 = and i64 %108, %71
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %289

111:                                              ; preds = %107
  %112 = and i16 %95, -4
  %113 = add i16 %72, %112
  %114 = load i64, ptr %73, align 8, !tbaa !68
  %115 = icmp sgt i16 %113, 63
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = sext i16 %113 to i64
  %118 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !68
  br label %120

120:                                              ; preds = %111, %116
  %121 = phi i64 [ %119, %116 ], [ 0, %111 ]
  %122 = and i64 %121, %114
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %289

124:                                              ; preds = %120
  br i1 %74, label %129, label %125

125:                                              ; preds = %124
  %126 = load i16, ptr %75, align 8, !tbaa !71
  %127 = add i16 %126, -1
  %128 = icmp ult i16 %127, 2
  br i1 %128, label %289, label %129

129:                                              ; preds = %125, %124
  %130 = ashr i32 %100, 18
  %131 = add nsw i32 %78, %130
  %132 = ashr i16 %94, 2
  %133 = load ptr, ptr %88, align 8, !tbaa !72
  %134 = sext i32 %131 to i64
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !73
  %137 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89
  %138 = sext i16 %132 to i64
  %139 = getelementptr inbounds ptr, ptr %133, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !73
  %141 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90
  %142 = load ptr, ptr %137, align 8, !tbaa !73
  %143 = load ptr, ptr %141, align 8, !tbaa !73
  %144 = getelementptr inbounds [2 x ptr], ptr %137, i64 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !73
  %146 = getelementptr inbounds [2 x ptr], ptr %141, i64 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !73
  %148 = icmp eq ptr %142, %143
  %149 = icmp eq ptr %145, %147
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %155, label %151

151:                                              ; preds = %129
  %152 = icmp eq ptr %142, %147
  %153 = icmp eq ptr %145, %143
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %286

155:                                              ; preds = %151, %129
  %156 = icmp eq ptr %142, %145
  %157 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89, i32 1
  br i1 %156, label %216, label %158

158:                                              ; preds = %155
  %159 = load i16, ptr %157, align 2, !tbaa !74
  %160 = sext i16 %159 to i32
  %161 = getelementptr inbounds %struct.MotionVector, ptr %157, i64 0, i32 1
  %162 = load i16, ptr %161, align 2, !tbaa !75
  %163 = sext i16 %162 to i32
  br i1 %148, label %164, label %190

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1
  %166 = load i16, ptr %165, align 2, !tbaa !74
  %167 = sext i16 %166 to i32
  %168 = sub nsw i32 %160, %167
  %169 = call i32 @llvm.abs.i32(i32 %168, i1 true)
  %170 = icmp ult i32 %169, 4
  %171 = getelementptr inbounds %struct.MotionVector, ptr %165, i64 0, i32 1
  %172 = load i16, ptr %171, align 2, !tbaa !75
  %173 = sext i16 %172 to i32
  %174 = sub nsw i32 %163, %173
  %175 = call i32 @llvm.abs.i32(i32 %174, i1 true)
  %176 = icmp slt i32 %175, %3
  %177 = and i1 %170, %176
  br i1 %177, label %178, label %286

178:                                              ; preds = %164
  %179 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89, i32 1, i64 1
  %180 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1
  %181 = load i16, ptr %179, align 2, !tbaa !74
  %182 = sext i16 %181 to i32
  %183 = load i16, ptr %180, align 2, !tbaa !74
  %184 = sext i16 %183 to i32
  %185 = sub nsw i32 %182, %184
  %186 = call i32 @llvm.abs.i32(i32 %185, i1 true)
  %187 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1, i32 1
  %188 = load i16, ptr %187, align 2, !tbaa !75
  %189 = sext i16 %188 to i32
  br label %275

190:                                              ; preds = %158
  %191 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1
  %192 = load i16, ptr %191, align 2, !tbaa !74
  %193 = sext i16 %192 to i32
  %194 = sub nsw i32 %160, %193
  %195 = call i32 @llvm.abs.i32(i32 %194, i1 true)
  %196 = icmp ult i32 %195, 4
  %197 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1, i32 1
  %198 = load i16, ptr %197, align 2, !tbaa !75
  %199 = sext i16 %198 to i32
  %200 = sub nsw i32 %163, %199
  %201 = call i32 @llvm.abs.i32(i32 %200, i1 true)
  %202 = icmp slt i32 %201, %3
  %203 = and i1 %196, %202
  br i1 %203, label %204, label %286

204:                                              ; preds = %190
  %205 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1
  %206 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89, i32 1, i64 1
  %207 = load i16, ptr %206, align 2, !tbaa !74
  %208 = sext i16 %207 to i32
  %209 = load i16, ptr %205, align 2, !tbaa !74
  %210 = sext i16 %209 to i32
  %211 = sub nsw i32 %208, %210
  %212 = call i32 @llvm.abs.i32(i32 %211, i1 true)
  %213 = getelementptr inbounds %struct.MotionVector, ptr %205, i64 0, i32 1
  %214 = load i16, ptr %213, align 2, !tbaa !75
  %215 = sext i16 %214 to i32
  br label %275

216:                                              ; preds = %155
  %217 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1
  %218 = load i16, ptr %157, align 2, !tbaa !74
  %219 = sext i16 %218 to i32
  %220 = load i16, ptr %217, align 2, !tbaa !74
  %221 = sext i16 %220 to i32
  %222 = sub nsw i32 %219, %221
  %223 = call i32 @llvm.abs.i32(i32 %222, i1 true)
  %224 = icmp ult i32 %223, 4
  %225 = getelementptr inbounds %struct.MotionVector, ptr %157, i64 0, i32 1
  %226 = load i16, ptr %225, align 2, !tbaa !75
  %227 = sext i16 %226 to i32
  %228 = getelementptr inbounds %struct.MotionVector, ptr %217, i64 0, i32 1
  %229 = load i16, ptr %228, align 2, !tbaa !75
  %230 = sext i16 %229 to i32
  %231 = sub nsw i32 %227, %230
  %232 = call i32 @llvm.abs.i32(i32 %231, i1 true)
  %233 = icmp slt i32 %232, %3
  %234 = and i1 %224, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %216
  %236 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89, i32 1, i64 1
  %237 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1
  %238 = load i16, ptr %236, align 2, !tbaa !74
  %239 = sext i16 %238 to i32
  %240 = load i16, ptr %237, align 2, !tbaa !74
  %241 = sext i16 %240 to i32
  %242 = sub nsw i32 %239, %241
  %243 = call i32 @llvm.abs.i32(i32 %242, i1 true)
  %244 = icmp ult i32 %243, 4
  %245 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89, i32 1, i64 1, i32 1
  %246 = load i16, ptr %245, align 2, !tbaa !75
  %247 = sext i16 %246 to i32
  %248 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1, i32 1
  %249 = load i16, ptr %248, align 2, !tbaa !75
  %250 = sext i16 %249 to i32
  %251 = sub nsw i32 %247, %250
  %252 = call i32 @llvm.abs.i32(i32 %251, i1 true)
  %253 = icmp slt i32 %252, %3
  %254 = and i1 %244, %253
  br i1 %254, label %286, label %255

255:                                              ; preds = %235, %216
  %256 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1
  %257 = load i16, ptr %256, align 2, !tbaa !74
  %258 = sext i16 %257 to i32
  %259 = sub nsw i32 %219, %258
  %260 = call i32 @llvm.abs.i32(i32 %259, i1 true)
  %261 = icmp ult i32 %260, 4
  %262 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %90, i32 1, i64 1, i32 1
  %263 = load i16, ptr %262, align 2, !tbaa !75
  %264 = sext i16 %263 to i32
  %265 = sub nsw i32 %227, %264
  %266 = call i32 @llvm.abs.i32(i32 %265, i1 true)
  %267 = icmp slt i32 %266, %3
  %268 = and i1 %261, %267
  br i1 %268, label %269, label %286

269:                                              ; preds = %255
  %270 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89, i32 1, i64 1
  %271 = load i16, ptr %270, align 2, !tbaa !74
  %272 = sext i16 %271 to i32
  %273 = sub nsw i32 %272, %221
  %274 = call i32 @llvm.abs.i32(i32 %273, i1 true)
  br label %275

275:                                              ; preds = %178, %204, %269
  %276 = phi i32 [ %230, %269 ], [ %215, %204 ], [ %189, %178 ]
  %277 = phi i32 [ %274, %269 ], [ %212, %204 ], [ %186, %178 ]
  %278 = icmp ugt i32 %277, 3
  %279 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %89, i32 1, i64 1, i32 1
  %280 = load i16, ptr %279, align 2, !tbaa !75
  %281 = sext i16 %280 to i32
  %282 = sub nsw i32 %281, %276
  %283 = call i32 @llvm.abs.i32(i32 %282, i1 true)
  %284 = icmp sge i32 %283, %3
  %285 = or i1 %278, %284
  br label %286

286:                                              ; preds = %275, %151, %235, %255, %190, %164
  %287 = phi i1 [ true, %164 ], [ true, %190 ], [ false, %235 ], [ true, %255 ], [ true, %151 ], [ %285, %275 ]
  %288 = zext i1 %287 to i32
  br label %289

289:                                              ; preds = %125, %107, %120, %286
  %290 = phi i32 [ %288, %286 ], [ 2, %120 ], [ 2, %107 ], [ 0, %125 ]
  %291 = mul nuw nsw i32 %290, 16843009
  %292 = sext i32 %96 to i64
  %293 = getelementptr inbounds i8, ptr %0, i64 %292
  store i32 %291, ptr %293, align 4, !tbaa !76
  %294 = add i16 %95, 4
  %295 = add i16 %94, 4
  %296 = add nsw i32 %96, 4
  %297 = shl i32 %296, 16
  %298 = ashr exact i32 %297, 16
  %299 = icmp slt i32 %298, 16
  br i1 %299, label %93, label %577, !llvm.loop !77

300:                                              ; preds = %47, %38
  %301 = lshr i32 %2, 2
  %302 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 3
  %303 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 2
  %304 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  %305 = icmp eq i32 %2, 0
  %306 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 25
  %307 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %308 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %309 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %310 = and i32 %301, 3
  %311 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %312 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %313 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  br label %314

314:                                              ; preds = %300, %574
  %315 = phi i64 [ 0, %300 ], [ %575, %574 ]
  %316 = trunc i64 %315 to i32
  call void @getAffNeighbour(ptr noundef %1, i32 noundef %15, i32 noundef %316, ptr noundef nonnull %16, ptr noundef nonnull %8) #7
  %317 = and i32 %316, 65532
  %318 = add nuw nsw i32 %317, %301
  %319 = load i16, ptr %302, align 2, !tbaa !69
  %320 = and i16 %319, -4
  %321 = load i16, ptr %303, align 4, !tbaa !67
  %322 = ashr i16 %321, 2
  %323 = add i16 %322, %320
  %324 = load ptr, ptr %39, align 8, !tbaa !56
  %325 = load i32, ptr %41, align 4, !tbaa !57
  %326 = sext i32 %325 to i64
  %327 = load i32, ptr %44, align 8, !tbaa !59
  %328 = getelementptr inbounds %struct.macroblock, ptr %324, i64 %326, i32 45
  %329 = load i32, ptr %328, align 8, !tbaa !59
  %330 = icmp ne i32 %327, %329
  %331 = zext i1 %330 to i8
  store i8 %331, ptr %304, align 8, !tbaa !60
  br i1 %305, label %332, label %342

332:                                              ; preds = %314
  %333 = load i32, ptr %306, align 4, !tbaa !78
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %332
  %336 = load i32, ptr %4, align 8, !tbaa !79
  %337 = icmp eq i32 %336, 0
  %338 = or i1 %334, %337
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = load i32, ptr %4, align 8, !tbaa !79
  %341 = icmp ne i32 %340, 0
  br label %342

342:                                              ; preds = %332, %335, %339, %314
  %343 = phi i1 [ false, %314 ], [ true, %335 ], [ %341, %339 ], [ true, %332 ]
  %344 = select i1 %343, i8 4, i8 3
  %345 = getelementptr inbounds i8, ptr %0, i64 %315
  store i8 %344, ptr %345, align 1, !tbaa !61
  %346 = load i32, ptr %307, align 8, !tbaa !65
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %574

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct.macroblock, ptr %324, i64 %326, i32 18
  %350 = load i32, ptr %349, align 8, !tbaa !65
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %574

352:                                              ; preds = %348
  %353 = load i64, ptr %308, align 8, !tbaa !68
  %354 = shl i32 %318, 16
  %355 = ashr exact i32 %354, 16
  %356 = icmp sgt i32 %355, 63
  br i1 %356, label %361, label %357

357:                                              ; preds = %352
  %358 = sext i32 %355 to i64
  %359 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %358
  %360 = load i64, ptr %359, align 8, !tbaa !68
  br label %361

361:                                              ; preds = %352, %357
  %362 = phi i64 [ %360, %357 ], [ 0, %352 ]
  %363 = and i64 %362, %353
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %572

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.macroblock, ptr %324, i64 %326, i32 33
  %367 = load i64, ptr %366, align 8, !tbaa !68
  %368 = icmp sgt i16 %323, 63
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = sext i16 %323 to i64
  %371 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %370
  %372 = load i64, ptr %371, align 8, !tbaa !68
  br label %373

373:                                              ; preds = %365, %369
  %374 = phi i64 [ %372, %369 ], [ 0, %365 ]
  %375 = and i64 %374, %367
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %572

377:                                              ; preds = %373
  %378 = load i8, ptr %304, align 8, !tbaa !60
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %572

380:                                              ; preds = %377
  %381 = load i32, ptr %309, align 8, !tbaa !66
  call void @get_mb_block_pos_mbaff(i32 noundef %381, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %382 = load i16, ptr %7, align 2, !tbaa !80
  %383 = sext i16 %382 to i32
  %384 = shl nsw i32 %383, 2
  %385 = ashr i32 %354, 18
  %386 = add nsw i32 %384, %385
  %387 = load i16, ptr %6, align 2, !tbaa !80
  %388 = sext i16 %387 to i32
  %389 = shl nsw i32 %388, 2
  %390 = or disjoint i32 %389, %310
  %391 = load i16, ptr %311, align 2, !tbaa !70
  %392 = ashr i16 %391, 2
  %393 = load i16, ptr %312, align 4, !tbaa !81
  %394 = ashr i16 %393, 2
  %395 = load ptr, ptr %313, align 8, !tbaa !72
  %396 = sext i32 %386 to i64
  %397 = getelementptr inbounds ptr, ptr %395, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !73
  %399 = sext i32 %390 to i64
  %400 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399
  %401 = sext i16 %392 to i64
  %402 = getelementptr inbounds ptr, ptr %395, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !73
  %404 = sext i16 %394 to i64
  %405 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404
  %406 = load ptr, ptr %400, align 8, !tbaa !73
  %407 = load ptr, ptr %405, align 8, !tbaa !73
  %408 = getelementptr inbounds [2 x ptr], ptr %400, i64 0, i64 1
  %409 = load ptr, ptr %408, align 8, !tbaa !73
  %410 = getelementptr inbounds [2 x ptr], ptr %405, i64 0, i64 1
  %411 = load ptr, ptr %410, align 8, !tbaa !73
  %412 = icmp eq ptr %406, %407
  %413 = icmp eq ptr %409, %411
  %414 = select i1 %412, i1 %413, i1 false
  br i1 %414, label %419, label %415

415:                                              ; preds = %380
  %416 = icmp eq ptr %406, %411
  %417 = icmp eq ptr %409, %407
  %418 = select i1 %416, i1 %417, i1 false
  br i1 %418, label %419, label %572

419:                                              ; preds = %415, %380
  store i8 0, ptr %345, align 1, !tbaa !61
  %420 = icmp eq ptr %406, %409
  %421 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1
  br i1 %420, label %502, label %422

422:                                              ; preds = %419
  %423 = load i16, ptr %421, align 2, !tbaa !74
  %424 = sext i16 %423 to i32
  %425 = getelementptr inbounds %struct.MotionVector, ptr %421, i64 0, i32 1
  %426 = load i16, ptr %425, align 2, !tbaa !75
  %427 = sext i16 %426 to i32
  br i1 %412, label %428, label %465

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1
  %430 = load i16, ptr %429, align 2, !tbaa !74
  %431 = sext i16 %430 to i32
  %432 = sub nsw i32 %424, %431
  %433 = call i32 @llvm.abs.i32(i32 %432, i1 true)
  %434 = icmp ult i32 %433, 4
  %435 = getelementptr inbounds %struct.MotionVector, ptr %429, i64 0, i32 1
  %436 = load i16, ptr %435, align 2, !tbaa !75
  %437 = sext i16 %436 to i32
  %438 = sub nsw i32 %427, %437
  %439 = call i32 @llvm.abs.i32(i32 %438, i1 true)
  %440 = icmp slt i32 %439, %3
  %441 = and i1 %434, %440
  br i1 %441, label %442, label %462

442:                                              ; preds = %428
  %443 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1
  %444 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1
  %445 = load i16, ptr %443, align 2, !tbaa !74
  %446 = sext i16 %445 to i32
  %447 = load i16, ptr %444, align 2, !tbaa !74
  %448 = sext i16 %447 to i32
  %449 = sub nsw i32 %446, %448
  %450 = call i32 @llvm.abs.i32(i32 %449, i1 true)
  %451 = icmp ugt i32 %450, 3
  %452 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1, i32 1
  %453 = load i16, ptr %452, align 2, !tbaa !75
  %454 = sext i16 %453 to i32
  %455 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1, i32 1
  %456 = load i16, ptr %455, align 2, !tbaa !75
  %457 = sext i16 %456 to i32
  %458 = sub nsw i32 %454, %457
  %459 = call i32 @llvm.abs.i32(i32 %458, i1 true)
  %460 = icmp sge i32 %459, %3
  %461 = or i1 %451, %460
  br label %462

462:                                              ; preds = %442, %428
  %463 = phi i1 [ true, %428 ], [ %461, %442 ]
  %464 = zext i1 %463 to i8
  br label %572

465:                                              ; preds = %422
  %466 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1
  %467 = load i16, ptr %466, align 2, !tbaa !74
  %468 = sext i16 %467 to i32
  %469 = sub nsw i32 %424, %468
  %470 = call i32 @llvm.abs.i32(i32 %469, i1 true)
  %471 = icmp ult i32 %470, 4
  %472 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1, i32 1
  %473 = load i16, ptr %472, align 2, !tbaa !75
  %474 = sext i16 %473 to i32
  %475 = sub nsw i32 %427, %474
  %476 = call i32 @llvm.abs.i32(i32 %475, i1 true)
  %477 = icmp slt i32 %476, %3
  %478 = and i1 %471, %477
  br i1 %478, label %479, label %499

479:                                              ; preds = %465
  %480 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1
  %481 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1
  %482 = load i16, ptr %481, align 2, !tbaa !74
  %483 = sext i16 %482 to i32
  %484 = load i16, ptr %480, align 2, !tbaa !74
  %485 = sext i16 %484 to i32
  %486 = sub nsw i32 %483, %485
  %487 = call i32 @llvm.abs.i32(i32 %486, i1 true)
  %488 = icmp ugt i32 %487, 3
  %489 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1, i32 1
  %490 = load i16, ptr %489, align 2, !tbaa !75
  %491 = sext i16 %490 to i32
  %492 = getelementptr inbounds %struct.MotionVector, ptr %480, i64 0, i32 1
  %493 = load i16, ptr %492, align 2, !tbaa !75
  %494 = sext i16 %493 to i32
  %495 = sub nsw i32 %491, %494
  %496 = call i32 @llvm.abs.i32(i32 %495, i1 true)
  %497 = icmp sge i32 %496, %3
  %498 = or i1 %488, %497
  br label %499

499:                                              ; preds = %479, %465
  %500 = phi i1 [ true, %465 ], [ %498, %479 ]
  %501 = zext i1 %500 to i8
  br label %572

502:                                              ; preds = %419
  %503 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1
  %504 = load i16, ptr %421, align 2, !tbaa !74
  %505 = sext i16 %504 to i32
  %506 = load i16, ptr %503, align 2, !tbaa !74
  %507 = sext i16 %506 to i32
  %508 = sub nsw i32 %505, %507
  %509 = call i32 @llvm.abs.i32(i32 %508, i1 true)
  %510 = icmp ult i32 %509, 4
  %511 = getelementptr inbounds %struct.MotionVector, ptr %421, i64 0, i32 1
  %512 = load i16, ptr %511, align 2, !tbaa !75
  %513 = sext i16 %512 to i32
  %514 = getelementptr inbounds %struct.MotionVector, ptr %503, i64 0, i32 1
  %515 = load i16, ptr %514, align 2, !tbaa !75
  %516 = sext i16 %515 to i32
  %517 = sub nsw i32 %513, %516
  %518 = call i32 @llvm.abs.i32(i32 %517, i1 true)
  %519 = icmp slt i32 %518, %3
  %520 = and i1 %510, %519
  br i1 %520, label %521, label %541

521:                                              ; preds = %502
  %522 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1
  %523 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1
  %524 = load i16, ptr %522, align 2, !tbaa !74
  %525 = sext i16 %524 to i32
  %526 = load i16, ptr %523, align 2, !tbaa !74
  %527 = sext i16 %526 to i32
  %528 = sub nsw i32 %525, %527
  %529 = call i32 @llvm.abs.i32(i32 %528, i1 true)
  %530 = icmp ult i32 %529, 4
  %531 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1, i32 1
  %532 = load i16, ptr %531, align 2, !tbaa !75
  %533 = sext i16 %532 to i32
  %534 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1, i32 1
  %535 = load i16, ptr %534, align 2, !tbaa !75
  %536 = sext i16 %535 to i32
  %537 = sub nsw i32 %533, %536
  %538 = call i32 @llvm.abs.i32(i32 %537, i1 true)
  %539 = icmp slt i32 %538, %3
  %540 = and i1 %530, %539
  br i1 %540, label %569, label %541

541:                                              ; preds = %521, %502
  %542 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1
  %543 = load i16, ptr %542, align 2, !tbaa !74
  %544 = sext i16 %543 to i32
  %545 = sub nsw i32 %505, %544
  %546 = call i32 @llvm.abs.i32(i32 %545, i1 true)
  %547 = icmp ult i32 %546, 4
  %548 = getelementptr inbounds %struct.pic_motion_params, ptr %403, i64 %404, i32 1, i64 1, i32 1
  %549 = load i16, ptr %548, align 2, !tbaa !75
  %550 = sext i16 %549 to i32
  %551 = sub nsw i32 %513, %550
  %552 = call i32 @llvm.abs.i32(i32 %551, i1 true)
  %553 = icmp slt i32 %552, %3
  %554 = and i1 %547, %553
  br i1 %554, label %555, label %569

555:                                              ; preds = %541
  %556 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1
  %557 = load i16, ptr %556, align 2, !tbaa !74
  %558 = sext i16 %557 to i32
  %559 = sub nsw i32 %558, %507
  %560 = call i32 @llvm.abs.i32(i32 %559, i1 true)
  %561 = icmp ugt i32 %560, 3
  %562 = getelementptr inbounds %struct.pic_motion_params, ptr %398, i64 %399, i32 1, i64 1, i32 1
  %563 = load i16, ptr %562, align 2, !tbaa !75
  %564 = sext i16 %563 to i32
  %565 = sub nsw i32 %564, %516
  %566 = call i32 @llvm.abs.i32(i32 %565, i1 true)
  %567 = icmp sge i32 %566, %3
  %568 = or i1 %561, %567
  br label %569

569:                                              ; preds = %541, %555, %521
  %570 = phi i1 [ false, %521 ], [ true, %541 ], [ %568, %555 ]
  %571 = zext i1 %570 to i8
  br label %572

572:                                              ; preds = %415, %377, %361, %373, %569, %499, %462
  %573 = phi i8 [ %464, %462 ], [ %501, %499 ], [ %571, %569 ], [ 2, %373 ], [ 2, %361 ], [ 1, %377 ], [ 1, %415 ]
  store i8 %573, ptr %345, align 1, !tbaa !61
  br label %574

574:                                              ; preds = %572, %342, %348
  %575 = add nuw nsw i64 %315, 1
  %576 = icmp eq i64 %575, 16
  br i1 %576, label %579, label %314, !llvm.loop !82

577:                                              ; preds = %289
  %578 = add i16 %91, 16
  store i16 %578, ptr %67, align 2, !tbaa !69
  store i16 %295, ptr %84, align 2, !tbaa !70
  br label %579

579:                                              ; preds = %574, %24, %577, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetStrengthHorMBAff(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.pix_pos, align 4
  %9 = icmp slt i32 %2, 16
  %10 = select i1 %9, i32 %2, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %11 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 43
  %14 = load i32, ptr %13, align 8, !tbaa !53
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
  %24 = icmp eq i32 %2, 0
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi i32 [ 0, %19 ], [ %44, %25 ]
  call void @getAffNeighbour(ptr noundef %1, i32 noundef %26, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8) #7
  %27 = load ptr, ptr %20, align 8, !tbaa !56
  %28 = load i32, ptr %21, align 4, !tbaa !57
  %29 = sext i32 %28 to i64
  %30 = load i32, ptr %22, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.macroblock, ptr %27, i64 %29, i32 45
  %32 = load i32, ptr %31, align 8, !tbaa !59
  %33 = icmp ne i32 %30, %32
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %23, align 8, !tbaa !60
  %35 = icmp eq i32 %32, 0
  %36 = select i1 %24, i1 %35, i1 false
  %37 = icmp eq i32 %30, 0
  %38 = select i1 %36, i1 %37, i1 false
  %39 = select i1 %38, i32 67372036, i32 50529027
  %40 = sext i32 %26 to i64
  %41 = getelementptr inbounds i8, ptr %0, i64 %40
  store i32 %39, ptr %41, align 4, !tbaa !76
  %42 = shl nsw i32 %26, 16
  %43 = add i32 %42, 262144
  %44 = ashr exact i32 %43, 16
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %25, label %306, !llvm.loop !83

46:                                               ; preds = %5
  call void @getAffNeighbour(ptr noundef %1, i32 noundef 0, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8) #7
  %47 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !57
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 45
  %53 = load i32, ptr %52, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.macroblock, ptr %48, i64 %51, i32 45
  %55 = load i32, ptr %54, align 8, !tbaa !59
  %56 = icmp ne i32 %53, %55
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 61
  store i8 %57, ptr %58, align 8, !tbaa !60
  %59 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %60 = load i32, ptr %59, align 8, !tbaa !65
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %76, label %62

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.macroblock, ptr %48, i64 %51, i32 18
  %64 = load i32, ptr %63, align 8, !tbaa !65
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = and i32 %10, 65532
  %68 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 3
  %69 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 2
  %70 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
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
  br label %306

83:                                               ; preds = %66, %297
  %84 = phi i32 [ 0, %66 ], [ %304, %297 ]
  %85 = phi i32 [ 0, %66 ], [ %303, %297 ]
  call void @getAffNeighbour(ptr noundef %1, i32 noundef %84, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8) #7
  %86 = ashr i32 %85, 18
  %87 = add nsw i32 %86, %67
  %88 = load i16, ptr %68, align 2, !tbaa !69
  %89 = load i16, ptr %69, align 4, !tbaa !67
  %90 = load i64, ptr %70, align 8, !tbaa !68
  %91 = shl i32 %87, 16
  %92 = ashr exact i32 %91, 16
  %93 = icmp sgt i32 %92, 63
  br i1 %93, label %98, label %94

94:                                               ; preds = %83
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !68
  br label %98

98:                                               ; preds = %83, %94
  %99 = phi i64 [ %97, %94 ], [ 0, %83 ]
  %100 = and i64 %99, %90
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %297

102:                                              ; preds = %98
  %103 = ashr i16 %89, 2
  %104 = and i16 %88, -4
  %105 = add i16 %103, %104
  %106 = load i64, ptr %71, align 8, !tbaa !68
  %107 = icmp sgt i16 %105, 63
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = sext i16 %105 to i64
  %110 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !68
  br label %112

112:                                              ; preds = %102, %108
  %113 = phi i64 [ %111, %108 ], [ 0, %102 ]
  %114 = and i64 %113, %106
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %297

116:                                              ; preds = %112
  %117 = load i8, ptr %58, align 8, !tbaa !60
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %297

119:                                              ; preds = %116
  %120 = load i32, ptr %72, align 8, !tbaa !66
  call void @get_mb_block_pos_mbaff(i32 noundef %120, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %121 = load i16, ptr %7, align 2, !tbaa !80
  %122 = sext i16 %121 to i32
  %123 = shl nsw i32 %122, 2
  %124 = ashr i32 %91, 18
  %125 = add nsw i32 %123, %124
  %126 = zext i32 %125 to i64
  %127 = load i16, ptr %6, align 2, !tbaa !80
  %128 = sext i16 %127 to i32
  %129 = shl nsw i32 %128, 2
  %130 = and i32 %86, 3
  %131 = or disjoint i32 %129, %130
  %132 = zext i32 %131 to i64
  %133 = load i16, ptr %73, align 2, !tbaa !70
  %134 = ashr i16 %133, 2
  %135 = load i16, ptr %74, align 4, !tbaa !81
  %136 = ashr i16 %135, 2
  %137 = load ptr, ptr %75, align 8, !tbaa !72
  %138 = shl i64 %126, 48
  %139 = ashr exact i64 %138, 48
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !73
  %142 = shl i64 %132, 48
  %143 = ashr exact i64 %142, 48
  %144 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143
  %145 = sext i16 %134 to i64
  %146 = getelementptr inbounds ptr, ptr %137, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !73
  %148 = sext i16 %136 to i64
  %149 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148
  %150 = load ptr, ptr %144, align 8, !tbaa !73
  %151 = load ptr, ptr %149, align 8, !tbaa !73
  %152 = getelementptr inbounds [2 x ptr], ptr %144, i64 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !73
  %154 = getelementptr inbounds [2 x ptr], ptr %149, i64 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !73
  %156 = icmp eq ptr %150, %151
  %157 = icmp eq ptr %153, %155
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %163, label %159

159:                                              ; preds = %119
  %160 = icmp eq ptr %150, %155
  %161 = icmp eq ptr %153, %151
  %162 = select i1 %160, i1 %161, i1 false
  br i1 %162, label %163, label %294

163:                                              ; preds = %159, %119
  %164 = icmp eq ptr %150, %153
  %165 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143, i32 1
  br i1 %164, label %224, label %166

166:                                              ; preds = %163
  %167 = load i16, ptr %165, align 2, !tbaa !74
  %168 = sext i16 %167 to i32
  %169 = getelementptr inbounds %struct.MotionVector, ptr %165, i64 0, i32 1
  %170 = load i16, ptr %169, align 2, !tbaa !75
  %171 = sext i16 %170 to i32
  br i1 %156, label %172, label %198

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1
  %174 = load i16, ptr %173, align 2, !tbaa !74
  %175 = sext i16 %174 to i32
  %176 = sub nsw i32 %168, %175
  %177 = call i32 @llvm.abs.i32(i32 %176, i1 true)
  %178 = icmp ult i32 %177, 4
  %179 = getelementptr inbounds %struct.MotionVector, ptr %173, i64 0, i32 1
  %180 = load i16, ptr %179, align 2, !tbaa !75
  %181 = sext i16 %180 to i32
  %182 = sub nsw i32 %171, %181
  %183 = call i32 @llvm.abs.i32(i32 %182, i1 true)
  %184 = icmp slt i32 %183, %3
  %185 = and i1 %178, %184
  br i1 %185, label %186, label %294

186:                                              ; preds = %172
  %187 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143, i32 1, i64 1
  %188 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1
  %189 = load i16, ptr %187, align 2, !tbaa !74
  %190 = sext i16 %189 to i32
  %191 = load i16, ptr %188, align 2, !tbaa !74
  %192 = sext i16 %191 to i32
  %193 = sub nsw i32 %190, %192
  %194 = call i32 @llvm.abs.i32(i32 %193, i1 true)
  %195 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1, i32 1
  %196 = load i16, ptr %195, align 2, !tbaa !75
  %197 = sext i16 %196 to i32
  br label %283

198:                                              ; preds = %166
  %199 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1
  %200 = load i16, ptr %199, align 2, !tbaa !74
  %201 = sext i16 %200 to i32
  %202 = sub nsw i32 %168, %201
  %203 = call i32 @llvm.abs.i32(i32 %202, i1 true)
  %204 = icmp ult i32 %203, 4
  %205 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1, i32 1
  %206 = load i16, ptr %205, align 2, !tbaa !75
  %207 = sext i16 %206 to i32
  %208 = sub nsw i32 %171, %207
  %209 = call i32 @llvm.abs.i32(i32 %208, i1 true)
  %210 = icmp slt i32 %209, %3
  %211 = and i1 %204, %210
  br i1 %211, label %212, label %294

212:                                              ; preds = %198
  %213 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1
  %214 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143, i32 1, i64 1
  %215 = load i16, ptr %214, align 2, !tbaa !74
  %216 = sext i16 %215 to i32
  %217 = load i16, ptr %213, align 2, !tbaa !74
  %218 = sext i16 %217 to i32
  %219 = sub nsw i32 %216, %218
  %220 = call i32 @llvm.abs.i32(i32 %219, i1 true)
  %221 = getelementptr inbounds %struct.MotionVector, ptr %213, i64 0, i32 1
  %222 = load i16, ptr %221, align 2, !tbaa !75
  %223 = sext i16 %222 to i32
  br label %283

224:                                              ; preds = %163
  %225 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1
  %226 = load i16, ptr %165, align 2, !tbaa !74
  %227 = sext i16 %226 to i32
  %228 = load i16, ptr %225, align 2, !tbaa !74
  %229 = sext i16 %228 to i32
  %230 = sub nsw i32 %227, %229
  %231 = call i32 @llvm.abs.i32(i32 %230, i1 true)
  %232 = icmp ult i32 %231, 4
  %233 = getelementptr inbounds %struct.MotionVector, ptr %165, i64 0, i32 1
  %234 = load i16, ptr %233, align 2, !tbaa !75
  %235 = sext i16 %234 to i32
  %236 = getelementptr inbounds %struct.MotionVector, ptr %225, i64 0, i32 1
  %237 = load i16, ptr %236, align 2, !tbaa !75
  %238 = sext i16 %237 to i32
  %239 = sub nsw i32 %235, %238
  %240 = call i32 @llvm.abs.i32(i32 %239, i1 true)
  %241 = icmp slt i32 %240, %3
  %242 = and i1 %232, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %224
  %244 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143, i32 1, i64 1
  %245 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1
  %246 = load i16, ptr %244, align 2, !tbaa !74
  %247 = sext i16 %246 to i32
  %248 = load i16, ptr %245, align 2, !tbaa !74
  %249 = sext i16 %248 to i32
  %250 = sub nsw i32 %247, %249
  %251 = call i32 @llvm.abs.i32(i32 %250, i1 true)
  %252 = icmp ult i32 %251, 4
  %253 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143, i32 1, i64 1, i32 1
  %254 = load i16, ptr %253, align 2, !tbaa !75
  %255 = sext i16 %254 to i32
  %256 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1, i32 1
  %257 = load i16, ptr %256, align 2, !tbaa !75
  %258 = sext i16 %257 to i32
  %259 = sub nsw i32 %255, %258
  %260 = call i32 @llvm.abs.i32(i32 %259, i1 true)
  %261 = icmp slt i32 %260, %3
  %262 = and i1 %252, %261
  br i1 %262, label %294, label %263

263:                                              ; preds = %243, %224
  %264 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1
  %265 = load i16, ptr %264, align 2, !tbaa !74
  %266 = sext i16 %265 to i32
  %267 = sub nsw i32 %227, %266
  %268 = call i32 @llvm.abs.i32(i32 %267, i1 true)
  %269 = icmp ult i32 %268, 4
  %270 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %148, i32 1, i64 1, i32 1
  %271 = load i16, ptr %270, align 2, !tbaa !75
  %272 = sext i16 %271 to i32
  %273 = sub nsw i32 %235, %272
  %274 = call i32 @llvm.abs.i32(i32 %273, i1 true)
  %275 = icmp slt i32 %274, %3
  %276 = and i1 %269, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %263
  %278 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143, i32 1, i64 1
  %279 = load i16, ptr %278, align 2, !tbaa !74
  %280 = sext i16 %279 to i32
  %281 = sub nsw i32 %280, %229
  %282 = call i32 @llvm.abs.i32(i32 %281, i1 true)
  br label %283

283:                                              ; preds = %186, %212, %277
  %284 = phi i32 [ %238, %277 ], [ %223, %212 ], [ %197, %186 ]
  %285 = phi i32 [ %282, %277 ], [ %220, %212 ], [ %194, %186 ]
  %286 = icmp ugt i32 %285, 3
  %287 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %143, i32 1, i64 1, i32 1
  %288 = load i16, ptr %287, align 2, !tbaa !75
  %289 = sext i16 %288 to i32
  %290 = sub nsw i32 %289, %284
  %291 = call i32 @llvm.abs.i32(i32 %290, i1 true)
  %292 = icmp sge i32 %291, %3
  %293 = or i1 %286, %292
  br label %294

294:                                              ; preds = %283, %159, %243, %263, %198, %172
  %295 = phi i1 [ true, %172 ], [ true, %198 ], [ false, %243 ], [ true, %263 ], [ true, %159 ], [ %293, %283 ]
  %296 = zext i1 %295 to i32
  br label %297

297:                                              ; preds = %116, %98, %112, %294
  %298 = phi i32 [ %296, %294 ], [ 2, %112 ], [ 2, %98 ], [ 1, %116 ]
  %299 = mul nuw nsw i32 %298, 16843009
  %300 = sext i32 %84 to i64
  %301 = getelementptr inbounds i8, ptr %0, i64 %300
  store i32 %299, ptr %301, align 4, !tbaa !76
  %302 = shl nsw i32 %84, 16
  %303 = add i32 %302, 262144
  %304 = ashr exact i32 %303, 16
  %305 = icmp slt i32 %304, 16
  br i1 %305, label %83, label %306, !llvm.loop !84

306:                                              ; preds = %297, %25, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopLumaVerMBAff(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !76
  br label %16

16:                                               ; preds = %6, %10
  %17 = phi i32 [ %15, %10 ], [ 16, %6 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %18 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 66, i64 1
  %21 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 66
  %22 = select i1 %9, ptr %21, ptr %20
  %23 = load i32, ptr %22, align 4, !tbaa !76
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds %struct.video_par, ptr %19, i64 0, i32 70, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !76
  %27 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %28 = load i16, ptr %27, align 2, !tbaa !86
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %31 = load i16, ptr %30, align 4, !tbaa !87
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %34 = load i16, ptr %33, align 8, !tbaa !88
  %35 = icmp eq i16 %34, 0
  %36 = icmp sgt i32 %17, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %280

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
  %51 = zext i32 %17 to i64
  %52 = select i1 %9, ptr %50, ptr %49
  br label %53

53:                                               ; preds = %38, %277
  %54 = phi i64 [ 0, %38 ], [ %278, %277 ]
  %55 = trunc i64 %54 to i32
  call void @getAffNeighbour(ptr noundef %3, i32 noundef %39, i32 noundef %55, ptr noundef nonnull %40, ptr noundef nonnull %7) #7
  %56 = load i32, ptr %7, align 4, !tbaa !89
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %277, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %2, i64 %54
  %60 = load i8, ptr %59, align 1, !tbaa !61
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %277, label %62

62:                                               ; preds = %58
  %63 = trunc i64 %54 to i32
  call void @getAffNeighbour(ptr noundef %3, i32 noundef %4, i32 noundef %63, ptr noundef nonnull %40, ptr noundef nonnull %8) #7
  %64 = load ptr, ptr %41, align 8, !tbaa !56
  %65 = load i32, ptr %42, align 4, !tbaa !57
  %66 = sext i32 %65 to i64
  %67 = load i16, ptr %43, align 2, !tbaa !70
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %1, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !73
  %71 = load i16, ptr %44, align 4, !tbaa !81
  %72 = sext i16 %71 to i64
  %73 = getelementptr inbounds i16, ptr %70, i64 %72
  %74 = load i16, ptr %45, align 2, !tbaa !70
  %75 = sext i16 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %1, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !73
  %78 = load i16, ptr %46, align 4, !tbaa !81
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i16, ptr %77, i64 %79
  %81 = getelementptr inbounds %struct.macroblock, ptr %64, i64 %66, i32 14
  %82 = getelementptr inbounds %struct.macroblock, ptr %64, i64 %66, i32 15, i64 %48
  %83 = select i1 %9, ptr %81, ptr %82
  %84 = load i32, ptr %83, align 4, !tbaa !76
  %85 = load i32, ptr %52, align 4, !tbaa !76
  %86 = add nsw i32 %85, %84
  %87 = add nsw i32 %86, 1
  %88 = ashr i32 %87, 1
  %89 = add nsw i32 %88, %29
  %90 = call i32 @llvm.smax.i32(i32 %89, i32 0)
  %91 = call i32 @llvm.smin.i32(i32 %90, i32 51)
  %92 = add nsw i32 %88, %32
  %93 = call i32 @llvm.smax.i32(i32 %92, i32 0)
  %94 = call i32 @llvm.smin.i32(i32 %93, i32 51)
  %95 = zext nneg i32 %91 to i64
  %96 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !61
  %98 = zext i8 %97 to i32
  %99 = mul nsw i32 %23, %98
  %100 = zext nneg i32 %94 to i64
  %101 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !61
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 %23, %103
  %105 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %95
  %106 = load i16, ptr %80, align 2, !tbaa !80
  %107 = load i16, ptr %73, align 2, !tbaa !80
  %108 = zext i16 %107 to i32
  %109 = zext i16 %106 to i32
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @llvm.abs.i32(i32 %110, i1 true)
  %112 = icmp slt i32 %111, %99
  br i1 %112, label %113, label %277

113:                                              ; preds = %62
  %114 = getelementptr inbounds i16, ptr %80, i64 -1
  %115 = load i16, ptr %114, align 2, !tbaa !80
  %116 = getelementptr inbounds i16, ptr %73, i64 1
  %117 = load i16, ptr %116, align 2, !tbaa !80
  %118 = zext i16 %117 to i32
  %119 = sub nsw i32 %108, %118
  %120 = call i32 @llvm.abs.i32(i32 %119, i1 true)
  %121 = icmp slt i32 %120, %104
  br i1 %121, label %122, label %277

122:                                              ; preds = %113
  %123 = zext i16 %115 to i32
  %124 = sub nsw i32 %109, %123
  %125 = call i32 @llvm.abs.i32(i32 %124, i1 true)
  %126 = icmp slt i32 %125, %104
  br i1 %126, label %127, label %277

127:                                              ; preds = %122
  %128 = getelementptr inbounds i16, ptr %80, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !80
  %130 = getelementptr inbounds i16, ptr %73, i64 2
  %131 = load i16, ptr %130, align 2, !tbaa !80
  %132 = icmp eq i8 %60, 4
  %133 = add nuw nsw i32 %108, %109
  br i1 %132, label %134, label %213

134:                                              ; preds = %127
  %135 = ashr i32 %99, 2
  %136 = add nsw i32 %135, 2
  %137 = icmp slt i32 %111, %136
  %138 = zext i16 %131 to i32
  %139 = sub nsw i32 %108, %138
  %140 = call i32 @llvm.abs.i32(i32 %139, i1 true)
  %141 = icmp slt i32 %140, %104
  %142 = and i1 %137, %141
  %143 = zext i16 %129 to i32
  %144 = sub nsw i32 %109, %143
  %145 = call i32 @llvm.abs.i32(i32 %144, i1 true)
  %146 = icmp slt i32 %145, %104
  %147 = and i1 %137, %146
  br i1 %147, label %148, label %172

148:                                              ; preds = %134
  %149 = getelementptr inbounds i16, ptr %80, i64 -3
  %150 = load i16, ptr %149, align 2, !tbaa !80
  %151 = zext i16 %150 to i32
  %152 = add nuw nsw i32 %151, %143
  %153 = shl nuw nsw i32 %152, 1
  %154 = add nuw nsw i32 %133, 4
  %155 = add nuw nsw i32 %154, %123
  %156 = add nuw nsw i32 %155, %143
  %157 = add nuw nsw i32 %156, %153
  %158 = lshr i32 %157, 3
  %159 = trunc i32 %158 to i16
  store i16 %159, ptr %128, align 2, !tbaa !80
  %160 = add nuw nsw i32 %108, %109
  %161 = add nuw nsw i32 %160, 2
  %162 = add nuw nsw i32 %161, %123
  %163 = add nuw nsw i32 %162, %143
  %164 = lshr i32 %163, 2
  %165 = trunc i32 %164 to i16
  store i16 %165, ptr %114, align 2, !tbaa !80
  %166 = add nuw nsw i32 %133, %123
  %167 = shl nuw nsw i32 %166, 1
  %168 = add nuw nsw i32 %118, 4
  %169 = add nuw nsw i32 %168, %167
  %170 = add nuw nsw i32 %169, %143
  %171 = lshr i32 %170, 3
  br label %178

172:                                              ; preds = %134
  %173 = shl nuw nsw i32 %123, 1
  %174 = add nuw nsw i32 %109, 2
  %175 = add nuw nsw i32 %174, %173
  %176 = add nuw nsw i32 %175, %118
  %177 = lshr i32 %176, 2
  br label %178

178:                                              ; preds = %172, %148
  %179 = phi i32 [ %177, %172 ], [ %171, %148 ]
  %180 = trunc i32 %179 to i16
  store i16 %180, ptr %80, align 2, !tbaa !80
  br i1 %142, label %181, label %206

181:                                              ; preds = %178
  %182 = getelementptr inbounds i16, ptr %73, i64 3
  %183 = load i16, ptr %182, align 2, !tbaa !80
  %184 = add nuw nsw i32 %133, %118
  %185 = shl nuw nsw i32 %184, 1
  %186 = add nuw nsw i32 %123, 4
  %187 = add nuw nsw i32 %186, %185
  %188 = add nuw nsw i32 %187, %138
  %189 = lshr i32 %188, 3
  %190 = trunc i32 %189 to i16
  store i16 %190, ptr %73, align 2, !tbaa !80
  %191 = add nuw nsw i32 %108, %109
  %192 = add nuw nsw i32 %191, 2
  %193 = add nuw nsw i32 %192, %118
  %194 = add nuw nsw i32 %193, %138
  %195 = lshr i32 %194, 2
  %196 = trunc i32 %195 to i16
  store i16 %196, ptr %116, align 2, !tbaa !80
  %197 = zext i16 %183 to i32
  %198 = add nuw nsw i32 %197, %138
  %199 = shl nuw nsw i32 %198, 1
  %200 = add nuw nsw i32 %133, 4
  %201 = add nuw nsw i32 %200, %118
  %202 = add nuw nsw i32 %201, %138
  %203 = add nuw nsw i32 %202, %199
  %204 = lshr i32 %203, 3
  %205 = trunc i32 %204 to i16
  store i16 %205, ptr %130, align 2, !tbaa !80
  br label %277

206:                                              ; preds = %178
  %207 = shl nuw nsw i32 %118, 1
  %208 = add nuw nsw i32 %108, 2
  %209 = add nuw nsw i32 %208, %123
  %210 = add nuw nsw i32 %209, %207
  %211 = lshr i32 %210, 2
  %212 = trunc i32 %211 to i16
  store i16 %212, ptr %73, align 2, !tbaa !80
  br label %277

213:                                              ; preds = %127
  %214 = add nuw nsw i32 %133, 1
  %215 = lshr i32 %214, 1
  %216 = zext i16 %131 to i32
  %217 = sub nsw i32 %108, %216
  %218 = call i32 @llvm.abs.i32(i32 %217, i1 true)
  %219 = icmp slt i32 %218, %104
  %220 = zext i1 %219 to i32
  %221 = zext i16 %129 to i32
  %222 = sub nsw i32 %109, %221
  %223 = call i32 @llvm.abs.i32(i32 %222, i1 true)
  %224 = icmp slt i32 %223, %104
  %225 = zext i1 %224 to i32
  %226 = zext i8 %60 to i64
  %227 = getelementptr inbounds i8, ptr %105, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !61
  %229 = zext i8 %228 to i32
  %230 = mul nsw i32 %23, %229
  %231 = add nuw nsw i32 %220, %225
  %232 = add i32 %231, %230
  %233 = sub nsw i32 0, %232
  %234 = shl nsw i32 %110, 2
  %235 = add nsw i32 %234, 4
  %236 = add nsw i32 %235, %123
  %237 = sub nsw i32 %236, %118
  %238 = ashr i32 %237, 3
  %239 = call i32 @llvm.smax.i32(i32 %238, i32 %233)
  %240 = call i32 @llvm.smin.i32(i32 %239, i32 %232)
  %241 = icmp ne i32 %230, 0
  %242 = and i1 %224, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %213
  %244 = sub nsw i32 0, %230
  %245 = shl nuw nsw i32 %123, 1
  %246 = sub nsw i32 %215, %245
  %247 = add nsw i32 %246, %221
  %248 = ashr i32 %247, 1
  %249 = call i32 @llvm.smax.i32(i32 %248, i32 %244)
  %250 = call i32 @llvm.smin.i32(i32 %249, i32 %230)
  %251 = trunc i32 %250 to i16
  %252 = add i16 %115, %251
  store i16 %252, ptr %114, align 2, !tbaa !80
  br label %253

253:                                              ; preds = %243, %213
  %254 = icmp eq i32 %240, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %253
  %256 = add nsw i32 %240, %109
  %257 = call i32 @llvm.smax.i32(i32 %256, i32 0)
  %258 = call i32 @llvm.smin.i32(i32 %257, i32 %26)
  %259 = trunc i32 %258 to i16
  store i16 %259, ptr %80, align 2, !tbaa !80
  %260 = sub nsw i32 %108, %240
  %261 = call i32 @llvm.smax.i32(i32 %260, i32 0)
  %262 = call i32 @llvm.smin.i32(i32 %261, i32 %26)
  %263 = trunc i32 %262 to i16
  store i16 %263, ptr %73, align 2, !tbaa !80
  br label %264

264:                                              ; preds = %255, %253
  %265 = and i1 %219, %241
  br i1 %265, label %266, label %277

266:                                              ; preds = %264
  %267 = sub nsw i32 0, %230
  %268 = shl nuw nsw i32 %118, 1
  %269 = sub nsw i32 %215, %268
  %270 = add nsw i32 %269, %216
  %271 = ashr i32 %270, 1
  %272 = call i32 @llvm.smax.i32(i32 %271, i32 %267)
  %273 = call i32 @llvm.smin.i32(i32 %272, i32 %230)
  %274 = load i16, ptr %116, align 2, !tbaa !80
  %275 = trunc i32 %273 to i16
  %276 = add i16 %274, %275
  store i16 %276, ptr %116, align 2, !tbaa !80
  br label %277

277:                                              ; preds = %264, %266, %181, %206, %53, %62, %122, %113, %58
  %278 = add nuw nsw i64 %54, 1
  %279 = icmp eq i64 %278, %51
  br i1 %279, label %280, label %53, !llvm.loop !90

280:                                              ; preds = %277, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopLumaHorMBAff(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 67
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %14 = load i32, ptr %13, align 4, !tbaa !85
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [4 x i32]], ptr @pelnum_cr, i64 0, i64 1, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !76
  br label %18

18:                                               ; preds = %6, %12
  %19 = phi i32 [ %17, %12 ], [ 16, %6 ]
  %20 = icmp slt i32 %4, 16
  %21 = select i1 %20, i32 %4, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %22 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 66, i64 1
  %25 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 66
  %26 = select i1 %11, ptr %25, ptr %24
  %27 = load i32, ptr %26, align 4, !tbaa !76
  %28 = zext i32 %0 to i64
  %29 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 70, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !76
  %31 = add nsw i32 %21, -1
  %32 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 81
  call void @getAffNeighbour(ptr noundef %3, i32 noundef 0, i32 noundef %31, ptr noundef nonnull %32, ptr noundef nonnull %7) #7
  %33 = load i32, ptr %7, align 4, !tbaa !89
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %37 = load i16, ptr %36, align 8, !tbaa !88
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %323

39:                                               ; preds = %35, %18
  %40 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %41 = load i16, ptr %40, align 2, !tbaa !86
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %44 = load i16, ptr %43, align 4, !tbaa !87
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 35
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !57
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %50, i32 45
  %52 = load i32, ptr %51, align 8, !tbaa !59
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 45
  %56 = load i32, ptr %55, align 8, !tbaa !59
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = shl nsw i32 %10, %58
  br label %60

60:                                               ; preds = %54, %39
  %61 = phi i32 [ %10, %39 ], [ %59, %54 ]
  %62 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 45
  %63 = load i32, ptr %62, align 8, !tbaa !59
  %64 = icmp ne i32 %63, 0
  %65 = and i1 %53, %64
  %66 = zext i1 %65 to i32
  %67 = shl nsw i32 %10, %66
  %68 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %50, i32 14
  %69 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 14
  %70 = add i32 %0, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %50, i32 15, i64 %71
  %73 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 15, i64 %71
  %74 = select i1 %11, ptr %69, ptr %73
  %75 = select i1 %11, ptr %68, ptr %72
  %76 = load i32, ptr %75, align 4, !tbaa !76
  %77 = load i32, ptr %74, align 4, !tbaa !76
  %78 = add nsw i32 %77, %76
  %79 = add nsw i32 %78, 1
  %80 = ashr i32 %79, 1
  %81 = add nsw i32 %80, %42
  %82 = call i32 @llvm.smax.i32(i32 %81, i32 0)
  %83 = call i32 @llvm.smin.i32(i32 %82, i32 51)
  %84 = add nsw i32 %80, %45
  %85 = call i32 @llvm.smax.i32(i32 %84, i32 0)
  %86 = call i32 @llvm.smin.i32(i32 %85, i32 51)
  %87 = zext nneg i32 %83 to i64
  %88 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !61
  %90 = zext i8 %89 to i32
  %91 = mul nsw i32 %27, %90
  %92 = zext nneg i32 %86 to i64
  %93 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !61
  %95 = zext i8 %94 to i32
  %96 = mul nsw i32 %27, %95
  %97 = or i32 %96, %91
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %323, label %99

99:                                               ; preds = %60
  %100 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %87
  call void @getAffNeighbour(ptr noundef %3, i32 noundef 0, i32 noundef %21, ptr noundef nonnull %32, ptr noundef nonnull %8) #7
  %101 = icmp sgt i32 %19, 0
  br i1 %101, label %102, label %323

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %104 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %105 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %106 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %107 = sub nsw i32 0, %67
  %108 = sext i32 %107 to i64
  %109 = sext i32 %61 to i64
  %110 = shl nsw i32 %107, 1
  %111 = sext i32 %110 to i64
  %112 = shl nsw i32 %61, 1
  %113 = sext i32 %112 to i64
  %114 = sext i32 %67 to i64
  %115 = sub nsw i64 0, %114
  %116 = ashr i32 %91, 2
  %117 = add nsw i32 %116, 2
  %118 = mul i32 %67, -3
  %119 = sext i32 %118 to i64
  %120 = mul nsw i32 %61, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %123 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %124 = zext nneg i32 %19 to i64
  br label %125

125:                                              ; preds = %102, %316
  %126 = phi i64 [ 0, %102 ], [ %321, %316 ]
  %127 = getelementptr inbounds i8, ptr %2, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !61
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %316, label %130

130:                                              ; preds = %125
  %131 = load i16, ptr %103, align 2, !tbaa !70
  %132 = sext i16 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %1, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !73
  %135 = load i16, ptr %104, align 4, !tbaa !81
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds i16, ptr %134, i64 %136
  %138 = load i16, ptr %105, align 2, !tbaa !70
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %1, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !73
  %142 = load i16, ptr %106, align 4, !tbaa !81
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds i16, ptr %141, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !80
  %146 = load i16, ptr %137, align 2, !tbaa !80
  %147 = zext i16 %146 to i32
  %148 = zext i16 %145 to i32
  %149 = sub nsw i32 %147, %148
  %150 = call i32 @llvm.abs.i32(i32 %149, i1 true)
  %151 = icmp slt i32 %150, %91
  br i1 %151, label %152, label %316

152:                                              ; preds = %130
  %153 = getelementptr inbounds i16, ptr %144, i64 %108
  %154 = getelementptr inbounds i16, ptr %137, i64 %109
  %155 = load i16, ptr %154, align 2, !tbaa !80
  %156 = zext i16 %155 to i32
  %157 = sub nsw i32 %147, %156
  %158 = call i32 @llvm.abs.i32(i32 %157, i1 true)
  %159 = icmp slt i32 %158, %96
  br i1 %159, label %160, label %316

160:                                              ; preds = %152
  %161 = load i16, ptr %153, align 2, !tbaa !80
  %162 = zext i16 %161 to i32
  %163 = sub nsw i32 %148, %162
  %164 = call i32 @llvm.abs.i32(i32 %163, i1 true)
  %165 = icmp slt i32 %164, %96
  br i1 %165, label %166, label %316

166:                                              ; preds = %160
  %167 = getelementptr inbounds i16, ptr %144, i64 %111
  %168 = load i16, ptr %167, align 2, !tbaa !80
  %169 = getelementptr inbounds i16, ptr %137, i64 %113
  %170 = load i16, ptr %169, align 2, !tbaa !80
  %171 = icmp eq i8 %128, 4
  %172 = add nuw nsw i32 %147, %148
  br i1 %171, label %173, label %250

173:                                              ; preds = %166
  %174 = icmp slt i32 %150, %117
  %175 = zext i16 %170 to i32
  %176 = sub nsw i32 %147, %175
  %177 = call i32 @llvm.abs.i32(i32 %176, i1 true)
  %178 = icmp slt i32 %177, %96
  %179 = and i1 %174, %178
  %180 = zext i16 %168 to i32
  %181 = sub nsw i32 %148, %180
  %182 = call i32 @llvm.abs.i32(i32 %181, i1 true)
  %183 = icmp slt i32 %182, %96
  %184 = and i1 %174, %183
  br i1 %184, label %185, label %209

185:                                              ; preds = %173
  %186 = getelementptr inbounds i16, ptr %144, i64 %119
  %187 = load i16, ptr %186, align 2, !tbaa !80
  %188 = zext i16 %187 to i32
  %189 = add nuw nsw i32 %188, %180
  %190 = shl nuw nsw i32 %189, 1
  %191 = add nuw nsw i32 %172, 4
  %192 = add nuw nsw i32 %191, %162
  %193 = add nuw nsw i32 %192, %180
  %194 = add nuw nsw i32 %193, %190
  %195 = lshr i32 %194, 3
  %196 = trunc i32 %195 to i16
  store i16 %196, ptr %167, align 2, !tbaa !80
  %197 = add nuw nsw i32 %147, %148
  %198 = add nuw nsw i32 %197, 2
  %199 = add nuw nsw i32 %198, %162
  %200 = add nuw nsw i32 %199, %180
  %201 = lshr i32 %200, 2
  %202 = trunc i32 %201 to i16
  store i16 %202, ptr %153, align 2, !tbaa !80
  %203 = add nuw nsw i32 %172, %162
  %204 = shl nuw nsw i32 %203, 1
  %205 = add nuw nsw i32 %156, 4
  %206 = add nuw nsw i32 %205, %204
  %207 = add nuw nsw i32 %206, %180
  %208 = lshr i32 %207, 3
  br label %215

209:                                              ; preds = %173
  %210 = shl nuw nsw i32 %162, 1
  %211 = add nuw nsw i32 %148, 2
  %212 = add nuw nsw i32 %211, %156
  %213 = add nuw nsw i32 %212, %210
  %214 = lshr i32 %213, 2
  br label %215

215:                                              ; preds = %209, %185
  %216 = phi i32 [ %214, %209 ], [ %208, %185 ]
  %217 = trunc i32 %216 to i16
  store i16 %217, ptr %144, align 2, !tbaa !80
  br i1 %179, label %218, label %243

218:                                              ; preds = %215
  %219 = getelementptr inbounds i16, ptr %137, i64 %121
  %220 = load i16, ptr %219, align 2, !tbaa !80
  %221 = add nuw nsw i32 %172, %156
  %222 = shl nuw nsw i32 %221, 1
  %223 = add nuw nsw i32 %222, 4
  %224 = add nuw nsw i32 %223, %162
  %225 = add nuw nsw i32 %224, %175
  %226 = lshr i32 %225, 3
  %227 = trunc i32 %226 to i16
  store i16 %227, ptr %137, align 2, !tbaa !80
  %228 = add nuw nsw i32 %147, %148
  %229 = add nuw nsw i32 %228, 2
  %230 = add nuw nsw i32 %229, %156
  %231 = add nuw nsw i32 %230, %175
  %232 = lshr i32 %231, 2
  %233 = trunc i32 %232 to i16
  store i16 %233, ptr %154, align 2, !tbaa !80
  %234 = zext i16 %220 to i32
  %235 = add nuw nsw i32 %234, %175
  %236 = shl nuw nsw i32 %235, 1
  %237 = add nuw nsw i32 %172, 4
  %238 = add nuw nsw i32 %237, %156
  %239 = add nuw nsw i32 %238, %175
  %240 = add nuw nsw i32 %239, %236
  %241 = lshr i32 %240, 3
  %242 = trunc i32 %241 to i16
  store i16 %242, ptr %169, align 2, !tbaa !80
  br label %316

243:                                              ; preds = %215
  %244 = shl nuw nsw i32 %156, 1
  %245 = add nuw nsw i32 %147, 2
  %246 = add nuw nsw i32 %245, %244
  %247 = add nuw nsw i32 %246, %162
  %248 = lshr i32 %247, 2
  %249 = trunc i32 %248 to i16
  store i16 %249, ptr %137, align 2, !tbaa !80
  br label %316

250:                                              ; preds = %166
  %251 = add nuw nsw i32 %172, 1
  %252 = lshr i32 %251, 1
  %253 = zext i16 %170 to i32
  %254 = sub nsw i32 %147, %253
  %255 = call i32 @llvm.abs.i32(i32 %254, i1 true)
  %256 = icmp slt i32 %255, %96
  %257 = zext i1 %256 to i32
  %258 = zext i16 %168 to i32
  %259 = sub nsw i32 %148, %258
  %260 = call i32 @llvm.abs.i32(i32 %259, i1 true)
  %261 = icmp slt i32 %260, %96
  %262 = zext i1 %261 to i32
  %263 = zext i8 %128 to i64
  %264 = getelementptr inbounds i8, ptr %100, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !61
  %266 = zext i8 %265 to i32
  %267 = mul nsw i32 %27, %266
  %268 = add nuw nsw i32 %257, %262
  %269 = add i32 %268, %267
  %270 = sub nsw i32 0, %269
  %271 = shl nsw i32 %149, 2
  %272 = add nsw i32 %271, 4
  %273 = sub nsw i32 %272, %156
  %274 = add nsw i32 %273, %162
  %275 = ashr i32 %274, 3
  %276 = call i32 @llvm.smax.i32(i32 %275, i32 %270)
  %277 = call i32 @llvm.smin.i32(i32 %276, i32 %269)
  %278 = icmp ne i32 %267, 0
  %279 = and i1 %261, %278
  br i1 %279, label %280, label %292

280:                                              ; preds = %250
  %281 = sub nsw i32 0, %267
  %282 = shl nuw nsw i32 %162, 1
  %283 = sub nsw i32 %252, %282
  %284 = add nsw i32 %283, %258
  %285 = ashr i32 %284, 1
  %286 = call i32 @llvm.smax.i32(i32 %285, i32 %281)
  %287 = call i32 @llvm.smin.i32(i32 %286, i32 %267)
  %288 = getelementptr inbounds i16, ptr %144, i64 %115
  %289 = load i16, ptr %288, align 2, !tbaa !80
  %290 = trunc i32 %287 to i16
  %291 = add i16 %289, %290
  store i16 %291, ptr %288, align 2, !tbaa !80
  br label %292

292:                                              ; preds = %280, %250
  %293 = icmp eq i32 %277, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %292
  %295 = add nsw i32 %277, %148
  %296 = call i32 @llvm.smax.i32(i32 %295, i32 0)
  %297 = call i32 @llvm.smin.i32(i32 %296, i32 %30)
  %298 = trunc i32 %297 to i16
  store i16 %298, ptr %144, align 2, !tbaa !80
  %299 = sub nsw i32 %147, %277
  %300 = call i32 @llvm.smax.i32(i32 %299, i32 0)
  %301 = call i32 @llvm.smin.i32(i32 %300, i32 %30)
  %302 = trunc i32 %301 to i16
  store i16 %302, ptr %137, align 2, !tbaa !80
  br label %303

303:                                              ; preds = %294, %292
  %304 = and i1 %256, %278
  br i1 %304, label %305, label %316

305:                                              ; preds = %303
  %306 = sub nsw i32 0, %267
  %307 = shl nuw nsw i32 %156, 1
  %308 = sub nsw i32 %252, %307
  %309 = add nsw i32 %308, %253
  %310 = ashr i32 %309, 1
  %311 = call i32 @llvm.smax.i32(i32 %310, i32 %306)
  %312 = call i32 @llvm.smin.i32(i32 %311, i32 %267)
  %313 = load i16, ptr %154, align 2, !tbaa !80
  %314 = trunc i32 %312 to i16
  %315 = add i16 %313, %314
  store i16 %315, ptr %154, align 2, !tbaa !80
  br label %316

316:                                              ; preds = %130, %243, %218, %305, %303, %160, %152, %125
  %317 = load i16, ptr %122, align 4, !tbaa !81
  %318 = add i16 %317, 1
  store i16 %318, ptr %122, align 4, !tbaa !81
  %319 = load i16, ptr %123, align 4, !tbaa !81
  %320 = add i16 %319, 1
  store i16 %320, ptr %123, align 4, !tbaa !81
  %321 = add nuw nsw i64 %126, 1
  %322 = icmp eq i64 %321, %124
  br i1 %322, label %323, label %125, !llvm.loop !92

323:                                              ; preds = %316, %99, %60, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopChromaVerMBAff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %16 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 66, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !76
  %18 = add nsw i32 %4, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !76
  %22 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %23 = load i16, ptr %22, align 2, !tbaa !86
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %26 = load i16, ptr %25, align 4, !tbaa !87
  %27 = sext i16 %26 to i32
  %28 = icmp sgt i32 %15, 0
  br i1 %28, label %29, label %178

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

43:                                               ; preds = %29, %175
  %44 = phi i32 [ 0, %29 ], [ %176, %175 ]
  call void @getAffNeighbour(ptr noundef %2, i32 noundef %3, i32 noundef %44, ptr noundef nonnull %30, ptr noundef nonnull %8) #7
  call void @getAffNeighbour(ptr noundef %2, i32 noundef %31, i32 noundef %44, ptr noundef nonnull %30, ptr noundef nonnull %7) #7
  %45 = load ptr, ptr %32, align 8, !tbaa !56
  %46 = load i32, ptr %33, align 4, !tbaa !57
  %47 = sext i32 %46 to i64
  br i1 %34, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32, ptr %35, align 8, !tbaa !59
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.macroblock, ptr %45, i64 %47, i32 45
  %53 = load i32, ptr %52, align 8, !tbaa !59
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
  %64 = load i32, ptr %7, align 4, !tbaa !89
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i16, ptr %36, align 8, !tbaa !88
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %175

69:                                               ; preds = %66, %62
  %70 = sext i32 %63 to i64
  %71 = getelementptr inbounds i8, ptr %1, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !61
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %175, label %74

74:                                               ; preds = %69
  %75 = load i16, ptr %37, align 2, !tbaa !70
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  %79 = load i16, ptr %38, align 4, !tbaa !81
  %80 = sext i16 %79 to i64
  %81 = getelementptr inbounds i16, ptr %78, i64 %80
  %82 = load i16, ptr %39, align 2, !tbaa !70
  %83 = sext i16 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !73
  %86 = load i16, ptr %40, align 4, !tbaa !81
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds i16, ptr %85, i64 %87
  %89 = getelementptr inbounds %struct.macroblock, ptr %45, i64 %47, i32 15, i64 %41
  %90 = load i32, ptr %89, align 4, !tbaa !76
  %91 = load i32, ptr %42, align 4, !tbaa !76
  %92 = add i32 %90, 1
  %93 = add i32 %92, %91
  %94 = ashr i32 %93, 1
  %95 = add nsw i32 %94, %24
  %96 = call i32 @llvm.smax.i32(i32 %95, i32 0)
  %97 = call i32 @llvm.smin.i32(i32 %96, i32 51)
  %98 = add nsw i32 %94, %27
  %99 = call i32 @llvm.smax.i32(i32 %98, i32 0)
  %100 = call i32 @llvm.smin.i32(i32 %99, i32 51)
  %101 = zext nneg i32 %97 to i64
  %102 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !61
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 %17, %104
  %106 = zext nneg i32 %100 to i64
  %107 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !61
  %109 = zext i8 %108 to i32
  %110 = mul nsw i32 %17, %109
  %111 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %101
  %112 = load i16, ptr %88, align 2, !tbaa !80
  %113 = load i16, ptr %81, align 2, !tbaa !80
  %114 = zext i16 %113 to i32
  %115 = zext i16 %112 to i32
  %116 = sub nsw i32 %114, %115
  %117 = call i32 @llvm.abs.i32(i32 %116, i1 true)
  %118 = icmp slt i32 %117, %105
  br i1 %118, label %119, label %175

119:                                              ; preds = %74
  %120 = getelementptr inbounds i16, ptr %81, i64 1
  %121 = load i16, ptr %120, align 2, !tbaa !80
  %122 = zext i16 %121 to i32
  %123 = sub nsw i32 %114, %122
  %124 = call i32 @llvm.abs.i32(i32 %123, i1 true)
  %125 = icmp slt i32 %124, %110
  br i1 %125, label %126, label %175

126:                                              ; preds = %119
  %127 = getelementptr inbounds i16, ptr %88, i64 -1
  %128 = load i16, ptr %127, align 2, !tbaa !80
  %129 = zext i16 %128 to i32
  %130 = sub nsw i32 %115, %129
  %131 = call i32 @llvm.abs.i32(i32 %130, i1 true)
  %132 = icmp slt i32 %131, %110
  br i1 %132, label %133, label %175

133:                                              ; preds = %126
  %134 = icmp eq i8 %72, 4
  br i1 %134, label %135, label %147

135:                                              ; preds = %133
  %136 = shl nuw nsw i32 %122, 1
  %137 = add nuw nsw i32 %114, 2
  %138 = add nuw nsw i32 %137, %136
  %139 = add nuw nsw i32 %138, %129
  %140 = lshr i32 %139, 2
  %141 = trunc i32 %140 to i16
  store i16 %141, ptr %81, align 2, !tbaa !80
  %142 = shl nuw nsw i32 %129, 1
  %143 = add nuw nsw i32 %115, 2
  %144 = add nuw nsw i32 %143, %122
  %145 = add nuw nsw i32 %144, %142
  %146 = lshr i32 %145, 2
  br label %171

147:                                              ; preds = %133
  %148 = zext i8 %72 to i64
  %149 = getelementptr inbounds i8, ptr %111, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !61
  %151 = zext i8 %150 to i32
  %152 = mul nsw i32 %17, %151
  %153 = shl nsw i32 %116, 2
  %154 = add nsw i32 %122, -5
  %155 = add nsw i32 %153, %129
  %156 = sub nsw i32 %154, %155
  %157 = ashr i32 %156, 3
  %158 = call i32 @llvm.smin.i32(i32 %152, i32 %157)
  %159 = sub i32 -2, %152
  %160 = call i32 @llvm.smax.i32(i32 %158, i32 %159)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %175, label %162

162:                                              ; preds = %147
  %163 = xor i32 %160, -1
  %164 = add nsw i32 %163, %115
  %165 = call i32 @llvm.smax.i32(i32 %164, i32 0)
  %166 = call i32 @llvm.smin.i32(i32 %165, i32 %21)
  %167 = trunc i32 %166 to i16
  store i16 %167, ptr %88, align 2, !tbaa !80
  %168 = sub nsw i32 %114, %163
  %169 = call i32 @llvm.smax.i32(i32 %168, i32 0)
  %170 = call i32 @llvm.smin.i32(i32 %169, i32 %21)
  br label %171

171:                                              ; preds = %135, %162
  %172 = phi i32 [ %170, %162 ], [ %146, %135 ]
  %173 = phi ptr [ %81, %162 ], [ %88, %135 ]
  %174 = trunc i32 %172 to i16
  store i16 %174, ptr %173, align 2, !tbaa !80
  br label %175

175:                                              ; preds = %171, %147, %66, %74, %126, %119, %69
  %176 = add nuw nsw i32 %44, 1
  %177 = icmp eq i32 %176, %15
  br i1 %177, label %178, label %43, !llvm.loop !93

178:                                              ; preds = %175, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopChromaHorMBAff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x [4 x i32]], ptr @pelnum_cr, i64 0, i64 1, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !76
  %16 = icmp slt i32 %3, 16
  %17 = select i1 %16, i32 %3, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %18 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 66, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !76
  %20 = add nsw i32 %4, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !76
  %24 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %25 = load i16, ptr %24, align 2, !tbaa !86
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %28 = load i16, ptr %27, align 4, !tbaa !87
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 68
  %31 = load i32, ptr %30, align 8, !tbaa !94
  %32 = add nsw i32 %17, -1
  %33 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef %2, i32 noundef 0, i32 noundef %32, ptr noundef nonnull %33, ptr noundef nonnull %7) #7
  call void @getAffNeighbour(ptr noundef %2, i32 noundef 0, i32 noundef %17, ptr noundef nonnull %33, ptr noundef nonnull %8) #7
  %34 = load i32, ptr %7, align 4, !tbaa !89
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 42
  %38 = load i16, ptr %37, align 8, !tbaa !88
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %203

40:                                               ; preds = %36, %6
  %41 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 35
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !57
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.macroblock, ptr %42, i64 %45, i32 45
  %47 = load i32, ptr %46, align 8, !tbaa !59
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 45
  %51 = load i32, ptr %50, align 8, !tbaa !59
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = shl nsw i32 %31, %53
  br label %55

55:                                               ; preds = %49, %40
  %56 = phi i32 [ %31, %40 ], [ %54, %49 ]
  %57 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 45
  %58 = load i32, ptr %57, align 8, !tbaa !59
  %59 = icmp ne i32 %58, 0
  %60 = and i1 %48, %59
  %61 = zext i1 %60 to i32
  %62 = shl nsw i32 %31, %61
  %63 = sext i32 %4 to i64
  %64 = getelementptr inbounds %struct.macroblock, ptr %42, i64 %45, i32 15, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !76
  %66 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 15, i64 %63
  %67 = load i32, ptr %66, align 4, !tbaa !76
  %68 = add i32 %65, 1
  %69 = add i32 %68, %67
  %70 = ashr i32 %69, 1
  %71 = add nsw i32 %70, %26
  %72 = call i32 @llvm.smax.i32(i32 %71, i32 0)
  %73 = call i32 @llvm.smin.i32(i32 %72, i32 51)
  %74 = add nsw i32 %70, %29
  %75 = call i32 @llvm.smax.i32(i32 %74, i32 0)
  %76 = call i32 @llvm.smin.i32(i32 %75, i32 51)
  %77 = zext nneg i32 %73 to i64
  %78 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !61
  %80 = zext i8 %79 to i32
  %81 = mul nsw i32 %19, %80
  %82 = zext nneg i32 %76 to i64
  %83 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !61
  %85 = zext i8 %84 to i32
  %86 = mul nsw i32 %19, %85
  %87 = or i32 %86, %81
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %203, label %89

89:                                               ; preds = %55
  %90 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %77
  %91 = icmp sgt i32 %15, 0
  br i1 %91, label %92, label %203

92:                                               ; preds = %89
  %93 = icmp eq i32 %15, 8
  %94 = and i1 %48, %59
  %95 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %96 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %97 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %98 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %99 = sext i32 %56 to i64
  %100 = sub nsw i32 0, %62
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %103 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  br label %104

104:                                              ; preds = %92, %196
  %105 = phi i32 [ 0, %92 ], [ %201, %196 ]
  br i1 %93, label %106, label %112

106:                                              ; preds = %104
  %107 = shl nuw i32 %105, 1
  br i1 %94, label %112, label %108

108:                                              ; preds = %106
  %109 = and i32 %107, -4
  %110 = and i32 %105, 1
  %111 = or disjoint i32 %109, %110
  br label %112

112:                                              ; preds = %106, %104, %108
  %113 = phi i32 [ %111, %108 ], [ %105, %104 ], [ %107, %106 ]
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %1, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !61
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %196, label %118

118:                                              ; preds = %112
  %119 = load i16, ptr %95, align 2, !tbaa !70
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !73
  %123 = load i16, ptr %96, align 4, !tbaa !81
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds i16, ptr %122, i64 %124
  %126 = load i16, ptr %97, align 2, !tbaa !70
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %0, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !73
  %130 = load i16, ptr %98, align 4, !tbaa !81
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds i16, ptr %129, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !80
  %134 = load i16, ptr %125, align 2, !tbaa !80
  %135 = zext i16 %134 to i32
  %136 = zext i16 %133 to i32
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @llvm.abs.i32(i32 %137, i1 true)
  %139 = icmp slt i32 %138, %81
  br i1 %139, label %140, label %196

140:                                              ; preds = %118
  %141 = getelementptr inbounds i16, ptr %125, i64 %99
  %142 = load i16, ptr %141, align 2, !tbaa !80
  %143 = zext i16 %142 to i32
  %144 = sub nsw i32 %135, %143
  %145 = call i32 @llvm.abs.i32(i32 %144, i1 true)
  %146 = icmp slt i32 %145, %86
  br i1 %146, label %147, label %196

147:                                              ; preds = %140
  %148 = getelementptr inbounds i16, ptr %132, i64 %101
  %149 = load i16, ptr %148, align 2, !tbaa !80
  %150 = zext i16 %149 to i32
  %151 = sub nsw i32 %136, %150
  %152 = call i32 @llvm.abs.i32(i32 %151, i1 true)
  %153 = icmp slt i32 %152, %86
  br i1 %153, label %154, label %196

154:                                              ; preds = %147
  %155 = icmp eq i8 %116, 4
  br i1 %155, label %156, label %168

156:                                              ; preds = %154
  %157 = shl nuw nsw i32 %143, 1
  %158 = add nuw nsw i32 %135, 2
  %159 = add nuw nsw i32 %158, %157
  %160 = add nuw nsw i32 %159, %150
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i16
  store i16 %162, ptr %125, align 2, !tbaa !80
  %163 = shl nuw nsw i32 %150, 1
  %164 = add nuw nsw i32 %136, 2
  %165 = add nuw nsw i32 %164, %143
  %166 = add nuw nsw i32 %165, %163
  %167 = lshr i32 %166, 2
  br label %192

168:                                              ; preds = %154
  %169 = zext i8 %116 to i64
  %170 = getelementptr inbounds i8, ptr %90, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !61
  %172 = zext i8 %171 to i32
  %173 = mul nsw i32 %19, %172
  %174 = shl nsw i32 %137, 2
  %175 = add nsw i32 %143, -5
  %176 = add nsw i32 %174, %150
  %177 = sub nsw i32 %175, %176
  %178 = ashr i32 %177, 3
  %179 = call i32 @llvm.smin.i32(i32 %173, i32 %178)
  %180 = sub i32 -2, %173
  %181 = call i32 @llvm.smax.i32(i32 %179, i32 %180)
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %196, label %183

183:                                              ; preds = %168
  %184 = xor i32 %181, -1
  %185 = add nsw i32 %184, %136
  %186 = call i32 @llvm.smax.i32(i32 %185, i32 0)
  %187 = call i32 @llvm.smin.i32(i32 %186, i32 %23)
  %188 = trunc i32 %187 to i16
  store i16 %188, ptr %132, align 2, !tbaa !80
  %189 = sub nsw i32 %135, %184
  %190 = call i32 @llvm.smax.i32(i32 %189, i32 0)
  %191 = call i32 @llvm.smin.i32(i32 %190, i32 %23)
  br label %192

192:                                              ; preds = %156, %183
  %193 = phi i32 [ %191, %183 ], [ %167, %156 ]
  %194 = phi ptr [ %125, %183 ], [ %132, %156 ]
  %195 = trunc i32 %193 to i16
  store i16 %195, ptr %194, align 2, !tbaa !80
  br label %196

196:                                              ; preds = %192, %118, %168, %147, %140, %112
  %197 = load i16, ptr %102, align 4, !tbaa !81
  %198 = add i16 %197, 1
  store i16 %198, ptr %102, align 4, !tbaa !81
  %199 = load i16, ptr %103, align 4, !tbaa !81
  %200 = add i16 %199, 1
  store i16 %200, ptr %103, align 4, !tbaa !81
  %201 = add nuw nsw i32 %105, 1
  %202 = icmp eq i32 %201, %15
  br i1 %202, label %203, label %104, !llvm.loop !95

203:                                              ; preds = %196, %89, %55, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @get_non_aff_neighbor_luma(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %0, %7 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @get_non_aff_neighbor_chroma(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = icmp slt i32 %2, %4
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  br label %22

12:                                               ; preds = %5
  %13 = icmp slt i32 %1, %3
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = icmp slt i32 %2, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  br label %22

19:                                               ; preds = %14
  %20 = icmp slt i32 %2, %4
  %21 = select i1 %20, ptr %0, ptr null
  br label %22

22:                                               ; preds = %12, %19, %7, %16, %9
  %23 = phi ptr [ %11, %9 ], [ %18, %16 ], [ null, %7 ], [ %21, %19 ], [ null, %12 ]
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @get_mb_block_pos_mbaff(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!34 = !{!35, !36, i64 856760}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!35, !36, i64 856768}
!46 = !{!35, !36, i64 856776}
!47 = !{!35, !36, i64 856784}
!48 = !{!35, !36, i64 856792}
!49 = !{!35, !36, i64 856800}
!50 = !{!51, !36, i64 8}
!51 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !52, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !40, i64 108, !37, i64 110, !37, i64 111, !40, i64 112, !40, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !40, i64 376, !40, i64 378, !40, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!52 = !{!"", !40, i64 0, !40, i64 2}
!53 = !{!54, !39, i64 248}
!54 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !40, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !55, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!55 = !{!"pic_motion_params_old", !36, i64 0}
!56 = !{!35, !36, i64 848888}
!57 = !{!58, !39, i64 4}
!58 = !{!"pix_pos", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14}
!59 = !{!51, !39, i64 384}
!60 = !{!51, !37, i64 472}
!61 = !{!37, !37, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!51, !39, i64 96}
!66 = !{!51, !39, i64 24}
!67 = !{!58, !40, i64 8}
!68 = !{!44, !44, i64 0}
!69 = !{!58, !40, i64 10}
!70 = !{!58, !40, i64 14}
!71 = !{!51, !40, i64 152}
!72 = !{!54, !36, i64 152}
!73 = !{!36, !36, i64 0}
!74 = !{!52, !40, i64 0}
!75 = !{!52, !40, i64 2}
!76 = !{!39, !39, i64 0}
!77 = distinct !{!77, !63, !64}
!78 = !{!54, !39, i64 100}
!79 = !{!54, !39, i64 0}
!80 = !{!40, !40, i64 0}
!81 = !{!58, !40, i64 12}
!82 = distinct !{!82, !63, !64}
!83 = distinct !{!83, !63, !64}
!84 = distinct !{!84, !63, !64}
!85 = !{!54, !39, i64 268}
!86 = !{!51, !40, i64 378}
!87 = !{!51, !40, i64 380}
!88 = !{!51, !40, i64 376}
!89 = !{!58, !39, i64 0}
!90 = distinct !{!90, !63, !64}
!91 = !{!54, !39, i64 356}
!92 = distinct !{!92, !63, !64}
!93 = distinct !{!93, !63, !64}
!94 = !{!54, !39, i64 360}
!95 = distinct !{!95, !63, !64}
!96 = !{!51, !36, i64 144}
!97 = !{!51, !36, i64 136}
