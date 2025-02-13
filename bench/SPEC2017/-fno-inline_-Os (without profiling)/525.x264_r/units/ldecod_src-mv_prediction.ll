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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_motion_vector_prediction(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @GetMotionVectorPredictorNormal, ptr @GetMotionVectorPredictorMBAFF
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  store ptr %4, ptr %5, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorMBAFF(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i16 noundef signext %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %14 = load i32, ptr %13, align 8, !tbaa !13
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %1, align 4, !tbaa !14
  %17 = icmp eq i32 %16, 0
  br i1 %15, label %98, label %18

18:                                               ; preds = %10
  br i1 %17, label %42, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.macroblock, ptr %21, i64 %24, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !13
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !23
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %4, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !25
  %35 = sext i16 %34 to i64
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds %struct.pic_motion_params, ptr %32, i64 %35, i32 2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !26
  %39 = sext i8 %38 to i32
  %40 = zext i1 %27 to i32
  %41 = shl nsw i32 %39, %40
  br label %42

42:                                               ; preds = %19, %18
  %43 = phi i32 [ -1, %18 ], [ %41, %19 ]
  %44 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %49 = load ptr, ptr %48, align 8, !tbaa !16
  %50 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !22
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.macroblock, ptr %49, i64 %52, i32 45
  %54 = load i32, ptr %53, align 8, !tbaa !13
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !23
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %4, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !24
  %61 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %62 = load i16, ptr %61, align 4, !tbaa !25
  %63 = sext i16 %62 to i64
  %64 = sext i32 %5 to i64
  %65 = getelementptr inbounds %struct.pic_motion_params, ptr %60, i64 %63, i32 2, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !26
  %67 = sext i8 %66 to i32
  %68 = zext i1 %55 to i32
  %69 = shl nsw i32 %67, %68
  br label %70

70:                                               ; preds = %47, %42
  %71 = phi i32 [ -1, %42 ], [ %69, %47 ]
  %72 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %73 = load i32, ptr %72, align 4, !tbaa !14
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %184, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %77 = load ptr, ptr %76, align 8, !tbaa !16
  %78 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !22
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.macroblock, ptr %77, i64 %80, i32 45
  %82 = load i32, ptr %81, align 8, !tbaa !13
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %85 = load i16, ptr %84, align 2, !tbaa !23
  %86 = sext i16 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %4, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !24
  %89 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %90 = load i16, ptr %89, align 4, !tbaa !25
  %91 = sext i16 %90 to i64
  %92 = sext i32 %5 to i64
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %88, i64 %91, i32 2, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !26
  %95 = sext i8 %94 to i32
  %96 = zext i1 %83 to i32
  %97 = shl nsw i32 %95, %96
  br label %184

98:                                               ; preds = %10
  br i1 %17, label %124, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %101 = load ptr, ptr %100, align 8, !tbaa !16
  %102 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !22
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.macroblock, ptr %101, i64 %104, i32 45
  %106 = load i32, ptr %105, align 8, !tbaa !13
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %109 = load i16, ptr %108, align 2, !tbaa !23
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %4, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !24
  %113 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %114 = load i16, ptr %113, align 4, !tbaa !25
  %115 = sext i16 %114 to i64
  %116 = sext i32 %5 to i64
  %117 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %115, i32 2, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !26
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
  %127 = load i32, ptr %126, align 4, !tbaa !14
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %154, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %131 = load ptr, ptr %130, align 8, !tbaa !16
  %132 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !22
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.macroblock, ptr %131, i64 %134, i32 45
  %136 = load i32, ptr %135, align 8, !tbaa !13
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %139 = load i16, ptr %138, align 2, !tbaa !23
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %4, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !24
  %143 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %144 = load i16, ptr %143, align 4, !tbaa !25
  %145 = sext i16 %144 to i64
  %146 = sext i32 %5 to i64
  %147 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %145, i32 2, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !26
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
  %157 = load i32, ptr %156, align 4, !tbaa !14
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %184, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %161 = load ptr, ptr %160, align 8, !tbaa !16
  %162 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !22
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.macroblock, ptr %161, i64 %164, i32 45
  %166 = load i32, ptr %165, align 8, !tbaa !13
  %167 = icmp eq i32 %166, 0
  %168 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %169 = load i16, ptr %168, align 2, !tbaa !23
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %4, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !24
  %173 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %174 = load i16, ptr %173, align 4, !tbaa !25
  %175 = sext i16 %174 to i64
  %176 = sext i32 %5 to i64
  %177 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %175, i32 2, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !26
  br i1 %167, label %182, label %179

179:                                              ; preds = %159
  %180 = ashr i8 %178, 1
  %181 = sext i8 %180 to i32
  br label %184

182:                                              ; preds = %159
  %183 = sext i8 %178 to i32
  br label %184

184:                                              ; preds = %75, %182, %179, %154, %70
  %185 = phi i32 [ 0, %70 ], [ 0, %154 ], [ %157, %179 ], [ %157, %182 ], [ %73, %75 ]
  %186 = phi i32 [ %45, %70 ], [ %127, %154 ], [ %127, %179 ], [ %127, %182 ], [ %45, %75 ]
  %187 = phi i32 [ %43, %70 ], [ %125, %154 ], [ %125, %179 ], [ %125, %182 ], [ %43, %75 ]
  %188 = phi i32 [ %71, %70 ], [ %155, %154 ], [ %155, %179 ], [ %155, %182 ], [ %71, %75 ]
  %189 = phi i32 [ -1, %70 ], [ -1, %154 ], [ %181, %179 ], [ %183, %182 ], [ %97, %75 ]
  %190 = sext i16 %3 to i32
  %191 = icmp eq i32 %187, %190
  %192 = xor i1 %191, true
  %193 = icmp eq i32 %188, %190
  %194 = select i1 %192, i1 true, i1 %193
  %195 = icmp eq i32 %189, %190
  %196 = select i1 %194, i1 true, i1 %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %184
  %198 = xor i1 %193, true
  %199 = select i1 %191, i1 true, i1 %198
  %200 = select i1 %199, i1 true, i1 %195
  %201 = xor i1 %200, true
  %202 = or i1 %191, %201
  %203 = select i1 %200, i32 0, i32 2
  br i1 %202, label %208, label %204

204:                                              ; preds = %197
  %205 = icmp ne i32 %188, %190
  %206 = select i1 %205, i1 %195, i1 false
  %207 = select i1 %206, i32 3, i32 0
  br label %208

208:                                              ; preds = %204, %197, %184
  %209 = phi i32 [ 1, %184 ], [ %203, %197 ], [ %207, %204 ]
  %210 = icmp eq i32 %8, 8
  %211 = icmp eq i32 %9, 16
  %212 = and i1 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = icmp eq i32 %6, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %213
  %216 = select i1 %191, i32 1, i32 %209
  br label %229

217:                                              ; preds = %213
  %218 = select i1 %195, i32 3, i32 %209
  br label %229

219:                                              ; preds = %208
  %220 = icmp eq i32 %8, 16
  %221 = icmp eq i32 %9, 8
  %222 = and i1 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = icmp eq i32 %7, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %223
  %226 = select i1 %193, i32 2, i32 %209
  br label %229

227:                                              ; preds = %223
  %228 = select i1 %191, i32 1, i32 %209
  br label %229

229:                                              ; preds = %227, %225, %217, %215, %219
  %230 = phi i32 [ %209, %219 ], [ %216, %215 ], [ %218, %217 ], [ %226, %225 ], [ %228, %227 ]
  %231 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 35
  %232 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 1
  %233 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %234 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %235 = sext i32 %5 to i64
  %236 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 1
  %237 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %238 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %239 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 1
  %240 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %241 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %242 = icmp eq i32 %16, 0
  %243 = icmp eq i32 %16, 0
  %244 = icmp eq i32 %16, 0
  %245 = icmp eq i32 %186, 0
  %246 = or i32 %186, %185
  %247 = icmp eq i32 %246, 0
  br label %248

248:                                              ; preds = %447, %229
  %249 = phi i32 [ %185, %229 ], [ %440, %447 ]
  %250 = phi i32 [ %186, %229 ], [ %441, %447 ]
  %251 = phi i32 [ %185, %229 ], [ %442, %447 ]
  %252 = phi i32 [ %186, %229 ], [ %443, %447 ]
  %253 = phi i32 [ %185, %229 ], [ %444, %447 ]
  %254 = phi i32 [ %186, %229 ], [ %445, %447 ]
  %255 = phi i1 [ true, %229 ], [ false, %447 ]
  br i1 %255, label %256, label %293

256:                                              ; preds = %248
  br i1 %244, label %267, label %257

257:                                              ; preds = %256
  %258 = load i16, ptr %233, align 2, !tbaa !23
  %259 = sext i16 %258 to i64
  %260 = getelementptr inbounds ptr, ptr %4, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !24
  %262 = load i16, ptr %234, align 4, !tbaa !25
  %263 = sext i16 %262 to i64
  %264 = getelementptr inbounds %struct.pic_motion_params, ptr %261, i64 %263, i32 1, i64 %235
  %265 = load i16, ptr %264, align 4, !tbaa !27
  %266 = sext i16 %265 to i32
  br label %267

267:                                              ; preds = %256, %257
  %268 = phi i32 [ %266, %257 ], [ 0, %256 ]
  %269 = icmp eq i32 %250, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %267
  %271 = load i16, ptr %237, align 2, !tbaa !23
  %272 = sext i16 %271 to i64
  %273 = getelementptr inbounds ptr, ptr %4, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !24
  %275 = load i16, ptr %238, align 4, !tbaa !25
  %276 = sext i16 %275 to i64
  %277 = getelementptr inbounds %struct.pic_motion_params, ptr %274, i64 %276, i32 1, i64 %235
  %278 = load i16, ptr %277, align 4, !tbaa !27
  %279 = sext i16 %278 to i32
  br label %280

280:                                              ; preds = %267, %270
  %281 = phi i32 [ %279, %270 ], [ 0, %267 ]
  %282 = icmp eq i32 %249, 0
  br i1 %282, label %422, label %283

283:                                              ; preds = %280
  %284 = load i16, ptr %240, align 2, !tbaa !23
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds ptr, ptr %4, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !24
  %288 = load i16, ptr %241, align 4, !tbaa !25
  %289 = sext i16 %288 to i64
  %290 = getelementptr inbounds %struct.pic_motion_params, ptr %287, i64 %289, i32 1, i64 %235
  %291 = load i16, ptr %290, align 4, !tbaa !27
  %292 = sext i16 %291 to i32
  br label %422

293:                                              ; preds = %248
  br i1 %15, label %361, label %294

294:                                              ; preds = %293
  br i1 %242, label %315, label %295

295:                                              ; preds = %294
  %296 = load ptr, ptr %231, align 8, !tbaa !16
  %297 = load i32, ptr %232, align 4, !tbaa !22
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.macroblock, ptr %296, i64 %298, i32 45
  %300 = load i32, ptr %299, align 8, !tbaa !13
  %301 = icmp eq i32 %300, 0
  %302 = load i16, ptr %233, align 2, !tbaa !23
  %303 = sext i16 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %4, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !24
  %306 = load i16, ptr %234, align 4, !tbaa !25
  %307 = sext i16 %306 to i64
  %308 = getelementptr inbounds %struct.pic_motion_params, ptr %305, i64 %307, i32 1, i64 %235, i32 1
  %309 = load i16, ptr %308, align 2, !tbaa !28
  br i1 %301, label %312, label %310

310:                                              ; preds = %295
  %311 = sext i16 %309 to i32
  br label %315

312:                                              ; preds = %295
  %313 = sdiv i16 %309, 2
  %314 = sext i16 %313 to i32
  br label %315

315:                                              ; preds = %294, %310, %312
  %316 = phi i32 [ %311, %310 ], [ %314, %312 ], [ 0, %294 ]
  %317 = icmp eq i32 %254, 0
  br i1 %317, label %338, label %318

318:                                              ; preds = %315
  %319 = load ptr, ptr %231, align 8, !tbaa !16
  %320 = load i32, ptr %236, align 4, !tbaa !22
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.macroblock, ptr %319, i64 %321, i32 45
  %323 = load i32, ptr %322, align 8, !tbaa !13
  %324 = icmp eq i32 %323, 0
  %325 = load i16, ptr %237, align 2, !tbaa !23
  %326 = sext i16 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %4, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !24
  %329 = load i16, ptr %238, align 4, !tbaa !25
  %330 = sext i16 %329 to i64
  %331 = getelementptr inbounds %struct.pic_motion_params, ptr %328, i64 %330, i32 1, i64 %235, i32 1
  %332 = load i16, ptr %331, align 2, !tbaa !28
  br i1 %324, label %335, label %333

333:                                              ; preds = %318
  %334 = sext i16 %332 to i32
  br label %338

335:                                              ; preds = %318
  %336 = sdiv i16 %332, 2
  %337 = sext i16 %336 to i32
  br label %338

338:                                              ; preds = %315, %333, %335
  %339 = phi i32 [ %334, %333 ], [ %337, %335 ], [ 0, %315 ]
  %340 = icmp eq i32 %253, 0
  br i1 %340, label %422, label %341

341:                                              ; preds = %338
  %342 = load ptr, ptr %231, align 8, !tbaa !16
  %343 = load i32, ptr %239, align 4, !tbaa !22
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.macroblock, ptr %342, i64 %344, i32 45
  %346 = load i32, ptr %345, align 8, !tbaa !13
  %347 = icmp eq i32 %346, 0
  %348 = load i16, ptr %240, align 2, !tbaa !23
  %349 = sext i16 %348 to i64
  %350 = getelementptr inbounds ptr, ptr %4, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !24
  %352 = load i16, ptr %241, align 4, !tbaa !25
  %353 = sext i16 %352 to i64
  %354 = getelementptr inbounds %struct.pic_motion_params, ptr %351, i64 %353, i32 1, i64 %235, i32 1
  %355 = load i16, ptr %354, align 2, !tbaa !28
  br i1 %347, label %358, label %356

356:                                              ; preds = %341
  %357 = sext i16 %355 to i32
  br label %422

358:                                              ; preds = %341
  %359 = sdiv i16 %355, 2
  %360 = sext i16 %359 to i32
  br label %422

361:                                              ; preds = %293
  br i1 %243, label %380, label %362

362:                                              ; preds = %361
  %363 = load ptr, ptr %231, align 8, !tbaa !16
  %364 = load i32, ptr %232, align 4, !tbaa !22
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.macroblock, ptr %363, i64 %365, i32 45
  %367 = load i32, ptr %366, align 8, !tbaa !13
  %368 = icmp ne i32 %367, 0
  %369 = load i16, ptr %233, align 2, !tbaa !23
  %370 = sext i16 %369 to i64
  %371 = getelementptr inbounds ptr, ptr %4, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !24
  %373 = load i16, ptr %234, align 4, !tbaa !25
  %374 = sext i16 %373 to i64
  %375 = getelementptr inbounds %struct.pic_motion_params, ptr %372, i64 %374, i32 1, i64 %235, i32 1
  %376 = load i16, ptr %375, align 2, !tbaa !28
  %377 = sext i16 %376 to i32
  %378 = zext i1 %368 to i32
  %379 = shl nsw i32 %377, %378
  br label %380

380:                                              ; preds = %362, %361
  %381 = phi i32 [ 0, %361 ], [ %379, %362 ]
  %382 = icmp eq i32 %252, 0
  br i1 %382, label %401, label %383

383:                                              ; preds = %380
  %384 = load ptr, ptr %231, align 8, !tbaa !16
  %385 = load i32, ptr %236, align 4, !tbaa !22
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.macroblock, ptr %384, i64 %386, i32 45
  %388 = load i32, ptr %387, align 8, !tbaa !13
  %389 = icmp ne i32 %388, 0
  %390 = load i16, ptr %237, align 2, !tbaa !23
  %391 = sext i16 %390 to i64
  %392 = getelementptr inbounds ptr, ptr %4, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !24
  %394 = load i16, ptr %238, align 4, !tbaa !25
  %395 = sext i16 %394 to i64
  %396 = getelementptr inbounds %struct.pic_motion_params, ptr %393, i64 %395, i32 1, i64 %235, i32 1
  %397 = load i16, ptr %396, align 2, !tbaa !28
  %398 = sext i16 %397 to i32
  %399 = zext i1 %389 to i32
  %400 = shl nsw i32 %398, %399
  br label %401

401:                                              ; preds = %383, %380
  %402 = phi i32 [ 0, %380 ], [ %400, %383 ]
  %403 = icmp eq i32 %251, 0
  br i1 %403, label %422, label %404

404:                                              ; preds = %401
  %405 = load ptr, ptr %231, align 8, !tbaa !16
  %406 = load i32, ptr %239, align 4, !tbaa !22
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.macroblock, ptr %405, i64 %407, i32 45
  %409 = load i32, ptr %408, align 8, !tbaa !13
  %410 = icmp ne i32 %409, 0
  %411 = load i16, ptr %240, align 2, !tbaa !23
  %412 = sext i16 %411 to i64
  %413 = getelementptr inbounds ptr, ptr %4, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !24
  %415 = load i16, ptr %241, align 4, !tbaa !25
  %416 = sext i16 %415 to i64
  %417 = getelementptr inbounds %struct.pic_motion_params, ptr %414, i64 %416, i32 1, i64 %235, i32 1
  %418 = load i16, ptr %417, align 2, !tbaa !28
  %419 = sext i16 %418 to i32
  %420 = zext i1 %410 to i32
  %421 = shl nsw i32 %419, %420
  br label %422

422:                                              ; preds = %404, %401, %358, %356, %338, %283, %280
  %423 = phi i32 [ 0, %280 ], [ %249, %283 ], [ %251, %338 ], [ %251, %356 ], [ %251, %358 ], [ 0, %401 ], [ %251, %404 ]
  %424 = phi i32 [ %250, %280 ], [ %250, %283 ], [ %252, %338 ], [ %252, %356 ], [ %252, %358 ], [ %252, %401 ], [ %252, %404 ]
  %425 = phi i32 [ 0, %280 ], [ %249, %283 ], [ 0, %338 ], [ %253, %356 ], [ %253, %358 ], [ 0, %401 ], [ %251, %404 ]
  %426 = phi i32 [ %250, %280 ], [ %250, %283 ], [ %254, %338 ], [ %254, %356 ], [ %254, %358 ], [ %252, %401 ], [ %252, %404 ]
  %427 = phi i32 [ %281, %280 ], [ %281, %283 ], [ %339, %338 ], [ %339, %356 ], [ %339, %358 ], [ %402, %401 ], [ %402, %404 ]
  %428 = phi i32 [ 0, %280 ], [ %292, %283 ], [ 0, %338 ], [ %357, %356 ], [ %360, %358 ], [ 0, %401 ], [ %421, %404 ]
  %429 = phi i32 [ %268, %280 ], [ %268, %283 ], [ %316, %338 ], [ %316, %356 ], [ %316, %358 ], [ %381, %401 ], [ %381, %404 ]
  switch i32 %230, label %438 [
    i32 0, label %430
    i32 1, label %439
    i32 2, label %436
    i32 3, label %437
  ]

430:                                              ; preds = %422
  br i1 %247, label %439, label %431

431:                                              ; preds = %430
  %432 = select i1 %245, i32 %185, i32 %425
  %433 = select i1 %245, i32 %185, i32 %423
  %434 = select i1 %245, i32 %185, i32 %249
  %435 = tail call fastcc i32 @imedian(i32 noundef %429, i32 noundef %427, i32 noundef %428) #5, !range !29
  br label %439

436:                                              ; preds = %422
  br label %439

437:                                              ; preds = %422
  br label %439

438:                                              ; preds = %422
  unreachable

439:                                              ; preds = %430, %422, %431, %437, %436
  %440 = phi i32 [ %249, %437 ], [ %249, %436 ], [ %434, %431 ], [ %249, %422 ], [ 0, %430 ]
  %441 = phi i32 [ %250, %437 ], [ %250, %436 ], [ %186, %431 ], [ %250, %422 ], [ 0, %430 ]
  %442 = phi i32 [ %423, %437 ], [ %423, %436 ], [ %433, %431 ], [ %423, %422 ], [ 0, %430 ]
  %443 = phi i32 [ %424, %437 ], [ %424, %436 ], [ %186, %431 ], [ %424, %422 ], [ 0, %430 ]
  %444 = phi i32 [ %425, %437 ], [ %425, %436 ], [ %432, %431 ], [ %425, %422 ], [ 0, %430 ]
  %445 = phi i32 [ %426, %437 ], [ %426, %436 ], [ %186, %431 ], [ %426, %422 ], [ 0, %430 ]
  %446 = phi i32 [ %428, %437 ], [ %427, %436 ], [ %435, %431 ], [ %429, %422 ], [ %429, %430 ]
  br i1 %255, label %447, label %449

447:                                              ; preds = %439
  %448 = trunc i32 %446 to i16
  store i16 %448, ptr %2, align 2, !tbaa !27
  br label %248, !llvm.loop !30

449:                                              ; preds = %439
  %450 = getelementptr inbounds %struct.MotionVector, ptr %2, i64 0, i32 1
  %451 = trunc i32 %446 to i16
  store i16 %451, ptr %450, align 2, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorNormal(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i16 noundef signext %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #2 {
  %11 = load i32, ptr %1, align 4, !tbaa !14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !23
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %4, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !25
  %21 = sext i16 %20 to i64
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds %struct.pic_motion_params, ptr %18, i64 %21, i32 2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !26
  %25 = sext i8 %24 to i32
  br label %26

26:                                               ; preds = %10, %13
  %27 = phi i32 [ %25, %13 ], [ -1, %10 ]
  %28 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !23
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %4, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !24
  %37 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !25
  %39 = sext i16 %38 to i64
  %40 = sext i32 %5 to i64
  %41 = getelementptr inbounds %struct.pic_motion_params, ptr %36, i64 %39, i32 2, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !26
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %26, %31
  %45 = phi i32 [ %43, %31 ], [ -1, %26 ]
  %46 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  %47 = load i32, ptr %46, align 4, !tbaa !14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %51 = load i16, ptr %50, align 2, !tbaa !23
  %52 = sext i16 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !24
  %55 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %56 = load i16, ptr %55, align 4, !tbaa !25
  %57 = sext i16 %56 to i64
  %58 = sext i32 %5 to i64
  %59 = getelementptr inbounds %struct.pic_motion_params, ptr %54, i64 %57, i32 2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !26
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
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = icmp eq i32 %6, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br i1 %65, label %177, label %99

90:                                               ; preds = %87
  br i1 %69, label %205, label %99

91:                                               ; preds = %82
  %92 = icmp eq i32 %8, 16
  %93 = icmp eq i32 %9, 8
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = icmp eq i32 %7, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br i1 %67, label %191, label %99

98:                                               ; preds = %95
  br i1 %65, label %177, label %99

99:                                               ; preds = %98, %97, %90, %89, %91
  switch i32 %83, label %219 [
    i32 0, label %100
    i32 1, label %177
    i32 2, label %191
    i32 3, label %205
  ]

100:                                              ; preds = %99
  %101 = or i32 %47, %29
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  br i1 %12, label %116, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %106 = load i16, ptr %105, align 2, !tbaa !23
  %107 = sext i16 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %4, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !24
  %110 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %111 = load i16, ptr %110, align 4, !tbaa !25
  %112 = sext i16 %111 to i64
  %113 = sext i32 %5 to i64
  %114 = getelementptr inbounds %struct.pic_motion_params, ptr %109, i64 %112, i32 1, i64 %113
  %115 = load i32, ptr %114, align 4
  store i32 %115, ptr %2, align 2
  br label %220

116:                                              ; preds = %103
  store i32 0, ptr %2, align 2
  br label %220

117:                                              ; preds = %100
  br i1 %12, label %129, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %120 = load i16, ptr %119, align 2, !tbaa !23
  %121 = sext i16 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %4, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !24
  %124 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %125 = load i16, ptr %124, align 4, !tbaa !25
  %126 = sext i16 %125 to i64
  %127 = sext i32 %5 to i64
  %128 = getelementptr inbounds %struct.pic_motion_params, ptr %123, i64 %126, i32 1, i64 %127
  br label %129

129:                                              ; preds = %117, %118
  %130 = phi ptr [ %128, %118 ], [ @zero_mv, %117 ]
  br i1 %30, label %142, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %133 = load i16, ptr %132, align 2, !tbaa !23
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %4, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !24
  %137 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %138 = load i16, ptr %137, align 4, !tbaa !25
  %139 = sext i16 %138 to i64
  %140 = sext i32 %5 to i64
  %141 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %139, i32 1, i64 %140
  br label %142

142:                                              ; preds = %129, %131
  %143 = phi ptr [ %141, %131 ], [ @zero_mv, %129 ]
  br i1 %48, label %155, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %146 = load i16, ptr %145, align 2, !tbaa !23
  %147 = sext i16 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %4, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !24
  %150 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %151 = load i16, ptr %150, align 4, !tbaa !25
  %152 = sext i16 %151 to i64
  %153 = sext i32 %5 to i64
  %154 = getelementptr inbounds %struct.pic_motion_params, ptr %149, i64 %152, i32 1, i64 %153
  br label %155

155:                                              ; preds = %142, %144
  %156 = phi ptr [ %154, %144 ], [ @zero_mv, %142 ]
  %157 = load i16, ptr %130, align 2, !tbaa !27
  %158 = sext i16 %157 to i32
  %159 = load i16, ptr %143, align 2, !tbaa !27
  %160 = sext i16 %159 to i32
  %161 = load i16, ptr %156, align 2, !tbaa !27
  %162 = sext i16 %161 to i32
  %163 = tail call fastcc i32 @imedian(i32 noundef %158, i32 noundef %160, i32 noundef %162) #5, !range !29
  %164 = trunc i32 %163 to i16
  store i16 %164, ptr %2, align 2, !tbaa !27
  %165 = getelementptr inbounds %struct.MotionVector, ptr %130, i64 0, i32 1
  %166 = load i16, ptr %165, align 2, !tbaa !28
  %167 = sext i16 %166 to i32
  %168 = getelementptr inbounds %struct.MotionVector, ptr %143, i64 0, i32 1
  %169 = load i16, ptr %168, align 2, !tbaa !28
  %170 = sext i16 %169 to i32
  %171 = getelementptr inbounds %struct.MotionVector, ptr %156, i64 0, i32 1
  %172 = load i16, ptr %171, align 2, !tbaa !28
  %173 = sext i16 %172 to i32
  %174 = tail call fastcc i32 @imedian(i32 noundef %167, i32 noundef %170, i32 noundef %173) #5, !range !29
  %175 = trunc i32 %174 to i16
  %176 = getelementptr inbounds %struct.MotionVector, ptr %2, i64 0, i32 1
  store i16 %175, ptr %176, align 2, !tbaa !28
  br label %220

177:                                              ; preds = %98, %89, %99
  br i1 %12, label %190, label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 5
  %180 = load i16, ptr %179, align 2, !tbaa !23
  %181 = sext i16 %180 to i64
  %182 = getelementptr inbounds ptr, ptr %4, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !24
  %184 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 4
  %185 = load i16, ptr %184, align 4, !tbaa !25
  %186 = sext i16 %185 to i64
  %187 = sext i32 %5 to i64
  %188 = getelementptr inbounds %struct.pic_motion_params, ptr %183, i64 %186, i32 1, i64 %187
  %189 = load i32, ptr %188, align 4
  store i32 %189, ptr %2, align 2
  br label %220

190:                                              ; preds = %177
  store i32 0, ptr %2, align 2
  br label %220

191:                                              ; preds = %97, %99
  br i1 %30, label %204, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 5
  %194 = load i16, ptr %193, align 2, !tbaa !23
  %195 = sext i16 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %4, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !24
  %198 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1, i32 4
  %199 = load i16, ptr %198, align 4, !tbaa !25
  %200 = sext i16 %199 to i64
  %201 = sext i32 %5 to i64
  %202 = getelementptr inbounds %struct.pic_motion_params, ptr %197, i64 %200, i32 1, i64 %201
  %203 = load i32, ptr %202, align 4
  store i32 %203, ptr %2, align 2
  br label %220

204:                                              ; preds = %191
  store i32 0, ptr %2, align 2
  br label %220

205:                                              ; preds = %90, %99
  br i1 %48, label %218, label %206

206:                                              ; preds = %205
  %207 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 5
  %208 = load i16, ptr %207, align 2, !tbaa !23
  %209 = sext i16 %208 to i64
  %210 = getelementptr inbounds ptr, ptr %4, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !24
  %212 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2, i32 4
  %213 = load i16, ptr %212, align 4, !tbaa !25
  %214 = sext i16 %213 to i64
  %215 = sext i32 %5 to i64
  %216 = getelementptr inbounds %struct.pic_motion_params, ptr %211, i64 %214, i32 1, i64 %215
  %217 = load i32, ptr %216, align 4
  store i32 %217, ptr %2, align 2
  br label %220

218:                                              ; preds = %205
  store i32 0, ptr %2, align 2
  br label %220

219:                                              ; preds = %99
  unreachable

220:                                              ; preds = %206, %218, %192, %204, %178, %190, %155, %116, %104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imedian(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp sgt i32 %0, %1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = icmp sgt i32 %1, %2
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  br label %13

9:                                                ; preds = %3
  %10 = icmp sgt i32 %0, %2
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  br label %13

13:                                               ; preds = %11, %9, %7, %5
  %14 = phi i32 [ %1, %5 ], [ %8, %7 ], [ %0, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"macroblock", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !8, i64 72, !8, i64 80, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !12, i64 108, !8, i64 110, !8, i64 111, !12, i64 112, !12, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !12, i64 152, !8, i64 154, !10, i64 284, !8, i64 288, !8, i64 312, !8, i64 336, !10, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !8, i64 373, !8, i64 374, !12, i64 376, !12, i64 378, !12, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !8, i64 472}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !10, i64 384}
!14 = !{!15, !10, i64 0}
!15 = !{!"pix_pos", !10, i64 0, !10, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!16 = !{!17, !7, i64 848888}
!17 = !{!"video_par", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 132120, !7, i64 699416, !8, i64 699424, !10, i64 848672, !10, i64 848676, !10, i64 848680, !10, i64 848684, !7, i64 848688, !7, i64 848696, !7, i64 848704, !10, i64 848712, !10, i64 848716, !10, i64 848720, !10, i64 848724, !10, i64 848728, !7, i64 848736, !7, i64 848744, !8, i64 848752, !10, i64 848776, !10, i64 848780, !10, i64 848784, !10, i64 848788, !10, i64 848792, !7, i64 848800, !8, i64 848808, !7, i64 848832, !7, i64 848840, !8, i64 848848, !10, i64 848872, !10, i64 848876, !7, i64 848880, !7, i64 848888, !8, i64 848896, !10, i64 848920, !7, i64 848928, !7, i64 848936, !10, i64 848944, !10, i64 848948, !10, i64 848952, !10, i64 848956, !10, i64 848960, !10, i64 848964, !10, i64 848968, !10, i64 848972, !10, i64 848976, !10, i64 848980, !10, i64 848984, !10, i64 848988, !10, i64 848992, !10, i64 848996, !10, i64 849000, !10, i64 849004, !10, i64 849008, !10, i64 849012, !10, i64 849016, !10, i64 849020, !10, i64 849024, !10, i64 849028, !10, i64 849032, !10, i64 849036, !12, i64 849040, !12, i64 849042, !8, i64 849044, !10, i64 849052, !10, i64 849056, !8, i64 849060, !8, i64 849072, !10, i64 849084, !10, i64 849088, !10, i64 849092, !10, i64 849096, !10, i64 849100, !10, i64 849104, !10, i64 849108, !10, i64 849112, !10, i64 849116, !10, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !10, i64 849196, !10, i64 849200, !10, i64 849204, !10, i64 849208, !10, i64 849212, !10, i64 849216, !10, i64 849220, !10, i64 849224, !10, i64 849228, !10, i64 849232, !10, i64 849236, !10, i64 849240, !10, i64 849244, !10, i64 849248, !10, i64 849252, !10, i64 849256, !10, i64 849260, !10, i64 849264, !10, i64 849268, !10, i64 849272, !10, i64 849276, !10, i64 849280, !10, i64 849284, !7, i64 849288, !7, i64 849296, !18, i64 849304, !18, i64 849624, !18, i64 849944, !18, i64 850264, !18, i64 850584, !18, i64 850904, !18, i64 851224, !18, i64 851544, !10, i64 851864, !10, i64 851868, !10, i64 851872, !21, i64 851880, !10, i64 851888, !8, i64 851892, !10, i64 855988, !10, i64 855992, !10, i64 855996, !10, i64 856000, !10, i64 856004, !10, i64 856008, !10, i64 856012, !7, i64 856016, !7, i64 856024, !7, i64 856032, !7, i64 856040, !7, i64 856048, !8, i64 856056, !7, i64 856456, !8, i64 856464, !7, i64 856488, !7, i64 856496, !7, i64 856504, !10, i64 856512, !7, i64 856520, !8, i64 856528, !7, i64 856608, !7, i64 856616, !7, i64 856624, !7, i64 856632, !10, i64 856640, !10, i64 856644, !10, i64 856648, !7, i64 856656, !7, i64 856664, !8, i64 856672, !8, i64 856688, !7, i64 856704, !7, i64 856712, !10, i64 856720, !7, i64 856728, !7, i64 856736, !7, i64 856744, !7, i64 856752, !7, i64 856760, !7, i64 856768, !7, i64 856776, !7, i64 856784, !7, i64 856792, !7, i64 856800, !7, i64 856808, !7, i64 856816, !10, i64 856824, !7, i64 856832, !10, i64 856840, !10, i64 856844, !10, i64 856848, !10, i64 856852, !10, i64 856856, !10, i64 856860, !10, i64 856864, !7, i64 856872}
!18 = !{!"image_data", !19, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!19 = !{!"frame_format", !10, i64 0, !10, i64 4, !20, i64 8, !8, i64 16, !8, i64 28, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !8, i64 72, !10, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !10, i64 124, !10, i64 128}
!20 = !{!"double", !8, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!15, !10, i64 4}
!23 = !{!15, !12, i64 14}
!24 = !{!7, !7, i64 0}
!25 = !{!15, !12, i64 12}
!26 = !{!8, !8, i64 0}
!27 = !{!11, !12, i64 0}
!28 = !{!11, !12, i64 2}
!29 = !{i32 -65536, i32 65535}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
