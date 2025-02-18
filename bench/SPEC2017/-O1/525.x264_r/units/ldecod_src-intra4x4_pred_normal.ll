; ModuleID = 'ldecod_src/intra4x4_pred_normal.c'
source_filename = "ldecod_src/intra4x4_pred_normal.c"
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
define dso_local noundef i32 @intra4x4_pred_normal(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
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
  %18 = alloca %struct.pix_pos, align 4
  %19 = alloca %struct.pix_pos, align 4
  %20 = alloca %struct.pix_pos, align 4
  %21 = alloca %struct.pix_pos, align 4
  %22 = alloca %struct.pix_pos, align 4
  %23 = alloca %struct.pix_pos, align 4
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
  switch i8 %34, label %1498 [
    i8 2, label %36
    i8 0, label %192
    i8 1, label %268
    i8 4, label %342
    i8 3, label %552
    i8 5, label %742
    i8 7, label %956
    i8 8, label %1150
    i8 6, label %1281
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #4
  %52 = getelementptr inbounds %struct.slice, ptr %37, i64 0, i32 77
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = zext i32 %1 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = add nsw i32 %2, -1
  %58 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %57, i32 noundef %3, ptr noundef nonnull %58, ptr noundef nonnull %23) #4
  %59 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %59, ptr noundef nonnull %58, ptr noundef nonnull %24) #4
  %60 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !59
  %62 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %61, i64 0, i32 30
  %63 = load i32, ptr %62, align 4, !tbaa !60
  %64 = icmp eq i32 %63, 0
  %65 = load i32, ptr %23, align 4, !tbaa !62
  br i1 %64, label %90, label %66

66:                                               ; preds = %49
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.slice, ptr %37, i64 0, i32 128
  %70 = load ptr, ptr %69, align 8, !tbaa !64
  %71 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !65
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !49
  %76 = sext i8 %75 to i32
  br label %77

77:                                               ; preds = %68, %66
  %78 = phi i32 [ %76, %68 ], [ 0, %66 ]
  %79 = load i32, ptr %24, align 4, !tbaa !62
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.slice, ptr %37, i64 0, i32 128
  %83 = load ptr, ptr %82, align 8, !tbaa !64
  %84 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !65
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %83, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !49
  %89 = sext i8 %88 to i32
  br label %92

90:                                               ; preds = %49
  %91 = load i32, ptr %24, align 4, !tbaa !62
  br label %92

92:                                               ; preds = %90, %81, %77
  %93 = phi i32 [ %91, %90 ], [ %89, %81 ], [ 0, %77 ]
  %94 = phi i32 [ %65, %90 ], [ %78, %81 ], [ %78, %77 ]
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 5
  %98 = load i16, ptr %97, align 2, !tbaa !66
  %99 = sext i16 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %51, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !48
  %102 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 4
  %103 = load i16, ptr %102, align 4, !tbaa !67
  %104 = sext i16 %103 to i64
  %105 = getelementptr inbounds i16, ptr %101, i64 %104
  %106 = getelementptr inbounds i16, ptr %105, i64 1
  %107 = load i16, ptr %105, align 2, !tbaa !68
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds i16, ptr %105, i64 2
  %110 = load i16, ptr %106, align 2, !tbaa !68
  %111 = zext i16 %110 to i32
  %112 = add nuw nsw i32 %111, %108
  %113 = getelementptr inbounds i16, ptr %105, i64 3
  %114 = load i16, ptr %109, align 2, !tbaa !68
  %115 = zext i16 %114 to i32
  %116 = add nuw nsw i32 %112, %115
  %117 = load i16, ptr %113, align 2, !tbaa !68
  %118 = zext i16 %117 to i32
  %119 = add nuw nsw i32 %116, %118
  br label %120

120:                                              ; preds = %96, %92
  %121 = phi i32 [ %119, %96 ], [ 0, %92 ]
  %122 = icmp ne i32 %94, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 5
  %125 = load i16, ptr %124, align 2, !tbaa !66
  %126 = sext i16 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %51, i64 %126
  %128 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 4
  %129 = load i16, ptr %128, align 4, !tbaa !67
  %130 = getelementptr inbounds ptr, ptr %127, i64 1
  %131 = load ptr, ptr %127, align 8, !tbaa !48
  %132 = sext i16 %129 to i64
  %133 = getelementptr inbounds i16, ptr %131, i64 %132
  %134 = load i16, ptr %133, align 2, !tbaa !68
  %135 = zext i16 %134 to i32
  %136 = add nuw nsw i32 %121, %135
  %137 = getelementptr inbounds ptr, ptr %127, i64 2
  %138 = load ptr, ptr %130, align 8, !tbaa !48
  %139 = getelementptr inbounds i16, ptr %138, i64 %132
  %140 = load i16, ptr %139, align 2, !tbaa !68
  %141 = zext i16 %140 to i32
  %142 = add nuw nsw i32 %136, %141
  %143 = getelementptr inbounds ptr, ptr %127, i64 3
  %144 = load ptr, ptr %137, align 8, !tbaa !48
  %145 = getelementptr inbounds i16, ptr %144, i64 %132
  %146 = load i16, ptr %145, align 2, !tbaa !68
  %147 = zext i16 %146 to i32
  %148 = add nuw nsw i32 %142, %147
  %149 = load ptr, ptr %143, align 8, !tbaa !48
  %150 = getelementptr inbounds i16, ptr %149, i64 %132
  %151 = load i16, ptr %150, align 2, !tbaa !68
  %152 = zext i16 %151 to i32
  %153 = add nuw nsw i32 %148, %152
  br label %154

154:                                              ; preds = %123, %120
  %155 = phi i32 [ %153, %123 ], [ %121, %120 ]
  %156 = and i1 %95, %122
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = add nuw nsw i32 %155, 4
  %159 = lshr i32 %158, 3
  br label %174

160:                                              ; preds = %154
  %161 = icmp eq i32 %93, 0
  %162 = and i1 %161, %122
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = add nuw nsw i32 %155, 2
  %165 = lshr i32 %164, 2
  br label %174

166:                                              ; preds = %160
  %167 = or i1 %161, %122
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  %169 = add nuw nsw i32 %155, 2
  %170 = lshr i32 %169, 2
  br label %174

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 69, i64 %54
  %173 = load i32, ptr %172, align 4, !tbaa !69
  br label %174

174:                                              ; preds = %171, %168, %163, %157
  %175 = phi i32 [ %159, %157 ], [ %165, %163 ], [ %173, %171 ], [ %170, %168 ]
  %176 = trunc i32 %175 to i16
  %177 = sext i32 %2 to i64
  %178 = sext i32 %3 to i64
  %179 = add nsw i32 %3, 3
  %180 = sext i32 %179 to i64
  br label %181

181:                                              ; preds = %174, %181
  %182 = phi i64 [ %178, %174 ], [ %189, %181 ]
  %183 = getelementptr inbounds ptr, ptr %56, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !48
  %185 = getelementptr inbounds i16, ptr %184, i64 %177
  store i16 %176, ptr %185, align 2, !tbaa !68
  %186 = getelementptr i16, ptr %185, i64 1
  store i16 %176, ptr %186, align 2, !tbaa !68
  %187 = getelementptr i16, ptr %185, i64 2
  store i16 %176, ptr %187, align 2, !tbaa !68
  %188 = getelementptr i16, ptr %185, i64 3
  store i16 %176, ptr %188, align 2, !tbaa !68
  %189 = add nsw i64 %182, 1
  %190 = icmp slt i64 %182, %180
  br i1 %190, label %181, label %191, !llvm.loop !70

191:                                              ; preds = %181
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #4
  br label %1501

192:                                              ; preds = %6
  %193 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #4
  %194 = add nsw i32 %3, -1
  %195 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %194, ptr noundef nonnull %195, ptr noundef nonnull %22) #4
  %196 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !59
  %198 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %197, i64 0, i32 30
  %199 = load i32, ptr %198, align 4, !tbaa !60
  %200 = icmp eq i32 %199, 0
  %201 = load i32, ptr %22, align 4, !tbaa !62
  br i1 %200, label %213, label %202

202:                                              ; preds = %192
  %203 = icmp eq i32 %201, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.slice, ptr %193, i64 0, i32 128
  %206 = load ptr, ptr %205, align 8, !tbaa !64
  %207 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !65
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, ptr %206, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !49
  %212 = sext i8 %211 to i32
  br label %213

213:                                              ; preds = %192, %204, %202
  %214 = phi i32 [ %212, %204 ], [ 0, %202 ], [ %201, %192 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.slice, ptr %193, i64 0, i32 20
  %218 = load i32, ptr %217, align 4, !tbaa !73
  %219 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %218)
  br label %267

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.slice, ptr %193, i64 0, i32 77
  %222 = load ptr, ptr %221, align 8, !tbaa !58
  %223 = zext i32 %1 to i64
  %224 = getelementptr inbounds ptr, ptr %222, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !48
  %226 = icmp eq i32 %1, 0
  %227 = getelementptr inbounds %struct.slice, ptr %193, i64 0, i32 125
  %228 = load ptr, ptr %227, align 8, !tbaa !52
  br i1 %226, label %235, label %229

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.storable_picture, ptr %228, i64 0, i32 33
  %231 = load ptr, ptr %230, align 8, !tbaa !55
  %232 = add i32 %1, -1
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %231, i64 %233
  br label %237

235:                                              ; preds = %220
  %236 = getelementptr inbounds %struct.storable_picture, ptr %228, i64 0, i32 32
  br label %237

237:                                              ; preds = %235, %229
  %238 = phi ptr [ %236, %235 ], [ %234, %229 ]
  %239 = load ptr, ptr %238, align 8, !tbaa !48
  %240 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 5
  %241 = load i16, ptr %240, align 2, !tbaa !66
  %242 = sext i16 %241 to i64
  %243 = getelementptr inbounds ptr, ptr %239, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !48
  %245 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 4
  %246 = load i16, ptr %245, align 4, !tbaa !67
  %247 = sext i16 %246 to i64
  %248 = getelementptr inbounds i16, ptr %244, i64 %247
  %249 = sext i32 %3 to i64
  %250 = getelementptr inbounds ptr, ptr %225, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !48
  %252 = sext i32 %2 to i64
  %253 = getelementptr inbounds i16, ptr %251, i64 %252
  %254 = load i64, ptr %248, align 2
  store i64 %254, ptr %253, align 2
  %255 = getelementptr ptr, ptr %250, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !48
  %257 = getelementptr inbounds i16, ptr %256, i64 %252
  %258 = load i64, ptr %248, align 2
  store i64 %258, ptr %257, align 2
  %259 = getelementptr ptr, ptr %250, i64 2
  %260 = load ptr, ptr %259, align 8, !tbaa !48
  %261 = getelementptr inbounds i16, ptr %260, i64 %252
  %262 = load i64, ptr %248, align 2
  store i64 %262, ptr %261, align 2
  %263 = getelementptr ptr, ptr %250, i64 3
  %264 = load ptr, ptr %263, align 8, !tbaa !48
  %265 = getelementptr inbounds i16, ptr %264, i64 %252
  %266 = load i64, ptr %248, align 2
  store i64 %266, ptr %265, align 2
  br label %267

267:                                              ; preds = %216, %237
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #4
  br label %1501

268:                                              ; preds = %6
  %269 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #4
  %270 = add nsw i32 %2, -1
  %271 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %270, i32 noundef %3, ptr noundef nonnull %271, ptr noundef nonnull %21) #4
  %272 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !59
  %274 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %273, i64 0, i32 30
  %275 = load i32, ptr %274, align 4, !tbaa !60
  %276 = icmp eq i32 %275, 0
  %277 = load i32, ptr %21, align 4, !tbaa !62
  br i1 %276, label %289, label %278

278:                                              ; preds = %268
  %279 = icmp eq i32 %277, 0
  br i1 %279, label %289, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.slice, ptr %269, i64 0, i32 128
  %282 = load ptr, ptr %281, align 8, !tbaa !64
  %283 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 1
  %284 = load i32, ptr %283, align 4, !tbaa !65
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, ptr %282, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !49
  %288 = sext i8 %287 to i32
  br label %289

289:                                              ; preds = %268, %280, %278
  %290 = phi i32 [ %288, %280 ], [ 0, %278 ], [ %277, %268 ]
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.slice, ptr %269, i64 0, i32 20
  %294 = load i32, ptr %293, align 4, !tbaa !73
  %295 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %294)
  br label %341

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 5
  %298 = load i16, ptr %297, align 2, !tbaa !66
  %299 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 4
  %300 = load i16, ptr %299, align 4, !tbaa !67
  %301 = getelementptr inbounds %struct.slice, ptr %269, i64 0, i32 77
  %302 = load ptr, ptr %301, align 8, !tbaa !58
  %303 = zext i32 %1 to i64
  %304 = getelementptr inbounds ptr, ptr %302, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !48
  %306 = sext i32 %3 to i64
  %307 = getelementptr inbounds ptr, ptr %305, i64 %306
  %308 = icmp eq i32 %1, 0
  %309 = getelementptr inbounds %struct.slice, ptr %269, i64 0, i32 125
  %310 = load ptr, ptr %309, align 8, !tbaa !52
  br i1 %308, label %317, label %311

311:                                              ; preds = %296
  %312 = getelementptr inbounds %struct.storable_picture, ptr %310, i64 0, i32 33
  %313 = load ptr, ptr %312, align 8, !tbaa !55
  %314 = add i32 %1, -1
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds ptr, ptr %313, i64 %315
  br label %319

317:                                              ; preds = %296
  %318 = getelementptr inbounds %struct.storable_picture, ptr %310, i64 0, i32 32
  br label %319

319:                                              ; preds = %317, %311
  %320 = phi ptr [ %316, %311 ], [ %318, %317 ]
  %321 = load ptr, ptr %320, align 8, !tbaa !48
  %322 = sext i16 %300 to i64
  %323 = sext i32 %2 to i64
  %324 = sext i16 %298 to i64
  br label %325

325:                                              ; preds = %319, %325
  %326 = phi i64 [ %324, %319 ], [ %330, %325 ]
  %327 = phi i64 [ 0, %319 ], [ %339, %325 ]
  %328 = getelementptr inbounds ptr, ptr %307, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !48
  %330 = add nsw i64 %326, 1
  %331 = getelementptr inbounds ptr, ptr %321, i64 %326
  %332 = load ptr, ptr %331, align 8, !tbaa !48
  %333 = getelementptr inbounds i16, ptr %332, i64 %322
  %334 = load i16, ptr %333, align 2, !tbaa !68
  %335 = getelementptr inbounds i16, ptr %329, i64 %323
  store i16 %334, ptr %335, align 2, !tbaa !68
  %336 = getelementptr i16, ptr %335, i64 1
  store i16 %334, ptr %336, align 2, !tbaa !68
  %337 = getelementptr i16, ptr %335, i64 2
  store i16 %334, ptr %337, align 2, !tbaa !68
  %338 = getelementptr i16, ptr %335, i64 3
  store i16 %334, ptr %338, align 2, !tbaa !68
  %339 = add nuw nsw i64 %327, 1
  %340 = icmp eq i64 %339, 4
  br i1 %340, label %341, label %325, !llvm.loop !74

341:                                              ; preds = %325, %292
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #4
  br label %1501

342:                                              ; preds = %6
  %343 = load ptr, ptr %0, align 8, !tbaa !51
  %344 = icmp eq i32 %1, 0
  %345 = getelementptr inbounds %struct.slice, ptr %343, i64 0, i32 125
  %346 = load ptr, ptr %345, align 8, !tbaa !52
  br i1 %344, label %353, label %347

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.storable_picture, ptr %346, i64 0, i32 33
  %349 = load ptr, ptr %348, align 8, !tbaa !55
  %350 = add i32 %1, -1
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds ptr, ptr %349, i64 %351
  br label %355

353:                                              ; preds = %342
  %354 = getelementptr inbounds %struct.storable_picture, ptr %346, i64 0, i32 32
  br label %355

355:                                              ; preds = %353, %347
  %356 = phi ptr [ %352, %347 ], [ %354, %353 ]
  %357 = load ptr, ptr %356, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #4
  %358 = getelementptr inbounds %struct.slice, ptr %343, i64 0, i32 77
  %359 = load ptr, ptr %358, align 8, !tbaa !58
  %360 = zext i32 %1 to i64
  %361 = getelementptr inbounds ptr, ptr %359, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !48
  %363 = add nsw i32 %2, -1
  %364 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %363, i32 noundef %3, ptr noundef nonnull %364, ptr noundef nonnull %18) #4
  %365 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %365, ptr noundef nonnull %364, ptr noundef nonnull %19) #4
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %363, i32 noundef %365, ptr noundef nonnull %364, ptr noundef nonnull %20) #4
  %366 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !59
  %368 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %367, i64 0, i32 30
  %369 = load i32, ptr %368, align 4, !tbaa !60
  %370 = icmp eq i32 %369, 0
  %371 = load i32, ptr %18, align 4, !tbaa !62
  br i1 %370, label %409, label %372

372:                                              ; preds = %355
  %373 = icmp eq i32 %371, 0
  br i1 %373, label %383, label %374

374:                                              ; preds = %372
  %375 = getelementptr inbounds %struct.slice, ptr %343, i64 0, i32 128
  %376 = load ptr, ptr %375, align 8, !tbaa !64
  %377 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 1
  %378 = load i32, ptr %377, align 4, !tbaa !65
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, ptr %376, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !49
  %382 = sext i8 %381 to i32
  br label %383

383:                                              ; preds = %374, %372
  %384 = phi i32 [ %382, %374 ], [ 0, %372 ]
  %385 = load i32, ptr %19, align 4, !tbaa !62
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %396, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.slice, ptr %343, i64 0, i32 128
  %389 = load ptr, ptr %388, align 8, !tbaa !64
  %390 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 1
  %391 = load i32, ptr %390, align 4, !tbaa !65
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %389, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !49
  %395 = sext i8 %394 to i32
  br label %396

396:                                              ; preds = %387, %383
  %397 = phi i32 [ %395, %387 ], [ 0, %383 ]
  %398 = load i32, ptr %20, align 4, !tbaa !62
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %412, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.slice, ptr %343, i64 0, i32 128
  %402 = load ptr, ptr %401, align 8, !tbaa !64
  %403 = getelementptr inbounds %struct.pix_pos, ptr %20, i64 0, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !65
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %402, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !49
  %408 = sext i8 %407 to i32
  br label %412

409:                                              ; preds = %355
  %410 = load i32, ptr %19, align 4, !tbaa !62
  %411 = load i32, ptr %20, align 4, !tbaa !62
  br label %412

412:                                              ; preds = %409, %400, %396
  %413 = phi i32 [ %411, %409 ], [ %408, %400 ], [ 0, %396 ]
  %414 = phi i32 [ %371, %409 ], [ %384, %400 ], [ %384, %396 ]
  %415 = phi i32 [ %410, %409 ], [ %397, %400 ], [ %397, %396 ]
  %416 = icmp ne i32 %415, 0
  %417 = icmp ne i32 %414, 0
  %418 = select i1 %416, i1 %417, i1 false
  %419 = icmp ne i32 %413, 0
  %420 = select i1 %418, i1 %419, i1 false
  br i1 %420, label %425, label %421

421:                                              ; preds = %412
  %422 = getelementptr inbounds %struct.slice, ptr %343, i64 0, i32 20
  %423 = load i32, ptr %422, align 4, !tbaa !73
  %424 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %423)
  br label %551

425:                                              ; preds = %412
  %426 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 5
  %427 = load i16, ptr %426, align 2, !tbaa !66
  %428 = sext i16 %427 to i64
  %429 = getelementptr inbounds ptr, ptr %357, i64 %428
  %430 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 4
  %431 = load i16, ptr %430, align 4, !tbaa !67
  %432 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 5
  %433 = load i16, ptr %432, align 2, !tbaa !66
  %434 = sext i16 %433 to i64
  %435 = getelementptr inbounds ptr, ptr %357, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !48
  %437 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 4
  %438 = load i16, ptr %437, align 4, !tbaa !67
  %439 = sext i16 %438 to i64
  %440 = getelementptr inbounds i16, ptr %436, i64 %439
  %441 = getelementptr inbounds i16, ptr %440, i64 1
  %442 = load i16, ptr %440, align 2, !tbaa !68
  %443 = getelementptr inbounds i16, ptr %440, i64 2
  %444 = load i16, ptr %441, align 2, !tbaa !68
  %445 = getelementptr inbounds i16, ptr %440, i64 3
  %446 = load i16, ptr %443, align 2, !tbaa !68
  %447 = load i16, ptr %445, align 2, !tbaa !68
  %448 = getelementptr inbounds ptr, ptr %429, i64 1
  %449 = load ptr, ptr %429, align 8, !tbaa !48
  %450 = sext i16 %431 to i64
  %451 = getelementptr inbounds i16, ptr %449, i64 %450
  %452 = load i16, ptr %451, align 2, !tbaa !68
  %453 = getelementptr inbounds ptr, ptr %429, i64 2
  %454 = load ptr, ptr %448, align 8, !tbaa !48
  %455 = getelementptr inbounds i16, ptr %454, i64 %450
  %456 = load i16, ptr %455, align 2, !tbaa !68
  %457 = getelementptr inbounds ptr, ptr %429, i64 3
  %458 = load ptr, ptr %453, align 8, !tbaa !48
  %459 = getelementptr inbounds i16, ptr %458, i64 %450
  %460 = load i16, ptr %459, align 2, !tbaa !68
  %461 = load ptr, ptr %457, align 8, !tbaa !48
  %462 = getelementptr inbounds i16, ptr %461, i64 %450
  %463 = load i16, ptr %462, align 2, !tbaa !68
  %464 = getelementptr inbounds %struct.pix_pos, ptr %20, i64 0, i32 5
  %465 = load i16, ptr %464, align 2, !tbaa !66
  %466 = sext i16 %465 to i64
  %467 = getelementptr inbounds ptr, ptr %357, i64 %466
  %468 = load ptr, ptr %467, align 8, !tbaa !48
  %469 = getelementptr inbounds %struct.pix_pos, ptr %20, i64 0, i32 4
  %470 = load i16, ptr %469, align 4, !tbaa !67
  %471 = sext i16 %470 to i64
  %472 = getelementptr inbounds i16, ptr %468, i64 %471
  %473 = load i16, ptr %472, align 2, !tbaa !68
  %474 = zext i16 %463 to i32
  %475 = zext i16 %460 to i32
  %476 = shl nuw nsw i32 %475, 1
  %477 = zext i16 %456 to i32
  %478 = add nuw nsw i32 %477, 2
  %479 = add nuw nsw i32 %478, %476
  %480 = add nuw nsw i32 %479, %474
  %481 = lshr i32 %480, 2
  %482 = trunc i32 %481 to i16
  %483 = shl nuw nsw i32 %477, 1
  %484 = zext i16 %452 to i32
  %485 = add nuw nsw i32 %484, 2
  %486 = add nuw nsw i32 %485, %483
  %487 = add nuw nsw i32 %486, %475
  %488 = lshr i32 %487, 2
  %489 = trunc i32 %488 to i16
  %490 = shl nuw nsw i32 %484, 1
  %491 = zext i16 %473 to i32
  %492 = add nuw nsw i32 %477, 2
  %493 = add nuw nsw i32 %492, %490
  %494 = add nuw nsw i32 %493, %491
  %495 = lshr i32 %494, 2
  %496 = trunc i32 %495 to i16
  %497 = shl nuw nsw i32 %491, 1
  %498 = zext i16 %442 to i32
  %499 = add nuw nsw i32 %498, 2
  %500 = add nuw nsw i32 %499, %484
  %501 = add nuw nsw i32 %500, %497
  %502 = lshr i32 %501, 2
  %503 = trunc i32 %502 to i16
  %504 = shl nuw nsw i32 %498, 1
  %505 = zext i16 %444 to i32
  %506 = add nuw nsw i32 %505, 2
  %507 = add nuw nsw i32 %506, %504
  %508 = add nuw nsw i32 %507, %491
  %509 = lshr i32 %508, 2
  %510 = trunc i32 %509 to i16
  %511 = shl nuw nsw i32 %505, 1
  %512 = zext i16 %446 to i32
  %513 = add nuw nsw i32 %498, 2
  %514 = add nuw nsw i32 %513, %511
  %515 = add nuw nsw i32 %514, %512
  %516 = lshr i32 %515, 2
  %517 = trunc i32 %516 to i16
  %518 = shl nuw nsw i32 %512, 1
  %519 = zext i16 %447 to i32
  %520 = add nuw nsw i32 %505, 2
  %521 = add nuw nsw i32 %520, %518
  %522 = add nuw nsw i32 %521, %519
  %523 = lshr i32 %522, 2
  %524 = trunc i32 %523 to i16
  %525 = sext i32 %3 to i64
  %526 = getelementptr inbounds ptr, ptr %362, i64 %525
  %527 = load ptr, ptr %526, align 8, !tbaa !48
  %528 = sext i32 %2 to i64
  %529 = getelementptr inbounds i16, ptr %527, i64 %528
  store i16 %503, ptr %529, align 2
  %530 = getelementptr inbounds i8, ptr %529, i64 2
  store i16 %510, ptr %530, align 2
  %531 = getelementptr inbounds i8, ptr %529, i64 4
  store i16 %517, ptr %531, align 2
  %532 = getelementptr inbounds i8, ptr %529, i64 6
  store i16 %524, ptr %532, align 2
  %533 = getelementptr ptr, ptr %526, i64 1
  %534 = load ptr, ptr %533, align 8, !tbaa !48
  %535 = getelementptr inbounds i16, ptr %534, i64 %528
  store i16 %496, ptr %535, align 2
  %536 = getelementptr inbounds i8, ptr %535, i64 2
  store i16 %503, ptr %536, align 2
  %537 = getelementptr inbounds i8, ptr %535, i64 4
  store i16 %510, ptr %537, align 2
  %538 = getelementptr inbounds i8, ptr %535, i64 6
  store i16 %517, ptr %538, align 2
  %539 = getelementptr ptr, ptr %526, i64 2
  %540 = load ptr, ptr %539, align 8, !tbaa !48
  %541 = getelementptr inbounds i16, ptr %540, i64 %528
  store i16 %489, ptr %541, align 2
  %542 = getelementptr inbounds i8, ptr %541, i64 2
  store i16 %496, ptr %542, align 2
  %543 = getelementptr inbounds i8, ptr %541, i64 4
  store i16 %503, ptr %543, align 2
  %544 = getelementptr inbounds i8, ptr %541, i64 6
  store i16 %510, ptr %544, align 2
  %545 = getelementptr ptr, ptr %526, i64 3
  %546 = load ptr, ptr %545, align 8, !tbaa !48
  %547 = getelementptr inbounds i16, ptr %546, i64 %528
  store i16 %482, ptr %547, align 2
  %548 = getelementptr inbounds i8, ptr %547, i64 2
  store i16 %489, ptr %548, align 2
  %549 = getelementptr inbounds i8, ptr %547, i64 4
  store i16 %496, ptr %549, align 2
  %550 = getelementptr inbounds i8, ptr %547, i64 6
  store i16 %503, ptr %550, align 2
  br label %551

551:                                              ; preds = %421, %425
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #4
  br label %1501

552:                                              ; preds = %6
  %553 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #4
  %554 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %555 = load ptr, ptr %554, align 8, !tbaa !75
  %556 = add nsw i32 %3, -1
  %557 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %555(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %556, ptr noundef nonnull %557, ptr noundef nonnull %16) #4
  %558 = load ptr, ptr %554, align 8, !tbaa !75
  %559 = add nsw i32 %2, 4
  call void %558(ptr noundef nonnull %0, i32 noundef %559, i32 noundef %556, ptr noundef nonnull %557, ptr noundef nonnull %17) #4
  %560 = load i32, ptr %17, align 4, !tbaa !62
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %568, label %562

562:                                              ; preds = %552
  %563 = icmp ne i32 %2, 4
  %564 = and i32 %3, -9
  %565 = icmp ne i32 %564, 4
  %566 = or i1 %563, %565
  %567 = zext i1 %566 to i32
  br label %568

568:                                              ; preds = %562, %552
  %569 = phi i32 [ 0, %552 ], [ %567, %562 ]
  store i32 %569, ptr %17, align 4, !tbaa !62
  %570 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %571 = load ptr, ptr %570, align 8, !tbaa !59
  %572 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %571, i64 0, i32 30
  %573 = load i32, ptr %572, align 4, !tbaa !60
  %574 = icmp eq i32 %573, 0
  %575 = load i32, ptr %16, align 4, !tbaa !62
  br i1 %574, label %599, label %576

576:                                              ; preds = %568
  %577 = icmp eq i32 %575, 0
  br i1 %577, label %587, label %578

578:                                              ; preds = %576
  %579 = getelementptr inbounds %struct.slice, ptr %553, i64 0, i32 128
  %580 = load ptr, ptr %579, align 8, !tbaa !64
  %581 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 1
  %582 = load i32, ptr %581, align 4, !tbaa !65
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8, ptr %580, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !49
  %586 = sext i8 %585 to i32
  br label %587

587:                                              ; preds = %578, %576
  %588 = phi i32 [ %586, %578 ], [ 0, %576 ]
  %589 = icmp eq i32 %569, 0
  br i1 %589, label %599, label %590

590:                                              ; preds = %587
  %591 = getelementptr inbounds %struct.slice, ptr %553, i64 0, i32 128
  %592 = load ptr, ptr %591, align 8, !tbaa !64
  %593 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 1
  %594 = load i32, ptr %593, align 4, !tbaa !65
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i8, ptr %592, i64 %595
  %597 = load i8, ptr %596, align 1, !tbaa !49
  %598 = sext i8 %597 to i32
  br label %599

599:                                              ; preds = %568, %590, %587
  %600 = phi i32 [ %598, %590 ], [ 0, %587 ], [ %569, %568 ]
  %601 = phi i32 [ %588, %590 ], [ %588, %587 ], [ %575, %568 ]
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %607

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.slice, ptr %553, i64 0, i32 20
  %605 = load i32, ptr %604, align 4, !tbaa !73
  %606 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %605)
  br label %741

607:                                              ; preds = %599
  %608 = icmp eq i32 %1, 0
  %609 = getelementptr inbounds %struct.slice, ptr %553, i64 0, i32 125
  %610 = load ptr, ptr %609, align 8, !tbaa !52
  br i1 %608, label %617, label %611

611:                                              ; preds = %607
  %612 = getelementptr inbounds %struct.storable_picture, ptr %610, i64 0, i32 33
  %613 = load ptr, ptr %612, align 8, !tbaa !55
  %614 = add i32 %1, -1
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds ptr, ptr %613, i64 %615
  br label %619

617:                                              ; preds = %607
  %618 = getelementptr inbounds %struct.storable_picture, ptr %610, i64 0, i32 32
  br label %619

619:                                              ; preds = %617, %611
  %620 = phi ptr [ %616, %611 ], [ %618, %617 ]
  %621 = load ptr, ptr %620, align 8, !tbaa !48
  %622 = getelementptr inbounds %struct.slice, ptr %553, i64 0, i32 77
  %623 = load ptr, ptr %622, align 8, !tbaa !58
  %624 = zext i32 %1 to i64
  %625 = getelementptr inbounds ptr, ptr %623, i64 %624
  %626 = load ptr, ptr %625, align 8, !tbaa !48
  %627 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 5
  %628 = load i16, ptr %627, align 2, !tbaa !66
  %629 = sext i16 %628 to i64
  %630 = getelementptr inbounds ptr, ptr %621, i64 %629
  %631 = load ptr, ptr %630, align 8, !tbaa !48
  %632 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 4
  %633 = load i16, ptr %632, align 4, !tbaa !67
  %634 = sext i16 %633 to i64
  %635 = getelementptr inbounds i16, ptr %631, i64 %634
  %636 = getelementptr inbounds i16, ptr %635, i64 1
  %637 = load i16, ptr %635, align 2, !tbaa !68
  %638 = getelementptr inbounds i16, ptr %635, i64 2
  %639 = load i16, ptr %636, align 2, !tbaa !68
  %640 = getelementptr inbounds i16, ptr %635, i64 3
  %641 = load i16, ptr %638, align 2, !tbaa !68
  %642 = load i16, ptr %640, align 2, !tbaa !68
  %643 = icmp eq i32 %600, 0
  br i1 %643, label %661, label %644

644:                                              ; preds = %619
  %645 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 5
  %646 = load i16, ptr %645, align 2, !tbaa !66
  %647 = sext i16 %646 to i64
  %648 = getelementptr inbounds ptr, ptr %621, i64 %647
  %649 = load ptr, ptr %648, align 8, !tbaa !48
  %650 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 4
  %651 = load i16, ptr %650, align 4, !tbaa !67
  %652 = sext i16 %651 to i64
  %653 = getelementptr inbounds i16, ptr %649, i64 %652
  %654 = getelementptr inbounds i16, ptr %653, i64 1
  %655 = load i16, ptr %653, align 2, !tbaa !68
  %656 = getelementptr inbounds i16, ptr %653, i64 2
  %657 = load i16, ptr %654, align 2, !tbaa !68
  %658 = getelementptr inbounds i16, ptr %653, i64 3
  %659 = load i16, ptr %656, align 2, !tbaa !68
  %660 = load i16, ptr %658, align 2, !tbaa !68
  br label %661

661:                                              ; preds = %644, %619
  %662 = phi i16 [ %660, %644 ], [ %642, %619 ]
  %663 = phi i16 [ %659, %644 ], [ %642, %619 ]
  %664 = phi i16 [ %657, %644 ], [ %642, %619 ]
  %665 = phi i16 [ %655, %644 ], [ %642, %619 ]
  %666 = zext i16 %637 to i32
  %667 = zext i16 %641 to i32
  %668 = zext i16 %639 to i32
  %669 = shl nuw nsw i32 %668, 1
  %670 = add nuw nsw i32 %667, 2
  %671 = add nuw nsw i32 %670, %666
  %672 = add nuw nsw i32 %671, %669
  %673 = lshr i32 %672, 2
  %674 = trunc i32 %673 to i16
  %675 = zext i16 %642 to i32
  %676 = shl nuw nsw i32 %667, 1
  %677 = add nuw nsw i32 %675, 2
  %678 = add nuw nsw i32 %677, %668
  %679 = add nuw nsw i32 %678, %676
  %680 = lshr i32 %679, 2
  %681 = trunc i32 %680 to i16
  %682 = zext i16 %665 to i32
  %683 = shl nuw nsw i32 %675, 1
  %684 = add nuw nsw i32 %667, 2
  %685 = add nuw nsw i32 %684, %683
  %686 = add nuw nsw i32 %685, %682
  %687 = lshr i32 %686, 2
  %688 = trunc i32 %687 to i16
  %689 = zext i16 %664 to i32
  %690 = shl nuw nsw i32 %682, 1
  %691 = add nuw nsw i32 %675, 2
  %692 = add nuw nsw i32 %691, %689
  %693 = add nuw nsw i32 %692, %690
  %694 = lshr i32 %693, 2
  %695 = trunc i32 %694 to i16
  %696 = zext i16 %663 to i32
  %697 = shl nuw nsw i32 %689, 1
  %698 = add nuw nsw i32 %696, 2
  %699 = add nuw nsw i32 %698, %682
  %700 = add nuw nsw i32 %699, %697
  %701 = lshr i32 %700, 2
  %702 = trunc i32 %701 to i16
  %703 = zext i16 %662 to i32
  %704 = shl nuw nsw i32 %696, 1
  %705 = add nuw nsw i32 %689, 2
  %706 = add nuw nsw i32 %705, %703
  %707 = add nuw nsw i32 %706, %704
  %708 = lshr i32 %707, 2
  %709 = trunc i32 %708 to i16
  %710 = mul nuw nsw i32 %703, 3
  %711 = add nuw nsw i32 %696, 2
  %712 = add nuw nsw i32 %711, %710
  %713 = lshr i32 %712, 2
  %714 = trunc i32 %713 to i16
  %715 = sext i32 %3 to i64
  %716 = getelementptr inbounds ptr, ptr %626, i64 %715
  %717 = load ptr, ptr %716, align 8, !tbaa !48
  %718 = sext i32 %2 to i64
  %719 = getelementptr inbounds i16, ptr %717, i64 %718
  store i16 %674, ptr %719, align 2
  %720 = getelementptr inbounds i8, ptr %719, i64 2
  store i16 %681, ptr %720, align 2
  %721 = getelementptr inbounds i8, ptr %719, i64 4
  store i16 %688, ptr %721, align 2
  %722 = getelementptr inbounds i8, ptr %719, i64 6
  store i16 %695, ptr %722, align 2
  %723 = getelementptr ptr, ptr %716, i64 1
  %724 = load ptr, ptr %723, align 8, !tbaa !48
  %725 = getelementptr inbounds i16, ptr %724, i64 %718
  store i16 %681, ptr %725, align 2
  %726 = getelementptr inbounds i8, ptr %725, i64 2
  store i16 %688, ptr %726, align 2
  %727 = getelementptr inbounds i8, ptr %725, i64 4
  store i16 %695, ptr %727, align 2
  %728 = getelementptr inbounds i8, ptr %725, i64 6
  store i16 %702, ptr %728, align 2
  %729 = getelementptr ptr, ptr %716, i64 2
  %730 = load ptr, ptr %729, align 8, !tbaa !48
  %731 = getelementptr inbounds i16, ptr %730, i64 %718
  store i16 %688, ptr %731, align 2
  %732 = getelementptr inbounds i8, ptr %731, i64 2
  store i16 %695, ptr %732, align 2
  %733 = getelementptr inbounds i8, ptr %731, i64 4
  store i16 %702, ptr %733, align 2
  %734 = getelementptr inbounds i8, ptr %731, i64 6
  store i16 %709, ptr %734, align 2
  %735 = getelementptr ptr, ptr %716, i64 3
  %736 = load ptr, ptr %735, align 8, !tbaa !48
  %737 = getelementptr inbounds i16, ptr %736, i64 %718
  store i16 %695, ptr %737, align 2
  %738 = getelementptr inbounds i8, ptr %737, i64 2
  store i16 %702, ptr %738, align 2
  %739 = getelementptr inbounds i8, ptr %737, i64 4
  store i16 %709, ptr %739, align 2
  %740 = getelementptr inbounds i8, ptr %737, i64 6
  store i16 %714, ptr %740, align 2
  br label %741

741:                                              ; preds = %603, %661
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #4
  br label %1501

742:                                              ; preds = %6
  %743 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #4
  %744 = add nsw i32 %2, -1
  %745 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %744, i32 noundef %3, ptr noundef nonnull %745, ptr noundef nonnull %13) #4
  %746 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %746, ptr noundef nonnull %745, ptr noundef nonnull %14) #4
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %744, i32 noundef %746, ptr noundef nonnull %745, ptr noundef nonnull %15) #4
  %747 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %748 = load ptr, ptr %747, align 8, !tbaa !59
  %749 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %748, i64 0, i32 30
  %750 = load i32, ptr %749, align 4, !tbaa !60
  %751 = icmp eq i32 %750, 0
  %752 = load i32, ptr %13, align 4, !tbaa !62
  br i1 %751, label %790, label %753

753:                                              ; preds = %742
  %754 = icmp eq i32 %752, 0
  br i1 %754, label %764, label %755

755:                                              ; preds = %753
  %756 = getelementptr inbounds %struct.slice, ptr %743, i64 0, i32 128
  %757 = load ptr, ptr %756, align 8, !tbaa !64
  %758 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 1
  %759 = load i32, ptr %758, align 4, !tbaa !65
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i8, ptr %757, i64 %760
  %762 = load i8, ptr %761, align 1, !tbaa !49
  %763 = sext i8 %762 to i32
  br label %764

764:                                              ; preds = %755, %753
  %765 = phi i32 [ %763, %755 ], [ 0, %753 ]
  %766 = load i32, ptr %14, align 4, !tbaa !62
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %777, label %768

768:                                              ; preds = %764
  %769 = getelementptr inbounds %struct.slice, ptr %743, i64 0, i32 128
  %770 = load ptr, ptr %769, align 8, !tbaa !64
  %771 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 1
  %772 = load i32, ptr %771, align 4, !tbaa !65
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i8, ptr %770, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !49
  %776 = sext i8 %775 to i32
  br label %777

777:                                              ; preds = %768, %764
  %778 = phi i32 [ %776, %768 ], [ 0, %764 ]
  %779 = load i32, ptr %15, align 4, !tbaa !62
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %793, label %781

781:                                              ; preds = %777
  %782 = getelementptr inbounds %struct.slice, ptr %743, i64 0, i32 128
  %783 = load ptr, ptr %782, align 8, !tbaa !64
  %784 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 1
  %785 = load i32, ptr %784, align 4, !tbaa !65
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds i8, ptr %783, i64 %786
  %788 = load i8, ptr %787, align 1, !tbaa !49
  %789 = sext i8 %788 to i32
  br label %793

790:                                              ; preds = %742
  %791 = load i32, ptr %14, align 4, !tbaa !62
  %792 = load i32, ptr %15, align 4, !tbaa !62
  br label %793

793:                                              ; preds = %790, %781, %777
  %794 = phi i32 [ %792, %790 ], [ %789, %781 ], [ 0, %777 ]
  %795 = phi i32 [ %752, %790 ], [ %765, %781 ], [ %765, %777 ]
  %796 = phi i32 [ %791, %790 ], [ %778, %781 ], [ %778, %777 ]
  %797 = icmp ne i32 %796, 0
  %798 = icmp ne i32 %795, 0
  %799 = select i1 %797, i1 %798, i1 false
  %800 = icmp ne i32 %794, 0
  %801 = select i1 %799, i1 %800, i1 false
  br i1 %801, label %806, label %802

802:                                              ; preds = %793
  %803 = getelementptr inbounds %struct.slice, ptr %743, i64 0, i32 20
  %804 = load i32, ptr %803, align 4, !tbaa !73
  %805 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %804)
  br label %806

806:                                              ; preds = %802, %793
  %807 = icmp eq i32 %1, 0
  %808 = getelementptr inbounds %struct.slice, ptr %743, i64 0, i32 125
  %809 = load ptr, ptr %808, align 8, !tbaa !52
  br i1 %807, label %816, label %810

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.storable_picture, ptr %809, i64 0, i32 33
  %812 = load ptr, ptr %811, align 8, !tbaa !55
  %813 = add i32 %1, -1
  %814 = zext i32 %813 to i64
  %815 = getelementptr inbounds ptr, ptr %812, i64 %814
  br label %818

816:                                              ; preds = %806
  %817 = getelementptr inbounds %struct.storable_picture, ptr %809, i64 0, i32 32
  br label %818

818:                                              ; preds = %810, %816
  %819 = phi ptr [ %815, %810 ], [ %817, %816 ]
  %820 = load ptr, ptr %819, align 8, !tbaa !48
  %821 = getelementptr inbounds %struct.slice, ptr %743, i64 0, i32 77
  %822 = load ptr, ptr %821, align 8, !tbaa !58
  %823 = zext i32 %1 to i64
  %824 = getelementptr inbounds ptr, ptr %822, i64 %823
  %825 = load ptr, ptr %824, align 8, !tbaa !48
  %826 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 5
  %827 = load i16, ptr %826, align 2, !tbaa !66
  %828 = sext i16 %827 to i64
  %829 = getelementptr inbounds ptr, ptr %820, i64 %828
  %830 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 4
  %831 = load i16, ptr %830, align 4, !tbaa !67
  %832 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 5
  %833 = load i16, ptr %832, align 2, !tbaa !66
  %834 = sext i16 %833 to i64
  %835 = getelementptr inbounds ptr, ptr %820, i64 %834
  %836 = load ptr, ptr %835, align 8, !tbaa !48
  %837 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 4
  %838 = load i16, ptr %837, align 4, !tbaa !67
  %839 = sext i16 %838 to i64
  %840 = getelementptr inbounds i16, ptr %836, i64 %839
  %841 = getelementptr inbounds i16, ptr %840, i64 1
  %842 = load i16, ptr %840, align 2, !tbaa !68
  %843 = getelementptr inbounds i16, ptr %840, i64 2
  %844 = load i16, ptr %841, align 2, !tbaa !68
  %845 = getelementptr inbounds i16, ptr %840, i64 3
  %846 = load i16, ptr %843, align 2, !tbaa !68
  %847 = load i16, ptr %845, align 2, !tbaa !68
  %848 = getelementptr inbounds ptr, ptr %829, i64 1
  %849 = load ptr, ptr %829, align 8, !tbaa !48
  %850 = sext i16 %831 to i64
  %851 = getelementptr inbounds i16, ptr %849, i64 %850
  %852 = load i16, ptr %851, align 2, !tbaa !68
  %853 = getelementptr inbounds ptr, ptr %829, i64 2
  %854 = load ptr, ptr %848, align 8, !tbaa !48
  %855 = getelementptr inbounds i16, ptr %854, i64 %850
  %856 = load i16, ptr %855, align 2, !tbaa !68
  %857 = load ptr, ptr %853, align 8, !tbaa !48
  %858 = getelementptr inbounds i16, ptr %857, i64 %850
  %859 = load i16, ptr %858, align 2, !tbaa !68
  %860 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 5
  %861 = load i16, ptr %860, align 2, !tbaa !66
  %862 = sext i16 %861 to i64
  %863 = getelementptr inbounds ptr, ptr %820, i64 %862
  %864 = load ptr, ptr %863, align 8, !tbaa !48
  %865 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 4
  %866 = load i16, ptr %865, align 4, !tbaa !67
  %867 = sext i16 %866 to i64
  %868 = getelementptr inbounds i16, ptr %864, i64 %867
  %869 = load i16, ptr %868, align 2, !tbaa !68
  %870 = zext i16 %869 to i32
  %871 = zext i16 %852 to i32
  %872 = shl nuw nsw i32 %871, 1
  %873 = zext i16 %856 to i32
  %874 = add nuw nsw i32 %870, 2
  %875 = add nuw nsw i32 %874, %872
  %876 = add nuw nsw i32 %875, %873
  %877 = lshr i32 %876, 2
  %878 = trunc i32 %877 to i16
  %879 = zext i16 %842 to i32
  %880 = add nuw nsw i32 %879, 1
  %881 = add nuw nsw i32 %880, %870
  %882 = lshr i32 %881, 1
  %883 = trunc i32 %882 to i16
  %884 = zext i16 %844 to i32
  %885 = add nuw nsw i32 %879, 1
  %886 = add nuw nsw i32 %885, %884
  %887 = lshr i32 %886, 1
  %888 = trunc i32 %887 to i16
  %889 = zext i16 %846 to i32
  %890 = add nuw nsw i32 %884, 1
  %891 = add nuw nsw i32 %890, %889
  %892 = lshr i32 %891, 1
  %893 = trunc i32 %892 to i16
  %894 = zext i16 %847 to i32
  %895 = add nuw nsw i32 %889, 1
  %896 = add nuw nsw i32 %895, %894
  %897 = lshr i32 %896, 1
  %898 = trunc i32 %897 to i16
  %899 = shl nuw nsw i32 %873, 1
  %900 = zext i16 %859 to i32
  %901 = add nuw nsw i32 %871, 2
  %902 = add nuw nsw i32 %901, %899
  %903 = add nuw nsw i32 %902, %900
  %904 = lshr i32 %903, 2
  %905 = trunc i32 %904 to i16
  %906 = shl nuw nsw i32 %870, 1
  %907 = add nuw nsw i32 %879, 2
  %908 = add nuw nsw i32 %907, %871
  %909 = add nuw nsw i32 %908, %906
  %910 = lshr i32 %909, 2
  %911 = trunc i32 %910 to i16
  %912 = shl nuw nsw i32 %879, 1
  %913 = add nuw nsw i32 %884, 2
  %914 = add nuw nsw i32 %913, %912
  %915 = add nuw nsw i32 %914, %870
  %916 = lshr i32 %915, 2
  %917 = trunc i32 %916 to i16
  %918 = shl nuw nsw i32 %884, 1
  %919 = add nuw nsw i32 %879, 2
  %920 = add nuw nsw i32 %919, %918
  %921 = add nuw nsw i32 %920, %889
  %922 = lshr i32 %921, 2
  %923 = trunc i32 %922 to i16
  %924 = shl nuw nsw i32 %889, 1
  %925 = add nuw nsw i32 %884, 2
  %926 = add nuw nsw i32 %925, %924
  %927 = add nuw nsw i32 %926, %894
  %928 = lshr i32 %927, 2
  %929 = trunc i32 %928 to i16
  %930 = sext i32 %3 to i64
  %931 = getelementptr inbounds ptr, ptr %825, i64 %930
  %932 = load ptr, ptr %931, align 8, !tbaa !48
  %933 = sext i32 %2 to i64
  %934 = getelementptr inbounds i16, ptr %932, i64 %933
  store i16 %883, ptr %934, align 2
  %935 = getelementptr inbounds i8, ptr %934, i64 2
  store i16 %888, ptr %935, align 2
  %936 = getelementptr inbounds i8, ptr %934, i64 4
  store i16 %893, ptr %936, align 2
  %937 = getelementptr inbounds i8, ptr %934, i64 6
  store i16 %898, ptr %937, align 2
  %938 = getelementptr ptr, ptr %931, i64 1
  %939 = load ptr, ptr %938, align 8, !tbaa !48
  %940 = getelementptr inbounds i16, ptr %939, i64 %933
  store i16 %911, ptr %940, align 2
  %941 = getelementptr inbounds i8, ptr %940, i64 2
  store i16 %917, ptr %941, align 2
  %942 = getelementptr inbounds i8, ptr %940, i64 4
  store i16 %923, ptr %942, align 2
  %943 = getelementptr inbounds i8, ptr %940, i64 6
  store i16 %929, ptr %943, align 2
  %944 = getelementptr ptr, ptr %931, i64 2
  %945 = load ptr, ptr %944, align 8, !tbaa !48
  %946 = getelementptr inbounds i16, ptr %945, i64 %933
  store i16 %878, ptr %946, align 2
  %947 = getelementptr inbounds i8, ptr %946, i64 2
  store i16 %883, ptr %947, align 2
  %948 = getelementptr inbounds i8, ptr %946, i64 4
  store i16 %888, ptr %948, align 2
  %949 = getelementptr inbounds i8, ptr %946, i64 6
  store i16 %893, ptr %949, align 2
  %950 = getelementptr ptr, ptr %931, i64 3
  %951 = load ptr, ptr %950, align 8, !tbaa !48
  %952 = getelementptr inbounds i16, ptr %951, i64 %933
  store i16 %905, ptr %952, align 2
  %953 = getelementptr inbounds i8, ptr %952, i64 2
  store i16 %911, ptr %953, align 2
  %954 = getelementptr inbounds i8, ptr %952, i64 4
  store i16 %917, ptr %954, align 2
  %955 = getelementptr inbounds i8, ptr %952, i64 6
  store i16 %923, ptr %955, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #4
  br label %1501

956:                                              ; preds = %6
  %957 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #4
  %958 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 160
  %959 = load ptr, ptr %958, align 8, !tbaa !75
  %960 = add nsw i32 %3, -1
  %961 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void %959(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %960, ptr noundef nonnull %961, ptr noundef nonnull %11) #4
  %962 = load ptr, ptr %958, align 8, !tbaa !75
  %963 = add nsw i32 %2, 4
  call void %962(ptr noundef nonnull %0, i32 noundef %963, i32 noundef %960, ptr noundef nonnull %961, ptr noundef nonnull %12) #4
  %964 = load i32, ptr %12, align 4, !tbaa !62
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %972, label %966

966:                                              ; preds = %956
  %967 = icmp ne i32 %2, 4
  %968 = and i32 %3, -9
  %969 = icmp ne i32 %968, 4
  %970 = or i1 %967, %969
  %971 = zext i1 %970 to i32
  br label %972

972:                                              ; preds = %966, %956
  %973 = phi i32 [ 0, %956 ], [ %971, %966 ]
  store i32 %973, ptr %12, align 4, !tbaa !62
  %974 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %975 = load ptr, ptr %974, align 8, !tbaa !59
  %976 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %975, i64 0, i32 30
  %977 = load i32, ptr %976, align 4, !tbaa !60
  %978 = icmp eq i32 %977, 0
  %979 = load i32, ptr %11, align 4, !tbaa !62
  br i1 %978, label %1003, label %980

980:                                              ; preds = %972
  %981 = icmp eq i32 %979, 0
  br i1 %981, label %991, label %982

982:                                              ; preds = %980
  %983 = getelementptr inbounds %struct.slice, ptr %957, i64 0, i32 128
  %984 = load ptr, ptr %983, align 8, !tbaa !64
  %985 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 1
  %986 = load i32, ptr %985, align 4, !tbaa !65
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds i8, ptr %984, i64 %987
  %989 = load i8, ptr %988, align 1, !tbaa !49
  %990 = sext i8 %989 to i32
  br label %991

991:                                              ; preds = %982, %980
  %992 = phi i32 [ %990, %982 ], [ 0, %980 ]
  %993 = icmp eq i32 %973, 0
  br i1 %993, label %1003, label %994

994:                                              ; preds = %991
  %995 = getelementptr inbounds %struct.slice, ptr %957, i64 0, i32 128
  %996 = load ptr, ptr %995, align 8, !tbaa !64
  %997 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 1
  %998 = load i32, ptr %997, align 4, !tbaa !65
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds i8, ptr %996, i64 %999
  %1001 = load i8, ptr %1000, align 1, !tbaa !49
  %1002 = sext i8 %1001 to i32
  br label %1003

1003:                                             ; preds = %972, %994, %991
  %1004 = phi i32 [ %1002, %994 ], [ 0, %991 ], [ %973, %972 ]
  %1005 = phi i32 [ %992, %994 ], [ %992, %991 ], [ %979, %972 ]
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1011

1007:                                             ; preds = %1003
  %1008 = getelementptr inbounds %struct.slice, ptr %957, i64 0, i32 20
  %1009 = load i32, ptr %1008, align 4, !tbaa !73
  %1010 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %1009)
  br label %1011

1011:                                             ; preds = %1007, %1003
  %1012 = icmp eq i32 %1, 0
  %1013 = getelementptr inbounds %struct.slice, ptr %957, i64 0, i32 125
  %1014 = load ptr, ptr %1013, align 8, !tbaa !52
  br i1 %1012, label %1021, label %1015

1015:                                             ; preds = %1011
  %1016 = getelementptr inbounds %struct.storable_picture, ptr %1014, i64 0, i32 33
  %1017 = load ptr, ptr %1016, align 8, !tbaa !55
  %1018 = add i32 %1, -1
  %1019 = zext i32 %1018 to i64
  %1020 = getelementptr inbounds ptr, ptr %1017, i64 %1019
  br label %1023

1021:                                             ; preds = %1011
  %1022 = getelementptr inbounds %struct.storable_picture, ptr %1014, i64 0, i32 32
  br label %1023

1023:                                             ; preds = %1021, %1015
  %1024 = phi ptr [ %1020, %1015 ], [ %1022, %1021 ]
  %1025 = load ptr, ptr %1024, align 8, !tbaa !48
  %1026 = getelementptr inbounds %struct.slice, ptr %957, i64 0, i32 77
  %1027 = load ptr, ptr %1026, align 8, !tbaa !58
  %1028 = zext i32 %1 to i64
  %1029 = getelementptr inbounds ptr, ptr %1027, i64 %1028
  %1030 = load ptr, ptr %1029, align 8, !tbaa !48
  %1031 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 5
  %1032 = load i16, ptr %1031, align 2, !tbaa !66
  %1033 = sext i16 %1032 to i64
  %1034 = getelementptr inbounds ptr, ptr %1025, i64 %1033
  %1035 = load ptr, ptr %1034, align 8, !tbaa !48
  %1036 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 4
  %1037 = load i16, ptr %1036, align 4, !tbaa !67
  %1038 = sext i16 %1037 to i64
  %1039 = getelementptr inbounds i16, ptr %1035, i64 %1038
  %1040 = getelementptr inbounds i16, ptr %1039, i64 1
  %1041 = load i16, ptr %1039, align 2, !tbaa !68
  %1042 = getelementptr inbounds i16, ptr %1039, i64 2
  %1043 = load i16, ptr %1040, align 2, !tbaa !68
  %1044 = getelementptr inbounds i16, ptr %1039, i64 3
  %1045 = load i16, ptr %1042, align 2, !tbaa !68
  %1046 = load i16, ptr %1044, align 2, !tbaa !68
  %1047 = icmp eq i32 %1004, 0
  br i1 %1047, label %1063, label %1048

1048:                                             ; preds = %1023
  %1049 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 5
  %1050 = load i16, ptr %1049, align 2, !tbaa !66
  %1051 = sext i16 %1050 to i64
  %1052 = getelementptr inbounds ptr, ptr %1025, i64 %1051
  %1053 = load ptr, ptr %1052, align 8, !tbaa !48
  %1054 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 4
  %1055 = load i16, ptr %1054, align 4, !tbaa !67
  %1056 = sext i16 %1055 to i64
  %1057 = getelementptr inbounds i16, ptr %1053, i64 %1056
  %1058 = getelementptr inbounds i16, ptr %1057, i64 1
  %1059 = load i16, ptr %1057, align 2, !tbaa !68
  %1060 = getelementptr inbounds i16, ptr %1057, i64 2
  %1061 = load i16, ptr %1058, align 2, !tbaa !68
  %1062 = load i16, ptr %1060, align 2, !tbaa !68
  br label %1063

1063:                                             ; preds = %1023, %1048
  %1064 = phi i16 [ %1059, %1048 ], [ %1046, %1023 ]
  %1065 = phi i16 [ %1061, %1048 ], [ %1046, %1023 ]
  %1066 = phi i16 [ %1062, %1048 ], [ %1046, %1023 ]
  %1067 = zext i16 %1041 to i32
  %1068 = zext i16 %1043 to i32
  %1069 = add nuw nsw i32 %1068, 1
  %1070 = add nuw nsw i32 %1069, %1067
  %1071 = lshr i32 %1070, 1
  %1072 = trunc i32 %1071 to i16
  %1073 = zext i16 %1045 to i32
  %1074 = add nuw nsw i32 %1068, 1
  %1075 = add nuw nsw i32 %1074, %1073
  %1076 = lshr i32 %1075, 1
  %1077 = trunc i32 %1076 to i16
  %1078 = zext i16 %1046 to i32
  %1079 = add nuw nsw i32 %1073, 1
  %1080 = add nuw nsw i32 %1079, %1078
  %1081 = lshr i32 %1080, 1
  %1082 = trunc i32 %1081 to i16
  %1083 = zext i16 %1064 to i32
  %1084 = add nuw nsw i32 %1078, 1
  %1085 = add nuw nsw i32 %1084, %1083
  %1086 = lshr i32 %1085, 1
  %1087 = trunc i32 %1086 to i16
  %1088 = zext i16 %1065 to i32
  %1089 = add nuw nsw i32 %1083, 1
  %1090 = add nuw nsw i32 %1089, %1088
  %1091 = lshr i32 %1090, 1
  %1092 = trunc i32 %1091 to i16
  %1093 = shl nuw nsw i32 %1068, 1
  %1094 = add nuw nsw i32 %1073, 2
  %1095 = add nuw nsw i32 %1094, %1067
  %1096 = add nuw nsw i32 %1095, %1093
  %1097 = lshr i32 %1096, 2
  %1098 = trunc i32 %1097 to i16
  %1099 = shl nuw nsw i32 %1073, 1
  %1100 = add nuw nsw i32 %1078, 2
  %1101 = add nuw nsw i32 %1100, %1068
  %1102 = add nuw nsw i32 %1101, %1099
  %1103 = lshr i32 %1102, 2
  %1104 = trunc i32 %1103 to i16
  %1105 = shl nuw nsw i32 %1078, 1
  %1106 = add nuw nsw i32 %1073, 2
  %1107 = add nuw nsw i32 %1106, %1105
  %1108 = add nuw nsw i32 %1107, %1083
  %1109 = lshr i32 %1108, 2
  %1110 = trunc i32 %1109 to i16
  %1111 = shl nuw nsw i32 %1083, 1
  %1112 = add nuw nsw i32 %1078, 2
  %1113 = add nuw nsw i32 %1112, %1111
  %1114 = add nuw nsw i32 %1113, %1088
  %1115 = lshr i32 %1114, 2
  %1116 = trunc i32 %1115 to i16
  %1117 = shl nuw nsw i32 %1088, 1
  %1118 = zext i16 %1066 to i32
  %1119 = add nuw nsw i32 %1083, 2
  %1120 = add nuw nsw i32 %1119, %1117
  %1121 = add nuw nsw i32 %1120, %1118
  %1122 = lshr i32 %1121, 2
  %1123 = trunc i32 %1122 to i16
  %1124 = sext i32 %3 to i64
  %1125 = getelementptr inbounds ptr, ptr %1030, i64 %1124
  %1126 = load ptr, ptr %1125, align 8, !tbaa !48
  %1127 = sext i32 %2 to i64
  %1128 = getelementptr inbounds i16, ptr %1126, i64 %1127
  store i16 %1072, ptr %1128, align 2
  %1129 = getelementptr inbounds i8, ptr %1128, i64 2
  store i16 %1077, ptr %1129, align 2
  %1130 = getelementptr inbounds i8, ptr %1128, i64 4
  store i16 %1082, ptr %1130, align 2
  %1131 = getelementptr inbounds i8, ptr %1128, i64 6
  store i16 %1087, ptr %1131, align 2
  %1132 = getelementptr ptr, ptr %1125, i64 1
  %1133 = load ptr, ptr %1132, align 8, !tbaa !48
  %1134 = getelementptr inbounds i16, ptr %1133, i64 %1127
  store i16 %1098, ptr %1134, align 2
  %1135 = getelementptr inbounds i8, ptr %1134, i64 2
  store i16 %1104, ptr %1135, align 2
  %1136 = getelementptr inbounds i8, ptr %1134, i64 4
  store i16 %1110, ptr %1136, align 2
  %1137 = getelementptr inbounds i8, ptr %1134, i64 6
  store i16 %1116, ptr %1137, align 2
  %1138 = getelementptr ptr, ptr %1125, i64 2
  %1139 = load ptr, ptr %1138, align 8, !tbaa !48
  %1140 = getelementptr inbounds i16, ptr %1139, i64 %1127
  store i16 %1077, ptr %1140, align 2
  %1141 = getelementptr inbounds i8, ptr %1140, i64 2
  store i16 %1082, ptr %1141, align 2
  %1142 = getelementptr inbounds i8, ptr %1140, i64 4
  store i16 %1087, ptr %1142, align 2
  %1143 = getelementptr inbounds i8, ptr %1140, i64 6
  store i16 %1092, ptr %1143, align 2
  %1144 = getelementptr ptr, ptr %1125, i64 3
  %1145 = load ptr, ptr %1144, align 8, !tbaa !48
  %1146 = getelementptr inbounds i16, ptr %1145, i64 %1127
  store i16 %1104, ptr %1146, align 2
  %1147 = getelementptr inbounds i8, ptr %1146, i64 2
  store i16 %1110, ptr %1147, align 2
  %1148 = getelementptr inbounds i8, ptr %1146, i64 4
  store i16 %1116, ptr %1148, align 2
  %1149 = getelementptr inbounds i8, ptr %1146, i64 6
  store i16 %1123, ptr %1149, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #4
  br label %1501

1150:                                             ; preds = %6
  %1151 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #4
  %1152 = add nsw i32 %2, -1
  %1153 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1152, i32 noundef %3, ptr noundef nonnull %1153, ptr noundef nonnull %10) #4
  %1154 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %1155 = load ptr, ptr %1154, align 8, !tbaa !59
  %1156 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1155, i64 0, i32 30
  %1157 = load i32, ptr %1156, align 4, !tbaa !60
  %1158 = icmp eq i32 %1157, 0
  %1159 = load i32, ptr %10, align 4, !tbaa !62
  br i1 %1158, label %1171, label %1160

1160:                                             ; preds = %1150
  %1161 = icmp eq i32 %1159, 0
  br i1 %1161, label %1171, label %1162

1162:                                             ; preds = %1160
  %1163 = getelementptr inbounds %struct.slice, ptr %1151, i64 0, i32 128
  %1164 = load ptr, ptr %1163, align 8, !tbaa !64
  %1165 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 1
  %1166 = load i32, ptr %1165, align 4, !tbaa !65
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds i8, ptr %1164, i64 %1167
  %1169 = load i8, ptr %1168, align 1, !tbaa !49
  %1170 = sext i8 %1169 to i32
  br label %1171

1171:                                             ; preds = %1150, %1162, %1160
  %1172 = phi i32 [ %1170, %1162 ], [ 0, %1160 ], [ %1159, %1150 ]
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1174, label %1178

1174:                                             ; preds = %1171
  %1175 = getelementptr inbounds %struct.slice, ptr %1151, i64 0, i32 20
  %1176 = load i32, ptr %1175, align 4, !tbaa !73
  %1177 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %1176)
  br label %1280

1178:                                             ; preds = %1171
  %1179 = icmp eq i32 %1, 0
  %1180 = getelementptr inbounds %struct.slice, ptr %1151, i64 0, i32 125
  %1181 = load ptr, ptr %1180, align 8, !tbaa !52
  br i1 %1179, label %1188, label %1182

1182:                                             ; preds = %1178
  %1183 = getelementptr inbounds %struct.storable_picture, ptr %1181, i64 0, i32 33
  %1184 = load ptr, ptr %1183, align 8, !tbaa !55
  %1185 = add i32 %1, -1
  %1186 = zext i32 %1185 to i64
  %1187 = getelementptr inbounds ptr, ptr %1184, i64 %1186
  br label %1190

1188:                                             ; preds = %1178
  %1189 = getelementptr inbounds %struct.storable_picture, ptr %1181, i64 0, i32 32
  br label %1190

1190:                                             ; preds = %1188, %1182
  %1191 = phi ptr [ %1187, %1182 ], [ %1189, %1188 ]
  %1192 = load ptr, ptr %1191, align 8, !tbaa !48
  %1193 = getelementptr inbounds %struct.slice, ptr %1151, i64 0, i32 77
  %1194 = load ptr, ptr %1193, align 8, !tbaa !58
  %1195 = zext i32 %1 to i64
  %1196 = getelementptr inbounds ptr, ptr %1194, i64 %1195
  %1197 = load ptr, ptr %1196, align 8, !tbaa !48
  %1198 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 5
  %1199 = load i16, ptr %1198, align 2, !tbaa !66
  %1200 = sext i16 %1199 to i64
  %1201 = getelementptr inbounds ptr, ptr %1192, i64 %1200
  %1202 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 4
  %1203 = load i16, ptr %1202, align 4, !tbaa !67
  %1204 = getelementptr inbounds ptr, ptr %1201, i64 1
  %1205 = load ptr, ptr %1201, align 8, !tbaa !48
  %1206 = sext i16 %1203 to i64
  %1207 = getelementptr inbounds i16, ptr %1205, i64 %1206
  %1208 = load i16, ptr %1207, align 2, !tbaa !68
  %1209 = getelementptr inbounds ptr, ptr %1201, i64 2
  %1210 = load ptr, ptr %1204, align 8, !tbaa !48
  %1211 = getelementptr inbounds i16, ptr %1210, i64 %1206
  %1212 = load i16, ptr %1211, align 2, !tbaa !68
  %1213 = getelementptr inbounds ptr, ptr %1201, i64 3
  %1214 = load ptr, ptr %1209, align 8, !tbaa !48
  %1215 = getelementptr inbounds i16, ptr %1214, i64 %1206
  %1216 = load i16, ptr %1215, align 2, !tbaa !68
  %1217 = load ptr, ptr %1213, align 8, !tbaa !48
  %1218 = getelementptr inbounds i16, ptr %1217, i64 %1206
  %1219 = load i16, ptr %1218, align 2, !tbaa !68
  %1220 = zext i16 %1208 to i32
  %1221 = zext i16 %1212 to i32
  %1222 = add nuw nsw i32 %1221, 1
  %1223 = add nuw nsw i32 %1222, %1220
  %1224 = lshr i32 %1223, 1
  %1225 = trunc i32 %1224 to i16
  %1226 = shl nuw nsw i32 %1221, 1
  %1227 = zext i16 %1216 to i32
  %1228 = add nuw nsw i32 %1227, 2
  %1229 = add nuw nsw i32 %1228, %1220
  %1230 = add nuw nsw i32 %1229, %1226
  %1231 = lshr i32 %1230, 2
  %1232 = trunc i32 %1231 to i16
  %1233 = add nuw nsw i32 %1221, 1
  %1234 = add nuw nsw i32 %1233, %1227
  %1235 = lshr i32 %1234, 1
  %1236 = trunc i32 %1235 to i16
  %1237 = shl nuw nsw i32 %1227, 1
  %1238 = zext i16 %1219 to i32
  %1239 = add nuw nsw i32 %1238, 2
  %1240 = add nuw nsw i32 %1239, %1221
  %1241 = add nuw nsw i32 %1240, %1237
  %1242 = lshr i32 %1241, 2
  %1243 = trunc i32 %1242 to i16
  %1244 = add nuw nsw i32 %1227, 1
  %1245 = add nuw nsw i32 %1244, %1238
  %1246 = lshr i32 %1245, 1
  %1247 = trunc i32 %1246 to i16
  %1248 = shl nuw nsw i32 %1238, 1
  %1249 = add nuw nsw i32 %1227, 2
  %1250 = add nuw nsw i32 %1249, %1238
  %1251 = add nuw nsw i32 %1250, %1248
  %1252 = lshr i32 %1251, 2
  %1253 = trunc i32 %1252 to i16
  %1254 = sext i32 %3 to i64
  %1255 = getelementptr inbounds ptr, ptr %1197, i64 %1254
  %1256 = load ptr, ptr %1255, align 8, !tbaa !48
  %1257 = sext i32 %2 to i64
  %1258 = getelementptr inbounds i16, ptr %1256, i64 %1257
  store i16 %1225, ptr %1258, align 2
  %1259 = getelementptr inbounds i8, ptr %1258, i64 2
  store i16 %1232, ptr %1259, align 2
  %1260 = getelementptr inbounds i8, ptr %1258, i64 4
  store i16 %1236, ptr %1260, align 2
  %1261 = getelementptr inbounds i8, ptr %1258, i64 6
  store i16 %1243, ptr %1261, align 2
  %1262 = getelementptr ptr, ptr %1255, i64 1
  %1263 = load ptr, ptr %1262, align 8, !tbaa !48
  %1264 = getelementptr inbounds i16, ptr %1263, i64 %1257
  store i16 %1236, ptr %1264, align 2
  %1265 = getelementptr inbounds i8, ptr %1264, i64 2
  store i16 %1243, ptr %1265, align 2
  %1266 = getelementptr inbounds i8, ptr %1264, i64 4
  store i16 %1247, ptr %1266, align 2
  %1267 = getelementptr inbounds i8, ptr %1264, i64 6
  store i16 %1253, ptr %1267, align 2
  %1268 = getelementptr ptr, ptr %1255, i64 2
  %1269 = load ptr, ptr %1268, align 8, !tbaa !48
  %1270 = getelementptr inbounds i16, ptr %1269, i64 %1257
  store i16 %1247, ptr %1270, align 2
  %1271 = getelementptr inbounds i8, ptr %1270, i64 2
  store i16 %1253, ptr %1271, align 2
  %1272 = getelementptr inbounds i8, ptr %1270, i64 4
  store i16 %1219, ptr %1272, align 2
  %1273 = getelementptr inbounds i8, ptr %1270, i64 6
  store i16 %1219, ptr %1273, align 2
  %1274 = getelementptr ptr, ptr %1255, i64 3
  %1275 = load ptr, ptr %1274, align 8, !tbaa !48
  %1276 = getelementptr inbounds i16, ptr %1275, i64 %1257
  store i16 %1219, ptr %1276, align 2
  %1277 = getelementptr inbounds i8, ptr %1276, i64 2
  store i16 %1219, ptr %1277, align 2
  %1278 = getelementptr inbounds i8, ptr %1276, i64 4
  store i16 %1219, ptr %1278, align 2
  %1279 = getelementptr inbounds i8, ptr %1276, i64 6
  store i16 %1219, ptr %1279, align 2
  br label %1280

1280:                                             ; preds = %1174, %1190
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #4
  br label %1501

1281:                                             ; preds = %6
  %1282 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %1283 = add nsw i32 %2, -1
  %1284 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1283, i32 noundef %3, ptr noundef nonnull %1284, ptr noundef nonnull %7) #4
  %1285 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1285, ptr noundef nonnull %1284, ptr noundef nonnull %8) #4
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1283, i32 noundef %1285, ptr noundef nonnull %1284, ptr noundef nonnull %9) #4
  %1286 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 1
  %1287 = load ptr, ptr %1286, align 8, !tbaa !59
  %1288 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1287, i64 0, i32 30
  %1289 = load i32, ptr %1288, align 4, !tbaa !60
  %1290 = icmp eq i32 %1289, 0
  %1291 = load i32, ptr %7, align 4, !tbaa !62
  br i1 %1290, label %1329, label %1292

1292:                                             ; preds = %1281
  %1293 = icmp eq i32 %1291, 0
  br i1 %1293, label %1303, label %1294

1294:                                             ; preds = %1292
  %1295 = getelementptr inbounds %struct.slice, ptr %1282, i64 0, i32 128
  %1296 = load ptr, ptr %1295, align 8, !tbaa !64
  %1297 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %1298 = load i32, ptr %1297, align 4, !tbaa !65
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds i8, ptr %1296, i64 %1299
  %1301 = load i8, ptr %1300, align 1, !tbaa !49
  %1302 = sext i8 %1301 to i32
  br label %1303

1303:                                             ; preds = %1294, %1292
  %1304 = phi i32 [ %1302, %1294 ], [ 0, %1292 ]
  %1305 = load i32, ptr %8, align 4, !tbaa !62
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1316, label %1307

1307:                                             ; preds = %1303
  %1308 = getelementptr inbounds %struct.slice, ptr %1282, i64 0, i32 128
  %1309 = load ptr, ptr %1308, align 8, !tbaa !64
  %1310 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %1311 = load i32, ptr %1310, align 4, !tbaa !65
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds i8, ptr %1309, i64 %1312
  %1314 = load i8, ptr %1313, align 1, !tbaa !49
  %1315 = sext i8 %1314 to i32
  br label %1316

1316:                                             ; preds = %1307, %1303
  %1317 = phi i32 [ %1315, %1307 ], [ 0, %1303 ]
  %1318 = load i32, ptr %9, align 4, !tbaa !62
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1332, label %1320

1320:                                             ; preds = %1316
  %1321 = getelementptr inbounds %struct.slice, ptr %1282, i64 0, i32 128
  %1322 = load ptr, ptr %1321, align 8, !tbaa !64
  %1323 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %1324 = load i32, ptr %1323, align 4, !tbaa !65
  %1325 = sext i32 %1324 to i64
  %1326 = getelementptr inbounds i8, ptr %1322, i64 %1325
  %1327 = load i8, ptr %1326, align 1, !tbaa !49
  %1328 = sext i8 %1327 to i32
  br label %1332

1329:                                             ; preds = %1281
  %1330 = load i32, ptr %8, align 4, !tbaa !62
  %1331 = load i32, ptr %9, align 4, !tbaa !62
  br label %1332

1332:                                             ; preds = %1329, %1320, %1316
  %1333 = phi i32 [ %1331, %1329 ], [ %1328, %1320 ], [ 0, %1316 ]
  %1334 = phi i32 [ %1291, %1329 ], [ %1304, %1320 ], [ %1304, %1316 ]
  %1335 = phi i32 [ %1330, %1329 ], [ %1317, %1320 ], [ %1317, %1316 ]
  %1336 = icmp ne i32 %1335, 0
  %1337 = icmp ne i32 %1334, 0
  %1338 = select i1 %1336, i1 %1337, i1 false
  %1339 = icmp ne i32 %1333, 0
  %1340 = select i1 %1338, i1 %1339, i1 false
  br i1 %1340, label %1345, label %1341

1341:                                             ; preds = %1332
  %1342 = getelementptr inbounds %struct.slice, ptr %1282, i64 0, i32 20
  %1343 = load i32, ptr %1342, align 4, !tbaa !73
  %1344 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %1343)
  br label %1497

1345:                                             ; preds = %1332
  %1346 = icmp eq i32 %1, 0
  %1347 = getelementptr inbounds %struct.slice, ptr %1282, i64 0, i32 125
  %1348 = load ptr, ptr %1347, align 8, !tbaa !52
  br i1 %1346, label %1355, label %1349

1349:                                             ; preds = %1345
  %1350 = getelementptr inbounds %struct.storable_picture, ptr %1348, i64 0, i32 33
  %1351 = load ptr, ptr %1350, align 8, !tbaa !55
  %1352 = add i32 %1, -1
  %1353 = zext i32 %1352 to i64
  %1354 = getelementptr inbounds ptr, ptr %1351, i64 %1353
  br label %1357

1355:                                             ; preds = %1345
  %1356 = getelementptr inbounds %struct.storable_picture, ptr %1348, i64 0, i32 32
  br label %1357

1357:                                             ; preds = %1355, %1349
  %1358 = phi ptr [ %1354, %1349 ], [ %1356, %1355 ]
  %1359 = load ptr, ptr %1358, align 8, !tbaa !48
  %1360 = getelementptr inbounds %struct.slice, ptr %1282, i64 0, i32 77
  %1361 = load ptr, ptr %1360, align 8, !tbaa !58
  %1362 = zext i32 %1 to i64
  %1363 = getelementptr inbounds ptr, ptr %1361, i64 %1362
  %1364 = load ptr, ptr %1363, align 8, !tbaa !48
  %1365 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %1366 = load i16, ptr %1365, align 2, !tbaa !66
  %1367 = sext i16 %1366 to i64
  %1368 = getelementptr inbounds ptr, ptr %1359, i64 %1367
  %1369 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %1370 = load i16, ptr %1369, align 4, !tbaa !67
  %1371 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %1372 = load i16, ptr %1371, align 2, !tbaa !66
  %1373 = sext i16 %1372 to i64
  %1374 = getelementptr inbounds ptr, ptr %1359, i64 %1373
  %1375 = load ptr, ptr %1374, align 8, !tbaa !48
  %1376 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %1377 = load i16, ptr %1376, align 4, !tbaa !67
  %1378 = sext i16 %1377 to i64
  %1379 = getelementptr inbounds i16, ptr %1375, i64 %1378
  %1380 = getelementptr inbounds i16, ptr %1379, i64 1
  %1381 = load i16, ptr %1379, align 2, !tbaa !68
  %1382 = getelementptr inbounds i16, ptr %1379, i64 2
  %1383 = load i16, ptr %1380, align 2, !tbaa !68
  %1384 = load i16, ptr %1382, align 2, !tbaa !68
  %1385 = getelementptr inbounds ptr, ptr %1368, i64 1
  %1386 = load ptr, ptr %1368, align 8, !tbaa !48
  %1387 = sext i16 %1370 to i64
  %1388 = getelementptr inbounds i16, ptr %1386, i64 %1387
  %1389 = load i16, ptr %1388, align 2, !tbaa !68
  %1390 = getelementptr inbounds ptr, ptr %1368, i64 2
  %1391 = load ptr, ptr %1385, align 8, !tbaa !48
  %1392 = getelementptr inbounds i16, ptr %1391, i64 %1387
  %1393 = load i16, ptr %1392, align 2, !tbaa !68
  %1394 = getelementptr inbounds ptr, ptr %1368, i64 3
  %1395 = load ptr, ptr %1390, align 8, !tbaa !48
  %1396 = getelementptr inbounds i16, ptr %1395, i64 %1387
  %1397 = load i16, ptr %1396, align 2, !tbaa !68
  %1398 = load ptr, ptr %1394, align 8, !tbaa !48
  %1399 = getelementptr inbounds i16, ptr %1398, i64 %1387
  %1400 = load i16, ptr %1399, align 2, !tbaa !68
  %1401 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %1402 = load i16, ptr %1401, align 2, !tbaa !66
  %1403 = sext i16 %1402 to i64
  %1404 = getelementptr inbounds ptr, ptr %1359, i64 %1403
  %1405 = load ptr, ptr %1404, align 8, !tbaa !48
  %1406 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %1407 = load i16, ptr %1406, align 4, !tbaa !67
  %1408 = sext i16 %1407 to i64
  %1409 = getelementptr inbounds i16, ptr %1405, i64 %1408
  %1410 = load i16, ptr %1409, align 2, !tbaa !68
  %1411 = zext i16 %1397 to i32
  %1412 = zext i16 %1400 to i32
  %1413 = add nuw nsw i32 %1411, 1
  %1414 = add nuw nsw i32 %1413, %1412
  %1415 = lshr i32 %1414, 1
  %1416 = trunc i32 %1415 to i16
  %1417 = zext i16 %1393 to i32
  %1418 = shl nuw nsw i32 %1411, 1
  %1419 = add nuw nsw i32 %1417, 2
  %1420 = add nuw nsw i32 %1419, %1418
  %1421 = add nuw nsw i32 %1420, %1412
  %1422 = lshr i32 %1421, 2
  %1423 = trunc i32 %1422 to i16
  %1424 = add nuw nsw i32 %1417, 1
  %1425 = add nuw nsw i32 %1424, %1411
  %1426 = lshr i32 %1425, 1
  %1427 = trunc i32 %1426 to i16
  %1428 = zext i16 %1389 to i32
  %1429 = shl nuw nsw i32 %1417, 1
  %1430 = add nuw nsw i32 %1428, 2
  %1431 = add nuw nsw i32 %1430, %1429
  %1432 = add nuw nsw i32 %1431, %1411
  %1433 = lshr i32 %1432, 2
  %1434 = trunc i32 %1433 to i16
  %1435 = add nuw nsw i32 %1428, 1
  %1436 = add nuw nsw i32 %1435, %1417
  %1437 = lshr i32 %1436, 1
  %1438 = trunc i32 %1437 to i16
  %1439 = zext i16 %1410 to i32
  %1440 = shl nuw nsw i32 %1428, 1
  %1441 = add nuw nsw i32 %1417, 2
  %1442 = add nuw nsw i32 %1441, %1440
  %1443 = add nuw nsw i32 %1442, %1439
  %1444 = lshr i32 %1443, 2
  %1445 = trunc i32 %1444 to i16
  %1446 = add nuw nsw i32 %1428, 1
  %1447 = add nuw nsw i32 %1446, %1439
  %1448 = lshr i32 %1447, 1
  %1449 = trunc i32 %1448 to i16
  %1450 = shl nuw nsw i32 %1439, 1
  %1451 = zext i16 %1381 to i32
  %1452 = add nuw nsw i32 %1451, 2
  %1453 = add nuw nsw i32 %1452, %1428
  %1454 = add nuw nsw i32 %1453, %1450
  %1455 = lshr i32 %1454, 2
  %1456 = trunc i32 %1455 to i16
  %1457 = shl nuw nsw i32 %1451, 1
  %1458 = zext i16 %1383 to i32
  %1459 = add nuw nsw i32 %1439, 2
  %1460 = add nuw nsw i32 %1459, %1457
  %1461 = add nuw nsw i32 %1460, %1458
  %1462 = lshr i32 %1461, 2
  %1463 = trunc i32 %1462 to i16
  %1464 = shl nuw nsw i32 %1458, 1
  %1465 = zext i16 %1384 to i32
  %1466 = add nuw nsw i32 %1451, 2
  %1467 = add nuw nsw i32 %1466, %1464
  %1468 = add nuw nsw i32 %1467, %1465
  %1469 = lshr i32 %1468, 2
  %1470 = trunc i32 %1469 to i16
  %1471 = sext i32 %3 to i64
  %1472 = getelementptr inbounds ptr, ptr %1364, i64 %1471
  %1473 = load ptr, ptr %1472, align 8, !tbaa !48
  %1474 = sext i32 %2 to i64
  %1475 = getelementptr inbounds i16, ptr %1473, i64 %1474
  store i16 %1449, ptr %1475, align 2
  %1476 = getelementptr inbounds i8, ptr %1475, i64 2
  store i16 %1456, ptr %1476, align 2
  %1477 = getelementptr inbounds i8, ptr %1475, i64 4
  store i16 %1463, ptr %1477, align 2
  %1478 = getelementptr inbounds i8, ptr %1475, i64 6
  store i16 %1470, ptr %1478, align 2
  %1479 = getelementptr ptr, ptr %1472, i64 1
  %1480 = load ptr, ptr %1479, align 8, !tbaa !48
  %1481 = getelementptr inbounds i16, ptr %1480, i64 %1474
  store i16 %1438, ptr %1481, align 2
  %1482 = getelementptr inbounds i8, ptr %1481, i64 2
  store i16 %1445, ptr %1482, align 2
  %1483 = getelementptr inbounds i8, ptr %1481, i64 4
  store i16 %1449, ptr %1483, align 2
  %1484 = getelementptr inbounds i8, ptr %1481, i64 6
  store i16 %1456, ptr %1484, align 2
  %1485 = getelementptr ptr, ptr %1472, i64 2
  %1486 = load ptr, ptr %1485, align 8, !tbaa !48
  %1487 = getelementptr inbounds i16, ptr %1486, i64 %1474
  store i16 %1427, ptr %1487, align 2
  %1488 = getelementptr inbounds i8, ptr %1487, i64 2
  store i16 %1434, ptr %1488, align 2
  %1489 = getelementptr inbounds i8, ptr %1487, i64 4
  store i16 %1438, ptr %1489, align 2
  %1490 = getelementptr inbounds i8, ptr %1487, i64 6
  store i16 %1445, ptr %1490, align 2
  %1491 = getelementptr ptr, ptr %1472, i64 3
  %1492 = load ptr, ptr %1491, align 8, !tbaa !48
  %1493 = getelementptr inbounds i16, ptr %1492, i64 %1474
  store i16 %1416, ptr %1493, align 2
  %1494 = getelementptr inbounds i8, ptr %1493, i64 2
  store i16 %1423, ptr %1494, align 2
  %1495 = getelementptr inbounds i8, ptr %1493, i64 4
  store i16 %1427, ptr %1495, align 2
  %1496 = getelementptr inbounds i8, ptr %1493, i64 6
  store i16 %1434, ptr %1496, align 2
  br label %1497

1497:                                             ; preds = %1341, %1357
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #4
  br label %1501

1498:                                             ; preds = %6
  %1499 = zext i8 %34 to i32
  %1500 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1499)
  br label %1501

1501:                                             ; preds = %1498, %1497, %1280, %1063, %818, %741, %551, %341, %267, %191
  %1502 = phi i32 [ 1, %1498 ], [ 0, %1497 ], [ 0, %1280 ], [ 0, %1063 ], [ 0, %818 ], [ 0, %741 ], [ 0, %551 ], [ 0, %341 ], [ 0, %267 ], [ 0, %191 ]
  ret i32 %1502
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
!59 = !{!43, !36, i64 8}
!60 = !{!61, !39, i64 2204}
!61 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!62 = !{!63, !39, i64 0}
!63 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!64 = !{!53, !36, i64 13544}
!65 = !{!63, !39, i64 4}
!66 = !{!63, !41, i64 14}
!67 = !{!63, !41, i64 12}
!68 = !{!41, !41, i64 0}
!69 = !{!39, !39, i64 0}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!53, !39, i64 108}
!74 = distinct !{!74, !71, !72}
!75 = !{!43, !36, i64 856744}
