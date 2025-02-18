; ModuleID = 'ldecod_src/mv_prediction.c'
source_filename = "ldecod_src/mv_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MotionVector = type { i16, i16 }
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
%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }

@zero_mv = internal unnamed_addr constant %struct.MotionVector zeroinitializer, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_motion_vector_prediction(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  %5 = select i1 %3, ptr @GetMotionVectorPredictorNormal, ptr @GetMotionVectorPredictorMBAFF
  store ptr %5, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorMBAFF(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, i16 noundef signext %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %1, align 4, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %15, label %98, label %18

18:                                               ; preds = %10
  br i1 %17, label %42, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.macroblock, ptr %21, i64 %24, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !43
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !53
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %4, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !55
  %35 = sext i16 %34 to i64
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds %struct.pic_motion_params, ptr %32, i64 %35, i32 2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !56
  %39 = sext i8 %38 to i32
  %40 = zext i1 %27 to i32
  %41 = shl nsw i32 %39, %40
  br label %42

42:                                               ; preds = %19, %18
  %43 = phi i32 [ -1, %18 ], [ %41, %19 ]
  %44 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !52
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.macroblock, ptr %49, i64 %52, i32 45
  %54 = load i32, ptr %53, align 8, !tbaa !43
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !53
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %4, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %62 = load i16, ptr %61, align 4, !tbaa !55
  %63 = sext i16 %62 to i64
  %64 = sext i32 %5 to i64
  %65 = getelementptr inbounds %struct.pic_motion_params, ptr %60, i64 %63, i32 2, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !56
  %67 = sext i8 %66 to i32
  %68 = zext i1 %55 to i32
  %69 = shl nsw i32 %67, %68
  br label %70

70:                                               ; preds = %47, %42
  %71 = phi i32 [ -1, %42 ], [ %69, %47 ]
  %72 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %73 = load i32, ptr %72, align 4, !tbaa !44
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %184, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !52
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.macroblock, ptr %77, i64 %80, i32 45
  %82 = load i32, ptr %81, align 8, !tbaa !43
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %85 = load i16, ptr %84, align 2, !tbaa !53
  %86 = sext i16 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %4, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !54
  %89 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %90 = load i16, ptr %89, align 4, !tbaa !55
  %91 = sext i16 %90 to i64
  %92 = sext i32 %5 to i64
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %88, i64 %91, i32 2, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = sext i8 %94 to i32
  %96 = zext i1 %83 to i32
  %97 = shl nsw i32 %95, %96
  br label %184

98:                                               ; preds = %10
  br i1 %17, label %124, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !52
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.macroblock, ptr %101, i64 %104, i32 45
  %106 = load i32, ptr %105, align 8, !tbaa !43
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %109 = load i16, ptr %108, align 2, !tbaa !53
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %4, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !54
  %113 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %114 = load i16, ptr %113, align 4, !tbaa !55
  %115 = sext i16 %114 to i64
  %116 = sext i32 %5 to i64
  %117 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %115, i32 2, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !56
  br i1 %107, label %122, label %119

119:                                              ; preds = %99
  %120 = ashr i8 %118, 1
  %121 = sext i8 %120 to i32
  br label %124

122:                                              ; preds = %99
  %123 = sext i8 %118 to i32
  br label %124

124:                                              ; preds = %98, %119, %122
  %125 = phi i32 [ %121, %119 ], [ %123, %122 ], [ -1, %98 ]
  %126 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %127 = load i32, ptr %126, align 4, !tbaa !44
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %154, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !52
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.macroblock, ptr %131, i64 %134, i32 45
  %136 = load i32, ptr %135, align 8, !tbaa !43
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %139 = load i16, ptr %138, align 2, !tbaa !53
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %4, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !54
  %143 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %144 = load i16, ptr %143, align 4, !tbaa !55
  %145 = sext i16 %144 to i64
  %146 = sext i32 %5 to i64
  %147 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %145, i32 2, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !56
  br i1 %137, label %152, label %149

149:                                              ; preds = %129
  %150 = ashr i8 %148, 1
  %151 = sext i8 %150 to i32
  br label %154

152:                                              ; preds = %129
  %153 = sext i8 %148 to i32
  br label %154

154:                                              ; preds = %124, %149, %152
  %155 = phi i32 [ %151, %149 ], [ %153, %152 ], [ -1, %124 ]
  %156 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %157 = load i32, ptr %156, align 4, !tbaa !44
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %184, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %161 = load ptr, ptr %160, align 8, !tbaa !46
  %162 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !52
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.macroblock, ptr %161, i64 %164, i32 45
  %166 = load i32, ptr %165, align 8, !tbaa !43
  %167 = icmp eq i32 %166, 0
  %168 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %169 = load i16, ptr %168, align 2, !tbaa !53
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %4, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !54
  %173 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %174 = load i16, ptr %173, align 4, !tbaa !55
  %175 = sext i16 %174 to i64
  %176 = sext i32 %5 to i64
  %177 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %175, i32 2, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !56
  br i1 %167, label %182, label %179

179:                                              ; preds = %159
  %180 = ashr i8 %178, 1
  %181 = sext i8 %180 to i32
  br label %184

182:                                              ; preds = %159
  %183 = sext i8 %178 to i32
  br label %184

184:                                              ; preds = %75, %182, %179, %154, %70
  %185 = phi i32 [ %43, %70 ], [ %125, %154 ], [ %125, %179 ], [ %125, %182 ], [ %43, %75 ]
  %186 = phi i32 [ %71, %70 ], [ %155, %154 ], [ %155, %179 ], [ %155, %182 ], [ %71, %75 ]
  %187 = phi i32 [ -1, %70 ], [ -1, %154 ], [ %181, %179 ], [ %183, %182 ], [ %97, %75 ]
  %188 = sext i16 %3 to i32
  %189 = icmp eq i32 %185, %188
  %190 = xor i1 %189, true
  %191 = icmp eq i32 %186, %188
  %192 = select i1 %190, i1 true, i1 %191
  %193 = icmp eq i32 %187, %188
  %194 = select i1 %192, i1 true, i1 %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %184
  %196 = xor i1 %191, true
  %197 = select i1 %189, i1 true, i1 %196
  %198 = select i1 %197, i1 true, i1 %193
  %199 = xor i1 %198, true
  %200 = or i1 %189, %199
  %201 = select i1 %198, i32 0, i32 2
  br i1 %200, label %206, label %202

202:                                              ; preds = %195
  %203 = icmp ne i32 %186, %188
  %204 = select i1 %203, i1 %193, i1 false
  %205 = select i1 %204, i32 3, i32 0
  br label %206

206:                                              ; preds = %202, %195, %184
  %207 = phi i32 [ 1, %184 ], [ %201, %195 ], [ %205, %202 ]
  %208 = icmp eq i32 %8, 8
  %209 = icmp eq i32 %9, 16
  %210 = and i1 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = icmp eq i32 %6, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %211
  %214 = select i1 %189, i32 1, i32 %207
  br label %227

215:                                              ; preds = %211
  %216 = select i1 %193, i32 3, i32 %207
  br label %227

217:                                              ; preds = %206
  %218 = icmp eq i32 %8, 16
  %219 = icmp eq i32 %9, 8
  %220 = and i1 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = icmp eq i32 %7, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  %224 = select i1 %191, i32 2, i32 %207
  br label %227

225:                                              ; preds = %221
  %226 = select i1 %189, i32 1, i32 %207
  br label %227

227:                                              ; preds = %225, %223, %215, %213, %217
  %228 = phi i32 [ %207, %217 ], [ %214, %213 ], [ %216, %215 ], [ %224, %223 ], [ %226, %225 ]
  %229 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %230 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 1
  %231 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %232 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %233 = sext i32 %5 to i64
  %234 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %235 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %236 = sext i32 %5 to i64
  %237 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %238 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %239 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 1
  %240 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %241 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %242 = sext i32 %5 to i64
  %243 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %244 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %245 = sext i32 %5 to i64
  %246 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %247 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %248 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 1
  %249 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %250 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %251 = sext i32 %5 to i64
  %252 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %253 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %254 = sext i32 %5 to i64
  %255 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %256 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 1
  %257 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %258 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %259 = sext i32 %5 to i64
  %260 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %261 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %262 = sext i32 %5 to i64
  %263 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %264 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %265 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 1
  %266 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %267 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %268 = sext i32 %5 to i64
  %269 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %270 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %271 = sext i32 %5 to i64
  %272 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %273 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %274 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 1
  %275 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %276 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %277 = sext i32 %5 to i64
  %278 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %279 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %280 = sext i32 %5 to i64
  %281 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %282 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %283 = sext i32 %5 to i64
  %284 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %285 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %286 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %287 = sext i32 %5 to i64
  %288 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %289 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %290 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %291 = sext i32 %5 to i64
  %292 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %293 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %294 = getelementptr inbounds %struct.MotionVector, ptr %2, i64 0, i32 1
  %295 = load i32, ptr %1, align 4, !tbaa !44
  %296 = icmp eq i32 %295, 0
  br label %297

297:                                              ; preds = %227, %549
  %298 = phi i32 [ 0, %227 ], [ %553, %549 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %339

300:                                              ; preds = %297
  br i1 %296, label %311, label %301

301:                                              ; preds = %300
  %302 = load i16, ptr %281, align 2, !tbaa !53
  %303 = sext i16 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %4, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !54
  %306 = load i16, ptr %282, align 4, !tbaa !55
  %307 = sext i16 %306 to i64
  %308 = getelementptr inbounds %struct.pic_motion_params, ptr %305, i64 %307, i32 1, i64 %283
  %309 = load i16, ptr %308, align 4, !tbaa !57
  %310 = sext i16 %309 to i32
  br label %311

311:                                              ; preds = %300, %301
  %312 = phi i32 [ %310, %301 ], [ 0, %300 ]
  %313 = load i32, ptr %284, align 4, !tbaa !44
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %325, label %315

315:                                              ; preds = %311
  %316 = load i16, ptr %285, align 2, !tbaa !53
  %317 = sext i16 %316 to i64
  %318 = getelementptr inbounds ptr, ptr %4, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !54
  %320 = load i16, ptr %286, align 4, !tbaa !55
  %321 = sext i16 %320 to i64
  %322 = getelementptr inbounds %struct.pic_motion_params, ptr %319, i64 %321, i32 1, i64 %287
  %323 = load i16, ptr %322, align 4, !tbaa !57
  %324 = sext i16 %323 to i32
  br label %325

325:                                              ; preds = %311, %315
  %326 = phi i32 [ %324, %315 ], [ 0, %311 ]
  %327 = load i32, ptr %288, align 4, !tbaa !44
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %526, label %329

329:                                              ; preds = %325
  %330 = load i16, ptr %289, align 2, !tbaa !53
  %331 = sext i16 %330 to i64
  %332 = getelementptr inbounds ptr, ptr %4, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !54
  %334 = load i16, ptr %290, align 4, !tbaa !55
  %335 = sext i16 %334 to i64
  %336 = getelementptr inbounds %struct.pic_motion_params, ptr %333, i64 %335, i32 1, i64 %291
  %337 = load i16, ptr %336, align 4, !tbaa !57
  %338 = sext i16 %337 to i32
  br label %526

339:                                              ; preds = %297
  br i1 %15, label %433, label %340

340:                                              ; preds = %339
  br i1 %296, label %369, label %341

341:                                              ; preds = %340
  %342 = load ptr, ptr %229, align 8, !tbaa !46
  %343 = load i32, ptr %230, align 4, !tbaa !52
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.macroblock, ptr %342, i64 %344, i32 45
  %346 = load i32, ptr %345, align 8, !tbaa !43
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %341
  %349 = load i16, ptr %231, align 2, !tbaa !53
  %350 = sext i16 %349 to i64
  %351 = getelementptr inbounds ptr, ptr %4, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !54
  %353 = load i16, ptr %232, align 4, !tbaa !55
  %354 = sext i16 %353 to i64
  %355 = getelementptr inbounds %struct.pic_motion_params, ptr %352, i64 %354, i32 1, i64 %233, i32 1
  %356 = load i16, ptr %355, align 2, !tbaa !58
  %357 = sext i16 %356 to i32
  br label %369

358:                                              ; preds = %341
  %359 = load i16, ptr %234, align 2, !tbaa !53
  %360 = sext i16 %359 to i64
  %361 = getelementptr inbounds ptr, ptr %4, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !54
  %363 = load i16, ptr %235, align 4, !tbaa !55
  %364 = sext i16 %363 to i64
  %365 = getelementptr inbounds %struct.pic_motion_params, ptr %362, i64 %364, i32 1, i64 %236, i32 1
  %366 = load i16, ptr %365, align 2, !tbaa !58
  %367 = sdiv i16 %366, 2
  %368 = sext i16 %367 to i32
  br label %369

369:                                              ; preds = %340, %348, %358
  %370 = phi i32 [ %357, %348 ], [ %368, %358 ], [ 0, %340 ]
  %371 = load i32, ptr %237, align 4, !tbaa !44
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %401, label %373

373:                                              ; preds = %369
  %374 = load ptr, ptr %238, align 8, !tbaa !46
  %375 = load i32, ptr %239, align 4, !tbaa !52
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.macroblock, ptr %374, i64 %376, i32 45
  %378 = load i32, ptr %377, align 8, !tbaa !43
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %390, label %380

380:                                              ; preds = %373
  %381 = load i16, ptr %240, align 2, !tbaa !53
  %382 = sext i16 %381 to i64
  %383 = getelementptr inbounds ptr, ptr %4, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !54
  %385 = load i16, ptr %241, align 4, !tbaa !55
  %386 = sext i16 %385 to i64
  %387 = getelementptr inbounds %struct.pic_motion_params, ptr %384, i64 %386, i32 1, i64 %242, i32 1
  %388 = load i16, ptr %387, align 2, !tbaa !58
  %389 = sext i16 %388 to i32
  br label %401

390:                                              ; preds = %373
  %391 = load i16, ptr %243, align 2, !tbaa !53
  %392 = sext i16 %391 to i64
  %393 = getelementptr inbounds ptr, ptr %4, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !54
  %395 = load i16, ptr %244, align 4, !tbaa !55
  %396 = sext i16 %395 to i64
  %397 = getelementptr inbounds %struct.pic_motion_params, ptr %394, i64 %396, i32 1, i64 %245, i32 1
  %398 = load i16, ptr %397, align 2, !tbaa !58
  %399 = sdiv i16 %398, 2
  %400 = sext i16 %399 to i32
  br label %401

401:                                              ; preds = %369, %380, %390
  %402 = phi i32 [ %389, %380 ], [ %400, %390 ], [ 0, %369 ]
  %403 = load i32, ptr %246, align 4, !tbaa !44
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %526, label %405

405:                                              ; preds = %401
  %406 = load ptr, ptr %247, align 8, !tbaa !46
  %407 = load i32, ptr %248, align 4, !tbaa !52
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.macroblock, ptr %406, i64 %408, i32 45
  %410 = load i32, ptr %409, align 8, !tbaa !43
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %422, label %412

412:                                              ; preds = %405
  %413 = load i16, ptr %249, align 2, !tbaa !53
  %414 = sext i16 %413 to i64
  %415 = getelementptr inbounds ptr, ptr %4, i64 %414
  %416 = load ptr, ptr %415, align 8, !tbaa !54
  %417 = load i16, ptr %250, align 4, !tbaa !55
  %418 = sext i16 %417 to i64
  %419 = getelementptr inbounds %struct.pic_motion_params, ptr %416, i64 %418, i32 1, i64 %251, i32 1
  %420 = load i16, ptr %419, align 2, !tbaa !58
  %421 = sext i16 %420 to i32
  br label %526

422:                                              ; preds = %405
  %423 = load i16, ptr %252, align 2, !tbaa !53
  %424 = sext i16 %423 to i64
  %425 = getelementptr inbounds ptr, ptr %4, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !54
  %427 = load i16, ptr %253, align 4, !tbaa !55
  %428 = sext i16 %427 to i64
  %429 = getelementptr inbounds %struct.pic_motion_params, ptr %426, i64 %428, i32 1, i64 %254, i32 1
  %430 = load i16, ptr %429, align 2, !tbaa !58
  %431 = sdiv i16 %430, 2
  %432 = sext i16 %431 to i32
  br label %526

433:                                              ; preds = %339
  br i1 %296, label %462, label %434

434:                                              ; preds = %433
  %435 = load ptr, ptr %255, align 8, !tbaa !46
  %436 = load i32, ptr %256, align 4, !tbaa !52
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.macroblock, ptr %435, i64 %437, i32 45
  %439 = load i32, ptr %438, align 8, !tbaa !43
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %452, label %441

441:                                              ; preds = %434
  %442 = load i16, ptr %257, align 2, !tbaa !53
  %443 = sext i16 %442 to i64
  %444 = getelementptr inbounds ptr, ptr %4, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !54
  %446 = load i16, ptr %258, align 4, !tbaa !55
  %447 = sext i16 %446 to i64
  %448 = getelementptr inbounds %struct.pic_motion_params, ptr %445, i64 %447, i32 1, i64 %259, i32 1
  %449 = load i16, ptr %448, align 2, !tbaa !58
  %450 = sext i16 %449 to i32
  %451 = shl nsw i32 %450, 1
  br label %462

452:                                              ; preds = %434
  %453 = load i16, ptr %260, align 2, !tbaa !53
  %454 = sext i16 %453 to i64
  %455 = getelementptr inbounds ptr, ptr %4, i64 %454
  %456 = load ptr, ptr %455, align 8, !tbaa !54
  %457 = load i16, ptr %261, align 4, !tbaa !55
  %458 = sext i16 %457 to i64
  %459 = getelementptr inbounds %struct.pic_motion_params, ptr %456, i64 %458, i32 1, i64 %262, i32 1
  %460 = load i16, ptr %459, align 2, !tbaa !58
  %461 = sext i16 %460 to i32
  br label %462

462:                                              ; preds = %433, %441, %452
  %463 = phi i32 [ %451, %441 ], [ %461, %452 ], [ 0, %433 ]
  %464 = load i32, ptr %263, align 4, !tbaa !44
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %494, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %264, align 8, !tbaa !46
  %468 = load i32, ptr %265, align 4, !tbaa !52
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.macroblock, ptr %467, i64 %469, i32 45
  %471 = load i32, ptr %470, align 8, !tbaa !43
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %484, label %473

473:                                              ; preds = %466
  %474 = load i16, ptr %266, align 2, !tbaa !53
  %475 = sext i16 %474 to i64
  %476 = getelementptr inbounds ptr, ptr %4, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !54
  %478 = load i16, ptr %267, align 4, !tbaa !55
  %479 = sext i16 %478 to i64
  %480 = getelementptr inbounds %struct.pic_motion_params, ptr %477, i64 %479, i32 1, i64 %268, i32 1
  %481 = load i16, ptr %480, align 2, !tbaa !58
  %482 = sext i16 %481 to i32
  %483 = shl nsw i32 %482, 1
  br label %494

484:                                              ; preds = %466
  %485 = load i16, ptr %269, align 2, !tbaa !53
  %486 = sext i16 %485 to i64
  %487 = getelementptr inbounds ptr, ptr %4, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !54
  %489 = load i16, ptr %270, align 4, !tbaa !55
  %490 = sext i16 %489 to i64
  %491 = getelementptr inbounds %struct.pic_motion_params, ptr %488, i64 %490, i32 1, i64 %271, i32 1
  %492 = load i16, ptr %491, align 2, !tbaa !58
  %493 = sext i16 %492 to i32
  br label %494

494:                                              ; preds = %462, %473, %484
  %495 = phi i32 [ %483, %473 ], [ %493, %484 ], [ 0, %462 ]
  %496 = load i32, ptr %272, align 4, !tbaa !44
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %526, label %498

498:                                              ; preds = %494
  %499 = load ptr, ptr %273, align 8, !tbaa !46
  %500 = load i32, ptr %274, align 4, !tbaa !52
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.macroblock, ptr %499, i64 %501, i32 45
  %503 = load i32, ptr %502, align 8, !tbaa !43
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %516, label %505

505:                                              ; preds = %498
  %506 = load i16, ptr %275, align 2, !tbaa !53
  %507 = sext i16 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %4, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !54
  %510 = load i16, ptr %276, align 4, !tbaa !55
  %511 = sext i16 %510 to i64
  %512 = getelementptr inbounds %struct.pic_motion_params, ptr %509, i64 %511, i32 1, i64 %277, i32 1
  %513 = load i16, ptr %512, align 2, !tbaa !58
  %514 = sext i16 %513 to i32
  %515 = shl nsw i32 %514, 1
  br label %526

516:                                              ; preds = %498
  %517 = load i16, ptr %278, align 2, !tbaa !53
  %518 = sext i16 %517 to i64
  %519 = getelementptr inbounds ptr, ptr %4, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !54
  %521 = load i16, ptr %279, align 4, !tbaa !55
  %522 = sext i16 %521 to i64
  %523 = getelementptr inbounds %struct.pic_motion_params, ptr %520, i64 %522, i32 1, i64 %280, i32 1
  %524 = load i16, ptr %523, align 2, !tbaa !58
  %525 = sext i16 %524 to i32
  br label %526

526:                                              ; preds = %516, %505, %494, %422, %412, %401, %329, %325
  %527 = phi i32 [ %326, %325 ], [ %326, %329 ], [ %402, %401 ], [ %402, %412 ], [ %402, %422 ], [ %495, %494 ], [ %495, %505 ], [ %495, %516 ]
  %528 = phi i32 [ 0, %325 ], [ %338, %329 ], [ 0, %401 ], [ %421, %412 ], [ %432, %422 ], [ 0, %494 ], [ %515, %505 ], [ %525, %516 ]
  %529 = phi i32 [ %312, %325 ], [ %312, %329 ], [ %370, %401 ], [ %370, %412 ], [ %370, %422 ], [ %463, %494 ], [ %463, %505 ], [ %463, %516 ]
  switch i32 %228, label %548 [
    i32 0, label %530
    i32 1, label %549
    i32 2, label %546
    i32 3, label %547
  ]

530:                                              ; preds = %526
  %531 = load i32, ptr %292, align 4, !tbaa !44
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %536

533:                                              ; preds = %530
  %534 = load i32, ptr %293, align 4, !tbaa !44
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %549, label %536

536:                                              ; preds = %533, %530
  %537 = icmp sgt i32 %529, %527
  br i1 %537, label %538, label %542

538:                                              ; preds = %536
  %539 = icmp sgt i32 %527, %528
  br i1 %539, label %549, label %540

540:                                              ; preds = %538
  %541 = tail call i32 @llvm.smin.i32(i32 %529, i32 %528)
  br label %549

542:                                              ; preds = %536
  %543 = icmp sgt i32 %529, %528
  br i1 %543, label %549, label %544

544:                                              ; preds = %542
  %545 = tail call i32 @llvm.smin.i32(i32 %527, i32 %528)
  br label %549

546:                                              ; preds = %526
  br label %549

547:                                              ; preds = %526
  br label %549

548:                                              ; preds = %526
  unreachable

549:                                              ; preds = %544, %542, %540, %538, %526, %533, %547, %546
  %550 = phi i32 [ %528, %547 ], [ %527, %546 ], [ %529, %533 ], [ %529, %526 ], [ %527, %538 ], [ %541, %540 ], [ %529, %542 ], [ %545, %544 ]
  %551 = trunc i32 %550 to i16
  %552 = select i1 %299, ptr %2, ptr %294
  store i16 %551, ptr %552, align 2, !tbaa !59
  %553 = add nuw nsw i32 %298, 1
  %554 = icmp eq i32 %298, 0
  br i1 %554, label %297, label %555, !llvm.loop !60

555:                                              ; preds = %549
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorNormal(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i16 noundef signext %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #2 {
  %11 = load i32, ptr %1, align 4, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !53
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %4, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !55
  %21 = sext i16 %20 to i64
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds %struct.pic_motion_params, ptr %18, i64 %21, i32 2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !56
  %25 = sext i8 %24 to i32
  br label %26

26:                                               ; preds = %10, %13
  %27 = phi i32 [ %25, %13 ], [ -1, %10 ]
  %28 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !53
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %4, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !55
  %39 = sext i16 %38 to i64
  %40 = sext i32 %5 to i64
  %41 = getelementptr inbounds %struct.pic_motion_params, ptr %36, i64 %39, i32 2, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !56
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %26, %31
  %45 = phi i32 [ %43, %31 ], [ -1, %26 ]
  %46 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %47 = load i32, ptr %46, align 4, !tbaa !44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %51 = load i16, ptr %50, align 2, !tbaa !53
  %52 = sext i16 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %56 = load i16, ptr %55, align 4, !tbaa !55
  %57 = sext i16 %56 to i64
  %58 = sext i32 %5 to i64
  %59 = getelementptr inbounds %struct.pic_motion_params, ptr %54, i64 %57, i32 2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !56
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %44, %49
  %63 = phi i32 [ %61, %49 ], [ -1, %44 ]
  %64 = sext i16 %3 to i32
  %65 = icmp eq i32 %27, %64
  %66 = xor i1 %65, true
  %67 = icmp eq i32 %45, %64
  %68 = select i1 %66, i1 true, i1 %67
  %69 = icmp eq i32 %63, %64
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = xor i1 %67, true
  %73 = select i1 %65, i1 true, i1 %72
  %74 = select i1 %73, i1 true, i1 %69
  %75 = xor i1 %74, true
  %76 = or i1 %65, %75
  %77 = select i1 %74, i32 0, i32 2
  br i1 %76, label %82, label %78

78:                                               ; preds = %71
  %79 = icmp ne i32 %45, %64
  %80 = select i1 %79, i1 %69, i1 false
  %81 = select i1 %80, i32 3, i32 0
  br label %82

82:                                               ; preds = %78, %71, %62
  %83 = phi i32 [ 1, %62 ], [ %77, %71 ], [ %81, %78 ]
  %84 = icmp eq i32 %8, 8
  %85 = icmp eq i32 %9, 16
  %86 = and i1 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = icmp eq i32 %6, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %87
  %90 = select i1 %65, i32 1, i32 %83
  br label %103

91:                                               ; preds = %87
  %92 = select i1 %69, i32 3, i32 %83
  br label %103

93:                                               ; preds = %82
  %94 = icmp eq i32 %8, 16
  %95 = icmp eq i32 %9, 8
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = icmp eq i32 %7, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %97
  %100 = select i1 %67, i32 2, i32 %83
  br label %103

101:                                              ; preds = %97
  %102 = select i1 %65, i32 1, i32 %83
  br label %103

103:                                              ; preds = %101, %99, %91, %89, %93
  %104 = phi i32 [ %83, %93 ], [ %90, %89 ], [ %92, %91 ], [ %100, %99 ], [ %102, %101 ]
  switch i32 %104, label %244 [
    i32 0, label %105
    i32 1, label %202
    i32 2, label %216
    i32 3, label %230
  ]

105:                                              ; preds = %103
  %106 = or i32 %47, %29
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  br i1 %12, label %121, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %111 = load i16, ptr %110, align 2, !tbaa !53
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %4, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !54
  %115 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %116 = load i16, ptr %115, align 4, !tbaa !55
  %117 = sext i16 %116 to i64
  %118 = sext i32 %5 to i64
  %119 = getelementptr inbounds %struct.pic_motion_params, ptr %114, i64 %117, i32 1, i64 %118
  %120 = load i32, ptr %119, align 4
  store i32 %120, ptr %2, align 2
  br label %245

121:                                              ; preds = %108
  store i32 0, ptr %2, align 2
  br label %245

122:                                              ; preds = %105
  br i1 %12, label %134, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %125 = load i16, ptr %124, align 2, !tbaa !53
  %126 = sext i16 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %4, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !54
  %129 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %130 = load i16, ptr %129, align 4, !tbaa !55
  %131 = sext i16 %130 to i64
  %132 = sext i32 %5 to i64
  %133 = getelementptr inbounds %struct.pic_motion_params, ptr %128, i64 %131, i32 1, i64 %132
  br label %134

134:                                              ; preds = %122, %123
  %135 = phi ptr [ %133, %123 ], [ @zero_mv, %122 ]
  br i1 %30, label %147, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %138 = load i16, ptr %137, align 2, !tbaa !53
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %4, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !54
  %142 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %143 = load i16, ptr %142, align 4, !tbaa !55
  %144 = sext i16 %143 to i64
  %145 = sext i32 %5 to i64
  %146 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %144, i32 1, i64 %145
  br label %147

147:                                              ; preds = %134, %136
  %148 = phi ptr [ %146, %136 ], [ @zero_mv, %134 ]
  br i1 %48, label %160, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %151 = load i16, ptr %150, align 2, !tbaa !53
  %152 = sext i16 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %4, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !54
  %155 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %156 = load i16, ptr %155, align 4, !tbaa !55
  %157 = sext i16 %156 to i64
  %158 = sext i32 %5 to i64
  %159 = getelementptr inbounds %struct.pic_motion_params, ptr %154, i64 %157, i32 1, i64 %158
  br label %160

160:                                              ; preds = %147, %149
  %161 = phi ptr [ %159, %149 ], [ @zero_mv, %147 ]
  %162 = load i16, ptr %135, align 2, !tbaa !57
  %163 = sext i16 %162 to i32
  %164 = load i16, ptr %148, align 2, !tbaa !57
  %165 = sext i16 %164 to i32
  %166 = load i16, ptr %161, align 2, !tbaa !57
  %167 = sext i16 %166 to i32
  %168 = icmp sgt i16 %162, %164
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = icmp sgt i16 %164, %166
  br i1 %170, label %177, label %171

171:                                              ; preds = %169
  %172 = tail call i32 @llvm.smin.i32(i32 %163, i32 %167)
  br label %177

173:                                              ; preds = %160
  %174 = icmp sgt i16 %162, %166
  br i1 %174, label %177, label %175

175:                                              ; preds = %173
  %176 = tail call i32 @llvm.smin.i32(i32 %165, i32 %167)
  br label %177

177:                                              ; preds = %169, %171, %173, %175
  %178 = phi i32 [ %165, %169 ], [ %172, %171 ], [ %163, %173 ], [ %176, %175 ]
  %179 = trunc i32 %178 to i16
  store i16 %179, ptr %2, align 2, !tbaa !57
  %180 = getelementptr inbounds %struct.MotionVector, ptr %135, i64 0, i32 1
  %181 = load i16, ptr %180, align 2, !tbaa !58
  %182 = sext i16 %181 to i32
  %183 = getelementptr inbounds %struct.MotionVector, ptr %148, i64 0, i32 1
  %184 = load i16, ptr %183, align 2, !tbaa !58
  %185 = sext i16 %184 to i32
  %186 = getelementptr inbounds %struct.MotionVector, ptr %161, i64 0, i32 1
  %187 = load i16, ptr %186, align 2, !tbaa !58
  %188 = sext i16 %187 to i32
  %189 = icmp sgt i16 %181, %184
  br i1 %189, label %190, label %194

190:                                              ; preds = %177
  %191 = icmp sgt i16 %184, %187
  br i1 %191, label %198, label %192

192:                                              ; preds = %190
  %193 = tail call i32 @llvm.smin.i32(i32 %182, i32 %188)
  br label %198

194:                                              ; preds = %177
  %195 = icmp sgt i16 %181, %187
  br i1 %195, label %198, label %196

196:                                              ; preds = %194
  %197 = tail call i32 @llvm.smin.i32(i32 %185, i32 %188)
  br label %198

198:                                              ; preds = %190, %192, %194, %196
  %199 = phi i32 [ %185, %190 ], [ %193, %192 ], [ %182, %194 ], [ %197, %196 ]
  %200 = trunc i32 %199 to i16
  %201 = getelementptr inbounds %struct.MotionVector, ptr %2, i64 0, i32 1
  store i16 %200, ptr %201, align 2, !tbaa !58
  br label %245

202:                                              ; preds = %103
  br i1 %12, label %215, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %205 = load i16, ptr %204, align 2, !tbaa !53
  %206 = sext i16 %205 to i64
  %207 = getelementptr inbounds ptr, ptr %4, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !54
  %209 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %210 = load i16, ptr %209, align 4, !tbaa !55
  %211 = sext i16 %210 to i64
  %212 = sext i32 %5 to i64
  %213 = getelementptr inbounds %struct.pic_motion_params, ptr %208, i64 %211, i32 1, i64 %212
  %214 = load i32, ptr %213, align 4
  store i32 %214, ptr %2, align 2
  br label %245

215:                                              ; preds = %202
  store i32 0, ptr %2, align 2
  br label %245

216:                                              ; preds = %103
  br i1 %30, label %229, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %219 = load i16, ptr %218, align 2, !tbaa !53
  %220 = sext i16 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %4, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !54
  %223 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %224 = load i16, ptr %223, align 4, !tbaa !55
  %225 = sext i16 %224 to i64
  %226 = sext i32 %5 to i64
  %227 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %225, i32 1, i64 %226
  %228 = load i32, ptr %227, align 4
  store i32 %228, ptr %2, align 2
  br label %245

229:                                              ; preds = %216
  store i32 0, ptr %2, align 2
  br label %245

230:                                              ; preds = %103
  br i1 %48, label %243, label %231

231:                                              ; preds = %230
  %232 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %233 = load i16, ptr %232, align 2, !tbaa !53
  %234 = sext i16 %233 to i64
  %235 = getelementptr inbounds ptr, ptr %4, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !54
  %237 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %238 = load i16, ptr %237, align 4, !tbaa !55
  %239 = sext i16 %238 to i64
  %240 = sext i32 %5 to i64
  %241 = getelementptr inbounds %struct.pic_motion_params, ptr %236, i64 %239, i32 1, i64 %240
  %242 = load i32, ptr %241, align 4
  store i32 %242, ptr %2, align 2
  br label %245

243:                                              ; preds = %230
  store i32 0, ptr %2, align 2
  br label %245

244:                                              ; preds = %103
  unreachable

245:                                              ; preds = %231, %243, %217, %229, %203, %215, %198, %121, %109
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!34 = !{!35, !36, i64 448}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !39, i64 384}
!44 = !{!45, !39, i64 0}
!45 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!46 = !{!47, !36, i64 848888}
!47 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !48, i64 849304, !48, i64 849624, !48, i64 849944, !48, i64 850264, !48, i64 850584, !48, i64 850904, !48, i64 851224, !48, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !51, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!48 = !{!"image_data", !49, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!49 = !{!"frame_format", !39, i64 0, !39, i64 4, !50, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!50 = !{!"double", !37, i64 0}
!51 = !{!"long", !37, i64 0}
!52 = !{!45, !39, i64 4}
!53 = !{!45, !41, i64 14}
!54 = !{!36, !36, i64 0}
!55 = !{!45, !41, i64 12}
!56 = !{!37, !37, i64 0}
!57 = !{!40, !41, i64 0}
!58 = !{!40, !41, i64 2}
!59 = !{!41, !41, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
