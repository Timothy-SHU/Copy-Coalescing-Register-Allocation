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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_normal(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 162
  store ptr @GetStrengthVer, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 163
  store ptr @GetStrengthHor, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 164
  store ptr @EdgeLoopLumaVer, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 165
  store ptr @EdgeLoopLumaHor, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 166
  store ptr @EdgeLoopChromaVer, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 167
  store ptr @EdgeLoopChromaHor, ptr %7, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthVer(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i8 4, i8 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %13, i64 16, i1 false)
  br label %269

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !56
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %266

18:                                               ; preds = %14
  %19 = add i32 %2, 15
  %20 = icmp slt i32 %2, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 29
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %18, %21
  %25 = phi ptr [ %23, %21 ], [ %1, %18 ]
  %26 = icmp eq i32 %2, 0
  %27 = select i1 %26, ptr %25, ptr %1
  br i1 %26, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.macroblock, ptr %27, i64 0, i32 18
  %30 = load i32, ptr %29, align 8, !tbaa !56
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %265

32:                                               ; preds = %28, %24
  %33 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !59
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.BlockPos, ptr %33, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa.struct !60
  %39 = getelementptr inbounds i8, ptr %37, i64 2
  %40 = load i16, ptr %39, align 2, !tbaa.struct !62
  %41 = shl i16 %38, 2
  %42 = shl i16 %40, 2
  %43 = ashr i32 %2, 2
  %44 = and i32 %19, 15
  %45 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %46 = load i64, ptr %45, align 8, !tbaa !63
  %47 = lshr i32 %44, 2
  %48 = getelementptr inbounds %struct.macroblock, ptr %27, i64 0, i32 33
  %49 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 30
  %50 = sext i16 %42 to i32
  %51 = sext i16 %41 to i32
  %52 = and i32 %43, 3
  %53 = or disjoint i32 %52, %51
  %54 = getelementptr inbounds %struct.macroblock, ptr %25, i64 0, i32 9
  %55 = getelementptr inbounds %struct.macroblock, ptr %25, i64 0, i32 8
  %56 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %57 = sext i32 %53 to i64
  %58 = zext nneg i32 %47 to i64
  %59 = sext i32 %43 to i64
  br label %60

60:                                               ; preds = %32, %259
  %61 = phi i64 [ 0, %32 ], [ %263, %259 ]
  %62 = add nsw i64 %61, %59
  %63 = icmp sgt i64 %62, 63
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %62
  %66 = load i64, ptr %65, align 8, !tbaa !63
  br label %67

67:                                               ; preds = %60, %64
  %68 = phi i64 [ %66, %64 ], [ 0, %60 ]
  %69 = and i64 %68, %46
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %259

71:                                               ; preds = %67
  %72 = load i64, ptr %48, align 8, !tbaa !63
  %73 = or disjoint i64 %61, %58
  %74 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !63
  %76 = and i64 %75, %72
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %259

78:                                               ; preds = %71
  br i1 %26, label %83, label %79

79:                                               ; preds = %78
  %80 = load i16, ptr %49, align 8, !tbaa !64
  %81 = add i16 %80, -1
  %82 = icmp ult i16 %81, 2
  br i1 %82, label %259, label %83

83:                                               ; preds = %79, %78
  %84 = trunc i64 %62 to i32
  %85 = ashr i32 %84, 2
  %86 = add nsw i32 %85, %50
  %87 = load i32, ptr %54, align 8, !tbaa !65
  %88 = trunc i64 %61 to i32
  %89 = add nsw i32 %87, %88
  %90 = shl i32 %89, 16
  %91 = ashr i32 %90, 18
  %92 = load i32, ptr %55, align 4, !tbaa !66
  %93 = add nsw i32 %92, %44
  %94 = shl i32 %93, 16
  %95 = ashr i32 %94, 18
  %96 = load ptr, ptr %56, align 8, !tbaa !67
  %97 = sext i32 %86 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !58
  %100 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57
  %101 = load ptr, ptr %100, align 8, !tbaa !58
  %102 = getelementptr inbounds [2 x ptr], ptr %100, i64 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !58
  %104 = sext i32 %91 to i64
  %105 = getelementptr inbounds ptr, ptr %96, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !58
  %107 = sext i32 %95 to i64
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !58
  %110 = getelementptr inbounds [2 x ptr], ptr %108, i64 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !58
  %112 = icmp eq ptr %101, %109
  %113 = icmp eq ptr %103, %111
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %119, label %115

115:                                              ; preds = %83
  %116 = icmp eq ptr %101, %111
  %117 = icmp eq ptr %103, %109
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %259

119:                                              ; preds = %115, %83
  %120 = icmp eq ptr %101, %103
  %121 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57, i32 1
  %122 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107, i32 1
  br i1 %120, label %202, label %123

123:                                              ; preds = %119
  br i1 %112, label %124, label %163

124:                                              ; preds = %123
  %125 = load i16, ptr %121, align 2, !tbaa !70
  %126 = sext i16 %125 to i32
  %127 = load i16, ptr %122, align 2, !tbaa !70
  %128 = sext i16 %127 to i32
  %129 = sub nsw i32 %126, %128
  %130 = tail call i32 @llvm.abs.i32(i32 %129, i1 true)
  %131 = icmp ugt i32 %130, 3
  %132 = getelementptr inbounds %struct.MotionVector, ptr %121, i64 0, i32 1
  %133 = load i16, ptr %132, align 2, !tbaa !71
  %134 = sext i16 %133 to i32
  %135 = getelementptr inbounds %struct.MotionVector, ptr %122, i64 0, i32 1
  %136 = load i16, ptr %135, align 2, !tbaa !71
  %137 = sext i16 %136 to i32
  %138 = sub nsw i32 %134, %137
  %139 = tail call i32 @llvm.abs.i32(i32 %138, i1 true)
  %140 = icmp sge i32 %139, %3
  %141 = or i1 %131, %140
  %142 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57, i32 1, i64 1
  %143 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107, i32 1, i64 1
  %144 = load i16, ptr %142, align 2, !tbaa !70
  %145 = sext i16 %144 to i32
  %146 = load i16, ptr %143, align 2, !tbaa !70
  %147 = sext i16 %146 to i32
  %148 = sub nsw i32 %145, %147
  %149 = tail call i32 @llvm.abs.i32(i32 %148, i1 true)
  %150 = icmp ugt i32 %149, 3
  %151 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57, i32 1, i64 1, i32 1
  %152 = load i16, ptr %151, align 2, !tbaa !71
  %153 = sext i16 %152 to i32
  %154 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107, i32 1, i64 1, i32 1
  %155 = load i16, ptr %154, align 2, !tbaa !71
  %156 = sext i16 %155 to i32
  %157 = sub nsw i32 %153, %156
  %158 = tail call i32 @llvm.abs.i32(i32 %157, i1 true)
  %159 = icmp sge i32 %158, %3
  %160 = or i1 %150, %159
  %161 = or i1 %141, %160
  %162 = zext i1 %161 to i32
  br label %259

163:                                              ; preds = %123
  %164 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107, i32 1, i64 1
  %165 = load i16, ptr %121, align 2, !tbaa !70
  %166 = sext i16 %165 to i32
  %167 = load i16, ptr %164, align 2, !tbaa !70
  %168 = sext i16 %167 to i32
  %169 = sub nsw i32 %166, %168
  %170 = tail call i32 @llvm.abs.i32(i32 %169, i1 true)
  %171 = icmp ugt i32 %170, 3
  %172 = getelementptr inbounds %struct.MotionVector, ptr %121, i64 0, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !71
  %174 = sext i16 %173 to i32
  %175 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107, i32 1, i64 1, i32 1
  %176 = load i16, ptr %175, align 2, !tbaa !71
  %177 = sext i16 %176 to i32
  %178 = sub nsw i32 %174, %177
  %179 = tail call i32 @llvm.abs.i32(i32 %178, i1 true)
  %180 = icmp sge i32 %179, %3
  %181 = or i1 %171, %180
  %182 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57, i32 1, i64 1
  %183 = load i16, ptr %182, align 2, !tbaa !70
  %184 = sext i16 %183 to i32
  %185 = load i16, ptr %122, align 2, !tbaa !70
  %186 = sext i16 %185 to i32
  %187 = sub nsw i32 %184, %186
  %188 = tail call i32 @llvm.abs.i32(i32 %187, i1 true)
  %189 = icmp ugt i32 %188, 3
  %190 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57, i32 1, i64 1, i32 1
  %191 = load i16, ptr %190, align 2, !tbaa !71
  %192 = sext i16 %191 to i32
  %193 = getelementptr inbounds %struct.MotionVector, ptr %122, i64 0, i32 1
  %194 = load i16, ptr %193, align 2, !tbaa !71
  %195 = sext i16 %194 to i32
  %196 = sub nsw i32 %192, %195
  %197 = tail call i32 @llvm.abs.i32(i32 %196, i1 true)
  %198 = icmp sge i32 %197, %3
  %199 = or i1 %189, %198
  %200 = or i1 %181, %199
  %201 = zext i1 %200 to i32
  br label %259

202:                                              ; preds = %119
  %203 = load i16, ptr %121, align 2, !tbaa !70
  %204 = sext i16 %203 to i32
  %205 = load i16, ptr %122, align 2, !tbaa !70
  %206 = sext i16 %205 to i32
  %207 = sub nsw i32 %204, %206
  %208 = tail call i32 @llvm.abs.i32(i32 %207, i1 true)
  %209 = icmp ugt i32 %208, 3
  %210 = getelementptr inbounds %struct.MotionVector, ptr %121, i64 0, i32 1
  %211 = load i16, ptr %210, align 2, !tbaa !71
  %212 = sext i16 %211 to i32
  %213 = getelementptr inbounds %struct.MotionVector, ptr %122, i64 0, i32 1
  %214 = load i16, ptr %213, align 2, !tbaa !71
  %215 = sext i16 %214 to i32
  %216 = sub nsw i32 %212, %215
  %217 = tail call i32 @llvm.abs.i32(i32 %216, i1 true)
  %218 = icmp sge i32 %217, %3
  %219 = or i1 %209, %218
  %220 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57, i32 1, i64 1
  %221 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107, i32 1, i64 1
  %222 = load i16, ptr %220, align 2, !tbaa !70
  %223 = sext i16 %222 to i32
  %224 = load i16, ptr %221, align 2, !tbaa !70
  %225 = sext i16 %224 to i32
  %226 = sub nsw i32 %223, %225
  %227 = tail call i32 @llvm.abs.i32(i32 %226, i1 true)
  %228 = icmp ugt i32 %227, 3
  %229 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %57, i32 1, i64 1, i32 1
  %230 = load i16, ptr %229, align 2, !tbaa !71
  %231 = sext i16 %230 to i32
  %232 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %107, i32 1, i64 1, i32 1
  %233 = load i16, ptr %232, align 2, !tbaa !71
  %234 = sext i16 %233 to i32
  %235 = sub nsw i32 %231, %234
  %236 = tail call i32 @llvm.abs.i32(i32 %235, i1 true)
  %237 = icmp sge i32 %236, %3
  %238 = or i1 %228, %237
  %239 = or i1 %219, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %202
  %241 = sub nsw i32 %204, %225
  %242 = tail call i32 @llvm.abs.i32(i32 %241, i1 true)
  %243 = icmp ugt i32 %242, 3
  %244 = sub nsw i32 %212, %234
  %245 = tail call i32 @llvm.abs.i32(i32 %244, i1 true)
  %246 = icmp sge i32 %245, %3
  %247 = or i1 %243, %246
  %248 = sub nsw i32 %223, %206
  %249 = tail call i32 @llvm.abs.i32(i32 %248, i1 true)
  %250 = icmp ugt i32 %249, 3
  %251 = sub nsw i32 %231, %215
  %252 = tail call i32 @llvm.abs.i32(i32 %251, i1 true)
  %253 = icmp sge i32 %252, %3
  %254 = or i1 %250, %253
  %255 = or i1 %254, %247
  br label %256

256:                                              ; preds = %240, %202
  %257 = phi i1 [ false, %202 ], [ %255, %240 ]
  %258 = zext i1 %257 to i32
  br label %259

259:                                              ; preds = %79, %124, %163, %256, %115, %67, %71
  %260 = phi i32 [ 2, %71 ], [ 2, %67 ], [ 0, %79 ], [ %162, %124 ], [ %201, %163 ], [ %258, %256 ], [ 1, %115 ]
  %261 = mul nuw nsw i32 %260, 16843009
  %262 = getelementptr inbounds i8, ptr %0, i64 %61
  store i32 %261, ptr %262, align 4, !tbaa !72
  %263 = add nuw nsw i64 %61, 4
  %264 = icmp ult i64 %61, 12
  br i1 %264, label %60, label %269, !llvm.loop !73

265:                                              ; preds = %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 4, i64 16, i1 false)
  br label %269

266:                                              ; preds = %14
  %267 = icmp eq i32 %2, 0
  %268 = select i1 %267, i8 4, i8 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %268, i64 16, i1 false)
  br label %269

269:                                              ; preds = %259, %265, %266, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthHor(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %264, label %268

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !56
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %262

17:                                               ; preds = %13
  %18 = icmp slt i32 %2, 16
  %19 = add nsw i32 %2, -1
  %20 = select i1 %18, i32 %19, i32 0
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 28
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  br label %25

25:                                               ; preds = %17, %22
  %26 = phi ptr [ %24, %22 ], [ %1, %17 ]
  %27 = icmp eq i32 %2, 0
  %28 = select i1 %27, ptr %26, ptr %1
  br i1 %27, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.macroblock, ptr %28, i64 0, i32 18
  %31 = load i32, ptr %30, align 8, !tbaa !56
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %264

33:                                               ; preds = %29, %25
  %34 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %35 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !59
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.BlockPos, ptr %34, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa.struct !60
  %40 = getelementptr inbounds i8, ptr %38, i64 2
  %41 = load i16, ptr %40, align 2, !tbaa.struct !62
  %42 = shl i16 %39, 2
  %43 = shl i16 %41, 2
  %44 = add nsw i32 %20, 1
  %45 = and i32 %44, 65532
  %46 = and i32 %20, 15
  %47 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 33
  %48 = load i64, ptr %47, align 8, !tbaa !63
  %49 = and i32 %20, 12
  %50 = getelementptr inbounds %struct.macroblock, ptr %28, i64 0, i32 33
  %51 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 30
  %52 = sext i16 %43 to i32
  %53 = lshr exact i32 %45, 2
  %54 = add nsw i32 %53, %52
  %55 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 9
  %56 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 8
  %57 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %58 = sext i32 %54 to i64
  %59 = zext nneg i32 %45 to i64
  %60 = zext nneg i32 %49 to i64
  %61 = sext i16 %42 to i64
  br label %62

62:                                               ; preds = %33, %256
  %63 = phi i64 [ 0, %33 ], [ %260, %256 ]
  %64 = lshr exact i64 %63, 2
  %65 = or disjoint i64 %64, %59
  %66 = icmp ugt i64 %65, 63
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %65
  %69 = load i64, ptr %68, align 8, !tbaa !63
  br label %70

70:                                               ; preds = %62, %67
  %71 = phi i64 [ %69, %67 ], [ 0, %62 ]
  %72 = and i64 %71, %48
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %256

74:                                               ; preds = %70
  %75 = load i64, ptr %50, align 8, !tbaa !63
  %76 = or disjoint i64 %64, %60
  %77 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !63
  %79 = and i64 %78, %75
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %256

81:                                               ; preds = %74
  br i1 %27, label %84, label %82

82:                                               ; preds = %81
  %83 = load i16, ptr %51, align 8, !tbaa !64
  switch i16 %83, label %84 [
    i16 1, label %256
    i16 3, label %256
  ]

84:                                               ; preds = %82, %81
  %85 = or disjoint i64 %64, %61
  %86 = load i32, ptr %55, align 8, !tbaa !65
  %87 = add nsw i32 %86, %46
  %88 = ashr i32 %87, 2
  %89 = load i32, ptr %56, align 4, !tbaa !66
  %90 = trunc i64 %63 to i32
  %91 = add nsw i32 %89, %90
  %92 = shl i32 %91, 16
  %93 = ashr i32 %92, 18
  %94 = load ptr, ptr %57, align 8, !tbaa !67
  %95 = getelementptr inbounds ptr, ptr %94, i64 %58
  %96 = load ptr, ptr %95, align 8, !tbaa !58
  %97 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85
  %98 = sext i32 %88 to i64
  %99 = getelementptr inbounds ptr, ptr %94, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !58
  %101 = sext i32 %93 to i64
  %102 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101
  %103 = load ptr, ptr %97, align 8, !tbaa !58
  %104 = load ptr, ptr %102, align 8, !tbaa !58
  %105 = getelementptr inbounds [2 x ptr], ptr %97, i64 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !58
  %107 = getelementptr inbounds [2 x ptr], ptr %102, i64 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !58
  %109 = icmp eq ptr %103, %104
  %110 = icmp eq ptr %106, %108
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %116, label %112

112:                                              ; preds = %84
  %113 = icmp eq ptr %103, %108
  %114 = icmp eq ptr %106, %104
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %256

116:                                              ; preds = %112, %84
  %117 = icmp eq ptr %103, %106
  %118 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85, i32 1
  %119 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101, i32 1
  br i1 %117, label %199, label %120

120:                                              ; preds = %116
  br i1 %109, label %121, label %160

121:                                              ; preds = %120
  %122 = load i16, ptr %118, align 2, !tbaa !70
  %123 = sext i16 %122 to i32
  %124 = load i16, ptr %119, align 2, !tbaa !70
  %125 = sext i16 %124 to i32
  %126 = sub nsw i32 %123, %125
  %127 = tail call i32 @llvm.abs.i32(i32 %126, i1 true)
  %128 = icmp ugt i32 %127, 3
  %129 = getelementptr inbounds %struct.MotionVector, ptr %118, i64 0, i32 1
  %130 = load i16, ptr %129, align 2, !tbaa !71
  %131 = sext i16 %130 to i32
  %132 = getelementptr inbounds %struct.MotionVector, ptr %119, i64 0, i32 1
  %133 = load i16, ptr %132, align 2, !tbaa !71
  %134 = sext i16 %133 to i32
  %135 = sub nsw i32 %131, %134
  %136 = tail call i32 @llvm.abs.i32(i32 %135, i1 true)
  %137 = icmp sge i32 %136, %3
  %138 = or i1 %128, %137
  %139 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85, i32 1, i64 1
  %140 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101, i32 1, i64 1
  %141 = load i16, ptr %139, align 2, !tbaa !70
  %142 = sext i16 %141 to i32
  %143 = load i16, ptr %140, align 2, !tbaa !70
  %144 = sext i16 %143 to i32
  %145 = sub nsw i32 %142, %144
  %146 = tail call i32 @llvm.abs.i32(i32 %145, i1 true)
  %147 = icmp ugt i32 %146, 3
  %148 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85, i32 1, i64 1, i32 1
  %149 = load i16, ptr %148, align 2, !tbaa !71
  %150 = sext i16 %149 to i32
  %151 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101, i32 1, i64 1, i32 1
  %152 = load i16, ptr %151, align 2, !tbaa !71
  %153 = sext i16 %152 to i32
  %154 = sub nsw i32 %150, %153
  %155 = tail call i32 @llvm.abs.i32(i32 %154, i1 true)
  %156 = icmp sge i32 %155, %3
  %157 = or i1 %147, %156
  %158 = or i1 %138, %157
  %159 = zext i1 %158 to i32
  br label %256

160:                                              ; preds = %120
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101, i32 1, i64 1
  %162 = load i16, ptr %118, align 2, !tbaa !70
  %163 = sext i16 %162 to i32
  %164 = load i16, ptr %161, align 2, !tbaa !70
  %165 = sext i16 %164 to i32
  %166 = sub nsw i32 %163, %165
  %167 = tail call i32 @llvm.abs.i32(i32 %166, i1 true)
  %168 = icmp ugt i32 %167, 3
  %169 = getelementptr inbounds %struct.MotionVector, ptr %118, i64 0, i32 1
  %170 = load i16, ptr %169, align 2, !tbaa !71
  %171 = sext i16 %170 to i32
  %172 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101, i32 1, i64 1, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !71
  %174 = sext i16 %173 to i32
  %175 = sub nsw i32 %171, %174
  %176 = tail call i32 @llvm.abs.i32(i32 %175, i1 true)
  %177 = icmp sge i32 %176, %3
  %178 = or i1 %168, %177
  %179 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85, i32 1, i64 1
  %180 = load i16, ptr %179, align 2, !tbaa !70
  %181 = sext i16 %180 to i32
  %182 = load i16, ptr %119, align 2, !tbaa !70
  %183 = sext i16 %182 to i32
  %184 = sub nsw i32 %181, %183
  %185 = tail call i32 @llvm.abs.i32(i32 %184, i1 true)
  %186 = icmp ugt i32 %185, 3
  %187 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85, i32 1, i64 1, i32 1
  %188 = load i16, ptr %187, align 2, !tbaa !71
  %189 = sext i16 %188 to i32
  %190 = getelementptr inbounds %struct.MotionVector, ptr %119, i64 0, i32 1
  %191 = load i16, ptr %190, align 2, !tbaa !71
  %192 = sext i16 %191 to i32
  %193 = sub nsw i32 %189, %192
  %194 = tail call i32 @llvm.abs.i32(i32 %193, i1 true)
  %195 = icmp sge i32 %194, %3
  %196 = or i1 %186, %195
  %197 = or i1 %178, %196
  %198 = zext i1 %197 to i32
  br label %256

199:                                              ; preds = %116
  %200 = load i16, ptr %118, align 2, !tbaa !70
  %201 = sext i16 %200 to i32
  %202 = load i16, ptr %119, align 2, !tbaa !70
  %203 = sext i16 %202 to i32
  %204 = sub nsw i32 %201, %203
  %205 = tail call i32 @llvm.abs.i32(i32 %204, i1 true)
  %206 = icmp ugt i32 %205, 3
  %207 = getelementptr inbounds %struct.MotionVector, ptr %118, i64 0, i32 1
  %208 = load i16, ptr %207, align 2, !tbaa !71
  %209 = sext i16 %208 to i32
  %210 = getelementptr inbounds %struct.MotionVector, ptr %119, i64 0, i32 1
  %211 = load i16, ptr %210, align 2, !tbaa !71
  %212 = sext i16 %211 to i32
  %213 = sub nsw i32 %209, %212
  %214 = tail call i32 @llvm.abs.i32(i32 %213, i1 true)
  %215 = icmp sge i32 %214, %3
  %216 = or i1 %206, %215
  %217 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85, i32 1, i64 1
  %218 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101, i32 1, i64 1
  %219 = load i16, ptr %217, align 2, !tbaa !70
  %220 = sext i16 %219 to i32
  %221 = load i16, ptr %218, align 2, !tbaa !70
  %222 = sext i16 %221 to i32
  %223 = sub nsw i32 %220, %222
  %224 = tail call i32 @llvm.abs.i32(i32 %223, i1 true)
  %225 = icmp ugt i32 %224, 3
  %226 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %85, i32 1, i64 1, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !71
  %228 = sext i16 %227 to i32
  %229 = getelementptr inbounds %struct.pic_motion_params, ptr %100, i64 %101, i32 1, i64 1, i32 1
  %230 = load i16, ptr %229, align 2, !tbaa !71
  %231 = sext i16 %230 to i32
  %232 = sub nsw i32 %228, %231
  %233 = tail call i32 @llvm.abs.i32(i32 %232, i1 true)
  %234 = icmp sge i32 %233, %3
  %235 = or i1 %225, %234
  %236 = or i1 %216, %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %199
  %238 = sub nsw i32 %201, %222
  %239 = tail call i32 @llvm.abs.i32(i32 %238, i1 true)
  %240 = icmp ugt i32 %239, 3
  %241 = sub nsw i32 %209, %231
  %242 = tail call i32 @llvm.abs.i32(i32 %241, i1 true)
  %243 = icmp sge i32 %242, %3
  %244 = or i1 %240, %243
  %245 = sub nsw i32 %220, %203
  %246 = tail call i32 @llvm.abs.i32(i32 %245, i1 true)
  %247 = icmp ugt i32 %246, 3
  %248 = sub nsw i32 %228, %212
  %249 = tail call i32 @llvm.abs.i32(i32 %248, i1 true)
  %250 = icmp sge i32 %249, %3
  %251 = or i1 %247, %250
  %252 = or i1 %251, %244
  br label %253

253:                                              ; preds = %237, %199
  %254 = phi i1 [ false, %199 ], [ %252, %237 ]
  %255 = zext i1 %254 to i32
  br label %256

256:                                              ; preds = %121, %160, %253, %112, %82, %82, %70, %74
  %257 = phi i32 [ 2, %74 ], [ 2, %70 ], [ 0, %82 ], [ 0, %82 ], [ %159, %121 ], [ %198, %160 ], [ %255, %253 ], [ 1, %112 ]
  %258 = mul nuw nsw i32 %257, 16843009
  %259 = getelementptr inbounds i8, ptr %0, i64 %63
  store i32 %258, ptr %259, align 4, !tbaa !72
  %260 = add nuw nsw i64 %63, 4
  %261 = icmp ult i64 %63, 12
  br i1 %261, label %62, label %270, !llvm.loop !77

262:                                              ; preds = %13
  %263 = icmp eq i32 %2, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %262, %29, %11
  %265 = load i32, ptr %4, align 8, !tbaa !78
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, i8 4, i8 3
  br label %268

268:                                              ; preds = %264, %262, %11
  %269 = phi i8 [ 3, %11 ], [ 3, %262 ], [ %267, %264 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 %269, i64 16, i1 false)
  br label %270

270:                                              ; preds = %256, %268
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaVer(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, ptr nocapture readnone %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = add i32 %4, 15
  %10 = icmp slt i32 %4, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 29
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %13, %11 ], [ %3, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %19 = load i16, ptr %18, align 8, !tbaa !80
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %390

21:                                               ; preds = %17, %14
  %22 = icmp eq i32 %0, 0
  %23 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %24 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66
  %25 = select i1 %22, ptr %24, ptr %23
  %26 = load i32, ptr %25, align 4, !tbaa !72
  %27 = getelementptr inbounds %struct.macroblock, ptr %15, i64 0, i32 14
  %28 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 14
  %29 = add i32 %0, -1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.macroblock, ptr %15, i64 0, i32 15, i64 %30
  %32 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 15, i64 %30
  %33 = select i1 %22, ptr %28, ptr %32
  %34 = select i1 %22, ptr %27, ptr %31
  %35 = load i32, ptr %34, align 4, !tbaa !72
  %36 = load i32, ptr %33, align 4, !tbaa !72
  %37 = add nsw i32 %36, %35
  %38 = add nsw i32 %37, 1
  %39 = ashr i32 %38, 1
  %40 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %41 = load i16, ptr %40, align 2, !tbaa !81
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %39, %42
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 51)
  %46 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %47 = load i16, ptr %46, align 4, !tbaa !82
  %48 = sext i16 %47 to i32
  %49 = add nsw i32 %39, %48
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 51)
  %52 = zext nneg i32 %45 to i64
  %53 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !83
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %26, %55
  %57 = zext nneg i32 %51 to i64
  %58 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !83
  %60 = zext i8 %59 to i32
  %61 = mul nsw i32 %26, %60
  %62 = or i32 %61, %56
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %390, label %64

64:                                               ; preds = %21
  %65 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %52
  %66 = zext i32 %0 to i64
  %67 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !72
  %69 = getelementptr inbounds %struct.macroblock, ptr %15, i64 0, i32 8
  %70 = load i32, ptr %69, align 4, !tbaa !66
  %71 = and i32 %9, 15
  %72 = add nsw i32 %70, %71
  %73 = getelementptr inbounds %struct.macroblock, ptr %15, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !65
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %1, i64 %75
  %77 = sext i32 %72 to i64
  %78 = ashr i32 %56, 2
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %72 to i64
  %81 = sext i32 %72 to i64
  br label %82

82:                                               ; preds = %64, %385
  %83 = phi ptr [ %2, %64 ], [ %387, %385 ]
  %84 = phi ptr [ %76, %64 ], [ %386, %385 ]
  %85 = phi i32 [ 0, %64 ], [ %388, %385 ]
  %86 = load i8, ptr %83, align 1, !tbaa !83
  switch i8 %86, label %213 [
    i8 4, label %87
    i8 0, label %383
  ]

87:                                               ; preds = %82, %210
  %88 = phi ptr [ %90, %210 ], [ %84, %82 ]
  %89 = phi i32 [ %211, %210 ], [ 0, %82 ]
  %90 = getelementptr inbounds ptr, ptr %88, i64 1
  %91 = load ptr, ptr %88, align 8, !tbaa !58
  %92 = getelementptr inbounds i16, ptr %91, i64 %77
  %93 = getelementptr inbounds i16, ptr %92, i64 1
  %94 = load i16, ptr %92, align 2, !tbaa !61
  %95 = load i16, ptr %93, align 2, !tbaa !61
  %96 = zext i16 %95 to i32
  %97 = zext i16 %94 to i32
  %98 = sub nsw i32 %96, %97
  %99 = tail call i32 @llvm.abs.i32(i32 %98, i1 true)
  %100 = icmp slt i32 %99, %56
  br i1 %100, label %101, label %210

101:                                              ; preds = %87
  %102 = getelementptr inbounds i16, ptr %92, i64 2
  %103 = load i16, ptr %102, align 2, !tbaa !61
  %104 = getelementptr inbounds i16, ptr %92, i64 -1
  %105 = zext i16 %103 to i32
  %106 = sub nsw i32 %96, %105
  %107 = tail call i32 @llvm.abs.i32(i32 %106, i1 true)
  %108 = icmp slt i32 %107, %61
  br i1 %108, label %109, label %210

109:                                              ; preds = %101
  %110 = load i16, ptr %104, align 2, !tbaa !61
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %97, %111
  %113 = tail call i32 @llvm.abs.i32(i32 %112, i1 true)
  %114 = icmp slt i32 %113, %61
  br i1 %114, label %115, label %210

115:                                              ; preds = %109
  %116 = icmp slt i32 %99, %79
  br i1 %116, label %117, label %194

117:                                              ; preds = %115
  %118 = getelementptr inbounds i16, ptr %92, i64 3
  %119 = load i16, ptr %118, align 2, !tbaa !61
  %120 = getelementptr inbounds i16, ptr %92, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !61
  %122 = add nuw nsw i32 %96, %97
  %123 = zext i16 %121 to i32
  %124 = sub nsw i32 %97, %123
  %125 = tail call i32 @llvm.abs.i32(i32 %124, i1 true)
  %126 = icmp slt i32 %125, %61
  br i1 %126, label %127, label %150

127:                                              ; preds = %117
  %128 = getelementptr inbounds i16, ptr %92, i64 -3
  %129 = load i16, ptr %128, align 2, !tbaa !61
  %130 = add nuw nsw i32 %122, %111
  %131 = shl nuw nsw i32 %130, 1
  %132 = add nuw nsw i32 %105, 4
  %133 = add nuw nsw i32 %132, %131
  %134 = add nuw nsw i32 %133, %123
  %135 = lshr i32 %134, 3
  %136 = trunc i32 %135 to i16
  store i16 %136, ptr %92, align 2, !tbaa !61
  %137 = add nuw nsw i32 %122, 2
  %138 = add nuw nsw i32 %137, %111
  %139 = add nuw nsw i32 %138, %123
  %140 = lshr i32 %139, 2
  %141 = trunc i32 %140 to i16
  store i16 %141, ptr %104, align 2, !tbaa !61
  %142 = zext i16 %129 to i32
  %143 = add nuw nsw i32 %142, %123
  %144 = shl nuw nsw i32 %143, 1
  %145 = add nuw nsw i32 %122, 4
  %146 = add nuw nsw i32 %145, %111
  %147 = add nuw nsw i32 %146, %123
  %148 = add nuw nsw i32 %147, %144
  %149 = lshr i32 %148, 3
  br label %156

150:                                              ; preds = %117
  %151 = shl nuw nsw i32 %111, 1
  %152 = add nuw nsw i32 %97, 2
  %153 = add nuw nsw i32 %152, %105
  %154 = add nuw nsw i32 %153, %151
  %155 = lshr i32 %154, 2
  br label %156

156:                                              ; preds = %150, %127
  %157 = phi i32 [ %155, %150 ], [ %149, %127 ]
  %158 = phi ptr [ %92, %150 ], [ %120, %127 ]
  %159 = trunc i32 %157 to i16
  store i16 %159, ptr %158, align 2, !tbaa !61
  %160 = zext i16 %119 to i32
  %161 = sub nsw i32 %96, %160
  %162 = tail call i32 @llvm.abs.i32(i32 %161, i1 true)
  %163 = icmp slt i32 %162, %61
  br i1 %163, label %164, label %188

164:                                              ; preds = %156
  %165 = getelementptr inbounds i16, ptr %92, i64 4
  %166 = load i16, ptr %165, align 2, !tbaa !61
  %167 = add nuw nsw i32 %122, %105
  %168 = shl nuw nsw i32 %167, 1
  %169 = add nuw nsw i32 %168, 4
  %170 = add nuw nsw i32 %169, %111
  %171 = add nuw nsw i32 %170, %160
  %172 = lshr i32 %171, 3
  %173 = trunc i32 %172 to i16
  store i16 %173, ptr %93, align 2, !tbaa !61
  %174 = add nuw nsw i32 %97, 2
  %175 = add nuw nsw i32 %174, %96
  %176 = add nuw nsw i32 %175, %105
  %177 = add nuw nsw i32 %176, %160
  %178 = lshr i32 %177, 2
  %179 = trunc i32 %178 to i16
  store i16 %179, ptr %102, align 2, !tbaa !61
  %180 = zext i16 %166 to i32
  %181 = add nuw nsw i32 %180, %160
  %182 = shl nuw nsw i32 %181, 1
  %183 = add nuw nsw i32 %122, 4
  %184 = add nuw nsw i32 %183, %105
  %185 = add nuw nsw i32 %184, %160
  %186 = add nuw nsw i32 %185, %182
  %187 = lshr i32 %186, 3
  br label %206

188:                                              ; preds = %156
  %189 = shl nuw nsw i32 %105, 1
  %190 = add nuw nsw i32 %96, 2
  %191 = add nuw nsw i32 %190, %189
  %192 = add nuw nsw i32 %191, %111
  %193 = lshr i32 %192, 2
  br label %206

194:                                              ; preds = %115
  %195 = shl nuw nsw i32 %111, 1
  %196 = add nuw nsw i32 %97, 2
  %197 = add nuw nsw i32 %196, %105
  %198 = add nuw nsw i32 %197, %195
  %199 = lshr i32 %198, 2
  %200 = trunc i32 %199 to i16
  store i16 %200, ptr %92, align 2, !tbaa !61
  %201 = shl nuw nsw i32 %105, 1
  %202 = add nuw nsw i32 %96, 2
  %203 = add nuw nsw i32 %202, %201
  %204 = add nuw nsw i32 %203, %111
  %205 = lshr i32 %204, 2
  br label %206

206:                                              ; preds = %164, %188, %194
  %207 = phi i32 [ %205, %194 ], [ %193, %188 ], [ %187, %164 ]
  %208 = phi ptr [ %93, %194 ], [ %93, %188 ], [ %118, %164 ]
  %209 = trunc i32 %207 to i16
  store i16 %209, ptr %208, align 2, !tbaa !61
  br label %210

210:                                              ; preds = %206, %101, %109, %87
  %211 = add nuw nsw i32 %89, 1
  %212 = icmp eq i32 %211, 4
  br i1 %212, label %385, label %87, !llvm.loop !84

213:                                              ; preds = %82
  %214 = zext i8 %86 to i64
  %215 = getelementptr inbounds i8, ptr %65, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !83
  %217 = zext i8 %216 to i32
  %218 = mul nsw i32 %26, %217
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = sub nsw i32 0, %218
  %222 = sub nsw i32 0, %218
  br label %288

223:                                              ; preds = %213, %285
  %224 = phi ptr [ %226, %285 ], [ %84, %213 ]
  %225 = phi i32 [ %286, %285 ], [ 0, %213 ]
  %226 = getelementptr inbounds ptr, ptr %224, i64 1
  %227 = load ptr, ptr %224, align 8, !tbaa !58
  %228 = getelementptr inbounds i16, ptr %227, i64 %81
  %229 = getelementptr inbounds i16, ptr %228, i64 1
  %230 = load i16, ptr %229, align 2, !tbaa !61
  %231 = zext i16 %230 to i32
  %232 = load i16, ptr %228, align 2, !tbaa !61
  %233 = zext i16 %232 to i32
  %234 = sub nsw i32 %231, %233
  %235 = tail call i32 @llvm.abs.i32(i32 %234, i1 true)
  %236 = icmp slt i32 %235, %56
  br i1 %236, label %237, label %285

237:                                              ; preds = %223
  %238 = getelementptr inbounds i16, ptr %228, i64 2
  %239 = load i16, ptr %238, align 2, !tbaa !61
  %240 = zext i16 %239 to i32
  %241 = sub nsw i32 %231, %240
  %242 = tail call i32 @llvm.abs.i32(i32 %241, i1 true)
  %243 = icmp slt i32 %242, %61
  br i1 %243, label %244, label %285

244:                                              ; preds = %237
  %245 = getelementptr inbounds i16, ptr %228, i64 -1
  %246 = load i16, ptr %245, align 2, !tbaa !61
  %247 = zext i16 %246 to i32
  %248 = sub nsw i32 %233, %247
  %249 = tail call i32 @llvm.abs.i32(i32 %248, i1 true)
  %250 = icmp slt i32 %249, %61
  br i1 %250, label %251, label %285

251:                                              ; preds = %244
  %252 = getelementptr inbounds i16, ptr %228, i64 3
  %253 = load i16, ptr %252, align 2, !tbaa !61
  %254 = getelementptr inbounds i16, ptr %228, i64 -2
  %255 = load i16, ptr %254, align 2, !tbaa !61
  %256 = zext i16 %253 to i32
  %257 = sub nsw i32 %231, %256
  %258 = tail call i32 @llvm.abs.i32(i32 %257, i1 true)
  %259 = icmp slt i32 %258, %61
  %260 = zext i1 %259 to i32
  %261 = zext i16 %255 to i32
  %262 = sub nsw i32 %233, %261
  %263 = tail call i32 @llvm.abs.i32(i32 %262, i1 true)
  %264 = icmp slt i32 %263, %61
  %265 = zext i1 %264 to i32
  %266 = add nuw nsw i32 %265, %260
  %267 = sub nsw i32 0, %266
  %268 = shl nsw i32 %234, 2
  %269 = add nsw i32 %268, 4
  %270 = sub nsw i32 %269, %240
  %271 = add nsw i32 %270, %247
  %272 = ashr i32 %271, 3
  %273 = tail call i32 @llvm.smax.i32(i32 %272, i32 %267)
  %274 = tail call i32 @llvm.smin.i32(i32 %273, i32 %266)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %251
  %277 = add nsw i32 %274, %233
  %278 = tail call i32 @llvm.smax.i32(i32 %277, i32 0)
  %279 = tail call i32 @llvm.smin.i32(i32 %278, i32 %68)
  %280 = trunc i32 %279 to i16
  store i16 %280, ptr %228, align 2, !tbaa !61
  %281 = sub nsw i32 %231, %274
  %282 = tail call i32 @llvm.smax.i32(i32 %281, i32 0)
  %283 = tail call i32 @llvm.smin.i32(i32 %282, i32 %68)
  %284 = trunc i32 %283 to i16
  store i16 %284, ptr %229, align 2, !tbaa !61
  br label %285

285:                                              ; preds = %237, %244, %276, %251, %223
  %286 = add nuw nsw i32 %225, 1
  %287 = icmp eq i32 %286, 4
  br i1 %287, label %385, label %223, !llvm.loop !85

288:                                              ; preds = %220, %380
  %289 = phi ptr [ %84, %220 ], [ %291, %380 ]
  %290 = phi i32 [ 0, %220 ], [ %381, %380 ]
  %291 = getelementptr inbounds ptr, ptr %289, i64 1
  %292 = load ptr, ptr %289, align 8, !tbaa !58
  %293 = getelementptr inbounds i16, ptr %292, i64 %80
  %294 = getelementptr inbounds i16, ptr %293, i64 1
  %295 = load i16, ptr %294, align 2, !tbaa !61
  %296 = zext i16 %295 to i32
  %297 = load i16, ptr %293, align 2, !tbaa !61
  %298 = zext i16 %297 to i32
  %299 = sub nsw i32 %296, %298
  %300 = tail call i32 @llvm.abs.i32(i32 %299, i1 true)
  %301 = icmp slt i32 %300, %56
  br i1 %301, label %302, label %380

302:                                              ; preds = %288
  %303 = getelementptr inbounds i16, ptr %293, i64 2
  %304 = getelementptr inbounds i16, ptr %293, i64 -1
  %305 = load i16, ptr %303, align 2, !tbaa !61
  %306 = zext i16 %305 to i32
  %307 = sub nsw i32 %296, %306
  %308 = tail call i32 @llvm.abs.i32(i32 %307, i1 true)
  %309 = icmp slt i32 %308, %61
  br i1 %309, label %310, label %380

310:                                              ; preds = %302
  %311 = load i16, ptr %304, align 2, !tbaa !61
  %312 = zext i16 %311 to i32
  %313 = sub nsw i32 %298, %312
  %314 = tail call i32 @llvm.abs.i32(i32 %313, i1 true)
  %315 = icmp slt i32 %314, %61
  br i1 %315, label %316, label %380

316:                                              ; preds = %310
  %317 = add nuw nsw i32 %296, 1
  %318 = add nuw nsw i32 %317, %298
  %319 = lshr i32 %318, 1
  %320 = getelementptr inbounds i16, ptr %293, i64 3
  %321 = load i16, ptr %320, align 2, !tbaa !61
  %322 = getelementptr inbounds i16, ptr %293, i64 -2
  %323 = load i16, ptr %322, align 2, !tbaa !61
  %324 = zext i16 %321 to i32
  %325 = sub nsw i32 %296, %324
  %326 = tail call i32 @llvm.abs.i32(i32 %325, i1 true)
  %327 = icmp slt i32 %326, %61
  %328 = zext i1 %327 to i32
  %329 = zext i16 %323 to i32
  %330 = sub nsw i32 %298, %329
  %331 = tail call i32 @llvm.abs.i32(i32 %330, i1 true)
  %332 = icmp slt i32 %331, %61
  %333 = zext i1 %332 to i32
  %334 = add i32 %218, %328
  %335 = add i32 %334, %333
  %336 = sub nsw i32 0, %335
  %337 = shl nsw i32 %299, 2
  %338 = add nsw i32 %337, 4
  %339 = sub nsw i32 %338, %306
  %340 = add nsw i32 %339, %312
  %341 = ashr i32 %340, 3
  %342 = tail call i32 @llvm.smax.i32(i32 %341, i32 %336)
  %343 = tail call i32 @llvm.smin.i32(i32 %342, i32 %335)
  br i1 %332, label %344, label %353

344:                                              ; preds = %316
  %345 = shl nuw nsw i32 %312, 1
  %346 = sub nsw i32 %319, %345
  %347 = add nsw i32 %346, %329
  %348 = ashr i32 %347, 1
  %349 = tail call i32 @llvm.smax.i32(i32 %348, i32 %221)
  %350 = tail call i32 @llvm.smin.i32(i32 %349, i32 %218)
  %351 = trunc i32 %350 to i16
  %352 = add i16 %311, %351
  store i16 %352, ptr %304, align 2, !tbaa !61
  br label %353

353:                                              ; preds = %344, %316
  %354 = icmp eq i32 %343, 0
  br i1 %354, label %368, label %355

355:                                              ; preds = %353
  %356 = load i16, ptr %293, align 2, !tbaa !61
  %357 = zext i16 %356 to i32
  %358 = add nsw i32 %343, %357
  %359 = tail call i32 @llvm.smax.i32(i32 %358, i32 0)
  %360 = tail call i32 @llvm.smin.i32(i32 %359, i32 %68)
  %361 = trunc i32 %360 to i16
  store i16 %361, ptr %293, align 2, !tbaa !61
  %362 = load i16, ptr %294, align 2, !tbaa !61
  %363 = zext i16 %362 to i32
  %364 = sub nsw i32 %363, %343
  %365 = tail call i32 @llvm.smax.i32(i32 %364, i32 0)
  %366 = tail call i32 @llvm.smin.i32(i32 %365, i32 %68)
  %367 = trunc i32 %366 to i16
  store i16 %367, ptr %294, align 2, !tbaa !61
  br label %368

368:                                              ; preds = %355, %353
  br i1 %327, label %369, label %380

369:                                              ; preds = %368
  %370 = add nuw nsw i32 %319, %324
  %371 = load i16, ptr %303, align 2, !tbaa !61
  %372 = zext i16 %371 to i32
  %373 = shl nuw nsw i32 %372, 1
  %374 = sub nsw i32 %370, %373
  %375 = ashr i32 %374, 1
  %376 = tail call i32 @llvm.smax.i32(i32 %375, i32 %222)
  %377 = tail call i32 @llvm.smin.i32(i32 %376, i32 %218)
  %378 = trunc i32 %377 to i16
  %379 = add i16 %371, %378
  store i16 %379, ptr %303, align 2, !tbaa !61
  br label %380

380:                                              ; preds = %302, %310, %369, %368, %288
  %381 = add nuw nsw i32 %290, 1
  %382 = icmp eq i32 %381, 4
  br i1 %382, label %385, label %288, !llvm.loop !86

383:                                              ; preds = %82
  %384 = getelementptr inbounds ptr, ptr %84, i64 4
  br label %385

385:                                              ; preds = %210, %380, %285, %383
  %386 = phi ptr [ %384, %383 ], [ %226, %285 ], [ %291, %380 ], [ %90, %210 ]
  %387 = getelementptr inbounds i8, ptr %83, i64 4
  %388 = add nuw nsw i32 %85, 4
  %389 = icmp ult i32 %85, 12
  br i1 %389, label %82, label %390, !llvm.loop !87

390:                                              ; preds = %385, %21, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaHor(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = icmp slt i32 %4, 16
  %10 = add nsw i32 %4, -1
  %11 = select i1 %9, i32 %10, i32 0
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 28
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %15, %13 ], [ %3, %6 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 42
  %21 = load i16, ptr %20, align 8, !tbaa !80
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %408

23:                                               ; preds = %19, %16
  %24 = icmp eq i32 %0, 0
  %25 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %26 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66
  %27 = select i1 %24, ptr %26, ptr %25
  %28 = load i32, ptr %27, align 4, !tbaa !72
  %29 = getelementptr inbounds %struct.macroblock, ptr %17, i64 0, i32 14
  %30 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 14
  %31 = add i32 %0, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.macroblock, ptr %17, i64 0, i32 15, i64 %32
  %34 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 15, i64 %32
  %35 = select i1 %24, ptr %30, ptr %34
  %36 = select i1 %24, ptr %29, ptr %33
  %37 = load i32, ptr %36, align 4, !tbaa !72
  %38 = load i32, ptr %35, align 4, !tbaa !72
  %39 = add nsw i32 %38, %37
  %40 = add nsw i32 %39, 1
  %41 = ashr i32 %40, 1
  %42 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 43
  %43 = load i16, ptr %42, align 2, !tbaa !81
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %41, %44
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0)
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 51)
  %48 = getelementptr inbounds %struct.macroblock, ptr %3, i64 0, i32 44
  %49 = load i16, ptr %48, align 4, !tbaa !82
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %41, %50
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0)
  %53 = tail call i32 @llvm.smin.i32(i32 %52, i32 51)
  %54 = zext nneg i32 %47 to i64
  %55 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !83
  %57 = zext i8 %56 to i32
  %58 = mul nsw i32 %28, %57
  %59 = zext nneg i32 %53 to i64
  %60 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !83
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 %28, %62
  %64 = or i32 %63, %58
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %408, label %66

66:                                               ; preds = %23
  %67 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %54
  %68 = zext i32 %0 to i64
  %69 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !72
  %71 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 67
  %72 = load i32, ptr %71, align 4, !tbaa !88
  %73 = getelementptr inbounds %struct.macroblock, ptr %17, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !65
  %75 = and i32 %11, 15
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !58
  %80 = getelementptr inbounds %struct.macroblock, ptr %17, i64 0, i32 8
  %81 = load i32, ptr %80, align 4, !tbaa !66
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, ptr %79, i64 %82
  %84 = sext i32 %72 to i64
  %85 = getelementptr inbounds i16, ptr %83, i64 %84
  %86 = shl nsw i32 %72, 1
  %87 = mul nsw i32 %72, 3
  %88 = sub nsw i64 0, %84
  %89 = ashr i32 %58, 2
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %86 to i64
  %92 = sub nsw i64 0, %91
  %93 = sext i32 %87 to i64
  %94 = sub nsw i64 0, %93
  %95 = sext i32 %87 to i64
  %96 = sub nsw i64 0, %84
  %97 = sub nsw i64 0, %84
  br label %98

98:                                               ; preds = %66, %402
  %99 = phi ptr [ %2, %66 ], [ %405, %402 ]
  %100 = phi ptr [ %83, %66 ], [ %404, %402 ]
  %101 = phi ptr [ %85, %66 ], [ %403, %402 ]
  %102 = phi i32 [ 0, %66 ], [ %406, %402 ]
  %103 = load i8, ptr %99, align 1, !tbaa !83
  switch i8 %103, label %229 [
    i8 4, label %104
    i8 0, label %399
  ]

104:                                              ; preds = %98, %226
  %105 = phi ptr [ %108, %226 ], [ %100, %98 ]
  %106 = phi ptr [ %109, %226 ], [ %101, %98 ]
  %107 = phi i32 [ %227, %226 ], [ 0, %98 ]
  %108 = getelementptr inbounds i16, ptr %105, i64 1
  %109 = getelementptr inbounds i16, ptr %106, i64 1
  %110 = load i16, ptr %105, align 2, !tbaa !61
  %111 = load i16, ptr %106, align 2, !tbaa !61
  %112 = zext i16 %111 to i32
  %113 = zext i16 %110 to i32
  %114 = sub nsw i32 %112, %113
  %115 = tail call i32 @llvm.abs.i32(i32 %114, i1 true)
  %116 = icmp slt i32 %115, %58
  br i1 %116, label %117, label %226

117:                                              ; preds = %104
  %118 = getelementptr inbounds i16, ptr %105, i64 %88
  %119 = getelementptr inbounds i16, ptr %106, i64 %84
  %120 = load i16, ptr %119, align 2, !tbaa !61
  %121 = zext i16 %120 to i32
  %122 = sub nsw i32 %112, %121
  %123 = tail call i32 @llvm.abs.i32(i32 %122, i1 true)
  %124 = icmp slt i32 %123, %63
  br i1 %124, label %125, label %226

125:                                              ; preds = %117
  %126 = load i16, ptr %118, align 2, !tbaa !61
  %127 = zext i16 %126 to i32
  %128 = sub nsw i32 %113, %127
  %129 = tail call i32 @llvm.abs.i32(i32 %128, i1 true)
  %130 = icmp slt i32 %129, %63
  br i1 %130, label %131, label %226

131:                                              ; preds = %125
  %132 = icmp slt i32 %115, %90
  br i1 %132, label %133, label %213

133:                                              ; preds = %131
  %134 = getelementptr inbounds i16, ptr %105, i64 %92
  %135 = load i16, ptr %134, align 2, !tbaa !61
  %136 = getelementptr inbounds i16, ptr %106, i64 %91
  %137 = load i16, ptr %136, align 2, !tbaa !61
  %138 = add nuw nsw i32 %112, %113
  %139 = zext i16 %135 to i32
  %140 = sub nsw i32 %113, %139
  %141 = tail call i32 @llvm.abs.i32(i32 %140, i1 true)
  %142 = icmp slt i32 %141, %63
  br i1 %142, label %143, label %168

143:                                              ; preds = %133
  %144 = getelementptr inbounds i16, ptr %105, i64 %94
  %145 = load i16, ptr %144, align 2, !tbaa !61
  %146 = add nuw nsw i32 %138, %127
  %147 = shl nuw nsw i32 %146, 1
  %148 = add nuw nsw i32 %121, 4
  %149 = add nuw nsw i32 %148, %147
  %150 = add nuw nsw i32 %149, %139
  %151 = lshr i32 %150, 3
  %152 = trunc i32 %151 to i16
  store i16 %152, ptr %105, align 2, !tbaa !61
  %153 = add nuw nsw i32 %138, 2
  %154 = add nuw nsw i32 %153, %127
  %155 = add nuw nsw i32 %154, %139
  %156 = lshr i32 %155, 2
  %157 = trunc i32 %156 to i16
  store i16 %157, ptr %118, align 2, !tbaa !61
  %158 = zext i16 %145 to i32
  %159 = add nuw nsw i32 %158, %139
  %160 = shl nuw nsw i32 %159, 1
  %161 = add nuw nsw i32 %138, 4
  %162 = add nuw nsw i32 %161, %127
  %163 = add nuw nsw i32 %162, %139
  %164 = add nuw nsw i32 %163, %160
  %165 = lshr i32 %164, 3
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds i16, ptr %118, i64 %88
  store i16 %166, ptr %167, align 2, !tbaa !61
  br label %175

168:                                              ; preds = %133
  %169 = shl nuw nsw i32 %127, 1
  %170 = add nuw nsw i32 %113, 2
  %171 = add nuw nsw i32 %170, %121
  %172 = add nuw nsw i32 %171, %169
  %173 = lshr i32 %172, 2
  %174 = trunc i32 %173 to i16
  store i16 %174, ptr %105, align 2, !tbaa !61
  br label %175

175:                                              ; preds = %168, %143
  %176 = zext i16 %137 to i32
  %177 = sub nsw i32 %112, %176
  %178 = tail call i32 @llvm.abs.i32(i32 %177, i1 true)
  %179 = icmp slt i32 %178, %63
  br i1 %179, label %180, label %206

180:                                              ; preds = %175
  %181 = getelementptr inbounds i16, ptr %106, i64 %95
  %182 = load i16, ptr %181, align 2, !tbaa !61
  %183 = add nuw nsw i32 %138, %121
  %184 = shl nuw nsw i32 %183, 1
  %185 = add nuw nsw i32 %184, 4
  %186 = add nuw nsw i32 %185, %127
  %187 = add nuw nsw i32 %186, %176
  %188 = lshr i32 %187, 3
  %189 = trunc i32 %188 to i16
  store i16 %189, ptr %106, align 2, !tbaa !61
  %190 = add nuw nsw i32 %113, 2
  %191 = add nuw nsw i32 %190, %112
  %192 = add nuw nsw i32 %191, %121
  %193 = add nuw nsw i32 %192, %176
  %194 = lshr i32 %193, 2
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %119, align 2, !tbaa !61
  %196 = zext i16 %182 to i32
  %197 = add nuw nsw i32 %196, %176
  %198 = shl nuw nsw i32 %197, 1
  %199 = add nuw nsw i32 %138, 4
  %200 = add nuw nsw i32 %199, %121
  %201 = add nuw nsw i32 %200, %176
  %202 = add nuw nsw i32 %201, %198
  %203 = lshr i32 %202, 3
  %204 = trunc i32 %203 to i16
  %205 = getelementptr inbounds i16, ptr %119, i64 %84
  store i16 %204, ptr %205, align 2, !tbaa !61
  br label %226

206:                                              ; preds = %175
  %207 = shl nuw nsw i32 %121, 1
  %208 = add nuw nsw i32 %112, 2
  %209 = add nuw nsw i32 %208, %207
  %210 = add nuw nsw i32 %209, %127
  %211 = lshr i32 %210, 2
  %212 = trunc i32 %211 to i16
  store i16 %212, ptr %106, align 2, !tbaa !61
  br label %226

213:                                              ; preds = %131
  %214 = shl nuw nsw i32 %127, 1
  %215 = add nuw nsw i32 %113, 2
  %216 = add nuw nsw i32 %215, %121
  %217 = add nuw nsw i32 %216, %214
  %218 = lshr i32 %217, 2
  %219 = trunc i32 %218 to i16
  store i16 %219, ptr %105, align 2, !tbaa !61
  %220 = shl nuw nsw i32 %121, 1
  %221 = add nuw nsw i32 %112, 2
  %222 = add nuw nsw i32 %221, %220
  %223 = add nuw nsw i32 %222, %127
  %224 = lshr i32 %223, 2
  %225 = trunc i32 %224 to i16
  store i16 %225, ptr %106, align 2, !tbaa !61
  br label %226

226:                                              ; preds = %117, %125, %213, %206, %180, %104
  %227 = add nuw nsw i32 %107, 1
  %228 = icmp eq i32 %227, 4
  br i1 %228, label %402, label %104, !llvm.loop !89

229:                                              ; preds = %98
  %230 = zext i8 %103 to i64
  %231 = getelementptr inbounds i8, ptr %67, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !83
  %233 = zext i8 %232 to i32
  %234 = mul nsw i32 %28, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %229
  %237 = sub nsw i32 0, %234
  %238 = sub nsw i32 0, %234
  br label %305

239:                                              ; preds = %229, %302
  %240 = phi ptr [ %243, %302 ], [ %100, %229 ]
  %241 = phi ptr [ %244, %302 ], [ %101, %229 ]
  %242 = phi i32 [ %303, %302 ], [ 0, %229 ]
  %243 = getelementptr inbounds i16, ptr %240, i64 1
  %244 = getelementptr inbounds i16, ptr %241, i64 1
  %245 = load i16, ptr %241, align 2, !tbaa !61
  %246 = zext i16 %245 to i32
  %247 = load i16, ptr %240, align 2, !tbaa !61
  %248 = zext i16 %247 to i32
  %249 = sub nsw i32 %246, %248
  %250 = tail call i32 @llvm.abs.i32(i32 %249, i1 true)
  %251 = icmp slt i32 %250, %58
  br i1 %251, label %252, label %302

252:                                              ; preds = %239
  %253 = getelementptr inbounds i16, ptr %241, i64 %84
  %254 = getelementptr inbounds i16, ptr %240, i64 %97
  %255 = load i16, ptr %253, align 2, !tbaa !61
  %256 = zext i16 %255 to i32
  %257 = sub nsw i32 %246, %256
  %258 = tail call i32 @llvm.abs.i32(i32 %257, i1 true)
  %259 = icmp slt i32 %258, %63
  br i1 %259, label %260, label %302

260:                                              ; preds = %252
  %261 = load i16, ptr %254, align 2, !tbaa !61
  %262 = zext i16 %261 to i32
  %263 = sub nsw i32 %248, %262
  %264 = tail call i32 @llvm.abs.i32(i32 %263, i1 true)
  %265 = icmp slt i32 %264, %63
  br i1 %265, label %266, label %302

266:                                              ; preds = %260
  %267 = getelementptr inbounds i16, ptr %253, i64 %84
  %268 = load i16, ptr %267, align 2, !tbaa !61
  %269 = getelementptr inbounds i16, ptr %254, i64 %97
  %270 = load i16, ptr %269, align 2, !tbaa !61
  %271 = zext i16 %268 to i32
  %272 = sub nsw i32 %246, %271
  %273 = tail call i32 @llvm.abs.i32(i32 %272, i1 true)
  %274 = icmp slt i32 %273, %63
  %275 = zext i1 %274 to i32
  %276 = zext i16 %270 to i32
  %277 = sub nsw i32 %248, %276
  %278 = tail call i32 @llvm.abs.i32(i32 %277, i1 true)
  %279 = icmp slt i32 %278, %63
  %280 = zext i1 %279 to i32
  %281 = add nuw nsw i32 %280, %275
  %282 = sub nsw i32 0, %281
  %283 = shl nsw i32 %249, 2
  %284 = add nsw i32 %283, 4
  %285 = sub nsw i32 %284, %256
  %286 = add nsw i32 %285, %262
  %287 = ashr i32 %286, 3
  %288 = tail call i32 @llvm.smax.i32(i32 %287, i32 %282)
  %289 = tail call i32 @llvm.smin.i32(i32 %288, i32 %281)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %302, label %291

291:                                              ; preds = %266
  %292 = add nsw i32 %289, %248
  %293 = tail call i32 @llvm.smax.i32(i32 %292, i32 0)
  %294 = tail call i32 @llvm.smin.i32(i32 %293, i32 %70)
  %295 = trunc i32 %294 to i16
  store i16 %295, ptr %240, align 2, !tbaa !61
  %296 = load i16, ptr %241, align 2, !tbaa !61
  %297 = zext i16 %296 to i32
  %298 = sub nsw i32 %297, %289
  %299 = tail call i32 @llvm.smax.i32(i32 %298, i32 0)
  %300 = tail call i32 @llvm.smin.i32(i32 %299, i32 %70)
  %301 = trunc i32 %300 to i16
  store i16 %301, ptr %241, align 2, !tbaa !61
  br label %302

302:                                              ; preds = %252, %260, %291, %266, %239
  %303 = add nuw nsw i32 %242, 1
  %304 = icmp eq i32 %303, 4
  br i1 %304, label %402, label %239, !llvm.loop !90

305:                                              ; preds = %236, %396
  %306 = phi ptr [ %100, %236 ], [ %309, %396 ]
  %307 = phi ptr [ %101, %236 ], [ %310, %396 ]
  %308 = phi i32 [ 0, %236 ], [ %397, %396 ]
  %309 = getelementptr inbounds i16, ptr %306, i64 1
  %310 = getelementptr inbounds i16, ptr %307, i64 1
  %311 = load i16, ptr %307, align 2, !tbaa !61
  %312 = zext i16 %311 to i32
  %313 = load i16, ptr %306, align 2, !tbaa !61
  %314 = zext i16 %313 to i32
  %315 = sub nsw i32 %312, %314
  %316 = tail call i32 @llvm.abs.i32(i32 %315, i1 true)
  %317 = icmp slt i32 %316, %58
  br i1 %317, label %318, label %396

318:                                              ; preds = %305
  %319 = getelementptr inbounds i16, ptr %307, i64 %84
  %320 = getelementptr inbounds i16, ptr %306, i64 %96
  %321 = load i16, ptr %319, align 2, !tbaa !61
  %322 = zext i16 %321 to i32
  %323 = sub nsw i32 %312, %322
  %324 = tail call i32 @llvm.abs.i32(i32 %323, i1 true)
  %325 = icmp slt i32 %324, %63
  br i1 %325, label %326, label %396

326:                                              ; preds = %318
  %327 = load i16, ptr %320, align 2, !tbaa !61
  %328 = zext i16 %327 to i32
  %329 = sub nsw i32 %314, %328
  %330 = tail call i32 @llvm.abs.i32(i32 %329, i1 true)
  %331 = icmp slt i32 %330, %63
  br i1 %331, label %332, label %396

332:                                              ; preds = %326
  %333 = add nuw nsw i32 %312, 1
  %334 = add nuw nsw i32 %333, %314
  %335 = lshr i32 %334, 1
  %336 = getelementptr inbounds i16, ptr %319, i64 %84
  %337 = load i16, ptr %336, align 2, !tbaa !61
  %338 = getelementptr inbounds i16, ptr %320, i64 %96
  %339 = load i16, ptr %338, align 2, !tbaa !61
  %340 = zext i16 %337 to i32
  %341 = sub nsw i32 %312, %340
  %342 = tail call i32 @llvm.abs.i32(i32 %341, i1 true)
  %343 = icmp slt i32 %342, %63
  %344 = zext i1 %343 to i32
  %345 = zext i16 %339 to i32
  %346 = sub nsw i32 %314, %345
  %347 = tail call i32 @llvm.abs.i32(i32 %346, i1 true)
  %348 = icmp slt i32 %347, %63
  %349 = zext i1 %348 to i32
  %350 = add i32 %234, %344
  %351 = add i32 %350, %349
  %352 = sub nsw i32 0, %351
  %353 = shl nsw i32 %315, 2
  %354 = add nsw i32 %353, 4
  %355 = sub nsw i32 %354, %322
  %356 = add nsw i32 %355, %328
  %357 = ashr i32 %356, 3
  %358 = tail call i32 @llvm.smax.i32(i32 %357, i32 %352)
  %359 = tail call i32 @llvm.smin.i32(i32 %358, i32 %351)
  br i1 %348, label %360, label %369

360:                                              ; preds = %332
  %361 = shl nuw nsw i32 %328, 1
  %362 = sub nsw i32 %335, %361
  %363 = add nsw i32 %362, %345
  %364 = ashr i32 %363, 1
  %365 = tail call i32 @llvm.smax.i32(i32 %364, i32 %237)
  %366 = tail call i32 @llvm.smin.i32(i32 %365, i32 %234)
  %367 = trunc i32 %366 to i16
  %368 = add i16 %327, %367
  store i16 %368, ptr %320, align 2, !tbaa !61
  br label %369

369:                                              ; preds = %360, %332
  %370 = icmp eq i32 %359, 0
  br i1 %370, label %384, label %371

371:                                              ; preds = %369
  %372 = load i16, ptr %306, align 2, !tbaa !61
  %373 = zext i16 %372 to i32
  %374 = add nsw i32 %359, %373
  %375 = tail call i32 @llvm.smax.i32(i32 %374, i32 0)
  %376 = tail call i32 @llvm.smin.i32(i32 %375, i32 %70)
  %377 = trunc i32 %376 to i16
  store i16 %377, ptr %306, align 2, !tbaa !61
  %378 = load i16, ptr %307, align 2, !tbaa !61
  %379 = zext i16 %378 to i32
  %380 = sub nsw i32 %379, %359
  %381 = tail call i32 @llvm.smax.i32(i32 %380, i32 0)
  %382 = tail call i32 @llvm.smin.i32(i32 %381, i32 %70)
  %383 = trunc i32 %382 to i16
  store i16 %383, ptr %307, align 2, !tbaa !61
  br label %384

384:                                              ; preds = %371, %369
  br i1 %343, label %385, label %396

385:                                              ; preds = %384
  %386 = add nuw nsw i32 %335, %340
  %387 = load i16, ptr %319, align 2, !tbaa !61
  %388 = zext i16 %387 to i32
  %389 = shl nuw nsw i32 %388, 1
  %390 = sub nsw i32 %386, %389
  %391 = ashr i32 %390, 1
  %392 = tail call i32 @llvm.smax.i32(i32 %391, i32 %238)
  %393 = tail call i32 @llvm.smin.i32(i32 %392, i32 %234)
  %394 = trunc i32 %393 to i16
  %395 = add i16 %387, %394
  store i16 %395, ptr %319, align 2, !tbaa !61
  br label %396

396:                                              ; preds = %318, %326, %385, %384, %305
  %397 = add nuw nsw i32 %308, 1
  %398 = icmp eq i32 %397, 4
  br i1 %398, label %402, label %305, !llvm.loop !91

399:                                              ; preds = %98
  %400 = getelementptr inbounds i16, ptr %100, i64 4
  %401 = getelementptr inbounds i16, ptr %101, i64 4
  br label %402

402:                                              ; preds = %226, %396, %302, %399
  %403 = phi ptr [ %401, %399 ], [ %244, %302 ], [ %310, %396 ], [ %109, %226 ]
  %404 = phi ptr [ %400, %399 ], [ %243, %302 ], [ %309, %396 ], [ %108, %226 ]
  %405 = getelementptr inbounds i8, ptr %99, i64 4
  %406 = add nuw nsw i32 %102, 4
  %407 = icmp ult i32 %102, 12
  br i1 %407, label %98, label %408, !llvm.loop !92

408:                                              ; preds = %402, %23, %19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopChromaVer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 77
  %10 = load i32, ptr %9, align 4, !tbaa !93
  %11 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 78
  %12 = load i32, ptr %11, align 8, !tbaa !94
  %13 = add nsw i32 %3, -1
  %14 = icmp slt i32 %3, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %6
  %16 = icmp sgt i32 %12, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 29
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  br label %25

20:                                               ; preds = %6
  %21 = icmp slt i32 %10, %3
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = icmp sgt i32 %12, 0
  %24 = select i1 %23, ptr %2, ptr null
  br label %25

25:                                               ; preds = %15, %17, %20, %22
  %26 = phi ptr [ %19, %17 ], [ null, %15 ], [ %24, %22 ], [ null, %20 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 42
  %30 = load i16, ptr %29, align 8, !tbaa !80
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %173

32:                                               ; preds = %28, %25
  %33 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !72
  %35 = add nsw i32 %4, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !72
  %39 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %40 = load i16, ptr %39, align 2, !tbaa !81
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %43 = load i16, ptr %42, align 4, !tbaa !82
  %44 = sext i16 %43 to i32
  %45 = sext i32 %4 to i64
  %46 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 15, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !72
  %48 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 15, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !72
  %50 = add i32 %47, 1
  %51 = add i32 %50, %49
  %52 = ashr i32 %51, 1
  %53 = add nsw i32 %52, %41
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0)
  %55 = tail call i32 @llvm.smin.i32(i32 %54, i32 51)
  %56 = add nsw i32 %52, %44
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0)
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 51)
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !83
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 %34, %62
  %64 = zext nneg i32 %58 to i64
  %65 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !83
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 %34, %67
  %69 = or i32 %68, %63
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %173, label %71

71:                                               ; preds = %32
  %72 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %73 = load i32, ptr %72, align 4, !tbaa !95
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !72
  %77 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %59
  %78 = icmp sgt i32 %76, 0
  br i1 %78, label %79, label %173

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 11
  %81 = load i32, ptr %80, align 8, !tbaa !96
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %0, i64 %82
  %84 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 10
  %85 = load i32, ptr %84, align 4, !tbaa !97
  %86 = add nsw i32 %10, -1
  %87 = and i32 %86, %13
  %88 = add nsw i32 %85, %87
  %89 = icmp eq i32 %76, 8
  %90 = sext i32 %88 to i64
  br label %91

91:                                               ; preds = %79, %169
  %92 = phi i32 [ 0, %79 ], [ %171, %169 ]
  %93 = phi ptr [ %83, %79 ], [ %170, %169 ]
  %94 = shl nuw i32 %92, 1
  %95 = and i32 %94, -4
  %96 = and i32 %92, 1
  %97 = or disjoint i32 %95, %96
  %98 = select i1 %89, i32 %97, i32 %92
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %1, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !83
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %169, label %103

103:                                              ; preds = %91
  %104 = load ptr, ptr %93, align 8, !tbaa !58
  %105 = getelementptr inbounds i16, ptr %104, i64 %90
  %106 = getelementptr inbounds i16, ptr %105, i64 1
  %107 = load i16, ptr %106, align 2, !tbaa !61
  %108 = zext i16 %107 to i32
  %109 = load i16, ptr %105, align 2, !tbaa !61
  %110 = zext i16 %109 to i32
  %111 = sub nsw i32 %108, %110
  %112 = tail call i32 @llvm.abs.i32(i32 %111, i1 true)
  %113 = icmp slt i32 %112, %63
  br i1 %113, label %114, label %169

114:                                              ; preds = %103
  %115 = getelementptr inbounds i16, ptr %105, i64 2
  %116 = load i16, ptr %115, align 2, !tbaa !61
  %117 = zext i16 %116 to i32
  %118 = sub nsw i32 %108, %117
  %119 = tail call i32 @llvm.abs.i32(i32 %118, i1 true)
  %120 = icmp slt i32 %119, %68
  br i1 %120, label %121, label %169

121:                                              ; preds = %114
  %122 = getelementptr inbounds i16, ptr %105, i64 -1
  %123 = load i16, ptr %122, align 2, !tbaa !61
  %124 = zext i16 %123 to i32
  %125 = sub nsw i32 %110, %124
  %126 = tail call i32 @llvm.abs.i32(i32 %125, i1 true)
  %127 = icmp slt i32 %126, %68
  br i1 %127, label %128, label %169

128:                                              ; preds = %121
  %129 = icmp eq i8 %101, 4
  br i1 %129, label %130, label %142

130:                                              ; preds = %128
  %131 = shl nuw nsw i32 %124, 1
  %132 = add nuw nsw i32 %110, 2
  %133 = add nuw nsw i32 %132, %117
  %134 = add nuw nsw i32 %133, %131
  %135 = lshr i32 %134, 2
  %136 = trunc i32 %135 to i16
  store i16 %136, ptr %105, align 2, !tbaa !61
  %137 = shl nuw nsw i32 %117, 1
  %138 = add nuw nsw i32 %108, 2
  %139 = add nuw nsw i32 %138, %137
  %140 = add nuw nsw i32 %139, %124
  %141 = lshr i32 %140, 2
  br label %166

142:                                              ; preds = %128
  %143 = zext i8 %101 to i64
  %144 = getelementptr inbounds i8, ptr %77, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !83
  %146 = zext i8 %145 to i32
  %147 = mul nsw i32 %34, %146
  %148 = shl nsw i32 %111, 2
  %149 = add nsw i32 %117, -5
  %150 = add nsw i32 %148, %124
  %151 = sub nsw i32 %149, %150
  %152 = ashr i32 %151, 3
  %153 = tail call i32 @llvm.smin.i32(i32 %147, i32 %152)
  %154 = sub i32 -2, %147
  %155 = tail call i32 @llvm.smax.i32(i32 %153, i32 %154)
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %169, label %157

157:                                              ; preds = %142
  %158 = xor i32 %155, -1
  %159 = add nsw i32 %158, %110
  %160 = tail call i32 @llvm.smax.i32(i32 %159, i32 0)
  %161 = tail call i32 @llvm.smin.i32(i32 %160, i32 %38)
  %162 = trunc i32 %161 to i16
  store i16 %162, ptr %105, align 2, !tbaa !61
  %163 = sub nsw i32 %108, %158
  %164 = tail call i32 @llvm.smax.i32(i32 %163, i32 0)
  %165 = tail call i32 @llvm.smin.i32(i32 %164, i32 %38)
  br label %166

166:                                              ; preds = %157, %130
  %167 = phi i32 [ %141, %130 ], [ %165, %157 ]
  %168 = trunc i32 %167 to i16
  store i16 %168, ptr %106, align 2, !tbaa !61
  br label %169

169:                                              ; preds = %166, %103, %121, %142, %114, %91
  %170 = getelementptr inbounds ptr, ptr %93, i64 1
  %171 = add nuw nsw i32 %92, 1
  %172 = icmp eq i32 %171, %76
  br i1 %172, label %173, label %91, !llvm.loop !98

173:                                              ; preds = %169, %71, %32, %28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopChromaHor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 77
  %10 = load i32, ptr %9, align 4, !tbaa !93
  %11 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 78
  %12 = load i32, ptr %11, align 8, !tbaa !94
  %13 = icmp slt i32 %3, 16
  %14 = add nsw i32 %3, -1
  %15 = select i1 %13, i32 %14, i32 0
  %16 = icmp sgt i32 %10, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = icmp slt i32 %15, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 28
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  br label %25

22:                                               ; preds = %17
  %23 = icmp slt i32 %15, %12
  %24 = select i1 %23, ptr %2, ptr null
  br label %25

25:                                               ; preds = %6, %19, %22
  %26 = phi ptr [ %21, %19 ], [ %24, %22 ], [ null, %6 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 42
  %30 = load i16, ptr %29, align 8, !tbaa !80
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %183

32:                                               ; preds = %28, %25
  %33 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 66, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !72
  %35 = add nsw i32 %4, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !72
  %39 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 43
  %40 = load i16, ptr %39, align 2, !tbaa !81
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 44
  %43 = load i16, ptr %42, align 4, !tbaa !82
  %44 = sext i16 %43 to i32
  %45 = sext i32 %4 to i64
  %46 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 15, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !72
  %48 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 15, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !72
  %50 = add i32 %47, 1
  %51 = add i32 %50, %49
  %52 = ashr i32 %51, 1
  %53 = add nsw i32 %52, %41
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0)
  %55 = tail call i32 @llvm.smin.i32(i32 %54, i32 51)
  %56 = add nsw i32 %52, %44
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0)
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 51)
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !83
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 %34, %62
  %64 = zext nneg i32 %58 to i64
  %65 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !83
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 %34, %67
  %69 = or i32 %68, %63
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %183, label %71

71:                                               ; preds = %32
  %72 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 68
  %73 = load i32, ptr %72, align 8, !tbaa !99
  %74 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 48
  %75 = load i32, ptr %74, align 4, !tbaa !95
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x [4 x i32]], ptr @pelnum_cr, i64 0, i64 1, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !72
  %79 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %59
  %80 = sext i32 %73 to i64
  %81 = icmp sgt i32 %78, 0
  br i1 %81, label %82, label %183

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 11
  %84 = load i32, ptr %83, align 8, !tbaa !96
  %85 = add nsw i32 %12, -1
  %86 = and i32 %85, %15
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !58
  %91 = getelementptr inbounds %struct.macroblock, ptr %26, i64 0, i32 10
  %92 = load i32, ptr %91, align 4, !tbaa !97
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, ptr %90, i64 %93
  %95 = getelementptr inbounds i16, ptr %94, i64 %80
  %96 = icmp eq i32 %78, 8
  %97 = sub nsw i64 0, %80
  br label %98

98:                                               ; preds = %82, %178
  %99 = phi i32 [ 0, %82 ], [ %181, %178 ]
  %100 = phi ptr [ %94, %82 ], [ %179, %178 ]
  %101 = phi ptr [ %95, %82 ], [ %180, %178 ]
  %102 = shl nuw i32 %99, 1
  %103 = and i32 %102, -4
  %104 = and i32 %99, 1
  %105 = or disjoint i32 %103, %104
  %106 = select i1 %96, i32 %105, i32 %99
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %1, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !83
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %178, label %111

111:                                              ; preds = %98
  %112 = load i16, ptr %101, align 2, !tbaa !61
  %113 = zext i16 %112 to i32
  %114 = load i16, ptr %100, align 2, !tbaa !61
  %115 = zext i16 %114 to i32
  %116 = sub nsw i32 %113, %115
  %117 = tail call i32 @llvm.abs.i32(i32 %116, i1 true)
  %118 = icmp slt i32 %117, %63
  br i1 %118, label %119, label %178

119:                                              ; preds = %111
  %120 = getelementptr inbounds i16, ptr %101, i64 %80
  %121 = load i16, ptr %120, align 2, !tbaa !61
  %122 = zext i16 %121 to i32
  %123 = sub nsw i32 %113, %122
  %124 = tail call i32 @llvm.abs.i32(i32 %123, i1 true)
  %125 = icmp slt i32 %124, %68
  br i1 %125, label %126, label %178

126:                                              ; preds = %119
  %127 = getelementptr inbounds i16, ptr %100, i64 %97
  %128 = load i16, ptr %127, align 2, !tbaa !61
  %129 = zext i16 %128 to i32
  %130 = sub nsw i32 %115, %129
  %131 = tail call i32 @llvm.abs.i32(i32 %130, i1 true)
  %132 = icmp slt i32 %131, %68
  br i1 %132, label %133, label %178

133:                                              ; preds = %126
  %134 = icmp eq i8 %109, 4
  br i1 %134, label %135, label %149

135:                                              ; preds = %133
  %136 = shl nuw nsw i32 %129, 1
  %137 = add nuw nsw i32 %115, 2
  %138 = add nuw nsw i32 %137, %122
  %139 = add nuw nsw i32 %138, %136
  %140 = lshr i32 %139, 2
  %141 = trunc i32 %140 to i16
  store i16 %141, ptr %100, align 2, !tbaa !61
  %142 = shl nuw nsw i32 %122, 1
  %143 = load i16, ptr %101, align 2, !tbaa !61
  %144 = zext i16 %143 to i32
  %145 = add nuw nsw i32 %142, 2
  %146 = add nuw nsw i32 %145, %129
  %147 = add nuw nsw i32 %146, %144
  %148 = lshr i32 %147, 2
  br label %175

149:                                              ; preds = %133
  %150 = zext i8 %109 to i64
  %151 = getelementptr inbounds i8, ptr %79, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !83
  %153 = zext i8 %152 to i32
  %154 = mul nsw i32 %34, %153
  %155 = shl nsw i32 %116, 2
  %156 = add nsw i32 %122, -5
  %157 = add nsw i32 %155, %129
  %158 = sub nsw i32 %156, %157
  %159 = ashr i32 %158, 3
  %160 = tail call i32 @llvm.smin.i32(i32 %154, i32 %159)
  %161 = sub i32 -2, %154
  %162 = tail call i32 @llvm.smax.i32(i32 %160, i32 %161)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %178, label %164

164:                                              ; preds = %149
  %165 = xor i32 %162, -1
  %166 = add nsw i32 %165, %115
  %167 = tail call i32 @llvm.smax.i32(i32 %166, i32 0)
  %168 = tail call i32 @llvm.smin.i32(i32 %167, i32 %38)
  %169 = trunc i32 %168 to i16
  store i16 %169, ptr %100, align 2, !tbaa !61
  %170 = load i16, ptr %101, align 2, !tbaa !61
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 %171, %165
  %173 = tail call i32 @llvm.smax.i32(i32 %172, i32 0)
  %174 = tail call i32 @llvm.smin.i32(i32 %173, i32 %38)
  br label %175

175:                                              ; preds = %164, %135
  %176 = phi i32 [ %148, %135 ], [ %174, %164 ]
  %177 = trunc i32 %176 to i16
  store i16 %177, ptr %101, align 2, !tbaa !61
  br label %178

178:                                              ; preds = %175, %111, %126, %149, %119, %98
  %179 = getelementptr inbounds i16, ptr %100, i64 1
  %180 = getelementptr inbounds i16, ptr %101, i64 1
  %181 = add nuw nsw i32 %99, 1
  %182 = icmp eq i32 %181, %78
  br i1 %182, label %183, label %98, !llvm.loop !100

183:                                              ; preds = %178, %71, %32, %28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!50 = !{!51, !36, i64 0}
!51 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !52, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !40, i64 108, !37, i64 110, !37, i64 111, !40, i64 112, !40, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !40, i64 376, !40, i64 378, !40, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!52 = !{!"", !40, i64 0, !40, i64 2}
!53 = !{!54, !39, i64 164}
!54 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !40, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !55, i64 1188, !40, i64 1220, !40, i64 1222, !40, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !40, i64 13272, !40, i64 13274, !40, i64 13276, !40, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !40, i64 13304, !40, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!55 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!56 = !{!51, !39, i64 96}
!57 = !{!51, !36, i64 144}
!58 = !{!36, !36, i64 0}
!59 = !{!51, !39, i64 24}
!60 = !{i64 0, i64 2, !61, i64 2, i64 2, !61}
!61 = !{!40, !40, i64 0}
!62 = !{i64 0, i64 2, !61}
!63 = !{!44, !44, i64 0}
!64 = !{!51, !40, i64 152}
!65 = !{!51, !39, i64 48}
!66 = !{!51, !39, i64 44}
!67 = !{!68, !36, i64 152}
!68 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !40, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !69, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!69 = !{!"pic_motion_params_old", !36, i64 0}
!70 = !{!52, !40, i64 0}
!71 = !{!52, !40, i64 2}
!72 = !{!39, !39, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!51, !36, i64 136}
!77 = distinct !{!77, !74, !75}
!78 = !{!68, !39, i64 0}
!79 = !{!51, !36, i64 8}
!80 = !{!51, !40, i64 376}
!81 = !{!51, !40, i64 378}
!82 = !{!51, !40, i64 380}
!83 = !{!37, !37, i64 0}
!84 = distinct !{!84, !74, !75}
!85 = distinct !{!85, !74, !75}
!86 = distinct !{!86, !74, !75}
!87 = distinct !{!87, !74, !75}
!88 = !{!68, !39, i64 356}
!89 = distinct !{!89, !74, !75}
!90 = distinct !{!90, !74, !75}
!91 = distinct !{!91, !74, !75}
!92 = distinct !{!92, !74, !75}
!93 = !{!35, !39, i64 849108}
!94 = !{!35, !39, i64 849112}
!95 = !{!68, !39, i64 268}
!96 = !{!51, !39, i64 56}
!97 = !{!51, !39, i64 52}
!98 = distinct !{!98, !74, !75}
!99 = !{!68, !39, i64 360}
!100 = distinct !{!100, !74, !75}
