; ModuleID = 'ldecod_src/intra8x8_pred_mbaff.c'
source_filename = "ldecod_src/intra8x8_pred_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Error: illegal intra_8x8 prediction mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: Intra_8x8_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"warning: Intra_8x8_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"warning: Intra_8x8_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"warning: Intra_8x8_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"warning: Intra_8x8_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"warning: Intra_8x8_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"warning: Intra_8x8_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @intrapred8x8_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = alloca [25 x i16], align 16
  %11 = alloca [8 x %struct.pix_pos], align 16
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca %struct.pix_pos, align 4
  %14 = alloca %struct.pix_pos, align 4
  %15 = alloca [25 x i16], align 16
  %16 = alloca [8 x %struct.pix_pos], align 16
  %17 = alloca %struct.pix_pos, align 4
  %18 = alloca %struct.pix_pos, align 4
  %19 = alloca %struct.pix_pos, align 4
  %20 = alloca [25 x i16], align 16
  %21 = alloca [8 x %struct.pix_pos], align 16
  %22 = alloca %struct.pix_pos, align 4
  %23 = alloca %struct.pix_pos, align 4
  %24 = alloca %struct.pix_pos, align 4
  %25 = alloca [25 x i16], align 16
  %26 = alloca [8 x %struct.pix_pos], align 16
  %27 = alloca %struct.pix_pos, align 4
  %28 = alloca %struct.pix_pos, align 4
  %29 = alloca %struct.pix_pos, align 4
  %30 = alloca [25 x i16], align 16
  %31 = alloca [8 x %struct.pix_pos], align 16
  %32 = alloca %struct.pix_pos, align 4
  %33 = alloca %struct.pix_pos, align 4
  %34 = alloca %struct.pix_pos, align 4
  %35 = alloca [25 x i16], align 16
  %36 = alloca [25 x i16], align 16
  %37 = alloca [8 x %struct.pix_pos], align 16
  %38 = alloca %struct.pix_pos, align 4
  %39 = alloca %struct.pix_pos, align 4
  %40 = alloca %struct.pix_pos, align 4
  %41 = alloca [25 x i16], align 16
  %42 = alloca [25 x i16], align 16
  %43 = alloca [8 x %struct.pix_pos], align 16
  %44 = alloca %struct.pix_pos, align 4
  %45 = alloca %struct.pix_pos, align 4
  %46 = alloca %struct.pix_pos, align 4
  %47 = alloca [25 x i16], align 16
  %48 = alloca [8 x %struct.pix_pos], align 16
  %49 = alloca %struct.pix_pos, align 4
  %50 = alloca %struct.pix_pos, align 4
  %51 = alloca %struct.pix_pos, align 4
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !34
  %54 = ashr i32 %2, 2
  %55 = add nsw i32 %53, %54
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !42
  %58 = ashr i32 %3, 2
  %59 = add nsw i32 %57, %58
  %60 = load ptr, ptr %0, align 8, !tbaa !43
  %61 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 127
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  %66 = sext i32 %55 to i64
  %67 = getelementptr inbounds i8, ptr %65, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !48
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %68, ptr %69, align 4, !tbaa !49
  switch i8 %68, label %4591 [
    i8 2, label %70
    i8 0, label %560
    i8 1, label %903
    i8 4, label %1253
    i8 3, label %1808
    i8 5, label %2356
    i8 7, label %2934
    i8 8, label %3494
    i8 6, label %4013
  ]

70:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %47) #6
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %74 = load ptr, ptr %73, align 8, !tbaa !51
  %75 = icmp eq i32 %1, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.storable_picture, ptr %74, i64 0, i32 33
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = add i32 %1, -1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  br label %84

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.storable_picture, ptr %74, i64 0, i32 32
  br label %84

84:                                               ; preds = %82, %76
  %85 = phi ptr [ %81, %76 ], [ %83, %82 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %48) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %49) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %50) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %51) #6
  %87 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %88 = load ptr, ptr %87, align 8, !tbaa !55
  %89 = zext i32 %1 to i64
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 81
  %93 = add nsw i32 %2, -1
  %94 = sext i32 %3 to i64
  br label %95

95:                                               ; preds = %84, %95
  %96 = phi i64 [ 0, %84 ], [ %100, %95 ]
  %97 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 %96
  %98 = trunc i64 %96 to i32
  %99 = add i32 %98, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %93, i32 noundef %99, ptr noundef nonnull %92, ptr noundef nonnull %97) #6
  %100 = add nuw nsw i64 %96, 1
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %102, label %95, !llvm.loop !56

102:                                              ; preds = %95
  %103 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %103, ptr noundef nonnull %92, ptr noundef nonnull %49) #6
  %104 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %104, i32 noundef %103, ptr noundef nonnull %92, ptr noundef nonnull %50) #6
  %105 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %105, i32 noundef %103, ptr noundef nonnull %92, ptr noundef nonnull %51) #6
  %106 = load i32, ptr %50, align 4, !tbaa !59
  %107 = icmp ne i32 %106, 0
  %108 = icmp ne i32 %2, 8
  %109 = icmp ne i32 %3, 8
  %110 = or i1 %108, %109
  %111 = and i1 %110, %107
  %112 = zext i1 %111 to i32
  store i32 %112, ptr %50, align 4, !tbaa !59
  %113 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !61
  %115 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %114, i64 0, i32 30
  %116 = load i32, ptr %115, align 4, !tbaa !67
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %175, label %118

118:                                              ; preds = %102
  %119 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %120

120:                                              ; preds = %118, %134
  %121 = phi i64 [ 0, %118 ], [ %137, %134 ]
  %122 = phi i32 [ 1, %118 ], [ %136, %134 ]
  %123 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 %121
  %124 = load i32, ptr %123, align 16, !tbaa !59
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %119, align 8, !tbaa !69
  %128 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 %121, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !70
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %127, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !48
  %133 = sext i8 %132 to i32
  br label %134

134:                                              ; preds = %126, %120
  %135 = phi i32 [ %133, %126 ], [ 0, %120 ]
  %136 = and i32 %135, %122
  %137 = add nuw nsw i64 %121, 1
  %138 = icmp eq i64 %137, 8
  br i1 %138, label %139, label %120, !llvm.loop !71

139:                                              ; preds = %134
  %140 = load i32, ptr %49, align 4, !tbaa !59
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %144 = load ptr, ptr %143, align 8, !tbaa !69
  %145 = getelementptr inbounds %struct.pix_pos, ptr %49, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !70
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %144, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !48
  %150 = sext i8 %149 to i32
  br label %151

151:                                              ; preds = %142, %139
  %152 = phi i32 [ %150, %142 ], [ 0, %139 ]
  br i1 %111, label %153, label %162

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %155 = load ptr, ptr %154, align 8, !tbaa !69
  %156 = getelementptr inbounds %struct.pix_pos, ptr %50, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !70
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %155, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !48
  %161 = sext i8 %160 to i32
  br label %162

162:                                              ; preds = %153, %151
  %163 = phi i32 [ %161, %153 ], [ 0, %151 ]
  %164 = load i32, ptr %51, align 4, !tbaa !59
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %179, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %168 = load ptr, ptr %167, align 8, !tbaa !69
  %169 = getelementptr inbounds %struct.pix_pos, ptr %51, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !70
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %168, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !48
  %174 = sext i8 %173 to i32
  br label %179

175:                                              ; preds = %102
  %176 = load i32, ptr %48, align 16, !tbaa !59
  %177 = load i32, ptr %49, align 4, !tbaa !59
  %178 = load i32, ptr %51, align 4, !tbaa !59
  br label %179

179:                                              ; preds = %175, %166, %162
  %180 = phi i32 [ %177, %175 ], [ %152, %162 ], [ %152, %166 ]
  %181 = phi i32 [ %176, %175 ], [ %136, %162 ], [ %136, %166 ]
  %182 = phi i32 [ %178, %175 ], [ 0, %162 ], [ %174, %166 ]
  %183 = phi i32 [ %112, %175 ], [ %163, %162 ], [ %163, %166 ]
  %184 = icmp ne i32 %180, 0
  br i1 %184, label %185, label %218

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.pix_pos, ptr %49, i64 0, i32 5
  %187 = load i16, ptr %186, align 2, !tbaa !72
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds ptr, ptr %86, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !47
  %191 = getelementptr inbounds %struct.pix_pos, ptr %49, i64 0, i32 4
  %192 = load i16, ptr %191, align 4, !tbaa !73
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds i16, ptr %190, i64 %193
  %195 = load i16, ptr %194, align 2, !tbaa !74
  %196 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  store i16 %195, ptr %196, align 2, !tbaa !74
  %197 = getelementptr inbounds i16, ptr %194, i64 1
  %198 = load i16, ptr %197, align 2, !tbaa !74
  %199 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  store i16 %198, ptr %199, align 4, !tbaa !74
  %200 = getelementptr inbounds i16, ptr %194, i64 2
  %201 = load i16, ptr %200, align 2, !tbaa !74
  %202 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  store i16 %201, ptr %202, align 2, !tbaa !74
  %203 = getelementptr inbounds i16, ptr %194, i64 3
  %204 = load i16, ptr %203, align 2, !tbaa !74
  %205 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  store i16 %204, ptr %205, align 8, !tbaa !74
  %206 = getelementptr inbounds i16, ptr %194, i64 4
  %207 = load i16, ptr %206, align 2, !tbaa !74
  %208 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  store i16 %207, ptr %208, align 2, !tbaa !74
  %209 = getelementptr inbounds i16, ptr %194, i64 5
  %210 = load i16, ptr %209, align 2, !tbaa !74
  %211 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  store i16 %210, ptr %211, align 4, !tbaa !74
  %212 = getelementptr inbounds i16, ptr %194, i64 6
  %213 = load i16, ptr %212, align 2, !tbaa !74
  %214 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  store i16 %213, ptr %214, align 2, !tbaa !74
  %215 = getelementptr inbounds i16, ptr %194, i64 7
  %216 = load i16, ptr %215, align 2, !tbaa !74
  %217 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  store i16 %216, ptr %217, align 16, !tbaa !74
  br label %230

218:                                              ; preds = %179
  %219 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %220 = load i32, ptr %219, align 4, !tbaa !75
  %221 = trunc i32 %220 to i16
  %222 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  store i16 %221, ptr %222, align 16, !tbaa !74
  %223 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  store i16 %221, ptr %223, align 2, !tbaa !74
  %224 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  store i16 %221, ptr %224, align 4, !tbaa !74
  %225 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  store i16 %221, ptr %225, align 2, !tbaa !74
  %226 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  store i16 %221, ptr %226, align 8, !tbaa !74
  %227 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  store i16 %221, ptr %227, align 2, !tbaa !74
  %228 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  store i16 %221, ptr %228, align 4, !tbaa !74
  %229 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  store i16 %221, ptr %229, align 2, !tbaa !74
  br label %230

230:                                              ; preds = %218, %185
  %231 = icmp eq i32 %183, 0
  %232 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 10
  br i1 %231, label %265, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.pix_pos, ptr %50, i64 0, i32 5
  %235 = load i16, ptr %234, align 2, !tbaa !72
  %236 = sext i16 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %86, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !47
  %239 = getelementptr inbounds %struct.pix_pos, ptr %50, i64 0, i32 4
  %240 = load i16, ptr %239, align 4, !tbaa !73
  %241 = sext i16 %240 to i64
  %242 = getelementptr inbounds i16, ptr %238, i64 %241
  %243 = load i16, ptr %242, align 2, !tbaa !74
  %244 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 9
  store i16 %243, ptr %244, align 2, !tbaa !74
  %245 = getelementptr inbounds i16, ptr %242, i64 1
  %246 = load i16, ptr %245, align 2, !tbaa !74
  store i16 %246, ptr %232, align 4, !tbaa !74
  %247 = getelementptr inbounds i16, ptr %242, i64 2
  %248 = load i16, ptr %247, align 2, !tbaa !74
  %249 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 11
  store i16 %248, ptr %249, align 2, !tbaa !74
  %250 = getelementptr inbounds i16, ptr %242, i64 3
  %251 = load i16, ptr %250, align 2, !tbaa !74
  %252 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 12
  store i16 %251, ptr %252, align 8, !tbaa !74
  %253 = getelementptr inbounds i16, ptr %242, i64 4
  %254 = load i16, ptr %253, align 2, !tbaa !74
  %255 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 13
  store i16 %254, ptr %255, align 2, !tbaa !74
  %256 = getelementptr inbounds i16, ptr %242, i64 5
  %257 = load i16, ptr %256, align 2, !tbaa !74
  %258 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 14
  store i16 %257, ptr %258, align 4, !tbaa !74
  %259 = getelementptr inbounds i16, ptr %242, i64 6
  %260 = load i16, ptr %259, align 2, !tbaa !74
  %261 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 15
  store i16 %260, ptr %261, align 2, !tbaa !74
  %262 = getelementptr inbounds i16, ptr %242, i64 7
  %263 = load i16, ptr %262, align 2, !tbaa !74
  %264 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 16
  store i16 %263, ptr %264, align 16, !tbaa !74
  br label %275

265:                                              ; preds = %230
  %266 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  %267 = load i16, ptr %266, align 16, !tbaa !74
  %268 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 16
  store i16 %267, ptr %268, align 16, !tbaa !74
  %269 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 15
  store i16 %267, ptr %269, align 2, !tbaa !74
  %270 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 14
  store i16 %267, ptr %270, align 4, !tbaa !74
  %271 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 13
  store i16 %267, ptr %271, align 2, !tbaa !74
  %272 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 12
  store i16 %267, ptr %272, align 8, !tbaa !74
  %273 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 11
  store i16 %267, ptr %273, align 2, !tbaa !74
  store i16 %267, ptr %232, align 4, !tbaa !74
  %274 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 9
  store i16 %267, ptr %274, align 2, !tbaa !74
  br label %275

275:                                              ; preds = %265, %233
  %276 = icmp ne i32 %181, 0
  br i1 %276, label %277, label %366

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.pix_pos, ptr %48, i64 0, i32 5
  %279 = load i16, ptr %278, align 2, !tbaa !72
  %280 = sext i16 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %86, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !47
  %283 = getelementptr inbounds %struct.pix_pos, ptr %48, i64 0, i32 4
  %284 = load i16, ptr %283, align 4, !tbaa !73
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds i16, ptr %282, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !74
  %288 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  store i16 %287, ptr %288, align 2, !tbaa !74
  %289 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 1, i32 5
  %290 = load i16, ptr %289, align 2, !tbaa !72
  %291 = sext i16 %290 to i64
  %292 = getelementptr inbounds ptr, ptr %86, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !47
  %294 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 1, i32 4
  %295 = load i16, ptr %294, align 4, !tbaa !73
  %296 = sext i16 %295 to i64
  %297 = getelementptr inbounds i16, ptr %293, i64 %296
  %298 = load i16, ptr %297, align 2, !tbaa !74
  %299 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  store i16 %298, ptr %299, align 4, !tbaa !74
  %300 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 2, i32 5
  %301 = load i16, ptr %300, align 2, !tbaa !72
  %302 = sext i16 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %86, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !47
  %305 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 2, i32 4
  %306 = load i16, ptr %305, align 4, !tbaa !73
  %307 = sext i16 %306 to i64
  %308 = getelementptr inbounds i16, ptr %304, i64 %307
  %309 = load i16, ptr %308, align 2, !tbaa !74
  %310 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  store i16 %309, ptr %310, align 2, !tbaa !74
  %311 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 3, i32 5
  %312 = load i16, ptr %311, align 2, !tbaa !72
  %313 = sext i16 %312 to i64
  %314 = getelementptr inbounds ptr, ptr %86, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !47
  %316 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 3, i32 4
  %317 = load i16, ptr %316, align 4, !tbaa !73
  %318 = sext i16 %317 to i64
  %319 = getelementptr inbounds i16, ptr %315, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !74
  %321 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  store i16 %320, ptr %321, align 8, !tbaa !74
  %322 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 4, i32 5
  %323 = load i16, ptr %322, align 2, !tbaa !72
  %324 = sext i16 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %86, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !47
  %327 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 4, i32 4
  %328 = load i16, ptr %327, align 4, !tbaa !73
  %329 = sext i16 %328 to i64
  %330 = getelementptr inbounds i16, ptr %326, i64 %329
  %331 = load i16, ptr %330, align 2, !tbaa !74
  %332 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  store i16 %331, ptr %332, align 2, !tbaa !74
  %333 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 5, i32 5
  %334 = load i16, ptr %333, align 2, !tbaa !72
  %335 = sext i16 %334 to i64
  %336 = getelementptr inbounds ptr, ptr %86, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !47
  %338 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 5, i32 4
  %339 = load i16, ptr %338, align 4, !tbaa !73
  %340 = sext i16 %339 to i64
  %341 = getelementptr inbounds i16, ptr %337, i64 %340
  %342 = load i16, ptr %341, align 2, !tbaa !74
  %343 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  store i16 %342, ptr %343, align 4, !tbaa !74
  %344 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 6, i32 5
  %345 = load i16, ptr %344, align 2, !tbaa !72
  %346 = sext i16 %345 to i64
  %347 = getelementptr inbounds ptr, ptr %86, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !47
  %349 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 6, i32 4
  %350 = load i16, ptr %349, align 4, !tbaa !73
  %351 = sext i16 %350 to i64
  %352 = getelementptr inbounds i16, ptr %348, i64 %351
  %353 = load i16, ptr %352, align 2, !tbaa !74
  %354 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  store i16 %353, ptr %354, align 2, !tbaa !74
  %355 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 7, i32 5
  %356 = load i16, ptr %355, align 2, !tbaa !72
  %357 = sext i16 %356 to i64
  %358 = getelementptr inbounds ptr, ptr %86, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !47
  %360 = getelementptr inbounds [8 x %struct.pix_pos], ptr %48, i64 0, i64 7, i32 4
  %361 = load i16, ptr %360, align 4, !tbaa !73
  %362 = sext i16 %361 to i64
  %363 = getelementptr inbounds i16, ptr %359, i64 %362
  %364 = load i16, ptr %363, align 2, !tbaa !74
  %365 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  store i16 %364, ptr %365, align 16, !tbaa !74
  br label %378

366:                                              ; preds = %275
  %367 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %368 = load i32, ptr %367, align 4, !tbaa !75
  %369 = trunc i32 %368 to i16
  %370 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  store i16 %369, ptr %370, align 16, !tbaa !74
  %371 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  store i16 %369, ptr %371, align 2, !tbaa !74
  %372 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  store i16 %369, ptr %372, align 4, !tbaa !74
  %373 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  store i16 %369, ptr %373, align 2, !tbaa !74
  %374 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  store i16 %369, ptr %374, align 8, !tbaa !74
  %375 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  store i16 %369, ptr %375, align 2, !tbaa !74
  %376 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  store i16 %369, ptr %376, align 4, !tbaa !74
  %377 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  store i16 %369, ptr %377, align 2, !tbaa !74
  br label %378

378:                                              ; preds = %366, %277
  %379 = icmp eq i32 %182, 0
  br i1 %379, label %391, label %380

380:                                              ; preds = %378
  %381 = getelementptr inbounds %struct.pix_pos, ptr %51, i64 0, i32 5
  %382 = load i16, ptr %381, align 2, !tbaa !72
  %383 = sext i16 %382 to i64
  %384 = getelementptr inbounds ptr, ptr %86, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !47
  %386 = getelementptr inbounds %struct.pix_pos, ptr %51, i64 0, i32 4
  %387 = load i16, ptr %386, align 4, !tbaa !73
  %388 = sext i16 %387 to i64
  %389 = getelementptr inbounds i16, ptr %385, i64 %388
  %390 = load i16, ptr %389, align 2, !tbaa !74
  br label %395

391:                                              ; preds = %378
  %392 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %393 = load i32, ptr %392, align 4, !tbaa !75
  %394 = trunc i32 %393 to i16
  br label %395

395:                                              ; preds = %391, %380
  %396 = phi i16 [ %394, %391 ], [ %390, %380 ]
  store i16 %396, ptr %47, align 16, !tbaa !74
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %47, i32 noundef %182, i32 noundef %180, i32 noundef %181)
  %397 = and i1 %184, %276
  br i1 %397, label %398, label %464

398:                                              ; preds = %395
  %399 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  %400 = load i16, ptr %399, align 2, !tbaa !74
  %401 = zext i16 %400 to i32
  %402 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  %403 = load i16, ptr %402, align 4, !tbaa !74
  %404 = zext i16 %403 to i32
  %405 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  %406 = load i16, ptr %405, align 2, !tbaa !74
  %407 = zext i16 %406 to i32
  %408 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  %409 = load i16, ptr %408, align 8, !tbaa !74
  %410 = zext i16 %409 to i32
  %411 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  %412 = load i16, ptr %411, align 2, !tbaa !74
  %413 = zext i16 %412 to i32
  %414 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  %415 = load i16, ptr %414, align 4, !tbaa !74
  %416 = zext i16 %415 to i32
  %417 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  %418 = load i16, ptr %417, align 2, !tbaa !74
  %419 = zext i16 %418 to i32
  %420 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  %421 = load i16, ptr %420, align 16, !tbaa !74
  %422 = zext i16 %421 to i32
  %423 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  %424 = load i16, ptr %423, align 2, !tbaa !74
  %425 = zext i16 %424 to i32
  %426 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  %427 = load i16, ptr %426, align 4, !tbaa !74
  %428 = zext i16 %427 to i32
  %429 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  %430 = load i16, ptr %429, align 2, !tbaa !74
  %431 = zext i16 %430 to i32
  %432 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  %433 = load i16, ptr %432, align 8, !tbaa !74
  %434 = zext i16 %433 to i32
  %435 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  %436 = load i16, ptr %435, align 2, !tbaa !74
  %437 = zext i16 %436 to i32
  %438 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  %439 = load i16, ptr %438, align 4, !tbaa !74
  %440 = zext i16 %439 to i32
  %441 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  %442 = load i16, ptr %441, align 2, !tbaa !74
  %443 = zext i16 %442 to i32
  %444 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  %445 = load i16, ptr %444, align 16, !tbaa !74
  %446 = zext i16 %445 to i32
  %447 = add nuw nsw i32 %401, 8
  %448 = add nuw nsw i32 %447, %404
  %449 = add nuw nsw i32 %448, %407
  %450 = add nuw nsw i32 %449, %410
  %451 = add nuw nsw i32 %450, %413
  %452 = add nuw nsw i32 %451, %416
  %453 = add nuw nsw i32 %452, %419
  %454 = add nuw nsw i32 %453, %422
  %455 = add nuw nsw i32 %454, %425
  %456 = add nuw nsw i32 %455, %428
  %457 = add nuw nsw i32 %456, %431
  %458 = add nuw nsw i32 %457, %434
  %459 = add nuw nsw i32 %458, %437
  %460 = add nuw nsw i32 %459, %440
  %461 = add nuw nsw i32 %460, %443
  %462 = add nuw nsw i32 %461, %446
  %463 = lshr i32 %462, 4
  br label %540

464:                                              ; preds = %395
  %465 = icmp eq i32 %180, 0
  %466 = and i1 %465, %276
  br i1 %466, label %467, label %501

467:                                              ; preds = %464
  %468 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  %469 = load i16, ptr %468, align 2, !tbaa !74
  %470 = zext i16 %469 to i32
  %471 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  %472 = load i16, ptr %471, align 4, !tbaa !74
  %473 = zext i16 %472 to i32
  %474 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  %475 = load i16, ptr %474, align 2, !tbaa !74
  %476 = zext i16 %475 to i32
  %477 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  %478 = load i16, ptr %477, align 8, !tbaa !74
  %479 = zext i16 %478 to i32
  %480 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  %481 = load i16, ptr %480, align 2, !tbaa !74
  %482 = zext i16 %481 to i32
  %483 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  %484 = load i16, ptr %483, align 4, !tbaa !74
  %485 = zext i16 %484 to i32
  %486 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  %487 = load i16, ptr %486, align 2, !tbaa !74
  %488 = zext i16 %487 to i32
  %489 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  %490 = load i16, ptr %489, align 16, !tbaa !74
  %491 = zext i16 %490 to i32
  %492 = add nuw nsw i32 %470, 4
  %493 = add nuw nsw i32 %492, %473
  %494 = add nuw nsw i32 %493, %476
  %495 = add nuw nsw i32 %494, %479
  %496 = add nuw nsw i32 %495, %482
  %497 = add nuw nsw i32 %496, %485
  %498 = add nuw nsw i32 %497, %488
  %499 = add nuw nsw i32 %498, %491
  %500 = lshr i32 %499, 3
  br label %540

501:                                              ; preds = %464
  %502 = or i1 %465, %276
  br i1 %502, label %537, label %503

503:                                              ; preds = %501
  %504 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  %505 = load i16, ptr %504, align 2, !tbaa !74
  %506 = zext i16 %505 to i32
  %507 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  %508 = load i16, ptr %507, align 4, !tbaa !74
  %509 = zext i16 %508 to i32
  %510 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  %511 = load i16, ptr %510, align 2, !tbaa !74
  %512 = zext i16 %511 to i32
  %513 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  %514 = load i16, ptr %513, align 8, !tbaa !74
  %515 = zext i16 %514 to i32
  %516 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  %517 = load i16, ptr %516, align 2, !tbaa !74
  %518 = zext i16 %517 to i32
  %519 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  %520 = load i16, ptr %519, align 4, !tbaa !74
  %521 = zext i16 %520 to i32
  %522 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  %523 = load i16, ptr %522, align 2, !tbaa !74
  %524 = zext i16 %523 to i32
  %525 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  %526 = load i16, ptr %525, align 16, !tbaa !74
  %527 = zext i16 %526 to i32
  %528 = add nuw nsw i32 %506, 4
  %529 = add nuw nsw i32 %528, %509
  %530 = add nuw nsw i32 %529, %512
  %531 = add nuw nsw i32 %530, %515
  %532 = add nuw nsw i32 %531, %518
  %533 = add nuw nsw i32 %532, %521
  %534 = add nuw nsw i32 %533, %524
  %535 = add nuw nsw i32 %534, %527
  %536 = lshr i32 %535, 3
  br label %540

537:                                              ; preds = %501
  %538 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %539 = load i32, ptr %538, align 4, !tbaa !75
  br label %540

540:                                              ; preds = %537, %503, %467, %398
  %541 = phi i32 [ %463, %398 ], [ %500, %467 ], [ %539, %537 ], [ %536, %503 ]
  %542 = trunc i32 %541 to i16
  %543 = sext i32 %2 to i64
  %544 = sext i32 %104 to i64
  %545 = add nsw i32 %3, 7
  %546 = sext i32 %545 to i64
  br label %547

547:                                              ; preds = %540, %556
  %548 = phi i64 [ %94, %540 ], [ %557, %556 ]
  %549 = getelementptr inbounds ptr, ptr %91, i64 %548
  %550 = load ptr, ptr %549, align 8, !tbaa !47
  br label %551

551:                                              ; preds = %547, %551
  %552 = phi i64 [ %543, %547 ], [ %554, %551 ]
  %553 = getelementptr inbounds i16, ptr %550, i64 %552
  store i16 %542, ptr %553, align 2, !tbaa !74
  %554 = add nsw i64 %552, 1
  %555 = icmp slt i64 %554, %544
  br i1 %555, label %551, label %556, !llvm.loop !76

556:                                              ; preds = %551
  %557 = add nsw i64 %548, 1
  %558 = icmp slt i64 %548, %546
  br i1 %558, label %547, label %559, !llvm.loop !77

559:                                              ; preds = %556
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %51) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %50) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %49) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %48) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %47) #6
  br label %4594

560:                                              ; preds = %4
  %561 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %42) #6
  %563 = icmp eq i32 %1, 0
  %564 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %565 = load ptr, ptr %564, align 8, !tbaa !51
  br i1 %563, label %572, label %566

566:                                              ; preds = %560
  %567 = getelementptr inbounds %struct.storable_picture, ptr %565, i64 0, i32 33
  %568 = load ptr, ptr %567, align 8, !tbaa !52
  %569 = add i32 %1, -1
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds ptr, ptr %568, i64 %570
  br label %574

572:                                              ; preds = %560
  %573 = getelementptr inbounds %struct.storable_picture, ptr %565, i64 0, i32 32
  br label %574

574:                                              ; preds = %572, %566
  %575 = phi ptr [ %571, %566 ], [ %573, %572 ]
  %576 = load ptr, ptr %575, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %43) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %44) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %45) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %46) #6
  %577 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %578 = load ptr, ptr %577, align 8, !tbaa !55
  %579 = zext i32 %1 to i64
  %580 = getelementptr inbounds ptr, ptr %578, i64 %579
  %581 = load ptr, ptr %580, align 8, !tbaa !47
  %582 = getelementptr inbounds %struct.video_par, ptr %562, i64 0, i32 81
  %583 = add nsw i32 %2, -1
  %584 = sext i32 %3 to i64
  br label %585

585:                                              ; preds = %574, %585
  %586 = phi i64 [ 0, %574 ], [ %590, %585 ]
  %587 = getelementptr inbounds [8 x %struct.pix_pos], ptr %43, i64 0, i64 %586
  %588 = trunc i64 %586 to i32
  %589 = add i32 %588, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %583, i32 noundef %589, ptr noundef nonnull %582, ptr noundef nonnull %587) #6
  %590 = add nuw nsw i64 %586, 1
  %591 = icmp eq i64 %590, 8
  br i1 %591, label %592, label %585, !llvm.loop !78

592:                                              ; preds = %585
  %593 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %593, ptr noundef nonnull %582, ptr noundef nonnull %44) #6
  %594 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %594, i32 noundef %593, ptr noundef nonnull %582, ptr noundef nonnull %45) #6
  %595 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %595, i32 noundef %593, ptr noundef nonnull %582, ptr noundef nonnull %46) #6
  %596 = load i32, ptr %45, align 4, !tbaa !59
  %597 = icmp ne i32 %596, 0
  %598 = icmp ne i32 %2, 8
  %599 = icmp ne i32 %3, 8
  %600 = or i1 %598, %599
  %601 = and i1 %600, %597
  %602 = zext i1 %601 to i32
  store i32 %602, ptr %45, align 4, !tbaa !59
  %603 = getelementptr inbounds %struct.video_par, ptr %562, i64 0, i32 1
  %604 = load ptr, ptr %603, align 8, !tbaa !61
  %605 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %604, i64 0, i32 30
  %606 = load i32, ptr %605, align 4, !tbaa !67
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %665, label %608

608:                                              ; preds = %592
  %609 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %610

610:                                              ; preds = %608, %624
  %611 = phi i64 [ 0, %608 ], [ %627, %624 ]
  %612 = phi i32 [ 1, %608 ], [ %626, %624 ]
  %613 = getelementptr inbounds [8 x %struct.pix_pos], ptr %43, i64 0, i64 %611
  %614 = load i32, ptr %613, align 16, !tbaa !59
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %624, label %616

616:                                              ; preds = %610
  %617 = load ptr, ptr %609, align 8, !tbaa !69
  %618 = getelementptr inbounds [8 x %struct.pix_pos], ptr %43, i64 0, i64 %611, i32 1
  %619 = load i32, ptr %618, align 4, !tbaa !70
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, ptr %617, i64 %620
  %622 = load i8, ptr %621, align 1, !tbaa !48
  %623 = sext i8 %622 to i32
  br label %624

624:                                              ; preds = %616, %610
  %625 = phi i32 [ %623, %616 ], [ 0, %610 ]
  %626 = and i32 %625, %612
  %627 = add nuw nsw i64 %611, 1
  %628 = icmp eq i64 %627, 8
  br i1 %628, label %629, label %610, !llvm.loop !79

629:                                              ; preds = %624
  %630 = load i32, ptr %44, align 4, !tbaa !59
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %641, label %632

632:                                              ; preds = %629
  %633 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %634 = load ptr, ptr %633, align 8, !tbaa !69
  %635 = getelementptr inbounds %struct.pix_pos, ptr %44, i64 0, i32 1
  %636 = load i32, ptr %635, align 4, !tbaa !70
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i8, ptr %634, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !48
  %640 = sext i8 %639 to i32
  br label %641

641:                                              ; preds = %632, %629
  %642 = phi i32 [ %640, %632 ], [ 0, %629 ]
  br i1 %601, label %643, label %652

643:                                              ; preds = %641
  %644 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %645 = load ptr, ptr %644, align 8, !tbaa !69
  %646 = getelementptr inbounds %struct.pix_pos, ptr %45, i64 0, i32 1
  %647 = load i32, ptr %646, align 4, !tbaa !70
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, ptr %645, i64 %648
  %650 = load i8, ptr %649, align 1, !tbaa !48
  %651 = sext i8 %650 to i32
  br label %652

652:                                              ; preds = %643, %641
  %653 = phi i32 [ %651, %643 ], [ 0, %641 ]
  %654 = load i32, ptr %46, align 4, !tbaa !59
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %669, label %656

656:                                              ; preds = %652
  %657 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %658 = load ptr, ptr %657, align 8, !tbaa !69
  %659 = getelementptr inbounds %struct.pix_pos, ptr %46, i64 0, i32 1
  %660 = load i32, ptr %659, align 4, !tbaa !70
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, ptr %658, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !48
  %664 = sext i8 %663 to i32
  br label %669

665:                                              ; preds = %592
  %666 = load i32, ptr %43, align 16, !tbaa !59
  %667 = load i32, ptr %44, align 4, !tbaa !59
  %668 = load i32, ptr %46, align 4, !tbaa !59
  br label %669

669:                                              ; preds = %665, %656, %652
  %670 = phi i32 [ %666, %665 ], [ %626, %652 ], [ %626, %656 ]
  %671 = phi i32 [ %668, %665 ], [ 0, %652 ], [ %664, %656 ]
  %672 = phi i32 [ %602, %665 ], [ %653, %652 ], [ %653, %656 ]
  %673 = phi i32 [ %667, %665 ], [ %642, %652 ], [ %642, %656 ]
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %690

675:                                              ; preds = %669
  %676 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %677 = load i32, ptr %676, align 4, !tbaa !80
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %677)
  %679 = getelementptr inbounds %struct.video_par, ptr %562, i64 0, i32 69, i64 %579
  %680 = load i32, ptr %679, align 4, !tbaa !75
  %681 = trunc i32 %680 to i16
  %682 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 8
  store i16 %681, ptr %682, align 16, !tbaa !74
  %683 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 7
  store i16 %681, ptr %683, align 2, !tbaa !74
  %684 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 6
  store i16 %681, ptr %684, align 4, !tbaa !74
  %685 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 5
  store i16 %681, ptr %685, align 2, !tbaa !74
  %686 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 4
  store i16 %681, ptr %686, align 8, !tbaa !74
  %687 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 3
  store i16 %681, ptr %687, align 2, !tbaa !74
  %688 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 2
  store i16 %681, ptr %688, align 4, !tbaa !74
  %689 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 1
  store i16 %681, ptr %689, align 2, !tbaa !74
  br label %723

690:                                              ; preds = %669
  %691 = getelementptr inbounds %struct.pix_pos, ptr %44, i64 0, i32 5
  %692 = load i16, ptr %691, align 2, !tbaa !72
  %693 = sext i16 %692 to i64
  %694 = getelementptr inbounds ptr, ptr %576, i64 %693
  %695 = load ptr, ptr %694, align 8, !tbaa !47
  %696 = getelementptr inbounds %struct.pix_pos, ptr %44, i64 0, i32 4
  %697 = load i16, ptr %696, align 4, !tbaa !73
  %698 = sext i16 %697 to i64
  %699 = getelementptr inbounds i16, ptr %695, i64 %698
  %700 = getelementptr inbounds i16, ptr %699, i64 1
  %701 = load i16, ptr %699, align 2, !tbaa !74
  %702 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 1
  store i16 %701, ptr %702, align 2, !tbaa !74
  %703 = getelementptr inbounds i16, ptr %699, i64 2
  %704 = load i16, ptr %700, align 2, !tbaa !74
  %705 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 2
  store i16 %704, ptr %705, align 4, !tbaa !74
  %706 = getelementptr inbounds i16, ptr %699, i64 3
  %707 = load i16, ptr %703, align 2, !tbaa !74
  %708 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 3
  store i16 %707, ptr %708, align 2, !tbaa !74
  %709 = getelementptr inbounds i16, ptr %699, i64 4
  %710 = load i16, ptr %706, align 2, !tbaa !74
  %711 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 4
  store i16 %710, ptr %711, align 8, !tbaa !74
  %712 = getelementptr inbounds i16, ptr %699, i64 5
  %713 = load i16, ptr %709, align 2, !tbaa !74
  %714 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 5
  store i16 %713, ptr %714, align 2, !tbaa !74
  %715 = getelementptr inbounds i16, ptr %699, i64 6
  %716 = load i16, ptr %712, align 2, !tbaa !74
  %717 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 6
  store i16 %716, ptr %717, align 4, !tbaa !74
  %718 = getelementptr inbounds i16, ptr %699, i64 7
  %719 = load i16, ptr %715, align 2, !tbaa !74
  %720 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 7
  store i16 %719, ptr %720, align 2, !tbaa !74
  %721 = load i16, ptr %718, align 2, !tbaa !74
  %722 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 8
  store i16 %721, ptr %722, align 16, !tbaa !74
  br label %723

723:                                              ; preds = %690, %675
  %724 = icmp eq i32 %672, 0
  br i1 %724, label %758, label %725

725:                                              ; preds = %723
  %726 = getelementptr inbounds %struct.pix_pos, ptr %45, i64 0, i32 5
  %727 = load i16, ptr %726, align 2, !tbaa !72
  %728 = sext i16 %727 to i64
  %729 = getelementptr inbounds ptr, ptr %576, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !47
  %731 = getelementptr inbounds %struct.pix_pos, ptr %45, i64 0, i32 4
  %732 = load i16, ptr %731, align 4, !tbaa !73
  %733 = sext i16 %732 to i64
  %734 = getelementptr inbounds i16, ptr %730, i64 %733
  %735 = getelementptr inbounds i16, ptr %734, i64 1
  %736 = load i16, ptr %734, align 2, !tbaa !74
  %737 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 9
  store i16 %736, ptr %737, align 2, !tbaa !74
  %738 = getelementptr inbounds i16, ptr %734, i64 2
  %739 = load i16, ptr %735, align 2, !tbaa !74
  %740 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 10
  store i16 %739, ptr %740, align 4, !tbaa !74
  %741 = getelementptr inbounds i16, ptr %734, i64 3
  %742 = load i16, ptr %738, align 2, !tbaa !74
  %743 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 11
  store i16 %742, ptr %743, align 2, !tbaa !74
  %744 = getelementptr inbounds i16, ptr %734, i64 4
  %745 = load i16, ptr %741, align 2, !tbaa !74
  %746 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 12
  store i16 %745, ptr %746, align 8, !tbaa !74
  %747 = getelementptr inbounds i16, ptr %734, i64 5
  %748 = load i16, ptr %744, align 2, !tbaa !74
  %749 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 13
  store i16 %748, ptr %749, align 2, !tbaa !74
  %750 = getelementptr inbounds i16, ptr %734, i64 6
  %751 = load i16, ptr %747, align 2, !tbaa !74
  %752 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 14
  store i16 %751, ptr %752, align 4, !tbaa !74
  %753 = getelementptr inbounds i16, ptr %734, i64 7
  %754 = load i16, ptr %750, align 2, !tbaa !74
  %755 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 15
  store i16 %754, ptr %755, align 2, !tbaa !74
  %756 = load i16, ptr %753, align 2, !tbaa !74
  %757 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 16
  store i16 %756, ptr %757, align 16, !tbaa !74
  br label %769

758:                                              ; preds = %723
  %759 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 8
  %760 = load i16, ptr %759, align 16, !tbaa !74
  %761 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 16
  store i16 %760, ptr %761, align 16, !tbaa !74
  %762 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 15
  store i16 %760, ptr %762, align 2, !tbaa !74
  %763 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 14
  store i16 %760, ptr %763, align 4, !tbaa !74
  %764 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 13
  store i16 %760, ptr %764, align 2, !tbaa !74
  %765 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 12
  store i16 %760, ptr %765, align 8, !tbaa !74
  %766 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 11
  store i16 %760, ptr %766, align 2, !tbaa !74
  %767 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 10
  store i16 %760, ptr %767, align 4, !tbaa !74
  %768 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 9
  store i16 %760, ptr %768, align 2, !tbaa !74
  br label %769

769:                                              ; preds = %758, %725
  %770 = icmp eq i32 %671, 0
  br i1 %770, label %782, label %771

771:                                              ; preds = %769
  %772 = getelementptr inbounds %struct.pix_pos, ptr %46, i64 0, i32 5
  %773 = load i16, ptr %772, align 2, !tbaa !72
  %774 = sext i16 %773 to i64
  %775 = getelementptr inbounds ptr, ptr %576, i64 %774
  %776 = load ptr, ptr %775, align 8, !tbaa !47
  %777 = getelementptr inbounds %struct.pix_pos, ptr %46, i64 0, i32 4
  %778 = load i16, ptr %777, align 4, !tbaa !73
  %779 = sext i16 %778 to i64
  %780 = getelementptr inbounds i16, ptr %776, i64 %779
  %781 = load i16, ptr %780, align 2, !tbaa !74
  br label %786

782:                                              ; preds = %769
  %783 = getelementptr inbounds %struct.video_par, ptr %562, i64 0, i32 69, i64 %579
  %784 = load i32, ptr %783, align 4, !tbaa !75
  %785 = trunc i32 %784 to i16
  br label %786

786:                                              ; preds = %782, %771
  %787 = phi i16 [ %785, %782 ], [ %781, %771 ]
  store i16 %787, ptr %42, align 16, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %41) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %41, ptr noundef nonnull align 16 dereferenceable(50) %42, i64 50, i1 false)
  br i1 %770, label %828, label %788

788:                                              ; preds = %786
  %789 = icmp ne i32 %673, 0
  %790 = icmp ne i32 %670, 0
  %791 = and i1 %790, %789
  br i1 %791, label %792, label %806

792:                                              ; preds = %788
  %793 = getelementptr inbounds i16, ptr %42, i64 17
  %794 = load i16, ptr %793, align 2, !tbaa !74
  %795 = zext i16 %794 to i32
  %796 = zext i16 %787 to i32
  %797 = shl nuw nsw i32 %796, 1
  %798 = getelementptr inbounds i16, ptr %42, i64 1
  %799 = load i16, ptr %798, align 2, !tbaa !74
  %800 = zext i16 %799 to i32
  %801 = add nuw nsw i32 %797, 2
  %802 = add nuw nsw i32 %801, %795
  %803 = add nuw nsw i32 %802, %800
  %804 = lshr i32 %803, 2
  %805 = trunc i32 %804 to i16
  store i16 %805, ptr %41, align 16, !tbaa !74
  br label %828

806:                                              ; preds = %788
  br i1 %789, label %807, label %817

807:                                              ; preds = %806
  %808 = zext i16 %787 to i32
  %809 = mul nuw nsw i32 %808, 3
  %810 = getelementptr inbounds i16, ptr %42, i64 1
  %811 = load i16, ptr %810, align 2, !tbaa !74
  %812 = zext i16 %811 to i32
  %813 = add nuw nsw i32 %809, 2
  %814 = add nuw nsw i32 %813, %812
  %815 = lshr i32 %814, 2
  %816 = trunc i32 %815 to i16
  store i16 %816, ptr %41, align 16, !tbaa !74
  br label %828

817:                                              ; preds = %806
  br i1 %790, label %818, label %828

818:                                              ; preds = %817
  %819 = zext i16 %787 to i32
  %820 = mul nuw nsw i32 %819, 3
  %821 = getelementptr inbounds i16, ptr %42, i64 17
  %822 = load i16, ptr %821, align 2, !tbaa !74
  %823 = zext i16 %822 to i32
  %824 = add nuw nsw i32 %820, 2
  %825 = add nuw nsw i32 %824, %823
  %826 = lshr i32 %825, 2
  %827 = trunc i32 %826 to i16
  store i16 %827, ptr %41, align 16, !tbaa !74
  br label %828

828:                                              ; preds = %818, %817, %807, %792, %786
  br i1 %674, label %890, label %829

829:                                              ; preds = %828
  br i1 %770, label %842, label %830

830:                                              ; preds = %829
  %831 = zext i16 %787 to i32
  %832 = getelementptr inbounds i16, ptr %42, i64 1
  %833 = load i16, ptr %832, align 2, !tbaa !74
  %834 = zext i16 %833 to i32
  %835 = shl nuw nsw i32 %834, 1
  %836 = getelementptr inbounds i16, ptr %42, i64 2
  %837 = load i16, ptr %836, align 4, !tbaa !74
  %838 = zext i16 %837 to i32
  %839 = add nuw nsw i32 %831, 2
  %840 = add nuw nsw i32 %839, %835
  %841 = add nuw nsw i32 %840, %838
  br label %852

842:                                              ; preds = %829
  %843 = getelementptr inbounds i16, ptr %42, i64 1
  %844 = load i16, ptr %843, align 2, !tbaa !74
  %845 = zext i16 %844 to i32
  %846 = mul nuw nsw i32 %845, 3
  %847 = getelementptr inbounds i16, ptr %42, i64 2
  %848 = load i16, ptr %847, align 4, !tbaa !74
  %849 = zext i16 %848 to i32
  %850 = add nuw nsw i32 %849, 2
  %851 = add nuw nsw i32 %850, %846
  br label %852

852:                                              ; preds = %842, %830
  %853 = phi i32 [ %851, %842 ], [ %841, %830 ]
  %854 = lshr i32 %853, 2
  %855 = trunc i32 %854 to i16
  %856 = getelementptr inbounds [25 x i16], ptr %41, i64 0, i64 1
  store i16 %855, ptr %856, align 2, !tbaa !74
  br label %857

857:                                              ; preds = %852, %857
  %858 = phi i64 [ 2, %852 ], [ %866, %857 ]
  %859 = getelementptr i16, ptr %42, i64 %858
  %860 = getelementptr i16, ptr %859, i64 -1
  %861 = load i16, ptr %860, align 2, !tbaa !74
  %862 = zext i16 %861 to i32
  %863 = load i16, ptr %859, align 2, !tbaa !74
  %864 = zext i16 %863 to i32
  %865 = shl nuw nsw i32 %864, 1
  %866 = add nuw nsw i64 %858, 1
  %867 = getelementptr inbounds i16, ptr %42, i64 %866
  %868 = load i16, ptr %867, align 2, !tbaa !74
  %869 = zext i16 %868 to i32
  %870 = add nuw nsw i32 %862, 2
  %871 = add nuw nsw i32 %870, %865
  %872 = add nuw nsw i32 %871, %869
  %873 = lshr i32 %872, 2
  %874 = trunc i32 %873 to i16
  %875 = getelementptr inbounds [25 x i16], ptr %41, i64 0, i64 %858
  store i16 %874, ptr %875, align 2, !tbaa !74
  %876 = icmp eq i64 %866, 16
  br i1 %876, label %877, label %857, !llvm.loop !81

877:                                              ; preds = %857
  %878 = getelementptr inbounds i16, ptr %42, i64 16
  %879 = load i16, ptr %878, align 16, !tbaa !74
  %880 = zext i16 %879 to i32
  %881 = mul nuw nsw i32 %880, 3
  %882 = getelementptr inbounds i16, ptr %42, i64 15
  %883 = load i16, ptr %882, align 2, !tbaa !74
  %884 = zext i16 %883 to i32
  %885 = add nuw nsw i32 %884, 2
  %886 = add nuw nsw i32 %885, %881
  %887 = lshr i32 %886, 2
  %888 = trunc i32 %887 to i16
  %889 = getelementptr inbounds [25 x i16], ptr %41, i64 0, i64 16
  store i16 %888, ptr %889, align 16, !tbaa !74
  br label %890

890:                                              ; preds = %877, %828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %42, ptr noundef nonnull align 16 dereferenceable(34) %41, i64 34, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %41) #6
  %891 = sext i32 %2 to i64
  %892 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 1
  %893 = add nsw i32 %3, 7
  %894 = sext i32 %893 to i64
  br label %895

895:                                              ; preds = %890, %895
  %896 = phi i64 [ %584, %890 ], [ %900, %895 ]
  %897 = getelementptr inbounds ptr, ptr %581, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !47
  %899 = getelementptr inbounds i16, ptr %898, i64 %891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %899, ptr noundef nonnull align 2 dereferenceable(16) %892, i64 16, i1 false)
  %900 = add nsw i64 %896, 1
  %901 = icmp slt i64 %896, %894
  br i1 %901, label %895, label %902, !llvm.loop !82

902:                                              ; preds = %895
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %46) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %45) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %44) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %43) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %42) #6
  br label %4594

903:                                              ; preds = %4
  %904 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %905 = load ptr, ptr %904, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %36) #6
  %906 = icmp eq i32 %1, 0
  %907 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %908 = load ptr, ptr %907, align 8, !tbaa !51
  br i1 %906, label %915, label %909

909:                                              ; preds = %903
  %910 = getelementptr inbounds %struct.storable_picture, ptr %908, i64 0, i32 33
  %911 = load ptr, ptr %910, align 8, !tbaa !52
  %912 = add i32 %1, -1
  %913 = zext i32 %912 to i64
  %914 = getelementptr inbounds ptr, ptr %911, i64 %913
  br label %917

915:                                              ; preds = %903
  %916 = getelementptr inbounds %struct.storable_picture, ptr %908, i64 0, i32 32
  br label %917

917:                                              ; preds = %915, %909
  %918 = phi ptr [ %914, %909 ], [ %916, %915 ]
  %919 = load ptr, ptr %918, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %37) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %38) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %39) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %40) #6
  %920 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %921 = load ptr, ptr %920, align 8, !tbaa !55
  %922 = zext i32 %1 to i64
  %923 = getelementptr inbounds ptr, ptr %921, i64 %922
  %924 = load ptr, ptr %923, align 8, !tbaa !47
  %925 = getelementptr inbounds %struct.video_par, ptr %905, i64 0, i32 81
  %926 = add nsw i32 %2, -1
  br label %927

927:                                              ; preds = %917, %927
  %928 = phi i64 [ 0, %917 ], [ %932, %927 ]
  %929 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 %928
  %930 = trunc i64 %928 to i32
  %931 = add i32 %930, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %926, i32 noundef %931, ptr noundef nonnull %925, ptr noundef nonnull %929) #6
  %932 = add nuw nsw i64 %928, 1
  %933 = icmp eq i64 %932, 8
  br i1 %933, label %934, label %927, !llvm.loop !83

934:                                              ; preds = %927
  %935 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %935, ptr noundef nonnull %925, ptr noundef nonnull %38) #6
  %936 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %936, i32 noundef %935, ptr noundef nonnull %925, ptr noundef nonnull %39) #6
  %937 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %937, i32 noundef %935, ptr noundef nonnull %925, ptr noundef nonnull %40) #6
  %938 = load i32, ptr %39, align 4, !tbaa !59
  %939 = icmp ne i32 %938, 0
  %940 = icmp ne i32 %2, 8
  %941 = icmp ne i32 %3, 8
  %942 = or i1 %940, %941
  %943 = and i1 %942, %939
  %944 = zext i1 %943 to i32
  store i32 %944, ptr %39, align 4, !tbaa !59
  %945 = getelementptr inbounds %struct.video_par, ptr %905, i64 0, i32 1
  %946 = load ptr, ptr %945, align 8, !tbaa !61
  %947 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %946, i64 0, i32 30
  %948 = load i32, ptr %947, align 4, !tbaa !67
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %996, label %950

950:                                              ; preds = %934
  %951 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %952

952:                                              ; preds = %950, %966
  %953 = phi i64 [ 0, %950 ], [ %969, %966 ]
  %954 = phi i32 [ 1, %950 ], [ %968, %966 ]
  %955 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 %953
  %956 = load i32, ptr %955, align 16, !tbaa !59
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %966, label %958

958:                                              ; preds = %952
  %959 = load ptr, ptr %951, align 8, !tbaa !69
  %960 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 %953, i32 1
  %961 = load i32, ptr %960, align 4, !tbaa !70
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds i8, ptr %959, i64 %962
  %964 = load i8, ptr %963, align 1, !tbaa !48
  %965 = sext i8 %964 to i32
  br label %966

966:                                              ; preds = %958, %952
  %967 = phi i32 [ %965, %958 ], [ 0, %952 ]
  %968 = and i32 %967, %954
  %969 = add nuw nsw i64 %953, 1
  %970 = icmp eq i64 %969, 8
  br i1 %970, label %971, label %952, !llvm.loop !84

971:                                              ; preds = %966
  %972 = load i32, ptr %38, align 4, !tbaa !59
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %983, label %974

974:                                              ; preds = %971
  %975 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %976 = load ptr, ptr %975, align 8, !tbaa !69
  %977 = getelementptr inbounds %struct.pix_pos, ptr %38, i64 0, i32 1
  %978 = load i32, ptr %977, align 4, !tbaa !70
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds i8, ptr %976, i64 %979
  %981 = load i8, ptr %980, align 1, !tbaa !48
  %982 = sext i8 %981 to i32
  br label %983

983:                                              ; preds = %974, %971
  %984 = phi i32 [ %982, %974 ], [ 0, %971 ]
  %985 = load i32, ptr %40, align 4, !tbaa !59
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1000, label %987

987:                                              ; preds = %983
  %988 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %989 = load ptr, ptr %988, align 8, !tbaa !69
  %990 = getelementptr inbounds %struct.pix_pos, ptr %40, i64 0, i32 1
  %991 = load i32, ptr %990, align 4, !tbaa !70
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i8, ptr %989, i64 %992
  %994 = load i8, ptr %993, align 1, !tbaa !48
  %995 = sext i8 %994 to i32
  br label %1000

996:                                              ; preds = %934
  %997 = load i32, ptr %37, align 16, !tbaa !59
  %998 = load i32, ptr %38, align 4, !tbaa !59
  %999 = load i32, ptr %40, align 4, !tbaa !59
  br label %1000

1000:                                             ; preds = %996, %987, %983
  %1001 = phi i32 [ %999, %996 ], [ %995, %987 ], [ 0, %983 ]
  %1002 = phi i32 [ %997, %996 ], [ %968, %987 ], [ %968, %983 ]
  %1003 = phi i32 [ %998, %996 ], [ %984, %987 ], [ %984, %983 ]
  %1004 = icmp eq i32 %1002, 0
  br i1 %1004, label %1005, label %1020

1005:                                             ; preds = %1000
  %1006 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %1007 = load i32, ptr %1006, align 4, !tbaa !80
  %1008 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %1007)
  %1009 = getelementptr inbounds %struct.video_par, ptr %905, i64 0, i32 69, i64 %922
  %1010 = load i32, ptr %1009, align 4, !tbaa !75
  %1011 = trunc i32 %1010 to i16
  %1012 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 24
  store i16 %1011, ptr %1012, align 16, !tbaa !74
  %1013 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 23
  store i16 %1011, ptr %1013, align 2, !tbaa !74
  %1014 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 22
  store i16 %1011, ptr %1014, align 4, !tbaa !74
  %1015 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 21
  store i16 %1011, ptr %1015, align 2, !tbaa !74
  %1016 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 20
  store i16 %1011, ptr %1016, align 8, !tbaa !74
  %1017 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 19
  store i16 %1011, ptr %1017, align 2, !tbaa !74
  %1018 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 18
  store i16 %1011, ptr %1018, align 4, !tbaa !74
  %1019 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 17
  store i16 %1011, ptr %1019, align 2, !tbaa !74
  br label %1109

1020:                                             ; preds = %1000
  %1021 = getelementptr inbounds %struct.pix_pos, ptr %37, i64 0, i32 5
  %1022 = load i16, ptr %1021, align 2, !tbaa !72
  %1023 = sext i16 %1022 to i64
  %1024 = getelementptr inbounds ptr, ptr %919, i64 %1023
  %1025 = load ptr, ptr %1024, align 8, !tbaa !47
  %1026 = getelementptr inbounds %struct.pix_pos, ptr %37, i64 0, i32 4
  %1027 = load i16, ptr %1026, align 4, !tbaa !73
  %1028 = sext i16 %1027 to i64
  %1029 = getelementptr inbounds i16, ptr %1025, i64 %1028
  %1030 = load i16, ptr %1029, align 2, !tbaa !74
  %1031 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 17
  store i16 %1030, ptr %1031, align 2, !tbaa !74
  %1032 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 1, i32 5
  %1033 = load i16, ptr %1032, align 2, !tbaa !72
  %1034 = sext i16 %1033 to i64
  %1035 = getelementptr inbounds ptr, ptr %919, i64 %1034
  %1036 = load ptr, ptr %1035, align 8, !tbaa !47
  %1037 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 1, i32 4
  %1038 = load i16, ptr %1037, align 4, !tbaa !73
  %1039 = sext i16 %1038 to i64
  %1040 = getelementptr inbounds i16, ptr %1036, i64 %1039
  %1041 = load i16, ptr %1040, align 2, !tbaa !74
  %1042 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 18
  store i16 %1041, ptr %1042, align 4, !tbaa !74
  %1043 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 2, i32 5
  %1044 = load i16, ptr %1043, align 2, !tbaa !72
  %1045 = sext i16 %1044 to i64
  %1046 = getelementptr inbounds ptr, ptr %919, i64 %1045
  %1047 = load ptr, ptr %1046, align 8, !tbaa !47
  %1048 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 2, i32 4
  %1049 = load i16, ptr %1048, align 4, !tbaa !73
  %1050 = sext i16 %1049 to i64
  %1051 = getelementptr inbounds i16, ptr %1047, i64 %1050
  %1052 = load i16, ptr %1051, align 2, !tbaa !74
  %1053 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 19
  store i16 %1052, ptr %1053, align 2, !tbaa !74
  %1054 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 3, i32 5
  %1055 = load i16, ptr %1054, align 2, !tbaa !72
  %1056 = sext i16 %1055 to i64
  %1057 = getelementptr inbounds ptr, ptr %919, i64 %1056
  %1058 = load ptr, ptr %1057, align 8, !tbaa !47
  %1059 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 3, i32 4
  %1060 = load i16, ptr %1059, align 4, !tbaa !73
  %1061 = sext i16 %1060 to i64
  %1062 = getelementptr inbounds i16, ptr %1058, i64 %1061
  %1063 = load i16, ptr %1062, align 2, !tbaa !74
  %1064 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 20
  store i16 %1063, ptr %1064, align 8, !tbaa !74
  %1065 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 4, i32 5
  %1066 = load i16, ptr %1065, align 2, !tbaa !72
  %1067 = sext i16 %1066 to i64
  %1068 = getelementptr inbounds ptr, ptr %919, i64 %1067
  %1069 = load ptr, ptr %1068, align 8, !tbaa !47
  %1070 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 4, i32 4
  %1071 = load i16, ptr %1070, align 4, !tbaa !73
  %1072 = sext i16 %1071 to i64
  %1073 = getelementptr inbounds i16, ptr %1069, i64 %1072
  %1074 = load i16, ptr %1073, align 2, !tbaa !74
  %1075 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 21
  store i16 %1074, ptr %1075, align 2, !tbaa !74
  %1076 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 5, i32 5
  %1077 = load i16, ptr %1076, align 2, !tbaa !72
  %1078 = sext i16 %1077 to i64
  %1079 = getelementptr inbounds ptr, ptr %919, i64 %1078
  %1080 = load ptr, ptr %1079, align 8, !tbaa !47
  %1081 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 5, i32 4
  %1082 = load i16, ptr %1081, align 4, !tbaa !73
  %1083 = sext i16 %1082 to i64
  %1084 = getelementptr inbounds i16, ptr %1080, i64 %1083
  %1085 = load i16, ptr %1084, align 2, !tbaa !74
  %1086 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 22
  store i16 %1085, ptr %1086, align 4, !tbaa !74
  %1087 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 6, i32 5
  %1088 = load i16, ptr %1087, align 2, !tbaa !72
  %1089 = sext i16 %1088 to i64
  %1090 = getelementptr inbounds ptr, ptr %919, i64 %1089
  %1091 = load ptr, ptr %1090, align 8, !tbaa !47
  %1092 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 6, i32 4
  %1093 = load i16, ptr %1092, align 4, !tbaa !73
  %1094 = sext i16 %1093 to i64
  %1095 = getelementptr inbounds i16, ptr %1091, i64 %1094
  %1096 = load i16, ptr %1095, align 2, !tbaa !74
  %1097 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 23
  store i16 %1096, ptr %1097, align 2, !tbaa !74
  %1098 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 7, i32 5
  %1099 = load i16, ptr %1098, align 2, !tbaa !72
  %1100 = sext i16 %1099 to i64
  %1101 = getelementptr inbounds ptr, ptr %919, i64 %1100
  %1102 = load ptr, ptr %1101, align 8, !tbaa !47
  %1103 = getelementptr inbounds [8 x %struct.pix_pos], ptr %37, i64 0, i64 7, i32 4
  %1104 = load i16, ptr %1103, align 4, !tbaa !73
  %1105 = sext i16 %1104 to i64
  %1106 = getelementptr inbounds i16, ptr %1102, i64 %1105
  %1107 = load i16, ptr %1106, align 2, !tbaa !74
  %1108 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 24
  store i16 %1107, ptr %1108, align 16, !tbaa !74
  br label %1109

1109:                                             ; preds = %1020, %1005
  %1110 = icmp eq i32 %1001, 0
  br i1 %1110, label %1122, label %1111

1111:                                             ; preds = %1109
  %1112 = getelementptr inbounds %struct.pix_pos, ptr %40, i64 0, i32 5
  %1113 = load i16, ptr %1112, align 2, !tbaa !72
  %1114 = sext i16 %1113 to i64
  %1115 = getelementptr inbounds ptr, ptr %919, i64 %1114
  %1116 = load ptr, ptr %1115, align 8, !tbaa !47
  %1117 = getelementptr inbounds %struct.pix_pos, ptr %40, i64 0, i32 4
  %1118 = load i16, ptr %1117, align 4, !tbaa !73
  %1119 = sext i16 %1118 to i64
  %1120 = getelementptr inbounds i16, ptr %1116, i64 %1119
  %1121 = load i16, ptr %1120, align 2, !tbaa !74
  br label %1126

1122:                                             ; preds = %1109
  %1123 = getelementptr inbounds %struct.video_par, ptr %905, i64 0, i32 69, i64 %922
  %1124 = load i32, ptr %1123, align 4, !tbaa !75
  %1125 = trunc i32 %1124 to i16
  br label %1126

1126:                                             ; preds = %1122, %1111
  %1127 = phi i16 [ %1125, %1122 ], [ %1121, %1111 ]
  store i16 %1127, ptr %36, align 16, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %35) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %35, ptr noundef nonnull align 16 dereferenceable(50) %36, i64 50, i1 false)
  br i1 %1110, label %1168, label %1128

1128:                                             ; preds = %1126
  %1129 = icmp ne i32 %1003, 0
  %1130 = icmp ne i32 %1002, 0
  %1131 = and i1 %1130, %1129
  br i1 %1131, label %1132, label %1146

1132:                                             ; preds = %1128
  %1133 = getelementptr inbounds i16, ptr %36, i64 17
  %1134 = load i16, ptr %1133, align 2, !tbaa !74
  %1135 = zext i16 %1134 to i32
  %1136 = zext i16 %1127 to i32
  %1137 = shl nuw nsw i32 %1136, 1
  %1138 = getelementptr inbounds i16, ptr %36, i64 1
  %1139 = load i16, ptr %1138, align 2, !tbaa !74
  %1140 = zext i16 %1139 to i32
  %1141 = add nuw nsw i32 %1137, 2
  %1142 = add nuw nsw i32 %1141, %1135
  %1143 = add nuw nsw i32 %1142, %1140
  %1144 = lshr i32 %1143, 2
  %1145 = trunc i32 %1144 to i16
  store i16 %1145, ptr %35, align 16, !tbaa !74
  br label %1168

1146:                                             ; preds = %1128
  br i1 %1129, label %1147, label %1157

1147:                                             ; preds = %1146
  %1148 = zext i16 %1127 to i32
  %1149 = mul nuw nsw i32 %1148, 3
  %1150 = getelementptr inbounds i16, ptr %36, i64 1
  %1151 = load i16, ptr %1150, align 2, !tbaa !74
  %1152 = zext i16 %1151 to i32
  %1153 = add nuw nsw i32 %1149, 2
  %1154 = add nuw nsw i32 %1153, %1152
  %1155 = lshr i32 %1154, 2
  %1156 = trunc i32 %1155 to i16
  store i16 %1156, ptr %35, align 16, !tbaa !74
  br label %1168

1157:                                             ; preds = %1146
  br i1 %1130, label %1158, label %1168

1158:                                             ; preds = %1157
  %1159 = zext i16 %1127 to i32
  %1160 = mul nuw nsw i32 %1159, 3
  %1161 = getelementptr inbounds i16, ptr %36, i64 17
  %1162 = load i16, ptr %1161, align 2, !tbaa !74
  %1163 = zext i16 %1162 to i32
  %1164 = add nuw nsw i32 %1160, 2
  %1165 = add nuw nsw i32 %1164, %1163
  %1166 = lshr i32 %1165, 2
  %1167 = trunc i32 %1166 to i16
  store i16 %1167, ptr %35, align 16, !tbaa !74
  br label %1168

1168:                                             ; preds = %1158, %1157, %1147, %1132, %1126
  br i1 %1004, label %1231, label %1169

1169:                                             ; preds = %1168
  br i1 %1110, label %1182, label %1170

1170:                                             ; preds = %1169
  %1171 = zext i16 %1127 to i32
  %1172 = getelementptr inbounds i16, ptr %36, i64 17
  %1173 = load i16, ptr %1172, align 2, !tbaa !74
  %1174 = zext i16 %1173 to i32
  %1175 = shl nuw nsw i32 %1174, 1
  %1176 = getelementptr inbounds i16, ptr %36, i64 18
  %1177 = load i16, ptr %1176, align 4, !tbaa !74
  %1178 = zext i16 %1177 to i32
  %1179 = add nuw nsw i32 %1171, 2
  %1180 = add nuw nsw i32 %1179, %1175
  %1181 = add nuw nsw i32 %1180, %1178
  br label %1192

1182:                                             ; preds = %1169
  %1183 = getelementptr inbounds i16, ptr %36, i64 17
  %1184 = load i16, ptr %1183, align 2, !tbaa !74
  %1185 = zext i16 %1184 to i32
  %1186 = mul nuw nsw i32 %1185, 3
  %1187 = getelementptr inbounds i16, ptr %36, i64 18
  %1188 = load i16, ptr %1187, align 4, !tbaa !74
  %1189 = zext i16 %1188 to i32
  %1190 = add nuw nsw i32 %1189, 2
  %1191 = add nuw nsw i32 %1190, %1186
  br label %1192

1192:                                             ; preds = %1182, %1170
  %1193 = phi i32 [ %1191, %1182 ], [ %1181, %1170 ]
  %1194 = lshr i32 %1193, 2
  %1195 = trunc i32 %1194 to i16
  %1196 = getelementptr inbounds [25 x i16], ptr %35, i64 0, i64 17
  store i16 %1195, ptr %1196, align 2, !tbaa !74
  br label %1197

1197:                                             ; preds = %1192, %1197
  %1198 = phi i64 [ 18, %1192 ], [ %1206, %1197 ]
  %1199 = getelementptr i16, ptr %36, i64 %1198
  %1200 = getelementptr i16, ptr %1199, i64 -1
  %1201 = load i16, ptr %1200, align 2, !tbaa !74
  %1202 = zext i16 %1201 to i32
  %1203 = load i16, ptr %1199, align 2, !tbaa !74
  %1204 = zext i16 %1203 to i32
  %1205 = shl nuw nsw i32 %1204, 1
  %1206 = add nuw nsw i64 %1198, 1
  %1207 = getelementptr inbounds i16, ptr %36, i64 %1206
  %1208 = load i16, ptr %1207, align 2, !tbaa !74
  %1209 = zext i16 %1208 to i32
  %1210 = add nuw nsw i32 %1202, 2
  %1211 = add nuw nsw i32 %1210, %1205
  %1212 = add nuw nsw i32 %1211, %1209
  %1213 = lshr i32 %1212, 2
  %1214 = trunc i32 %1213 to i16
  %1215 = getelementptr inbounds [25 x i16], ptr %35, i64 0, i64 %1198
  store i16 %1214, ptr %1215, align 2, !tbaa !74
  %1216 = icmp eq i64 %1206, 24
  br i1 %1216, label %1217, label %1197, !llvm.loop !85

1217:                                             ; preds = %1197
  %1218 = getelementptr inbounds i16, ptr %36, i64 23
  %1219 = load i16, ptr %1218, align 2, !tbaa !74
  %1220 = zext i16 %1219 to i32
  %1221 = getelementptr inbounds i16, ptr %36, i64 24
  %1222 = load i16, ptr %1221, align 16, !tbaa !74
  %1223 = zext i16 %1222 to i32
  %1224 = shl nuw nsw i32 %1223, 1
  %1225 = add nuw nsw i32 %1220, 2
  %1226 = add nuw nsw i32 %1225, %1223
  %1227 = add nuw nsw i32 %1226, %1224
  %1228 = lshr i32 %1227, 2
  %1229 = trunc i32 %1228 to i16
  %1230 = getelementptr inbounds [25 x i16], ptr %35, i64 0, i64 24
  store i16 %1229, ptr %1230, align 16, !tbaa !74
  br label %1231

1231:                                             ; preds = %1217, %1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %36, ptr noundef nonnull align 16 dereferenceable(50) %35, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %35) #6
  %1232 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 17
  %1233 = sext i32 %2 to i64
  %1234 = sext i32 %3 to i64
  %1235 = getelementptr ptr, ptr %924, i64 %1234
  br label %1236

1236:                                             ; preds = %1231, %1236
  %1237 = phi i64 [ 0, %1231 ], [ %1250, %1236 ]
  %1238 = getelementptr inbounds i16, ptr %1232, i64 %1237
  %1239 = load i16, ptr %1238, align 2, !tbaa !74
  %1240 = getelementptr ptr, ptr %1235, i64 %1237
  %1241 = load ptr, ptr %1240, align 8, !tbaa !47
  %1242 = getelementptr i16, ptr %1241, i64 %1233
  %1243 = getelementptr i16, ptr %1242, i64 7
  store i16 %1239, ptr %1243, align 2, !tbaa !74
  %1244 = getelementptr i16, ptr %1242, i64 6
  store i16 %1239, ptr %1244, align 2, !tbaa !74
  %1245 = getelementptr i16, ptr %1242, i64 5
  store i16 %1239, ptr %1245, align 2, !tbaa !74
  %1246 = getelementptr i16, ptr %1242, i64 4
  store i16 %1239, ptr %1246, align 2, !tbaa !74
  %1247 = getelementptr i16, ptr %1242, i64 3
  store i16 %1239, ptr %1247, align 2, !tbaa !74
  %1248 = getelementptr i16, ptr %1242, i64 2
  store i16 %1239, ptr %1248, align 2, !tbaa !74
  %1249 = getelementptr i16, ptr %1242, i64 1
  store i16 %1239, ptr %1249, align 2, !tbaa !74
  store i16 %1239, ptr %1242, align 2, !tbaa !74
  %1250 = add nuw nsw i64 %1237, 1
  %1251 = icmp eq i64 %1250, 8
  br i1 %1251, label %1252, label %1236, !llvm.loop !86

1252:                                             ; preds = %1236
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %40) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %39) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %38) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %37) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %36) #6
  br label %4594

1253:                                             ; preds = %4
  %1254 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %1255 = load ptr, ptr %1254, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %30) #6
  %1256 = icmp eq i32 %1, 0
  %1257 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %1258 = load ptr, ptr %1257, align 8, !tbaa !51
  br i1 %1256, label %1265, label %1259

1259:                                             ; preds = %1253
  %1260 = getelementptr inbounds %struct.storable_picture, ptr %1258, i64 0, i32 33
  %1261 = load ptr, ptr %1260, align 8, !tbaa !52
  %1262 = add i32 %1, -1
  %1263 = zext i32 %1262 to i64
  %1264 = getelementptr inbounds ptr, ptr %1261, i64 %1263
  br label %1267

1265:                                             ; preds = %1253
  %1266 = getelementptr inbounds %struct.storable_picture, ptr %1258, i64 0, i32 32
  br label %1267

1267:                                             ; preds = %1265, %1259
  %1268 = phi ptr [ %1264, %1259 ], [ %1266, %1265 ]
  %1269 = load ptr, ptr %1268, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %31) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %32) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %34) #6
  %1270 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %1271 = load ptr, ptr %1270, align 8, !tbaa !55
  %1272 = zext i32 %1 to i64
  %1273 = getelementptr inbounds ptr, ptr %1271, i64 %1272
  %1274 = load ptr, ptr %1273, align 8, !tbaa !47
  %1275 = getelementptr inbounds %struct.video_par, ptr %1255, i64 0, i32 81
  %1276 = add nsw i32 %2, -1
  br label %1277

1277:                                             ; preds = %1267, %1277
  %1278 = phi i64 [ 0, %1267 ], [ %1282, %1277 ]
  %1279 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 %1278
  %1280 = trunc i64 %1278 to i32
  %1281 = add i32 %1280, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %1276, i32 noundef %1281, ptr noundef nonnull %1275, ptr noundef nonnull %1279) #6
  %1282 = add nuw nsw i64 %1278, 1
  %1283 = icmp eq i64 %1282, 8
  br i1 %1283, label %1284, label %1277, !llvm.loop !87

1284:                                             ; preds = %1277
  %1285 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1285, ptr noundef nonnull %1275, ptr noundef nonnull %32) #6
  %1286 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %1286, i32 noundef %1285, ptr noundef nonnull %1275, ptr noundef nonnull %33) #6
  %1287 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %1287, i32 noundef %1285, ptr noundef nonnull %1275, ptr noundef nonnull %34) #6
  %1288 = load i32, ptr %33, align 4, !tbaa !59
  %1289 = icmp ne i32 %1288, 0
  %1290 = icmp ne i32 %2, 8
  %1291 = icmp ne i32 %3, 8
  %1292 = or i1 %1290, %1291
  %1293 = and i1 %1292, %1289
  %1294 = zext i1 %1293 to i32
  store i32 %1294, ptr %33, align 4, !tbaa !59
  %1295 = getelementptr inbounds %struct.video_par, ptr %1255, i64 0, i32 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !61
  %1297 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1296, i64 0, i32 30
  %1298 = load i32, ptr %1297, align 4, !tbaa !67
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1357, label %1300

1300:                                             ; preds = %1284
  %1301 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %1302

1302:                                             ; preds = %1300, %1316
  %1303 = phi i64 [ 0, %1300 ], [ %1319, %1316 ]
  %1304 = phi i32 [ 1, %1300 ], [ %1318, %1316 ]
  %1305 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 %1303
  %1306 = load i32, ptr %1305, align 16, !tbaa !59
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1316, label %1308

1308:                                             ; preds = %1302
  %1309 = load ptr, ptr %1301, align 8, !tbaa !69
  %1310 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 %1303, i32 1
  %1311 = load i32, ptr %1310, align 4, !tbaa !70
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds i8, ptr %1309, i64 %1312
  %1314 = load i8, ptr %1313, align 1, !tbaa !48
  %1315 = sext i8 %1314 to i32
  br label %1316

1316:                                             ; preds = %1308, %1302
  %1317 = phi i32 [ %1315, %1308 ], [ 0, %1302 ]
  %1318 = and i32 %1317, %1304
  %1319 = add nuw nsw i64 %1303, 1
  %1320 = icmp eq i64 %1319, 8
  br i1 %1320, label %1321, label %1302, !llvm.loop !88

1321:                                             ; preds = %1316
  %1322 = load i32, ptr %32, align 4, !tbaa !59
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1333, label %1324

1324:                                             ; preds = %1321
  %1325 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1326 = load ptr, ptr %1325, align 8, !tbaa !69
  %1327 = getelementptr inbounds %struct.pix_pos, ptr %32, i64 0, i32 1
  %1328 = load i32, ptr %1327, align 4, !tbaa !70
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds i8, ptr %1326, i64 %1329
  %1331 = load i8, ptr %1330, align 1, !tbaa !48
  %1332 = sext i8 %1331 to i32
  br label %1333

1333:                                             ; preds = %1324, %1321
  %1334 = phi i32 [ %1332, %1324 ], [ 0, %1321 ]
  br i1 %1293, label %1335, label %1344

1335:                                             ; preds = %1333
  %1336 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1337 = load ptr, ptr %1336, align 8, !tbaa !69
  %1338 = getelementptr inbounds %struct.pix_pos, ptr %33, i64 0, i32 1
  %1339 = load i32, ptr %1338, align 4, !tbaa !70
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds i8, ptr %1337, i64 %1340
  %1342 = load i8, ptr %1341, align 1, !tbaa !48
  %1343 = sext i8 %1342 to i32
  br label %1344

1344:                                             ; preds = %1335, %1333
  %1345 = phi i32 [ %1343, %1335 ], [ 0, %1333 ]
  %1346 = load i32, ptr %34, align 4, !tbaa !59
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1361, label %1348

1348:                                             ; preds = %1344
  %1349 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1350 = load ptr, ptr %1349, align 8, !tbaa !69
  %1351 = getelementptr inbounds %struct.pix_pos, ptr %34, i64 0, i32 1
  %1352 = load i32, ptr %1351, align 4, !tbaa !70
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds i8, ptr %1350, i64 %1353
  %1355 = load i8, ptr %1354, align 1, !tbaa !48
  %1356 = sext i8 %1355 to i32
  br label %1361

1357:                                             ; preds = %1284
  %1358 = load i32, ptr %31, align 16, !tbaa !59
  %1359 = load i32, ptr %32, align 4, !tbaa !59
  %1360 = load i32, ptr %34, align 4, !tbaa !59
  br label %1361

1361:                                             ; preds = %1357, %1348, %1344
  %1362 = phi i32 [ %1359, %1357 ], [ %1334, %1344 ], [ %1334, %1348 ]
  %1363 = phi i32 [ %1358, %1357 ], [ %1318, %1344 ], [ %1318, %1348 ]
  %1364 = phi i32 [ %1360, %1357 ], [ 0, %1344 ], [ %1356, %1348 ]
  %1365 = phi i32 [ %1294, %1357 ], [ %1345, %1344 ], [ %1345, %1348 ]
  %1366 = icmp ne i32 %1362, 0
  %1367 = icmp ne i32 %1363, 0
  %1368 = select i1 %1366, i1 %1367, i1 false
  %1369 = icmp ne i32 %1364, 0
  %1370 = select i1 %1368, i1 %1369, i1 false
  br i1 %1370, label %1375, label %1371

1371:                                             ; preds = %1361
  %1372 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %1373 = load i32, ptr %1372, align 4, !tbaa !80
  %1374 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1373)
  br label %1375

1375:                                             ; preds = %1371, %1361
  br i1 %1366, label %1376, label %1409

1376:                                             ; preds = %1375
  %1377 = getelementptr inbounds %struct.pix_pos, ptr %32, i64 0, i32 5
  %1378 = load i16, ptr %1377, align 2, !tbaa !72
  %1379 = sext i16 %1378 to i64
  %1380 = getelementptr inbounds ptr, ptr %1269, i64 %1379
  %1381 = load ptr, ptr %1380, align 8, !tbaa !47
  %1382 = getelementptr inbounds %struct.pix_pos, ptr %32, i64 0, i32 4
  %1383 = load i16, ptr %1382, align 4, !tbaa !73
  %1384 = sext i16 %1383 to i64
  %1385 = getelementptr inbounds i16, ptr %1381, i64 %1384
  %1386 = load i16, ptr %1385, align 2, !tbaa !74
  %1387 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 1
  store i16 %1386, ptr %1387, align 2, !tbaa !74
  %1388 = getelementptr inbounds i16, ptr %1385, i64 1
  %1389 = load i16, ptr %1388, align 2, !tbaa !74
  %1390 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 2
  store i16 %1389, ptr %1390, align 4, !tbaa !74
  %1391 = getelementptr inbounds i16, ptr %1385, i64 2
  %1392 = load i16, ptr %1391, align 2, !tbaa !74
  %1393 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 3
  store i16 %1392, ptr %1393, align 2, !tbaa !74
  %1394 = getelementptr inbounds i16, ptr %1385, i64 3
  %1395 = load i16, ptr %1394, align 2, !tbaa !74
  %1396 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 4
  store i16 %1395, ptr %1396, align 8, !tbaa !74
  %1397 = getelementptr inbounds i16, ptr %1385, i64 4
  %1398 = load i16, ptr %1397, align 2, !tbaa !74
  %1399 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 5
  store i16 %1398, ptr %1399, align 2, !tbaa !74
  %1400 = getelementptr inbounds i16, ptr %1385, i64 5
  %1401 = load i16, ptr %1400, align 2, !tbaa !74
  %1402 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 6
  store i16 %1401, ptr %1402, align 4, !tbaa !74
  %1403 = getelementptr inbounds i16, ptr %1385, i64 6
  %1404 = load i16, ptr %1403, align 2, !tbaa !74
  %1405 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 7
  store i16 %1404, ptr %1405, align 2, !tbaa !74
  %1406 = getelementptr inbounds i16, ptr %1385, i64 7
  %1407 = load i16, ptr %1406, align 2, !tbaa !74
  %1408 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  store i16 %1407, ptr %1408, align 16, !tbaa !74
  br label %1421

1409:                                             ; preds = %1375
  %1410 = getelementptr inbounds %struct.video_par, ptr %1255, i64 0, i32 69, i64 %1272
  %1411 = load i32, ptr %1410, align 4, !tbaa !75
  %1412 = trunc i32 %1411 to i16
  %1413 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  store i16 %1412, ptr %1413, align 16, !tbaa !74
  %1414 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 7
  store i16 %1412, ptr %1414, align 2, !tbaa !74
  %1415 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 6
  store i16 %1412, ptr %1415, align 4, !tbaa !74
  %1416 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 5
  store i16 %1412, ptr %1416, align 2, !tbaa !74
  %1417 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 4
  store i16 %1412, ptr %1417, align 8, !tbaa !74
  %1418 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 3
  store i16 %1412, ptr %1418, align 2, !tbaa !74
  %1419 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 2
  store i16 %1412, ptr %1419, align 4, !tbaa !74
  %1420 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 1
  store i16 %1412, ptr %1420, align 2, !tbaa !74
  br label %1421

1421:                                             ; preds = %1409, %1376
  %1422 = icmp eq i32 %1365, 0
  %1423 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 10
  br i1 %1422, label %1456, label %1424

1424:                                             ; preds = %1421
  %1425 = getelementptr inbounds %struct.pix_pos, ptr %33, i64 0, i32 5
  %1426 = load i16, ptr %1425, align 2, !tbaa !72
  %1427 = sext i16 %1426 to i64
  %1428 = getelementptr inbounds ptr, ptr %1269, i64 %1427
  %1429 = load ptr, ptr %1428, align 8, !tbaa !47
  %1430 = getelementptr inbounds %struct.pix_pos, ptr %33, i64 0, i32 4
  %1431 = load i16, ptr %1430, align 4, !tbaa !73
  %1432 = sext i16 %1431 to i64
  %1433 = getelementptr inbounds i16, ptr %1429, i64 %1432
  %1434 = load i16, ptr %1433, align 2, !tbaa !74
  %1435 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 9
  store i16 %1434, ptr %1435, align 2, !tbaa !74
  %1436 = getelementptr inbounds i16, ptr %1433, i64 1
  %1437 = load i16, ptr %1436, align 2, !tbaa !74
  store i16 %1437, ptr %1423, align 4, !tbaa !74
  %1438 = getelementptr inbounds i16, ptr %1433, i64 2
  %1439 = load i16, ptr %1438, align 2, !tbaa !74
  %1440 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 11
  store i16 %1439, ptr %1440, align 2, !tbaa !74
  %1441 = getelementptr inbounds i16, ptr %1433, i64 3
  %1442 = load i16, ptr %1441, align 2, !tbaa !74
  %1443 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 12
  store i16 %1442, ptr %1443, align 8, !tbaa !74
  %1444 = getelementptr inbounds i16, ptr %1433, i64 4
  %1445 = load i16, ptr %1444, align 2, !tbaa !74
  %1446 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 13
  store i16 %1445, ptr %1446, align 2, !tbaa !74
  %1447 = getelementptr inbounds i16, ptr %1433, i64 5
  %1448 = load i16, ptr %1447, align 2, !tbaa !74
  %1449 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 14
  store i16 %1448, ptr %1449, align 4, !tbaa !74
  %1450 = getelementptr inbounds i16, ptr %1433, i64 6
  %1451 = load i16, ptr %1450, align 2, !tbaa !74
  %1452 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 15
  store i16 %1451, ptr %1452, align 2, !tbaa !74
  %1453 = getelementptr inbounds i16, ptr %1433, i64 7
  %1454 = load i16, ptr %1453, align 2, !tbaa !74
  %1455 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 16
  store i16 %1454, ptr %1455, align 16, !tbaa !74
  br label %1466

1456:                                             ; preds = %1421
  %1457 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  %1458 = load i16, ptr %1457, align 16, !tbaa !74
  %1459 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 16
  store i16 %1458, ptr %1459, align 16, !tbaa !74
  %1460 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 15
  store i16 %1458, ptr %1460, align 2, !tbaa !74
  %1461 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 14
  store i16 %1458, ptr %1461, align 4, !tbaa !74
  %1462 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 13
  store i16 %1458, ptr %1462, align 2, !tbaa !74
  %1463 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 12
  store i16 %1458, ptr %1463, align 8, !tbaa !74
  %1464 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 11
  store i16 %1458, ptr %1464, align 2, !tbaa !74
  store i16 %1458, ptr %1423, align 4, !tbaa !74
  %1465 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 9
  store i16 %1458, ptr %1465, align 2, !tbaa !74
  br label %1466

1466:                                             ; preds = %1456, %1424
  br i1 %1367, label %1467, label %1556

1467:                                             ; preds = %1466
  %1468 = getelementptr inbounds %struct.pix_pos, ptr %31, i64 0, i32 5
  %1469 = load i16, ptr %1468, align 2, !tbaa !72
  %1470 = sext i16 %1469 to i64
  %1471 = getelementptr inbounds ptr, ptr %1269, i64 %1470
  %1472 = load ptr, ptr %1471, align 8, !tbaa !47
  %1473 = getelementptr inbounds %struct.pix_pos, ptr %31, i64 0, i32 4
  %1474 = load i16, ptr %1473, align 4, !tbaa !73
  %1475 = sext i16 %1474 to i64
  %1476 = getelementptr inbounds i16, ptr %1472, i64 %1475
  %1477 = load i16, ptr %1476, align 2, !tbaa !74
  %1478 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 17
  store i16 %1477, ptr %1478, align 2, !tbaa !74
  %1479 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 1, i32 5
  %1480 = load i16, ptr %1479, align 2, !tbaa !72
  %1481 = sext i16 %1480 to i64
  %1482 = getelementptr inbounds ptr, ptr %1269, i64 %1481
  %1483 = load ptr, ptr %1482, align 8, !tbaa !47
  %1484 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 1, i32 4
  %1485 = load i16, ptr %1484, align 4, !tbaa !73
  %1486 = sext i16 %1485 to i64
  %1487 = getelementptr inbounds i16, ptr %1483, i64 %1486
  %1488 = load i16, ptr %1487, align 2, !tbaa !74
  %1489 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 18
  store i16 %1488, ptr %1489, align 4, !tbaa !74
  %1490 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 2, i32 5
  %1491 = load i16, ptr %1490, align 2, !tbaa !72
  %1492 = sext i16 %1491 to i64
  %1493 = getelementptr inbounds ptr, ptr %1269, i64 %1492
  %1494 = load ptr, ptr %1493, align 8, !tbaa !47
  %1495 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 2, i32 4
  %1496 = load i16, ptr %1495, align 4, !tbaa !73
  %1497 = sext i16 %1496 to i64
  %1498 = getelementptr inbounds i16, ptr %1494, i64 %1497
  %1499 = load i16, ptr %1498, align 2, !tbaa !74
  %1500 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 19
  store i16 %1499, ptr %1500, align 2, !tbaa !74
  %1501 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 3, i32 5
  %1502 = load i16, ptr %1501, align 2, !tbaa !72
  %1503 = sext i16 %1502 to i64
  %1504 = getelementptr inbounds ptr, ptr %1269, i64 %1503
  %1505 = load ptr, ptr %1504, align 8, !tbaa !47
  %1506 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 3, i32 4
  %1507 = load i16, ptr %1506, align 4, !tbaa !73
  %1508 = sext i16 %1507 to i64
  %1509 = getelementptr inbounds i16, ptr %1505, i64 %1508
  %1510 = load i16, ptr %1509, align 2, !tbaa !74
  %1511 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 20
  store i16 %1510, ptr %1511, align 8, !tbaa !74
  %1512 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 4, i32 5
  %1513 = load i16, ptr %1512, align 2, !tbaa !72
  %1514 = sext i16 %1513 to i64
  %1515 = getelementptr inbounds ptr, ptr %1269, i64 %1514
  %1516 = load ptr, ptr %1515, align 8, !tbaa !47
  %1517 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 4, i32 4
  %1518 = load i16, ptr %1517, align 4, !tbaa !73
  %1519 = sext i16 %1518 to i64
  %1520 = getelementptr inbounds i16, ptr %1516, i64 %1519
  %1521 = load i16, ptr %1520, align 2, !tbaa !74
  %1522 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 21
  store i16 %1521, ptr %1522, align 2, !tbaa !74
  %1523 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 5, i32 5
  %1524 = load i16, ptr %1523, align 2, !tbaa !72
  %1525 = sext i16 %1524 to i64
  %1526 = getelementptr inbounds ptr, ptr %1269, i64 %1525
  %1527 = load ptr, ptr %1526, align 8, !tbaa !47
  %1528 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 5, i32 4
  %1529 = load i16, ptr %1528, align 4, !tbaa !73
  %1530 = sext i16 %1529 to i64
  %1531 = getelementptr inbounds i16, ptr %1527, i64 %1530
  %1532 = load i16, ptr %1531, align 2, !tbaa !74
  %1533 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 22
  store i16 %1532, ptr %1533, align 4, !tbaa !74
  %1534 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 6, i32 5
  %1535 = load i16, ptr %1534, align 2, !tbaa !72
  %1536 = sext i16 %1535 to i64
  %1537 = getelementptr inbounds ptr, ptr %1269, i64 %1536
  %1538 = load ptr, ptr %1537, align 8, !tbaa !47
  %1539 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 6, i32 4
  %1540 = load i16, ptr %1539, align 4, !tbaa !73
  %1541 = sext i16 %1540 to i64
  %1542 = getelementptr inbounds i16, ptr %1538, i64 %1541
  %1543 = load i16, ptr %1542, align 2, !tbaa !74
  %1544 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 23
  store i16 %1543, ptr %1544, align 2, !tbaa !74
  %1545 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 7, i32 5
  %1546 = load i16, ptr %1545, align 2, !tbaa !72
  %1547 = sext i16 %1546 to i64
  %1548 = getelementptr inbounds ptr, ptr %1269, i64 %1547
  %1549 = load ptr, ptr %1548, align 8, !tbaa !47
  %1550 = getelementptr inbounds [8 x %struct.pix_pos], ptr %31, i64 0, i64 7, i32 4
  %1551 = load i16, ptr %1550, align 4, !tbaa !73
  %1552 = sext i16 %1551 to i64
  %1553 = getelementptr inbounds i16, ptr %1549, i64 %1552
  %1554 = load i16, ptr %1553, align 2, !tbaa !74
  %1555 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 24
  store i16 %1554, ptr %1555, align 16, !tbaa !74
  br label %1568

1556:                                             ; preds = %1466
  %1557 = getelementptr inbounds %struct.video_par, ptr %1255, i64 0, i32 69, i64 %1272
  %1558 = load i32, ptr %1557, align 4, !tbaa !75
  %1559 = trunc i32 %1558 to i16
  %1560 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 24
  store i16 %1559, ptr %1560, align 16, !tbaa !74
  %1561 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 23
  store i16 %1559, ptr %1561, align 2, !tbaa !74
  %1562 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 22
  store i16 %1559, ptr %1562, align 4, !tbaa !74
  %1563 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 21
  store i16 %1559, ptr %1563, align 2, !tbaa !74
  %1564 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 20
  store i16 %1559, ptr %1564, align 8, !tbaa !74
  %1565 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 19
  store i16 %1559, ptr %1565, align 2, !tbaa !74
  %1566 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 18
  store i16 %1559, ptr %1566, align 4, !tbaa !74
  %1567 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 17
  store i16 %1559, ptr %1567, align 2, !tbaa !74
  br label %1568

1568:                                             ; preds = %1556, %1467
  br i1 %1369, label %1569, label %1580

1569:                                             ; preds = %1568
  %1570 = getelementptr inbounds %struct.pix_pos, ptr %34, i64 0, i32 5
  %1571 = load i16, ptr %1570, align 2, !tbaa !72
  %1572 = sext i16 %1571 to i64
  %1573 = getelementptr inbounds ptr, ptr %1269, i64 %1572
  %1574 = load ptr, ptr %1573, align 8, !tbaa !47
  %1575 = getelementptr inbounds %struct.pix_pos, ptr %34, i64 0, i32 4
  %1576 = load i16, ptr %1575, align 4, !tbaa !73
  %1577 = sext i16 %1576 to i64
  %1578 = getelementptr inbounds i16, ptr %1574, i64 %1577
  %1579 = load i16, ptr %1578, align 2, !tbaa !74
  br label %1584

1580:                                             ; preds = %1568
  %1581 = getelementptr inbounds %struct.video_par, ptr %1255, i64 0, i32 69, i64 %1272
  %1582 = load i32, ptr %1581, align 4, !tbaa !75
  %1583 = trunc i32 %1582 to i16
  br label %1584

1584:                                             ; preds = %1569, %1580
  %1585 = phi i16 [ %1583, %1580 ], [ %1579, %1569 ]
  store i16 %1585, ptr %30, align 16, !tbaa !74
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %30, i32 noundef %1364, i32 noundef %1362, i32 noundef %1363)
  %1586 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 24
  %1587 = load i16, ptr %1586, align 16, !tbaa !74
  %1588 = zext i16 %1587 to i32
  %1589 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 22
  %1590 = load i16, ptr %1589, align 4, !tbaa !74
  %1591 = zext i16 %1590 to i32
  %1592 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 23
  %1593 = load i16, ptr %1592, align 2, !tbaa !74
  %1594 = zext i16 %1593 to i32
  %1595 = shl nuw nsw i32 %1594, 1
  %1596 = add nuw nsw i32 %1591, 2
  %1597 = add nuw nsw i32 %1596, %1588
  %1598 = add nuw nsw i32 %1597, %1595
  %1599 = lshr i32 %1598, 2
  %1600 = trunc i32 %1599 to i16
  %1601 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 21
  %1602 = load i16, ptr %1601, align 2, !tbaa !74
  %1603 = zext i16 %1602 to i32
  %1604 = shl nuw nsw i32 %1591, 1
  %1605 = add nuw nsw i32 %1603, 2
  %1606 = add nuw nsw i32 %1605, %1594
  %1607 = add nuw nsw i32 %1606, %1604
  %1608 = lshr i32 %1607, 2
  %1609 = trunc i32 %1608 to i16
  %1610 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 20
  %1611 = load i16, ptr %1610, align 8, !tbaa !74
  %1612 = zext i16 %1611 to i32
  %1613 = shl nuw nsw i32 %1603, 1
  %1614 = add nuw nsw i32 %1591, 2
  %1615 = add nuw nsw i32 %1614, %1612
  %1616 = add nuw nsw i32 %1615, %1613
  %1617 = lshr i32 %1616, 2
  %1618 = trunc i32 %1617 to i16
  %1619 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 19
  %1620 = load i16, ptr %1619, align 2, !tbaa !74
  %1621 = zext i16 %1620 to i32
  %1622 = shl nuw nsw i32 %1612, 1
  %1623 = add nuw nsw i32 %1603, 2
  %1624 = add nuw nsw i32 %1623, %1621
  %1625 = add nuw nsw i32 %1624, %1622
  %1626 = lshr i32 %1625, 2
  %1627 = trunc i32 %1626 to i16
  %1628 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 18
  %1629 = load i16, ptr %1628, align 4, !tbaa !74
  %1630 = zext i16 %1629 to i32
  %1631 = shl nuw nsw i32 %1621, 1
  %1632 = add nuw nsw i32 %1612, 2
  %1633 = add nuw nsw i32 %1632, %1630
  %1634 = add nuw nsw i32 %1633, %1631
  %1635 = lshr i32 %1634, 2
  %1636 = trunc i32 %1635 to i16
  %1637 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 17
  %1638 = load i16, ptr %1637, align 2, !tbaa !74
  %1639 = zext i16 %1638 to i32
  %1640 = shl nuw nsw i32 %1630, 1
  %1641 = add nuw nsw i32 %1621, 2
  %1642 = add nuw nsw i32 %1641, %1639
  %1643 = add nuw nsw i32 %1642, %1640
  %1644 = lshr i32 %1643, 2
  %1645 = trunc i32 %1644 to i16
  %1646 = load i16, ptr %30, align 16, !tbaa !74
  %1647 = zext i16 %1646 to i32
  %1648 = shl nuw nsw i32 %1639, 1
  %1649 = add nuw nsw i32 %1630, 2
  %1650 = add nuw nsw i32 %1649, %1647
  %1651 = add nuw nsw i32 %1650, %1648
  %1652 = lshr i32 %1651, 2
  %1653 = trunc i32 %1652 to i16
  %1654 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 1
  %1655 = load i16, ptr %1654, align 2, !tbaa !74
  %1656 = zext i16 %1655 to i32
  %1657 = shl nuw nsw i32 %1647, 1
  %1658 = add nuw nsw i32 %1639, 2
  %1659 = add nuw nsw i32 %1658, %1656
  %1660 = add nuw nsw i32 %1659, %1657
  %1661 = lshr i32 %1660, 2
  %1662 = trunc i32 %1661 to i16
  %1663 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 2
  %1664 = load i16, ptr %1663, align 4, !tbaa !74
  %1665 = zext i16 %1664 to i32
  %1666 = shl nuw nsw i32 %1656, 1
  %1667 = add nuw nsw i32 %1647, 2
  %1668 = add nuw nsw i32 %1667, %1665
  %1669 = add nuw nsw i32 %1668, %1666
  %1670 = lshr i32 %1669, 2
  %1671 = trunc i32 %1670 to i16
  %1672 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 3
  %1673 = load i16, ptr %1672, align 2, !tbaa !74
  %1674 = zext i16 %1673 to i32
  %1675 = shl nuw nsw i32 %1665, 1
  %1676 = add nuw nsw i32 %1656, 2
  %1677 = add nuw nsw i32 %1676, %1674
  %1678 = add nuw nsw i32 %1677, %1675
  %1679 = lshr i32 %1678, 2
  %1680 = trunc i32 %1679 to i16
  %1681 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 4
  %1682 = load i16, ptr %1681, align 8, !tbaa !74
  %1683 = zext i16 %1682 to i32
  %1684 = shl nuw nsw i32 %1674, 1
  %1685 = add nuw nsw i32 %1665, 2
  %1686 = add nuw nsw i32 %1685, %1683
  %1687 = add nuw nsw i32 %1686, %1684
  %1688 = lshr i32 %1687, 2
  %1689 = trunc i32 %1688 to i16
  %1690 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 5
  %1691 = load i16, ptr %1690, align 2, !tbaa !74
  %1692 = zext i16 %1691 to i32
  %1693 = shl nuw nsw i32 %1683, 1
  %1694 = add nuw nsw i32 %1674, 2
  %1695 = add nuw nsw i32 %1694, %1692
  %1696 = add nuw nsw i32 %1695, %1693
  %1697 = lshr i32 %1696, 2
  %1698 = trunc i32 %1697 to i16
  %1699 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 6
  %1700 = load i16, ptr %1699, align 4, !tbaa !74
  %1701 = zext i16 %1700 to i32
  %1702 = shl nuw nsw i32 %1692, 1
  %1703 = add nuw nsw i32 %1683, 2
  %1704 = add nuw nsw i32 %1703, %1701
  %1705 = add nuw nsw i32 %1704, %1702
  %1706 = lshr i32 %1705, 2
  %1707 = trunc i32 %1706 to i16
  %1708 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 7
  %1709 = load i16, ptr %1708, align 2, !tbaa !74
  %1710 = zext i16 %1709 to i32
  %1711 = shl nuw nsw i32 %1701, 1
  %1712 = add nuw nsw i32 %1692, 2
  %1713 = add nuw nsw i32 %1712, %1710
  %1714 = add nuw nsw i32 %1713, %1711
  %1715 = lshr i32 %1714, 2
  %1716 = trunc i32 %1715 to i16
  %1717 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  %1718 = load i16, ptr %1717, align 16, !tbaa !74
  %1719 = zext i16 %1718 to i32
  %1720 = shl nuw nsw i32 %1710, 1
  %1721 = add nuw nsw i32 %1701, 2
  %1722 = add nuw nsw i32 %1721, %1719
  %1723 = add nuw nsw i32 %1722, %1720
  %1724 = lshr i32 %1723, 2
  %1725 = trunc i32 %1724 to i16
  %1726 = sext i32 %3 to i64
  %1727 = getelementptr inbounds ptr, ptr %1274, i64 %1726
  %1728 = load ptr, ptr %1727, align 8, !tbaa !47
  %1729 = sext i32 %2 to i64
  %1730 = getelementptr inbounds i16, ptr %1728, i64 %1729
  store i16 %1662, ptr %1730, align 2
  %1731 = getelementptr inbounds i8, ptr %1730, i64 2
  store i16 %1671, ptr %1731, align 2
  %1732 = getelementptr inbounds i8, ptr %1730, i64 4
  store i16 %1680, ptr %1732, align 2
  %1733 = getelementptr inbounds i8, ptr %1730, i64 6
  store i16 %1689, ptr %1733, align 2
  %1734 = getelementptr inbounds i8, ptr %1730, i64 8
  store i16 %1698, ptr %1734, align 2
  %1735 = getelementptr inbounds i8, ptr %1730, i64 10
  store i16 %1707, ptr %1735, align 2
  %1736 = getelementptr inbounds i8, ptr %1730, i64 12
  store i16 %1716, ptr %1736, align 2
  %1737 = getelementptr inbounds i8, ptr %1730, i64 14
  store i16 %1725, ptr %1737, align 2
  %1738 = getelementptr ptr, ptr %1727, i64 1
  %1739 = load ptr, ptr %1738, align 8, !tbaa !47
  %1740 = getelementptr inbounds i16, ptr %1739, i64 %1729
  store i16 %1653, ptr %1740, align 2
  %1741 = getelementptr inbounds i8, ptr %1740, i64 2
  store i16 %1662, ptr %1741, align 2
  %1742 = getelementptr inbounds i8, ptr %1740, i64 4
  store i16 %1671, ptr %1742, align 2
  %1743 = getelementptr inbounds i8, ptr %1740, i64 6
  store i16 %1680, ptr %1743, align 2
  %1744 = getelementptr inbounds i8, ptr %1740, i64 8
  store i16 %1689, ptr %1744, align 2
  %1745 = getelementptr inbounds i8, ptr %1740, i64 10
  store i16 %1698, ptr %1745, align 2
  %1746 = getelementptr inbounds i8, ptr %1740, i64 12
  store i16 %1707, ptr %1746, align 2
  %1747 = getelementptr inbounds i8, ptr %1740, i64 14
  store i16 %1716, ptr %1747, align 2
  %1748 = getelementptr ptr, ptr %1727, i64 2
  %1749 = load ptr, ptr %1748, align 8, !tbaa !47
  %1750 = getelementptr inbounds i16, ptr %1749, i64 %1729
  store i16 %1645, ptr %1750, align 2
  %1751 = getelementptr inbounds i8, ptr %1750, i64 2
  store i16 %1653, ptr %1751, align 2
  %1752 = getelementptr inbounds i8, ptr %1750, i64 4
  store i16 %1662, ptr %1752, align 2
  %1753 = getelementptr inbounds i8, ptr %1750, i64 6
  store i16 %1671, ptr %1753, align 2
  %1754 = getelementptr inbounds i8, ptr %1750, i64 8
  store i16 %1680, ptr %1754, align 2
  %1755 = getelementptr inbounds i8, ptr %1750, i64 10
  store i16 %1689, ptr %1755, align 2
  %1756 = getelementptr inbounds i8, ptr %1750, i64 12
  store i16 %1698, ptr %1756, align 2
  %1757 = getelementptr inbounds i8, ptr %1750, i64 14
  store i16 %1707, ptr %1757, align 2
  %1758 = getelementptr ptr, ptr %1727, i64 3
  %1759 = load ptr, ptr %1758, align 8, !tbaa !47
  %1760 = getelementptr inbounds i16, ptr %1759, i64 %1729
  store i16 %1636, ptr %1760, align 2
  %1761 = getelementptr inbounds i8, ptr %1760, i64 2
  store i16 %1645, ptr %1761, align 2
  %1762 = getelementptr inbounds i8, ptr %1760, i64 4
  store i16 %1653, ptr %1762, align 2
  %1763 = getelementptr inbounds i8, ptr %1760, i64 6
  store i16 %1662, ptr %1763, align 2
  %1764 = getelementptr inbounds i8, ptr %1760, i64 8
  store i16 %1671, ptr %1764, align 2
  %1765 = getelementptr inbounds i8, ptr %1760, i64 10
  store i16 %1680, ptr %1765, align 2
  %1766 = getelementptr inbounds i8, ptr %1760, i64 12
  store i16 %1689, ptr %1766, align 2
  %1767 = getelementptr inbounds i8, ptr %1760, i64 14
  store i16 %1698, ptr %1767, align 2
  %1768 = getelementptr ptr, ptr %1727, i64 4
  %1769 = load ptr, ptr %1768, align 8, !tbaa !47
  %1770 = getelementptr inbounds i16, ptr %1769, i64 %1729
  store i16 %1627, ptr %1770, align 2
  %1771 = getelementptr inbounds i8, ptr %1770, i64 2
  store i16 %1636, ptr %1771, align 2
  %1772 = getelementptr inbounds i8, ptr %1770, i64 4
  store i16 %1645, ptr %1772, align 2
  %1773 = getelementptr inbounds i8, ptr %1770, i64 6
  store i16 %1653, ptr %1773, align 2
  %1774 = getelementptr inbounds i8, ptr %1770, i64 8
  store i16 %1662, ptr %1774, align 2
  %1775 = getelementptr inbounds i8, ptr %1770, i64 10
  store i16 %1671, ptr %1775, align 2
  %1776 = getelementptr inbounds i8, ptr %1770, i64 12
  store i16 %1680, ptr %1776, align 2
  %1777 = getelementptr inbounds i8, ptr %1770, i64 14
  store i16 %1689, ptr %1777, align 2
  %1778 = getelementptr ptr, ptr %1727, i64 5
  %1779 = load ptr, ptr %1778, align 8, !tbaa !47
  %1780 = getelementptr inbounds i16, ptr %1779, i64 %1729
  store i16 %1618, ptr %1780, align 2
  %1781 = getelementptr inbounds i8, ptr %1780, i64 2
  store i16 %1627, ptr %1781, align 2
  %1782 = getelementptr inbounds i8, ptr %1780, i64 4
  store i16 %1636, ptr %1782, align 2
  %1783 = getelementptr inbounds i8, ptr %1780, i64 6
  store i16 %1645, ptr %1783, align 2
  %1784 = getelementptr inbounds i8, ptr %1780, i64 8
  store i16 %1653, ptr %1784, align 2
  %1785 = getelementptr inbounds i8, ptr %1780, i64 10
  store i16 %1662, ptr %1785, align 2
  %1786 = getelementptr inbounds i8, ptr %1780, i64 12
  store i16 %1671, ptr %1786, align 2
  %1787 = getelementptr inbounds i8, ptr %1780, i64 14
  store i16 %1680, ptr %1787, align 2
  %1788 = getelementptr ptr, ptr %1727, i64 6
  %1789 = load ptr, ptr %1788, align 8, !tbaa !47
  %1790 = getelementptr inbounds i16, ptr %1789, i64 %1729
  store i16 %1609, ptr %1790, align 2
  %1791 = getelementptr inbounds i8, ptr %1790, i64 2
  store i16 %1618, ptr %1791, align 2
  %1792 = getelementptr inbounds i8, ptr %1790, i64 4
  store i16 %1627, ptr %1792, align 2
  %1793 = getelementptr inbounds i8, ptr %1790, i64 6
  store i16 %1636, ptr %1793, align 2
  %1794 = getelementptr inbounds i8, ptr %1790, i64 8
  store i16 %1645, ptr %1794, align 2
  %1795 = getelementptr inbounds i8, ptr %1790, i64 10
  store i16 %1653, ptr %1795, align 2
  %1796 = getelementptr inbounds i8, ptr %1790, i64 12
  store i16 %1662, ptr %1796, align 2
  %1797 = getelementptr inbounds i8, ptr %1790, i64 14
  store i16 %1671, ptr %1797, align 2
  %1798 = getelementptr ptr, ptr %1727, i64 7
  %1799 = load ptr, ptr %1798, align 8, !tbaa !47
  %1800 = getelementptr inbounds i16, ptr %1799, i64 %1729
  store i16 %1600, ptr %1800, align 2
  %1801 = getelementptr inbounds i8, ptr %1800, i64 2
  store i16 %1609, ptr %1801, align 2
  %1802 = getelementptr inbounds i8, ptr %1800, i64 4
  store i16 %1618, ptr %1802, align 2
  %1803 = getelementptr inbounds i8, ptr %1800, i64 6
  store i16 %1627, ptr %1803, align 2
  %1804 = getelementptr inbounds i8, ptr %1800, i64 8
  store i16 %1636, ptr %1804, align 2
  %1805 = getelementptr inbounds i8, ptr %1800, i64 10
  store i16 %1645, ptr %1805, align 2
  %1806 = getelementptr inbounds i8, ptr %1800, i64 12
  store i16 %1653, ptr %1806, align 2
  %1807 = getelementptr inbounds i8, ptr %1800, i64 14
  store i16 %1662, ptr %1807, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %34) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %32) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %31) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %30) #6
  br label %4594

1808:                                             ; preds = %4
  %1809 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %1810 = load ptr, ptr %1809, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %25) #6
  %1811 = icmp eq i32 %1, 0
  %1812 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %1813 = load ptr, ptr %1812, align 8, !tbaa !51
  br i1 %1811, label %1820, label %1814

1814:                                             ; preds = %1808
  %1815 = getelementptr inbounds %struct.storable_picture, ptr %1813, i64 0, i32 33
  %1816 = load ptr, ptr %1815, align 8, !tbaa !52
  %1817 = add i32 %1, -1
  %1818 = zext i32 %1817 to i64
  %1819 = getelementptr inbounds ptr, ptr %1816, i64 %1818
  br label %1822

1820:                                             ; preds = %1808
  %1821 = getelementptr inbounds %struct.storable_picture, ptr %1813, i64 0, i32 32
  br label %1822

1822:                                             ; preds = %1820, %1814
  %1823 = phi ptr [ %1819, %1814 ], [ %1821, %1820 ]
  %1824 = load ptr, ptr %1823, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %26) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #6
  %1825 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %1826 = load ptr, ptr %1825, align 8, !tbaa !55
  %1827 = zext i32 %1 to i64
  %1828 = getelementptr inbounds ptr, ptr %1826, i64 %1827
  %1829 = load ptr, ptr %1828, align 8, !tbaa !47
  %1830 = getelementptr inbounds %struct.video_par, ptr %1810, i64 0, i32 81
  %1831 = add nsw i32 %2, -1
  br label %1832

1832:                                             ; preds = %1822, %1832
  %1833 = phi i64 [ 0, %1822 ], [ %1837, %1832 ]
  %1834 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 %1833
  %1835 = trunc i64 %1833 to i32
  %1836 = add i32 %1835, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %1831, i32 noundef %1836, ptr noundef nonnull %1830, ptr noundef nonnull %1834) #6
  %1837 = add nuw nsw i64 %1833, 1
  %1838 = icmp eq i64 %1837, 8
  br i1 %1838, label %1839, label %1832, !llvm.loop !89

1839:                                             ; preds = %1832
  %1840 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1840, ptr noundef nonnull %1830, ptr noundef nonnull %27) #6
  %1841 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %1841, i32 noundef %1840, ptr noundef nonnull %1830, ptr noundef nonnull %28) #6
  %1842 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %1842, i32 noundef %1840, ptr noundef nonnull %1830, ptr noundef nonnull %29) #6
  %1843 = load i32, ptr %28, align 4, !tbaa !59
  %1844 = icmp ne i32 %1843, 0
  %1845 = icmp ne i32 %2, 8
  %1846 = icmp ne i32 %3, 8
  %1847 = or i1 %1845, %1846
  %1848 = and i1 %1847, %1844
  %1849 = zext i1 %1848 to i32
  store i32 %1849, ptr %28, align 4, !tbaa !59
  %1850 = getelementptr inbounds %struct.video_par, ptr %1810, i64 0, i32 1
  %1851 = load ptr, ptr %1850, align 8, !tbaa !61
  %1852 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1851, i64 0, i32 30
  %1853 = load i32, ptr %1852, align 4, !tbaa !67
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1912, label %1855

1855:                                             ; preds = %1839
  %1856 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %1857

1857:                                             ; preds = %1855, %1871
  %1858 = phi i64 [ 0, %1855 ], [ %1874, %1871 ]
  %1859 = phi i32 [ 1, %1855 ], [ %1873, %1871 ]
  %1860 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 %1858
  %1861 = load i32, ptr %1860, align 16, !tbaa !59
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %1871, label %1863

1863:                                             ; preds = %1857
  %1864 = load ptr, ptr %1856, align 8, !tbaa !69
  %1865 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 %1858, i32 1
  %1866 = load i32, ptr %1865, align 4, !tbaa !70
  %1867 = sext i32 %1866 to i64
  %1868 = getelementptr inbounds i8, ptr %1864, i64 %1867
  %1869 = load i8, ptr %1868, align 1, !tbaa !48
  %1870 = sext i8 %1869 to i32
  br label %1871

1871:                                             ; preds = %1863, %1857
  %1872 = phi i32 [ %1870, %1863 ], [ 0, %1857 ]
  %1873 = and i32 %1872, %1859
  %1874 = add nuw nsw i64 %1858, 1
  %1875 = icmp eq i64 %1874, 8
  br i1 %1875, label %1876, label %1857, !llvm.loop !90

1876:                                             ; preds = %1871
  %1877 = load i32, ptr %27, align 4, !tbaa !59
  %1878 = icmp eq i32 %1877, 0
  br i1 %1878, label %1888, label %1879

1879:                                             ; preds = %1876
  %1880 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1881 = load ptr, ptr %1880, align 8, !tbaa !69
  %1882 = getelementptr inbounds %struct.pix_pos, ptr %27, i64 0, i32 1
  %1883 = load i32, ptr %1882, align 4, !tbaa !70
  %1884 = sext i32 %1883 to i64
  %1885 = getelementptr inbounds i8, ptr %1881, i64 %1884
  %1886 = load i8, ptr %1885, align 1, !tbaa !48
  %1887 = sext i8 %1886 to i32
  br label %1888

1888:                                             ; preds = %1879, %1876
  %1889 = phi i32 [ %1887, %1879 ], [ 0, %1876 ]
  br i1 %1848, label %1890, label %1899

1890:                                             ; preds = %1888
  %1891 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1892 = load ptr, ptr %1891, align 8, !tbaa !69
  %1893 = getelementptr inbounds %struct.pix_pos, ptr %28, i64 0, i32 1
  %1894 = load i32, ptr %1893, align 4, !tbaa !70
  %1895 = sext i32 %1894 to i64
  %1896 = getelementptr inbounds i8, ptr %1892, i64 %1895
  %1897 = load i8, ptr %1896, align 1, !tbaa !48
  %1898 = sext i8 %1897 to i32
  br label %1899

1899:                                             ; preds = %1890, %1888
  %1900 = phi i32 [ %1898, %1890 ], [ 0, %1888 ]
  %1901 = load i32, ptr %29, align 4, !tbaa !59
  %1902 = icmp eq i32 %1901, 0
  br i1 %1902, label %1916, label %1903

1903:                                             ; preds = %1899
  %1904 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1905 = load ptr, ptr %1904, align 8, !tbaa !69
  %1906 = getelementptr inbounds %struct.pix_pos, ptr %29, i64 0, i32 1
  %1907 = load i32, ptr %1906, align 4, !tbaa !70
  %1908 = sext i32 %1907 to i64
  %1909 = getelementptr inbounds i8, ptr %1905, i64 %1908
  %1910 = load i8, ptr %1909, align 1, !tbaa !48
  %1911 = sext i8 %1910 to i32
  br label %1916

1912:                                             ; preds = %1839
  %1913 = load i32, ptr %26, align 16, !tbaa !59
  %1914 = load i32, ptr %27, align 4, !tbaa !59
  %1915 = load i32, ptr %29, align 4, !tbaa !59
  br label %1916

1916:                                             ; preds = %1912, %1903, %1899
  %1917 = phi i32 [ %1914, %1912 ], [ %1889, %1899 ], [ %1889, %1903 ]
  %1918 = phi i32 [ %1913, %1912 ], [ %1873, %1899 ], [ %1873, %1903 ]
  %1919 = phi i32 [ %1915, %1912 ], [ 0, %1899 ], [ %1911, %1903 ]
  %1920 = phi i32 [ %1849, %1912 ], [ %1900, %1899 ], [ %1900, %1903 ]
  %1921 = icmp eq i32 %1917, 0
  br i1 %1921, label %1922, label %1937

1922:                                             ; preds = %1916
  %1923 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %1924 = load i32, ptr %1923, align 4, !tbaa !80
  %1925 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1924)
  %1926 = getelementptr inbounds %struct.video_par, ptr %1810, i64 0, i32 69, i64 %1827
  %1927 = load i32, ptr %1926, align 4, !tbaa !75
  %1928 = trunc i32 %1927 to i16
  %1929 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  store i16 %1928, ptr %1929, align 16, !tbaa !74
  %1930 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 7
  store i16 %1928, ptr %1930, align 2, !tbaa !74
  %1931 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 6
  store i16 %1928, ptr %1931, align 4, !tbaa !74
  %1932 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 5
  store i16 %1928, ptr %1932, align 2, !tbaa !74
  %1933 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 4
  store i16 %1928, ptr %1933, align 8, !tbaa !74
  %1934 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 3
  store i16 %1928, ptr %1934, align 2, !tbaa !74
  %1935 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 2
  store i16 %1928, ptr %1935, align 4, !tbaa !74
  %1936 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 1
  store i16 %1928, ptr %1936, align 2, !tbaa !74
  br label %1970

1937:                                             ; preds = %1916
  %1938 = getelementptr inbounds %struct.pix_pos, ptr %27, i64 0, i32 5
  %1939 = load i16, ptr %1938, align 2, !tbaa !72
  %1940 = sext i16 %1939 to i64
  %1941 = getelementptr inbounds ptr, ptr %1824, i64 %1940
  %1942 = load ptr, ptr %1941, align 8, !tbaa !47
  %1943 = getelementptr inbounds %struct.pix_pos, ptr %27, i64 0, i32 4
  %1944 = load i16, ptr %1943, align 4, !tbaa !73
  %1945 = sext i16 %1944 to i64
  %1946 = getelementptr inbounds i16, ptr %1942, i64 %1945
  %1947 = load i16, ptr %1946, align 2, !tbaa !74
  %1948 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 1
  store i16 %1947, ptr %1948, align 2, !tbaa !74
  %1949 = getelementptr inbounds i16, ptr %1946, i64 1
  %1950 = load i16, ptr %1949, align 2, !tbaa !74
  %1951 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 2
  store i16 %1950, ptr %1951, align 4, !tbaa !74
  %1952 = getelementptr inbounds i16, ptr %1946, i64 2
  %1953 = load i16, ptr %1952, align 2, !tbaa !74
  %1954 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 3
  store i16 %1953, ptr %1954, align 2, !tbaa !74
  %1955 = getelementptr inbounds i16, ptr %1946, i64 3
  %1956 = load i16, ptr %1955, align 2, !tbaa !74
  %1957 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 4
  store i16 %1956, ptr %1957, align 8, !tbaa !74
  %1958 = getelementptr inbounds i16, ptr %1946, i64 4
  %1959 = load i16, ptr %1958, align 2, !tbaa !74
  %1960 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 5
  store i16 %1959, ptr %1960, align 2, !tbaa !74
  %1961 = getelementptr inbounds i16, ptr %1946, i64 5
  %1962 = load i16, ptr %1961, align 2, !tbaa !74
  %1963 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 6
  store i16 %1962, ptr %1963, align 4, !tbaa !74
  %1964 = getelementptr inbounds i16, ptr %1946, i64 6
  %1965 = load i16, ptr %1964, align 2, !tbaa !74
  %1966 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 7
  store i16 %1965, ptr %1966, align 2, !tbaa !74
  %1967 = getelementptr inbounds i16, ptr %1946, i64 7
  %1968 = load i16, ptr %1967, align 2, !tbaa !74
  %1969 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  store i16 %1968, ptr %1969, align 16, !tbaa !74
  br label %1970

1970:                                             ; preds = %1937, %1922
  %1971 = icmp eq i32 %1920, 0
  %1972 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 10
  br i1 %1971, label %2005, label %1973

1973:                                             ; preds = %1970
  %1974 = getelementptr inbounds %struct.pix_pos, ptr %28, i64 0, i32 5
  %1975 = load i16, ptr %1974, align 2, !tbaa !72
  %1976 = sext i16 %1975 to i64
  %1977 = getelementptr inbounds ptr, ptr %1824, i64 %1976
  %1978 = load ptr, ptr %1977, align 8, !tbaa !47
  %1979 = getelementptr inbounds %struct.pix_pos, ptr %28, i64 0, i32 4
  %1980 = load i16, ptr %1979, align 4, !tbaa !73
  %1981 = sext i16 %1980 to i64
  %1982 = getelementptr inbounds i16, ptr %1978, i64 %1981
  %1983 = load i16, ptr %1982, align 2, !tbaa !74
  %1984 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 9
  store i16 %1983, ptr %1984, align 2, !tbaa !74
  %1985 = getelementptr inbounds i16, ptr %1982, i64 1
  %1986 = load i16, ptr %1985, align 2, !tbaa !74
  store i16 %1986, ptr %1972, align 4, !tbaa !74
  %1987 = getelementptr inbounds i16, ptr %1982, i64 2
  %1988 = load i16, ptr %1987, align 2, !tbaa !74
  %1989 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 11
  store i16 %1988, ptr %1989, align 2, !tbaa !74
  %1990 = getelementptr inbounds i16, ptr %1982, i64 3
  %1991 = load i16, ptr %1990, align 2, !tbaa !74
  %1992 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 12
  store i16 %1991, ptr %1992, align 8, !tbaa !74
  %1993 = getelementptr inbounds i16, ptr %1982, i64 4
  %1994 = load i16, ptr %1993, align 2, !tbaa !74
  %1995 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 13
  store i16 %1994, ptr %1995, align 2, !tbaa !74
  %1996 = getelementptr inbounds i16, ptr %1982, i64 5
  %1997 = load i16, ptr %1996, align 2, !tbaa !74
  %1998 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 14
  store i16 %1997, ptr %1998, align 4, !tbaa !74
  %1999 = getelementptr inbounds i16, ptr %1982, i64 6
  %2000 = load i16, ptr %1999, align 2, !tbaa !74
  %2001 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 15
  store i16 %2000, ptr %2001, align 2, !tbaa !74
  %2002 = getelementptr inbounds i16, ptr %1982, i64 7
  %2003 = load i16, ptr %2002, align 2, !tbaa !74
  %2004 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 16
  store i16 %2003, ptr %2004, align 16, !tbaa !74
  br label %2015

2005:                                             ; preds = %1970
  %2006 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  %2007 = load i16, ptr %2006, align 16, !tbaa !74
  %2008 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 16
  store i16 %2007, ptr %2008, align 16, !tbaa !74
  %2009 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 15
  store i16 %2007, ptr %2009, align 2, !tbaa !74
  %2010 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 14
  store i16 %2007, ptr %2010, align 4, !tbaa !74
  %2011 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 13
  store i16 %2007, ptr %2011, align 2, !tbaa !74
  %2012 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 12
  store i16 %2007, ptr %2012, align 8, !tbaa !74
  %2013 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 11
  store i16 %2007, ptr %2013, align 2, !tbaa !74
  store i16 %2007, ptr %1972, align 4, !tbaa !74
  %2014 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 9
  store i16 %2007, ptr %2014, align 2, !tbaa !74
  br label %2015

2015:                                             ; preds = %2005, %1973
  %2016 = icmp eq i32 %1918, 0
  br i1 %2016, label %2106, label %2017

2017:                                             ; preds = %2015
  %2018 = getelementptr inbounds %struct.pix_pos, ptr %26, i64 0, i32 5
  %2019 = load i16, ptr %2018, align 2, !tbaa !72
  %2020 = sext i16 %2019 to i64
  %2021 = getelementptr inbounds ptr, ptr %1824, i64 %2020
  %2022 = load ptr, ptr %2021, align 8, !tbaa !47
  %2023 = getelementptr inbounds %struct.pix_pos, ptr %26, i64 0, i32 4
  %2024 = load i16, ptr %2023, align 4, !tbaa !73
  %2025 = sext i16 %2024 to i64
  %2026 = getelementptr inbounds i16, ptr %2022, i64 %2025
  %2027 = load i16, ptr %2026, align 2, !tbaa !74
  %2028 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 17
  store i16 %2027, ptr %2028, align 2, !tbaa !74
  %2029 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 1, i32 5
  %2030 = load i16, ptr %2029, align 2, !tbaa !72
  %2031 = sext i16 %2030 to i64
  %2032 = getelementptr inbounds ptr, ptr %1824, i64 %2031
  %2033 = load ptr, ptr %2032, align 8, !tbaa !47
  %2034 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 1, i32 4
  %2035 = load i16, ptr %2034, align 4, !tbaa !73
  %2036 = sext i16 %2035 to i64
  %2037 = getelementptr inbounds i16, ptr %2033, i64 %2036
  %2038 = load i16, ptr %2037, align 2, !tbaa !74
  %2039 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 18
  store i16 %2038, ptr %2039, align 4, !tbaa !74
  %2040 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 2, i32 5
  %2041 = load i16, ptr %2040, align 2, !tbaa !72
  %2042 = sext i16 %2041 to i64
  %2043 = getelementptr inbounds ptr, ptr %1824, i64 %2042
  %2044 = load ptr, ptr %2043, align 8, !tbaa !47
  %2045 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 2, i32 4
  %2046 = load i16, ptr %2045, align 4, !tbaa !73
  %2047 = sext i16 %2046 to i64
  %2048 = getelementptr inbounds i16, ptr %2044, i64 %2047
  %2049 = load i16, ptr %2048, align 2, !tbaa !74
  %2050 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 19
  store i16 %2049, ptr %2050, align 2, !tbaa !74
  %2051 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 3, i32 5
  %2052 = load i16, ptr %2051, align 2, !tbaa !72
  %2053 = sext i16 %2052 to i64
  %2054 = getelementptr inbounds ptr, ptr %1824, i64 %2053
  %2055 = load ptr, ptr %2054, align 8, !tbaa !47
  %2056 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 3, i32 4
  %2057 = load i16, ptr %2056, align 4, !tbaa !73
  %2058 = sext i16 %2057 to i64
  %2059 = getelementptr inbounds i16, ptr %2055, i64 %2058
  %2060 = load i16, ptr %2059, align 2, !tbaa !74
  %2061 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 20
  store i16 %2060, ptr %2061, align 8, !tbaa !74
  %2062 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 4, i32 5
  %2063 = load i16, ptr %2062, align 2, !tbaa !72
  %2064 = sext i16 %2063 to i64
  %2065 = getelementptr inbounds ptr, ptr %1824, i64 %2064
  %2066 = load ptr, ptr %2065, align 8, !tbaa !47
  %2067 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 4, i32 4
  %2068 = load i16, ptr %2067, align 4, !tbaa !73
  %2069 = sext i16 %2068 to i64
  %2070 = getelementptr inbounds i16, ptr %2066, i64 %2069
  %2071 = load i16, ptr %2070, align 2, !tbaa !74
  %2072 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 21
  store i16 %2071, ptr %2072, align 2, !tbaa !74
  %2073 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 5, i32 5
  %2074 = load i16, ptr %2073, align 2, !tbaa !72
  %2075 = sext i16 %2074 to i64
  %2076 = getelementptr inbounds ptr, ptr %1824, i64 %2075
  %2077 = load ptr, ptr %2076, align 8, !tbaa !47
  %2078 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 5, i32 4
  %2079 = load i16, ptr %2078, align 4, !tbaa !73
  %2080 = sext i16 %2079 to i64
  %2081 = getelementptr inbounds i16, ptr %2077, i64 %2080
  %2082 = load i16, ptr %2081, align 2, !tbaa !74
  %2083 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 22
  store i16 %2082, ptr %2083, align 4, !tbaa !74
  %2084 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 6, i32 5
  %2085 = load i16, ptr %2084, align 2, !tbaa !72
  %2086 = sext i16 %2085 to i64
  %2087 = getelementptr inbounds ptr, ptr %1824, i64 %2086
  %2088 = load ptr, ptr %2087, align 8, !tbaa !47
  %2089 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 6, i32 4
  %2090 = load i16, ptr %2089, align 4, !tbaa !73
  %2091 = sext i16 %2090 to i64
  %2092 = getelementptr inbounds i16, ptr %2088, i64 %2091
  %2093 = load i16, ptr %2092, align 2, !tbaa !74
  %2094 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 23
  store i16 %2093, ptr %2094, align 2, !tbaa !74
  %2095 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 7, i32 5
  %2096 = load i16, ptr %2095, align 2, !tbaa !72
  %2097 = sext i16 %2096 to i64
  %2098 = getelementptr inbounds ptr, ptr %1824, i64 %2097
  %2099 = load ptr, ptr %2098, align 8, !tbaa !47
  %2100 = getelementptr inbounds [8 x %struct.pix_pos], ptr %26, i64 0, i64 7, i32 4
  %2101 = load i16, ptr %2100, align 4, !tbaa !73
  %2102 = sext i16 %2101 to i64
  %2103 = getelementptr inbounds i16, ptr %2099, i64 %2102
  %2104 = load i16, ptr %2103, align 2, !tbaa !74
  %2105 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 24
  store i16 %2104, ptr %2105, align 16, !tbaa !74
  br label %2118

2106:                                             ; preds = %2015
  %2107 = getelementptr inbounds %struct.video_par, ptr %1810, i64 0, i32 69, i64 %1827
  %2108 = load i32, ptr %2107, align 4, !tbaa !75
  %2109 = trunc i32 %2108 to i16
  %2110 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 24
  store i16 %2109, ptr %2110, align 16, !tbaa !74
  %2111 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 23
  store i16 %2109, ptr %2111, align 2, !tbaa !74
  %2112 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 22
  store i16 %2109, ptr %2112, align 4, !tbaa !74
  %2113 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 21
  store i16 %2109, ptr %2113, align 2, !tbaa !74
  %2114 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 20
  store i16 %2109, ptr %2114, align 8, !tbaa !74
  %2115 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 19
  store i16 %2109, ptr %2115, align 2, !tbaa !74
  %2116 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 18
  store i16 %2109, ptr %2116, align 4, !tbaa !74
  %2117 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 17
  store i16 %2109, ptr %2117, align 2, !tbaa !74
  br label %2118

2118:                                             ; preds = %2106, %2017
  %2119 = icmp eq i32 %1919, 0
  br i1 %2119, label %2131, label %2120

2120:                                             ; preds = %2118
  %2121 = getelementptr inbounds %struct.pix_pos, ptr %29, i64 0, i32 5
  %2122 = load i16, ptr %2121, align 2, !tbaa !72
  %2123 = sext i16 %2122 to i64
  %2124 = getelementptr inbounds ptr, ptr %1824, i64 %2123
  %2125 = load ptr, ptr %2124, align 8, !tbaa !47
  %2126 = getelementptr inbounds %struct.pix_pos, ptr %29, i64 0, i32 4
  %2127 = load i16, ptr %2126, align 4, !tbaa !73
  %2128 = sext i16 %2127 to i64
  %2129 = getelementptr inbounds i16, ptr %2125, i64 %2128
  %2130 = load i16, ptr %2129, align 2, !tbaa !74
  br label %2135

2131:                                             ; preds = %2118
  %2132 = getelementptr inbounds %struct.video_par, ptr %1810, i64 0, i32 69, i64 %1827
  %2133 = load i32, ptr %2132, align 4, !tbaa !75
  %2134 = trunc i32 %2133 to i16
  br label %2135

2135:                                             ; preds = %2120, %2131
  %2136 = phi i16 [ %2134, %2131 ], [ %2130, %2120 ]
  store i16 %2136, ptr %25, align 16, !tbaa !74
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %25, i32 noundef %1919, i32 noundef %1917, i32 noundef %1918)
  %2137 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 1
  %2138 = load i16, ptr %2137, align 2, !tbaa !74
  %2139 = zext i16 %2138 to i32
  %2140 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 3
  %2141 = load i16, ptr %2140, align 2, !tbaa !74
  %2142 = zext i16 %2141 to i32
  %2143 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 2
  %2144 = load i16, ptr %2143, align 4, !tbaa !74
  %2145 = zext i16 %2144 to i32
  %2146 = shl nuw nsw i32 %2145, 1
  %2147 = add nuw nsw i32 %2142, 2
  %2148 = add nuw nsw i32 %2147, %2139
  %2149 = add nuw nsw i32 %2148, %2146
  %2150 = lshr i32 %2149, 2
  %2151 = trunc i32 %2150 to i16
  %2152 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 4
  %2153 = load i16, ptr %2152, align 8, !tbaa !74
  %2154 = zext i16 %2153 to i32
  %2155 = shl nuw nsw i32 %2142, 1
  %2156 = add nuw nsw i32 %2154, 2
  %2157 = add nuw nsw i32 %2156, %2145
  %2158 = add nuw nsw i32 %2157, %2155
  %2159 = lshr i32 %2158, 2
  %2160 = trunc i32 %2159 to i16
  %2161 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 5
  %2162 = load i16, ptr %2161, align 2, !tbaa !74
  %2163 = zext i16 %2162 to i32
  %2164 = shl nuw nsw i32 %2154, 1
  %2165 = add nuw nsw i32 %2142, 2
  %2166 = add nuw nsw i32 %2165, %2163
  %2167 = add nuw nsw i32 %2166, %2164
  %2168 = lshr i32 %2167, 2
  %2169 = trunc i32 %2168 to i16
  %2170 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 6
  %2171 = load i16, ptr %2170, align 4, !tbaa !74
  %2172 = zext i16 %2171 to i32
  %2173 = shl nuw nsw i32 %2163, 1
  %2174 = add nuw nsw i32 %2154, 2
  %2175 = add nuw nsw i32 %2174, %2172
  %2176 = add nuw nsw i32 %2175, %2173
  %2177 = lshr i32 %2176, 2
  %2178 = trunc i32 %2177 to i16
  %2179 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 7
  %2180 = load i16, ptr %2179, align 2, !tbaa !74
  %2181 = zext i16 %2180 to i32
  %2182 = shl nuw nsw i32 %2172, 1
  %2183 = add nuw nsw i32 %2163, 2
  %2184 = add nuw nsw i32 %2183, %2181
  %2185 = add nuw nsw i32 %2184, %2182
  %2186 = lshr i32 %2185, 2
  %2187 = trunc i32 %2186 to i16
  %2188 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  %2189 = load i16, ptr %2188, align 16, !tbaa !74
  %2190 = zext i16 %2189 to i32
  %2191 = shl nuw nsw i32 %2181, 1
  %2192 = add nuw nsw i32 %2172, 2
  %2193 = add nuw nsw i32 %2192, %2190
  %2194 = add nuw nsw i32 %2193, %2191
  %2195 = lshr i32 %2194, 2
  %2196 = trunc i32 %2195 to i16
  %2197 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 9
  %2198 = load i16, ptr %2197, align 2, !tbaa !74
  %2199 = zext i16 %2198 to i32
  %2200 = shl nuw nsw i32 %2190, 1
  %2201 = add nuw nsw i32 %2181, 2
  %2202 = add nuw nsw i32 %2201, %2199
  %2203 = add nuw nsw i32 %2202, %2200
  %2204 = lshr i32 %2203, 2
  %2205 = trunc i32 %2204 to i16
  %2206 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 10
  %2207 = load i16, ptr %2206, align 4, !tbaa !74
  %2208 = zext i16 %2207 to i32
  %2209 = shl nuw nsw i32 %2199, 1
  %2210 = add nuw nsw i32 %2190, 2
  %2211 = add nuw nsw i32 %2210, %2208
  %2212 = add nuw nsw i32 %2211, %2209
  %2213 = lshr i32 %2212, 2
  %2214 = trunc i32 %2213 to i16
  %2215 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 11
  %2216 = load i16, ptr %2215, align 2, !tbaa !74
  %2217 = zext i16 %2216 to i32
  %2218 = shl nuw nsw i32 %2208, 1
  %2219 = add nuw nsw i32 %2199, 2
  %2220 = add nuw nsw i32 %2219, %2217
  %2221 = add nuw nsw i32 %2220, %2218
  %2222 = lshr i32 %2221, 2
  %2223 = trunc i32 %2222 to i16
  %2224 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 12
  %2225 = load i16, ptr %2224, align 8, !tbaa !74
  %2226 = zext i16 %2225 to i32
  %2227 = shl nuw nsw i32 %2217, 1
  %2228 = add nuw nsw i32 %2208, 2
  %2229 = add nuw nsw i32 %2228, %2226
  %2230 = add nuw nsw i32 %2229, %2227
  %2231 = lshr i32 %2230, 2
  %2232 = trunc i32 %2231 to i16
  %2233 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 13
  %2234 = load i16, ptr %2233, align 2, !tbaa !74
  %2235 = zext i16 %2234 to i32
  %2236 = shl nuw nsw i32 %2226, 1
  %2237 = add nuw nsw i32 %2217, 2
  %2238 = add nuw nsw i32 %2237, %2235
  %2239 = add nuw nsw i32 %2238, %2236
  %2240 = lshr i32 %2239, 2
  %2241 = trunc i32 %2240 to i16
  %2242 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 14
  %2243 = load i16, ptr %2242, align 4, !tbaa !74
  %2244 = zext i16 %2243 to i32
  %2245 = shl nuw nsw i32 %2235, 1
  %2246 = add nuw nsw i32 %2226, 2
  %2247 = add nuw nsw i32 %2246, %2244
  %2248 = add nuw nsw i32 %2247, %2245
  %2249 = lshr i32 %2248, 2
  %2250 = trunc i32 %2249 to i16
  %2251 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 15
  %2252 = load i16, ptr %2251, align 2, !tbaa !74
  %2253 = zext i16 %2252 to i32
  %2254 = shl nuw nsw i32 %2244, 1
  %2255 = add nuw nsw i32 %2235, 2
  %2256 = add nuw nsw i32 %2255, %2253
  %2257 = add nuw nsw i32 %2256, %2254
  %2258 = lshr i32 %2257, 2
  %2259 = trunc i32 %2258 to i16
  %2260 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 16
  %2261 = load i16, ptr %2260, align 16, !tbaa !74
  %2262 = zext i16 %2261 to i32
  %2263 = shl nuw nsw i32 %2253, 1
  %2264 = add nuw nsw i32 %2244, 2
  %2265 = add nuw nsw i32 %2264, %2262
  %2266 = add nuw nsw i32 %2265, %2263
  %2267 = lshr i32 %2266, 2
  %2268 = trunc i32 %2267 to i16
  %2269 = mul nuw nsw i32 %2262, 3
  %2270 = add nuw nsw i32 %2253, 2
  %2271 = add nuw nsw i32 %2270, %2269
  %2272 = lshr i32 %2271, 2
  %2273 = trunc i32 %2272 to i16
  %2274 = sext i32 %3 to i64
  %2275 = getelementptr inbounds ptr, ptr %1829, i64 %2274
  %2276 = load ptr, ptr %2275, align 8, !tbaa !47
  %2277 = sext i32 %2 to i64
  %2278 = getelementptr inbounds i16, ptr %2276, i64 %2277
  store i16 %2151, ptr %2278, align 2
  %2279 = getelementptr inbounds i8, ptr %2278, i64 2
  store i16 %2160, ptr %2279, align 2
  %2280 = getelementptr inbounds i8, ptr %2278, i64 4
  store i16 %2169, ptr %2280, align 2
  %2281 = getelementptr inbounds i8, ptr %2278, i64 6
  store i16 %2178, ptr %2281, align 2
  %2282 = getelementptr inbounds i8, ptr %2278, i64 8
  store i16 %2187, ptr %2282, align 2
  %2283 = getelementptr inbounds i8, ptr %2278, i64 10
  store i16 %2196, ptr %2283, align 2
  %2284 = getelementptr inbounds i8, ptr %2278, i64 12
  store i16 %2205, ptr %2284, align 2
  %2285 = getelementptr inbounds i8, ptr %2278, i64 14
  store i16 %2214, ptr %2285, align 2
  %2286 = getelementptr ptr, ptr %2275, i64 1
  %2287 = load ptr, ptr %2286, align 8, !tbaa !47
  %2288 = getelementptr inbounds i16, ptr %2287, i64 %2277
  store i16 %2160, ptr %2288, align 2
  %2289 = getelementptr inbounds i8, ptr %2288, i64 2
  store i16 %2169, ptr %2289, align 2
  %2290 = getelementptr inbounds i8, ptr %2288, i64 4
  store i16 %2178, ptr %2290, align 2
  %2291 = getelementptr inbounds i8, ptr %2288, i64 6
  store i16 %2187, ptr %2291, align 2
  %2292 = getelementptr inbounds i8, ptr %2288, i64 8
  store i16 %2196, ptr %2292, align 2
  %2293 = getelementptr inbounds i8, ptr %2288, i64 10
  store i16 %2205, ptr %2293, align 2
  %2294 = getelementptr inbounds i8, ptr %2288, i64 12
  store i16 %2214, ptr %2294, align 2
  %2295 = getelementptr inbounds i8, ptr %2288, i64 14
  store i16 %2223, ptr %2295, align 2
  %2296 = getelementptr ptr, ptr %2275, i64 2
  %2297 = load ptr, ptr %2296, align 8, !tbaa !47
  %2298 = getelementptr inbounds i16, ptr %2297, i64 %2277
  store i16 %2169, ptr %2298, align 2
  %2299 = getelementptr inbounds i8, ptr %2298, i64 2
  store i16 %2178, ptr %2299, align 2
  %2300 = getelementptr inbounds i8, ptr %2298, i64 4
  store i16 %2187, ptr %2300, align 2
  %2301 = getelementptr inbounds i8, ptr %2298, i64 6
  store i16 %2196, ptr %2301, align 2
  %2302 = getelementptr inbounds i8, ptr %2298, i64 8
  store i16 %2205, ptr %2302, align 2
  %2303 = getelementptr inbounds i8, ptr %2298, i64 10
  store i16 %2214, ptr %2303, align 2
  %2304 = getelementptr inbounds i8, ptr %2298, i64 12
  store i16 %2223, ptr %2304, align 2
  %2305 = getelementptr inbounds i8, ptr %2298, i64 14
  store i16 %2232, ptr %2305, align 2
  %2306 = getelementptr ptr, ptr %2275, i64 3
  %2307 = load ptr, ptr %2306, align 8, !tbaa !47
  %2308 = getelementptr inbounds i16, ptr %2307, i64 %2277
  store i16 %2178, ptr %2308, align 2
  %2309 = getelementptr inbounds i8, ptr %2308, i64 2
  store i16 %2187, ptr %2309, align 2
  %2310 = getelementptr inbounds i8, ptr %2308, i64 4
  store i16 %2196, ptr %2310, align 2
  %2311 = getelementptr inbounds i8, ptr %2308, i64 6
  store i16 %2205, ptr %2311, align 2
  %2312 = getelementptr inbounds i8, ptr %2308, i64 8
  store i16 %2214, ptr %2312, align 2
  %2313 = getelementptr inbounds i8, ptr %2308, i64 10
  store i16 %2223, ptr %2313, align 2
  %2314 = getelementptr inbounds i8, ptr %2308, i64 12
  store i16 %2232, ptr %2314, align 2
  %2315 = getelementptr inbounds i8, ptr %2308, i64 14
  store i16 %2241, ptr %2315, align 2
  %2316 = getelementptr ptr, ptr %2275, i64 4
  %2317 = load ptr, ptr %2316, align 8, !tbaa !47
  %2318 = getelementptr inbounds i16, ptr %2317, i64 %2277
  store i16 %2187, ptr %2318, align 2
  %2319 = getelementptr inbounds i8, ptr %2318, i64 2
  store i16 %2196, ptr %2319, align 2
  %2320 = getelementptr inbounds i8, ptr %2318, i64 4
  store i16 %2205, ptr %2320, align 2
  %2321 = getelementptr inbounds i8, ptr %2318, i64 6
  store i16 %2214, ptr %2321, align 2
  %2322 = getelementptr inbounds i8, ptr %2318, i64 8
  store i16 %2223, ptr %2322, align 2
  %2323 = getelementptr inbounds i8, ptr %2318, i64 10
  store i16 %2232, ptr %2323, align 2
  %2324 = getelementptr inbounds i8, ptr %2318, i64 12
  store i16 %2241, ptr %2324, align 2
  %2325 = getelementptr inbounds i8, ptr %2318, i64 14
  store i16 %2250, ptr %2325, align 2
  %2326 = getelementptr ptr, ptr %2275, i64 5
  %2327 = load ptr, ptr %2326, align 8, !tbaa !47
  %2328 = getelementptr inbounds i16, ptr %2327, i64 %2277
  store i16 %2196, ptr %2328, align 2
  %2329 = getelementptr inbounds i8, ptr %2328, i64 2
  store i16 %2205, ptr %2329, align 2
  %2330 = getelementptr inbounds i8, ptr %2328, i64 4
  store i16 %2214, ptr %2330, align 2
  %2331 = getelementptr inbounds i8, ptr %2328, i64 6
  store i16 %2223, ptr %2331, align 2
  %2332 = getelementptr inbounds i8, ptr %2328, i64 8
  store i16 %2232, ptr %2332, align 2
  %2333 = getelementptr inbounds i8, ptr %2328, i64 10
  store i16 %2241, ptr %2333, align 2
  %2334 = getelementptr inbounds i8, ptr %2328, i64 12
  store i16 %2250, ptr %2334, align 2
  %2335 = getelementptr inbounds i8, ptr %2328, i64 14
  store i16 %2259, ptr %2335, align 2
  %2336 = getelementptr ptr, ptr %2275, i64 6
  %2337 = load ptr, ptr %2336, align 8, !tbaa !47
  %2338 = getelementptr inbounds i16, ptr %2337, i64 %2277
  store i16 %2205, ptr %2338, align 2
  %2339 = getelementptr inbounds i8, ptr %2338, i64 2
  store i16 %2214, ptr %2339, align 2
  %2340 = getelementptr inbounds i8, ptr %2338, i64 4
  store i16 %2223, ptr %2340, align 2
  %2341 = getelementptr inbounds i8, ptr %2338, i64 6
  store i16 %2232, ptr %2341, align 2
  %2342 = getelementptr inbounds i8, ptr %2338, i64 8
  store i16 %2241, ptr %2342, align 2
  %2343 = getelementptr inbounds i8, ptr %2338, i64 10
  store i16 %2250, ptr %2343, align 2
  %2344 = getelementptr inbounds i8, ptr %2338, i64 12
  store i16 %2259, ptr %2344, align 2
  %2345 = getelementptr inbounds i8, ptr %2338, i64 14
  store i16 %2268, ptr %2345, align 2
  %2346 = getelementptr ptr, ptr %2275, i64 7
  %2347 = load ptr, ptr %2346, align 8, !tbaa !47
  %2348 = getelementptr inbounds i16, ptr %2347, i64 %2277
  store i16 %2214, ptr %2348, align 2
  %2349 = getelementptr inbounds i8, ptr %2348, i64 2
  store i16 %2223, ptr %2349, align 2
  %2350 = getelementptr inbounds i8, ptr %2348, i64 4
  store i16 %2232, ptr %2350, align 2
  %2351 = getelementptr inbounds i8, ptr %2348, i64 6
  store i16 %2241, ptr %2351, align 2
  %2352 = getelementptr inbounds i8, ptr %2348, i64 8
  store i16 %2250, ptr %2352, align 2
  %2353 = getelementptr inbounds i8, ptr %2348, i64 10
  store i16 %2259, ptr %2353, align 2
  %2354 = getelementptr inbounds i8, ptr %2348, i64 12
  store i16 %2268, ptr %2354, align 2
  %2355 = getelementptr inbounds i8, ptr %2348, i64 14
  store i16 %2273, ptr %2355, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %26) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %25) #6
  br label %4594

2356:                                             ; preds = %4
  %2357 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %2358 = load ptr, ptr %2357, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %20) #6
  %2359 = icmp eq i32 %1, 0
  %2360 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %2361 = load ptr, ptr %2360, align 8, !tbaa !51
  br i1 %2359, label %2368, label %2362

2362:                                             ; preds = %2356
  %2363 = getelementptr inbounds %struct.storable_picture, ptr %2361, i64 0, i32 33
  %2364 = load ptr, ptr %2363, align 8, !tbaa !52
  %2365 = add i32 %1, -1
  %2366 = zext i32 %2365 to i64
  %2367 = getelementptr inbounds ptr, ptr %2364, i64 %2366
  br label %2370

2368:                                             ; preds = %2356
  %2369 = getelementptr inbounds %struct.storable_picture, ptr %2361, i64 0, i32 32
  br label %2370

2370:                                             ; preds = %2368, %2362
  %2371 = phi ptr [ %2367, %2362 ], [ %2369, %2368 ]
  %2372 = load ptr, ptr %2371, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %21) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #6
  %2373 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %2374 = load ptr, ptr %2373, align 8, !tbaa !55
  %2375 = zext i32 %1 to i64
  %2376 = getelementptr inbounds ptr, ptr %2374, i64 %2375
  %2377 = load ptr, ptr %2376, align 8, !tbaa !47
  %2378 = getelementptr inbounds %struct.video_par, ptr %2358, i64 0, i32 81
  %2379 = add nsw i32 %2, -1
  br label %2380

2380:                                             ; preds = %2370, %2380
  %2381 = phi i64 [ 0, %2370 ], [ %2385, %2380 ]
  %2382 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 %2381
  %2383 = trunc i64 %2381 to i32
  %2384 = add i32 %2383, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2379, i32 noundef %2384, ptr noundef nonnull %2378, ptr noundef nonnull %2382) #6
  %2385 = add nuw nsw i64 %2381, 1
  %2386 = icmp eq i64 %2385, 8
  br i1 %2386, label %2387, label %2380, !llvm.loop !91

2387:                                             ; preds = %2380
  %2388 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %2388, ptr noundef nonnull %2378, ptr noundef nonnull %22) #6
  %2389 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2389, i32 noundef %2388, ptr noundef nonnull %2378, ptr noundef nonnull %23) #6
  %2390 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2390, i32 noundef %2388, ptr noundef nonnull %2378, ptr noundef nonnull %24) #6
  %2391 = load i32, ptr %23, align 4, !tbaa !59
  %2392 = icmp ne i32 %2391, 0
  %2393 = icmp ne i32 %2, 8
  %2394 = icmp ne i32 %3, 8
  %2395 = or i1 %2393, %2394
  %2396 = and i1 %2395, %2392
  %2397 = zext i1 %2396 to i32
  store i32 %2397, ptr %23, align 4, !tbaa !59
  %2398 = getelementptr inbounds %struct.video_par, ptr %2358, i64 0, i32 1
  %2399 = load ptr, ptr %2398, align 8, !tbaa !61
  %2400 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2399, i64 0, i32 30
  %2401 = load i32, ptr %2400, align 4, !tbaa !67
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2460, label %2403

2403:                                             ; preds = %2387
  %2404 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %2405

2405:                                             ; preds = %2403, %2419
  %2406 = phi i64 [ 0, %2403 ], [ %2422, %2419 ]
  %2407 = phi i32 [ 1, %2403 ], [ %2421, %2419 ]
  %2408 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 %2406
  %2409 = load i32, ptr %2408, align 16, !tbaa !59
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2419, label %2411

2411:                                             ; preds = %2405
  %2412 = load ptr, ptr %2404, align 8, !tbaa !69
  %2413 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 %2406, i32 1
  %2414 = load i32, ptr %2413, align 4, !tbaa !70
  %2415 = sext i32 %2414 to i64
  %2416 = getelementptr inbounds i8, ptr %2412, i64 %2415
  %2417 = load i8, ptr %2416, align 1, !tbaa !48
  %2418 = sext i8 %2417 to i32
  br label %2419

2419:                                             ; preds = %2411, %2405
  %2420 = phi i32 [ %2418, %2411 ], [ 0, %2405 ]
  %2421 = and i32 %2420, %2407
  %2422 = add nuw nsw i64 %2406, 1
  %2423 = icmp eq i64 %2422, 8
  br i1 %2423, label %2424, label %2405, !llvm.loop !92

2424:                                             ; preds = %2419
  %2425 = load i32, ptr %22, align 4, !tbaa !59
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2436, label %2427

2427:                                             ; preds = %2424
  %2428 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2429 = load ptr, ptr %2428, align 8, !tbaa !69
  %2430 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 1
  %2431 = load i32, ptr %2430, align 4, !tbaa !70
  %2432 = sext i32 %2431 to i64
  %2433 = getelementptr inbounds i8, ptr %2429, i64 %2432
  %2434 = load i8, ptr %2433, align 1, !tbaa !48
  %2435 = sext i8 %2434 to i32
  br label %2436

2436:                                             ; preds = %2427, %2424
  %2437 = phi i32 [ %2435, %2427 ], [ 0, %2424 ]
  br i1 %2396, label %2438, label %2447

2438:                                             ; preds = %2436
  %2439 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2440 = load ptr, ptr %2439, align 8, !tbaa !69
  %2441 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 1
  %2442 = load i32, ptr %2441, align 4, !tbaa !70
  %2443 = sext i32 %2442 to i64
  %2444 = getelementptr inbounds i8, ptr %2440, i64 %2443
  %2445 = load i8, ptr %2444, align 1, !tbaa !48
  %2446 = sext i8 %2445 to i32
  br label %2447

2447:                                             ; preds = %2438, %2436
  %2448 = phi i32 [ %2446, %2438 ], [ 0, %2436 ]
  %2449 = load i32, ptr %24, align 4, !tbaa !59
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2464, label %2451

2451:                                             ; preds = %2447
  %2452 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2453 = load ptr, ptr %2452, align 8, !tbaa !69
  %2454 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 1
  %2455 = load i32, ptr %2454, align 4, !tbaa !70
  %2456 = sext i32 %2455 to i64
  %2457 = getelementptr inbounds i8, ptr %2453, i64 %2456
  %2458 = load i8, ptr %2457, align 1, !tbaa !48
  %2459 = sext i8 %2458 to i32
  br label %2464

2460:                                             ; preds = %2387
  %2461 = load i32, ptr %21, align 16, !tbaa !59
  %2462 = load i32, ptr %22, align 4, !tbaa !59
  %2463 = load i32, ptr %24, align 4, !tbaa !59
  br label %2464

2464:                                             ; preds = %2460, %2451, %2447
  %2465 = phi i32 [ %2462, %2460 ], [ %2437, %2447 ], [ %2437, %2451 ]
  %2466 = phi i32 [ %2461, %2460 ], [ %2421, %2447 ], [ %2421, %2451 ]
  %2467 = phi i32 [ %2463, %2460 ], [ 0, %2447 ], [ %2459, %2451 ]
  %2468 = phi i32 [ %2397, %2460 ], [ %2448, %2447 ], [ %2448, %2451 ]
  %2469 = icmp ne i32 %2465, 0
  %2470 = icmp ne i32 %2466, 0
  %2471 = select i1 %2469, i1 %2470, i1 false
  %2472 = icmp ne i32 %2467, 0
  %2473 = select i1 %2471, i1 %2472, i1 false
  br i1 %2473, label %2478, label %2474

2474:                                             ; preds = %2464
  %2475 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %2476 = load i32, ptr %2475, align 4, !tbaa !80
  %2477 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2476)
  br label %2478

2478:                                             ; preds = %2474, %2464
  br i1 %2469, label %2479, label %2512

2479:                                             ; preds = %2478
  %2480 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 5
  %2481 = load i16, ptr %2480, align 2, !tbaa !72
  %2482 = sext i16 %2481 to i64
  %2483 = getelementptr inbounds ptr, ptr %2372, i64 %2482
  %2484 = load ptr, ptr %2483, align 8, !tbaa !47
  %2485 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 4
  %2486 = load i16, ptr %2485, align 4, !tbaa !73
  %2487 = sext i16 %2486 to i64
  %2488 = getelementptr inbounds i16, ptr %2484, i64 %2487
  %2489 = load i16, ptr %2488, align 2, !tbaa !74
  %2490 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 1
  store i16 %2489, ptr %2490, align 2, !tbaa !74
  %2491 = getelementptr inbounds i16, ptr %2488, i64 1
  %2492 = load i16, ptr %2491, align 2, !tbaa !74
  %2493 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 2
  store i16 %2492, ptr %2493, align 4, !tbaa !74
  %2494 = getelementptr inbounds i16, ptr %2488, i64 2
  %2495 = load i16, ptr %2494, align 2, !tbaa !74
  %2496 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 3
  store i16 %2495, ptr %2496, align 2, !tbaa !74
  %2497 = getelementptr inbounds i16, ptr %2488, i64 3
  %2498 = load i16, ptr %2497, align 2, !tbaa !74
  %2499 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 4
  store i16 %2498, ptr %2499, align 8, !tbaa !74
  %2500 = getelementptr inbounds i16, ptr %2488, i64 4
  %2501 = load i16, ptr %2500, align 2, !tbaa !74
  %2502 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 5
  store i16 %2501, ptr %2502, align 2, !tbaa !74
  %2503 = getelementptr inbounds i16, ptr %2488, i64 5
  %2504 = load i16, ptr %2503, align 2, !tbaa !74
  %2505 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 6
  store i16 %2504, ptr %2505, align 4, !tbaa !74
  %2506 = getelementptr inbounds i16, ptr %2488, i64 6
  %2507 = load i16, ptr %2506, align 2, !tbaa !74
  %2508 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 7
  store i16 %2507, ptr %2508, align 2, !tbaa !74
  %2509 = getelementptr inbounds i16, ptr %2488, i64 7
  %2510 = load i16, ptr %2509, align 2, !tbaa !74
  %2511 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  store i16 %2510, ptr %2511, align 16, !tbaa !74
  br label %2524

2512:                                             ; preds = %2478
  %2513 = getelementptr inbounds %struct.video_par, ptr %2358, i64 0, i32 69, i64 %2375
  %2514 = load i32, ptr %2513, align 4, !tbaa !75
  %2515 = trunc i32 %2514 to i16
  %2516 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  store i16 %2515, ptr %2516, align 16, !tbaa !74
  %2517 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 7
  store i16 %2515, ptr %2517, align 2, !tbaa !74
  %2518 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 6
  store i16 %2515, ptr %2518, align 4, !tbaa !74
  %2519 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 5
  store i16 %2515, ptr %2519, align 2, !tbaa !74
  %2520 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 4
  store i16 %2515, ptr %2520, align 8, !tbaa !74
  %2521 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 3
  store i16 %2515, ptr %2521, align 2, !tbaa !74
  %2522 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 2
  store i16 %2515, ptr %2522, align 4, !tbaa !74
  %2523 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 1
  store i16 %2515, ptr %2523, align 2, !tbaa !74
  br label %2524

2524:                                             ; preds = %2512, %2479
  %2525 = icmp eq i32 %2468, 0
  %2526 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 10
  br i1 %2525, label %2559, label %2527

2527:                                             ; preds = %2524
  %2528 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 5
  %2529 = load i16, ptr %2528, align 2, !tbaa !72
  %2530 = sext i16 %2529 to i64
  %2531 = getelementptr inbounds ptr, ptr %2372, i64 %2530
  %2532 = load ptr, ptr %2531, align 8, !tbaa !47
  %2533 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 4
  %2534 = load i16, ptr %2533, align 4, !tbaa !73
  %2535 = sext i16 %2534 to i64
  %2536 = getelementptr inbounds i16, ptr %2532, i64 %2535
  %2537 = load i16, ptr %2536, align 2, !tbaa !74
  %2538 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 9
  store i16 %2537, ptr %2538, align 2, !tbaa !74
  %2539 = getelementptr inbounds i16, ptr %2536, i64 1
  %2540 = load i16, ptr %2539, align 2, !tbaa !74
  store i16 %2540, ptr %2526, align 4, !tbaa !74
  %2541 = getelementptr inbounds i16, ptr %2536, i64 2
  %2542 = load i16, ptr %2541, align 2, !tbaa !74
  %2543 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 11
  store i16 %2542, ptr %2543, align 2, !tbaa !74
  %2544 = getelementptr inbounds i16, ptr %2536, i64 3
  %2545 = load i16, ptr %2544, align 2, !tbaa !74
  %2546 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 12
  store i16 %2545, ptr %2546, align 8, !tbaa !74
  %2547 = getelementptr inbounds i16, ptr %2536, i64 4
  %2548 = load i16, ptr %2547, align 2, !tbaa !74
  %2549 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 13
  store i16 %2548, ptr %2549, align 2, !tbaa !74
  %2550 = getelementptr inbounds i16, ptr %2536, i64 5
  %2551 = load i16, ptr %2550, align 2, !tbaa !74
  %2552 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 14
  store i16 %2551, ptr %2552, align 4, !tbaa !74
  %2553 = getelementptr inbounds i16, ptr %2536, i64 6
  %2554 = load i16, ptr %2553, align 2, !tbaa !74
  %2555 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 15
  store i16 %2554, ptr %2555, align 2, !tbaa !74
  %2556 = getelementptr inbounds i16, ptr %2536, i64 7
  %2557 = load i16, ptr %2556, align 2, !tbaa !74
  %2558 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 16
  store i16 %2557, ptr %2558, align 16, !tbaa !74
  br label %2569

2559:                                             ; preds = %2524
  %2560 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  %2561 = load i16, ptr %2560, align 16, !tbaa !74
  %2562 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 16
  store i16 %2561, ptr %2562, align 16, !tbaa !74
  %2563 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 15
  store i16 %2561, ptr %2563, align 2, !tbaa !74
  %2564 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 14
  store i16 %2561, ptr %2564, align 4, !tbaa !74
  %2565 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 13
  store i16 %2561, ptr %2565, align 2, !tbaa !74
  %2566 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 12
  store i16 %2561, ptr %2566, align 8, !tbaa !74
  %2567 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 11
  store i16 %2561, ptr %2567, align 2, !tbaa !74
  store i16 %2561, ptr %2526, align 4, !tbaa !74
  %2568 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 9
  store i16 %2561, ptr %2568, align 2, !tbaa !74
  br label %2569

2569:                                             ; preds = %2559, %2527
  br i1 %2470, label %2570, label %2659

2570:                                             ; preds = %2569
  %2571 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 5
  %2572 = load i16, ptr %2571, align 2, !tbaa !72
  %2573 = sext i16 %2572 to i64
  %2574 = getelementptr inbounds ptr, ptr %2372, i64 %2573
  %2575 = load ptr, ptr %2574, align 8, !tbaa !47
  %2576 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 4
  %2577 = load i16, ptr %2576, align 4, !tbaa !73
  %2578 = sext i16 %2577 to i64
  %2579 = getelementptr inbounds i16, ptr %2575, i64 %2578
  %2580 = load i16, ptr %2579, align 2, !tbaa !74
  %2581 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 17
  store i16 %2580, ptr %2581, align 2, !tbaa !74
  %2582 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 1, i32 5
  %2583 = load i16, ptr %2582, align 2, !tbaa !72
  %2584 = sext i16 %2583 to i64
  %2585 = getelementptr inbounds ptr, ptr %2372, i64 %2584
  %2586 = load ptr, ptr %2585, align 8, !tbaa !47
  %2587 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 1, i32 4
  %2588 = load i16, ptr %2587, align 4, !tbaa !73
  %2589 = sext i16 %2588 to i64
  %2590 = getelementptr inbounds i16, ptr %2586, i64 %2589
  %2591 = load i16, ptr %2590, align 2, !tbaa !74
  %2592 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 18
  store i16 %2591, ptr %2592, align 4, !tbaa !74
  %2593 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 2, i32 5
  %2594 = load i16, ptr %2593, align 2, !tbaa !72
  %2595 = sext i16 %2594 to i64
  %2596 = getelementptr inbounds ptr, ptr %2372, i64 %2595
  %2597 = load ptr, ptr %2596, align 8, !tbaa !47
  %2598 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 2, i32 4
  %2599 = load i16, ptr %2598, align 4, !tbaa !73
  %2600 = sext i16 %2599 to i64
  %2601 = getelementptr inbounds i16, ptr %2597, i64 %2600
  %2602 = load i16, ptr %2601, align 2, !tbaa !74
  %2603 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 19
  store i16 %2602, ptr %2603, align 2, !tbaa !74
  %2604 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 3, i32 5
  %2605 = load i16, ptr %2604, align 2, !tbaa !72
  %2606 = sext i16 %2605 to i64
  %2607 = getelementptr inbounds ptr, ptr %2372, i64 %2606
  %2608 = load ptr, ptr %2607, align 8, !tbaa !47
  %2609 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 3, i32 4
  %2610 = load i16, ptr %2609, align 4, !tbaa !73
  %2611 = sext i16 %2610 to i64
  %2612 = getelementptr inbounds i16, ptr %2608, i64 %2611
  %2613 = load i16, ptr %2612, align 2, !tbaa !74
  %2614 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 20
  store i16 %2613, ptr %2614, align 8, !tbaa !74
  %2615 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 4, i32 5
  %2616 = load i16, ptr %2615, align 2, !tbaa !72
  %2617 = sext i16 %2616 to i64
  %2618 = getelementptr inbounds ptr, ptr %2372, i64 %2617
  %2619 = load ptr, ptr %2618, align 8, !tbaa !47
  %2620 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 4, i32 4
  %2621 = load i16, ptr %2620, align 4, !tbaa !73
  %2622 = sext i16 %2621 to i64
  %2623 = getelementptr inbounds i16, ptr %2619, i64 %2622
  %2624 = load i16, ptr %2623, align 2, !tbaa !74
  %2625 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 21
  store i16 %2624, ptr %2625, align 2, !tbaa !74
  %2626 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 5, i32 5
  %2627 = load i16, ptr %2626, align 2, !tbaa !72
  %2628 = sext i16 %2627 to i64
  %2629 = getelementptr inbounds ptr, ptr %2372, i64 %2628
  %2630 = load ptr, ptr %2629, align 8, !tbaa !47
  %2631 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 5, i32 4
  %2632 = load i16, ptr %2631, align 4, !tbaa !73
  %2633 = sext i16 %2632 to i64
  %2634 = getelementptr inbounds i16, ptr %2630, i64 %2633
  %2635 = load i16, ptr %2634, align 2, !tbaa !74
  %2636 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 22
  store i16 %2635, ptr %2636, align 4, !tbaa !74
  %2637 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 6, i32 5
  %2638 = load i16, ptr %2637, align 2, !tbaa !72
  %2639 = sext i16 %2638 to i64
  %2640 = getelementptr inbounds ptr, ptr %2372, i64 %2639
  %2641 = load ptr, ptr %2640, align 8, !tbaa !47
  %2642 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 6, i32 4
  %2643 = load i16, ptr %2642, align 4, !tbaa !73
  %2644 = sext i16 %2643 to i64
  %2645 = getelementptr inbounds i16, ptr %2641, i64 %2644
  %2646 = load i16, ptr %2645, align 2, !tbaa !74
  %2647 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 23
  store i16 %2646, ptr %2647, align 2, !tbaa !74
  %2648 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 7, i32 5
  %2649 = load i16, ptr %2648, align 2, !tbaa !72
  %2650 = sext i16 %2649 to i64
  %2651 = getelementptr inbounds ptr, ptr %2372, i64 %2650
  %2652 = load ptr, ptr %2651, align 8, !tbaa !47
  %2653 = getelementptr inbounds [8 x %struct.pix_pos], ptr %21, i64 0, i64 7, i32 4
  %2654 = load i16, ptr %2653, align 4, !tbaa !73
  %2655 = sext i16 %2654 to i64
  %2656 = getelementptr inbounds i16, ptr %2652, i64 %2655
  %2657 = load i16, ptr %2656, align 2, !tbaa !74
  %2658 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 24
  store i16 %2657, ptr %2658, align 16, !tbaa !74
  br label %2671

2659:                                             ; preds = %2569
  %2660 = getelementptr inbounds %struct.video_par, ptr %2358, i64 0, i32 69, i64 %2375
  %2661 = load i32, ptr %2660, align 4, !tbaa !75
  %2662 = trunc i32 %2661 to i16
  %2663 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 24
  store i16 %2662, ptr %2663, align 16, !tbaa !74
  %2664 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 23
  store i16 %2662, ptr %2664, align 2, !tbaa !74
  %2665 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 22
  store i16 %2662, ptr %2665, align 4, !tbaa !74
  %2666 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 21
  store i16 %2662, ptr %2666, align 2, !tbaa !74
  %2667 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 20
  store i16 %2662, ptr %2667, align 8, !tbaa !74
  %2668 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 19
  store i16 %2662, ptr %2668, align 2, !tbaa !74
  %2669 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 18
  store i16 %2662, ptr %2669, align 4, !tbaa !74
  %2670 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 17
  store i16 %2662, ptr %2670, align 2, !tbaa !74
  br label %2671

2671:                                             ; preds = %2659, %2570
  br i1 %2472, label %2672, label %2683

2672:                                             ; preds = %2671
  %2673 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 5
  %2674 = load i16, ptr %2673, align 2, !tbaa !72
  %2675 = sext i16 %2674 to i64
  %2676 = getelementptr inbounds ptr, ptr %2372, i64 %2675
  %2677 = load ptr, ptr %2676, align 8, !tbaa !47
  %2678 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 4
  %2679 = load i16, ptr %2678, align 4, !tbaa !73
  %2680 = sext i16 %2679 to i64
  %2681 = getelementptr inbounds i16, ptr %2677, i64 %2680
  %2682 = load i16, ptr %2681, align 2, !tbaa !74
  br label %2687

2683:                                             ; preds = %2671
  %2684 = getelementptr inbounds %struct.video_par, ptr %2358, i64 0, i32 69, i64 %2375
  %2685 = load i32, ptr %2684, align 4, !tbaa !75
  %2686 = trunc i32 %2685 to i16
  br label %2687

2687:                                             ; preds = %2672, %2683
  %2688 = phi i16 [ %2686, %2683 ], [ %2682, %2672 ]
  store i16 %2688, ptr %20, align 16, !tbaa !74
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %20, i32 noundef %2467, i32 noundef %2465, i32 noundef %2466)
  %2689 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 22
  %2690 = load i16, ptr %2689, align 4, !tbaa !74
  %2691 = zext i16 %2690 to i32
  %2692 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 20
  %2693 = load i16, ptr %2692, align 8, !tbaa !74
  %2694 = zext i16 %2693 to i32
  %2695 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 21
  %2696 = load i16, ptr %2695, align 2, !tbaa !74
  %2697 = zext i16 %2696 to i32
  %2698 = shl nuw nsw i32 %2697, 1
  %2699 = add nuw nsw i32 %2694, 2
  %2700 = add nuw nsw i32 %2699, %2691
  %2701 = add nuw nsw i32 %2700, %2698
  %2702 = lshr i32 %2701, 2
  %2703 = trunc i32 %2702 to i16
  %2704 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 18
  %2705 = load i16, ptr %2704, align 4, !tbaa !74
  %2706 = zext i16 %2705 to i32
  %2707 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 19
  %2708 = load i16, ptr %2707, align 2, !tbaa !74
  %2709 = zext i16 %2708 to i32
  %2710 = shl nuw nsw i32 %2709, 1
  %2711 = add nuw nsw i32 %2694, 2
  %2712 = add nuw nsw i32 %2711, %2706
  %2713 = add nuw nsw i32 %2712, %2710
  %2714 = lshr i32 %2713, 2
  %2715 = trunc i32 %2714 to i16
  %2716 = load i16, ptr %20, align 16, !tbaa !74
  %2717 = zext i16 %2716 to i32
  %2718 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 17
  %2719 = load i16, ptr %2718, align 2, !tbaa !74
  %2720 = zext i16 %2719 to i32
  %2721 = shl nuw nsw i32 %2720, 1
  %2722 = add nuw nsw i32 %2706, 2
  %2723 = add nuw nsw i32 %2722, %2717
  %2724 = add nuw nsw i32 %2723, %2721
  %2725 = lshr i32 %2724, 2
  %2726 = trunc i32 %2725 to i16
  %2727 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 1
  %2728 = load i16, ptr %2727, align 2, !tbaa !74
  %2729 = zext i16 %2728 to i32
  %2730 = add nuw nsw i32 %2729, 1
  %2731 = add nuw nsw i32 %2730, %2717
  %2732 = lshr i32 %2731, 1
  %2733 = trunc i32 %2732 to i16
  %2734 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 2
  %2735 = load i16, ptr %2734, align 4, !tbaa !74
  %2736 = zext i16 %2735 to i32
  %2737 = add nuw nsw i32 %2729, 1
  %2738 = add nuw nsw i32 %2737, %2736
  %2739 = lshr i32 %2738, 1
  %2740 = trunc i32 %2739 to i16
  %2741 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 3
  %2742 = load i16, ptr %2741, align 2, !tbaa !74
  %2743 = zext i16 %2742 to i32
  %2744 = add nuw nsw i32 %2736, 1
  %2745 = add nuw nsw i32 %2744, %2743
  %2746 = lshr i32 %2745, 1
  %2747 = trunc i32 %2746 to i16
  %2748 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 4
  %2749 = load i16, ptr %2748, align 8, !tbaa !74
  %2750 = zext i16 %2749 to i32
  %2751 = add nuw nsw i32 %2743, 1
  %2752 = add nuw nsw i32 %2751, %2750
  %2753 = lshr i32 %2752, 1
  %2754 = trunc i32 %2753 to i16
  %2755 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 5
  %2756 = load i16, ptr %2755, align 2, !tbaa !74
  %2757 = zext i16 %2756 to i32
  %2758 = add nuw nsw i32 %2750, 1
  %2759 = add nuw nsw i32 %2758, %2757
  %2760 = lshr i32 %2759, 1
  %2761 = trunc i32 %2760 to i16
  %2762 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 6
  %2763 = load i16, ptr %2762, align 4, !tbaa !74
  %2764 = zext i16 %2763 to i32
  %2765 = add nuw nsw i32 %2757, 1
  %2766 = add nuw nsw i32 %2765, %2764
  %2767 = lshr i32 %2766, 1
  %2768 = trunc i32 %2767 to i16
  %2769 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 7
  %2770 = load i16, ptr %2769, align 2, !tbaa !74
  %2771 = zext i16 %2770 to i32
  %2772 = add nuw nsw i32 %2764, 1
  %2773 = add nuw nsw i32 %2772, %2771
  %2774 = lshr i32 %2773, 1
  %2775 = trunc i32 %2774 to i16
  %2776 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  %2777 = load i16, ptr %2776, align 16, !tbaa !74
  %2778 = zext i16 %2777 to i32
  %2779 = add nuw nsw i32 %2771, 1
  %2780 = add nuw nsw i32 %2779, %2778
  %2781 = lshr i32 %2780, 1
  %2782 = trunc i32 %2781 to i16
  %2783 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 23
  %2784 = load i16, ptr %2783, align 2, !tbaa !74
  %2785 = zext i16 %2784 to i32
  %2786 = shl nuw nsw i32 %2691, 1
  %2787 = add nuw nsw i32 %2697, 2
  %2788 = add nuw nsw i32 %2787, %2786
  %2789 = add nuw nsw i32 %2788, %2785
  %2790 = lshr i32 %2789, 2
  %2791 = trunc i32 %2790 to i16
  %2792 = shl nuw nsw i32 %2694, 1
  %2793 = add nuw nsw i32 %2697, 2
  %2794 = add nuw nsw i32 %2793, %2792
  %2795 = add nuw nsw i32 %2794, %2709
  %2796 = lshr i32 %2795, 2
  %2797 = trunc i32 %2796 to i16
  %2798 = shl nuw nsw i32 %2706, 1
  %2799 = add nuw nsw i32 %2709, 2
  %2800 = add nuw nsw i32 %2799, %2798
  %2801 = add nuw nsw i32 %2800, %2720
  %2802 = lshr i32 %2801, 2
  %2803 = trunc i32 %2802 to i16
  %2804 = shl nuw nsw i32 %2717, 1
  %2805 = add nuw nsw i32 %2720, 2
  %2806 = add nuw nsw i32 %2805, %2804
  %2807 = add nuw nsw i32 %2806, %2729
  %2808 = lshr i32 %2807, 2
  %2809 = trunc i32 %2808 to i16
  %2810 = shl nuw nsw i32 %2729, 1
  %2811 = add nuw nsw i32 %2717, 2
  %2812 = add nuw nsw i32 %2811, %2736
  %2813 = add nuw nsw i32 %2812, %2810
  %2814 = lshr i32 %2813, 2
  %2815 = trunc i32 %2814 to i16
  %2816 = shl nuw nsw i32 %2736, 1
  %2817 = add nuw nsw i32 %2729, 2
  %2818 = add nuw nsw i32 %2817, %2743
  %2819 = add nuw nsw i32 %2818, %2816
  %2820 = lshr i32 %2819, 2
  %2821 = trunc i32 %2820 to i16
  %2822 = shl nuw nsw i32 %2743, 1
  %2823 = add nuw nsw i32 %2736, 2
  %2824 = add nuw nsw i32 %2823, %2750
  %2825 = add nuw nsw i32 %2824, %2822
  %2826 = lshr i32 %2825, 2
  %2827 = trunc i32 %2826 to i16
  %2828 = shl nuw nsw i32 %2750, 1
  %2829 = add nuw nsw i32 %2743, 2
  %2830 = add nuw nsw i32 %2829, %2757
  %2831 = add nuw nsw i32 %2830, %2828
  %2832 = lshr i32 %2831, 2
  %2833 = trunc i32 %2832 to i16
  %2834 = shl nuw nsw i32 %2757, 1
  %2835 = add nuw nsw i32 %2750, 2
  %2836 = add nuw nsw i32 %2835, %2764
  %2837 = add nuw nsw i32 %2836, %2834
  %2838 = lshr i32 %2837, 2
  %2839 = trunc i32 %2838 to i16
  %2840 = shl nuw nsw i32 %2764, 1
  %2841 = add nuw nsw i32 %2757, 2
  %2842 = add nuw nsw i32 %2841, %2771
  %2843 = add nuw nsw i32 %2842, %2840
  %2844 = lshr i32 %2843, 2
  %2845 = trunc i32 %2844 to i16
  %2846 = shl nuw nsw i32 %2771, 1
  %2847 = add nuw nsw i32 %2764, 2
  %2848 = add nuw nsw i32 %2847, %2778
  %2849 = add nuw nsw i32 %2848, %2846
  %2850 = lshr i32 %2849, 2
  %2851 = trunc i32 %2850 to i16
  %2852 = sext i32 %3 to i64
  %2853 = getelementptr inbounds ptr, ptr %2377, i64 %2852
  %2854 = load ptr, ptr %2853, align 8, !tbaa !47
  %2855 = sext i32 %2 to i64
  %2856 = getelementptr inbounds i16, ptr %2854, i64 %2855
  store i16 %2733, ptr %2856, align 2
  %2857 = getelementptr inbounds i8, ptr %2856, i64 2
  store i16 %2740, ptr %2857, align 2
  %2858 = getelementptr inbounds i8, ptr %2856, i64 4
  store i16 %2747, ptr %2858, align 2
  %2859 = getelementptr inbounds i8, ptr %2856, i64 6
  store i16 %2754, ptr %2859, align 2
  %2860 = getelementptr inbounds i8, ptr %2856, i64 8
  store i16 %2761, ptr %2860, align 2
  %2861 = getelementptr inbounds i8, ptr %2856, i64 10
  store i16 %2768, ptr %2861, align 2
  %2862 = getelementptr inbounds i8, ptr %2856, i64 12
  store i16 %2775, ptr %2862, align 2
  %2863 = getelementptr inbounds i8, ptr %2856, i64 14
  store i16 %2782, ptr %2863, align 2
  %2864 = getelementptr ptr, ptr %2853, i64 1
  %2865 = load ptr, ptr %2864, align 8, !tbaa !47
  %2866 = getelementptr inbounds i16, ptr %2865, i64 %2855
  store i16 %2809, ptr %2866, align 2
  %2867 = getelementptr inbounds i8, ptr %2866, i64 2
  store i16 %2815, ptr %2867, align 2
  %2868 = getelementptr inbounds i8, ptr %2866, i64 4
  store i16 %2821, ptr %2868, align 2
  %2869 = getelementptr inbounds i8, ptr %2866, i64 6
  store i16 %2827, ptr %2869, align 2
  %2870 = getelementptr inbounds i8, ptr %2866, i64 8
  store i16 %2833, ptr %2870, align 2
  %2871 = getelementptr inbounds i8, ptr %2866, i64 10
  store i16 %2839, ptr %2871, align 2
  %2872 = getelementptr inbounds i8, ptr %2866, i64 12
  store i16 %2845, ptr %2872, align 2
  %2873 = getelementptr inbounds i8, ptr %2866, i64 14
  store i16 %2851, ptr %2873, align 2
  %2874 = getelementptr ptr, ptr %2853, i64 2
  %2875 = load ptr, ptr %2874, align 8, !tbaa !47
  %2876 = getelementptr inbounds i16, ptr %2875, i64 %2855
  store i16 %2726, ptr %2876, align 2
  %2877 = getelementptr inbounds i8, ptr %2876, i64 2
  store i16 %2733, ptr %2877, align 2
  %2878 = getelementptr inbounds i8, ptr %2876, i64 4
  store i16 %2740, ptr %2878, align 2
  %2879 = getelementptr inbounds i8, ptr %2876, i64 6
  store i16 %2747, ptr %2879, align 2
  %2880 = getelementptr inbounds i8, ptr %2876, i64 8
  store i16 %2754, ptr %2880, align 2
  %2881 = getelementptr inbounds i8, ptr %2876, i64 10
  store i16 %2761, ptr %2881, align 2
  %2882 = getelementptr inbounds i8, ptr %2876, i64 12
  store i16 %2768, ptr %2882, align 2
  %2883 = getelementptr inbounds i8, ptr %2876, i64 14
  store i16 %2775, ptr %2883, align 2
  %2884 = getelementptr ptr, ptr %2853, i64 3
  %2885 = load ptr, ptr %2884, align 8, !tbaa !47
  %2886 = getelementptr inbounds i16, ptr %2885, i64 %2855
  store i16 %2803, ptr %2886, align 2
  %2887 = getelementptr inbounds i8, ptr %2886, i64 2
  store i16 %2809, ptr %2887, align 2
  %2888 = getelementptr inbounds i8, ptr %2886, i64 4
  store i16 %2815, ptr %2888, align 2
  %2889 = getelementptr inbounds i8, ptr %2886, i64 6
  store i16 %2821, ptr %2889, align 2
  %2890 = getelementptr inbounds i8, ptr %2886, i64 8
  store i16 %2827, ptr %2890, align 2
  %2891 = getelementptr inbounds i8, ptr %2886, i64 10
  store i16 %2833, ptr %2891, align 2
  %2892 = getelementptr inbounds i8, ptr %2886, i64 12
  store i16 %2839, ptr %2892, align 2
  %2893 = getelementptr inbounds i8, ptr %2886, i64 14
  store i16 %2845, ptr %2893, align 2
  %2894 = getelementptr ptr, ptr %2853, i64 4
  %2895 = load ptr, ptr %2894, align 8, !tbaa !47
  %2896 = getelementptr inbounds i16, ptr %2895, i64 %2855
  store i16 %2715, ptr %2896, align 2
  %2897 = getelementptr inbounds i8, ptr %2896, i64 2
  store i16 %2726, ptr %2897, align 2
  %2898 = getelementptr inbounds i8, ptr %2896, i64 4
  store i16 %2733, ptr %2898, align 2
  %2899 = getelementptr inbounds i8, ptr %2896, i64 6
  store i16 %2740, ptr %2899, align 2
  %2900 = getelementptr inbounds i8, ptr %2896, i64 8
  store i16 %2747, ptr %2900, align 2
  %2901 = getelementptr inbounds i8, ptr %2896, i64 10
  store i16 %2754, ptr %2901, align 2
  %2902 = getelementptr inbounds i8, ptr %2896, i64 12
  store i16 %2761, ptr %2902, align 2
  %2903 = getelementptr inbounds i8, ptr %2896, i64 14
  store i16 %2768, ptr %2903, align 2
  %2904 = getelementptr ptr, ptr %2853, i64 5
  %2905 = load ptr, ptr %2904, align 8, !tbaa !47
  %2906 = getelementptr inbounds i16, ptr %2905, i64 %2855
  store i16 %2797, ptr %2906, align 2
  %2907 = getelementptr inbounds i8, ptr %2906, i64 2
  store i16 %2803, ptr %2907, align 2
  %2908 = getelementptr inbounds i8, ptr %2906, i64 4
  store i16 %2809, ptr %2908, align 2
  %2909 = getelementptr inbounds i8, ptr %2906, i64 6
  store i16 %2815, ptr %2909, align 2
  %2910 = getelementptr inbounds i8, ptr %2906, i64 8
  store i16 %2821, ptr %2910, align 2
  %2911 = getelementptr inbounds i8, ptr %2906, i64 10
  store i16 %2827, ptr %2911, align 2
  %2912 = getelementptr inbounds i8, ptr %2906, i64 12
  store i16 %2833, ptr %2912, align 2
  %2913 = getelementptr inbounds i8, ptr %2906, i64 14
  store i16 %2839, ptr %2913, align 2
  %2914 = getelementptr ptr, ptr %2853, i64 6
  %2915 = load ptr, ptr %2914, align 8, !tbaa !47
  %2916 = getelementptr inbounds i16, ptr %2915, i64 %2855
  store i16 %2703, ptr %2916, align 2
  %2917 = getelementptr inbounds i8, ptr %2916, i64 2
  store i16 %2715, ptr %2917, align 2
  %2918 = getelementptr inbounds i8, ptr %2916, i64 4
  store i16 %2726, ptr %2918, align 2
  %2919 = getelementptr inbounds i8, ptr %2916, i64 6
  store i16 %2733, ptr %2919, align 2
  %2920 = getelementptr inbounds i8, ptr %2916, i64 8
  store i16 %2740, ptr %2920, align 2
  %2921 = getelementptr inbounds i8, ptr %2916, i64 10
  store i16 %2747, ptr %2921, align 2
  %2922 = getelementptr inbounds i8, ptr %2916, i64 12
  store i16 %2754, ptr %2922, align 2
  %2923 = getelementptr inbounds i8, ptr %2916, i64 14
  store i16 %2761, ptr %2923, align 2
  %2924 = getelementptr ptr, ptr %2853, i64 7
  %2925 = load ptr, ptr %2924, align 8, !tbaa !47
  %2926 = getelementptr inbounds i16, ptr %2925, i64 %2855
  store i16 %2791, ptr %2926, align 2
  %2927 = getelementptr inbounds i8, ptr %2926, i64 2
  store i16 %2797, ptr %2927, align 2
  %2928 = getelementptr inbounds i8, ptr %2926, i64 4
  store i16 %2803, ptr %2928, align 2
  %2929 = getelementptr inbounds i8, ptr %2926, i64 6
  store i16 %2809, ptr %2929, align 2
  %2930 = getelementptr inbounds i8, ptr %2926, i64 8
  store i16 %2815, ptr %2930, align 2
  %2931 = getelementptr inbounds i8, ptr %2926, i64 10
  store i16 %2821, ptr %2931, align 2
  %2932 = getelementptr inbounds i8, ptr %2926, i64 12
  store i16 %2827, ptr %2932, align 2
  %2933 = getelementptr inbounds i8, ptr %2926, i64 14
  store i16 %2833, ptr %2933, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %21) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %20) #6
  br label %4594

2934:                                             ; preds = %4
  %2935 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %2936 = load ptr, ptr %2935, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %15) #6
  %2937 = icmp eq i32 %1, 0
  %2938 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %2939 = load ptr, ptr %2938, align 8, !tbaa !51
  br i1 %2937, label %2946, label %2940

2940:                                             ; preds = %2934
  %2941 = getelementptr inbounds %struct.storable_picture, ptr %2939, i64 0, i32 33
  %2942 = load ptr, ptr %2941, align 8, !tbaa !52
  %2943 = add i32 %1, -1
  %2944 = zext i32 %2943 to i64
  %2945 = getelementptr inbounds ptr, ptr %2942, i64 %2944
  br label %2948

2946:                                             ; preds = %2934
  %2947 = getelementptr inbounds %struct.storable_picture, ptr %2939, i64 0, i32 32
  br label %2948

2948:                                             ; preds = %2946, %2940
  %2949 = phi ptr [ %2945, %2940 ], [ %2947, %2946 ]
  %2950 = load ptr, ptr %2949, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #6
  %2951 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %2952 = load ptr, ptr %2951, align 8, !tbaa !55
  %2953 = zext i32 %1 to i64
  %2954 = getelementptr inbounds ptr, ptr %2952, i64 %2953
  %2955 = load ptr, ptr %2954, align 8, !tbaa !47
  %2956 = getelementptr inbounds %struct.video_par, ptr %2936, i64 0, i32 81
  %2957 = add nsw i32 %2, -1
  br label %2958

2958:                                             ; preds = %2948, %2958
  %2959 = phi i64 [ 0, %2948 ], [ %2963, %2958 ]
  %2960 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 %2959
  %2961 = trunc i64 %2959 to i32
  %2962 = add i32 %2961, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2957, i32 noundef %2962, ptr noundef nonnull %2956, ptr noundef nonnull %2960) #6
  %2963 = add nuw nsw i64 %2959, 1
  %2964 = icmp eq i64 %2963, 8
  br i1 %2964, label %2965, label %2958, !llvm.loop !93

2965:                                             ; preds = %2958
  %2966 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %2966, ptr noundef nonnull %2956, ptr noundef nonnull %17) #6
  %2967 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2967, i32 noundef %2966, ptr noundef nonnull %2956, ptr noundef nonnull %18) #6
  %2968 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2968, i32 noundef %2966, ptr noundef nonnull %2956, ptr noundef nonnull %19) #6
  %2969 = load i32, ptr %18, align 4, !tbaa !59
  %2970 = icmp ne i32 %2969, 0
  %2971 = icmp ne i32 %2, 8
  %2972 = icmp ne i32 %3, 8
  %2973 = or i1 %2971, %2972
  %2974 = and i1 %2973, %2970
  %2975 = zext i1 %2974 to i32
  store i32 %2975, ptr %18, align 4, !tbaa !59
  %2976 = getelementptr inbounds %struct.video_par, ptr %2936, i64 0, i32 1
  %2977 = load ptr, ptr %2976, align 8, !tbaa !61
  %2978 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2977, i64 0, i32 30
  %2979 = load i32, ptr %2978, align 4, !tbaa !67
  %2980 = icmp eq i32 %2979, 0
  br i1 %2980, label %3038, label %2981

2981:                                             ; preds = %2965
  %2982 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %2983

2983:                                             ; preds = %2981, %2997
  %2984 = phi i64 [ 0, %2981 ], [ %3000, %2997 ]
  %2985 = phi i32 [ 1, %2981 ], [ %2999, %2997 ]
  %2986 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 %2984
  %2987 = load i32, ptr %2986, align 16, !tbaa !59
  %2988 = icmp eq i32 %2987, 0
  br i1 %2988, label %2997, label %2989

2989:                                             ; preds = %2983
  %2990 = load ptr, ptr %2982, align 8, !tbaa !69
  %2991 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 %2984, i32 1
  %2992 = load i32, ptr %2991, align 4, !tbaa !70
  %2993 = sext i32 %2992 to i64
  %2994 = getelementptr inbounds i8, ptr %2990, i64 %2993
  %2995 = load i8, ptr %2994, align 1, !tbaa !48
  %2996 = sext i8 %2995 to i32
  br label %2997

2997:                                             ; preds = %2989, %2983
  %2998 = phi i32 [ %2996, %2989 ], [ 0, %2983 ]
  %2999 = and i32 %2998, %2985
  %3000 = add nuw nsw i64 %2984, 1
  %3001 = icmp eq i64 %3000, 8
  br i1 %3001, label %3002, label %2983, !llvm.loop !94

3002:                                             ; preds = %2997
  %3003 = load i32, ptr %17, align 4, !tbaa !59
  %3004 = icmp eq i32 %3003, 0
  br i1 %3004, label %3014, label %3005

3005:                                             ; preds = %3002
  %3006 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3007 = load ptr, ptr %3006, align 8, !tbaa !69
  %3008 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 1
  %3009 = load i32, ptr %3008, align 4, !tbaa !70
  %3010 = sext i32 %3009 to i64
  %3011 = getelementptr inbounds i8, ptr %3007, i64 %3010
  %3012 = load i8, ptr %3011, align 1, !tbaa !48
  %3013 = sext i8 %3012 to i32
  br label %3014

3014:                                             ; preds = %3005, %3002
  %3015 = phi i32 [ %3013, %3005 ], [ 0, %3002 ]
  br i1 %2974, label %3016, label %3025

3016:                                             ; preds = %3014
  %3017 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3018 = load ptr, ptr %3017, align 8, !tbaa !69
  %3019 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 1
  %3020 = load i32, ptr %3019, align 4, !tbaa !70
  %3021 = sext i32 %3020 to i64
  %3022 = getelementptr inbounds i8, ptr %3018, i64 %3021
  %3023 = load i8, ptr %3022, align 1, !tbaa !48
  %3024 = sext i8 %3023 to i32
  br label %3025

3025:                                             ; preds = %3016, %3014
  %3026 = phi i32 [ %3024, %3016 ], [ 0, %3014 ]
  %3027 = load i32, ptr %19, align 4, !tbaa !59
  %3028 = icmp eq i32 %3027, 0
  br i1 %3028, label %3042, label %3029

3029:                                             ; preds = %3025
  %3030 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3031 = load ptr, ptr %3030, align 8, !tbaa !69
  %3032 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 1
  %3033 = load i32, ptr %3032, align 4, !tbaa !70
  %3034 = sext i32 %3033 to i64
  %3035 = getelementptr inbounds i8, ptr %3031, i64 %3034
  %3036 = load i8, ptr %3035, align 1, !tbaa !48
  %3037 = sext i8 %3036 to i32
  br label %3042

3038:                                             ; preds = %2965
  %3039 = load i32, ptr %16, align 16, !tbaa !59
  %3040 = load i32, ptr %17, align 4, !tbaa !59
  %3041 = load i32, ptr %19, align 4, !tbaa !59
  br label %3042

3042:                                             ; preds = %3038, %3029, %3025
  %3043 = phi i32 [ %3040, %3038 ], [ %3015, %3025 ], [ %3015, %3029 ]
  %3044 = phi i32 [ %3039, %3038 ], [ %2999, %3025 ], [ %2999, %3029 ]
  %3045 = phi i32 [ %3041, %3038 ], [ 0, %3025 ], [ %3037, %3029 ]
  %3046 = phi i32 [ %2975, %3038 ], [ %3026, %3025 ], [ %3026, %3029 ]
  %3047 = icmp eq i32 %3043, 0
  br i1 %3047, label %3048, label %3063

3048:                                             ; preds = %3042
  %3049 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %3050 = load i32, ptr %3049, align 4, !tbaa !80
  %3051 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %3050)
  %3052 = getelementptr inbounds %struct.video_par, ptr %2936, i64 0, i32 69, i64 %2953
  %3053 = load i32, ptr %3052, align 4, !tbaa !75
  %3054 = trunc i32 %3053 to i16
  %3055 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  store i16 %3054, ptr %3055, align 16, !tbaa !74
  %3056 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 7
  store i16 %3054, ptr %3056, align 2, !tbaa !74
  %3057 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 6
  store i16 %3054, ptr %3057, align 4, !tbaa !74
  %3058 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 5
  store i16 %3054, ptr %3058, align 2, !tbaa !74
  %3059 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 4
  store i16 %3054, ptr %3059, align 8, !tbaa !74
  %3060 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 3
  store i16 %3054, ptr %3060, align 2, !tbaa !74
  %3061 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 2
  store i16 %3054, ptr %3061, align 4, !tbaa !74
  %3062 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 1
  store i16 %3054, ptr %3062, align 2, !tbaa !74
  br label %3096

3063:                                             ; preds = %3042
  %3064 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 5
  %3065 = load i16, ptr %3064, align 2, !tbaa !72
  %3066 = sext i16 %3065 to i64
  %3067 = getelementptr inbounds ptr, ptr %2950, i64 %3066
  %3068 = load ptr, ptr %3067, align 8, !tbaa !47
  %3069 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 4
  %3070 = load i16, ptr %3069, align 4, !tbaa !73
  %3071 = sext i16 %3070 to i64
  %3072 = getelementptr inbounds i16, ptr %3068, i64 %3071
  %3073 = load i16, ptr %3072, align 2, !tbaa !74
  %3074 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 1
  store i16 %3073, ptr %3074, align 2, !tbaa !74
  %3075 = getelementptr inbounds i16, ptr %3072, i64 1
  %3076 = load i16, ptr %3075, align 2, !tbaa !74
  %3077 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 2
  store i16 %3076, ptr %3077, align 4, !tbaa !74
  %3078 = getelementptr inbounds i16, ptr %3072, i64 2
  %3079 = load i16, ptr %3078, align 2, !tbaa !74
  %3080 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 3
  store i16 %3079, ptr %3080, align 2, !tbaa !74
  %3081 = getelementptr inbounds i16, ptr %3072, i64 3
  %3082 = load i16, ptr %3081, align 2, !tbaa !74
  %3083 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 4
  store i16 %3082, ptr %3083, align 8, !tbaa !74
  %3084 = getelementptr inbounds i16, ptr %3072, i64 4
  %3085 = load i16, ptr %3084, align 2, !tbaa !74
  %3086 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 5
  store i16 %3085, ptr %3086, align 2, !tbaa !74
  %3087 = getelementptr inbounds i16, ptr %3072, i64 5
  %3088 = load i16, ptr %3087, align 2, !tbaa !74
  %3089 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 6
  store i16 %3088, ptr %3089, align 4, !tbaa !74
  %3090 = getelementptr inbounds i16, ptr %3072, i64 6
  %3091 = load i16, ptr %3090, align 2, !tbaa !74
  %3092 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 7
  store i16 %3091, ptr %3092, align 2, !tbaa !74
  %3093 = getelementptr inbounds i16, ptr %3072, i64 7
  %3094 = load i16, ptr %3093, align 2, !tbaa !74
  %3095 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  store i16 %3094, ptr %3095, align 16, !tbaa !74
  br label %3096

3096:                                             ; preds = %3063, %3048
  %3097 = icmp eq i32 %3046, 0
  %3098 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 10
  br i1 %3097, label %3131, label %3099

3099:                                             ; preds = %3096
  %3100 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 5
  %3101 = load i16, ptr %3100, align 2, !tbaa !72
  %3102 = sext i16 %3101 to i64
  %3103 = getelementptr inbounds ptr, ptr %2950, i64 %3102
  %3104 = load ptr, ptr %3103, align 8, !tbaa !47
  %3105 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 4
  %3106 = load i16, ptr %3105, align 4, !tbaa !73
  %3107 = sext i16 %3106 to i64
  %3108 = getelementptr inbounds i16, ptr %3104, i64 %3107
  %3109 = load i16, ptr %3108, align 2, !tbaa !74
  %3110 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 9
  store i16 %3109, ptr %3110, align 2, !tbaa !74
  %3111 = getelementptr inbounds i16, ptr %3108, i64 1
  %3112 = load i16, ptr %3111, align 2, !tbaa !74
  store i16 %3112, ptr %3098, align 4, !tbaa !74
  %3113 = getelementptr inbounds i16, ptr %3108, i64 2
  %3114 = load i16, ptr %3113, align 2, !tbaa !74
  %3115 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 11
  store i16 %3114, ptr %3115, align 2, !tbaa !74
  %3116 = getelementptr inbounds i16, ptr %3108, i64 3
  %3117 = load i16, ptr %3116, align 2, !tbaa !74
  %3118 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 12
  store i16 %3117, ptr %3118, align 8, !tbaa !74
  %3119 = getelementptr inbounds i16, ptr %3108, i64 4
  %3120 = load i16, ptr %3119, align 2, !tbaa !74
  %3121 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 13
  store i16 %3120, ptr %3121, align 2, !tbaa !74
  %3122 = getelementptr inbounds i16, ptr %3108, i64 5
  %3123 = load i16, ptr %3122, align 2, !tbaa !74
  %3124 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 14
  store i16 %3123, ptr %3124, align 4, !tbaa !74
  %3125 = getelementptr inbounds i16, ptr %3108, i64 6
  %3126 = load i16, ptr %3125, align 2, !tbaa !74
  %3127 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 15
  store i16 %3126, ptr %3127, align 2, !tbaa !74
  %3128 = getelementptr inbounds i16, ptr %3108, i64 7
  %3129 = load i16, ptr %3128, align 2, !tbaa !74
  %3130 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 16
  store i16 %3129, ptr %3130, align 16, !tbaa !74
  br label %3141

3131:                                             ; preds = %3096
  %3132 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  %3133 = load i16, ptr %3132, align 16, !tbaa !74
  %3134 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 16
  store i16 %3133, ptr %3134, align 16, !tbaa !74
  %3135 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 15
  store i16 %3133, ptr %3135, align 2, !tbaa !74
  %3136 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 14
  store i16 %3133, ptr %3136, align 4, !tbaa !74
  %3137 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 13
  store i16 %3133, ptr %3137, align 2, !tbaa !74
  %3138 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 12
  store i16 %3133, ptr %3138, align 8, !tbaa !74
  %3139 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 11
  store i16 %3133, ptr %3139, align 2, !tbaa !74
  store i16 %3133, ptr %3098, align 4, !tbaa !74
  %3140 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 9
  store i16 %3133, ptr %3140, align 2, !tbaa !74
  br label %3141

3141:                                             ; preds = %3131, %3099
  %3142 = icmp eq i32 %3044, 0
  br i1 %3142, label %3232, label %3143

3143:                                             ; preds = %3141
  %3144 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 5
  %3145 = load i16, ptr %3144, align 2, !tbaa !72
  %3146 = sext i16 %3145 to i64
  %3147 = getelementptr inbounds ptr, ptr %2950, i64 %3146
  %3148 = load ptr, ptr %3147, align 8, !tbaa !47
  %3149 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 4
  %3150 = load i16, ptr %3149, align 4, !tbaa !73
  %3151 = sext i16 %3150 to i64
  %3152 = getelementptr inbounds i16, ptr %3148, i64 %3151
  %3153 = load i16, ptr %3152, align 2, !tbaa !74
  %3154 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 17
  store i16 %3153, ptr %3154, align 2, !tbaa !74
  %3155 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 1, i32 5
  %3156 = load i16, ptr %3155, align 2, !tbaa !72
  %3157 = sext i16 %3156 to i64
  %3158 = getelementptr inbounds ptr, ptr %2950, i64 %3157
  %3159 = load ptr, ptr %3158, align 8, !tbaa !47
  %3160 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 1, i32 4
  %3161 = load i16, ptr %3160, align 4, !tbaa !73
  %3162 = sext i16 %3161 to i64
  %3163 = getelementptr inbounds i16, ptr %3159, i64 %3162
  %3164 = load i16, ptr %3163, align 2, !tbaa !74
  %3165 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 18
  store i16 %3164, ptr %3165, align 4, !tbaa !74
  %3166 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 2, i32 5
  %3167 = load i16, ptr %3166, align 2, !tbaa !72
  %3168 = sext i16 %3167 to i64
  %3169 = getelementptr inbounds ptr, ptr %2950, i64 %3168
  %3170 = load ptr, ptr %3169, align 8, !tbaa !47
  %3171 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 2, i32 4
  %3172 = load i16, ptr %3171, align 4, !tbaa !73
  %3173 = sext i16 %3172 to i64
  %3174 = getelementptr inbounds i16, ptr %3170, i64 %3173
  %3175 = load i16, ptr %3174, align 2, !tbaa !74
  %3176 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 19
  store i16 %3175, ptr %3176, align 2, !tbaa !74
  %3177 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 3, i32 5
  %3178 = load i16, ptr %3177, align 2, !tbaa !72
  %3179 = sext i16 %3178 to i64
  %3180 = getelementptr inbounds ptr, ptr %2950, i64 %3179
  %3181 = load ptr, ptr %3180, align 8, !tbaa !47
  %3182 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 3, i32 4
  %3183 = load i16, ptr %3182, align 4, !tbaa !73
  %3184 = sext i16 %3183 to i64
  %3185 = getelementptr inbounds i16, ptr %3181, i64 %3184
  %3186 = load i16, ptr %3185, align 2, !tbaa !74
  %3187 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 20
  store i16 %3186, ptr %3187, align 8, !tbaa !74
  %3188 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 4, i32 5
  %3189 = load i16, ptr %3188, align 2, !tbaa !72
  %3190 = sext i16 %3189 to i64
  %3191 = getelementptr inbounds ptr, ptr %2950, i64 %3190
  %3192 = load ptr, ptr %3191, align 8, !tbaa !47
  %3193 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 4, i32 4
  %3194 = load i16, ptr %3193, align 4, !tbaa !73
  %3195 = sext i16 %3194 to i64
  %3196 = getelementptr inbounds i16, ptr %3192, i64 %3195
  %3197 = load i16, ptr %3196, align 2, !tbaa !74
  %3198 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 21
  store i16 %3197, ptr %3198, align 2, !tbaa !74
  %3199 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 5, i32 5
  %3200 = load i16, ptr %3199, align 2, !tbaa !72
  %3201 = sext i16 %3200 to i64
  %3202 = getelementptr inbounds ptr, ptr %2950, i64 %3201
  %3203 = load ptr, ptr %3202, align 8, !tbaa !47
  %3204 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 5, i32 4
  %3205 = load i16, ptr %3204, align 4, !tbaa !73
  %3206 = sext i16 %3205 to i64
  %3207 = getelementptr inbounds i16, ptr %3203, i64 %3206
  %3208 = load i16, ptr %3207, align 2, !tbaa !74
  %3209 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 22
  store i16 %3208, ptr %3209, align 4, !tbaa !74
  %3210 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 6, i32 5
  %3211 = load i16, ptr %3210, align 2, !tbaa !72
  %3212 = sext i16 %3211 to i64
  %3213 = getelementptr inbounds ptr, ptr %2950, i64 %3212
  %3214 = load ptr, ptr %3213, align 8, !tbaa !47
  %3215 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 6, i32 4
  %3216 = load i16, ptr %3215, align 4, !tbaa !73
  %3217 = sext i16 %3216 to i64
  %3218 = getelementptr inbounds i16, ptr %3214, i64 %3217
  %3219 = load i16, ptr %3218, align 2, !tbaa !74
  %3220 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 23
  store i16 %3219, ptr %3220, align 2, !tbaa !74
  %3221 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 7, i32 5
  %3222 = load i16, ptr %3221, align 2, !tbaa !72
  %3223 = sext i16 %3222 to i64
  %3224 = getelementptr inbounds ptr, ptr %2950, i64 %3223
  %3225 = load ptr, ptr %3224, align 8, !tbaa !47
  %3226 = getelementptr inbounds [8 x %struct.pix_pos], ptr %16, i64 0, i64 7, i32 4
  %3227 = load i16, ptr %3226, align 4, !tbaa !73
  %3228 = sext i16 %3227 to i64
  %3229 = getelementptr inbounds i16, ptr %3225, i64 %3228
  %3230 = load i16, ptr %3229, align 2, !tbaa !74
  %3231 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 24
  store i16 %3230, ptr %3231, align 16, !tbaa !74
  br label %3244

3232:                                             ; preds = %3141
  %3233 = getelementptr inbounds %struct.video_par, ptr %2936, i64 0, i32 69, i64 %2953
  %3234 = load i32, ptr %3233, align 4, !tbaa !75
  %3235 = trunc i32 %3234 to i16
  %3236 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 24
  store i16 %3235, ptr %3236, align 16, !tbaa !74
  %3237 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 23
  store i16 %3235, ptr %3237, align 2, !tbaa !74
  %3238 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 22
  store i16 %3235, ptr %3238, align 4, !tbaa !74
  %3239 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 21
  store i16 %3235, ptr %3239, align 2, !tbaa !74
  %3240 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 20
  store i16 %3235, ptr %3240, align 8, !tbaa !74
  %3241 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 19
  store i16 %3235, ptr %3241, align 2, !tbaa !74
  %3242 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 18
  store i16 %3235, ptr %3242, align 4, !tbaa !74
  %3243 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 17
  store i16 %3235, ptr %3243, align 2, !tbaa !74
  br label %3244

3244:                                             ; preds = %3232, %3143
  %3245 = icmp eq i32 %3045, 0
  br i1 %3245, label %3257, label %3246

3246:                                             ; preds = %3244
  %3247 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 5
  %3248 = load i16, ptr %3247, align 2, !tbaa !72
  %3249 = sext i16 %3248 to i64
  %3250 = getelementptr inbounds ptr, ptr %2950, i64 %3249
  %3251 = load ptr, ptr %3250, align 8, !tbaa !47
  %3252 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 4
  %3253 = load i16, ptr %3252, align 4, !tbaa !73
  %3254 = sext i16 %3253 to i64
  %3255 = getelementptr inbounds i16, ptr %3251, i64 %3254
  %3256 = load i16, ptr %3255, align 2, !tbaa !74
  br label %3261

3257:                                             ; preds = %3244
  %3258 = getelementptr inbounds %struct.video_par, ptr %2936, i64 0, i32 69, i64 %2953
  %3259 = load i32, ptr %3258, align 4, !tbaa !75
  %3260 = trunc i32 %3259 to i16
  br label %3261

3261:                                             ; preds = %3246, %3257
  %3262 = phi i16 [ %3260, %3257 ], [ %3256, %3246 ]
  store i16 %3262, ptr %15, align 16, !tbaa !74
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %15, i32 noundef %3045, i32 noundef %3043, i32 noundef %3044)
  %3263 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 1
  %3264 = load i16, ptr %3263, align 2, !tbaa !74
  %3265 = zext i16 %3264 to i32
  %3266 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 2
  %3267 = load i16, ptr %3266, align 4, !tbaa !74
  %3268 = zext i16 %3267 to i32
  %3269 = add nuw nsw i32 %3268, 1
  %3270 = add nuw nsw i32 %3269, %3265
  %3271 = lshr i32 %3270, 1
  %3272 = trunc i32 %3271 to i16
  %3273 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 3
  %3274 = load i16, ptr %3273, align 2, !tbaa !74
  %3275 = zext i16 %3274 to i32
  %3276 = add nuw nsw i32 %3268, 1
  %3277 = add nuw nsw i32 %3276, %3275
  %3278 = lshr i32 %3277, 1
  %3279 = trunc i32 %3278 to i16
  %3280 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 4
  %3281 = load i16, ptr %3280, align 8, !tbaa !74
  %3282 = zext i16 %3281 to i32
  %3283 = add nuw nsw i32 %3275, 1
  %3284 = add nuw nsw i32 %3283, %3282
  %3285 = lshr i32 %3284, 1
  %3286 = trunc i32 %3285 to i16
  %3287 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 5
  %3288 = load i16, ptr %3287, align 2, !tbaa !74
  %3289 = zext i16 %3288 to i32
  %3290 = add nuw nsw i32 %3282, 1
  %3291 = add nuw nsw i32 %3290, %3289
  %3292 = lshr i32 %3291, 1
  %3293 = trunc i32 %3292 to i16
  %3294 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 6
  %3295 = load i16, ptr %3294, align 4, !tbaa !74
  %3296 = zext i16 %3295 to i32
  %3297 = add nuw nsw i32 %3289, 1
  %3298 = add nuw nsw i32 %3297, %3296
  %3299 = lshr i32 %3298, 1
  %3300 = trunc i32 %3299 to i16
  %3301 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 7
  %3302 = load i16, ptr %3301, align 2, !tbaa !74
  %3303 = zext i16 %3302 to i32
  %3304 = add nuw nsw i32 %3296, 1
  %3305 = add nuw nsw i32 %3304, %3303
  %3306 = lshr i32 %3305, 1
  %3307 = trunc i32 %3306 to i16
  %3308 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  %3309 = load i16, ptr %3308, align 16, !tbaa !74
  %3310 = zext i16 %3309 to i32
  %3311 = add nuw nsw i32 %3303, 1
  %3312 = add nuw nsw i32 %3311, %3310
  %3313 = lshr i32 %3312, 1
  %3314 = trunc i32 %3313 to i16
  %3315 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 9
  %3316 = load i16, ptr %3315, align 2, !tbaa !74
  %3317 = zext i16 %3316 to i32
  %3318 = add nuw nsw i32 %3310, 1
  %3319 = add nuw nsw i32 %3318, %3317
  %3320 = lshr i32 %3319, 1
  %3321 = trunc i32 %3320 to i16
  %3322 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 10
  %3323 = load i16, ptr %3322, align 4, !tbaa !74
  %3324 = zext i16 %3323 to i32
  %3325 = add nuw nsw i32 %3317, 1
  %3326 = add nuw nsw i32 %3325, %3324
  %3327 = lshr i32 %3326, 1
  %3328 = trunc i32 %3327 to i16
  %3329 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 11
  %3330 = load i16, ptr %3329, align 2, !tbaa !74
  %3331 = zext i16 %3330 to i32
  %3332 = add nuw nsw i32 %3324, 1
  %3333 = add nuw nsw i32 %3332, %3331
  %3334 = lshr i32 %3333, 1
  %3335 = trunc i32 %3334 to i16
  %3336 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 12
  %3337 = load i16, ptr %3336, align 8, !tbaa !74
  %3338 = zext i16 %3337 to i32
  %3339 = add nuw nsw i32 %3331, 1
  %3340 = add nuw nsw i32 %3339, %3338
  %3341 = lshr i32 %3340, 1
  %3342 = trunc i32 %3341 to i16
  %3343 = shl nuw nsw i32 %3268, 1
  %3344 = add nuw nsw i32 %3275, 2
  %3345 = add nuw nsw i32 %3344, %3265
  %3346 = add nuw nsw i32 %3345, %3343
  %3347 = lshr i32 %3346, 2
  %3348 = trunc i32 %3347 to i16
  %3349 = shl nuw nsw i32 %3275, 1
  %3350 = add nuw nsw i32 %3282, 2
  %3351 = add nuw nsw i32 %3350, %3268
  %3352 = add nuw nsw i32 %3351, %3349
  %3353 = lshr i32 %3352, 2
  %3354 = trunc i32 %3353 to i16
  %3355 = shl nuw nsw i32 %3282, 1
  %3356 = add nuw nsw i32 %3275, 2
  %3357 = add nuw nsw i32 %3356, %3289
  %3358 = add nuw nsw i32 %3357, %3355
  %3359 = lshr i32 %3358, 2
  %3360 = trunc i32 %3359 to i16
  %3361 = shl nuw nsw i32 %3289, 1
  %3362 = add nuw nsw i32 %3282, 2
  %3363 = add nuw nsw i32 %3362, %3296
  %3364 = add nuw nsw i32 %3363, %3361
  %3365 = lshr i32 %3364, 2
  %3366 = trunc i32 %3365 to i16
  %3367 = shl nuw nsw i32 %3296, 1
  %3368 = add nuw nsw i32 %3289, 2
  %3369 = add nuw nsw i32 %3368, %3303
  %3370 = add nuw nsw i32 %3369, %3367
  %3371 = lshr i32 %3370, 2
  %3372 = trunc i32 %3371 to i16
  %3373 = shl nuw nsw i32 %3303, 1
  %3374 = add nuw nsw i32 %3296, 2
  %3375 = add nuw nsw i32 %3374, %3310
  %3376 = add nuw nsw i32 %3375, %3373
  %3377 = lshr i32 %3376, 2
  %3378 = trunc i32 %3377 to i16
  %3379 = shl nuw nsw i32 %3310, 1
  %3380 = add nuw nsw i32 %3303, 2
  %3381 = add nuw nsw i32 %3380, %3317
  %3382 = add nuw nsw i32 %3381, %3379
  %3383 = lshr i32 %3382, 2
  %3384 = trunc i32 %3383 to i16
  %3385 = shl nuw nsw i32 %3317, 1
  %3386 = add nuw nsw i32 %3310, 2
  %3387 = add nuw nsw i32 %3386, %3324
  %3388 = add nuw nsw i32 %3387, %3385
  %3389 = lshr i32 %3388, 2
  %3390 = trunc i32 %3389 to i16
  %3391 = shl nuw nsw i32 %3324, 1
  %3392 = add nuw nsw i32 %3317, 2
  %3393 = add nuw nsw i32 %3392, %3331
  %3394 = add nuw nsw i32 %3393, %3391
  %3395 = lshr i32 %3394, 2
  %3396 = trunc i32 %3395 to i16
  %3397 = shl nuw nsw i32 %3331, 1
  %3398 = add nuw nsw i32 %3324, 2
  %3399 = add nuw nsw i32 %3398, %3338
  %3400 = add nuw nsw i32 %3399, %3397
  %3401 = lshr i32 %3400, 2
  %3402 = trunc i32 %3401 to i16
  %3403 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 13
  %3404 = load i16, ptr %3403, align 2, !tbaa !74
  %3405 = zext i16 %3404 to i32
  %3406 = shl nuw nsw i32 %3338, 1
  %3407 = add nuw nsw i32 %3331, 2
  %3408 = add nuw nsw i32 %3407, %3405
  %3409 = add nuw nsw i32 %3408, %3406
  %3410 = lshr i32 %3409, 2
  %3411 = trunc i32 %3410 to i16
  %3412 = sext i32 %3 to i64
  %3413 = getelementptr inbounds ptr, ptr %2955, i64 %3412
  %3414 = load ptr, ptr %3413, align 8, !tbaa !47
  %3415 = sext i32 %2 to i64
  %3416 = getelementptr inbounds i16, ptr %3414, i64 %3415
  store i16 %3272, ptr %3416, align 2
  %3417 = getelementptr inbounds i8, ptr %3416, i64 2
  store i16 %3279, ptr %3417, align 2
  %3418 = getelementptr inbounds i8, ptr %3416, i64 4
  store i16 %3286, ptr %3418, align 2
  %3419 = getelementptr inbounds i8, ptr %3416, i64 6
  store i16 %3293, ptr %3419, align 2
  %3420 = getelementptr inbounds i8, ptr %3416, i64 8
  store i16 %3300, ptr %3420, align 2
  %3421 = getelementptr inbounds i8, ptr %3416, i64 10
  store i16 %3307, ptr %3421, align 2
  %3422 = getelementptr inbounds i8, ptr %3416, i64 12
  store i16 %3314, ptr %3422, align 2
  %3423 = getelementptr inbounds i8, ptr %3416, i64 14
  store i16 %3321, ptr %3423, align 2
  %3424 = getelementptr ptr, ptr %3413, i64 1
  %3425 = load ptr, ptr %3424, align 8, !tbaa !47
  %3426 = getelementptr inbounds i16, ptr %3425, i64 %3415
  store i16 %3348, ptr %3426, align 2
  %3427 = getelementptr inbounds i8, ptr %3426, i64 2
  store i16 %3354, ptr %3427, align 2
  %3428 = getelementptr inbounds i8, ptr %3426, i64 4
  store i16 %3360, ptr %3428, align 2
  %3429 = getelementptr inbounds i8, ptr %3426, i64 6
  store i16 %3366, ptr %3429, align 2
  %3430 = getelementptr inbounds i8, ptr %3426, i64 8
  store i16 %3372, ptr %3430, align 2
  %3431 = getelementptr inbounds i8, ptr %3426, i64 10
  store i16 %3378, ptr %3431, align 2
  %3432 = getelementptr inbounds i8, ptr %3426, i64 12
  store i16 %3384, ptr %3432, align 2
  %3433 = getelementptr inbounds i8, ptr %3426, i64 14
  store i16 %3390, ptr %3433, align 2
  %3434 = getelementptr ptr, ptr %3413, i64 2
  %3435 = load ptr, ptr %3434, align 8, !tbaa !47
  %3436 = getelementptr inbounds i16, ptr %3435, i64 %3415
  store i16 %3279, ptr %3436, align 2
  %3437 = getelementptr inbounds i8, ptr %3436, i64 2
  store i16 %3286, ptr %3437, align 2
  %3438 = getelementptr inbounds i8, ptr %3436, i64 4
  store i16 %3293, ptr %3438, align 2
  %3439 = getelementptr inbounds i8, ptr %3436, i64 6
  store i16 %3300, ptr %3439, align 2
  %3440 = getelementptr inbounds i8, ptr %3436, i64 8
  store i16 %3307, ptr %3440, align 2
  %3441 = getelementptr inbounds i8, ptr %3436, i64 10
  store i16 %3314, ptr %3441, align 2
  %3442 = getelementptr inbounds i8, ptr %3436, i64 12
  store i16 %3321, ptr %3442, align 2
  %3443 = getelementptr inbounds i8, ptr %3436, i64 14
  store i16 %3328, ptr %3443, align 2
  %3444 = getelementptr ptr, ptr %3413, i64 3
  %3445 = load ptr, ptr %3444, align 8, !tbaa !47
  %3446 = getelementptr inbounds i16, ptr %3445, i64 %3415
  store i16 %3354, ptr %3446, align 2
  %3447 = getelementptr inbounds i8, ptr %3446, i64 2
  store i16 %3360, ptr %3447, align 2
  %3448 = getelementptr inbounds i8, ptr %3446, i64 4
  store i16 %3366, ptr %3448, align 2
  %3449 = getelementptr inbounds i8, ptr %3446, i64 6
  store i16 %3372, ptr %3449, align 2
  %3450 = getelementptr inbounds i8, ptr %3446, i64 8
  store i16 %3378, ptr %3450, align 2
  %3451 = getelementptr inbounds i8, ptr %3446, i64 10
  store i16 %3384, ptr %3451, align 2
  %3452 = getelementptr inbounds i8, ptr %3446, i64 12
  store i16 %3390, ptr %3452, align 2
  %3453 = getelementptr inbounds i8, ptr %3446, i64 14
  store i16 %3396, ptr %3453, align 2
  %3454 = getelementptr ptr, ptr %3413, i64 4
  %3455 = load ptr, ptr %3454, align 8, !tbaa !47
  %3456 = getelementptr inbounds i16, ptr %3455, i64 %3415
  store i16 %3286, ptr %3456, align 2
  %3457 = getelementptr inbounds i8, ptr %3456, i64 2
  store i16 %3293, ptr %3457, align 2
  %3458 = getelementptr inbounds i8, ptr %3456, i64 4
  store i16 %3300, ptr %3458, align 2
  %3459 = getelementptr inbounds i8, ptr %3456, i64 6
  store i16 %3307, ptr %3459, align 2
  %3460 = getelementptr inbounds i8, ptr %3456, i64 8
  store i16 %3314, ptr %3460, align 2
  %3461 = getelementptr inbounds i8, ptr %3456, i64 10
  store i16 %3321, ptr %3461, align 2
  %3462 = getelementptr inbounds i8, ptr %3456, i64 12
  store i16 %3328, ptr %3462, align 2
  %3463 = getelementptr inbounds i8, ptr %3456, i64 14
  store i16 %3335, ptr %3463, align 2
  %3464 = getelementptr ptr, ptr %3413, i64 5
  %3465 = load ptr, ptr %3464, align 8, !tbaa !47
  %3466 = getelementptr inbounds i16, ptr %3465, i64 %3415
  store i16 %3360, ptr %3466, align 2
  %3467 = getelementptr inbounds i8, ptr %3466, i64 2
  store i16 %3366, ptr %3467, align 2
  %3468 = getelementptr inbounds i8, ptr %3466, i64 4
  store i16 %3372, ptr %3468, align 2
  %3469 = getelementptr inbounds i8, ptr %3466, i64 6
  store i16 %3378, ptr %3469, align 2
  %3470 = getelementptr inbounds i8, ptr %3466, i64 8
  store i16 %3384, ptr %3470, align 2
  %3471 = getelementptr inbounds i8, ptr %3466, i64 10
  store i16 %3390, ptr %3471, align 2
  %3472 = getelementptr inbounds i8, ptr %3466, i64 12
  store i16 %3396, ptr %3472, align 2
  %3473 = getelementptr inbounds i8, ptr %3466, i64 14
  store i16 %3402, ptr %3473, align 2
  %3474 = getelementptr ptr, ptr %3413, i64 6
  %3475 = load ptr, ptr %3474, align 8, !tbaa !47
  %3476 = getelementptr inbounds i16, ptr %3475, i64 %3415
  store i16 %3293, ptr %3476, align 2
  %3477 = getelementptr inbounds i8, ptr %3476, i64 2
  store i16 %3300, ptr %3477, align 2
  %3478 = getelementptr inbounds i8, ptr %3476, i64 4
  store i16 %3307, ptr %3478, align 2
  %3479 = getelementptr inbounds i8, ptr %3476, i64 6
  store i16 %3314, ptr %3479, align 2
  %3480 = getelementptr inbounds i8, ptr %3476, i64 8
  store i16 %3321, ptr %3480, align 2
  %3481 = getelementptr inbounds i8, ptr %3476, i64 10
  store i16 %3328, ptr %3481, align 2
  %3482 = getelementptr inbounds i8, ptr %3476, i64 12
  store i16 %3335, ptr %3482, align 2
  %3483 = getelementptr inbounds i8, ptr %3476, i64 14
  store i16 %3342, ptr %3483, align 2
  %3484 = getelementptr ptr, ptr %3413, i64 7
  %3485 = load ptr, ptr %3484, align 8, !tbaa !47
  %3486 = getelementptr inbounds i16, ptr %3485, i64 %3415
  store i16 %3366, ptr %3486, align 2
  %3487 = getelementptr inbounds i8, ptr %3486, i64 2
  store i16 %3372, ptr %3487, align 2
  %3488 = getelementptr inbounds i8, ptr %3486, i64 4
  store i16 %3378, ptr %3488, align 2
  %3489 = getelementptr inbounds i8, ptr %3486, i64 6
  store i16 %3384, ptr %3489, align 2
  %3490 = getelementptr inbounds i8, ptr %3486, i64 8
  store i16 %3390, ptr %3490, align 2
  %3491 = getelementptr inbounds i8, ptr %3486, i64 10
  store i16 %3396, ptr %3491, align 2
  %3492 = getelementptr inbounds i8, ptr %3486, i64 12
  store i16 %3402, ptr %3492, align 2
  %3493 = getelementptr inbounds i8, ptr %3486, i64 14
  store i16 %3411, ptr %3493, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %15) #6
  br label %4594

3494:                                             ; preds = %4
  %3495 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3496 = load ptr, ptr %3495, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %10) #6
  %3497 = icmp eq i32 %1, 0
  %3498 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %3499 = load ptr, ptr %3498, align 8, !tbaa !51
  br i1 %3497, label %3506, label %3500

3500:                                             ; preds = %3494
  %3501 = getelementptr inbounds %struct.storable_picture, ptr %3499, i64 0, i32 33
  %3502 = load ptr, ptr %3501, align 8, !tbaa !52
  %3503 = add i32 %1, -1
  %3504 = zext i32 %3503 to i64
  %3505 = getelementptr inbounds ptr, ptr %3502, i64 %3504
  br label %3508

3506:                                             ; preds = %3494
  %3507 = getelementptr inbounds %struct.storable_picture, ptr %3499, i64 0, i32 32
  br label %3508

3508:                                             ; preds = %3506, %3500
  %3509 = phi ptr [ %3505, %3500 ], [ %3507, %3506 ]
  %3510 = load ptr, ptr %3509, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #6
  %3511 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %3512 = load ptr, ptr %3511, align 8, !tbaa !55
  %3513 = zext i32 %1 to i64
  %3514 = getelementptr inbounds ptr, ptr %3512, i64 %3513
  %3515 = load ptr, ptr %3514, align 8, !tbaa !47
  %3516 = getelementptr inbounds %struct.video_par, ptr %3496, i64 0, i32 81
  %3517 = add nsw i32 %2, -1
  br label %3518

3518:                                             ; preds = %3508, %3518
  %3519 = phi i64 [ 0, %3508 ], [ %3523, %3518 ]
  %3520 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 %3519
  %3521 = trunc i64 %3519 to i32
  %3522 = add i32 %3521, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %3517, i32 noundef %3522, ptr noundef nonnull %3516, ptr noundef nonnull %3520) #6
  %3523 = add nuw nsw i64 %3519, 1
  %3524 = icmp eq i64 %3523, 8
  br i1 %3524, label %3525, label %3518, !llvm.loop !95

3525:                                             ; preds = %3518
  %3526 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3526, ptr noundef nonnull %3516, ptr noundef nonnull %12) #6
  %3527 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %3527, i32 noundef %3526, ptr noundef nonnull %3516, ptr noundef nonnull %13) #6
  %3528 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %3528, i32 noundef %3526, ptr noundef nonnull %3516, ptr noundef nonnull %14) #6
  %3529 = load i32, ptr %13, align 4, !tbaa !59
  %3530 = icmp ne i32 %3529, 0
  %3531 = icmp ne i32 %2, 8
  %3532 = icmp ne i32 %3, 8
  %3533 = or i1 %3531, %3532
  %3534 = and i1 %3533, %3530
  %3535 = zext i1 %3534 to i32
  store i32 %3535, ptr %13, align 4, !tbaa !59
  %3536 = getelementptr inbounds %struct.video_par, ptr %3496, i64 0, i32 1
  %3537 = load ptr, ptr %3536, align 8, !tbaa !61
  %3538 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %3537, i64 0, i32 30
  %3539 = load i32, ptr %3538, align 4, !tbaa !67
  %3540 = icmp eq i32 %3539, 0
  br i1 %3540, label %3598, label %3541

3541:                                             ; preds = %3525
  %3542 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %3543

3543:                                             ; preds = %3541, %3557
  %3544 = phi i64 [ 0, %3541 ], [ %3560, %3557 ]
  %3545 = phi i32 [ 1, %3541 ], [ %3559, %3557 ]
  %3546 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 %3544
  %3547 = load i32, ptr %3546, align 16, !tbaa !59
  %3548 = icmp eq i32 %3547, 0
  br i1 %3548, label %3557, label %3549

3549:                                             ; preds = %3543
  %3550 = load ptr, ptr %3542, align 8, !tbaa !69
  %3551 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 %3544, i32 1
  %3552 = load i32, ptr %3551, align 4, !tbaa !70
  %3553 = sext i32 %3552 to i64
  %3554 = getelementptr inbounds i8, ptr %3550, i64 %3553
  %3555 = load i8, ptr %3554, align 1, !tbaa !48
  %3556 = sext i8 %3555 to i32
  br label %3557

3557:                                             ; preds = %3549, %3543
  %3558 = phi i32 [ %3556, %3549 ], [ 0, %3543 ]
  %3559 = and i32 %3558, %3545
  %3560 = add nuw nsw i64 %3544, 1
  %3561 = icmp eq i64 %3560, 8
  br i1 %3561, label %3562, label %3543, !llvm.loop !96

3562:                                             ; preds = %3557
  %3563 = load i32, ptr %12, align 4, !tbaa !59
  %3564 = icmp eq i32 %3563, 0
  br i1 %3564, label %3574, label %3565

3565:                                             ; preds = %3562
  %3566 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3567 = load ptr, ptr %3566, align 8, !tbaa !69
  %3568 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 1
  %3569 = load i32, ptr %3568, align 4, !tbaa !70
  %3570 = sext i32 %3569 to i64
  %3571 = getelementptr inbounds i8, ptr %3567, i64 %3570
  %3572 = load i8, ptr %3571, align 1, !tbaa !48
  %3573 = sext i8 %3572 to i32
  br label %3574

3574:                                             ; preds = %3565, %3562
  %3575 = phi i32 [ %3573, %3565 ], [ 0, %3562 ]
  br i1 %3534, label %3576, label %3585

3576:                                             ; preds = %3574
  %3577 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3578 = load ptr, ptr %3577, align 8, !tbaa !69
  %3579 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 1
  %3580 = load i32, ptr %3579, align 4, !tbaa !70
  %3581 = sext i32 %3580 to i64
  %3582 = getelementptr inbounds i8, ptr %3578, i64 %3581
  %3583 = load i8, ptr %3582, align 1, !tbaa !48
  %3584 = sext i8 %3583 to i32
  br label %3585

3585:                                             ; preds = %3576, %3574
  %3586 = phi i32 [ %3584, %3576 ], [ 0, %3574 ]
  %3587 = load i32, ptr %14, align 4, !tbaa !59
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3602, label %3589

3589:                                             ; preds = %3585
  %3590 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3591 = load ptr, ptr %3590, align 8, !tbaa !69
  %3592 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 1
  %3593 = load i32, ptr %3592, align 4, !tbaa !70
  %3594 = sext i32 %3593 to i64
  %3595 = getelementptr inbounds i8, ptr %3591, i64 %3594
  %3596 = load i8, ptr %3595, align 1, !tbaa !48
  %3597 = sext i8 %3596 to i32
  br label %3602

3598:                                             ; preds = %3525
  %3599 = load i32, ptr %11, align 16, !tbaa !59
  %3600 = load i32, ptr %12, align 4, !tbaa !59
  %3601 = load i32, ptr %14, align 4, !tbaa !59
  br label %3602

3602:                                             ; preds = %3598, %3589, %3585
  %3603 = phi i32 [ %3535, %3598 ], [ %3586, %3585 ], [ %3586, %3589 ]
  %3604 = phi i32 [ %3601, %3598 ], [ 0, %3585 ], [ %3597, %3589 ]
  %3605 = phi i32 [ %3599, %3598 ], [ %3559, %3585 ], [ %3559, %3589 ]
  %3606 = phi i32 [ %3600, %3598 ], [ %3575, %3585 ], [ %3575, %3589 ]
  %3607 = icmp eq i32 %3605, 0
  br i1 %3607, label %3608, label %3612

3608:                                             ; preds = %3602
  %3609 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %3610 = load i32, ptr %3609, align 4, !tbaa !80
  %3611 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %3610)
  br label %3612

3612:                                             ; preds = %3608, %3602
  %3613 = icmp eq i32 %3606, 0
  br i1 %3613, label %3647, label %3614

3614:                                             ; preds = %3612
  %3615 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 5
  %3616 = load i16, ptr %3615, align 2, !tbaa !72
  %3617 = sext i16 %3616 to i64
  %3618 = getelementptr inbounds ptr, ptr %3510, i64 %3617
  %3619 = load ptr, ptr %3618, align 8, !tbaa !47
  %3620 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 4
  %3621 = load i16, ptr %3620, align 4, !tbaa !73
  %3622 = sext i16 %3621 to i64
  %3623 = getelementptr inbounds i16, ptr %3619, i64 %3622
  %3624 = load i16, ptr %3623, align 2, !tbaa !74
  %3625 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 1
  store i16 %3624, ptr %3625, align 2, !tbaa !74
  %3626 = getelementptr inbounds i16, ptr %3623, i64 1
  %3627 = load i16, ptr %3626, align 2, !tbaa !74
  %3628 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 2
  store i16 %3627, ptr %3628, align 4, !tbaa !74
  %3629 = getelementptr inbounds i16, ptr %3623, i64 2
  %3630 = load i16, ptr %3629, align 2, !tbaa !74
  %3631 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 3
  store i16 %3630, ptr %3631, align 2, !tbaa !74
  %3632 = getelementptr inbounds i16, ptr %3623, i64 3
  %3633 = load i16, ptr %3632, align 2, !tbaa !74
  %3634 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 4
  store i16 %3633, ptr %3634, align 8, !tbaa !74
  %3635 = getelementptr inbounds i16, ptr %3623, i64 4
  %3636 = load i16, ptr %3635, align 2, !tbaa !74
  %3637 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 5
  store i16 %3636, ptr %3637, align 2, !tbaa !74
  %3638 = getelementptr inbounds i16, ptr %3623, i64 5
  %3639 = load i16, ptr %3638, align 2, !tbaa !74
  %3640 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 6
  store i16 %3639, ptr %3640, align 4, !tbaa !74
  %3641 = getelementptr inbounds i16, ptr %3623, i64 6
  %3642 = load i16, ptr %3641, align 2, !tbaa !74
  %3643 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 7
  store i16 %3642, ptr %3643, align 2, !tbaa !74
  %3644 = getelementptr inbounds i16, ptr %3623, i64 7
  %3645 = load i16, ptr %3644, align 2, !tbaa !74
  %3646 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 8
  store i16 %3645, ptr %3646, align 16, !tbaa !74
  br label %3659

3647:                                             ; preds = %3612
  %3648 = getelementptr inbounds %struct.video_par, ptr %3496, i64 0, i32 69, i64 %3513
  %3649 = load i32, ptr %3648, align 4, !tbaa !75
  %3650 = trunc i32 %3649 to i16
  %3651 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 8
  store i16 %3650, ptr %3651, align 16, !tbaa !74
  %3652 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 7
  store i16 %3650, ptr %3652, align 2, !tbaa !74
  %3653 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 6
  store i16 %3650, ptr %3653, align 4, !tbaa !74
  %3654 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 5
  store i16 %3650, ptr %3654, align 2, !tbaa !74
  %3655 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 4
  store i16 %3650, ptr %3655, align 8, !tbaa !74
  %3656 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 3
  store i16 %3650, ptr %3656, align 2, !tbaa !74
  %3657 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 2
  store i16 %3650, ptr %3657, align 4, !tbaa !74
  %3658 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 1
  store i16 %3650, ptr %3658, align 2, !tbaa !74
  br label %3659

3659:                                             ; preds = %3647, %3614
  %3660 = icmp eq i32 %3603, 0
  %3661 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 10
  br i1 %3660, label %3694, label %3662

3662:                                             ; preds = %3659
  %3663 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 5
  %3664 = load i16, ptr %3663, align 2, !tbaa !72
  %3665 = sext i16 %3664 to i64
  %3666 = getelementptr inbounds ptr, ptr %3510, i64 %3665
  %3667 = load ptr, ptr %3666, align 8, !tbaa !47
  %3668 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 4
  %3669 = load i16, ptr %3668, align 4, !tbaa !73
  %3670 = sext i16 %3669 to i64
  %3671 = getelementptr inbounds i16, ptr %3667, i64 %3670
  %3672 = load i16, ptr %3671, align 2, !tbaa !74
  %3673 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 9
  store i16 %3672, ptr %3673, align 2, !tbaa !74
  %3674 = getelementptr inbounds i16, ptr %3671, i64 1
  %3675 = load i16, ptr %3674, align 2, !tbaa !74
  store i16 %3675, ptr %3661, align 4, !tbaa !74
  %3676 = getelementptr inbounds i16, ptr %3671, i64 2
  %3677 = load i16, ptr %3676, align 2, !tbaa !74
  %3678 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 11
  store i16 %3677, ptr %3678, align 2, !tbaa !74
  %3679 = getelementptr inbounds i16, ptr %3671, i64 3
  %3680 = load i16, ptr %3679, align 2, !tbaa !74
  %3681 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 12
  store i16 %3680, ptr %3681, align 8, !tbaa !74
  %3682 = getelementptr inbounds i16, ptr %3671, i64 4
  %3683 = load i16, ptr %3682, align 2, !tbaa !74
  %3684 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 13
  store i16 %3683, ptr %3684, align 2, !tbaa !74
  %3685 = getelementptr inbounds i16, ptr %3671, i64 5
  %3686 = load i16, ptr %3685, align 2, !tbaa !74
  %3687 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 14
  store i16 %3686, ptr %3687, align 4, !tbaa !74
  %3688 = getelementptr inbounds i16, ptr %3671, i64 6
  %3689 = load i16, ptr %3688, align 2, !tbaa !74
  %3690 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 15
  store i16 %3689, ptr %3690, align 2, !tbaa !74
  %3691 = getelementptr inbounds i16, ptr %3671, i64 7
  %3692 = load i16, ptr %3691, align 2, !tbaa !74
  %3693 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 16
  store i16 %3692, ptr %3693, align 16, !tbaa !74
  br label %3704

3694:                                             ; preds = %3659
  %3695 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 8
  %3696 = load i16, ptr %3695, align 16, !tbaa !74
  %3697 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 16
  store i16 %3696, ptr %3697, align 16, !tbaa !74
  %3698 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 15
  store i16 %3696, ptr %3698, align 2, !tbaa !74
  %3699 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 14
  store i16 %3696, ptr %3699, align 4, !tbaa !74
  %3700 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 13
  store i16 %3696, ptr %3700, align 2, !tbaa !74
  %3701 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 12
  store i16 %3696, ptr %3701, align 8, !tbaa !74
  %3702 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 11
  store i16 %3696, ptr %3702, align 2, !tbaa !74
  store i16 %3696, ptr %3661, align 4, !tbaa !74
  %3703 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 9
  store i16 %3696, ptr %3703, align 2, !tbaa !74
  br label %3704

3704:                                             ; preds = %3694, %3662
  br i1 %3607, label %3794, label %3705

3705:                                             ; preds = %3704
  %3706 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 5
  %3707 = load i16, ptr %3706, align 2, !tbaa !72
  %3708 = sext i16 %3707 to i64
  %3709 = getelementptr inbounds ptr, ptr %3510, i64 %3708
  %3710 = load ptr, ptr %3709, align 8, !tbaa !47
  %3711 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 4
  %3712 = load i16, ptr %3711, align 4, !tbaa !73
  %3713 = sext i16 %3712 to i64
  %3714 = getelementptr inbounds i16, ptr %3710, i64 %3713
  %3715 = load i16, ptr %3714, align 2, !tbaa !74
  %3716 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  store i16 %3715, ptr %3716, align 2, !tbaa !74
  %3717 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 1, i32 5
  %3718 = load i16, ptr %3717, align 2, !tbaa !72
  %3719 = sext i16 %3718 to i64
  %3720 = getelementptr inbounds ptr, ptr %3510, i64 %3719
  %3721 = load ptr, ptr %3720, align 8, !tbaa !47
  %3722 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 1, i32 4
  %3723 = load i16, ptr %3722, align 4, !tbaa !73
  %3724 = sext i16 %3723 to i64
  %3725 = getelementptr inbounds i16, ptr %3721, i64 %3724
  %3726 = load i16, ptr %3725, align 2, !tbaa !74
  %3727 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 18
  store i16 %3726, ptr %3727, align 4, !tbaa !74
  %3728 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 2, i32 5
  %3729 = load i16, ptr %3728, align 2, !tbaa !72
  %3730 = sext i16 %3729 to i64
  %3731 = getelementptr inbounds ptr, ptr %3510, i64 %3730
  %3732 = load ptr, ptr %3731, align 8, !tbaa !47
  %3733 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 2, i32 4
  %3734 = load i16, ptr %3733, align 4, !tbaa !73
  %3735 = sext i16 %3734 to i64
  %3736 = getelementptr inbounds i16, ptr %3732, i64 %3735
  %3737 = load i16, ptr %3736, align 2, !tbaa !74
  %3738 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 19
  store i16 %3737, ptr %3738, align 2, !tbaa !74
  %3739 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 3, i32 5
  %3740 = load i16, ptr %3739, align 2, !tbaa !72
  %3741 = sext i16 %3740 to i64
  %3742 = getelementptr inbounds ptr, ptr %3510, i64 %3741
  %3743 = load ptr, ptr %3742, align 8, !tbaa !47
  %3744 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 3, i32 4
  %3745 = load i16, ptr %3744, align 4, !tbaa !73
  %3746 = sext i16 %3745 to i64
  %3747 = getelementptr inbounds i16, ptr %3743, i64 %3746
  %3748 = load i16, ptr %3747, align 2, !tbaa !74
  %3749 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 20
  store i16 %3748, ptr %3749, align 8, !tbaa !74
  %3750 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 4, i32 5
  %3751 = load i16, ptr %3750, align 2, !tbaa !72
  %3752 = sext i16 %3751 to i64
  %3753 = getelementptr inbounds ptr, ptr %3510, i64 %3752
  %3754 = load ptr, ptr %3753, align 8, !tbaa !47
  %3755 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 4, i32 4
  %3756 = load i16, ptr %3755, align 4, !tbaa !73
  %3757 = sext i16 %3756 to i64
  %3758 = getelementptr inbounds i16, ptr %3754, i64 %3757
  %3759 = load i16, ptr %3758, align 2, !tbaa !74
  %3760 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 21
  store i16 %3759, ptr %3760, align 2, !tbaa !74
  %3761 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 5, i32 5
  %3762 = load i16, ptr %3761, align 2, !tbaa !72
  %3763 = sext i16 %3762 to i64
  %3764 = getelementptr inbounds ptr, ptr %3510, i64 %3763
  %3765 = load ptr, ptr %3764, align 8, !tbaa !47
  %3766 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 5, i32 4
  %3767 = load i16, ptr %3766, align 4, !tbaa !73
  %3768 = sext i16 %3767 to i64
  %3769 = getelementptr inbounds i16, ptr %3765, i64 %3768
  %3770 = load i16, ptr %3769, align 2, !tbaa !74
  %3771 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 22
  store i16 %3770, ptr %3771, align 4, !tbaa !74
  %3772 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 6, i32 5
  %3773 = load i16, ptr %3772, align 2, !tbaa !72
  %3774 = sext i16 %3773 to i64
  %3775 = getelementptr inbounds ptr, ptr %3510, i64 %3774
  %3776 = load ptr, ptr %3775, align 8, !tbaa !47
  %3777 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 6, i32 4
  %3778 = load i16, ptr %3777, align 4, !tbaa !73
  %3779 = sext i16 %3778 to i64
  %3780 = getelementptr inbounds i16, ptr %3776, i64 %3779
  %3781 = load i16, ptr %3780, align 2, !tbaa !74
  %3782 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 23
  store i16 %3781, ptr %3782, align 2, !tbaa !74
  %3783 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 7, i32 5
  %3784 = load i16, ptr %3783, align 2, !tbaa !72
  %3785 = sext i16 %3784 to i64
  %3786 = getelementptr inbounds ptr, ptr %3510, i64 %3785
  %3787 = load ptr, ptr %3786, align 8, !tbaa !47
  %3788 = getelementptr inbounds [8 x %struct.pix_pos], ptr %11, i64 0, i64 7, i32 4
  %3789 = load i16, ptr %3788, align 4, !tbaa !73
  %3790 = sext i16 %3789 to i64
  %3791 = getelementptr inbounds i16, ptr %3787, i64 %3790
  %3792 = load i16, ptr %3791, align 2, !tbaa !74
  %3793 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 24
  store i16 %3792, ptr %3793, align 16, !tbaa !74
  br label %3806

3794:                                             ; preds = %3704
  %3795 = getelementptr inbounds %struct.video_par, ptr %3496, i64 0, i32 69, i64 %3513
  %3796 = load i32, ptr %3795, align 4, !tbaa !75
  %3797 = trunc i32 %3796 to i16
  %3798 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 24
  store i16 %3797, ptr %3798, align 16, !tbaa !74
  %3799 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 23
  store i16 %3797, ptr %3799, align 2, !tbaa !74
  %3800 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 22
  store i16 %3797, ptr %3800, align 4, !tbaa !74
  %3801 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 21
  store i16 %3797, ptr %3801, align 2, !tbaa !74
  %3802 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 20
  store i16 %3797, ptr %3802, align 8, !tbaa !74
  %3803 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 19
  store i16 %3797, ptr %3803, align 2, !tbaa !74
  %3804 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 18
  store i16 %3797, ptr %3804, align 4, !tbaa !74
  %3805 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  store i16 %3797, ptr %3805, align 2, !tbaa !74
  br label %3806

3806:                                             ; preds = %3794, %3705
  %3807 = icmp eq i32 %3604, 0
  br i1 %3807, label %3819, label %3808

3808:                                             ; preds = %3806
  %3809 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 5
  %3810 = load i16, ptr %3809, align 2, !tbaa !72
  %3811 = sext i16 %3810 to i64
  %3812 = getelementptr inbounds ptr, ptr %3510, i64 %3811
  %3813 = load ptr, ptr %3812, align 8, !tbaa !47
  %3814 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 4
  %3815 = load i16, ptr %3814, align 4, !tbaa !73
  %3816 = sext i16 %3815 to i64
  %3817 = getelementptr inbounds i16, ptr %3813, i64 %3816
  %3818 = load i16, ptr %3817, align 2, !tbaa !74
  br label %3823

3819:                                             ; preds = %3806
  %3820 = getelementptr inbounds %struct.video_par, ptr %3496, i64 0, i32 69, i64 %3513
  %3821 = load i32, ptr %3820, align 4, !tbaa !75
  %3822 = trunc i32 %3821 to i16
  br label %3823

3823:                                             ; preds = %3808, %3819
  %3824 = phi i16 [ %3822, %3819 ], [ %3818, %3808 ]
  store i16 %3824, ptr %10, align 16, !tbaa !74
  %3825 = add nsw i32 %2, 7
  %3826 = add nsw i32 %2, 6
  %3827 = add nsw i32 %2, 5
  %3828 = add nsw i32 %2, 4
  %3829 = add nsw i32 %2, 3
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %10, i32 noundef %3604, i32 noundef %3606, i32 noundef %3605)
  %3830 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  %3831 = load i16, ptr %3830, align 2, !tbaa !74
  %3832 = zext i16 %3831 to i32
  %3833 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 18
  %3834 = load i16, ptr %3833, align 4, !tbaa !74
  %3835 = zext i16 %3834 to i32
  %3836 = add nuw nsw i32 %3835, 1
  %3837 = add nuw nsw i32 %3836, %3832
  %3838 = lshr i32 %3837, 1
  %3839 = trunc i32 %3838 to i16
  %3840 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 19
  %3841 = load i16, ptr %3840, align 2, !tbaa !74
  %3842 = zext i16 %3841 to i32
  %3843 = shl nuw nsw i32 %3835, 1
  %3844 = add nuw nsw i32 %3842, 2
  %3845 = add nuw nsw i32 %3844, %3832
  %3846 = add nuw nsw i32 %3845, %3843
  %3847 = lshr i32 %3846, 2
  %3848 = trunc i32 %3847 to i16
  %3849 = add nuw nsw i32 %3835, 1
  %3850 = add nuw nsw i32 %3849, %3842
  %3851 = lshr i32 %3850, 1
  %3852 = trunc i32 %3851 to i16
  %3853 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 20
  %3854 = load i16, ptr %3853, align 8, !tbaa !74
  %3855 = zext i16 %3854 to i32
  %3856 = shl nuw nsw i32 %3842, 1
  %3857 = add nuw nsw i32 %3855, 2
  %3858 = add nuw nsw i32 %3857, %3835
  %3859 = add nuw nsw i32 %3858, %3856
  %3860 = lshr i32 %3859, 2
  %3861 = trunc i32 %3860 to i16
  %3862 = add nuw nsw i32 %3842, 1
  %3863 = add nuw nsw i32 %3862, %3855
  %3864 = lshr i32 %3863, 1
  %3865 = trunc i32 %3864 to i16
  %3866 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 21
  %3867 = load i16, ptr %3866, align 2, !tbaa !74
  %3868 = zext i16 %3867 to i32
  %3869 = shl nuw nsw i32 %3855, 1
  %3870 = add nuw nsw i32 %3842, 2
  %3871 = add nuw nsw i32 %3870, %3868
  %3872 = add nuw nsw i32 %3871, %3869
  %3873 = lshr i32 %3872, 2
  %3874 = trunc i32 %3873 to i16
  %3875 = add nuw nsw i32 %3855, 1
  %3876 = add nuw nsw i32 %3875, %3868
  %3877 = lshr i32 %3876, 1
  %3878 = trunc i32 %3877 to i16
  %3879 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 22
  %3880 = load i16, ptr %3879, align 4, !tbaa !74
  %3881 = zext i16 %3880 to i32
  %3882 = shl nuw nsw i32 %3868, 1
  %3883 = add nuw nsw i32 %3855, 2
  %3884 = add nuw nsw i32 %3883, %3881
  %3885 = add nuw nsw i32 %3884, %3882
  %3886 = lshr i32 %3885, 2
  %3887 = trunc i32 %3886 to i16
  %3888 = add nuw nsw i32 %3868, 1
  %3889 = add nuw nsw i32 %3888, %3881
  %3890 = lshr i32 %3889, 1
  %3891 = trunc i32 %3890 to i16
  %3892 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 23
  %3893 = load i16, ptr %3892, align 2, !tbaa !74
  %3894 = zext i16 %3893 to i32
  %3895 = shl nuw nsw i32 %3881, 1
  %3896 = add nuw nsw i32 %3868, 2
  %3897 = add nuw nsw i32 %3896, %3894
  %3898 = add nuw nsw i32 %3897, %3895
  %3899 = lshr i32 %3898, 2
  %3900 = trunc i32 %3899 to i16
  %3901 = add nuw nsw i32 %3881, 1
  %3902 = add nuw nsw i32 %3901, %3894
  %3903 = lshr i32 %3902, 1
  %3904 = trunc i32 %3903 to i16
  %3905 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 24
  %3906 = load i16, ptr %3905, align 16, !tbaa !74
  %3907 = zext i16 %3906 to i32
  %3908 = shl nuw nsw i32 %3894, 1
  %3909 = add nuw nsw i32 %3881, 2
  %3910 = add nuw nsw i32 %3909, %3907
  %3911 = add nuw nsw i32 %3910, %3908
  %3912 = lshr i32 %3911, 2
  %3913 = trunc i32 %3912 to i16
  %3914 = add nuw nsw i32 %3894, 1
  %3915 = add nuw nsw i32 %3914, %3907
  %3916 = lshr i32 %3915, 1
  %3917 = trunc i32 %3916 to i16
  %3918 = mul nuw nsw i32 %3907, 3
  %3919 = add nuw nsw i32 %3894, 2
  %3920 = add nuw nsw i32 %3919, %3918
  %3921 = lshr i32 %3920, 2
  %3922 = trunc i32 %3921 to i16
  %3923 = sext i32 %3 to i64
  %3924 = getelementptr inbounds ptr, ptr %3515, i64 %3923
  %3925 = load ptr, ptr %3924, align 8, !tbaa !47
  %3926 = sext i32 %2 to i64
  %3927 = getelementptr inbounds i16, ptr %3925, i64 %3926
  store i16 %3839, ptr %3927, align 2
  %3928 = getelementptr inbounds i8, ptr %3927, i64 2
  store i16 %3848, ptr %3928, align 2
  %3929 = getelementptr inbounds i8, ptr %3927, i64 4
  store i16 %3852, ptr %3929, align 2
  %3930 = getelementptr inbounds i8, ptr %3927, i64 6
  store i16 %3861, ptr %3930, align 2
  %3931 = getelementptr inbounds i8, ptr %3927, i64 8
  store i16 %3865, ptr %3931, align 2
  %3932 = getelementptr inbounds i8, ptr %3927, i64 10
  store i16 %3874, ptr %3932, align 2
  %3933 = getelementptr inbounds i8, ptr %3927, i64 12
  store i16 %3878, ptr %3933, align 2
  %3934 = getelementptr inbounds i8, ptr %3927, i64 14
  store i16 %3887, ptr %3934, align 2
  %3935 = getelementptr ptr, ptr %3924, i64 1
  %3936 = load ptr, ptr %3935, align 8, !tbaa !47
  %3937 = getelementptr inbounds i16, ptr %3936, i64 %3926
  store i16 %3852, ptr %3937, align 2
  %3938 = getelementptr inbounds i8, ptr %3937, i64 2
  store i16 %3861, ptr %3938, align 2
  %3939 = getelementptr inbounds i8, ptr %3937, i64 4
  store i16 %3865, ptr %3939, align 2
  %3940 = getelementptr inbounds i8, ptr %3937, i64 6
  store i16 %3874, ptr %3940, align 2
  %3941 = getelementptr inbounds i8, ptr %3937, i64 8
  store i16 %3878, ptr %3941, align 2
  %3942 = getelementptr inbounds i8, ptr %3937, i64 10
  store i16 %3887, ptr %3942, align 2
  %3943 = getelementptr inbounds i8, ptr %3937, i64 12
  store i16 %3891, ptr %3943, align 2
  %3944 = getelementptr inbounds i8, ptr %3937, i64 14
  store i16 %3900, ptr %3944, align 2
  %3945 = getelementptr ptr, ptr %3924, i64 2
  %3946 = load ptr, ptr %3945, align 8, !tbaa !47
  %3947 = getelementptr inbounds i16, ptr %3946, i64 %3926
  store i16 %3865, ptr %3947, align 2
  %3948 = getelementptr inbounds i8, ptr %3947, i64 2
  store i16 %3874, ptr %3948, align 2
  %3949 = getelementptr inbounds i8, ptr %3947, i64 4
  store i16 %3878, ptr %3949, align 2
  %3950 = getelementptr inbounds i8, ptr %3947, i64 6
  store i16 %3887, ptr %3950, align 2
  %3951 = getelementptr inbounds i8, ptr %3947, i64 8
  store i16 %3891, ptr %3951, align 2
  %3952 = getelementptr inbounds i8, ptr %3947, i64 10
  store i16 %3900, ptr %3952, align 2
  %3953 = getelementptr inbounds i8, ptr %3947, i64 12
  store i16 %3904, ptr %3953, align 2
  %3954 = getelementptr inbounds i8, ptr %3947, i64 14
  store i16 %3913, ptr %3954, align 2
  %3955 = getelementptr ptr, ptr %3924, i64 3
  %3956 = load ptr, ptr %3955, align 8, !tbaa !47
  %3957 = getelementptr inbounds i16, ptr %3956, i64 %3926
  store i16 %3878, ptr %3957, align 2
  %3958 = getelementptr inbounds i8, ptr %3957, i64 2
  store i16 %3887, ptr %3958, align 2
  %3959 = getelementptr inbounds i8, ptr %3957, i64 4
  store i16 %3891, ptr %3959, align 2
  %3960 = getelementptr inbounds i8, ptr %3957, i64 6
  store i16 %3900, ptr %3960, align 2
  %3961 = getelementptr inbounds i8, ptr %3957, i64 8
  store i16 %3904, ptr %3961, align 2
  %3962 = getelementptr inbounds i8, ptr %3957, i64 10
  store i16 %3913, ptr %3962, align 2
  %3963 = getelementptr inbounds i8, ptr %3957, i64 12
  store i16 %3917, ptr %3963, align 2
  %3964 = getelementptr inbounds i8, ptr %3957, i64 14
  store i16 %3922, ptr %3964, align 2
  %3965 = getelementptr ptr, ptr %3924, i64 4
  %3966 = load ptr, ptr %3965, align 8, !tbaa !47
  %3967 = getelementptr inbounds i16, ptr %3966, i64 %3926
  store i16 %3891, ptr %3967, align 2
  %3968 = getelementptr inbounds i8, ptr %3967, i64 2
  store i16 %3900, ptr %3968, align 2
  %3969 = getelementptr inbounds i8, ptr %3967, i64 4
  store i16 %3904, ptr %3969, align 2
  %3970 = getelementptr inbounds i8, ptr %3967, i64 6
  store i16 %3913, ptr %3970, align 2
  %3971 = getelementptr inbounds i8, ptr %3967, i64 8
  store i16 %3917, ptr %3971, align 2
  %3972 = getelementptr inbounds i8, ptr %3967, i64 10
  store i16 %3922, ptr %3972, align 2
  %3973 = getelementptr inbounds i8, ptr %3967, i64 12
  store i16 %3906, ptr %3973, align 2
  %3974 = getelementptr ptr, ptr %3924, i64 5
  %3975 = load ptr, ptr %3974, align 8, !tbaa !47
  %3976 = getelementptr inbounds i16, ptr %3975, i64 %3926
  store i16 %3904, ptr %3976, align 2
  %3977 = getelementptr inbounds i8, ptr %3976, i64 2
  store i16 %3913, ptr %3977, align 2
  %3978 = getelementptr inbounds i8, ptr %3976, i64 4
  store i16 %3917, ptr %3978, align 2
  %3979 = getelementptr inbounds i8, ptr %3976, i64 6
  store i16 %3922, ptr %3979, align 2
  %3980 = getelementptr inbounds i8, ptr %3976, i64 8
  store i16 %3906, ptr %3980, align 2
  %3981 = getelementptr ptr, ptr %3924, i64 6
  %3982 = load ptr, ptr %3981, align 8, !tbaa !47
  %3983 = getelementptr inbounds i16, ptr %3982, i64 %3926
  store i16 %3917, ptr %3983, align 2
  %3984 = getelementptr inbounds i8, ptr %3983, i64 2
  store i16 %3922, ptr %3984, align 2
  %3985 = getelementptr inbounds i8, ptr %3983, i64 4
  store i16 %3906, ptr %3985, align 2
  %3986 = load ptr, ptr %3965, align 8, !tbaa !47
  %3987 = sext i32 %3825 to i64
  %3988 = getelementptr inbounds i16, ptr %3986, i64 %3987
  store i16 %3906, ptr %3988, align 2, !tbaa !74
  %3989 = load ptr, ptr %3974, align 8, !tbaa !47
  %3990 = getelementptr inbounds i16, ptr %3989, i64 %3987
  store i16 %3906, ptr %3990, align 2, !tbaa !74
  %3991 = sext i32 %3826 to i64
  %3992 = getelementptr inbounds i16, ptr %3989, i64 %3991
  store i16 %3906, ptr %3992, align 2, !tbaa !74
  %3993 = sext i32 %3827 to i64
  %3994 = getelementptr inbounds i16, ptr %3989, i64 %3993
  store i16 %3906, ptr %3994, align 2, !tbaa !74
  %3995 = load ptr, ptr %3981, align 8, !tbaa !47
  %3996 = getelementptr inbounds i16, ptr %3995, i64 %3987
  store i16 %3906, ptr %3996, align 2, !tbaa !74
  %3997 = getelementptr inbounds i16, ptr %3995, i64 %3991
  store i16 %3906, ptr %3997, align 2, !tbaa !74
  %3998 = getelementptr inbounds i16, ptr %3995, i64 %3993
  store i16 %3906, ptr %3998, align 2, !tbaa !74
  %3999 = sext i32 %3828 to i64
  %4000 = getelementptr inbounds i16, ptr %3995, i64 %3999
  store i16 %3906, ptr %4000, align 2, !tbaa !74
  %4001 = sext i32 %3829 to i64
  %4002 = getelementptr inbounds i16, ptr %3995, i64 %4001
  store i16 %3906, ptr %4002, align 2, !tbaa !74
  %4003 = getelementptr ptr, ptr %3924, i64 7
  %4004 = load ptr, ptr %4003, align 8, !tbaa !47
  %4005 = getelementptr inbounds i16, ptr %4004, i64 %3987
  store i16 %3906, ptr %4005, align 2, !tbaa !74
  %4006 = getelementptr inbounds i16, ptr %4004, i64 %3991
  store i16 %3906, ptr %4006, align 2, !tbaa !74
  %4007 = getelementptr inbounds i16, ptr %4004, i64 %3993
  store i16 %3906, ptr %4007, align 2, !tbaa !74
  %4008 = getelementptr inbounds i16, ptr %4004, i64 %3999
  store i16 %3906, ptr %4008, align 2, !tbaa !74
  %4009 = getelementptr inbounds i16, ptr %4004, i64 %4001
  store i16 %3906, ptr %4009, align 2, !tbaa !74
  %4010 = getelementptr i16, ptr %4004, i64 %3926
  %4011 = getelementptr i16, ptr %4010, i64 2
  store i16 %3906, ptr %4011, align 2, !tbaa !74
  %4012 = getelementptr i16, ptr %4010, i64 1
  store i16 %3906, ptr %4012, align 2, !tbaa !74
  store i16 %3906, ptr %4010, align 2, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %10) #6
  br label %4594

4013:                                             ; preds = %4
  %4014 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4015 = load ptr, ptr %4014, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #6
  %4016 = icmp eq i32 %1, 0
  %4017 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %4018 = load ptr, ptr %4017, align 8, !tbaa !51
  br i1 %4016, label %4025, label %4019

4019:                                             ; preds = %4013
  %4020 = getelementptr inbounds %struct.storable_picture, ptr %4018, i64 0, i32 33
  %4021 = load ptr, ptr %4020, align 8, !tbaa !52
  %4022 = add i32 %1, -1
  %4023 = zext i32 %4022 to i64
  %4024 = getelementptr inbounds ptr, ptr %4021, i64 %4023
  br label %4027

4025:                                             ; preds = %4013
  %4026 = getelementptr inbounds %struct.storable_picture, ptr %4018, i64 0, i32 32
  br label %4027

4027:                                             ; preds = %4025, %4019
  %4028 = phi ptr [ %4024, %4019 ], [ %4026, %4025 ]
  %4029 = load ptr, ptr %4028, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  %4030 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %4031 = load ptr, ptr %4030, align 8, !tbaa !55
  %4032 = zext i32 %1 to i64
  %4033 = getelementptr inbounds ptr, ptr %4031, i64 %4032
  %4034 = load ptr, ptr %4033, align 8, !tbaa !47
  %4035 = getelementptr inbounds %struct.video_par, ptr %4015, i64 0, i32 81
  %4036 = add nsw i32 %2, -1
  br label %4037

4037:                                             ; preds = %4027, %4037
  %4038 = phi i64 [ 0, %4027 ], [ %4042, %4037 ]
  %4039 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %4038
  %4040 = trunc i64 %4038 to i32
  %4041 = add i32 %4040, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %4036, i32 noundef %4041, ptr noundef nonnull %4035, ptr noundef nonnull %4039) #6
  %4042 = add nuw nsw i64 %4038, 1
  %4043 = icmp eq i64 %4042, 8
  br i1 %4043, label %4044, label %4037, !llvm.loop !97

4044:                                             ; preds = %4037
  %4045 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %4045, ptr noundef nonnull %4035, ptr noundef nonnull %7) #6
  %4046 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %4046, i32 noundef %4045, ptr noundef nonnull %4035, ptr noundef nonnull %8) #6
  %4047 = add nsw i32 %2, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %4047, i32 noundef %4045, ptr noundef nonnull %4035, ptr noundef nonnull %9) #6
  %4048 = load i32, ptr %8, align 4, !tbaa !59
  %4049 = icmp ne i32 %4048, 0
  %4050 = icmp ne i32 %2, 8
  %4051 = icmp ne i32 %3, 8
  %4052 = or i1 %4050, %4051
  %4053 = and i1 %4052, %4049
  %4054 = zext i1 %4053 to i32
  store i32 %4054, ptr %8, align 4, !tbaa !59
  %4055 = getelementptr inbounds %struct.video_par, ptr %4015, i64 0, i32 1
  %4056 = load ptr, ptr %4055, align 8, !tbaa !61
  %4057 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4056, i64 0, i32 30
  %4058 = load i32, ptr %4057, align 4, !tbaa !67
  %4059 = icmp eq i32 %4058, 0
  br i1 %4059, label %4117, label %4060

4060:                                             ; preds = %4044
  %4061 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  br label %4062

4062:                                             ; preds = %4060, %4076
  %4063 = phi i64 [ 0, %4060 ], [ %4079, %4076 ]
  %4064 = phi i32 [ 1, %4060 ], [ %4078, %4076 ]
  %4065 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %4063
  %4066 = load i32, ptr %4065, align 16, !tbaa !59
  %4067 = icmp eq i32 %4066, 0
  br i1 %4067, label %4076, label %4068

4068:                                             ; preds = %4062
  %4069 = load ptr, ptr %4061, align 8, !tbaa !69
  %4070 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %4063, i32 1
  %4071 = load i32, ptr %4070, align 4, !tbaa !70
  %4072 = sext i32 %4071 to i64
  %4073 = getelementptr inbounds i8, ptr %4069, i64 %4072
  %4074 = load i8, ptr %4073, align 1, !tbaa !48
  %4075 = sext i8 %4074 to i32
  br label %4076

4076:                                             ; preds = %4068, %4062
  %4077 = phi i32 [ %4075, %4068 ], [ 0, %4062 ]
  %4078 = and i32 %4077, %4064
  %4079 = add nuw nsw i64 %4063, 1
  %4080 = icmp eq i64 %4079, 8
  br i1 %4080, label %4081, label %4062, !llvm.loop !98

4081:                                             ; preds = %4076
  %4082 = load i32, ptr %7, align 4, !tbaa !59
  %4083 = icmp eq i32 %4082, 0
  br i1 %4083, label %4093, label %4084

4084:                                             ; preds = %4081
  %4085 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %4086 = load ptr, ptr %4085, align 8, !tbaa !69
  %4087 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %4088 = load i32, ptr %4087, align 4, !tbaa !70
  %4089 = sext i32 %4088 to i64
  %4090 = getelementptr inbounds i8, ptr %4086, i64 %4089
  %4091 = load i8, ptr %4090, align 1, !tbaa !48
  %4092 = sext i8 %4091 to i32
  br label %4093

4093:                                             ; preds = %4084, %4081
  %4094 = phi i32 [ %4092, %4084 ], [ 0, %4081 ]
  br i1 %4053, label %4095, label %4104

4095:                                             ; preds = %4093
  %4096 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %4097 = load ptr, ptr %4096, align 8, !tbaa !69
  %4098 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %4099 = load i32, ptr %4098, align 4, !tbaa !70
  %4100 = sext i32 %4099 to i64
  %4101 = getelementptr inbounds i8, ptr %4097, i64 %4100
  %4102 = load i8, ptr %4101, align 1, !tbaa !48
  %4103 = sext i8 %4102 to i32
  br label %4104

4104:                                             ; preds = %4095, %4093
  %4105 = phi i32 [ %4103, %4095 ], [ 0, %4093 ]
  %4106 = load i32, ptr %9, align 4, !tbaa !59
  %4107 = icmp eq i32 %4106, 0
  br i1 %4107, label %4121, label %4108

4108:                                             ; preds = %4104
  %4109 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %4110 = load ptr, ptr %4109, align 8, !tbaa !69
  %4111 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %4112 = load i32, ptr %4111, align 4, !tbaa !70
  %4113 = sext i32 %4112 to i64
  %4114 = getelementptr inbounds i8, ptr %4110, i64 %4113
  %4115 = load i8, ptr %4114, align 1, !tbaa !48
  %4116 = sext i8 %4115 to i32
  br label %4121

4117:                                             ; preds = %4044
  %4118 = load i32, ptr %6, align 16, !tbaa !59
  %4119 = load i32, ptr %7, align 4, !tbaa !59
  %4120 = load i32, ptr %9, align 4, !tbaa !59
  br label %4121

4121:                                             ; preds = %4117, %4108, %4104
  %4122 = phi i32 [ %4054, %4117 ], [ %4105, %4104 ], [ %4105, %4108 ]
  %4123 = phi i32 [ %4120, %4117 ], [ 0, %4104 ], [ %4116, %4108 ]
  %4124 = phi i32 [ %4118, %4117 ], [ %4078, %4104 ], [ %4078, %4108 ]
  %4125 = phi i32 [ %4119, %4117 ], [ %4094, %4104 ], [ %4094, %4108 ]
  %4126 = icmp ne i32 %4125, 0
  %4127 = icmp ne i32 %4124, 0
  %4128 = select i1 %4126, i1 %4127, i1 false
  %4129 = icmp ne i32 %4123, 0
  %4130 = select i1 %4128, i1 %4129, i1 false
  br i1 %4130, label %4135, label %4131

4131:                                             ; preds = %4121
  %4132 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %4133 = load i32, ptr %4132, align 4, !tbaa !80
  %4134 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %4133)
  br label %4135

4135:                                             ; preds = %4131, %4121
  br i1 %4126, label %4136, label %4169

4136:                                             ; preds = %4135
  %4137 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %4138 = load i16, ptr %4137, align 2, !tbaa !72
  %4139 = sext i16 %4138 to i64
  %4140 = getelementptr inbounds ptr, ptr %4029, i64 %4139
  %4141 = load ptr, ptr %4140, align 8, !tbaa !47
  %4142 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %4143 = load i16, ptr %4142, align 4, !tbaa !73
  %4144 = sext i16 %4143 to i64
  %4145 = getelementptr inbounds i16, ptr %4141, i64 %4144
  %4146 = load i16, ptr %4145, align 2, !tbaa !74
  %4147 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %4146, ptr %4147, align 2, !tbaa !74
  %4148 = getelementptr inbounds i16, ptr %4145, i64 1
  %4149 = load i16, ptr %4148, align 2, !tbaa !74
  %4150 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %4149, ptr %4150, align 4, !tbaa !74
  %4151 = getelementptr inbounds i16, ptr %4145, i64 2
  %4152 = load i16, ptr %4151, align 2, !tbaa !74
  %4153 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %4152, ptr %4153, align 2, !tbaa !74
  %4154 = getelementptr inbounds i16, ptr %4145, i64 3
  %4155 = load i16, ptr %4154, align 2, !tbaa !74
  %4156 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %4155, ptr %4156, align 8, !tbaa !74
  %4157 = getelementptr inbounds i16, ptr %4145, i64 4
  %4158 = load i16, ptr %4157, align 2, !tbaa !74
  %4159 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %4158, ptr %4159, align 2, !tbaa !74
  %4160 = getelementptr inbounds i16, ptr %4145, i64 5
  %4161 = load i16, ptr %4160, align 2, !tbaa !74
  %4162 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %4161, ptr %4162, align 4, !tbaa !74
  %4163 = getelementptr inbounds i16, ptr %4145, i64 6
  %4164 = load i16, ptr %4163, align 2, !tbaa !74
  %4165 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %4164, ptr %4165, align 2, !tbaa !74
  %4166 = getelementptr inbounds i16, ptr %4145, i64 7
  %4167 = load i16, ptr %4166, align 2, !tbaa !74
  %4168 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %4167, ptr %4168, align 16, !tbaa !74
  br label %4181

4169:                                             ; preds = %4135
  %4170 = getelementptr inbounds %struct.video_par, ptr %4015, i64 0, i32 69, i64 %4032
  %4171 = load i32, ptr %4170, align 4, !tbaa !75
  %4172 = trunc i32 %4171 to i16
  %4173 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %4172, ptr %4173, align 16, !tbaa !74
  %4174 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %4172, ptr %4174, align 2, !tbaa !74
  %4175 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %4172, ptr %4175, align 4, !tbaa !74
  %4176 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %4172, ptr %4176, align 2, !tbaa !74
  %4177 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %4172, ptr %4177, align 8, !tbaa !74
  %4178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %4172, ptr %4178, align 2, !tbaa !74
  %4179 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %4172, ptr %4179, align 4, !tbaa !74
  %4180 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %4172, ptr %4180, align 2, !tbaa !74
  br label %4181

4181:                                             ; preds = %4169, %4136
  %4182 = icmp eq i32 %4122, 0
  %4183 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  br i1 %4182, label %4216, label %4184

4184:                                             ; preds = %4181
  %4185 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %4186 = load i16, ptr %4185, align 2, !tbaa !72
  %4187 = sext i16 %4186 to i64
  %4188 = getelementptr inbounds ptr, ptr %4029, i64 %4187
  %4189 = load ptr, ptr %4188, align 8, !tbaa !47
  %4190 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %4191 = load i16, ptr %4190, align 4, !tbaa !73
  %4192 = sext i16 %4191 to i64
  %4193 = getelementptr inbounds i16, ptr %4189, i64 %4192
  %4194 = load i16, ptr %4193, align 2, !tbaa !74
  %4195 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %4194, ptr %4195, align 2, !tbaa !74
  %4196 = getelementptr inbounds i16, ptr %4193, i64 1
  %4197 = load i16, ptr %4196, align 2, !tbaa !74
  store i16 %4197, ptr %4183, align 4, !tbaa !74
  %4198 = getelementptr inbounds i16, ptr %4193, i64 2
  %4199 = load i16, ptr %4198, align 2, !tbaa !74
  %4200 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %4199, ptr %4200, align 2, !tbaa !74
  %4201 = getelementptr inbounds i16, ptr %4193, i64 3
  %4202 = load i16, ptr %4201, align 2, !tbaa !74
  %4203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %4202, ptr %4203, align 8, !tbaa !74
  %4204 = getelementptr inbounds i16, ptr %4193, i64 4
  %4205 = load i16, ptr %4204, align 2, !tbaa !74
  %4206 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %4205, ptr %4206, align 2, !tbaa !74
  %4207 = getelementptr inbounds i16, ptr %4193, i64 5
  %4208 = load i16, ptr %4207, align 2, !tbaa !74
  %4209 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %4208, ptr %4209, align 4, !tbaa !74
  %4210 = getelementptr inbounds i16, ptr %4193, i64 6
  %4211 = load i16, ptr %4210, align 2, !tbaa !74
  %4212 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %4211, ptr %4212, align 2, !tbaa !74
  %4213 = getelementptr inbounds i16, ptr %4193, i64 7
  %4214 = load i16, ptr %4213, align 2, !tbaa !74
  %4215 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %4214, ptr %4215, align 16, !tbaa !74
  br label %4226

4216:                                             ; preds = %4181
  %4217 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  %4218 = load i16, ptr %4217, align 16, !tbaa !74
  %4219 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %4218, ptr %4219, align 16, !tbaa !74
  %4220 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %4218, ptr %4220, align 2, !tbaa !74
  %4221 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %4218, ptr %4221, align 4, !tbaa !74
  %4222 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %4218, ptr %4222, align 2, !tbaa !74
  %4223 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %4218, ptr %4223, align 8, !tbaa !74
  %4224 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %4218, ptr %4224, align 2, !tbaa !74
  store i16 %4218, ptr %4183, align 4, !tbaa !74
  %4225 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %4218, ptr %4225, align 2, !tbaa !74
  br label %4226

4226:                                             ; preds = %4216, %4184
  br i1 %4127, label %4227, label %4316

4227:                                             ; preds = %4226
  %4228 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %4229 = load i16, ptr %4228, align 2, !tbaa !72
  %4230 = sext i16 %4229 to i64
  %4231 = getelementptr inbounds ptr, ptr %4029, i64 %4230
  %4232 = load ptr, ptr %4231, align 8, !tbaa !47
  %4233 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %4234 = load i16, ptr %4233, align 4, !tbaa !73
  %4235 = sext i16 %4234 to i64
  %4236 = getelementptr inbounds i16, ptr %4232, i64 %4235
  %4237 = load i16, ptr %4236, align 2, !tbaa !74
  %4238 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %4237, ptr %4238, align 2, !tbaa !74
  %4239 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %4240 = load i16, ptr %4239, align 2, !tbaa !72
  %4241 = sext i16 %4240 to i64
  %4242 = getelementptr inbounds ptr, ptr %4029, i64 %4241
  %4243 = load ptr, ptr %4242, align 8, !tbaa !47
  %4244 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %4245 = load i16, ptr %4244, align 4, !tbaa !73
  %4246 = sext i16 %4245 to i64
  %4247 = getelementptr inbounds i16, ptr %4243, i64 %4246
  %4248 = load i16, ptr %4247, align 2, !tbaa !74
  %4249 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %4248, ptr %4249, align 4, !tbaa !74
  %4250 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %4251 = load i16, ptr %4250, align 2, !tbaa !72
  %4252 = sext i16 %4251 to i64
  %4253 = getelementptr inbounds ptr, ptr %4029, i64 %4252
  %4254 = load ptr, ptr %4253, align 8, !tbaa !47
  %4255 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %4256 = load i16, ptr %4255, align 4, !tbaa !73
  %4257 = sext i16 %4256 to i64
  %4258 = getelementptr inbounds i16, ptr %4254, i64 %4257
  %4259 = load i16, ptr %4258, align 2, !tbaa !74
  %4260 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %4259, ptr %4260, align 2, !tbaa !74
  %4261 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %4262 = load i16, ptr %4261, align 2, !tbaa !72
  %4263 = sext i16 %4262 to i64
  %4264 = getelementptr inbounds ptr, ptr %4029, i64 %4263
  %4265 = load ptr, ptr %4264, align 8, !tbaa !47
  %4266 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %4267 = load i16, ptr %4266, align 4, !tbaa !73
  %4268 = sext i16 %4267 to i64
  %4269 = getelementptr inbounds i16, ptr %4265, i64 %4268
  %4270 = load i16, ptr %4269, align 2, !tbaa !74
  %4271 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %4270, ptr %4271, align 8, !tbaa !74
  %4272 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %4273 = load i16, ptr %4272, align 2, !tbaa !72
  %4274 = sext i16 %4273 to i64
  %4275 = getelementptr inbounds ptr, ptr %4029, i64 %4274
  %4276 = load ptr, ptr %4275, align 8, !tbaa !47
  %4277 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %4278 = load i16, ptr %4277, align 4, !tbaa !73
  %4279 = sext i16 %4278 to i64
  %4280 = getelementptr inbounds i16, ptr %4276, i64 %4279
  %4281 = load i16, ptr %4280, align 2, !tbaa !74
  %4282 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %4281, ptr %4282, align 2, !tbaa !74
  %4283 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %4284 = load i16, ptr %4283, align 2, !tbaa !72
  %4285 = sext i16 %4284 to i64
  %4286 = getelementptr inbounds ptr, ptr %4029, i64 %4285
  %4287 = load ptr, ptr %4286, align 8, !tbaa !47
  %4288 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %4289 = load i16, ptr %4288, align 4, !tbaa !73
  %4290 = sext i16 %4289 to i64
  %4291 = getelementptr inbounds i16, ptr %4287, i64 %4290
  %4292 = load i16, ptr %4291, align 2, !tbaa !74
  %4293 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %4292, ptr %4293, align 4, !tbaa !74
  %4294 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %4295 = load i16, ptr %4294, align 2, !tbaa !72
  %4296 = sext i16 %4295 to i64
  %4297 = getelementptr inbounds ptr, ptr %4029, i64 %4296
  %4298 = load ptr, ptr %4297, align 8, !tbaa !47
  %4299 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %4300 = load i16, ptr %4299, align 4, !tbaa !73
  %4301 = sext i16 %4300 to i64
  %4302 = getelementptr inbounds i16, ptr %4298, i64 %4301
  %4303 = load i16, ptr %4302, align 2, !tbaa !74
  %4304 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %4303, ptr %4304, align 2, !tbaa !74
  %4305 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %4306 = load i16, ptr %4305, align 2, !tbaa !72
  %4307 = sext i16 %4306 to i64
  %4308 = getelementptr inbounds ptr, ptr %4029, i64 %4307
  %4309 = load ptr, ptr %4308, align 8, !tbaa !47
  %4310 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %4311 = load i16, ptr %4310, align 4, !tbaa !73
  %4312 = sext i16 %4311 to i64
  %4313 = getelementptr inbounds i16, ptr %4309, i64 %4312
  %4314 = load i16, ptr %4313, align 2, !tbaa !74
  %4315 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %4314, ptr %4315, align 16, !tbaa !74
  br label %4328

4316:                                             ; preds = %4226
  %4317 = getelementptr inbounds %struct.video_par, ptr %4015, i64 0, i32 69, i64 %4032
  %4318 = load i32, ptr %4317, align 4, !tbaa !75
  %4319 = trunc i32 %4318 to i16
  %4320 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %4319, ptr %4320, align 16, !tbaa !74
  %4321 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %4319, ptr %4321, align 2, !tbaa !74
  %4322 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %4319, ptr %4322, align 4, !tbaa !74
  %4323 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %4319, ptr %4323, align 2, !tbaa !74
  %4324 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %4319, ptr %4324, align 8, !tbaa !74
  %4325 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %4319, ptr %4325, align 2, !tbaa !74
  %4326 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %4319, ptr %4326, align 4, !tbaa !74
  %4327 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %4319, ptr %4327, align 2, !tbaa !74
  br label %4328

4328:                                             ; preds = %4316, %4227
  br i1 %4129, label %4329, label %4340

4329:                                             ; preds = %4328
  %4330 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %4331 = load i16, ptr %4330, align 2, !tbaa !72
  %4332 = sext i16 %4331 to i64
  %4333 = getelementptr inbounds ptr, ptr %4029, i64 %4332
  %4334 = load ptr, ptr %4333, align 8, !tbaa !47
  %4335 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %4336 = load i16, ptr %4335, align 4, !tbaa !73
  %4337 = sext i16 %4336 to i64
  %4338 = getelementptr inbounds i16, ptr %4334, i64 %4337
  %4339 = load i16, ptr %4338, align 2, !tbaa !74
  br label %4344

4340:                                             ; preds = %4328
  %4341 = getelementptr inbounds %struct.video_par, ptr %4015, i64 0, i32 69, i64 %4032
  %4342 = load i32, ptr %4341, align 4, !tbaa !75
  %4343 = trunc i32 %4342 to i16
  br label %4344

4344:                                             ; preds = %4329, %4340
  %4345 = phi i16 [ %4343, %4340 ], [ %4339, %4329 ]
  store i16 %4345, ptr %5, align 16, !tbaa !74
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %4123, i32 noundef %4125, i32 noundef %4124)
  %4346 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  %4347 = load i16, ptr %4346, align 16, !tbaa !74
  %4348 = zext i16 %4347 to i32
  %4349 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %4350 = load i16, ptr %4349, align 2, !tbaa !74
  %4351 = zext i16 %4350 to i32
  %4352 = add nuw nsw i32 %4351, 1
  %4353 = add nuw nsw i32 %4352, %4348
  %4354 = lshr i32 %4353, 1
  %4355 = trunc i32 %4354 to i16
  %4356 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %4357 = load i16, ptr %4356, align 4, !tbaa !74
  %4358 = zext i16 %4357 to i32
  %4359 = shl nuw nsw i32 %4351, 1
  %4360 = add nuw nsw i32 %4358, 2
  %4361 = add nuw nsw i32 %4360, %4348
  %4362 = add nuw nsw i32 %4361, %4359
  %4363 = lshr i32 %4362, 2
  %4364 = trunc i32 %4363 to i16
  %4365 = add nuw nsw i32 %4351, 1
  %4366 = add nuw nsw i32 %4365, %4358
  %4367 = lshr i32 %4366, 1
  %4368 = trunc i32 %4367 to i16
  %4369 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %4370 = load i16, ptr %4369, align 2, !tbaa !74
  %4371 = zext i16 %4370 to i32
  %4372 = shl nuw nsw i32 %4358, 1
  %4373 = add nuw nsw i32 %4371, 2
  %4374 = add nuw nsw i32 %4373, %4351
  %4375 = add nuw nsw i32 %4374, %4372
  %4376 = lshr i32 %4375, 2
  %4377 = trunc i32 %4376 to i16
  %4378 = add nuw nsw i32 %4358, 1
  %4379 = add nuw nsw i32 %4378, %4371
  %4380 = lshr i32 %4379, 1
  %4381 = trunc i32 %4380 to i16
  %4382 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %4383 = load i16, ptr %4382, align 8, !tbaa !74
  %4384 = zext i16 %4383 to i32
  %4385 = shl nuw nsw i32 %4371, 1
  %4386 = add nuw nsw i32 %4358, 2
  %4387 = add nuw nsw i32 %4386, %4384
  %4388 = add nuw nsw i32 %4387, %4385
  %4389 = lshr i32 %4388, 2
  %4390 = trunc i32 %4389 to i16
  %4391 = add nuw nsw i32 %4371, 1
  %4392 = add nuw nsw i32 %4391, %4384
  %4393 = lshr i32 %4392, 1
  %4394 = trunc i32 %4393 to i16
  %4395 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %4396 = load i16, ptr %4395, align 2, !tbaa !74
  %4397 = zext i16 %4396 to i32
  %4398 = shl nuw nsw i32 %4384, 1
  %4399 = add nuw nsw i32 %4371, 2
  %4400 = add nuw nsw i32 %4399, %4397
  %4401 = add nuw nsw i32 %4400, %4398
  %4402 = lshr i32 %4401, 2
  %4403 = trunc i32 %4402 to i16
  %4404 = add nuw nsw i32 %4384, 1
  %4405 = add nuw nsw i32 %4404, %4397
  %4406 = lshr i32 %4405, 1
  %4407 = trunc i32 %4406 to i16
  %4408 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %4409 = load i16, ptr %4408, align 4, !tbaa !74
  %4410 = zext i16 %4409 to i32
  %4411 = shl nuw nsw i32 %4397, 1
  %4412 = add nuw nsw i32 %4384, 2
  %4413 = add nuw nsw i32 %4412, %4410
  %4414 = add nuw nsw i32 %4413, %4411
  %4415 = lshr i32 %4414, 2
  %4416 = trunc i32 %4415 to i16
  %4417 = add nuw nsw i32 %4397, 1
  %4418 = add nuw nsw i32 %4417, %4410
  %4419 = lshr i32 %4418, 1
  %4420 = trunc i32 %4419 to i16
  %4421 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %4422 = load i16, ptr %4421, align 2, !tbaa !74
  %4423 = zext i16 %4422 to i32
  %4424 = shl nuw nsw i32 %4410, 1
  %4425 = add nuw nsw i32 %4397, 2
  %4426 = add nuw nsw i32 %4425, %4423
  %4427 = add nuw nsw i32 %4426, %4424
  %4428 = lshr i32 %4427, 2
  %4429 = trunc i32 %4428 to i16
  %4430 = add nuw nsw i32 %4410, 1
  %4431 = add nuw nsw i32 %4430, %4423
  %4432 = lshr i32 %4431, 1
  %4433 = trunc i32 %4432 to i16
  %4434 = load i16, ptr %5, align 16, !tbaa !74
  %4435 = zext i16 %4434 to i32
  %4436 = shl nuw nsw i32 %4423, 1
  %4437 = add nuw nsw i32 %4410, 2
  %4438 = add nuw nsw i32 %4437, %4435
  %4439 = add nuw nsw i32 %4438, %4436
  %4440 = lshr i32 %4439, 2
  %4441 = trunc i32 %4440 to i16
  %4442 = add nuw nsw i32 %4423, 1
  %4443 = add nuw nsw i32 %4442, %4435
  %4444 = lshr i32 %4443, 1
  %4445 = trunc i32 %4444 to i16
  %4446 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %4447 = load i16, ptr %4446, align 2, !tbaa !74
  %4448 = zext i16 %4447 to i32
  %4449 = shl nuw nsw i32 %4435, 1
  %4450 = add nuw nsw i32 %4423, 2
  %4451 = add nuw nsw i32 %4450, %4448
  %4452 = add nuw nsw i32 %4451, %4449
  %4453 = lshr i32 %4452, 2
  %4454 = trunc i32 %4453 to i16
  %4455 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %4456 = load i16, ptr %4455, align 4, !tbaa !74
  %4457 = zext i16 %4456 to i32
  %4458 = shl nuw nsw i32 %4448, 1
  %4459 = add nuw nsw i32 %4435, 2
  %4460 = add nuw nsw i32 %4459, %4457
  %4461 = add nuw nsw i32 %4460, %4458
  %4462 = lshr i32 %4461, 2
  %4463 = trunc i32 %4462 to i16
  %4464 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %4465 = load i16, ptr %4464, align 2, !tbaa !74
  %4466 = zext i16 %4465 to i32
  %4467 = shl nuw nsw i32 %4457, 1
  %4468 = add nuw nsw i32 %4448, 2
  %4469 = add nuw nsw i32 %4468, %4466
  %4470 = add nuw nsw i32 %4469, %4467
  %4471 = lshr i32 %4470, 2
  %4472 = trunc i32 %4471 to i16
  %4473 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  %4474 = load i16, ptr %4473, align 8, !tbaa !74
  %4475 = zext i16 %4474 to i32
  %4476 = shl nuw nsw i32 %4466, 1
  %4477 = add nuw nsw i32 %4457, 2
  %4478 = add nuw nsw i32 %4477, %4475
  %4479 = add nuw nsw i32 %4478, %4476
  %4480 = lshr i32 %4479, 2
  %4481 = trunc i32 %4480 to i16
  %4482 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  %4483 = load i16, ptr %4482, align 2, !tbaa !74
  %4484 = zext i16 %4483 to i32
  %4485 = shl nuw nsw i32 %4475, 1
  %4486 = add nuw nsw i32 %4466, 2
  %4487 = add nuw nsw i32 %4486, %4484
  %4488 = add nuw nsw i32 %4487, %4485
  %4489 = lshr i32 %4488, 2
  %4490 = trunc i32 %4489 to i16
  %4491 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  %4492 = load i16, ptr %4491, align 4, !tbaa !74
  %4493 = zext i16 %4492 to i32
  %4494 = shl nuw nsw i32 %4484, 1
  %4495 = add nuw nsw i32 %4475, 2
  %4496 = add nuw nsw i32 %4495, %4493
  %4497 = add nuw nsw i32 %4496, %4494
  %4498 = lshr i32 %4497, 2
  %4499 = trunc i32 %4498 to i16
  %4500 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %4501 = load i16, ptr %4500, align 2, !tbaa !74
  %4502 = zext i16 %4501 to i32
  %4503 = shl nuw nsw i32 %4493, 1
  %4504 = add nuw nsw i32 %4484, 2
  %4505 = add nuw nsw i32 %4504, %4502
  %4506 = add nuw nsw i32 %4505, %4503
  %4507 = lshr i32 %4506, 2
  %4508 = trunc i32 %4507 to i16
  %4509 = sext i32 %3 to i64
  %4510 = getelementptr inbounds ptr, ptr %4034, i64 %4509
  %4511 = load ptr, ptr %4510, align 8, !tbaa !47
  %4512 = sext i32 %2 to i64
  %4513 = getelementptr inbounds i16, ptr %4511, i64 %4512
  store i16 %4445, ptr %4513, align 2
  %4514 = getelementptr inbounds i8, ptr %4513, i64 2
  store i16 %4454, ptr %4514, align 2
  %4515 = getelementptr inbounds i8, ptr %4513, i64 4
  store i16 %4463, ptr %4515, align 2
  %4516 = getelementptr inbounds i8, ptr %4513, i64 6
  store i16 %4472, ptr %4516, align 2
  %4517 = getelementptr inbounds i8, ptr %4513, i64 8
  store i16 %4481, ptr %4517, align 2
  %4518 = getelementptr inbounds i8, ptr %4513, i64 10
  store i16 %4490, ptr %4518, align 2
  %4519 = getelementptr inbounds i8, ptr %4513, i64 12
  store i16 %4499, ptr %4519, align 2
  %4520 = getelementptr inbounds i8, ptr %4513, i64 14
  store i16 %4508, ptr %4520, align 2
  %4521 = getelementptr ptr, ptr %4510, i64 1
  %4522 = load ptr, ptr %4521, align 8, !tbaa !47
  %4523 = getelementptr inbounds i16, ptr %4522, i64 %4512
  store i16 %4433, ptr %4523, align 2
  %4524 = getelementptr inbounds i8, ptr %4523, i64 2
  store i16 %4441, ptr %4524, align 2
  %4525 = getelementptr inbounds i8, ptr %4523, i64 4
  store i16 %4445, ptr %4525, align 2
  %4526 = getelementptr inbounds i8, ptr %4523, i64 6
  store i16 %4454, ptr %4526, align 2
  %4527 = getelementptr inbounds i8, ptr %4523, i64 8
  store i16 %4463, ptr %4527, align 2
  %4528 = getelementptr inbounds i8, ptr %4523, i64 10
  store i16 %4472, ptr %4528, align 2
  %4529 = getelementptr inbounds i8, ptr %4523, i64 12
  store i16 %4481, ptr %4529, align 2
  %4530 = getelementptr inbounds i8, ptr %4523, i64 14
  store i16 %4490, ptr %4530, align 2
  %4531 = getelementptr ptr, ptr %4510, i64 2
  %4532 = load ptr, ptr %4531, align 8, !tbaa !47
  %4533 = getelementptr inbounds i16, ptr %4532, i64 %4512
  store i16 %4420, ptr %4533, align 2
  %4534 = getelementptr inbounds i8, ptr %4533, i64 2
  store i16 %4429, ptr %4534, align 2
  %4535 = getelementptr inbounds i8, ptr %4533, i64 4
  store i16 %4433, ptr %4535, align 2
  %4536 = getelementptr inbounds i8, ptr %4533, i64 6
  store i16 %4441, ptr %4536, align 2
  %4537 = getelementptr inbounds i8, ptr %4533, i64 8
  store i16 %4445, ptr %4537, align 2
  %4538 = getelementptr inbounds i8, ptr %4533, i64 10
  store i16 %4454, ptr %4538, align 2
  %4539 = getelementptr inbounds i8, ptr %4533, i64 12
  store i16 %4463, ptr %4539, align 2
  %4540 = getelementptr inbounds i8, ptr %4533, i64 14
  store i16 %4472, ptr %4540, align 2
  %4541 = getelementptr ptr, ptr %4510, i64 3
  %4542 = load ptr, ptr %4541, align 8, !tbaa !47
  %4543 = getelementptr inbounds i16, ptr %4542, i64 %4512
  store i16 %4407, ptr %4543, align 2
  %4544 = getelementptr inbounds i8, ptr %4543, i64 2
  store i16 %4416, ptr %4544, align 2
  %4545 = getelementptr inbounds i8, ptr %4543, i64 4
  store i16 %4420, ptr %4545, align 2
  %4546 = getelementptr inbounds i8, ptr %4543, i64 6
  store i16 %4429, ptr %4546, align 2
  %4547 = getelementptr inbounds i8, ptr %4543, i64 8
  store i16 %4433, ptr %4547, align 2
  %4548 = getelementptr inbounds i8, ptr %4543, i64 10
  store i16 %4441, ptr %4548, align 2
  %4549 = getelementptr inbounds i8, ptr %4543, i64 12
  store i16 %4445, ptr %4549, align 2
  %4550 = getelementptr inbounds i8, ptr %4543, i64 14
  store i16 %4454, ptr %4550, align 2
  %4551 = getelementptr ptr, ptr %4510, i64 4
  %4552 = load ptr, ptr %4551, align 8, !tbaa !47
  %4553 = getelementptr inbounds i16, ptr %4552, i64 %4512
  store i16 %4394, ptr %4553, align 2
  %4554 = getelementptr inbounds i8, ptr %4553, i64 2
  store i16 %4403, ptr %4554, align 2
  %4555 = getelementptr inbounds i8, ptr %4553, i64 4
  store i16 %4407, ptr %4555, align 2
  %4556 = getelementptr inbounds i8, ptr %4553, i64 6
  store i16 %4416, ptr %4556, align 2
  %4557 = getelementptr inbounds i8, ptr %4553, i64 8
  store i16 %4420, ptr %4557, align 2
  %4558 = getelementptr inbounds i8, ptr %4553, i64 10
  store i16 %4429, ptr %4558, align 2
  %4559 = getelementptr inbounds i8, ptr %4553, i64 12
  store i16 %4433, ptr %4559, align 2
  %4560 = getelementptr inbounds i8, ptr %4553, i64 14
  store i16 %4441, ptr %4560, align 2
  %4561 = getelementptr ptr, ptr %4510, i64 5
  %4562 = load ptr, ptr %4561, align 8, !tbaa !47
  %4563 = getelementptr inbounds i16, ptr %4562, i64 %4512
  store i16 %4381, ptr %4563, align 2
  %4564 = getelementptr inbounds i8, ptr %4563, i64 2
  store i16 %4390, ptr %4564, align 2
  %4565 = getelementptr inbounds i8, ptr %4563, i64 4
  store i16 %4394, ptr %4565, align 2
  %4566 = getelementptr inbounds i8, ptr %4563, i64 6
  store i16 %4403, ptr %4566, align 2
  %4567 = getelementptr inbounds i8, ptr %4563, i64 8
  store i16 %4407, ptr %4567, align 2
  %4568 = getelementptr inbounds i8, ptr %4563, i64 10
  store i16 %4416, ptr %4568, align 2
  %4569 = getelementptr inbounds i8, ptr %4563, i64 12
  store i16 %4420, ptr %4569, align 2
  %4570 = getelementptr inbounds i8, ptr %4563, i64 14
  store i16 %4429, ptr %4570, align 2
  %4571 = getelementptr ptr, ptr %4510, i64 6
  %4572 = load ptr, ptr %4571, align 8, !tbaa !47
  %4573 = getelementptr inbounds i16, ptr %4572, i64 %4512
  store i16 %4368, ptr %4573, align 2
  %4574 = getelementptr inbounds i8, ptr %4573, i64 2
  store i16 %4377, ptr %4574, align 2
  %4575 = getelementptr inbounds i8, ptr %4573, i64 4
  store i16 %4381, ptr %4575, align 2
  %4576 = getelementptr inbounds i8, ptr %4573, i64 6
  store i16 %4390, ptr %4576, align 2
  %4577 = getelementptr inbounds i8, ptr %4573, i64 8
  store i16 %4394, ptr %4577, align 2
  %4578 = getelementptr inbounds i8, ptr %4573, i64 10
  store i16 %4403, ptr %4578, align 2
  %4579 = getelementptr inbounds i8, ptr %4573, i64 12
  store i16 %4407, ptr %4579, align 2
  %4580 = getelementptr inbounds i8, ptr %4573, i64 14
  store i16 %4416, ptr %4580, align 2
  %4581 = getelementptr ptr, ptr %4510, i64 7
  %4582 = load ptr, ptr %4581, align 8, !tbaa !47
  %4583 = getelementptr inbounds i16, ptr %4582, i64 %4512
  store i16 %4355, ptr %4583, align 2
  %4584 = getelementptr inbounds i8, ptr %4583, i64 2
  store i16 %4364, ptr %4584, align 2
  %4585 = getelementptr inbounds i8, ptr %4583, i64 4
  store i16 %4368, ptr %4585, align 2
  %4586 = getelementptr inbounds i8, ptr %4583, i64 6
  store i16 %4377, ptr %4586, align 2
  %4587 = getelementptr inbounds i8, ptr %4583, i64 8
  store i16 %4381, ptr %4587, align 2
  %4588 = getelementptr inbounds i8, ptr %4583, i64 10
  store i16 %4390, ptr %4588, align 2
  %4589 = getelementptr inbounds i8, ptr %4583, i64 12
  store i16 %4394, ptr %4589, align 2
  %4590 = getelementptr inbounds i8, ptr %4583, i64 14
  store i16 %4403, ptr %4590, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #6
  br label %4594

4591:                                             ; preds = %4
  %4592 = zext i8 %68 to i32
  %4593 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4592)
  br label %4594

4594:                                             ; preds = %4591, %4344, %3823, %3261, %2687, %2135, %1584, %1252, %902, %559
  %4595 = phi i32 [ 1, %4591 ], [ 0, %4344 ], [ 0, %3823 ], [ 0, %3261 ], [ 0, %2687 ], [ 0, %2135 ], [ 0, %1584 ], [ 0, %1252 ], [ 0, %902 ], [ 0, %559 ]
  ret i32 %4595
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8Pred(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = alloca [25 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %5, ptr noundef nonnull align 2 dereferenceable(50) %0, i64 50, i1 false)
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %4
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds i16, ptr %0, i64 17
  %13 = load i16, ptr %12, align 2, !tbaa !74
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !74
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = getelementptr inbounds i16, ptr %0, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !74
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %14, 2
  %22 = add nuw nsw i32 %21, %17
  %23 = add nuw nsw i32 %22, %20
  %24 = lshr i32 %23, 2
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %5, align 16, !tbaa !74
  br label %50

26:                                               ; preds = %7
  br i1 %8, label %27, label %38

27:                                               ; preds = %26
  %28 = load i16, ptr %0, align 2, !tbaa !74
  %29 = zext i16 %28 to i32
  %30 = mul nuw nsw i32 %29, 3
  %31 = getelementptr inbounds i16, ptr %0, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !74
  %33 = zext i16 %32 to i32
  %34 = add nuw nsw i32 %33, 2
  %35 = add nuw nsw i32 %34, %30
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %5, align 16, !tbaa !74
  br label %50

38:                                               ; preds = %26
  br i1 %9, label %39, label %50

39:                                               ; preds = %38
  %40 = load i16, ptr %0, align 2, !tbaa !74
  %41 = zext i16 %40 to i32
  %42 = mul nuw nsw i32 %41, 3
  %43 = getelementptr inbounds i16, ptr %0, i64 17
  %44 = load i16, ptr %43, align 2, !tbaa !74
  %45 = zext i16 %44 to i32
  %46 = add nuw nsw i32 %45, 2
  %47 = add nuw nsw i32 %46, %42
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %5, align 16, !tbaa !74
  br label %50

50:                                               ; preds = %11, %38, %39, %27, %4
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %114, label %52

52:                                               ; preds = %50
  br i1 %6, label %66, label %53

53:                                               ; preds = %52
  %54 = load i16, ptr %0, align 2, !tbaa !74
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds i16, ptr %0, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !74
  %58 = zext i16 %57 to i32
  %59 = shl nuw nsw i32 %58, 1
  %60 = getelementptr inbounds i16, ptr %0, i64 2
  %61 = load i16, ptr %60, align 2, !tbaa !74
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %55, 2
  %64 = add nuw nsw i32 %63, %59
  %65 = add nuw nsw i32 %64, %62
  br label %76

66:                                               ; preds = %52
  %67 = getelementptr inbounds i16, ptr %0, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !74
  %69 = zext i16 %68 to i32
  %70 = mul nuw nsw i32 %69, 3
  %71 = getelementptr inbounds i16, ptr %0, i64 2
  %72 = load i16, ptr %71, align 2, !tbaa !74
  %73 = zext i16 %72 to i32
  %74 = add nuw nsw i32 %73, 2
  %75 = add nuw nsw i32 %74, %70
  br label %76

76:                                               ; preds = %66, %53
  %77 = phi i32 [ %75, %66 ], [ %65, %53 ]
  %78 = lshr i32 %77, 2
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %79, ptr %80, align 2, !tbaa !74
  br label %81

81:                                               ; preds = %76, %81
  %82 = phi i64 [ 2, %76 ], [ %90, %81 ]
  %83 = getelementptr i16, ptr %0, i64 %82
  %84 = getelementptr i16, ptr %83, i64 -1
  %85 = load i16, ptr %84, align 2, !tbaa !74
  %86 = zext i16 %85 to i32
  %87 = load i16, ptr %83, align 2, !tbaa !74
  %88 = zext i16 %87 to i32
  %89 = shl nuw nsw i32 %88, 1
  %90 = add nuw nsw i64 %82, 1
  %91 = getelementptr inbounds i16, ptr %0, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !74
  %93 = zext i16 %92 to i32
  %94 = add nuw nsw i32 %86, 2
  %95 = add nuw nsw i32 %94, %89
  %96 = add nuw nsw i32 %95, %93
  %97 = lshr i32 %96, 2
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %82
  store i16 %98, ptr %99, align 2, !tbaa !74
  %100 = icmp eq i64 %90, 16
  br i1 %100, label %101, label %81, !llvm.loop !99

101:                                              ; preds = %81
  %102 = getelementptr inbounds i16, ptr %0, i64 16
  %103 = load i16, ptr %102, align 2, !tbaa !74
  %104 = zext i16 %103 to i32
  %105 = mul nuw nsw i32 %104, 3
  %106 = getelementptr inbounds i16, ptr %0, i64 15
  %107 = load i16, ptr %106, align 2, !tbaa !74
  %108 = zext i16 %107 to i32
  %109 = add nuw nsw i32 %108, 2
  %110 = add nuw nsw i32 %109, %105
  %111 = lshr i32 %110, 2
  %112 = trunc i32 %111 to i16
  %113 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %112, ptr %113, align 16, !tbaa !74
  br label %114

114:                                              ; preds = %101, %50
  %115 = icmp eq i32 %3, 0
  br i1 %115, label %179, label %116

116:                                              ; preds = %114
  br i1 %6, label %130, label %117

117:                                              ; preds = %116
  %118 = load i16, ptr %0, align 2, !tbaa !74
  %119 = zext i16 %118 to i32
  %120 = getelementptr inbounds i16, ptr %0, i64 17
  %121 = load i16, ptr %120, align 2, !tbaa !74
  %122 = zext i16 %121 to i32
  %123 = shl nuw nsw i32 %122, 1
  %124 = getelementptr inbounds i16, ptr %0, i64 18
  %125 = load i16, ptr %124, align 2, !tbaa !74
  %126 = zext i16 %125 to i32
  %127 = add nuw nsw i32 %119, 2
  %128 = add nuw nsw i32 %127, %123
  %129 = add nuw nsw i32 %128, %126
  br label %140

130:                                              ; preds = %116
  %131 = getelementptr inbounds i16, ptr %0, i64 17
  %132 = load i16, ptr %131, align 2, !tbaa !74
  %133 = zext i16 %132 to i32
  %134 = mul nuw nsw i32 %133, 3
  %135 = getelementptr inbounds i16, ptr %0, i64 18
  %136 = load i16, ptr %135, align 2, !tbaa !74
  %137 = zext i16 %136 to i32
  %138 = add nuw nsw i32 %137, 2
  %139 = add nuw nsw i32 %138, %134
  br label %140

140:                                              ; preds = %130, %117
  %141 = phi i32 [ %139, %130 ], [ %129, %117 ]
  %142 = lshr i32 %141, 2
  %143 = trunc i32 %142 to i16
  %144 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %143, ptr %144, align 2, !tbaa !74
  br label %145

145:                                              ; preds = %140, %145
  %146 = phi i64 [ 18, %140 ], [ %154, %145 ]
  %147 = getelementptr i16, ptr %0, i64 %146
  %148 = getelementptr i16, ptr %147, i64 -1
  %149 = load i16, ptr %148, align 2, !tbaa !74
  %150 = zext i16 %149 to i32
  %151 = load i16, ptr %147, align 2, !tbaa !74
  %152 = zext i16 %151 to i32
  %153 = shl nuw nsw i32 %152, 1
  %154 = add nuw nsw i64 %146, 1
  %155 = getelementptr inbounds i16, ptr %0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !74
  %157 = zext i16 %156 to i32
  %158 = add nuw nsw i32 %150, 2
  %159 = add nuw nsw i32 %158, %153
  %160 = add nuw nsw i32 %159, %157
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %146
  store i16 %162, ptr %163, align 2, !tbaa !74
  %164 = icmp eq i64 %154, 24
  br i1 %164, label %165, label %145, !llvm.loop !100

165:                                              ; preds = %145
  %166 = getelementptr inbounds i16, ptr %0, i64 23
  %167 = load i16, ptr %166, align 2, !tbaa !74
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds i16, ptr %0, i64 24
  %170 = load i16, ptr %169, align 2, !tbaa !74
  %171 = zext i16 %170 to i32
  %172 = shl nuw nsw i32 %171, 1
  %173 = add nuw nsw i32 %168, 2
  %174 = add nuw nsw i32 %173, %171
  %175 = add nuw nsw i32 %174, %172
  %176 = lshr i32 %175, 2
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %177, ptr %178, align 16, !tbaa !74
  br label %179

179:                                              ; preds = %165, %114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %0, ptr noundef nonnull align 16 dereferenceable(50) %5, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!34 = !{!35, !39, i64 32}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !39, i64 36}
!43 = !{!35, !36, i64 0}
!44 = !{!45, !36, i64 13536}
!45 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !46, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!46 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!47 = !{!36, !36, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{!35, !37, i64 372}
!50 = !{!35, !36, i64 8}
!51 = !{!45, !36, i64 13520}
!52 = !{!53, !36, i64 136}
!53 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !54, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!54 = !{!"pic_motion_params_old", !36, i64 0}
!55 = !{!45, !36, i64 1248}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!60, !39, i64 0}
!60 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!61 = !{!62, !36, i64 8}
!62 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !63, i64 849304, !63, i64 849624, !63, i64 849944, !63, i64 850264, !63, i64 850584, !63, i64 850904, !63, i64 851224, !63, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !66, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!63 = !{!"image_data", !64, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!64 = !{!"frame_format", !39, i64 0, !39, i64 4, !65, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!65 = !{!"double", !37, i64 0}
!66 = !{!"long", !37, i64 0}
!67 = !{!68, !39, i64 2204}
!68 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!69 = !{!45, !36, i64 13544}
!70 = !{!60, !39, i64 4}
!71 = distinct !{!71, !57, !58}
!72 = !{!60, !41, i64 14}
!73 = !{!60, !41, i64 12}
!74 = !{!41, !41, i64 0}
!75 = !{!39, !39, i64 0}
!76 = distinct !{!76, !57, !58}
!77 = distinct !{!77, !57, !58}
!78 = distinct !{!78, !57, !58}
!79 = distinct !{!79, !57, !58}
!80 = !{!45, !39, i64 108}
!81 = distinct !{!81, !57, !58}
!82 = distinct !{!82, !57, !58}
!83 = distinct !{!83, !57, !58}
!84 = distinct !{!84, !57, !58}
!85 = distinct !{!85, !57, !58}
!86 = distinct !{!86, !57, !58}
!87 = distinct !{!87, !57, !58}
!88 = distinct !{!88, !57, !58}
!89 = distinct !{!89, !57, !58}
!90 = distinct !{!90, !57, !58}
!91 = distinct !{!91, !57, !58}
!92 = distinct !{!92, !57, !58}
!93 = distinct !{!93, !57, !58}
!94 = distinct !{!94, !57, !58}
!95 = distinct !{!95, !57, !58}
!96 = distinct !{!96, !57, !58}
!97 = distinct !{!97, !57, !58}
!98 = distinct !{!98, !57, !58}
!99 = distinct !{!99, !57, !58}
!100 = distinct !{!100, !57, !58}
