; ModuleID = 'ldecod_src/intra4x4_pred_mbaff.c'
source_filename = "ldecod_src/intra4x4_pred_mbaff.c"
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }

@.str = private unnamed_addr constant [46 x i8] c"Error: illegal intra_4x4 prediction mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: Intra_4x4_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"warning: Intra_4x4_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"warning: Intra_4x4_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"warning: Intra_4x4_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"warning: Intra_4x4_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"warning: Intra_4x4_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @intra4x4_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x %struct.pix_pos], align 16
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = alloca [4 x %struct.pix_pos], align 16
  %11 = alloca %struct.pix_pos, align 4
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca [4 x %struct.pix_pos], align 16
  %14 = alloca %struct.pix_pos, align 4
  %15 = alloca %struct.pix_pos, align 4
  %16 = alloca %struct.pix_pos, align 4
  %17 = alloca %struct.pix_pos, align 4
  %18 = alloca [4 x %struct.pix_pos], align 16
  %19 = alloca %struct.pix_pos, align 4
  %20 = alloca %struct.pix_pos, align 4
  %21 = alloca [4 x %struct.pix_pos], align 16
  %22 = alloca %struct.pix_pos, align 4
  %23 = alloca [4 x %struct.pix_pos], align 16
  %24 = alloca %struct.pix_pos, align 4
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 27
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = sext i32 %5 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = sext i32 %4 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !49
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %34, ptr %35, align 4, !tbaa !50
  switch i8 %34, label %1720 [
    i8 2, label %36
    i8 0, label %232
    i8 1, label %308
    i8 4, label %405
    i8 3, label %657
    i8 5, label %847
    i8 7, label %1097
    i8 8, label %1291
    i8 6, label %1461
  ]

36:                                               ; preds = %6
  %37 = load ptr, ptr %0, align 8, !tbaa !51
  %38 = icmp eq i32 %1, 0
  %39 = getelementptr inbounds %struct.slice, ptr %37, i64 0, i32 125
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  br i1 %38, label %47, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 33
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = add i32 %1, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  br label %49

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 32
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %46, %41 ], [ %48, %47 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #4
  %52 = getelementptr inbounds %struct.slice, ptr %37, i64 0, i32 77
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = zext i32 %1 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %58 = add nsw i32 %2, -1
  %59 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  %60 = sext i32 %3 to i64
  br label %61

61:                                               ; preds = %49, %61
  %62 = phi i64 [ 0, %49 ], [ %67, %61 ]
  %63 = load ptr, ptr %57, align 8, !tbaa !59
  %64 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 %62
  %65 = trunc i64 %62 to i32
  %66 = add i32 %65, %3
  call void %63(ptr noundef nonnull %0, i32 noundef %58, i32 noundef %66, ptr noundef nonnull %59, ptr noundef nonnull %64) #4
  %67 = add nuw nsw i64 %62, 1
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %69, label %61, !llvm.loop !60

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %71 = load ptr, ptr %70, align 8, !tbaa !59
  %72 = add nsw i32 %3, -1
  %73 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %71(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %72, ptr noundef nonnull %73, ptr noundef nonnull %24) #4
  %74 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !63
  %76 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %75, i64 0, i32 30
  %77 = load i32, ptr %76, align 4, !tbaa !64
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.slice, ptr %37, i64 0, i32 128
  br label %81

81:                                               ; preds = %79, %95
  %82 = phi i64 [ 0, %79 ], [ %98, %95 ]
  %83 = phi i32 [ 1, %79 ], [ %97, %95 ]
  %84 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 %82
  %85 = load i32, ptr %84, align 16, !tbaa !66
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %80, align 8, !tbaa !68
  %89 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 %82, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !69
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %88, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !49
  %94 = sext i8 %93 to i32
  br label %95

95:                                               ; preds = %87, %81
  %96 = phi i32 [ %94, %87 ], [ 0, %81 ]
  %97 = and i32 %96, %83
  %98 = add nuw nsw i64 %82, 1
  %99 = icmp eq i64 %98, 4
  br i1 %99, label %100, label %81, !llvm.loop !70

100:                                              ; preds = %95
  %101 = load i32, ptr %24, align 4, !tbaa !66
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.slice, ptr %37, i64 0, i32 128
  %105 = load ptr, ptr %104, align 8, !tbaa !68
  %106 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !69
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %105, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !49
  %111 = sext i8 %110 to i32
  br label %115

112:                                              ; preds = %69
  %113 = load i32, ptr %23, align 16, !tbaa !66
  %114 = load i32, ptr %24, align 4, !tbaa !66
  br label %115

115:                                              ; preds = %112, %103, %100
  %116 = phi i32 [ %114, %112 ], [ %111, %103 ], [ 0, %100 ]
  %117 = phi i32 [ %113, %112 ], [ %97, %103 ], [ %97, %100 ]
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 5
  %121 = load i16, ptr %120, align 2, !tbaa !71
  %122 = sext i16 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %51, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !48
  %125 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 4
  %126 = load i16, ptr %125, align 4, !tbaa !72
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds i16, ptr %124, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !73
  %130 = zext i16 %129 to i32
  %131 = getelementptr i16, ptr %128, i64 1
  %132 = load i16, ptr %131, align 2, !tbaa !73
  %133 = zext i16 %132 to i32
  %134 = add nuw nsw i32 %133, %130
  %135 = getelementptr i16, ptr %128, i64 2
  %136 = load i16, ptr %135, align 2, !tbaa !73
  %137 = zext i16 %136 to i32
  %138 = add nuw nsw i32 %134, %137
  %139 = getelementptr i16, ptr %128, i64 3
  %140 = load i16, ptr %139, align 2, !tbaa !73
  %141 = zext i16 %140 to i32
  %142 = add nuw nsw i32 %138, %141
  br label %143

143:                                              ; preds = %119, %115
  %144 = phi i32 [ %142, %119 ], [ 0, %115 ]
  %145 = icmp ne i32 %117, 0
  br i1 %145, label %146, label %195

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 5
  %148 = load i16, ptr %147, align 2, !tbaa !71
  %149 = sext i16 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %51, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !48
  %152 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 4
  %153 = load i16, ptr %152, align 4, !tbaa !72
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds i16, ptr %151, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !73
  %157 = zext i16 %156 to i32
  %158 = add nuw nsw i32 %144, %157
  %159 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 1, i32 5
  %160 = load i16, ptr %159, align 2, !tbaa !71
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %51, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 1, i32 4
  %165 = load i16, ptr %164, align 4, !tbaa !72
  %166 = sext i16 %165 to i64
  %167 = getelementptr inbounds i16, ptr %163, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !73
  %169 = zext i16 %168 to i32
  %170 = add nuw nsw i32 %158, %169
  %171 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 2, i32 5
  %172 = load i16, ptr %171, align 2, !tbaa !71
  %173 = sext i16 %172 to i64
  %174 = getelementptr inbounds ptr, ptr %51, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !48
  %176 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 2, i32 4
  %177 = load i16, ptr %176, align 4, !tbaa !72
  %178 = sext i16 %177 to i64
  %179 = getelementptr inbounds i16, ptr %175, i64 %178
  %180 = load i16, ptr %179, align 2, !tbaa !73
  %181 = zext i16 %180 to i32
  %182 = add nuw nsw i32 %170, %181
  %183 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 3, i32 5
  %184 = load i16, ptr %183, align 2, !tbaa !71
  %185 = sext i16 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %51, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !48
  %188 = getelementptr inbounds [4 x %struct.pix_pos], ptr %23, i64 0, i64 3, i32 4
  %189 = load i16, ptr %188, align 4, !tbaa !72
  %190 = sext i16 %189 to i64
  %191 = getelementptr inbounds i16, ptr %187, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !73
  %193 = zext i16 %192 to i32
  %194 = add nuw nsw i32 %182, %193
  br label %195

195:                                              ; preds = %146, %143
  %196 = phi i32 [ %194, %146 ], [ %144, %143 ]
  %197 = and i1 %118, %145
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = add nuw nsw i32 %196, 4
  %200 = lshr i32 %199, 3
  br label %215

201:                                              ; preds = %195
  %202 = icmp eq i32 %116, 0
  %203 = and i1 %202, %145
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = add nuw nsw i32 %196, 2
  %206 = lshr i32 %205, 2
  br label %215

207:                                              ; preds = %201
  %208 = or i1 %202, %145
  br i1 %208, label %212, label %209

209:                                              ; preds = %207
  %210 = add nuw nsw i32 %196, 2
  %211 = lshr i32 %210, 2
  br label %215

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 69, i64 %54
  %214 = load i32, ptr %213, align 4, !tbaa !74
  br label %215

215:                                              ; preds = %212, %209, %204, %198
  %216 = phi i32 [ %200, %198 ], [ %206, %204 ], [ %214, %212 ], [ %211, %209 ]
  %217 = trunc i32 %216 to i16
  %218 = sext i32 %2 to i64
  %219 = add nsw i32 %3, 3
  %220 = sext i32 %219 to i64
  br label %221

221:                                              ; preds = %215, %221
  %222 = phi i64 [ %60, %215 ], [ %229, %221 ]
  %223 = getelementptr inbounds ptr, ptr %56, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !48
  %225 = getelementptr inbounds i16, ptr %224, i64 %218
  store i16 %217, ptr %225, align 2, !tbaa !73
  %226 = getelementptr i16, ptr %225, i64 1
  store i16 %217, ptr %226, align 2, !tbaa !73
  %227 = getelementptr i16, ptr %225, i64 2
  store i16 %217, ptr %227, align 2, !tbaa !73
  %228 = getelementptr i16, ptr %225, i64 3
  store i16 %217, ptr %228, align 2, !tbaa !73
  %229 = add nsw i64 %222, 1
  %230 = icmp slt i64 %222, %220
  br i1 %230, label %221, label %231, !llvm.loop !75

231:                                              ; preds = %221
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #4
  br label %1723

232:                                              ; preds = %6
  %233 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #4
  %234 = add nsw i32 %3, -1
  %235 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %234, ptr noundef nonnull %235, ptr noundef nonnull %22) #4
  %236 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !63
  %238 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %237, i64 0, i32 30
  %239 = load i32, ptr %238, align 4, !tbaa !64
  %240 = icmp eq i32 %239, 0
  %241 = load i32, ptr %22, align 4, !tbaa !66
  br i1 %240, label %253, label %242

242:                                              ; preds = %232
  %243 = icmp eq i32 %241, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.slice, ptr %233, i64 0, i32 128
  %246 = load ptr, ptr %245, align 8, !tbaa !68
  %247 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 1
  %248 = load i32, ptr %247, align 4, !tbaa !69
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, ptr %246, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !49
  %252 = sext i8 %251 to i32
  br label %253

253:                                              ; preds = %232, %244, %242
  %254 = phi i32 [ %252, %244 ], [ 0, %242 ], [ %241, %232 ]
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.slice, ptr %233, i64 0, i32 20
  %258 = load i32, ptr %257, align 4, !tbaa !76
  %259 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %258)
  br label %307

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.slice, ptr %233, i64 0, i32 77
  %262 = load ptr, ptr %261, align 8, !tbaa !58
  %263 = zext i32 %1 to i64
  %264 = getelementptr inbounds ptr, ptr %262, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !48
  %266 = icmp eq i32 %1, 0
  %267 = getelementptr inbounds %struct.slice, ptr %233, i64 0, i32 125
  %268 = load ptr, ptr %267, align 8, !tbaa !52
  br i1 %266, label %275, label %269

269:                                              ; preds = %260
  %270 = getelementptr inbounds %struct.storable_picture, ptr %268, i64 0, i32 33
  %271 = load ptr, ptr %270, align 8, !tbaa !55
  %272 = add i32 %1, -1
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds ptr, ptr %271, i64 %273
  br label %277

275:                                              ; preds = %260
  %276 = getelementptr inbounds %struct.storable_picture, ptr %268, i64 0, i32 32
  br label %277

277:                                              ; preds = %275, %269
  %278 = phi ptr [ %276, %275 ], [ %274, %269 ]
  %279 = load ptr, ptr %278, align 8, !tbaa !48
  %280 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 5
  %281 = load i16, ptr %280, align 2, !tbaa !71
  %282 = sext i16 %281 to i64
  %283 = getelementptr inbounds ptr, ptr %279, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !48
  %285 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 4
  %286 = load i16, ptr %285, align 4, !tbaa !72
  %287 = sext i16 %286 to i64
  %288 = getelementptr inbounds i16, ptr %284, i64 %287
  %289 = sext i32 %3 to i64
  %290 = getelementptr inbounds ptr, ptr %265, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !48
  %292 = sext i32 %2 to i64
  %293 = getelementptr inbounds i16, ptr %291, i64 %292
  %294 = load i64, ptr %288, align 2
  store i64 %294, ptr %293, align 2
  %295 = getelementptr ptr, ptr %290, i64 1
  %296 = load ptr, ptr %295, align 8, !tbaa !48
  %297 = getelementptr inbounds i16, ptr %296, i64 %292
  %298 = load i64, ptr %288, align 2
  store i64 %298, ptr %297, align 2
  %299 = getelementptr ptr, ptr %290, i64 2
  %300 = load ptr, ptr %299, align 8, !tbaa !48
  %301 = getelementptr inbounds i16, ptr %300, i64 %292
  %302 = load i64, ptr %288, align 2
  store i64 %302, ptr %301, align 2
  %303 = getelementptr ptr, ptr %290, i64 3
  %304 = load ptr, ptr %303, align 8, !tbaa !48
  %305 = getelementptr inbounds i16, ptr %304, i64 %292
  %306 = load i64, ptr %288, align 2
  store i64 %306, ptr %305, align 2
  br label %307

307:                                              ; preds = %256, %277
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #4
  br label %1723

308:                                              ; preds = %6
  %309 = load ptr, ptr %0, align 8, !tbaa !51
  %310 = icmp eq i32 %1, 0
  %311 = getelementptr inbounds %struct.slice, ptr %309, i64 0, i32 125
  %312 = load ptr, ptr %311, align 8, !tbaa !52
  br i1 %310, label %319, label %313

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.storable_picture, ptr %312, i64 0, i32 33
  %315 = load ptr, ptr %314, align 8, !tbaa !55
  %316 = add i32 %1, -1
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds ptr, ptr %315, i64 %317
  br label %321

319:                                              ; preds = %308
  %320 = getelementptr inbounds %struct.storable_picture, ptr %312, i64 0, i32 32
  br label %321

321:                                              ; preds = %319, %313
  %322 = phi ptr [ %318, %313 ], [ %320, %319 ]
  %323 = load ptr, ptr %322, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #4
  %324 = getelementptr inbounds %struct.slice, ptr %309, i64 0, i32 77
  %325 = load ptr, ptr %324, align 8, !tbaa !58
  %326 = zext i32 %1 to i64
  %327 = getelementptr inbounds ptr, ptr %325, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !48
  %329 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %330 = add nsw i32 %2, -1
  %331 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  br label %332

332:                                              ; preds = %321, %332
  %333 = phi i64 [ 0, %321 ], [ %338, %332 ]
  %334 = load ptr, ptr %329, align 8, !tbaa !59
  %335 = getelementptr inbounds [4 x %struct.pix_pos], ptr %21, i64 0, i64 %333
  %336 = trunc i64 %333 to i32
  %337 = add i32 %336, %3
  call void %334(ptr noundef nonnull %0, i32 noundef %330, i32 noundef %337, ptr noundef nonnull %331, ptr noundef nonnull %335) #4
  %338 = add nuw nsw i64 %333, 1
  %339 = icmp eq i64 %338, 4
  br i1 %339, label %340, label %332, !llvm.loop !77

340:                                              ; preds = %332
  %341 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !63
  %343 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %342, i64 0, i32 30
  %344 = load i32, ptr %343, align 4, !tbaa !64
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %367, label %346

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.slice, ptr %309, i64 0, i32 128
  br label %348

348:                                              ; preds = %346, %362
  %349 = phi i64 [ 0, %346 ], [ %365, %362 ]
  %350 = phi i32 [ 1, %346 ], [ %364, %362 ]
  %351 = getelementptr inbounds [4 x %struct.pix_pos], ptr %21, i64 0, i64 %349
  %352 = load i32, ptr %351, align 16, !tbaa !66
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %362, label %354

354:                                              ; preds = %348
  %355 = load ptr, ptr %347, align 8, !tbaa !68
  %356 = getelementptr inbounds [4 x %struct.pix_pos], ptr %21, i64 0, i64 %349, i32 1
  %357 = load i32, ptr %356, align 4, !tbaa !69
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, ptr %355, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !49
  %361 = sext i8 %360 to i32
  br label %362

362:                                              ; preds = %354, %348
  %363 = phi i32 [ %361, %354 ], [ 0, %348 ]
  %364 = and i32 %363, %350
  %365 = add nuw nsw i64 %349, 1
  %366 = icmp eq i64 %365, 4
  br i1 %366, label %369, label %348, !llvm.loop !78

367:                                              ; preds = %340
  %368 = load i32, ptr %21, align 16, !tbaa !66
  br label %369

369:                                              ; preds = %362, %367
  %370 = phi i32 [ %368, %367 ], [ %364, %362 ]
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.slice, ptr %309, i64 0, i32 20
  %374 = load i32, ptr %373, align 4, !tbaa !76
  %375 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %374)
  br label %376

376:                                              ; preds = %372, %369
  %377 = sext i32 %2 to i64
  %378 = sext i32 %3 to i64
  %379 = getelementptr ptr, ptr %328, i64 %378
  %380 = add nsw i32 %2, 3
  %381 = sext i32 %380 to i64
  br label %382

382:                                              ; preds = %376, %401
  %383 = phi i64 [ 0, %376 ], [ %402, %401 ]
  %384 = getelementptr ptr, ptr %379, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !48
  %386 = getelementptr inbounds [4 x %struct.pix_pos], ptr %21, i64 0, i64 %383, i32 5
  %387 = load i16, ptr %386, align 2, !tbaa !71
  %388 = sext i16 %387 to i64
  %389 = getelementptr inbounds ptr, ptr %323, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !48
  %391 = getelementptr inbounds [4 x %struct.pix_pos], ptr %21, i64 0, i64 %383, i32 4
  %392 = load i16, ptr %391, align 4, !tbaa !72
  %393 = sext i16 %392 to i64
  %394 = getelementptr inbounds i16, ptr %390, i64 %393
  %395 = load i16, ptr %394, align 2, !tbaa !73
  br label %396

396:                                              ; preds = %382, %396
  %397 = phi i64 [ %377, %382 ], [ %399, %396 ]
  %398 = getelementptr inbounds i16, ptr %385, i64 %397
  store i16 %395, ptr %398, align 2, !tbaa !73
  %399 = add nsw i64 %397, 1
  %400 = icmp slt i64 %397, %381
  br i1 %400, label %396, label %401, !llvm.loop !79

401:                                              ; preds = %396
  %402 = add nuw nsw i64 %383, 1
  %403 = icmp eq i64 %402, 4
  br i1 %403, label %404, label %382, !llvm.loop !80

404:                                              ; preds = %401
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #4
  br label %1723

405:                                              ; preds = %6
  %406 = load ptr, ptr %0, align 8, !tbaa !51
  %407 = icmp eq i32 %1, 0
  %408 = getelementptr inbounds %struct.slice, ptr %406, i64 0, i32 125
  %409 = load ptr, ptr %408, align 8, !tbaa !52
  br i1 %407, label %416, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.storable_picture, ptr %409, i64 0, i32 33
  %412 = load ptr, ptr %411, align 8, !tbaa !55
  %413 = add i32 %1, -1
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds ptr, ptr %412, i64 %414
  br label %418

416:                                              ; preds = %405
  %417 = getelementptr inbounds %struct.storable_picture, ptr %409, i64 0, i32 32
  br label %418

418:                                              ; preds = %416, %410
  %419 = phi ptr [ %415, %410 ], [ %417, %416 ]
  %420 = load ptr, ptr %419, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #4
  %421 = getelementptr inbounds %struct.slice, ptr %406, i64 0, i32 77
  %422 = load ptr, ptr %421, align 8, !tbaa !58
  %423 = zext i32 %1 to i64
  %424 = getelementptr inbounds ptr, ptr %422, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !48
  %426 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %427 = add nsw i32 %2, -1
  %428 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  br label %429

429:                                              ; preds = %418, %429
  %430 = phi i64 [ 0, %418 ], [ %435, %429 ]
  %431 = load ptr, ptr %426, align 8, !tbaa !59
  %432 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 %430
  %433 = trunc i64 %430 to i32
  %434 = add i32 %433, %3
  call void %431(ptr noundef nonnull %0, i32 noundef %427, i32 noundef %434, ptr noundef nonnull %428, ptr noundef nonnull %432) #4
  %435 = add nuw nsw i64 %430, 1
  %436 = icmp eq i64 %435, 4
  br i1 %436, label %437, label %429, !llvm.loop !81

437:                                              ; preds = %429
  %438 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %439 = load ptr, ptr %438, align 8, !tbaa !59
  %440 = add nsw i32 %3, -1
  %441 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %439(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %440, ptr noundef nonnull %441, ptr noundef nonnull %19) #4
  %442 = load ptr, ptr %438, align 8, !tbaa !59
  %443 = add nsw i32 %2, -1
  call void %442(ptr noundef nonnull %0, i32 noundef %443, i32 noundef %440, ptr noundef nonnull %441, ptr noundef nonnull %20) #4
  %444 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !63
  %446 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %445, i64 0, i32 30
  %447 = load i32, ptr %446, align 4, !tbaa !64
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %495, label %449

449:                                              ; preds = %437
  %450 = getelementptr inbounds %struct.slice, ptr %406, i64 0, i32 128
  br label %451

451:                                              ; preds = %449, %465
  %452 = phi i64 [ 0, %449 ], [ %468, %465 ]
  %453 = phi i32 [ 1, %449 ], [ %467, %465 ]
  %454 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 %452
  %455 = load i32, ptr %454, align 16, !tbaa !66
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %465, label %457

457:                                              ; preds = %451
  %458 = load ptr, ptr %450, align 8, !tbaa !68
  %459 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 %452, i32 1
  %460 = load i32, ptr %459, align 4, !tbaa !69
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, ptr %458, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !49
  %464 = sext i8 %463 to i32
  br label %465

465:                                              ; preds = %457, %451
  %466 = phi i32 [ %464, %457 ], [ 0, %451 ]
  %467 = and i32 %466, %453
  %468 = add nuw nsw i64 %452, 1
  %469 = icmp eq i64 %468, 4
  br i1 %469, label %470, label %451, !llvm.loop !82

470:                                              ; preds = %465
  %471 = load i32, ptr %19, align 4, !tbaa !66
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %482, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct.slice, ptr %406, i64 0, i32 128
  %475 = load ptr, ptr %474, align 8, !tbaa !68
  %476 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 1
  %477 = load i32, ptr %476, align 4, !tbaa !69
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, ptr %475, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !49
  %481 = sext i8 %480 to i32
  br label %482

482:                                              ; preds = %473, %470
  %483 = phi i32 [ %481, %473 ], [ 0, %470 ]
  %484 = load i32, ptr %20, align 4, !tbaa !66
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %499, label %486

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.slice, ptr %406, i64 0, i32 128
  %488 = load ptr, ptr %487, align 8, !tbaa !68
  %489 = getelementptr inbounds %struct.pix_pos, ptr %20, i64 0, i32 1
  %490 = load i32, ptr %489, align 4, !tbaa !69
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8, ptr %488, i64 %491
  %493 = load i8, ptr %492, align 1, !tbaa !49
  %494 = sext i8 %493 to i32
  br label %499

495:                                              ; preds = %437
  %496 = load i32, ptr %18, align 16, !tbaa !66
  %497 = load i32, ptr %19, align 4, !tbaa !66
  %498 = load i32, ptr %20, align 4, !tbaa !66
  br label %499

499:                                              ; preds = %495, %486, %482
  %500 = phi i32 [ %498, %495 ], [ %494, %486 ], [ 0, %482 ]
  %501 = phi i32 [ %496, %495 ], [ %467, %486 ], [ %467, %482 ]
  %502 = phi i32 [ %497, %495 ], [ %483, %486 ], [ %483, %482 ]
  %503 = icmp ne i32 %502, 0
  %504 = icmp ne i32 %501, 0
  %505 = select i1 %503, i1 %504, i1 false
  %506 = icmp ne i32 %500, 0
  %507 = select i1 %505, i1 %506, i1 false
  br i1 %507, label %512, label %508

508:                                              ; preds = %499
  %509 = getelementptr inbounds %struct.slice, ptr %406, i64 0, i32 20
  %510 = load i32, ptr %509, align 4, !tbaa !76
  %511 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %510)
  br label %656

512:                                              ; preds = %499
  %513 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 5
  %514 = load i16, ptr %513, align 2, !tbaa !71
  %515 = sext i16 %514 to i64
  %516 = getelementptr inbounds ptr, ptr %420, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !48
  %518 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 4
  %519 = load i16, ptr %518, align 4, !tbaa !72
  %520 = sext i16 %519 to i64
  %521 = getelementptr inbounds i16, ptr %517, i64 %520
  %522 = getelementptr inbounds i16, ptr %521, i64 1
  %523 = load i16, ptr %521, align 2, !tbaa !73
  %524 = getelementptr inbounds i16, ptr %521, i64 2
  %525 = load i16, ptr %522, align 2, !tbaa !73
  %526 = getelementptr inbounds i16, ptr %521, i64 3
  %527 = load i16, ptr %524, align 2, !tbaa !73
  %528 = load i16, ptr %526, align 2, !tbaa !73
  %529 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 5
  %530 = load i16, ptr %529, align 2, !tbaa !71
  %531 = sext i16 %530 to i64
  %532 = getelementptr inbounds ptr, ptr %420, i64 %531
  %533 = load ptr, ptr %532, align 8, !tbaa !48
  %534 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 4
  %535 = load i16, ptr %534, align 4, !tbaa !72
  %536 = sext i16 %535 to i64
  %537 = getelementptr inbounds i16, ptr %533, i64 %536
  %538 = load i16, ptr %537, align 2, !tbaa !73
  %539 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 1, i32 5
  %540 = load i16, ptr %539, align 2, !tbaa !71
  %541 = sext i16 %540 to i64
  %542 = getelementptr inbounds ptr, ptr %420, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !48
  %544 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 1, i32 4
  %545 = load i16, ptr %544, align 4, !tbaa !72
  %546 = sext i16 %545 to i64
  %547 = getelementptr inbounds i16, ptr %543, i64 %546
  %548 = load i16, ptr %547, align 2, !tbaa !73
  %549 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 2, i32 5
  %550 = load i16, ptr %549, align 2, !tbaa !71
  %551 = sext i16 %550 to i64
  %552 = getelementptr inbounds ptr, ptr %420, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !48
  %554 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 2, i32 4
  %555 = load i16, ptr %554, align 4, !tbaa !72
  %556 = sext i16 %555 to i64
  %557 = getelementptr inbounds i16, ptr %553, i64 %556
  %558 = load i16, ptr %557, align 2, !tbaa !73
  %559 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 3, i32 5
  %560 = load i16, ptr %559, align 2, !tbaa !71
  %561 = sext i16 %560 to i64
  %562 = getelementptr inbounds ptr, ptr %420, i64 %561
  %563 = load ptr, ptr %562, align 8, !tbaa !48
  %564 = getelementptr inbounds [4 x %struct.pix_pos], ptr %18, i64 0, i64 3, i32 4
  %565 = load i16, ptr %564, align 4, !tbaa !72
  %566 = sext i16 %565 to i64
  %567 = getelementptr inbounds i16, ptr %563, i64 %566
  %568 = load i16, ptr %567, align 2, !tbaa !73
  %569 = getelementptr inbounds %struct.pix_pos, ptr %20, i64 0, i32 5
  %570 = load i16, ptr %569, align 2, !tbaa !71
  %571 = sext i16 %570 to i64
  %572 = getelementptr inbounds ptr, ptr %420, i64 %571
  %573 = load ptr, ptr %572, align 8, !tbaa !48
  %574 = getelementptr inbounds %struct.pix_pos, ptr %20, i64 0, i32 4
  %575 = load i16, ptr %574, align 4, !tbaa !72
  %576 = sext i16 %575 to i64
  %577 = getelementptr inbounds i16, ptr %573, i64 %576
  %578 = load i16, ptr %577, align 2, !tbaa !73
  %579 = zext i16 %568 to i32
  %580 = zext i16 %558 to i32
  %581 = shl nuw nsw i32 %580, 1
  %582 = zext i16 %548 to i32
  %583 = add nuw nsw i32 %582, 2
  %584 = add nuw nsw i32 %583, %581
  %585 = add nuw nsw i32 %584, %579
  %586 = lshr i32 %585, 2
  %587 = trunc i32 %586 to i16
  %588 = shl nuw nsw i32 %582, 1
  %589 = zext i16 %538 to i32
  %590 = add nuw nsw i32 %589, 2
  %591 = add nuw nsw i32 %590, %588
  %592 = add nuw nsw i32 %591, %580
  %593 = lshr i32 %592, 2
  %594 = trunc i32 %593 to i16
  %595 = shl nuw nsw i32 %589, 1
  %596 = zext i16 %578 to i32
  %597 = add nuw nsw i32 %582, 2
  %598 = add nuw nsw i32 %597, %595
  %599 = add nuw nsw i32 %598, %596
  %600 = lshr i32 %599, 2
  %601 = trunc i32 %600 to i16
  %602 = shl nuw nsw i32 %596, 1
  %603 = zext i16 %523 to i32
  %604 = add nuw nsw i32 %603, 2
  %605 = add nuw nsw i32 %604, %589
  %606 = add nuw nsw i32 %605, %602
  %607 = lshr i32 %606, 2
  %608 = trunc i32 %607 to i16
  %609 = shl nuw nsw i32 %603, 1
  %610 = zext i16 %525 to i32
  %611 = add nuw nsw i32 %610, 2
  %612 = add nuw nsw i32 %611, %609
  %613 = add nuw nsw i32 %612, %596
  %614 = lshr i32 %613, 2
  %615 = trunc i32 %614 to i16
  %616 = shl nuw nsw i32 %610, 1
  %617 = zext i16 %527 to i32
  %618 = add nuw nsw i32 %603, 2
  %619 = add nuw nsw i32 %618, %616
  %620 = add nuw nsw i32 %619, %617
  %621 = lshr i32 %620, 2
  %622 = trunc i32 %621 to i16
  %623 = shl nuw nsw i32 %617, 1
  %624 = zext i16 %528 to i32
  %625 = add nuw nsw i32 %610, 2
  %626 = add nuw nsw i32 %625, %623
  %627 = add nuw nsw i32 %626, %624
  %628 = lshr i32 %627, 2
  %629 = trunc i32 %628 to i16
  %630 = sext i32 %3 to i64
  %631 = getelementptr inbounds ptr, ptr %425, i64 %630
  %632 = load ptr, ptr %631, align 8, !tbaa !48
  %633 = sext i32 %2 to i64
  %634 = getelementptr inbounds i16, ptr %632, i64 %633
  store i16 %608, ptr %634, align 2
  %635 = getelementptr inbounds i8, ptr %634, i64 2
  store i16 %615, ptr %635, align 2
  %636 = getelementptr inbounds i8, ptr %634, i64 4
  store i16 %622, ptr %636, align 2
  %637 = getelementptr inbounds i8, ptr %634, i64 6
  store i16 %629, ptr %637, align 2
  %638 = getelementptr ptr, ptr %631, i64 1
  %639 = load ptr, ptr %638, align 8, !tbaa !48
  %640 = getelementptr inbounds i16, ptr %639, i64 %633
  store i16 %601, ptr %640, align 2
  %641 = getelementptr inbounds i8, ptr %640, i64 2
  store i16 %608, ptr %641, align 2
  %642 = getelementptr inbounds i8, ptr %640, i64 4
  store i16 %615, ptr %642, align 2
  %643 = getelementptr inbounds i8, ptr %640, i64 6
  store i16 %622, ptr %643, align 2
  %644 = getelementptr ptr, ptr %631, i64 2
  %645 = load ptr, ptr %644, align 8, !tbaa !48
  %646 = getelementptr inbounds i16, ptr %645, i64 %633
  store i16 %594, ptr %646, align 2
  %647 = getelementptr inbounds i8, ptr %646, i64 2
  store i16 %601, ptr %647, align 2
  %648 = getelementptr inbounds i8, ptr %646, i64 4
  store i16 %608, ptr %648, align 2
  %649 = getelementptr inbounds i8, ptr %646, i64 6
  store i16 %615, ptr %649, align 2
  %650 = getelementptr ptr, ptr %631, i64 3
  %651 = load ptr, ptr %650, align 8, !tbaa !48
  %652 = getelementptr inbounds i16, ptr %651, i64 %633
  store i16 %587, ptr %652, align 2
  %653 = getelementptr inbounds i8, ptr %652, i64 2
  store i16 %594, ptr %653, align 2
  %654 = getelementptr inbounds i8, ptr %652, i64 4
  store i16 %601, ptr %654, align 2
  %655 = getelementptr inbounds i8, ptr %652, i64 6
  store i16 %608, ptr %655, align 2
  br label %656

656:                                              ; preds = %508, %512
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #4
  br label %1723

657:                                              ; preds = %6
  %658 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #4
  %659 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %660 = load ptr, ptr %659, align 8, !tbaa !59
  %661 = add nsw i32 %3, -1
  %662 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %660(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %661, ptr noundef nonnull %662, ptr noundef nonnull %16) #4
  %663 = load ptr, ptr %659, align 8, !tbaa !59
  %664 = add nsw i32 %2, 4
  call void %663(ptr noundef nonnull %0, i32 noundef %664, i32 noundef %661, ptr noundef nonnull %662, ptr noundef nonnull %17) #4
  %665 = load i32, ptr %17, align 4, !tbaa !66
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %673, label %667

667:                                              ; preds = %657
  %668 = icmp ne i32 %2, 4
  %669 = and i32 %3, -9
  %670 = icmp ne i32 %669, 4
  %671 = or i1 %668, %670
  %672 = zext i1 %671 to i32
  br label %673

673:                                              ; preds = %667, %657
  %674 = phi i32 [ 0, %657 ], [ %672, %667 ]
  store i32 %674, ptr %17, align 4, !tbaa !66
  %675 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %676 = load ptr, ptr %675, align 8, !tbaa !63
  %677 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %676, i64 0, i32 30
  %678 = load i32, ptr %677, align 4, !tbaa !64
  %679 = icmp eq i32 %678, 0
  %680 = load i32, ptr %16, align 4, !tbaa !66
  br i1 %679, label %704, label %681

681:                                              ; preds = %673
  %682 = icmp eq i32 %680, 0
  br i1 %682, label %692, label %683

683:                                              ; preds = %681
  %684 = getelementptr inbounds %struct.slice, ptr %658, i64 0, i32 128
  %685 = load ptr, ptr %684, align 8, !tbaa !68
  %686 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 1
  %687 = load i32, ptr %686, align 4, !tbaa !69
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i8, ptr %685, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !49
  %691 = sext i8 %690 to i32
  br label %692

692:                                              ; preds = %683, %681
  %693 = phi i32 [ %691, %683 ], [ 0, %681 ]
  %694 = icmp eq i32 %674, 0
  br i1 %694, label %704, label %695

695:                                              ; preds = %692
  %696 = getelementptr inbounds %struct.slice, ptr %658, i64 0, i32 128
  %697 = load ptr, ptr %696, align 8, !tbaa !68
  %698 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 1
  %699 = load i32, ptr %698, align 4, !tbaa !69
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, ptr %697, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !49
  %703 = sext i8 %702 to i32
  br label %704

704:                                              ; preds = %673, %695, %692
  %705 = phi i32 [ %703, %695 ], [ 0, %692 ], [ %674, %673 ]
  %706 = phi i32 [ %693, %695 ], [ %693, %692 ], [ %680, %673 ]
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %712

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.slice, ptr %658, i64 0, i32 20
  %710 = load i32, ptr %709, align 4, !tbaa !76
  %711 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %710)
  br label %846

712:                                              ; preds = %704
  %713 = icmp eq i32 %1, 0
  %714 = getelementptr inbounds %struct.slice, ptr %658, i64 0, i32 125
  %715 = load ptr, ptr %714, align 8, !tbaa !52
  br i1 %713, label %722, label %716

716:                                              ; preds = %712
  %717 = getelementptr inbounds %struct.storable_picture, ptr %715, i64 0, i32 33
  %718 = load ptr, ptr %717, align 8, !tbaa !55
  %719 = add i32 %1, -1
  %720 = zext i32 %719 to i64
  %721 = getelementptr inbounds ptr, ptr %718, i64 %720
  br label %724

722:                                              ; preds = %712
  %723 = getelementptr inbounds %struct.storable_picture, ptr %715, i64 0, i32 32
  br label %724

724:                                              ; preds = %722, %716
  %725 = phi ptr [ %721, %716 ], [ %723, %722 ]
  %726 = load ptr, ptr %725, align 8, !tbaa !48
  %727 = getelementptr inbounds %struct.slice, ptr %658, i64 0, i32 77
  %728 = load ptr, ptr %727, align 8, !tbaa !58
  %729 = zext i32 %1 to i64
  %730 = getelementptr inbounds ptr, ptr %728, i64 %729
  %731 = load ptr, ptr %730, align 8, !tbaa !48
  %732 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 5
  %733 = load i16, ptr %732, align 2, !tbaa !71
  %734 = sext i16 %733 to i64
  %735 = getelementptr inbounds ptr, ptr %726, i64 %734
  %736 = load ptr, ptr %735, align 8, !tbaa !48
  %737 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 4
  %738 = load i16, ptr %737, align 4, !tbaa !72
  %739 = sext i16 %738 to i64
  %740 = getelementptr inbounds i16, ptr %736, i64 %739
  %741 = getelementptr inbounds i16, ptr %740, i64 1
  %742 = load i16, ptr %740, align 2, !tbaa !73
  %743 = getelementptr inbounds i16, ptr %740, i64 2
  %744 = load i16, ptr %741, align 2, !tbaa !73
  %745 = getelementptr inbounds i16, ptr %740, i64 3
  %746 = load i16, ptr %743, align 2, !tbaa !73
  %747 = load i16, ptr %745, align 2, !tbaa !73
  %748 = icmp eq i32 %705, 0
  br i1 %748, label %766, label %749

749:                                              ; preds = %724
  %750 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 5
  %751 = load i16, ptr %750, align 2, !tbaa !71
  %752 = sext i16 %751 to i64
  %753 = getelementptr inbounds ptr, ptr %726, i64 %752
  %754 = load ptr, ptr %753, align 8, !tbaa !48
  %755 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 4
  %756 = load i16, ptr %755, align 4, !tbaa !72
  %757 = sext i16 %756 to i64
  %758 = getelementptr inbounds i16, ptr %754, i64 %757
  %759 = getelementptr inbounds i16, ptr %758, i64 1
  %760 = load i16, ptr %758, align 2, !tbaa !73
  %761 = getelementptr inbounds i16, ptr %758, i64 2
  %762 = load i16, ptr %759, align 2, !tbaa !73
  %763 = getelementptr inbounds i16, ptr %758, i64 3
  %764 = load i16, ptr %761, align 2, !tbaa !73
  %765 = load i16, ptr %763, align 2, !tbaa !73
  br label %766

766:                                              ; preds = %749, %724
  %767 = phi i16 [ %765, %749 ], [ %747, %724 ]
  %768 = phi i16 [ %764, %749 ], [ %747, %724 ]
  %769 = phi i16 [ %762, %749 ], [ %747, %724 ]
  %770 = phi i16 [ %760, %749 ], [ %747, %724 ]
  %771 = zext i16 %742 to i32
  %772 = zext i16 %746 to i32
  %773 = zext i16 %744 to i32
  %774 = shl nuw nsw i32 %773, 1
  %775 = add nuw nsw i32 %772, 2
  %776 = add nuw nsw i32 %775, %771
  %777 = add nuw nsw i32 %776, %774
  %778 = lshr i32 %777, 2
  %779 = trunc i32 %778 to i16
  %780 = zext i16 %747 to i32
  %781 = shl nuw nsw i32 %772, 1
  %782 = add nuw nsw i32 %780, 2
  %783 = add nuw nsw i32 %782, %773
  %784 = add nuw nsw i32 %783, %781
  %785 = lshr i32 %784, 2
  %786 = trunc i32 %785 to i16
  %787 = zext i16 %770 to i32
  %788 = shl nuw nsw i32 %780, 1
  %789 = add nuw nsw i32 %772, 2
  %790 = add nuw nsw i32 %789, %788
  %791 = add nuw nsw i32 %790, %787
  %792 = lshr i32 %791, 2
  %793 = trunc i32 %792 to i16
  %794 = zext i16 %769 to i32
  %795 = shl nuw nsw i32 %787, 1
  %796 = add nuw nsw i32 %780, 2
  %797 = add nuw nsw i32 %796, %794
  %798 = add nuw nsw i32 %797, %795
  %799 = lshr i32 %798, 2
  %800 = trunc i32 %799 to i16
  %801 = zext i16 %768 to i32
  %802 = shl nuw nsw i32 %794, 1
  %803 = add nuw nsw i32 %801, 2
  %804 = add nuw nsw i32 %803, %787
  %805 = add nuw nsw i32 %804, %802
  %806 = lshr i32 %805, 2
  %807 = trunc i32 %806 to i16
  %808 = zext i16 %767 to i32
  %809 = shl nuw nsw i32 %801, 1
  %810 = add nuw nsw i32 %794, 2
  %811 = add nuw nsw i32 %810, %808
  %812 = add nuw nsw i32 %811, %809
  %813 = lshr i32 %812, 2
  %814 = trunc i32 %813 to i16
  %815 = mul nuw nsw i32 %808, 3
  %816 = add nuw nsw i32 %801, 2
  %817 = add nuw nsw i32 %816, %815
  %818 = lshr i32 %817, 2
  %819 = trunc i32 %818 to i16
  %820 = sext i32 %3 to i64
  %821 = getelementptr inbounds ptr, ptr %731, i64 %820
  %822 = load ptr, ptr %821, align 8, !tbaa !48
  %823 = sext i32 %2 to i64
  %824 = getelementptr inbounds i16, ptr %822, i64 %823
  store i16 %779, ptr %824, align 2
  %825 = getelementptr inbounds i8, ptr %824, i64 2
  store i16 %786, ptr %825, align 2
  %826 = getelementptr inbounds i8, ptr %824, i64 4
  store i16 %793, ptr %826, align 2
  %827 = getelementptr inbounds i8, ptr %824, i64 6
  store i16 %800, ptr %827, align 2
  %828 = getelementptr ptr, ptr %821, i64 1
  %829 = load ptr, ptr %828, align 8, !tbaa !48
  %830 = getelementptr inbounds i16, ptr %829, i64 %823
  store i16 %786, ptr %830, align 2
  %831 = getelementptr inbounds i8, ptr %830, i64 2
  store i16 %793, ptr %831, align 2
  %832 = getelementptr inbounds i8, ptr %830, i64 4
  store i16 %800, ptr %832, align 2
  %833 = getelementptr inbounds i8, ptr %830, i64 6
  store i16 %807, ptr %833, align 2
  %834 = getelementptr ptr, ptr %821, i64 2
  %835 = load ptr, ptr %834, align 8, !tbaa !48
  %836 = getelementptr inbounds i16, ptr %835, i64 %823
  store i16 %793, ptr %836, align 2
  %837 = getelementptr inbounds i8, ptr %836, i64 2
  store i16 %800, ptr %837, align 2
  %838 = getelementptr inbounds i8, ptr %836, i64 4
  store i16 %807, ptr %838, align 2
  %839 = getelementptr inbounds i8, ptr %836, i64 6
  store i16 %814, ptr %839, align 2
  %840 = getelementptr ptr, ptr %821, i64 3
  %841 = load ptr, ptr %840, align 8, !tbaa !48
  %842 = getelementptr inbounds i16, ptr %841, i64 %823
  store i16 %800, ptr %842, align 2
  %843 = getelementptr inbounds i8, ptr %842, i64 2
  store i16 %807, ptr %843, align 2
  %844 = getelementptr inbounds i8, ptr %842, i64 4
  store i16 %814, ptr %844, align 2
  %845 = getelementptr inbounds i8, ptr %842, i64 6
  store i16 %819, ptr %845, align 2
  br label %846

846:                                              ; preds = %708, %766
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #4
  br label %1723

847:                                              ; preds = %6
  %848 = load ptr, ptr %0, align 8, !tbaa !51
  %849 = icmp eq i32 %1, 0
  %850 = getelementptr inbounds %struct.slice, ptr %848, i64 0, i32 125
  %851 = load ptr, ptr %850, align 8, !tbaa !52
  br i1 %849, label %858, label %852

852:                                              ; preds = %847
  %853 = getelementptr inbounds %struct.storable_picture, ptr %851, i64 0, i32 33
  %854 = load ptr, ptr %853, align 8, !tbaa !55
  %855 = add i32 %1, -1
  %856 = zext i32 %855 to i64
  %857 = getelementptr inbounds ptr, ptr %854, i64 %856
  br label %860

858:                                              ; preds = %847
  %859 = getelementptr inbounds %struct.storable_picture, ptr %851, i64 0, i32 32
  br label %860

860:                                              ; preds = %858, %852
  %861 = phi ptr [ %857, %852 ], [ %859, %858 ]
  %862 = load ptr, ptr %861, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #4
  %863 = getelementptr inbounds %struct.slice, ptr %848, i64 0, i32 77
  %864 = load ptr, ptr %863, align 8, !tbaa !58
  %865 = zext i32 %1 to i64
  %866 = getelementptr inbounds ptr, ptr %864, i64 %865
  %867 = load ptr, ptr %866, align 8, !tbaa !48
  %868 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %869 = add nsw i32 %2, -1
  %870 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  br label %871

871:                                              ; preds = %860, %871
  %872 = phi i64 [ 0, %860 ], [ %877, %871 ]
  %873 = load ptr, ptr %868, align 8, !tbaa !59
  %874 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 %872
  %875 = trunc i64 %872 to i32
  %876 = add i32 %875, %3
  call void %873(ptr noundef nonnull %0, i32 noundef %869, i32 noundef %876, ptr noundef nonnull %870, ptr noundef nonnull %874) #4
  %877 = add nuw nsw i64 %872, 1
  %878 = icmp eq i64 %877, 4
  br i1 %878, label %879, label %871, !llvm.loop !83

879:                                              ; preds = %871
  %880 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %881 = load ptr, ptr %880, align 8, !tbaa !59
  %882 = add nsw i32 %3, -1
  %883 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %881(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %882, ptr noundef nonnull %883, ptr noundef nonnull %14) #4
  %884 = load ptr, ptr %880, align 8, !tbaa !59
  %885 = add nsw i32 %2, -1
  call void %884(ptr noundef nonnull %0, i32 noundef %885, i32 noundef %882, ptr noundef nonnull %883, ptr noundef nonnull %15) #4
  %886 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %887 = load ptr, ptr %886, align 8, !tbaa !63
  %888 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %887, i64 0, i32 30
  %889 = load i32, ptr %888, align 4, !tbaa !64
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %937, label %891

891:                                              ; preds = %879
  %892 = getelementptr inbounds %struct.slice, ptr %848, i64 0, i32 128
  br label %893

893:                                              ; preds = %891, %907
  %894 = phi i64 [ 0, %891 ], [ %910, %907 ]
  %895 = phi i32 [ 1, %891 ], [ %909, %907 ]
  %896 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 %894
  %897 = load i32, ptr %896, align 16, !tbaa !66
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %907, label %899

899:                                              ; preds = %893
  %900 = load ptr, ptr %892, align 8, !tbaa !68
  %901 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 %894, i32 1
  %902 = load i32, ptr %901, align 4, !tbaa !69
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds i8, ptr %900, i64 %903
  %905 = load i8, ptr %904, align 1, !tbaa !49
  %906 = sext i8 %905 to i32
  br label %907

907:                                              ; preds = %899, %893
  %908 = phi i32 [ %906, %899 ], [ 0, %893 ]
  %909 = and i32 %908, %895
  %910 = add nuw nsw i64 %894, 1
  %911 = icmp eq i64 %910, 4
  br i1 %911, label %912, label %893, !llvm.loop !84

912:                                              ; preds = %907
  %913 = load i32, ptr %14, align 4, !tbaa !66
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %924, label %915

915:                                              ; preds = %912
  %916 = getelementptr inbounds %struct.slice, ptr %848, i64 0, i32 128
  %917 = load ptr, ptr %916, align 8, !tbaa !68
  %918 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 1
  %919 = load i32, ptr %918, align 4, !tbaa !69
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i8, ptr %917, i64 %920
  %922 = load i8, ptr %921, align 1, !tbaa !49
  %923 = sext i8 %922 to i32
  br label %924

924:                                              ; preds = %915, %912
  %925 = phi i32 [ %923, %915 ], [ 0, %912 ]
  %926 = load i32, ptr %15, align 4, !tbaa !66
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %941, label %928

928:                                              ; preds = %924
  %929 = getelementptr inbounds %struct.slice, ptr %848, i64 0, i32 128
  %930 = load ptr, ptr %929, align 8, !tbaa !68
  %931 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 1
  %932 = load i32, ptr %931, align 4, !tbaa !69
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i8, ptr %930, i64 %933
  %935 = load i8, ptr %934, align 1, !tbaa !49
  %936 = sext i8 %935 to i32
  br label %941

937:                                              ; preds = %879
  %938 = load i32, ptr %13, align 16, !tbaa !66
  %939 = load i32, ptr %14, align 4, !tbaa !66
  %940 = load i32, ptr %15, align 4, !tbaa !66
  br label %941

941:                                              ; preds = %937, %928, %924
  %942 = phi i32 [ %940, %937 ], [ %936, %928 ], [ 0, %924 ]
  %943 = phi i32 [ %938, %937 ], [ %909, %928 ], [ %909, %924 ]
  %944 = phi i32 [ %939, %937 ], [ %925, %928 ], [ %925, %924 ]
  %945 = icmp ne i32 %944, 0
  %946 = icmp ne i32 %943, 0
  %947 = select i1 %945, i1 %946, i1 false
  %948 = icmp ne i32 %942, 0
  %949 = select i1 %947, i1 %948, i1 false
  br i1 %949, label %954, label %950

950:                                              ; preds = %941
  %951 = getelementptr inbounds %struct.slice, ptr %848, i64 0, i32 20
  %952 = load i32, ptr %951, align 4, !tbaa !76
  %953 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %952)
  br label %954

954:                                              ; preds = %941, %950
  %955 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 5
  %956 = load i16, ptr %955, align 2, !tbaa !71
  %957 = sext i16 %956 to i64
  %958 = getelementptr inbounds ptr, ptr %862, i64 %957
  %959 = load ptr, ptr %958, align 8, !tbaa !48
  %960 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 4
  %961 = load i16, ptr %960, align 4, !tbaa !72
  %962 = sext i16 %961 to i64
  %963 = getelementptr inbounds i16, ptr %959, i64 %962
  %964 = getelementptr inbounds i16, ptr %963, i64 1
  %965 = load i16, ptr %963, align 2, !tbaa !73
  %966 = getelementptr inbounds i16, ptr %963, i64 2
  %967 = load i16, ptr %964, align 2, !tbaa !73
  %968 = getelementptr inbounds i16, ptr %963, i64 3
  %969 = load i16, ptr %966, align 2, !tbaa !73
  %970 = load i16, ptr %968, align 2, !tbaa !73
  %971 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 5
  %972 = load i16, ptr %971, align 2, !tbaa !71
  %973 = sext i16 %972 to i64
  %974 = getelementptr inbounds ptr, ptr %862, i64 %973
  %975 = load ptr, ptr %974, align 8, !tbaa !48
  %976 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 4
  %977 = load i16, ptr %976, align 4, !tbaa !72
  %978 = sext i16 %977 to i64
  %979 = getelementptr inbounds i16, ptr %975, i64 %978
  %980 = load i16, ptr %979, align 2, !tbaa !73
  %981 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 1, i32 5
  %982 = load i16, ptr %981, align 2, !tbaa !71
  %983 = sext i16 %982 to i64
  %984 = getelementptr inbounds ptr, ptr %862, i64 %983
  %985 = load ptr, ptr %984, align 8, !tbaa !48
  %986 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 1, i32 4
  %987 = load i16, ptr %986, align 4, !tbaa !72
  %988 = sext i16 %987 to i64
  %989 = getelementptr inbounds i16, ptr %985, i64 %988
  %990 = load i16, ptr %989, align 2, !tbaa !73
  %991 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 2, i32 5
  %992 = load i16, ptr %991, align 2, !tbaa !71
  %993 = sext i16 %992 to i64
  %994 = getelementptr inbounds ptr, ptr %862, i64 %993
  %995 = load ptr, ptr %994, align 8, !tbaa !48
  %996 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 2, i32 4
  %997 = load i16, ptr %996, align 4, !tbaa !72
  %998 = sext i16 %997 to i64
  %999 = getelementptr inbounds i16, ptr %995, i64 %998
  %1000 = load i16, ptr %999, align 2, !tbaa !73
  %1001 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 5
  %1002 = load i16, ptr %1001, align 2, !tbaa !71
  %1003 = sext i16 %1002 to i64
  %1004 = getelementptr inbounds ptr, ptr %862, i64 %1003
  %1005 = load ptr, ptr %1004, align 8, !tbaa !48
  %1006 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 4
  %1007 = load i16, ptr %1006, align 4, !tbaa !72
  %1008 = sext i16 %1007 to i64
  %1009 = getelementptr inbounds i16, ptr %1005, i64 %1008
  %1010 = load i16, ptr %1009, align 2, !tbaa !73
  %1011 = zext i16 %1010 to i32
  %1012 = zext i16 %980 to i32
  %1013 = shl nuw nsw i32 %1012, 1
  %1014 = zext i16 %990 to i32
  %1015 = add nuw nsw i32 %1011, 2
  %1016 = add nuw nsw i32 %1015, %1013
  %1017 = add nuw nsw i32 %1016, %1014
  %1018 = lshr i32 %1017, 2
  %1019 = trunc i32 %1018 to i16
  %1020 = zext i16 %965 to i32
  %1021 = add nuw nsw i32 %1020, 1
  %1022 = add nuw nsw i32 %1021, %1011
  %1023 = lshr i32 %1022, 1
  %1024 = trunc i32 %1023 to i16
  %1025 = zext i16 %967 to i32
  %1026 = add nuw nsw i32 %1020, 1
  %1027 = add nuw nsw i32 %1026, %1025
  %1028 = lshr i32 %1027, 1
  %1029 = trunc i32 %1028 to i16
  %1030 = zext i16 %969 to i32
  %1031 = add nuw nsw i32 %1025, 1
  %1032 = add nuw nsw i32 %1031, %1030
  %1033 = lshr i32 %1032, 1
  %1034 = trunc i32 %1033 to i16
  %1035 = zext i16 %970 to i32
  %1036 = add nuw nsw i32 %1030, 1
  %1037 = add nuw nsw i32 %1036, %1035
  %1038 = lshr i32 %1037, 1
  %1039 = trunc i32 %1038 to i16
  %1040 = shl nuw nsw i32 %1014, 1
  %1041 = zext i16 %1000 to i32
  %1042 = add nuw nsw i32 %1012, 2
  %1043 = add nuw nsw i32 %1042, %1040
  %1044 = add nuw nsw i32 %1043, %1041
  %1045 = lshr i32 %1044, 2
  %1046 = trunc i32 %1045 to i16
  %1047 = shl nuw nsw i32 %1011, 1
  %1048 = add nuw nsw i32 %1020, 2
  %1049 = add nuw nsw i32 %1048, %1012
  %1050 = add nuw nsw i32 %1049, %1047
  %1051 = lshr i32 %1050, 2
  %1052 = trunc i32 %1051 to i16
  %1053 = shl nuw nsw i32 %1020, 1
  %1054 = add nuw nsw i32 %1025, 2
  %1055 = add nuw nsw i32 %1054, %1053
  %1056 = add nuw nsw i32 %1055, %1011
  %1057 = lshr i32 %1056, 2
  %1058 = trunc i32 %1057 to i16
  %1059 = shl nuw nsw i32 %1025, 1
  %1060 = add nuw nsw i32 %1020, 2
  %1061 = add nuw nsw i32 %1060, %1059
  %1062 = add nuw nsw i32 %1061, %1030
  %1063 = lshr i32 %1062, 2
  %1064 = trunc i32 %1063 to i16
  %1065 = shl nuw nsw i32 %1030, 1
  %1066 = add nuw nsw i32 %1025, 2
  %1067 = add nuw nsw i32 %1066, %1065
  %1068 = add nuw nsw i32 %1067, %1035
  %1069 = lshr i32 %1068, 2
  %1070 = trunc i32 %1069 to i16
  %1071 = sext i32 %3 to i64
  %1072 = getelementptr inbounds ptr, ptr %867, i64 %1071
  %1073 = load ptr, ptr %1072, align 8, !tbaa !48
  %1074 = sext i32 %2 to i64
  %1075 = getelementptr inbounds i16, ptr %1073, i64 %1074
  store i16 %1024, ptr %1075, align 2
  %1076 = getelementptr inbounds i8, ptr %1075, i64 2
  store i16 %1029, ptr %1076, align 2
  %1077 = getelementptr inbounds i8, ptr %1075, i64 4
  store i16 %1034, ptr %1077, align 2
  %1078 = getelementptr inbounds i8, ptr %1075, i64 6
  store i16 %1039, ptr %1078, align 2
  %1079 = getelementptr ptr, ptr %1072, i64 1
  %1080 = load ptr, ptr %1079, align 8, !tbaa !48
  %1081 = getelementptr inbounds i16, ptr %1080, i64 %1074
  store i16 %1052, ptr %1081, align 2
  %1082 = getelementptr inbounds i8, ptr %1081, i64 2
  store i16 %1058, ptr %1082, align 2
  %1083 = getelementptr inbounds i8, ptr %1081, i64 4
  store i16 %1064, ptr %1083, align 2
  %1084 = getelementptr inbounds i8, ptr %1081, i64 6
  store i16 %1070, ptr %1084, align 2
  %1085 = getelementptr ptr, ptr %1072, i64 2
  %1086 = load ptr, ptr %1085, align 8, !tbaa !48
  %1087 = getelementptr inbounds i16, ptr %1086, i64 %1074
  store i16 %1019, ptr %1087, align 2
  %1088 = getelementptr inbounds i8, ptr %1087, i64 2
  store i16 %1024, ptr %1088, align 2
  %1089 = getelementptr inbounds i8, ptr %1087, i64 4
  store i16 %1029, ptr %1089, align 2
  %1090 = getelementptr inbounds i8, ptr %1087, i64 6
  store i16 %1034, ptr %1090, align 2
  %1091 = getelementptr ptr, ptr %1072, i64 3
  %1092 = load ptr, ptr %1091, align 8, !tbaa !48
  %1093 = getelementptr inbounds i16, ptr %1092, i64 %1074
  store i16 %1046, ptr %1093, align 2
  %1094 = getelementptr inbounds i8, ptr %1093, i64 2
  store i16 %1052, ptr %1094, align 2
  %1095 = getelementptr inbounds i8, ptr %1093, i64 4
  store i16 %1058, ptr %1095, align 2
  %1096 = getelementptr inbounds i8, ptr %1093, i64 6
  store i16 %1064, ptr %1096, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #4
  br label %1723

1097:                                             ; preds = %6
  %1098 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #4
  %1099 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %1100 = load ptr, ptr %1099, align 8, !tbaa !59
  %1101 = add nsw i32 %3, -1
  %1102 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %1100(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1101, ptr noundef nonnull %1102, ptr noundef nonnull %11) #4
  %1103 = load ptr, ptr %1099, align 8, !tbaa !59
  %1104 = add nsw i32 %2, 4
  call void %1103(ptr noundef nonnull %0, i32 noundef %1104, i32 noundef %1101, ptr noundef nonnull %1102, ptr noundef nonnull %12) #4
  %1105 = load i32, ptr %12, align 4, !tbaa !66
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1113, label %1107

1107:                                             ; preds = %1097
  %1108 = icmp ne i32 %2, 4
  %1109 = and i32 %3, -9
  %1110 = icmp ne i32 %1109, 4
  %1111 = or i1 %1108, %1110
  %1112 = zext i1 %1111 to i32
  br label %1113

1113:                                             ; preds = %1107, %1097
  %1114 = phi i32 [ 0, %1097 ], [ %1112, %1107 ]
  store i32 %1114, ptr %12, align 4, !tbaa !66
  %1115 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %1116 = load ptr, ptr %1115, align 8, !tbaa !63
  %1117 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1116, i64 0, i32 30
  %1118 = load i32, ptr %1117, align 4, !tbaa !64
  %1119 = icmp eq i32 %1118, 0
  %1120 = load i32, ptr %11, align 4, !tbaa !66
  br i1 %1119, label %1144, label %1121

1121:                                             ; preds = %1113
  %1122 = icmp eq i32 %1120, 0
  br i1 %1122, label %1132, label %1123

1123:                                             ; preds = %1121
  %1124 = getelementptr inbounds %struct.slice, ptr %1098, i64 0, i32 128
  %1125 = load ptr, ptr %1124, align 8, !tbaa !68
  %1126 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 1
  %1127 = load i32, ptr %1126, align 4, !tbaa !69
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds i8, ptr %1125, i64 %1128
  %1130 = load i8, ptr %1129, align 1, !tbaa !49
  %1131 = sext i8 %1130 to i32
  br label %1132

1132:                                             ; preds = %1123, %1121
  %1133 = phi i32 [ %1131, %1123 ], [ 0, %1121 ]
  %1134 = icmp eq i32 %1114, 0
  br i1 %1134, label %1144, label %1135

1135:                                             ; preds = %1132
  %1136 = getelementptr inbounds %struct.slice, ptr %1098, i64 0, i32 128
  %1137 = load ptr, ptr %1136, align 8, !tbaa !68
  %1138 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 1
  %1139 = load i32, ptr %1138, align 4, !tbaa !69
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds i8, ptr %1137, i64 %1140
  %1142 = load i8, ptr %1141, align 1, !tbaa !49
  %1143 = sext i8 %1142 to i32
  br label %1144

1144:                                             ; preds = %1113, %1135, %1132
  %1145 = phi i32 [ %1143, %1135 ], [ 0, %1132 ], [ %1114, %1113 ]
  %1146 = phi i32 [ %1133, %1135 ], [ %1133, %1132 ], [ %1120, %1113 ]
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1148, label %1152

1148:                                             ; preds = %1144
  %1149 = getelementptr inbounds %struct.slice, ptr %1098, i64 0, i32 20
  %1150 = load i32, ptr %1149, align 4, !tbaa !76
  %1151 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %1150)
  br label %1152

1152:                                             ; preds = %1148, %1144
  %1153 = icmp eq i32 %1, 0
  %1154 = getelementptr inbounds %struct.slice, ptr %1098, i64 0, i32 125
  %1155 = load ptr, ptr %1154, align 8, !tbaa !52
  br i1 %1153, label %1162, label %1156

1156:                                             ; preds = %1152
  %1157 = getelementptr inbounds %struct.storable_picture, ptr %1155, i64 0, i32 33
  %1158 = load ptr, ptr %1157, align 8, !tbaa !55
  %1159 = add i32 %1, -1
  %1160 = zext i32 %1159 to i64
  %1161 = getelementptr inbounds ptr, ptr %1158, i64 %1160
  br label %1164

1162:                                             ; preds = %1152
  %1163 = getelementptr inbounds %struct.storable_picture, ptr %1155, i64 0, i32 32
  br label %1164

1164:                                             ; preds = %1162, %1156
  %1165 = phi ptr [ %1161, %1156 ], [ %1163, %1162 ]
  %1166 = load ptr, ptr %1165, align 8, !tbaa !48
  %1167 = getelementptr inbounds %struct.slice, ptr %1098, i64 0, i32 77
  %1168 = load ptr, ptr %1167, align 8, !tbaa !58
  %1169 = zext i32 %1 to i64
  %1170 = getelementptr inbounds ptr, ptr %1168, i64 %1169
  %1171 = load ptr, ptr %1170, align 8, !tbaa !48
  %1172 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 5
  %1173 = load i16, ptr %1172, align 2, !tbaa !71
  %1174 = sext i16 %1173 to i64
  %1175 = getelementptr inbounds ptr, ptr %1166, i64 %1174
  %1176 = load ptr, ptr %1175, align 8, !tbaa !48
  %1177 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 4
  %1178 = load i16, ptr %1177, align 4, !tbaa !72
  %1179 = sext i16 %1178 to i64
  %1180 = getelementptr inbounds i16, ptr %1176, i64 %1179
  %1181 = getelementptr inbounds i16, ptr %1180, i64 1
  %1182 = load i16, ptr %1180, align 2, !tbaa !73
  %1183 = getelementptr inbounds i16, ptr %1180, i64 2
  %1184 = load i16, ptr %1181, align 2, !tbaa !73
  %1185 = getelementptr inbounds i16, ptr %1180, i64 3
  %1186 = load i16, ptr %1183, align 2, !tbaa !73
  %1187 = load i16, ptr %1185, align 2, !tbaa !73
  %1188 = icmp eq i32 %1145, 0
  br i1 %1188, label %1204, label %1189

1189:                                             ; preds = %1164
  %1190 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 5
  %1191 = load i16, ptr %1190, align 2, !tbaa !71
  %1192 = sext i16 %1191 to i64
  %1193 = getelementptr inbounds ptr, ptr %1166, i64 %1192
  %1194 = load ptr, ptr %1193, align 8, !tbaa !48
  %1195 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 4
  %1196 = load i16, ptr %1195, align 4, !tbaa !72
  %1197 = sext i16 %1196 to i64
  %1198 = getelementptr inbounds i16, ptr %1194, i64 %1197
  %1199 = getelementptr inbounds i16, ptr %1198, i64 1
  %1200 = load i16, ptr %1198, align 2, !tbaa !73
  %1201 = getelementptr inbounds i16, ptr %1198, i64 2
  %1202 = load i16, ptr %1199, align 2, !tbaa !73
  %1203 = load i16, ptr %1201, align 2, !tbaa !73
  br label %1204

1204:                                             ; preds = %1164, %1189
  %1205 = phi i16 [ %1200, %1189 ], [ %1187, %1164 ]
  %1206 = phi i16 [ %1202, %1189 ], [ %1187, %1164 ]
  %1207 = phi i16 [ %1203, %1189 ], [ %1187, %1164 ]
  %1208 = zext i16 %1182 to i32
  %1209 = zext i16 %1184 to i32
  %1210 = add nuw nsw i32 %1209, 1
  %1211 = add nuw nsw i32 %1210, %1208
  %1212 = lshr i32 %1211, 1
  %1213 = trunc i32 %1212 to i16
  %1214 = zext i16 %1186 to i32
  %1215 = add nuw nsw i32 %1209, 1
  %1216 = add nuw nsw i32 %1215, %1214
  %1217 = lshr i32 %1216, 1
  %1218 = trunc i32 %1217 to i16
  %1219 = zext i16 %1187 to i32
  %1220 = add nuw nsw i32 %1214, 1
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = lshr i32 %1221, 1
  %1223 = trunc i32 %1222 to i16
  %1224 = zext i16 %1205 to i32
  %1225 = add nuw nsw i32 %1219, 1
  %1226 = add nuw nsw i32 %1225, %1224
  %1227 = lshr i32 %1226, 1
  %1228 = trunc i32 %1227 to i16
  %1229 = zext i16 %1206 to i32
  %1230 = add nuw nsw i32 %1224, 1
  %1231 = add nuw nsw i32 %1230, %1229
  %1232 = lshr i32 %1231, 1
  %1233 = trunc i32 %1232 to i16
  %1234 = shl nuw nsw i32 %1209, 1
  %1235 = add nuw nsw i32 %1214, 2
  %1236 = add nuw nsw i32 %1235, %1208
  %1237 = add nuw nsw i32 %1236, %1234
  %1238 = lshr i32 %1237, 2
  %1239 = trunc i32 %1238 to i16
  %1240 = shl nuw nsw i32 %1214, 1
  %1241 = add nuw nsw i32 %1219, 2
  %1242 = add nuw nsw i32 %1241, %1209
  %1243 = add nuw nsw i32 %1242, %1240
  %1244 = lshr i32 %1243, 2
  %1245 = trunc i32 %1244 to i16
  %1246 = shl nuw nsw i32 %1219, 1
  %1247 = add nuw nsw i32 %1214, 2
  %1248 = add nuw nsw i32 %1247, %1246
  %1249 = add nuw nsw i32 %1248, %1224
  %1250 = lshr i32 %1249, 2
  %1251 = trunc i32 %1250 to i16
  %1252 = shl nuw nsw i32 %1224, 1
  %1253 = add nuw nsw i32 %1219, 2
  %1254 = add nuw nsw i32 %1253, %1252
  %1255 = add nuw nsw i32 %1254, %1229
  %1256 = lshr i32 %1255, 2
  %1257 = trunc i32 %1256 to i16
  %1258 = shl nuw nsw i32 %1229, 1
  %1259 = zext i16 %1207 to i32
  %1260 = add nuw nsw i32 %1224, 2
  %1261 = add nuw nsw i32 %1260, %1258
  %1262 = add nuw nsw i32 %1261, %1259
  %1263 = lshr i32 %1262, 2
  %1264 = trunc i32 %1263 to i16
  %1265 = sext i32 %3 to i64
  %1266 = getelementptr inbounds ptr, ptr %1171, i64 %1265
  %1267 = load ptr, ptr %1266, align 8, !tbaa !48
  %1268 = sext i32 %2 to i64
  %1269 = getelementptr inbounds i16, ptr %1267, i64 %1268
  store i16 %1213, ptr %1269, align 2
  %1270 = getelementptr inbounds i8, ptr %1269, i64 2
  store i16 %1218, ptr %1270, align 2
  %1271 = getelementptr inbounds i8, ptr %1269, i64 4
  store i16 %1223, ptr %1271, align 2
  %1272 = getelementptr inbounds i8, ptr %1269, i64 6
  store i16 %1228, ptr %1272, align 2
  %1273 = getelementptr ptr, ptr %1266, i64 1
  %1274 = load ptr, ptr %1273, align 8, !tbaa !48
  %1275 = getelementptr inbounds i16, ptr %1274, i64 %1268
  store i16 %1239, ptr %1275, align 2
  %1276 = getelementptr inbounds i8, ptr %1275, i64 2
  store i16 %1245, ptr %1276, align 2
  %1277 = getelementptr inbounds i8, ptr %1275, i64 4
  store i16 %1251, ptr %1277, align 2
  %1278 = getelementptr inbounds i8, ptr %1275, i64 6
  store i16 %1257, ptr %1278, align 2
  %1279 = getelementptr ptr, ptr %1266, i64 2
  %1280 = load ptr, ptr %1279, align 8, !tbaa !48
  %1281 = getelementptr inbounds i16, ptr %1280, i64 %1268
  store i16 %1218, ptr %1281, align 2
  %1282 = getelementptr inbounds i8, ptr %1281, i64 2
  store i16 %1223, ptr %1282, align 2
  %1283 = getelementptr inbounds i8, ptr %1281, i64 4
  store i16 %1228, ptr %1283, align 2
  %1284 = getelementptr inbounds i8, ptr %1281, i64 6
  store i16 %1233, ptr %1284, align 2
  %1285 = getelementptr ptr, ptr %1266, i64 3
  %1286 = load ptr, ptr %1285, align 8, !tbaa !48
  %1287 = getelementptr inbounds i16, ptr %1286, i64 %1268
  store i16 %1245, ptr %1287, align 2
  %1288 = getelementptr inbounds i8, ptr %1287, i64 2
  store i16 %1251, ptr %1288, align 2
  %1289 = getelementptr inbounds i8, ptr %1287, i64 4
  store i16 %1257, ptr %1289, align 2
  %1290 = getelementptr inbounds i8, ptr %1287, i64 6
  store i16 %1264, ptr %1290, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #4
  br label %1723

1291:                                             ; preds = %6
  %1292 = load ptr, ptr %0, align 8, !tbaa !51
  %1293 = icmp eq i32 %1, 0
  %1294 = getelementptr inbounds %struct.slice, ptr %1292, i64 0, i32 125
  %1295 = load ptr, ptr %1294, align 8, !tbaa !52
  br i1 %1293, label %1302, label %1296

1296:                                             ; preds = %1291
  %1297 = getelementptr inbounds %struct.storable_picture, ptr %1295, i64 0, i32 33
  %1298 = load ptr, ptr %1297, align 8, !tbaa !55
  %1299 = add i32 %1, -1
  %1300 = zext i32 %1299 to i64
  %1301 = getelementptr inbounds ptr, ptr %1298, i64 %1300
  br label %1304

1302:                                             ; preds = %1291
  %1303 = getelementptr inbounds %struct.storable_picture, ptr %1295, i64 0, i32 32
  br label %1304

1304:                                             ; preds = %1302, %1296
  %1305 = phi ptr [ %1301, %1296 ], [ %1303, %1302 ]
  %1306 = load ptr, ptr %1305, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #4
  %1307 = getelementptr inbounds %struct.slice, ptr %1292, i64 0, i32 77
  %1308 = load ptr, ptr %1307, align 8, !tbaa !58
  %1309 = zext i32 %1 to i64
  %1310 = getelementptr inbounds ptr, ptr %1308, i64 %1309
  %1311 = load ptr, ptr %1310, align 8, !tbaa !48
  %1312 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %1313 = add nsw i32 %2, -1
  %1314 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  br label %1315

1315:                                             ; preds = %1304, %1315
  %1316 = phi i64 [ 0, %1304 ], [ %1321, %1315 ]
  %1317 = load ptr, ptr %1312, align 8, !tbaa !59
  %1318 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 %1316
  %1319 = trunc i64 %1316 to i32
  %1320 = add i32 %1319, %3
  call void %1317(ptr noundef nonnull %0, i32 noundef %1313, i32 noundef %1320, ptr noundef nonnull %1314, ptr noundef nonnull %1318) #4
  %1321 = add nuw nsw i64 %1316, 1
  %1322 = icmp eq i64 %1321, 4
  br i1 %1322, label %1323, label %1315, !llvm.loop !85

1323:                                             ; preds = %1315
  %1324 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %1325 = load ptr, ptr %1324, align 8, !tbaa !63
  %1326 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1325, i64 0, i32 30
  %1327 = load i32, ptr %1326, align 4, !tbaa !64
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1350, label %1329

1329:                                             ; preds = %1323
  %1330 = getelementptr inbounds %struct.slice, ptr %1292, i64 0, i32 128
  br label %1331

1331:                                             ; preds = %1329, %1345
  %1332 = phi i64 [ 0, %1329 ], [ %1348, %1345 ]
  %1333 = phi i32 [ 1, %1329 ], [ %1347, %1345 ]
  %1334 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 %1332
  %1335 = load i32, ptr %1334, align 16, !tbaa !66
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1345, label %1337

1337:                                             ; preds = %1331
  %1338 = load ptr, ptr %1330, align 8, !tbaa !68
  %1339 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 %1332, i32 1
  %1340 = load i32, ptr %1339, align 4, !tbaa !69
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds i8, ptr %1338, i64 %1341
  %1343 = load i8, ptr %1342, align 1, !tbaa !49
  %1344 = sext i8 %1343 to i32
  br label %1345

1345:                                             ; preds = %1337, %1331
  %1346 = phi i32 [ %1344, %1337 ], [ 0, %1331 ]
  %1347 = and i32 %1346, %1333
  %1348 = add nuw nsw i64 %1332, 1
  %1349 = icmp eq i64 %1348, 4
  br i1 %1349, label %1352, label %1331, !llvm.loop !86

1350:                                             ; preds = %1323
  %1351 = load i32, ptr %10, align 16, !tbaa !66
  br label %1352

1352:                                             ; preds = %1345, %1350
  %1353 = phi i32 [ %1351, %1350 ], [ %1347, %1345 ]
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1355, label %1359

1355:                                             ; preds = %1352
  %1356 = getelementptr inbounds %struct.slice, ptr %1292, i64 0, i32 20
  %1357 = load i32, ptr %1356, align 4, !tbaa !76
  %1358 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %1357)
  br label %1460

1359:                                             ; preds = %1352
  %1360 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 5
  %1361 = load i16, ptr %1360, align 2, !tbaa !71
  %1362 = sext i16 %1361 to i64
  %1363 = getelementptr inbounds ptr, ptr %1306, i64 %1362
  %1364 = load ptr, ptr %1363, align 8, !tbaa !48
  %1365 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 4
  %1366 = load i16, ptr %1365, align 4, !tbaa !72
  %1367 = sext i16 %1366 to i64
  %1368 = getelementptr inbounds i16, ptr %1364, i64 %1367
  %1369 = load i16, ptr %1368, align 2, !tbaa !73
  %1370 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 1, i32 5
  %1371 = load i16, ptr %1370, align 2, !tbaa !71
  %1372 = sext i16 %1371 to i64
  %1373 = getelementptr inbounds ptr, ptr %1306, i64 %1372
  %1374 = load ptr, ptr %1373, align 8, !tbaa !48
  %1375 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 1, i32 4
  %1376 = load i16, ptr %1375, align 4, !tbaa !72
  %1377 = sext i16 %1376 to i64
  %1378 = getelementptr inbounds i16, ptr %1374, i64 %1377
  %1379 = load i16, ptr %1378, align 2, !tbaa !73
  %1380 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 2, i32 5
  %1381 = load i16, ptr %1380, align 2, !tbaa !71
  %1382 = sext i16 %1381 to i64
  %1383 = getelementptr inbounds ptr, ptr %1306, i64 %1382
  %1384 = load ptr, ptr %1383, align 8, !tbaa !48
  %1385 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 2, i32 4
  %1386 = load i16, ptr %1385, align 4, !tbaa !72
  %1387 = sext i16 %1386 to i64
  %1388 = getelementptr inbounds i16, ptr %1384, i64 %1387
  %1389 = load i16, ptr %1388, align 2, !tbaa !73
  %1390 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 3, i32 5
  %1391 = load i16, ptr %1390, align 2, !tbaa !71
  %1392 = sext i16 %1391 to i64
  %1393 = getelementptr inbounds ptr, ptr %1306, i64 %1392
  %1394 = load ptr, ptr %1393, align 8, !tbaa !48
  %1395 = getelementptr inbounds [4 x %struct.pix_pos], ptr %10, i64 0, i64 3, i32 4
  %1396 = load i16, ptr %1395, align 4, !tbaa !72
  %1397 = sext i16 %1396 to i64
  %1398 = getelementptr inbounds i16, ptr %1394, i64 %1397
  %1399 = load i16, ptr %1398, align 2, !tbaa !73
  %1400 = zext i16 %1369 to i32
  %1401 = zext i16 %1379 to i32
  %1402 = add nuw nsw i32 %1401, 1
  %1403 = add nuw nsw i32 %1402, %1400
  %1404 = lshr i32 %1403, 1
  %1405 = trunc i32 %1404 to i16
  %1406 = shl nuw nsw i32 %1401, 1
  %1407 = zext i16 %1389 to i32
  %1408 = add nuw nsw i32 %1407, 2
  %1409 = add nuw nsw i32 %1408, %1400
  %1410 = add nuw nsw i32 %1409, %1406
  %1411 = lshr i32 %1410, 2
  %1412 = trunc i32 %1411 to i16
  %1413 = add nuw nsw i32 %1401, 1
  %1414 = add nuw nsw i32 %1413, %1407
  %1415 = lshr i32 %1414, 1
  %1416 = trunc i32 %1415 to i16
  %1417 = shl nuw nsw i32 %1407, 1
  %1418 = zext i16 %1399 to i32
  %1419 = add nuw nsw i32 %1418, 2
  %1420 = add nuw nsw i32 %1419, %1401
  %1421 = add nuw nsw i32 %1420, %1417
  %1422 = lshr i32 %1421, 2
  %1423 = trunc i32 %1422 to i16
  %1424 = add nuw nsw i32 %1407, 1
  %1425 = add nuw nsw i32 %1424, %1418
  %1426 = lshr i32 %1425, 1
  %1427 = trunc i32 %1426 to i16
  %1428 = shl nuw nsw i32 %1418, 1
  %1429 = add nuw nsw i32 %1407, 2
  %1430 = add nuw nsw i32 %1429, %1418
  %1431 = add nuw nsw i32 %1430, %1428
  %1432 = lshr i32 %1431, 2
  %1433 = trunc i32 %1432 to i16
  %1434 = sext i32 %3 to i64
  %1435 = getelementptr inbounds ptr, ptr %1311, i64 %1434
  %1436 = load ptr, ptr %1435, align 8, !tbaa !48
  %1437 = sext i32 %2 to i64
  %1438 = getelementptr inbounds i16, ptr %1436, i64 %1437
  store i16 %1405, ptr %1438, align 2
  %1439 = getelementptr inbounds i8, ptr %1438, i64 2
  store i16 %1412, ptr %1439, align 2
  %1440 = getelementptr inbounds i8, ptr %1438, i64 4
  store i16 %1416, ptr %1440, align 2
  %1441 = getelementptr inbounds i8, ptr %1438, i64 6
  store i16 %1423, ptr %1441, align 2
  %1442 = getelementptr ptr, ptr %1435, i64 1
  %1443 = load ptr, ptr %1442, align 8, !tbaa !48
  %1444 = getelementptr inbounds i16, ptr %1443, i64 %1437
  store i16 %1416, ptr %1444, align 2
  %1445 = getelementptr inbounds i8, ptr %1444, i64 2
  store i16 %1423, ptr %1445, align 2
  %1446 = getelementptr inbounds i8, ptr %1444, i64 4
  store i16 %1427, ptr %1446, align 2
  %1447 = getelementptr inbounds i8, ptr %1444, i64 6
  store i16 %1433, ptr %1447, align 2
  %1448 = getelementptr ptr, ptr %1435, i64 2
  %1449 = load ptr, ptr %1448, align 8, !tbaa !48
  %1450 = getelementptr inbounds i16, ptr %1449, i64 %1437
  store i16 %1427, ptr %1450, align 2
  %1451 = getelementptr inbounds i8, ptr %1450, i64 2
  store i16 %1433, ptr %1451, align 2
  %1452 = getelementptr inbounds i8, ptr %1450, i64 4
  store i16 %1399, ptr %1452, align 2
  %1453 = getelementptr inbounds i8, ptr %1450, i64 6
  store i16 %1399, ptr %1453, align 2
  %1454 = getelementptr ptr, ptr %1435, i64 3
  %1455 = load ptr, ptr %1454, align 8, !tbaa !48
  %1456 = getelementptr inbounds i16, ptr %1455, i64 %1437
  store i16 %1399, ptr %1456, align 2
  %1457 = getelementptr inbounds i8, ptr %1456, i64 2
  store i16 %1399, ptr %1457, align 2
  %1458 = getelementptr inbounds i8, ptr %1456, i64 4
  store i16 %1399, ptr %1458, align 2
  %1459 = getelementptr inbounds i8, ptr %1456, i64 6
  store i16 %1399, ptr %1459, align 2
  br label %1460

1460:                                             ; preds = %1355, %1359
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #4
  br label %1723

1461:                                             ; preds = %6
  %1462 = load ptr, ptr %0, align 8, !tbaa !51
  %1463 = icmp eq i32 %1, 0
  %1464 = getelementptr inbounds %struct.slice, ptr %1462, i64 0, i32 125
  %1465 = load ptr, ptr %1464, align 8, !tbaa !52
  br i1 %1463, label %1472, label %1466

1466:                                             ; preds = %1461
  %1467 = getelementptr inbounds %struct.storable_picture, ptr %1465, i64 0, i32 33
  %1468 = load ptr, ptr %1467, align 8, !tbaa !55
  %1469 = add i32 %1, -1
  %1470 = zext i32 %1469 to i64
  %1471 = getelementptr inbounds ptr, ptr %1468, i64 %1470
  br label %1474

1472:                                             ; preds = %1461
  %1473 = getelementptr inbounds %struct.storable_picture, ptr %1465, i64 0, i32 32
  br label %1474

1474:                                             ; preds = %1472, %1466
  %1475 = phi ptr [ %1471, %1466 ], [ %1473, %1472 ]
  %1476 = load ptr, ptr %1475, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %1477 = getelementptr inbounds %struct.slice, ptr %1462, i64 0, i32 77
  %1478 = load ptr, ptr %1477, align 8, !tbaa !58
  %1479 = zext i32 %1 to i64
  %1480 = getelementptr inbounds ptr, ptr %1478, i64 %1479
  %1481 = load ptr, ptr %1480, align 8, !tbaa !48
  %1482 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %1483 = add nsw i32 %2, -1
  %1484 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  br label %1485

1485:                                             ; preds = %1474, %1485
  %1486 = phi i64 [ 0, %1474 ], [ %1491, %1485 ]
  %1487 = load ptr, ptr %1482, align 8, !tbaa !59
  %1488 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 %1486
  %1489 = trunc i64 %1486 to i32
  %1490 = add i32 %1489, %3
  call void %1487(ptr noundef nonnull %0, i32 noundef %1483, i32 noundef %1490, ptr noundef nonnull %1484, ptr noundef nonnull %1488) #4
  %1491 = add nuw nsw i64 %1486, 1
  %1492 = icmp eq i64 %1491, 4
  br i1 %1492, label %1493, label %1485, !llvm.loop !87

1493:                                             ; preds = %1485
  %1494 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %1495 = load ptr, ptr %1494, align 8, !tbaa !59
  %1496 = add nsw i32 %3, -1
  %1497 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %1495(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1496, ptr noundef nonnull %1497, ptr noundef nonnull %8) #4
  %1498 = load ptr, ptr %1494, align 8, !tbaa !59
  %1499 = add nsw i32 %2, -1
  call void %1498(ptr noundef nonnull %0, i32 noundef %1499, i32 noundef %1496, ptr noundef nonnull %1497, ptr noundef nonnull %9) #4
  %1500 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %1501 = load ptr, ptr %1500, align 8, !tbaa !63
  %1502 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1501, i64 0, i32 30
  %1503 = load i32, ptr %1502, align 4, !tbaa !64
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1551, label %1505

1505:                                             ; preds = %1493
  %1506 = getelementptr inbounds %struct.slice, ptr %1462, i64 0, i32 128
  br label %1507

1507:                                             ; preds = %1505, %1521
  %1508 = phi i64 [ 0, %1505 ], [ %1524, %1521 ]
  %1509 = phi i32 [ 1, %1505 ], [ %1523, %1521 ]
  %1510 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 %1508
  %1511 = load i32, ptr %1510, align 16, !tbaa !66
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1521, label %1513

1513:                                             ; preds = %1507
  %1514 = load ptr, ptr %1506, align 8, !tbaa !68
  %1515 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 %1508, i32 1
  %1516 = load i32, ptr %1515, align 4, !tbaa !69
  %1517 = sext i32 %1516 to i64
  %1518 = getelementptr inbounds i8, ptr %1514, i64 %1517
  %1519 = load i8, ptr %1518, align 1, !tbaa !49
  %1520 = sext i8 %1519 to i32
  br label %1521

1521:                                             ; preds = %1513, %1507
  %1522 = phi i32 [ %1520, %1513 ], [ 0, %1507 ]
  %1523 = and i32 %1522, %1509
  %1524 = add nuw nsw i64 %1508, 1
  %1525 = icmp eq i64 %1524, 4
  br i1 %1525, label %1526, label %1507, !llvm.loop !88

1526:                                             ; preds = %1521
  %1527 = load i32, ptr %8, align 4, !tbaa !66
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1538, label %1529

1529:                                             ; preds = %1526
  %1530 = getelementptr inbounds %struct.slice, ptr %1462, i64 0, i32 128
  %1531 = load ptr, ptr %1530, align 8, !tbaa !68
  %1532 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %1533 = load i32, ptr %1532, align 4, !tbaa !69
  %1534 = sext i32 %1533 to i64
  %1535 = getelementptr inbounds i8, ptr %1531, i64 %1534
  %1536 = load i8, ptr %1535, align 1, !tbaa !49
  %1537 = sext i8 %1536 to i32
  br label %1538

1538:                                             ; preds = %1529, %1526
  %1539 = phi i32 [ %1537, %1529 ], [ 0, %1526 ]
  %1540 = load i32, ptr %9, align 4, !tbaa !66
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1555, label %1542

1542:                                             ; preds = %1538
  %1543 = getelementptr inbounds %struct.slice, ptr %1462, i64 0, i32 128
  %1544 = load ptr, ptr %1543, align 8, !tbaa !68
  %1545 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %1546 = load i32, ptr %1545, align 4, !tbaa !69
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds i8, ptr %1544, i64 %1547
  %1549 = load i8, ptr %1548, align 1, !tbaa !49
  %1550 = sext i8 %1549 to i32
  br label %1555

1551:                                             ; preds = %1493
  %1552 = load i32, ptr %7, align 16, !tbaa !66
  %1553 = load i32, ptr %8, align 4, !tbaa !66
  %1554 = load i32, ptr %9, align 4, !tbaa !66
  br label %1555

1555:                                             ; preds = %1551, %1542, %1538
  %1556 = phi i32 [ %1554, %1551 ], [ %1550, %1542 ], [ 0, %1538 ]
  %1557 = phi i32 [ %1552, %1551 ], [ %1523, %1542 ], [ %1523, %1538 ]
  %1558 = phi i32 [ %1553, %1551 ], [ %1539, %1542 ], [ %1539, %1538 ]
  %1559 = icmp ne i32 %1558, 0
  %1560 = icmp ne i32 %1557, 0
  %1561 = select i1 %1559, i1 %1560, i1 false
  %1562 = icmp ne i32 %1556, 0
  %1563 = select i1 %1561, i1 %1562, i1 false
  br i1 %1563, label %1568, label %1564

1564:                                             ; preds = %1555
  %1565 = getelementptr inbounds %struct.slice, ptr %1462, i64 0, i32 20
  %1566 = load i32, ptr %1565, align 4, !tbaa !76
  %1567 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %1566)
  br label %1719

1568:                                             ; preds = %1555
  %1569 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %1570 = load i16, ptr %1569, align 2, !tbaa !71
  %1571 = sext i16 %1570 to i64
  %1572 = getelementptr inbounds ptr, ptr %1476, i64 %1571
  %1573 = load ptr, ptr %1572, align 8, !tbaa !48
  %1574 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %1575 = load i16, ptr %1574, align 4, !tbaa !72
  %1576 = sext i16 %1575 to i64
  %1577 = getelementptr inbounds i16, ptr %1573, i64 %1576
  %1578 = getelementptr inbounds i16, ptr %1577, i64 1
  %1579 = load i16, ptr %1577, align 2, !tbaa !73
  %1580 = getelementptr inbounds i16, ptr %1577, i64 2
  %1581 = load i16, ptr %1578, align 2, !tbaa !73
  %1582 = load i16, ptr %1580, align 2, !tbaa !73
  %1583 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %1584 = load i16, ptr %1583, align 2, !tbaa !71
  %1585 = sext i16 %1584 to i64
  %1586 = getelementptr inbounds ptr, ptr %1476, i64 %1585
  %1587 = load ptr, ptr %1586, align 8, !tbaa !48
  %1588 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %1589 = load i16, ptr %1588, align 4, !tbaa !72
  %1590 = sext i16 %1589 to i64
  %1591 = getelementptr inbounds i16, ptr %1587, i64 %1590
  %1592 = load i16, ptr %1591, align 2, !tbaa !73
  %1593 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 5
  %1594 = load i16, ptr %1593, align 2, !tbaa !71
  %1595 = sext i16 %1594 to i64
  %1596 = getelementptr inbounds ptr, ptr %1476, i64 %1595
  %1597 = load ptr, ptr %1596, align 8, !tbaa !48
  %1598 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 4
  %1599 = load i16, ptr %1598, align 4, !tbaa !72
  %1600 = sext i16 %1599 to i64
  %1601 = getelementptr inbounds i16, ptr %1597, i64 %1600
  %1602 = load i16, ptr %1601, align 2, !tbaa !73
  %1603 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 5
  %1604 = load i16, ptr %1603, align 2, !tbaa !71
  %1605 = sext i16 %1604 to i64
  %1606 = getelementptr inbounds ptr, ptr %1476, i64 %1605
  %1607 = load ptr, ptr %1606, align 8, !tbaa !48
  %1608 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 4
  %1609 = load i16, ptr %1608, align 4, !tbaa !72
  %1610 = sext i16 %1609 to i64
  %1611 = getelementptr inbounds i16, ptr %1607, i64 %1610
  %1612 = load i16, ptr %1611, align 2, !tbaa !73
  %1613 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 3, i32 5
  %1614 = load i16, ptr %1613, align 2, !tbaa !71
  %1615 = sext i16 %1614 to i64
  %1616 = getelementptr inbounds ptr, ptr %1476, i64 %1615
  %1617 = load ptr, ptr %1616, align 8, !tbaa !48
  %1618 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 3, i32 4
  %1619 = load i16, ptr %1618, align 4, !tbaa !72
  %1620 = sext i16 %1619 to i64
  %1621 = getelementptr inbounds i16, ptr %1617, i64 %1620
  %1622 = load i16, ptr %1621, align 2, !tbaa !73
  %1623 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %1624 = load i16, ptr %1623, align 2, !tbaa !71
  %1625 = sext i16 %1624 to i64
  %1626 = getelementptr inbounds ptr, ptr %1476, i64 %1625
  %1627 = load ptr, ptr %1626, align 8, !tbaa !48
  %1628 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %1629 = load i16, ptr %1628, align 4, !tbaa !72
  %1630 = sext i16 %1629 to i64
  %1631 = getelementptr inbounds i16, ptr %1627, i64 %1630
  %1632 = load i16, ptr %1631, align 2, !tbaa !73
  %1633 = zext i16 %1612 to i32
  %1634 = zext i16 %1622 to i32
  %1635 = add nuw nsw i32 %1633, 1
  %1636 = add nuw nsw i32 %1635, %1634
  %1637 = lshr i32 %1636, 1
  %1638 = trunc i32 %1637 to i16
  %1639 = zext i16 %1602 to i32
  %1640 = shl nuw nsw i32 %1633, 1
  %1641 = add nuw nsw i32 %1639, 2
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = add nuw nsw i32 %1642, %1634
  %1644 = lshr i32 %1643, 2
  %1645 = trunc i32 %1644 to i16
  %1646 = add nuw nsw i32 %1639, 1
  %1647 = add nuw nsw i32 %1646, %1633
  %1648 = lshr i32 %1647, 1
  %1649 = trunc i32 %1648 to i16
  %1650 = zext i16 %1592 to i32
  %1651 = shl nuw nsw i32 %1639, 1
  %1652 = add nuw nsw i32 %1650, 2
  %1653 = add nuw nsw i32 %1652, %1651
  %1654 = add nuw nsw i32 %1653, %1633
  %1655 = lshr i32 %1654, 2
  %1656 = trunc i32 %1655 to i16
  %1657 = add nuw nsw i32 %1650, 1
  %1658 = add nuw nsw i32 %1657, %1639
  %1659 = lshr i32 %1658, 1
  %1660 = trunc i32 %1659 to i16
  %1661 = zext i16 %1632 to i32
  %1662 = shl nuw nsw i32 %1650, 1
  %1663 = add nuw nsw i32 %1639, 2
  %1664 = add nuw nsw i32 %1663, %1662
  %1665 = add nuw nsw i32 %1664, %1661
  %1666 = lshr i32 %1665, 2
  %1667 = trunc i32 %1666 to i16
  %1668 = add nuw nsw i32 %1650, 1
  %1669 = add nuw nsw i32 %1668, %1661
  %1670 = lshr i32 %1669, 1
  %1671 = trunc i32 %1670 to i16
  %1672 = shl nuw nsw i32 %1661, 1
  %1673 = zext i16 %1579 to i32
  %1674 = add nuw nsw i32 %1673, 2
  %1675 = add nuw nsw i32 %1674, %1650
  %1676 = add nuw nsw i32 %1675, %1672
  %1677 = lshr i32 %1676, 2
  %1678 = trunc i32 %1677 to i16
  %1679 = shl nuw nsw i32 %1673, 1
  %1680 = zext i16 %1581 to i32
  %1681 = add nuw nsw i32 %1661, 2
  %1682 = add nuw nsw i32 %1681, %1679
  %1683 = add nuw nsw i32 %1682, %1680
  %1684 = lshr i32 %1683, 2
  %1685 = trunc i32 %1684 to i16
  %1686 = shl nuw nsw i32 %1680, 1
  %1687 = zext i16 %1582 to i32
  %1688 = add nuw nsw i32 %1673, 2
  %1689 = add nuw nsw i32 %1688, %1686
  %1690 = add nuw nsw i32 %1689, %1687
  %1691 = lshr i32 %1690, 2
  %1692 = trunc i32 %1691 to i16
  %1693 = sext i32 %3 to i64
  %1694 = getelementptr inbounds ptr, ptr %1481, i64 %1693
  %1695 = load ptr, ptr %1694, align 8, !tbaa !48
  %1696 = sext i32 %2 to i64
  %1697 = getelementptr inbounds i16, ptr %1695, i64 %1696
  store i16 %1671, ptr %1697, align 2
  %1698 = getelementptr inbounds i8, ptr %1697, i64 2
  store i16 %1678, ptr %1698, align 2
  %1699 = getelementptr inbounds i8, ptr %1697, i64 4
  store i16 %1685, ptr %1699, align 2
  %1700 = getelementptr inbounds i8, ptr %1697, i64 6
  store i16 %1692, ptr %1700, align 2
  %1701 = getelementptr ptr, ptr %1694, i64 1
  %1702 = load ptr, ptr %1701, align 8, !tbaa !48
  %1703 = getelementptr inbounds i16, ptr %1702, i64 %1696
  store i16 %1660, ptr %1703, align 2
  %1704 = getelementptr inbounds i8, ptr %1703, i64 2
  store i16 %1667, ptr %1704, align 2
  %1705 = getelementptr inbounds i8, ptr %1703, i64 4
  store i16 %1671, ptr %1705, align 2
  %1706 = getelementptr inbounds i8, ptr %1703, i64 6
  store i16 %1678, ptr %1706, align 2
  %1707 = getelementptr ptr, ptr %1694, i64 2
  %1708 = load ptr, ptr %1707, align 8, !tbaa !48
  %1709 = getelementptr inbounds i16, ptr %1708, i64 %1696
  store i16 %1649, ptr %1709, align 2
  %1710 = getelementptr inbounds i8, ptr %1709, i64 2
  store i16 %1656, ptr %1710, align 2
  %1711 = getelementptr inbounds i8, ptr %1709, i64 4
  store i16 %1660, ptr %1711, align 2
  %1712 = getelementptr inbounds i8, ptr %1709, i64 6
  store i16 %1667, ptr %1712, align 2
  %1713 = getelementptr ptr, ptr %1694, i64 3
  %1714 = load ptr, ptr %1713, align 8, !tbaa !48
  %1715 = getelementptr inbounds i16, ptr %1714, i64 %1696
  store i16 %1638, ptr %1715, align 2
  %1716 = getelementptr inbounds i8, ptr %1715, i64 2
  store i16 %1645, ptr %1716, align 2
  %1717 = getelementptr inbounds i8, ptr %1715, i64 4
  store i16 %1649, ptr %1717, align 2
  %1718 = getelementptr inbounds i8, ptr %1715, i64 6
  store i16 %1656, ptr %1718, align 2
  br label %1719

1719:                                             ; preds = %1564, %1568
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #4
  br label %1723

1720:                                             ; preds = %6
  %1721 = zext i8 %34 to i32
  %1722 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1721)
  br label %1723

1723:                                             ; preds = %1720, %1719, %1460, %1204, %954, %846, %656, %404, %307, %231
  %1724 = phi i32 [ 1, %1720 ], [ 0, %1719 ], [ 0, %1460 ], [ 0, %1204 ], [ 0, %954 ], [ 0, %846 ], [ 0, %656 ], [ 0, %404 ], [ 0, %307 ], [ 0, %231 ]
  ret i32 %1724
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!42 = !{!43, !36, i64 848800}
!43 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !44, i64 849304, !44, i64 849624, !44, i64 849944, !44, i64 850264, !44, i64 850584, !44, i64 850904, !44, i64 851224, !44, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !47, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!44 = !{!"image_data", !45, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!45 = !{!"frame_format", !39, i64 0, !39, i64 4, !46, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!46 = !{!"double", !37, i64 0}
!47 = !{!"long", !37, i64 0}
!48 = !{!36, !36, i64 0}
!49 = !{!37, !37, i64 0}
!50 = !{!35, !37, i64 372}
!51 = !{!35, !36, i64 0}
!52 = !{!53, !36, i64 13520}
!53 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !54, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!54 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!55 = !{!56, !36, i64 136}
!56 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !57, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!57 = !{!"pic_motion_params_old", !36, i64 0}
!58 = !{!53, !36, i64 1248}
!59 = !{!43, !36, i64 856744}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!43, !36, i64 8}
!64 = !{!65, !39, i64 2204}
!65 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!66 = !{!67, !39, i64 0}
!67 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!68 = !{!53, !36, i64 13544}
!69 = !{!67, !39, i64 4}
!70 = distinct !{!70, !61, !62}
!71 = !{!67, !41, i64 14}
!72 = !{!67, !41, i64 12}
!73 = !{!41, !41, i64 0}
!74 = !{!39, !39, i64 0}
!75 = distinct !{!75, !61, !62}
!76 = !{!53, !39, i64 108}
!77 = distinct !{!77, !61, !62}
!78 = distinct !{!78, !61, !62}
!79 = distinct !{!79, !61, !62}
!80 = distinct !{!80, !61, !62}
!81 = distinct !{!81, !61, !62}
!82 = distinct !{!82, !61, !62}
!83 = distinct !{!83, !61, !62}
!84 = distinct !{!84, !61, !62}
!85 = distinct !{!85, !61, !62}
!86 = distinct !{!86, !61, !62}
!87 = distinct !{!87, !61, !62}
!88 = distinct !{!88, !61, !62}
