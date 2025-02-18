; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_scopes.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_scopes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
define dso_local ptr @make_waveform_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = add nsw i32 %8, 3
  %10 = tail call ptr @IMB_allocImBuf(i32 noundef %9, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #7
  br i1 %6, label %210, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = load i32, ptr %7, align 8, !tbaa !43
  %16 = add i32 %15, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #7
  %17 = shl i32 %16, 1
  %18 = icmp sgt i32 %15, -3
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = mul i32 %16, 1852
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %14, i64 %21
  %23 = tail call i32 @llvm.smax.i32(i32 %17, i32 1)
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i32 [ %28, %24 ], [ 0, %19 ]
  %26 = phi ptr [ %27, %24 ], [ %22, %19 ]
  store i8 -1, ptr %26, align 1, !tbaa !45
  %27 = getelementptr inbounds i8, ptr %26, i64 4
  %28 = add nuw nsw i32 %25, 1
  %29 = icmp eq i32 %28, %23
  br i1 %29, label %30, label %24, !llvm.loop !46

30:                                               ; preds = %24, %11
  %31 = icmp sgt i32 %15, -3
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %33 = mul i32 %16, 1440
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %14, i64 %34
  %36 = tail call i32 @llvm.smax.i32(i32 %17, i32 1)
  br label %37

37:                                               ; preds = %32, %37
  %38 = phi i32 [ %41, %37 ], [ 0, %32 ]
  %39 = phi ptr [ %40, %37 ], [ %35, %32 ]
  store i8 -1, ptr %39, align 1, !tbaa !45
  %40 = getelementptr inbounds i8, ptr %39, i64 4
  %41 = add nuw nsw i32 %38, 1
  %42 = icmp eq i32 %41, %36
  br i1 %42, label %43, label %37, !llvm.loop !46

43:                                               ; preds = %37, %30
  %44 = icmp sgt i32 %15, -3
  br i1 %44, label %46, label %45

45:                                               ; preds = %51, %43
  br label %64

46:                                               ; preds = %43
  %47 = mul i32 %16, 204
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %14, i64 %48
  %50 = tail call i32 @llvm.smax.i32(i32 %17, i32 1)
  br label %51

51:                                               ; preds = %46, %51
  %52 = phi i32 [ %55, %51 ], [ 0, %46 ]
  %53 = phi ptr [ %54, %51 ], [ %49, %46 ]
  store i8 -1, ptr %53, align 1, !tbaa !45
  %54 = getelementptr inbounds i8, ptr %53, i64 4
  %55 = add nuw nsw i32 %52, 1
  %56 = icmp eq i32 %55, %50
  br i1 %56, label %45, label %51, !llvm.loop !46

57:                                               ; preds = %64
  %58 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !49
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %153

61:                                               ; preds = %57
  %62 = shl nsw i32 %16, 2
  %63 = sext i32 %62 to i64
  br label %77

64:                                               ; preds = %45, %64
  %65 = phi i64 [ %75, %64 ], [ 0, %45 ]
  %66 = trunc i64 %65 to i32
  %67 = sitofp i32 %66 to float
  %68 = fadd float %67, 1.000000e+00
  %69 = fmul float %68, 3.906250e-03
  %70 = fpext float %69 to double
  %71 = tail call double @pow(double noundef %70, double noundef 0x3FC99999A0000000) #7
  %72 = fmul double %71, 2.550000e+02
  %73 = fptoui double %72 to i8
  %74 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %65
  store i8 %73, ptr %74, align 1, !tbaa !45
  %75 = add nuw nsw i64 %65, 1
  %76 = icmp eq i64 %75, 256
  br i1 %76, label %57, label %64, !llvm.loop !50

77:                                               ; preds = %61, %149
  %78 = phi i32 [ 0, %61 ], [ %150, %149 ]
  %79 = load i32, ptr %7, align 8, !tbaa !43
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %77, %145
  %82 = phi i32 [ %147, %145 ], [ %79, %77 ]
  %83 = phi i32 [ %146, %145 ], [ 0, %77 ]
  %84 = phi ptr [ %120, %145 ], [ null, %77 ]
  %85 = mul nsw i32 %82, %78
  %86 = add nsw i32 %85, %83
  %87 = shl nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %12, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !51
  %91 = getelementptr inbounds float, ptr %89, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !51
  %93 = fmul float %92, 0x3FE2C8B440000000
  %94 = tail call float @llvm.fmuladd.f32(float %90, float 0x3FD322D0E0000000, float %93)
  %95 = getelementptr inbounds float, ptr %89, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !51
  %97 = tail call float @llvm.fmuladd.f32(float %96, float 0x3FBD2F1AA0000000, float %94)
  %98 = fcmp olt float %97, 0.000000e+00
  br i1 %98, label %102, label %99

99:                                               ; preds = %81
  %100 = fcmp ogt float %97, 1.000000e+00
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %99, %81
  %103 = phi float [ 1.000000e+00, %101 ], [ %97, %99 ], [ 0.000000e+00, %81 ]
  %104 = fmul float %103, 5.120000e+02
  %105 = fptosi float %104 to i32
  %106 = add nsw i32 %105, 1
  %107 = mul nsw i32 %106, %16
  %108 = add nsw i32 %107, %83
  %109 = shl i32 %108, 2
  %110 = add i32 %109, 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %14, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !45
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds i8, ptr %3, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !45
  %117 = getelementptr inbounds i8, ptr %112, i64 2
  store i8 %116, ptr %117, align 1, !tbaa !45
  %118 = getelementptr inbounds i8, ptr %112, i64 1
  store i8 %116, ptr %118, align 1, !tbaa !45
  store i8 %116, ptr %112, align 1, !tbaa !45
  %119 = getelementptr inbounds i8, ptr %112, i64 3
  store i8 -1, ptr %119, align 1, !tbaa !45
  %120 = getelementptr inbounds i8, ptr %112, i64 %63
  %121 = load i8, ptr %120, align 1, !tbaa !45
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds i8, ptr %3, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !45
  %125 = getelementptr inbounds i8, ptr %120, i64 2
  store i8 %124, ptr %125, align 1, !tbaa !45
  %126 = getelementptr inbounds i8, ptr %120, i64 1
  store i8 %124, ptr %126, align 1, !tbaa !45
  store i8 %124, ptr %120, align 1, !tbaa !45
  %127 = getelementptr inbounds i8, ptr %120, i64 3
  store i8 -1, ptr %127, align 1, !tbaa !45
  %128 = icmp eq ptr %84, null
  br i1 %128, label %145, label %129

129:                                              ; preds = %102
  %130 = icmp ugt ptr %84, %120
  %131 = select i1 %130, ptr %84, ptr %120
  %132 = select i1 %130, ptr %120, ptr %84
  %133 = icmp ult ptr %132, %131
  br i1 %133, label %134, label %145

134:                                              ; preds = %129, %142
  %135 = phi ptr [ %143, %142 ], [ %132, %129 ]
  %136 = load i8, ptr %135, align 1, !tbaa !45
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = getelementptr inbounds i8, ptr %135, i64 2
  store i8 32, ptr %139, align 1, !tbaa !45
  %140 = getelementptr inbounds i8, ptr %135, i64 1
  store i8 32, ptr %140, align 1, !tbaa !45
  store i8 32, ptr %135, align 1, !tbaa !45
  %141 = getelementptr inbounds i8, ptr %135, i64 3
  store i8 -1, ptr %141, align 1, !tbaa !45
  br label %142

142:                                              ; preds = %138, %134
  %143 = getelementptr inbounds i8, ptr %135, i64 %63
  %144 = icmp ult ptr %143, %131
  br i1 %144, label %134, label %145, !llvm.loop !52

145:                                              ; preds = %142, %129, %102
  %146 = add nuw nsw i32 %83, 1
  %147 = load i32, ptr %7, align 8, !tbaa !43
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %81, label %149, !llvm.loop !53

149:                                              ; preds = %145, %77
  %150 = add nuw nsw i32 %78, 1
  %151 = load i32, ptr %58, align 4, !tbaa !49
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %77, label %153, !llvm.loop !54

153:                                              ; preds = %149, %57
  %154 = icmp sgt i32 %15, -3
  br i1 %154, label %155, label %168

155:                                              ; preds = %153
  %156 = shl nsw i32 %16, 2
  %157 = or disjoint i32 %156, 3
  %158 = zext nneg i32 %157 to i64
  %159 = or disjoint i32 %156, 1
  %160 = zext nneg i32 %159 to i64
  %161 = mul nsw i32 %16, 514
  %162 = mul nsw i32 %16, -4
  %163 = or disjoint i32 %162, 3
  %164 = sext i32 %163 to i64
  %165 = or disjoint i32 %162, 1
  %166 = sext i32 %165 to i64
  %167 = zext nneg i32 %16 to i64
  br label %171

168:                                              ; preds = %171, %153
  %169 = shl nsw i32 %16, 2
  %170 = sext i32 %169 to i64
  br label %190

171:                                              ; preds = %171, %155
  %172 = phi i64 [ 0, %155 ], [ %188, %171 ]
  %173 = shl nsw i64 %172, 2
  %174 = getelementptr inbounds i8, ptr %14, i64 %173
  %175 = getelementptr inbounds i8, ptr %174, i64 3
  store i8 -101, ptr %175, align 1, !tbaa !45
  %176 = getelementptr inbounds i8, ptr %174, i64 1
  store i8 -101, ptr %176, align 1, !tbaa !45
  %177 = getelementptr inbounds i8, ptr %174, i64 %158
  store i8 -101, ptr %177, align 1, !tbaa !45
  %178 = getelementptr inbounds i8, ptr %174, i64 %160
  store i8 -101, ptr %178, align 1, !tbaa !45
  %179 = trunc i64 %172 to i32
  %180 = add i32 %161, %179
  %181 = shl nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, ptr %14, i64 %182
  %184 = getelementptr inbounds i8, ptr %183, i64 3
  store i8 -101, ptr %184, align 1, !tbaa !45
  %185 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 -101, ptr %185, align 1, !tbaa !45
  %186 = getelementptr inbounds i8, ptr %183, i64 %164
  store i8 -101, ptr %186, align 1, !tbaa !45
  %187 = getelementptr inbounds i8, ptr %183, i64 %166
  store i8 -101, ptr %187, align 1, !tbaa !45
  %188 = add nuw nsw i64 %172, 1
  %189 = icmp eq i64 %188, %167
  br i1 %189, label %168, label %171, !llvm.loop !55

190:                                              ; preds = %190, %168
  %191 = phi i64 [ 0, %168 ], [ %198, %190 ]
  %192 = mul nsw i64 %191, %170
  %193 = getelementptr inbounds i8, ptr %14, i64 %192
  %194 = getelementptr inbounds i8, ptr %193, i64 3
  store i8 -101, ptr %194, align 1, !tbaa !45
  %195 = getelementptr inbounds i8, ptr %193, i64 1
  store i8 -101, ptr %195, align 1, !tbaa !45
  %196 = getelementptr inbounds i8, ptr %193, i64 7
  store i8 -101, ptr %196, align 1, !tbaa !45
  %197 = getelementptr inbounds i8, ptr %193, i64 5
  store i8 -101, ptr %197, align 1, !tbaa !45
  %198 = add nuw nsw i64 %191, 1
  %199 = trunc i64 %198 to i32
  %200 = mul i32 %169, %199
  %201 = add i32 %200, -4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %14, i64 %202
  %204 = getelementptr inbounds i8, ptr %203, i64 3
  store i8 -101, ptr %204, align 1, !tbaa !45
  %205 = getelementptr inbounds i8, ptr %203, i64 1
  store i8 -101, ptr %205, align 1, !tbaa !45
  %206 = getelementptr inbounds i8, ptr %203, i64 -1
  store i8 -101, ptr %206, align 1, !tbaa !45
  %207 = getelementptr inbounds i8, ptr %203, i64 -3
  store i8 -101, ptr %207, align 1, !tbaa !45
  %208 = icmp eq i64 %198, 515
  br i1 %208, label %209, label %190, !llvm.loop !56

209:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #7
  br label %409

210:                                              ; preds = %1
  %211 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %212 = load ptr, ptr %211, align 8, !tbaa !44
  %213 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %214 = load ptr, ptr %213, align 8, !tbaa !44
  %215 = load i32, ptr %7, align 8, !tbaa !43
  %216 = add i32 %215, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #7
  %217 = shl i32 %216, 1
  %218 = icmp sgt i32 %215, -3
  br i1 %218, label %219, label %230

219:                                              ; preds = %210
  %220 = mul i32 %216, 1852
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %214, i64 %221
  %223 = tail call i32 @llvm.smax.i32(i32 %217, i32 1)
  br label %224

224:                                              ; preds = %219, %224
  %225 = phi i32 [ %228, %224 ], [ 0, %219 ]
  %226 = phi ptr [ %227, %224 ], [ %222, %219 ]
  store i8 -1, ptr %226, align 1, !tbaa !45
  %227 = getelementptr inbounds i8, ptr %226, i64 4
  %228 = add nuw nsw i32 %225, 1
  %229 = icmp eq i32 %228, %223
  br i1 %229, label %230, label %224, !llvm.loop !46

230:                                              ; preds = %224, %210
  %231 = icmp sgt i32 %215, -3
  br i1 %231, label %232, label %243

232:                                              ; preds = %230
  %233 = mul i32 %216, 1440
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, ptr %214, i64 %234
  %236 = tail call i32 @llvm.smax.i32(i32 %217, i32 1)
  br label %237

237:                                              ; preds = %232, %237
  %238 = phi i32 [ %241, %237 ], [ 0, %232 ]
  %239 = phi ptr [ %240, %237 ], [ %235, %232 ]
  store i8 -1, ptr %239, align 1, !tbaa !45
  %240 = getelementptr inbounds i8, ptr %239, i64 4
  %241 = add nuw nsw i32 %238, 1
  %242 = icmp eq i32 %241, %236
  br i1 %242, label %243, label %237, !llvm.loop !46

243:                                              ; preds = %237, %230
  %244 = icmp sgt i32 %215, -3
  br i1 %244, label %245, label %256

245:                                              ; preds = %243
  %246 = mul i32 %216, 204
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %214, i64 %247
  %249 = tail call i32 @llvm.smax.i32(i32 %217, i32 1)
  br label %250

250:                                              ; preds = %245, %250
  %251 = phi i32 [ %254, %250 ], [ 0, %245 ]
  %252 = phi ptr [ %253, %250 ], [ %248, %245 ]
  store i8 -1, ptr %252, align 1, !tbaa !45
  %253 = getelementptr inbounds i8, ptr %252, i64 4
  %254 = add nuw nsw i32 %251, 1
  %255 = icmp eq i32 %254, %249
  br i1 %255, label %256, label %250, !llvm.loop !46

256:                                              ; preds = %250, %243
  %257 = icmp sgt i32 %215, -3
  br i1 %257, label %258, label %271

258:                                              ; preds = %256
  %259 = shl nsw i32 %216, 2
  %260 = or disjoint i32 %259, 3
  %261 = zext nneg i32 %260 to i64
  %262 = or disjoint i32 %259, 1
  %263 = zext nneg i32 %262 to i64
  %264 = mul nsw i32 %216, 514
  %265 = mul nsw i32 %216, -4
  %266 = or disjoint i32 %265, 3
  %267 = sext i32 %266 to i64
  %268 = or disjoint i32 %265, 1
  %269 = sext i32 %268 to i64
  %270 = zext nneg i32 %216 to i64
  br label %274

271:                                              ; preds = %274, %256
  %272 = shl nsw i32 %216, 2
  %273 = sext i32 %272 to i64
  br label %293

274:                                              ; preds = %274, %258
  %275 = phi i64 [ 0, %258 ], [ %291, %274 ]
  %276 = shl nsw i64 %275, 2
  %277 = getelementptr inbounds i8, ptr %214, i64 %276
  %278 = getelementptr inbounds i8, ptr %277, i64 3
  store i8 -101, ptr %278, align 1, !tbaa !45
  %279 = getelementptr inbounds i8, ptr %277, i64 1
  store i8 -101, ptr %279, align 1, !tbaa !45
  %280 = getelementptr inbounds i8, ptr %277, i64 %261
  store i8 -101, ptr %280, align 1, !tbaa !45
  %281 = getelementptr inbounds i8, ptr %277, i64 %263
  store i8 -101, ptr %281, align 1, !tbaa !45
  %282 = trunc i64 %275 to i32
  %283 = add i32 %264, %282
  %284 = shl nsw i32 %283, 2
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, ptr %214, i64 %285
  %287 = getelementptr inbounds i8, ptr %286, i64 3
  store i8 -101, ptr %287, align 1, !tbaa !45
  %288 = getelementptr inbounds i8, ptr %286, i64 1
  store i8 -101, ptr %288, align 1, !tbaa !45
  %289 = getelementptr inbounds i8, ptr %286, i64 %267
  store i8 -101, ptr %289, align 1, !tbaa !45
  %290 = getelementptr inbounds i8, ptr %286, i64 %269
  store i8 -101, ptr %290, align 1, !tbaa !45
  %291 = add nuw nsw i64 %275, 1
  %292 = icmp eq i64 %291, %270
  br i1 %292, label %271, label %274, !llvm.loop !55

293:                                              ; preds = %293, %271
  %294 = phi i64 [ 0, %271 ], [ %301, %293 ]
  %295 = mul nsw i64 %294, %273
  %296 = getelementptr inbounds i8, ptr %214, i64 %295
  %297 = getelementptr inbounds i8, ptr %296, i64 3
  store i8 -101, ptr %297, align 1, !tbaa !45
  %298 = getelementptr inbounds i8, ptr %296, i64 1
  store i8 -101, ptr %298, align 1, !tbaa !45
  %299 = getelementptr inbounds i8, ptr %296, i64 7
  store i8 -101, ptr %299, align 1, !tbaa !45
  %300 = getelementptr inbounds i8, ptr %296, i64 5
  store i8 -101, ptr %300, align 1, !tbaa !45
  %301 = add nuw nsw i64 %294, 1
  %302 = trunc i64 %301 to i32
  %303 = mul i32 %272, %302
  %304 = add i32 %303, -4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, ptr %214, i64 %305
  %307 = getelementptr inbounds i8, ptr %306, i64 3
  store i8 -101, ptr %307, align 1, !tbaa !45
  %308 = getelementptr inbounds i8, ptr %306, i64 1
  store i8 -101, ptr %308, align 1, !tbaa !45
  %309 = getelementptr inbounds i8, ptr %306, i64 -1
  store i8 -101, ptr %309, align 1, !tbaa !45
  %310 = getelementptr inbounds i8, ptr %306, i64 -3
  store i8 -101, ptr %310, align 1, !tbaa !45
  %311 = icmp eq i64 %301, 515
  br i1 %311, label %316, label %293, !llvm.loop !56

312:                                              ; preds = %316
  %313 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %314 = load i32, ptr %313, align 4, !tbaa !49
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %329, label %408

316:                                              ; preds = %293, %316
  %317 = phi i64 [ %327, %316 ], [ 0, %293 ]
  %318 = trunc i64 %317 to i32
  %319 = sitofp i32 %318 to float
  %320 = fadd float %319, 1.000000e+00
  %321 = fmul float %320, 3.906250e-03
  %322 = fpext float %321 to double
  %323 = tail call double @pow(double noundef %322, double noundef 0x3FC99999A0000000) #7
  %324 = fmul double %323, 2.550000e+02
  %325 = fptoui double %324 to i8
  %326 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %317
  store i8 %325, ptr %326, align 1, !tbaa !45
  %327 = add nuw nsw i64 %317, 1
  %328 = icmp eq i64 %327, 256
  br i1 %328, label %312, label %316, !llvm.loop !57

329:                                              ; preds = %312, %404
  %330 = phi i32 [ %405, %404 ], [ 0, %312 ]
  %331 = load i32, ptr %7, align 8, !tbaa !43
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %404

333:                                              ; preds = %329, %400
  %334 = phi i32 [ %402, %400 ], [ %331, %329 ]
  %335 = phi i32 [ %401, %400 ], [ 0, %329 ]
  %336 = phi ptr [ %375, %400 ], [ null, %329 ]
  %337 = mul nsw i32 %334, %330
  %338 = add nsw i32 %337, %335
  %339 = shl nsw i32 %338, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, ptr %212, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !45
  %343 = zext i8 %342 to i32
  %344 = mul nuw nsw i32 %343, 76
  %345 = getelementptr inbounds i8, ptr %341, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !45
  %347 = zext i8 %346 to i32
  %348 = mul nuw nsw i32 %347, 150
  %349 = add nuw nsw i32 %348, %344
  %350 = getelementptr inbounds i8, ptr %341, i64 2
  %351 = load i8, ptr %350, align 1, !tbaa !45
  %352 = zext i8 %351 to i32
  %353 = mul nuw nsw i32 %352, 29
  %354 = add nuw nsw i32 %349, %353
  %355 = udiv i32 %354, 255
  %356 = trunc i32 %355 to i8
  %357 = uitofp i8 %356 to float
  %358 = fdiv float %357, 2.550000e+02
  %359 = fmul float %358, 5.120000e+02
  %360 = fptosi float %359 to i32
  %361 = add nsw i32 %360, 1
  %362 = mul nsw i32 %361, %216
  %363 = add nsw i32 %362, %335
  %364 = shl i32 %363, 2
  %365 = add i32 %364, 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, ptr %214, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !45
  %369 = zext i8 %368 to i64
  %370 = getelementptr inbounds i8, ptr %2, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !45
  %372 = getelementptr inbounds i8, ptr %367, i64 2
  store i8 %371, ptr %372, align 1, !tbaa !45
  %373 = getelementptr inbounds i8, ptr %367, i64 1
  store i8 %371, ptr %373, align 1, !tbaa !45
  store i8 %371, ptr %367, align 1, !tbaa !45
  %374 = getelementptr inbounds i8, ptr %367, i64 3
  store i8 -1, ptr %374, align 1, !tbaa !45
  %375 = getelementptr inbounds i8, ptr %367, i64 %273
  %376 = load i8, ptr %375, align 1, !tbaa !45
  %377 = zext i8 %376 to i64
  %378 = getelementptr inbounds i8, ptr %2, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !45
  %380 = getelementptr inbounds i8, ptr %375, i64 2
  store i8 %379, ptr %380, align 1, !tbaa !45
  %381 = getelementptr inbounds i8, ptr %375, i64 1
  store i8 %379, ptr %381, align 1, !tbaa !45
  store i8 %379, ptr %375, align 1, !tbaa !45
  %382 = getelementptr inbounds i8, ptr %375, i64 3
  store i8 -1, ptr %382, align 1, !tbaa !45
  %383 = icmp eq ptr %336, null
  br i1 %383, label %400, label %384

384:                                              ; preds = %333
  %385 = icmp ugt ptr %336, %375
  %386 = select i1 %385, ptr %336, ptr %375
  %387 = select i1 %385, ptr %375, ptr %336
  %388 = icmp ult ptr %387, %386
  br i1 %388, label %389, label %400

389:                                              ; preds = %384, %397
  %390 = phi ptr [ %398, %397 ], [ %387, %384 ]
  %391 = load i8, ptr %390, align 1, !tbaa !45
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, ptr %390, i64 2
  store i8 32, ptr %394, align 1, !tbaa !45
  %395 = getelementptr inbounds i8, ptr %390, i64 1
  store i8 32, ptr %395, align 1, !tbaa !45
  store i8 32, ptr %390, align 1, !tbaa !45
  %396 = getelementptr inbounds i8, ptr %390, i64 3
  store i8 -1, ptr %396, align 1, !tbaa !45
  br label %397

397:                                              ; preds = %393, %389
  %398 = getelementptr inbounds i8, ptr %390, i64 %273
  %399 = icmp ult ptr %398, %386
  br i1 %399, label %389, label %400, !llvm.loop !52

400:                                              ; preds = %397, %384, %333
  %401 = add nuw nsw i32 %335, 1
  %402 = load i32, ptr %7, align 8, !tbaa !43
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %333, label %404, !llvm.loop !58

404:                                              ; preds = %400, %329
  %405 = add nuw nsw i32 %330, 1
  %406 = load i32, ptr %313, align 4, !tbaa !49
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %329, label %408, !llvm.loop !59

408:                                              ; preds = %404, %312
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #7
  br label %409

409:                                              ; preds = %408, %209
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @make_sep_waveform_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [3 x ptr], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [3 x ptr], align 16
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = add nsw i32 %10, 3
  %12 = tail call ptr @IMB_allocImBuf(i32 noundef %11, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #7
  br i1 %8, label %214, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %6, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = load i32, ptr %9, align 8, !tbaa !43
  %18 = add i32 %17, 3
  %19 = sdiv i32 %17, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #7
  %20 = shl i32 %18, 1
  %21 = icmp sgt i32 %17, -3
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = mul i32 %18, 1852
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %16, i64 %24
  %26 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i32 [ %31, %27 ], [ 0, %22 ]
  %29 = phi ptr [ %30, %27 ], [ %25, %22 ]
  store i8 -1, ptr %29, align 1, !tbaa !45
  %30 = getelementptr inbounds i8, ptr %29, i64 4
  %31 = add nuw nsw i32 %28, 1
  %32 = icmp eq i32 %31, %26
  br i1 %32, label %33, label %27, !llvm.loop !46

33:                                               ; preds = %27, %13
  %34 = icmp sgt i32 %17, -3
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = mul i32 %18, 1440
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %16, i64 %37
  %39 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i32 [ %44, %40 ], [ 0, %35 ]
  %42 = phi ptr [ %43, %40 ], [ %38, %35 ]
  store i8 -1, ptr %42, align 1, !tbaa !45
  %43 = getelementptr inbounds i8, ptr %42, i64 4
  %44 = add nuw nsw i32 %41, 1
  %45 = icmp eq i32 %44, %39
  br i1 %45, label %46, label %40, !llvm.loop !46

46:                                               ; preds = %40, %33
  %47 = icmp sgt i32 %17, -3
  br i1 %47, label %49, label %48

48:                                               ; preds = %54, %46
  br label %67

49:                                               ; preds = %46
  %50 = mul i32 %18, 204
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %16, i64 %51
  %53 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %54

54:                                               ; preds = %49, %54
  %55 = phi i32 [ %58, %54 ], [ 0, %49 ]
  %56 = phi ptr [ %57, %54 ], [ %52, %49 ]
  store i8 -1, ptr %56, align 1, !tbaa !45
  %57 = getelementptr inbounds i8, ptr %56, i64 4
  %58 = add nuw nsw i32 %55, 1
  %59 = icmp eq i32 %58, %53
  br i1 %59, label %48, label %54, !llvm.loop !46

60:                                               ; preds = %67
  %61 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !49
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %157

64:                                               ; preds = %60
  %65 = shl nsw i32 %18, 2
  %66 = sext i32 %65 to i64
  br label %80

67:                                               ; preds = %48, %67
  %68 = phi i64 [ %78, %67 ], [ 0, %48 ]
  %69 = trunc i64 %68 to i32
  %70 = sitofp i32 %69 to float
  %71 = fadd float %70, 1.000000e+00
  %72 = fmul float %71, 3.906250e-03
  %73 = fpext float %72 to double
  %74 = tail call double @pow(double noundef %73, double noundef 0x3FC99999A0000000) #7
  %75 = fmul double %74, 2.550000e+02
  %76 = fptoui double %75 to i8
  %77 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 %68
  store i8 %76, ptr %77, align 1, !tbaa !45
  %78 = add nuw nsw i64 %68, 1
  %79 = icmp eq i64 %78, 256
  br i1 %79, label %60, label %67, !llvm.loop !60

80:                                               ; preds = %64, %153
  %81 = phi i32 [ 0, %64 ], [ %154, %153 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %82 = load i32, ptr %9, align 8, !tbaa !43
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %153

84:                                               ; preds = %80, %149
  %85 = phi i32 [ %151, %149 ], [ %82, %80 ]
  %86 = phi i32 [ %150, %149 ], [ 0, %80 ]
  %87 = mul nsw i32 %85, %81
  %88 = add nsw i32 %87, %86
  %89 = shl nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, ptr %14, i64 %90
  %92 = udiv i32 %86, 3
  br label %93

93:                                               ; preds = %84, %146
  %94 = phi i64 [ 0, %84 ], [ %147, %146 ]
  %95 = getelementptr inbounds float, ptr %91, i64 %94
  %96 = load float, ptr %95, align 4, !tbaa !51
  %97 = fcmp olt float %96, 0.000000e+00
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = fcmp ogt float %96, 1.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %98, %93
  %102 = phi float [ 1.000000e+00, %100 ], [ %96, %98 ], [ 0.000000e+00, %93 ]
  %103 = fmul float %102, 5.120000e+02
  %104 = fptosi float %103 to i32
  %105 = add nsw i32 %104, 1
  %106 = mul nsw i32 %105, %18
  %107 = trunc i64 %94 to i32
  %108 = mul i32 %19, %107
  %109 = add i32 %108, %92
  %110 = add i32 %109, %106
  %111 = shl i32 %110, 2
  %112 = add i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %16, i64 %113
  %115 = getelementptr inbounds i8, ptr %114, i64 %94
  %116 = load i8, ptr %115, align 1, !tbaa !45
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i8, ptr %4, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !45
  store i8 %119, ptr %115, align 1, !tbaa !45
  %120 = getelementptr inbounds i8, ptr %114, i64 3
  store i8 -1, ptr %120, align 1, !tbaa !45
  %121 = getelementptr inbounds i8, ptr %114, i64 %66
  %122 = getelementptr inbounds i8, ptr %121, i64 %94
  %123 = load i8, ptr %122, align 1, !tbaa !45
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i8, ptr %4, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !45
  store i8 %126, ptr %122, align 1, !tbaa !45
  %127 = getelementptr inbounds i8, ptr %121, i64 3
  store i8 -1, ptr %127, align 1, !tbaa !45
  %128 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %94
  %129 = load ptr, ptr %128, align 8, !tbaa !61
  %130 = icmp eq ptr %129, null
  br i1 %130, label %146, label %131

131:                                              ; preds = %101
  %132 = icmp ugt ptr %129, %121
  %133 = select i1 %132, ptr %129, ptr %121
  %134 = select i1 %132, ptr %121, ptr %129
  %135 = icmp ult ptr %134, %133
  br i1 %135, label %136, label %146

136:                                              ; preds = %131, %143
  %137 = phi ptr [ %144, %143 ], [ %134, %131 ]
  %138 = getelementptr inbounds i8, ptr %137, i64 %94
  %139 = load i8, ptr %138, align 1, !tbaa !45
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  store i8 32, ptr %138, align 1, !tbaa !45
  %142 = getelementptr inbounds i8, ptr %137, i64 3
  store i8 -1, ptr %142, align 1, !tbaa !45
  br label %143

143:                                              ; preds = %141, %136
  %144 = getelementptr inbounds i8, ptr %137, i64 %66
  %145 = icmp ult ptr %144, %133
  br i1 %145, label %136, label %146, !llvm.loop !62

146:                                              ; preds = %143, %131, %101
  store ptr %121, ptr %128, align 8, !tbaa !61
  %147 = add nuw nsw i64 %94, 1
  %148 = icmp eq i64 %147, 3
  br i1 %148, label %149, label %93, !llvm.loop !63

149:                                              ; preds = %146
  %150 = add nuw nsw i32 %86, 1
  %151 = load i32, ptr %9, align 8, !tbaa !43
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %84, label %153, !llvm.loop !64

153:                                              ; preds = %149, %80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  %154 = add nuw nsw i32 %81, 1
  %155 = load i32, ptr %61, align 4, !tbaa !49
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %80, label %157, !llvm.loop !65

157:                                              ; preds = %153, %60
  %158 = icmp sgt i32 %17, -3
  br i1 %158, label %159, label %172

159:                                              ; preds = %157
  %160 = shl nsw i32 %18, 2
  %161 = or disjoint i32 %160, 3
  %162 = zext nneg i32 %161 to i64
  %163 = or disjoint i32 %160, 1
  %164 = zext nneg i32 %163 to i64
  %165 = mul nsw i32 %18, 514
  %166 = mul nsw i32 %18, -4
  %167 = or disjoint i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = or disjoint i32 %166, 1
  %170 = sext i32 %169 to i64
  %171 = zext nneg i32 %18 to i64
  br label %175

172:                                              ; preds = %175, %157
  %173 = shl nsw i32 %18, 2
  %174 = sext i32 %173 to i64
  br label %194

175:                                              ; preds = %175, %159
  %176 = phi i64 [ 0, %159 ], [ %192, %175 ]
  %177 = shl nsw i64 %176, 2
  %178 = getelementptr inbounds i8, ptr %16, i64 %177
  %179 = getelementptr inbounds i8, ptr %178, i64 3
  store i8 -101, ptr %179, align 1, !tbaa !45
  %180 = getelementptr inbounds i8, ptr %178, i64 1
  store i8 -101, ptr %180, align 1, !tbaa !45
  %181 = getelementptr inbounds i8, ptr %178, i64 %162
  store i8 -101, ptr %181, align 1, !tbaa !45
  %182 = getelementptr inbounds i8, ptr %178, i64 %164
  store i8 -101, ptr %182, align 1, !tbaa !45
  %183 = trunc i64 %176 to i32
  %184 = add i32 %165, %183
  %185 = shl nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %16, i64 %186
  %188 = getelementptr inbounds i8, ptr %187, i64 3
  store i8 -101, ptr %188, align 1, !tbaa !45
  %189 = getelementptr inbounds i8, ptr %187, i64 1
  store i8 -101, ptr %189, align 1, !tbaa !45
  %190 = getelementptr inbounds i8, ptr %187, i64 %168
  store i8 -101, ptr %190, align 1, !tbaa !45
  %191 = getelementptr inbounds i8, ptr %187, i64 %170
  store i8 -101, ptr %191, align 1, !tbaa !45
  %192 = add nuw nsw i64 %176, 1
  %193 = icmp eq i64 %192, %171
  br i1 %193, label %172, label %175, !llvm.loop !55

194:                                              ; preds = %194, %172
  %195 = phi i64 [ 0, %172 ], [ %202, %194 ]
  %196 = mul nsw i64 %195, %174
  %197 = getelementptr inbounds i8, ptr %16, i64 %196
  %198 = getelementptr inbounds i8, ptr %197, i64 3
  store i8 -101, ptr %198, align 1, !tbaa !45
  %199 = getelementptr inbounds i8, ptr %197, i64 1
  store i8 -101, ptr %199, align 1, !tbaa !45
  %200 = getelementptr inbounds i8, ptr %197, i64 7
  store i8 -101, ptr %200, align 1, !tbaa !45
  %201 = getelementptr inbounds i8, ptr %197, i64 5
  store i8 -101, ptr %201, align 1, !tbaa !45
  %202 = add nuw nsw i64 %195, 1
  %203 = trunc i64 %202 to i32
  %204 = mul i32 %173, %203
  %205 = add i32 %204, -4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %16, i64 %206
  %208 = getelementptr inbounds i8, ptr %207, i64 3
  store i8 -101, ptr %208, align 1, !tbaa !45
  %209 = getelementptr inbounds i8, ptr %207, i64 1
  store i8 -101, ptr %209, align 1, !tbaa !45
  %210 = getelementptr inbounds i8, ptr %207, i64 -1
  store i8 -101, ptr %210, align 1, !tbaa !45
  %211 = getelementptr inbounds i8, ptr %207, i64 -3
  store i8 -101, ptr %211, align 1, !tbaa !45
  %212 = icmp eq i64 %202, 515
  br i1 %212, label %213, label %194, !llvm.loop !56

213:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #7
  br label %411

214:                                              ; preds = %1
  %215 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %216 = load ptr, ptr %215, align 8, !tbaa !44
  %217 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 8
  %218 = load ptr, ptr %217, align 8, !tbaa !44
  %219 = load i32, ptr %9, align 8, !tbaa !43
  %220 = add i32 %219, 3
  %221 = sdiv i32 %219, 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #7
  %222 = shl i32 %220, 1
  %223 = icmp sgt i32 %219, -3
  br i1 %223, label %224, label %235

224:                                              ; preds = %214
  %225 = mul i32 %220, 1852
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, ptr %218, i64 %226
  %228 = tail call i32 @llvm.smax.i32(i32 %222, i32 1)
  br label %229

229:                                              ; preds = %224, %229
  %230 = phi i32 [ %233, %229 ], [ 0, %224 ]
  %231 = phi ptr [ %232, %229 ], [ %227, %224 ]
  store i8 -1, ptr %231, align 1, !tbaa !45
  %232 = getelementptr inbounds i8, ptr %231, i64 4
  %233 = add nuw nsw i32 %230, 1
  %234 = icmp eq i32 %233, %228
  br i1 %234, label %235, label %229, !llvm.loop !46

235:                                              ; preds = %229, %214
  %236 = icmp sgt i32 %219, -3
  br i1 %236, label %237, label %248

237:                                              ; preds = %235
  %238 = mul i32 %220, 1440
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, ptr %218, i64 %239
  %241 = tail call i32 @llvm.smax.i32(i32 %222, i32 1)
  br label %242

242:                                              ; preds = %237, %242
  %243 = phi i32 [ %246, %242 ], [ 0, %237 ]
  %244 = phi ptr [ %245, %242 ], [ %240, %237 ]
  store i8 -1, ptr %244, align 1, !tbaa !45
  %245 = getelementptr inbounds i8, ptr %244, i64 4
  %246 = add nuw nsw i32 %243, 1
  %247 = icmp eq i32 %246, %241
  br i1 %247, label %248, label %242, !llvm.loop !46

248:                                              ; preds = %242, %235
  %249 = icmp sgt i32 %219, -3
  br i1 %249, label %251, label %250

250:                                              ; preds = %256, %248
  br label %269

251:                                              ; preds = %248
  %252 = mul i32 %220, 204
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %218, i64 %253
  %255 = tail call i32 @llvm.smax.i32(i32 %222, i32 1)
  br label %256

256:                                              ; preds = %251, %256
  %257 = phi i32 [ %260, %256 ], [ 0, %251 ]
  %258 = phi ptr [ %259, %256 ], [ %254, %251 ]
  store i8 -1, ptr %258, align 1, !tbaa !45
  %259 = getelementptr inbounds i8, ptr %258, i64 4
  %260 = add nuw nsw i32 %257, 1
  %261 = icmp eq i32 %260, %255
  br i1 %261, label %250, label %256, !llvm.loop !46

262:                                              ; preds = %269
  %263 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %264 = load i32, ptr %263, align 4, !tbaa !49
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %354

266:                                              ; preds = %262
  %267 = shl nsw i32 %220, 2
  %268 = sext i32 %267 to i64
  br label %282

269:                                              ; preds = %250, %269
  %270 = phi i64 [ %280, %269 ], [ 0, %250 ]
  %271 = trunc i64 %270 to i32
  %272 = sitofp i32 %271 to float
  %273 = fadd float %272, 1.000000e+00
  %274 = fmul float %273, 3.906250e-03
  %275 = fpext float %274 to double
  %276 = tail call double @pow(double noundef %275, double noundef 0x3FC99999A0000000) #7
  %277 = fmul double %276, 2.550000e+02
  %278 = fptoui double %277 to i8
  %279 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %270
  store i8 %278, ptr %279, align 1, !tbaa !45
  %280 = add nuw nsw i64 %270, 1
  %281 = icmp eq i64 %280, 256
  br i1 %281, label %262, label %269, !llvm.loop !66

282:                                              ; preds = %266, %350
  %283 = phi i32 [ 0, %266 ], [ %351, %350 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %284 = load i32, ptr %9, align 8, !tbaa !43
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %350

286:                                              ; preds = %282, %346
  %287 = phi i32 [ %348, %346 ], [ %284, %282 ]
  %288 = phi i32 [ %347, %346 ], [ 0, %282 ]
  %289 = mul nsw i32 %287, %283
  %290 = add nsw i32 %289, %288
  %291 = shl nsw i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %216, i64 %292
  %294 = udiv i32 %288, 3
  br label %295

295:                                              ; preds = %286, %343
  %296 = phi i64 [ 0, %286 ], [ %344, %343 ]
  %297 = getelementptr inbounds i8, ptr %293, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !45
  %299 = zext i8 %298 to i32
  %300 = shl nuw nsw i32 %299, 9
  %301 = udiv i32 %300, 255
  %302 = add nuw nsw i32 %301, 1
  %303 = mul nsw i32 %302, %220
  %304 = trunc i64 %296 to i32
  %305 = mul i32 %221, %304
  %306 = add i32 %305, %294
  %307 = add i32 %306, %303
  %308 = shl i32 %307, 2
  %309 = add i32 %308, 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, ptr %218, i64 %310
  %312 = getelementptr inbounds i8, ptr %311, i64 %296
  %313 = load i8, ptr %312, align 1, !tbaa !45
  %314 = zext i8 %313 to i64
  %315 = getelementptr inbounds i8, ptr %2, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !45
  store i8 %316, ptr %312, align 1, !tbaa !45
  %317 = getelementptr inbounds i8, ptr %311, i64 3
  store i8 -1, ptr %317, align 1, !tbaa !45
  %318 = getelementptr inbounds i8, ptr %311, i64 %268
  %319 = getelementptr inbounds i8, ptr %318, i64 %296
  %320 = load i8, ptr %319, align 1, !tbaa !45
  %321 = zext i8 %320 to i64
  %322 = getelementptr inbounds i8, ptr %2, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !45
  store i8 %323, ptr %319, align 1, !tbaa !45
  %324 = getelementptr inbounds i8, ptr %318, i64 3
  store i8 -1, ptr %324, align 1, !tbaa !45
  %325 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 %296
  %326 = load ptr, ptr %325, align 8, !tbaa !61
  %327 = icmp eq ptr %326, null
  br i1 %327, label %343, label %328

328:                                              ; preds = %295
  %329 = icmp ugt ptr %326, %318
  %330 = select i1 %329, ptr %326, ptr %318
  %331 = select i1 %329, ptr %318, ptr %326
  %332 = icmp ult ptr %331, %330
  br i1 %332, label %333, label %343

333:                                              ; preds = %328, %340
  %334 = phi ptr [ %341, %340 ], [ %331, %328 ]
  %335 = getelementptr inbounds i8, ptr %334, i64 %296
  %336 = load i8, ptr %335, align 1, !tbaa !45
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  store i8 32, ptr %335, align 1, !tbaa !45
  %339 = getelementptr inbounds i8, ptr %334, i64 3
  store i8 -1, ptr %339, align 1, !tbaa !45
  br label %340

340:                                              ; preds = %338, %333
  %341 = getelementptr inbounds i8, ptr %334, i64 %268
  %342 = icmp ult ptr %341, %330
  br i1 %342, label %333, label %343, !llvm.loop !62

343:                                              ; preds = %340, %328, %295
  store ptr %318, ptr %325, align 8, !tbaa !61
  %344 = add nuw nsw i64 %296, 1
  %345 = icmp eq i64 %344, 3
  br i1 %345, label %346, label %295, !llvm.loop !67

346:                                              ; preds = %343
  %347 = add nuw nsw i32 %288, 1
  %348 = load i32, ptr %9, align 8, !tbaa !43
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %286, label %350, !llvm.loop !68

350:                                              ; preds = %346, %282
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  %351 = add nuw nsw i32 %283, 1
  %352 = load i32, ptr %263, align 4, !tbaa !49
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %282, label %354, !llvm.loop !69

354:                                              ; preds = %350, %262
  %355 = icmp sgt i32 %219, -3
  br i1 %355, label %356, label %369

356:                                              ; preds = %354
  %357 = shl nsw i32 %220, 2
  %358 = or disjoint i32 %357, 3
  %359 = zext nneg i32 %358 to i64
  %360 = or disjoint i32 %357, 1
  %361 = zext nneg i32 %360 to i64
  %362 = mul nsw i32 %220, 514
  %363 = mul nsw i32 %220, -4
  %364 = or disjoint i32 %363, 3
  %365 = sext i32 %364 to i64
  %366 = or disjoint i32 %363, 1
  %367 = sext i32 %366 to i64
  %368 = zext nneg i32 %220 to i64
  br label %372

369:                                              ; preds = %372, %354
  %370 = shl nsw i32 %220, 2
  %371 = sext i32 %370 to i64
  br label %391

372:                                              ; preds = %372, %356
  %373 = phi i64 [ 0, %356 ], [ %389, %372 ]
  %374 = shl nsw i64 %373, 2
  %375 = getelementptr inbounds i8, ptr %218, i64 %374
  %376 = getelementptr inbounds i8, ptr %375, i64 3
  store i8 -101, ptr %376, align 1, !tbaa !45
  %377 = getelementptr inbounds i8, ptr %375, i64 1
  store i8 -101, ptr %377, align 1, !tbaa !45
  %378 = getelementptr inbounds i8, ptr %375, i64 %359
  store i8 -101, ptr %378, align 1, !tbaa !45
  %379 = getelementptr inbounds i8, ptr %375, i64 %361
  store i8 -101, ptr %379, align 1, !tbaa !45
  %380 = trunc i64 %373 to i32
  %381 = add i32 %362, %380
  %382 = shl nsw i32 %381, 2
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, ptr %218, i64 %383
  %385 = getelementptr inbounds i8, ptr %384, i64 3
  store i8 -101, ptr %385, align 1, !tbaa !45
  %386 = getelementptr inbounds i8, ptr %384, i64 1
  store i8 -101, ptr %386, align 1, !tbaa !45
  %387 = getelementptr inbounds i8, ptr %384, i64 %365
  store i8 -101, ptr %387, align 1, !tbaa !45
  %388 = getelementptr inbounds i8, ptr %384, i64 %367
  store i8 -101, ptr %388, align 1, !tbaa !45
  %389 = add nuw nsw i64 %373, 1
  %390 = icmp eq i64 %389, %368
  br i1 %390, label %369, label %372, !llvm.loop !55

391:                                              ; preds = %391, %369
  %392 = phi i64 [ 0, %369 ], [ %399, %391 ]
  %393 = mul nsw i64 %392, %371
  %394 = getelementptr inbounds i8, ptr %218, i64 %393
  %395 = getelementptr inbounds i8, ptr %394, i64 3
  store i8 -101, ptr %395, align 1, !tbaa !45
  %396 = getelementptr inbounds i8, ptr %394, i64 1
  store i8 -101, ptr %396, align 1, !tbaa !45
  %397 = getelementptr inbounds i8, ptr %394, i64 7
  store i8 -101, ptr %397, align 1, !tbaa !45
  %398 = getelementptr inbounds i8, ptr %394, i64 5
  store i8 -101, ptr %398, align 1, !tbaa !45
  %399 = add nuw nsw i64 %392, 1
  %400 = trunc i64 %399 to i32
  %401 = mul i32 %370, %400
  %402 = add i32 %401, -4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, ptr %218, i64 %403
  %405 = getelementptr inbounds i8, ptr %404, i64 3
  store i8 -101, ptr %405, align 1, !tbaa !45
  %406 = getelementptr inbounds i8, ptr %404, i64 1
  store i8 -101, ptr %406, align 1, !tbaa !45
  %407 = getelementptr inbounds i8, ptr %404, i64 -1
  store i8 -101, ptr %407, align 1, !tbaa !45
  %408 = getelementptr inbounds i8, ptr %404, i64 -3
  store i8 -101, ptr %408, align 1, !tbaa !45
  %409 = icmp eq i64 %399, 515
  br i1 %409, label %410, label %391, !llvm.loop !56

410:                                              ; preds = %391
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #7
  br label %411

411:                                              ; preds = %410, %213
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @make_zebra_view_from_ibuf(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = tail call ptr @IMB_allocImBuf(i32 noundef %4, i32 noundef %6, i8 noundef zeroext 32, i32 noundef 1) #7
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %100, label %11

11:                                               ; preds = %2
  %12 = fdiv float %1, 1.000000e+02
  %13 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %164

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  br label %20

20:                                               ; preds = %16, %94
  %21 = phi ptr [ %9, %16 ], [ %96, %94 ]
  %22 = phi i32 [ 0, %16 ], [ %97, %94 ]
  %23 = phi ptr [ %18, %16 ], [ %95, %94 ]
  %24 = load i32, ptr %19, align 8, !tbaa !43
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %94

26:                                               ; preds = %20, %87
  %27 = phi ptr [ %36, %87 ], [ %21, %20 ]
  %28 = phi i32 [ %91, %87 ], [ 0, %20 ]
  %29 = phi ptr [ %90, %87 ], [ %23, %20 ]
  %30 = getelementptr inbounds float, ptr %27, i64 1
  %31 = load float, ptr %27, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %27, i64 2
  %33 = load float, ptr %30, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %27, i64 3
  %35 = load float, ptr %32, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %27, i64 4
  %37 = load float, ptr %34, align 4, !tbaa !51
  %38 = fcmp ult float %31, %12
  %39 = fcmp ult float %33, %12
  %40 = select i1 %38, i1 %39, i1 false
  %41 = fcmp ult float %35, %12
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %51, label %43

43:                                               ; preds = %26
  %44 = add nuw nsw i32 %28, %22
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = fneg float %31
  %49 = fneg float %33
  %50 = fneg float %35
  br label %51

51:                                               ; preds = %47, %43, %26
  %52 = phi float [ %48, %47 ], [ %31, %43 ], [ %31, %26 ]
  %53 = phi float [ %49, %47 ], [ %33, %43 ], [ %33, %26 ]
  %54 = phi float [ %50, %47 ], [ %35, %43 ], [ %35, %26 ]
  %55 = fcmp ugt float %52, 0.000000e+00
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = fcmp ogt float %52, 0x3FEFEFEFE0000000
  %58 = tail call float @llvm.fmuladd.f32(float %52, float 2.550000e+02, float 5.000000e-01)
  %59 = select i1 %57, float 2.550000e+02, float %58
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi float [ %59, %56 ], [ 0.000000e+00, %51 ]
  %62 = fptoui float %61 to i8
  %63 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %62, ptr %29, align 1, !tbaa !45
  %64 = fcmp ugt float %53, 0.000000e+00
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = fcmp ogt float %53, 0x3FEFEFEFE0000000
  %67 = tail call float @llvm.fmuladd.f32(float %53, float 2.550000e+02, float 5.000000e-01)
  %68 = select i1 %66, float 2.550000e+02, float %67
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi float [ %68, %65 ], [ 0.000000e+00, %60 ]
  %71 = fptoui float %70 to i8
  %72 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %71, ptr %63, align 1, !tbaa !45
  %73 = fcmp ugt float %54, 0.000000e+00
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = fcmp ogt float %54, 0x3FEFEFEFE0000000
  %76 = tail call float @llvm.fmuladd.f32(float %54, float 2.550000e+02, float 5.000000e-01)
  %77 = select i1 %75, float 2.550000e+02, float %76
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi float [ %77, %74 ], [ 0.000000e+00, %69 ]
  %80 = fptoui float %79 to i8
  %81 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %80, ptr %72, align 1, !tbaa !45
  %82 = fcmp ugt float %37, 0.000000e+00
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = fcmp ogt float %37, 0x3FEFEFEFE0000000
  %85 = tail call float @llvm.fmuladd.f32(float %37, float 2.550000e+02, float 5.000000e-01)
  %86 = select i1 %84, float 2.550000e+02, float %85
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi float [ %86, %83 ], [ 0.000000e+00, %78 ]
  %89 = fptoui float %88 to i8
  %90 = getelementptr inbounds i8, ptr %29, i64 4
  store i8 %89, ptr %81, align 1, !tbaa !45
  %91 = add nuw nsw i32 %28, 1
  %92 = load i32, ptr %19, align 8, !tbaa !43
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %26, label %94, !llvm.loop !70

94:                                               ; preds = %87, %20
  %95 = phi ptr [ %23, %20 ], [ %90, %87 ]
  %96 = phi ptr [ %21, %20 ], [ %36, %87 ]
  %97 = add nuw nsw i32 %22, 1
  %98 = load i32, ptr %13, align 4, !tbaa !49
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %20, label %164, !llvm.loop !71

100:                                              ; preds = %2
  %101 = fmul float %1, 2.550000e+02
  %102 = fdiv float %101, 1.000000e+02
  %103 = fptoui float %102 to i32
  %104 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !49
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %164

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !44
  %110 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !44
  %112 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  br label %113

113:                                              ; preds = %107, %158
  %114 = phi ptr [ %111, %107 ], [ %160, %158 ]
  %115 = phi i32 [ 0, %107 ], [ %161, %158 ]
  %116 = phi ptr [ %109, %107 ], [ %159, %158 ]
  %117 = load i32, ptr %112, align 8, !tbaa !43
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %113, %147
  %120 = phi ptr [ %129, %147 ], [ %114, %113 ]
  %121 = phi i32 [ %155, %147 ], [ 0, %113 ]
  %122 = phi ptr [ %154, %147 ], [ %116, %113 ]
  %123 = getelementptr inbounds i8, ptr %120, i64 1
  %124 = load i8, ptr %120, align 1, !tbaa !45
  %125 = getelementptr inbounds i8, ptr %120, i64 2
  %126 = load i8, ptr %123, align 1, !tbaa !45
  %127 = getelementptr inbounds i8, ptr %120, i64 3
  %128 = load i8, ptr %125, align 1, !tbaa !45
  %129 = getelementptr inbounds i8, ptr %120, i64 4
  %130 = load i8, ptr %127, align 1, !tbaa !45
  %131 = zext i8 %124 to i32
  %132 = icmp ult i32 %131, %103
  %133 = zext i8 %126 to i32
  %134 = icmp ult i32 %133, %103
  %135 = select i1 %132, i1 %134, i1 false
  %136 = zext i8 %128 to i32
  %137 = icmp ult i32 %136, %103
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %147, label %139

139:                                              ; preds = %119
  %140 = add nuw nsw i32 %121, %115
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = xor i8 %124, -1
  %145 = xor i8 %126, -1
  %146 = xor i8 %128, -1
  br label %147

147:                                              ; preds = %143, %139, %119
  %148 = phi i8 [ %144, %143 ], [ %124, %139 ], [ %124, %119 ]
  %149 = phi i8 [ %145, %143 ], [ %126, %139 ], [ %126, %119 ]
  %150 = phi i8 [ %146, %143 ], [ %128, %139 ], [ %128, %119 ]
  %151 = getelementptr inbounds i8, ptr %122, i64 1
  store i8 %148, ptr %122, align 1, !tbaa !45
  %152 = getelementptr inbounds i8, ptr %122, i64 2
  store i8 %149, ptr %151, align 1, !tbaa !45
  %153 = getelementptr inbounds i8, ptr %122, i64 3
  store i8 %150, ptr %152, align 1, !tbaa !45
  %154 = getelementptr inbounds i8, ptr %122, i64 4
  store i8 %130, ptr %153, align 1, !tbaa !45
  %155 = add nuw nsw i32 %121, 1
  %156 = load i32, ptr %112, align 8, !tbaa !43
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %119, label %158, !llvm.loop !72

158:                                              ; preds = %147, %113
  %159 = phi ptr [ %116, %113 ], [ %154, %147 ]
  %160 = phi ptr [ %114, %113 ], [ %129, %147 ]
  %161 = add nuw nsw i32 %115, 1
  %162 = load i32, ptr %104, align 4, !tbaa !49
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %113, label %164, !llvm.loop !73

164:                                              ; preds = %94, %158, %11, %100
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @make_histogram_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x [512 x i32]], align 16
  %3 = alloca [3 x [512 x i32]], align 16
  %4 = alloca [3 x [512 x i32]], align 16
  %5 = alloca [3 x [512 x i32]], align 16
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = tail call ptr @IMB_allocImBuf(i32 noundef 515, i32 noundef 128, i8 noundef zeroext 32, i32 noundef 1) #7
  br i1 %8, label %357, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %4, i8 0, i64 6144, i1 false)
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !49
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %103, %10
  br label %122

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !43
  %19 = icmp sgt i32 %18, 0
  %20 = zext nneg i32 %13 to i64
  %21 = zext nneg i32 %18 to i64
  br label %22

22:                                               ; preds = %16, %103
  %23 = phi i64 [ 0, %16 ], [ %104, %103 ]
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %5, i8 0, i64 6144, i1 false)
  br i1 %19, label %24, label %83

24:                                               ; preds = %22
  %25 = trunc i64 %23 to i32
  %26 = mul i32 %18, %25
  br label %27

27:                                               ; preds = %24, %75
  %28 = phi i64 [ 0, %24 ], [ %81, %75 ]
  %29 = trunc i64 %28 to i32
  %30 = add i32 %26, %29
  %31 = shl nsw i32 %30, 2
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %11, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = fcmp olt float %34, -2.500000e-01
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = fcmp ult float %34, 1.250000e+00
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = fadd float %34, 2.500000e-01
  %40 = fdiv float %39, 1.500000e+00
  %41 = fmul float %40, 5.120000e+02
  %42 = fptosi float %41 to i32
  br label %43

43:                                               ; preds = %38, %36, %27
  %44 = phi i32 [ %42, %38 ], [ 0, %27 ], [ 511, %36 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !74
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !74
  %49 = getelementptr inbounds float, ptr %33, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = fcmp olt float %50, -2.500000e-01
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = fcmp ult float %50, 1.250000e+00
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = fadd float %50, 2.500000e-01
  %56 = fdiv float %55, 1.500000e+00
  %57 = fmul float %56, 5.120000e+02
  %58 = fptosi float %57 to i32
  br label %59

59:                                               ; preds = %54, %52, %43
  %60 = phi i32 [ %58, %54 ], [ 0, %43 ], [ 511, %52 ]
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x [512 x i32]], ptr %5, i64 0, i64 1, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !74
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !74
  %65 = getelementptr inbounds float, ptr %33, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !51
  %67 = fcmp olt float %66, -2.500000e-01
  br i1 %67, label %75, label %68

68:                                               ; preds = %59
  %69 = fcmp ult float %66, 1.250000e+00
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = fadd float %66, 2.500000e-01
  %72 = fdiv float %71, 1.500000e+00
  %73 = fmul float %72, 5.120000e+02
  %74 = fptosi float %73 to i32
  br label %75

75:                                               ; preds = %70, %68, %59
  %76 = phi i32 [ %74, %70 ], [ 0, %59 ], [ 511, %68 ]
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x [512 x i32]], ptr %5, i64 0, i64 2, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !74
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4, !tbaa !74
  %81 = add nuw nsw i64 %28, 1
  %82 = icmp eq i64 %81, %21
  br i1 %82, label %83, label %27, !llvm.loop !75

83:                                               ; preds = %75, %22
  br label %84

84:                                               ; preds = %83, %84
  %85 = phi i64 [ %101, %84 ], [ 0, %83 ]
  %86 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !74
  %88 = getelementptr inbounds [512 x i32], ptr %4, i64 0, i64 %85
  %89 = load i32, ptr %88, align 4, !tbaa !74
  %90 = add i32 %89, %87
  store i32 %90, ptr %88, align 4, !tbaa !74
  %91 = getelementptr inbounds [3 x [512 x i32]], ptr %5, i64 0, i64 1, i64 %85
  %92 = load i32, ptr %91, align 4, !tbaa !74
  %93 = getelementptr inbounds [3 x [512 x i32]], ptr %4, i64 0, i64 1, i64 %85
  %94 = load i32, ptr %93, align 4, !tbaa !74
  %95 = add i32 %94, %92
  store i32 %95, ptr %93, align 4, !tbaa !74
  %96 = getelementptr inbounds [3 x [512 x i32]], ptr %5, i64 0, i64 2, i64 %85
  %97 = load i32, ptr %96, align 4, !tbaa !74
  %98 = getelementptr inbounds [3 x [512 x i32]], ptr %4, i64 0, i64 2, i64 %85
  %99 = load i32, ptr %98, align 4, !tbaa !74
  %100 = add i32 %99, %97
  store i32 %100, ptr %98, align 4, !tbaa !74
  %101 = add nuw nsw i64 %85, 1
  %102 = icmp eq i64 %101, 512
  br i1 %102, label %103, label %84, !llvm.loop !76

103:                                              ; preds = %84
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %5) #7
  %104 = add nuw nsw i64 %23, 1
  %105 = icmp eq i64 %104, %20
  br i1 %105, label %15, label %22, !llvm.loop !77

106:                                              ; preds = %122
  %107 = icmp eq i32 %129, 0
  %108 = icmp eq i32 %132, 0
  %109 = icmp eq i32 %135, 0
  %110 = sitofp i32 %129 to float
  %111 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %112 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %113 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %114 = sitofp i32 %132 to float
  %115 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %116 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %117 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %118 = sitofp i32 %135 to float
  %119 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %120 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %121 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  br label %138

122:                                              ; preds = %15, %122
  %123 = phi i64 [ %136, %122 ], [ 0, %15 ]
  %124 = phi i32 [ %129, %122 ], [ 0, %15 ]
  %125 = phi i32 [ %132, %122 ], [ 0, %15 ]
  %126 = phi i32 [ %135, %122 ], [ 0, %15 ]
  %127 = getelementptr inbounds [512 x i32], ptr %4, i64 0, i64 %123
  %128 = load i32, ptr %127, align 4, !tbaa !74
  %129 = tail call i32 @llvm.umax.i32(i32 %128, i32 %124)
  %130 = getelementptr inbounds [3 x [512 x i32]], ptr %4, i64 0, i64 1, i64 %123
  %131 = load i32, ptr %130, align 4, !tbaa !74
  %132 = tail call i32 @llvm.umax.i32(i32 %131, i32 %125)
  %133 = getelementptr inbounds [3 x [512 x i32]], ptr %4, i64 0, i64 2, i64 %123
  %134 = load i32, ptr %133, align 4, !tbaa !74
  %135 = tail call i32 @llvm.umax.i32(i32 %134, i32 %126)
  %136 = add nuw nsw i64 %123, 1
  %137 = icmp eq i64 %136, 512
  br i1 %137, label %106, label %122, !llvm.loop !78

138:                                              ; preds = %106, %231
  %139 = phi i64 [ 0, %106 ], [ %232, %231 ]
  br i1 %107, label %169, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds [512 x i32], ptr %4, i64 0, i64 %139
  %142 = load i32, ptr %141, align 4, !tbaa !74
  %143 = uitofp i32 %142 to float
  %144 = fdiv float %143, %110
  %145 = load i32, ptr %112, align 4, !tbaa !49
  %146 = sitofp i32 %145 to float
  %147 = fmul float %144, %146
  %148 = fmul float %147, 0x3FECCCCCC0000000
  %149 = fptosi float %148 to i32
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %140
  %152 = load ptr, ptr %111, align 8, !tbaa !44
  %153 = trunc i64 %139 to i32
  %154 = add i32 %153, 1
  %155 = load i32, ptr %113, align 8, !tbaa !43
  %156 = add nsw i32 %154, %155
  %157 = shl nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %152, i64 %158
  br label %160

160:                                              ; preds = %151, %160
  %161 = phi i32 [ %167, %160 ], [ 0, %151 ]
  %162 = phi ptr [ %166, %160 ], [ %159, %151 ]
  store i8 -1, ptr %162, align 1, !tbaa !45
  %163 = load i32, ptr %113, align 8, !tbaa !43
  %164 = shl nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %162, i64 %165
  %167 = add nuw nsw i32 %161, 1
  %168 = icmp eq i32 %167, %149
  br i1 %168, label %169, label %160, !llvm.loop !79

169:                                              ; preds = %160, %140, %138
  br i1 %108, label %200, label %170

170:                                              ; preds = %169
  %171 = getelementptr inbounds [3 x [512 x i32]], ptr %4, i64 0, i64 1, i64 %139
  %172 = load i32, ptr %171, align 4, !tbaa !74
  %173 = uitofp i32 %172 to float
  %174 = fdiv float %173, %114
  %175 = load i32, ptr %116, align 4, !tbaa !49
  %176 = sitofp i32 %175 to float
  %177 = fmul float %174, %176
  %178 = fmul float %177, 0x3FECCCCCC0000000
  %179 = fptosi float %178 to i32
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %170
  %182 = load ptr, ptr %115, align 8, !tbaa !44
  %183 = trunc i64 %139 to i32
  %184 = add i32 %183, 1
  %185 = load i32, ptr %117, align 8, !tbaa !43
  %186 = add nsw i32 %184, %185
  %187 = shl nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %182, i64 %188
  br label %190

190:                                              ; preds = %181, %190
  %191 = phi i32 [ %198, %190 ], [ 0, %181 ]
  %192 = phi ptr [ %197, %190 ], [ %189, %181 ]
  %193 = getelementptr inbounds i8, ptr %192, i64 1
  store i8 -1, ptr %193, align 1, !tbaa !45
  %194 = load i32, ptr %117, align 8, !tbaa !43
  %195 = shl nsw i32 %194, 2
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %192, i64 %196
  %198 = add nuw nsw i32 %191, 1
  %199 = icmp eq i32 %198, %179
  br i1 %199, label %200, label %190, !llvm.loop !79

200:                                              ; preds = %190, %170, %169
  br i1 %109, label %231, label %201

201:                                              ; preds = %200
  %202 = getelementptr inbounds [3 x [512 x i32]], ptr %4, i64 0, i64 2, i64 %139
  %203 = load i32, ptr %202, align 4, !tbaa !74
  %204 = uitofp i32 %203 to float
  %205 = fdiv float %204, %118
  %206 = load i32, ptr %120, align 4, !tbaa !49
  %207 = sitofp i32 %206 to float
  %208 = fmul float %205, %207
  %209 = fmul float %208, 0x3FECCCCCC0000000
  %210 = fptosi float %209 to i32
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %201
  %213 = load ptr, ptr %119, align 8, !tbaa !44
  %214 = trunc i64 %139 to i32
  %215 = add i32 %214, 1
  %216 = load i32, ptr %121, align 8, !tbaa !43
  %217 = add nsw i32 %215, %216
  %218 = shl nsw i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, ptr %213, i64 %219
  br label %221

221:                                              ; preds = %212, %221
  %222 = phi i32 [ %229, %221 ], [ 0, %212 ]
  %223 = phi ptr [ %228, %221 ], [ %220, %212 ]
  %224 = getelementptr inbounds i8, ptr %223, i64 2
  store i8 -1, ptr %224, align 1, !tbaa !45
  %225 = load i32, ptr %121, align 8, !tbaa !43
  %226 = shl nsw i32 %225, 2
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %223, i64 %227
  %229 = add nuw nsw i32 %222, 1
  %230 = icmp eq i32 %229, %210
  br i1 %230, label %231, label %221, !llvm.loop !79

231:                                              ; preds = %221, %201, %200
  %232 = add nuw nsw i64 %139, 1
  %233 = icmp eq i64 %232, 512
  br i1 %233, label %234, label %138, !llvm.loop !80

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %236 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %237 = load i32, ptr %236, align 4, !tbaa !49
  %238 = sitofp i32 %237 to double
  %239 = fmul double %238, 1.000000e-01
  %240 = fptosi double %239 to i32
  %241 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %242 = icmp sgt i32 %240, 1
  br i1 %242, label %243, label %265

243:                                              ; preds = %234
  %244 = load ptr, ptr %235, align 8, !tbaa !44
  %245 = load i32, ptr %241, align 8, !tbaa !43
  %246 = shl i32 %245, 2
  %247 = add i32 %237, 1
  %248 = sub i32 %247, %240
  %249 = mul i32 %246, %248
  %250 = add i32 %249, 340
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %244, i64 %251
  %253 = add nsw i32 %240, -2
  br label %254

254:                                              ; preds = %243, %254
  %255 = phi i32 [ %263, %254 ], [ 0, %243 ]
  %256 = phi ptr [ %262, %254 ], [ %252, %243 ]
  %257 = getelementptr inbounds i8, ptr %256, i64 2
  store i8 -1, ptr %257, align 1, !tbaa !45
  %258 = getelementptr inbounds i8, ptr %256, i64 1
  store i8 -1, ptr %258, align 1, !tbaa !45
  store i8 -1, ptr %256, align 1, !tbaa !45
  %259 = load i32, ptr %241, align 8, !tbaa !43
  %260 = shl nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %256, i64 %261
  %263 = add nuw nsw i32 %255, 1
  %264 = icmp eq i32 %255, %253
  br i1 %264, label %265, label %254, !llvm.loop !81

265:                                              ; preds = %254, %234
  %266 = load i32, ptr %236, align 4, !tbaa !49
  %267 = sitofp i32 %266 to double
  %268 = fmul double %267, 1.000000e-01
  %269 = fptosi double %268 to i32
  %270 = icmp sgt i32 %269, 1
  br i1 %270, label %271, label %293

271:                                              ; preds = %265
  %272 = load ptr, ptr %235, align 8, !tbaa !44
  %273 = load i32, ptr %241, align 8, !tbaa !43
  %274 = shl i32 %273, 2
  %275 = add i32 %266, 1
  %276 = sub i32 %275, %269
  %277 = mul i32 %274, %276
  %278 = add i32 %277, 1704
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, ptr %272, i64 %279
  %281 = add nsw i32 %269, -2
  br label %282

282:                                              ; preds = %271, %282
  %283 = phi i32 [ %291, %282 ], [ 0, %271 ]
  %284 = phi ptr [ %290, %282 ], [ %280, %271 ]
  %285 = getelementptr inbounds i8, ptr %284, i64 2
  store i8 -1, ptr %285, align 1, !tbaa !45
  %286 = getelementptr inbounds i8, ptr %284, i64 1
  store i8 -1, ptr %286, align 1, !tbaa !45
  store i8 -1, ptr %284, align 1, !tbaa !45
  %287 = load i32, ptr %241, align 8, !tbaa !43
  %288 = shl nsw i32 %287, 2
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, ptr %284, i64 %289
  %291 = add nuw nsw i32 %283, 1
  %292 = icmp eq i32 %283, %281
  br i1 %292, label %293, label %282, !llvm.loop !81

293:                                              ; preds = %282, %265
  %294 = load ptr, ptr %235, align 8, !tbaa !44
  %295 = load i32, ptr %241, align 8, !tbaa !43
  %296 = load i32, ptr %236, align 4, !tbaa !49
  %297 = icmp sgt i32 %295, 0
  br i1 %297, label %298, label %312

298:                                              ; preds = %293
  %299 = shl nsw i32 %295, 2
  %300 = or disjoint i32 %299, 3
  %301 = zext nneg i32 %300 to i64
  %302 = or disjoint i32 %299, 1
  %303 = zext nneg i32 %302 to i64
  %304 = add nsw i32 %296, -1
  %305 = mul nsw i32 %304, %295
  %306 = mul nsw i32 %295, -4
  %307 = or disjoint i32 %306, 3
  %308 = sext i32 %307 to i64
  %309 = or disjoint i32 %306, 1
  %310 = sext i32 %309 to i64
  %311 = zext nneg i32 %295 to i64
  br label %318

312:                                              ; preds = %318, %293
  %313 = icmp sgt i32 %296, 0
  br i1 %313, label %314, label %356

314:                                              ; preds = %312
  %315 = shl nsw i32 %295, 2
  %316 = sext i32 %315 to i64
  %317 = zext nneg i32 %296 to i64
  br label %337

318:                                              ; preds = %318, %298
  %319 = phi i64 [ 0, %298 ], [ %335, %318 ]
  %320 = shl nsw i64 %319, 2
  %321 = getelementptr inbounds i8, ptr %294, i64 %320
  %322 = getelementptr inbounds i8, ptr %321, i64 3
  store i8 -101, ptr %322, align 1, !tbaa !45
  %323 = getelementptr inbounds i8, ptr %321, i64 1
  store i8 -101, ptr %323, align 1, !tbaa !45
  %324 = getelementptr inbounds i8, ptr %321, i64 %301
  store i8 -101, ptr %324, align 1, !tbaa !45
  %325 = getelementptr inbounds i8, ptr %321, i64 %303
  store i8 -101, ptr %325, align 1, !tbaa !45
  %326 = trunc i64 %319 to i32
  %327 = add i32 %305, %326
  %328 = shl nsw i32 %327, 2
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, ptr %294, i64 %329
  %331 = getelementptr inbounds i8, ptr %330, i64 3
  store i8 -101, ptr %331, align 1, !tbaa !45
  %332 = getelementptr inbounds i8, ptr %330, i64 1
  store i8 -101, ptr %332, align 1, !tbaa !45
  %333 = getelementptr inbounds i8, ptr %330, i64 %308
  store i8 -101, ptr %333, align 1, !tbaa !45
  %334 = getelementptr inbounds i8, ptr %330, i64 %310
  store i8 -101, ptr %334, align 1, !tbaa !45
  %335 = add nuw nsw i64 %319, 1
  %336 = icmp eq i64 %335, %311
  br i1 %336, label %312, label %318, !llvm.loop !55

337:                                              ; preds = %337, %314
  %338 = phi i64 [ 0, %314 ], [ %345, %337 ]
  %339 = mul nsw i64 %338, %316
  %340 = getelementptr inbounds i8, ptr %294, i64 %339
  %341 = getelementptr inbounds i8, ptr %340, i64 3
  store i8 -101, ptr %341, align 1, !tbaa !45
  %342 = getelementptr inbounds i8, ptr %340, i64 1
  store i8 -101, ptr %342, align 1, !tbaa !45
  %343 = getelementptr inbounds i8, ptr %340, i64 7
  store i8 -101, ptr %343, align 1, !tbaa !45
  %344 = getelementptr inbounds i8, ptr %340, i64 5
  store i8 -101, ptr %344, align 1, !tbaa !45
  %345 = add nuw nsw i64 %338, 1
  %346 = trunc i64 %345 to i32
  %347 = mul i32 %315, %346
  %348 = add i32 %347, -4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, ptr %294, i64 %349
  %351 = getelementptr inbounds i8, ptr %350, i64 3
  store i8 -101, ptr %351, align 1, !tbaa !45
  %352 = getelementptr inbounds i8, ptr %350, i64 1
  store i8 -101, ptr %352, align 1, !tbaa !45
  %353 = getelementptr inbounds i8, ptr %350, i64 -1
  store i8 -101, ptr %353, align 1, !tbaa !45
  %354 = getelementptr inbounds i8, ptr %350, i64 -3
  store i8 -101, ptr %354, align 1, !tbaa !45
  %355 = icmp eq i64 %345, %317
  br i1 %355, label %356, label %337, !llvm.loop !56

356:                                              ; preds = %337, %312
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %4) #7
  br label %699

357:                                              ; preds = %1
  %358 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %359 = load ptr, ptr %358, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %2, i8 0, i64 6144, i1 false)
  %360 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %361 = load i32, ptr %360, align 4, !tbaa !49
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %421, %357
  br label %440

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %366 = load i32, ptr %365, align 8, !tbaa !43
  %367 = icmp sgt i32 %366, 0
  %368 = zext nneg i32 %361 to i64
  %369 = zext nneg i32 %366 to i64
  br label %370

370:                                              ; preds = %364, %421
  %371 = phi i64 [ 0, %364 ], [ %422, %421 ]
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) %3, i8 0, i64 6144, i1 false)
  br i1 %367, label %372, label %401

372:                                              ; preds = %370
  %373 = trunc i64 %371 to i32
  %374 = mul i32 %366, %373
  br label %375

375:                                              ; preds = %372, %375
  %376 = phi i64 [ 0, %372 ], [ %399, %375 ]
  %377 = trunc i64 %376 to i32
  %378 = add i32 %374, %377
  %379 = shl nsw i32 %378, 2
  %380 = zext nneg i32 %379 to i64
  %381 = getelementptr inbounds i8, ptr %359, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !45
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds [512 x i32], ptr %3, i64 0, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !74
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 4, !tbaa !74
  %387 = getelementptr inbounds i8, ptr %381, i64 1
  %388 = load i8, ptr %387, align 1, !tbaa !45
  %389 = zext i8 %388 to i64
  %390 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 1, i64 %389
  %391 = load i32, ptr %390, align 4, !tbaa !74
  %392 = add i32 %391, 1
  store i32 %392, ptr %390, align 4, !tbaa !74
  %393 = getelementptr inbounds i8, ptr %381, i64 2
  %394 = load i8, ptr %393, align 1, !tbaa !45
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 2, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !74
  %398 = add i32 %397, 1
  store i32 %398, ptr %396, align 4, !tbaa !74
  %399 = add nuw nsw i64 %376, 1
  %400 = icmp eq i64 %399, %369
  br i1 %400, label %401, label %375, !llvm.loop !82

401:                                              ; preds = %375, %370
  br label %402

402:                                              ; preds = %401, %402
  %403 = phi i64 [ %419, %402 ], [ 0, %401 ]
  %404 = getelementptr inbounds [512 x i32], ptr %3, i64 0, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !74
  %406 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %403
  %407 = load i32, ptr %406, align 4, !tbaa !74
  %408 = add i32 %407, %405
  store i32 %408, ptr %406, align 4, !tbaa !74
  %409 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 1, i64 %403
  %410 = load i32, ptr %409, align 4, !tbaa !74
  %411 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %403
  %412 = load i32, ptr %411, align 4, !tbaa !74
  %413 = add i32 %412, %410
  store i32 %413, ptr %411, align 4, !tbaa !74
  %414 = getelementptr inbounds [3 x [512 x i32]], ptr %3, i64 0, i64 2, i64 %403
  %415 = load i32, ptr %414, align 4, !tbaa !74
  %416 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %403
  %417 = load i32, ptr %416, align 4, !tbaa !74
  %418 = add i32 %417, %415
  store i32 %418, ptr %416, align 4, !tbaa !74
  %419 = add nuw nsw i64 %403, 1
  %420 = icmp eq i64 %419, 512
  br i1 %420, label %421, label %402, !llvm.loop !83

421:                                              ; preds = %402
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %3) #7
  %422 = add nuw nsw i64 %371, 1
  %423 = icmp eq i64 %422, %368
  br i1 %423, label %363, label %370, !llvm.loop !84

424:                                              ; preds = %440
  %425 = icmp eq i32 %447, 0
  %426 = icmp eq i32 %450, 0
  %427 = icmp eq i32 %453, 0
  %428 = uitofp i32 %447 to float
  %429 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %430 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %431 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %432 = uitofp i32 %450 to float
  %433 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %434 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %435 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %436 = uitofp i32 %453 to float
  %437 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %438 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %439 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  br label %456

440:                                              ; preds = %363, %440
  %441 = phi i64 [ %454, %440 ], [ 0, %363 ]
  %442 = phi i32 [ %453, %440 ], [ 0, %363 ]
  %443 = phi i32 [ %450, %440 ], [ 0, %363 ]
  %444 = phi i32 [ %447, %440 ], [ 0, %363 ]
  %445 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %441
  %446 = load i32, ptr %445, align 4, !tbaa !74
  %447 = tail call i32 @llvm.umax.i32(i32 %446, i32 %444)
  %448 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %441
  %449 = load i32, ptr %448, align 4, !tbaa !74
  %450 = tail call i32 @llvm.umax.i32(i32 %449, i32 %443)
  %451 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %441
  %452 = load i32, ptr %451, align 4, !tbaa !74
  %453 = tail call i32 @llvm.umax.i32(i32 %452, i32 %442)
  %454 = add nuw nsw i64 %441, 1
  %455 = icmp eq i64 %454, 512
  br i1 %455, label %424, label %440, !llvm.loop !85

456:                                              ; preds = %424, %629
  %457 = phi i64 [ 0, %424 ], [ %630, %629 ]
  br i1 %425, label %513, label %458

458:                                              ; preds = %456
  %459 = shl nuw nsw i64 %457, 1
  %460 = getelementptr inbounds [512 x i32], ptr %2, i64 0, i64 %457
  %461 = load i32, ptr %460, align 4, !tbaa !74
  %462 = uitofp i32 %461 to float
  %463 = fdiv float %462, %428
  %464 = load i32, ptr %430, align 4, !tbaa !49
  %465 = sitofp i32 %464 to float
  %466 = fmul float %463, %465
  %467 = fmul float %466, 0x3FECCCCCC0000000
  %468 = fptosi float %467 to i32
  %469 = icmp sgt i32 %468, 0
  br i1 %469, label %470, label %488

470:                                              ; preds = %458
  %471 = load ptr, ptr %429, align 8, !tbaa !44
  %472 = trunc i64 %459 to i32
  %473 = or disjoint i32 %472, 1
  %474 = load i32, ptr %431, align 8, !tbaa !43
  %475 = add nsw i32 %473, %474
  %476 = shl nsw i32 %475, 2
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8, ptr %471, i64 %477
  br label %479

479:                                              ; preds = %470, %479
  %480 = phi i32 [ %486, %479 ], [ 0, %470 ]
  %481 = phi ptr [ %485, %479 ], [ %478, %470 ]
  store i8 -1, ptr %481, align 1, !tbaa !45
  %482 = load i32, ptr %431, align 8, !tbaa !43
  %483 = shl nsw i32 %482, 2
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, ptr %481, i64 %484
  %486 = add nuw nsw i32 %480, 1
  %487 = icmp eq i32 %486, %468
  br i1 %487, label %488, label %479, !llvm.loop !79

488:                                              ; preds = %479, %458
  %489 = load i32, ptr %430, align 4, !tbaa !49
  %490 = sitofp i32 %489 to float
  %491 = fmul float %463, %490
  %492 = fmul float %491, 0x3FECCCCCC0000000
  %493 = fptosi float %492 to i32
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %495, label %513

495:                                              ; preds = %488
  %496 = load ptr, ptr %429, align 8, !tbaa !44
  %497 = trunc i64 %459 to i32
  %498 = add i32 %497, 2
  %499 = load i32, ptr %431, align 8, !tbaa !43
  %500 = add nsw i32 %498, %499
  %501 = shl nsw i32 %500, 2
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8, ptr %496, i64 %502
  br label %504

504:                                              ; preds = %495, %504
  %505 = phi i32 [ %511, %504 ], [ 0, %495 ]
  %506 = phi ptr [ %510, %504 ], [ %503, %495 ]
  store i8 -1, ptr %506, align 1, !tbaa !45
  %507 = load i32, ptr %431, align 8, !tbaa !43
  %508 = shl nsw i32 %507, 2
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, ptr %506, i64 %509
  %511 = add nuw nsw i32 %505, 1
  %512 = icmp eq i32 %511, %493
  br i1 %512, label %513, label %504, !llvm.loop !79

513:                                              ; preds = %504, %488, %456
  br i1 %426, label %571, label %514

514:                                              ; preds = %513
  %515 = shl nuw nsw i64 %457, 1
  %516 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 1, i64 %457
  %517 = load i32, ptr %516, align 4, !tbaa !74
  %518 = uitofp i32 %517 to float
  %519 = fdiv float %518, %432
  %520 = load i32, ptr %434, align 4, !tbaa !49
  %521 = sitofp i32 %520 to float
  %522 = fmul float %519, %521
  %523 = fmul float %522, 0x3FECCCCCC0000000
  %524 = fptosi float %523 to i32
  %525 = icmp sgt i32 %524, 0
  br i1 %525, label %526, label %545

526:                                              ; preds = %514
  %527 = load ptr, ptr %433, align 8, !tbaa !44
  %528 = trunc i64 %515 to i32
  %529 = or disjoint i32 %528, 1
  %530 = load i32, ptr %435, align 8, !tbaa !43
  %531 = add nsw i32 %529, %530
  %532 = shl nsw i32 %531, 2
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, ptr %527, i64 %533
  br label %535

535:                                              ; preds = %526, %535
  %536 = phi i32 [ %543, %535 ], [ 0, %526 ]
  %537 = phi ptr [ %542, %535 ], [ %534, %526 ]
  %538 = getelementptr inbounds i8, ptr %537, i64 1
  store i8 -1, ptr %538, align 1, !tbaa !45
  %539 = load i32, ptr %435, align 8, !tbaa !43
  %540 = shl nsw i32 %539, 2
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, ptr %537, i64 %541
  %543 = add nuw nsw i32 %536, 1
  %544 = icmp eq i32 %543, %524
  br i1 %544, label %545, label %535, !llvm.loop !79

545:                                              ; preds = %535, %514
  %546 = load i32, ptr %434, align 4, !tbaa !49
  %547 = sitofp i32 %546 to float
  %548 = fmul float %519, %547
  %549 = fmul float %548, 0x3FECCCCCC0000000
  %550 = fptosi float %549 to i32
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %571

552:                                              ; preds = %545
  %553 = load ptr, ptr %433, align 8, !tbaa !44
  %554 = trunc i64 %515 to i32
  %555 = add i32 %554, 2
  %556 = load i32, ptr %435, align 8, !tbaa !43
  %557 = add nsw i32 %555, %556
  %558 = shl nsw i32 %557, 2
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, ptr %553, i64 %559
  br label %561

561:                                              ; preds = %552, %561
  %562 = phi i32 [ %569, %561 ], [ 0, %552 ]
  %563 = phi ptr [ %568, %561 ], [ %560, %552 ]
  %564 = getelementptr inbounds i8, ptr %563, i64 1
  store i8 -1, ptr %564, align 1, !tbaa !45
  %565 = load i32, ptr %435, align 8, !tbaa !43
  %566 = shl nsw i32 %565, 2
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8, ptr %563, i64 %567
  %569 = add nuw nsw i32 %562, 1
  %570 = icmp eq i32 %569, %550
  br i1 %570, label %571, label %561, !llvm.loop !79

571:                                              ; preds = %561, %545, %513
  br i1 %427, label %629, label %572

572:                                              ; preds = %571
  %573 = shl nuw nsw i64 %457, 1
  %574 = getelementptr inbounds [3 x [512 x i32]], ptr %2, i64 0, i64 2, i64 %457
  %575 = load i32, ptr %574, align 4, !tbaa !74
  %576 = uitofp i32 %575 to float
  %577 = fdiv float %576, %436
  %578 = load i32, ptr %438, align 4, !tbaa !49
  %579 = sitofp i32 %578 to float
  %580 = fmul float %577, %579
  %581 = fmul float %580, 0x3FECCCCCC0000000
  %582 = fptosi float %581 to i32
  %583 = icmp sgt i32 %582, 0
  br i1 %583, label %584, label %603

584:                                              ; preds = %572
  %585 = load ptr, ptr %437, align 8, !tbaa !44
  %586 = trunc i64 %573 to i32
  %587 = or disjoint i32 %586, 1
  %588 = load i32, ptr %439, align 8, !tbaa !43
  %589 = add nsw i32 %587, %588
  %590 = shl nsw i32 %589, 2
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8, ptr %585, i64 %591
  br label %593

593:                                              ; preds = %584, %593
  %594 = phi i32 [ %601, %593 ], [ 0, %584 ]
  %595 = phi ptr [ %600, %593 ], [ %592, %584 ]
  %596 = getelementptr inbounds i8, ptr %595, i64 2
  store i8 -1, ptr %596, align 1, !tbaa !45
  %597 = load i32, ptr %439, align 8, !tbaa !43
  %598 = shl nsw i32 %597, 2
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, ptr %595, i64 %599
  %601 = add nuw nsw i32 %594, 1
  %602 = icmp eq i32 %601, %582
  br i1 %602, label %603, label %593, !llvm.loop !79

603:                                              ; preds = %593, %572
  %604 = load i32, ptr %438, align 4, !tbaa !49
  %605 = sitofp i32 %604 to float
  %606 = fmul float %577, %605
  %607 = fmul float %606, 0x3FECCCCCC0000000
  %608 = fptosi float %607 to i32
  %609 = icmp sgt i32 %608, 0
  br i1 %609, label %610, label %629

610:                                              ; preds = %603
  %611 = load ptr, ptr %437, align 8, !tbaa !44
  %612 = trunc i64 %573 to i32
  %613 = add i32 %612, 2
  %614 = load i32, ptr %439, align 8, !tbaa !43
  %615 = add nsw i32 %613, %614
  %616 = shl nsw i32 %615, 2
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i8, ptr %611, i64 %617
  br label %619

619:                                              ; preds = %610, %619
  %620 = phi i32 [ %627, %619 ], [ 0, %610 ]
  %621 = phi ptr [ %626, %619 ], [ %618, %610 ]
  %622 = getelementptr inbounds i8, ptr %621, i64 2
  store i8 -1, ptr %622, align 1, !tbaa !45
  %623 = load i32, ptr %439, align 8, !tbaa !43
  %624 = shl nsw i32 %623, 2
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i8, ptr %621, i64 %625
  %627 = add nuw nsw i32 %620, 1
  %628 = icmp eq i32 %627, %608
  br i1 %628, label %629, label %619, !llvm.loop !79

629:                                              ; preds = %619, %603, %571
  %630 = add nuw nsw i64 %457, 1
  %631 = icmp eq i64 %630, 512
  br i1 %631, label %632, label %456, !llvm.loop !86

632:                                              ; preds = %629
  %633 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %634 = load ptr, ptr %633, align 8, !tbaa !44
  %635 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %636 = load i32, ptr %635, align 8, !tbaa !43
  %637 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %638 = load i32, ptr %637, align 4, !tbaa !49
  %639 = icmp sgt i32 %636, 0
  br i1 %639, label %640, label %654

640:                                              ; preds = %632
  %641 = shl nsw i32 %636, 2
  %642 = or disjoint i32 %641, 3
  %643 = zext nneg i32 %642 to i64
  %644 = or disjoint i32 %641, 1
  %645 = zext nneg i32 %644 to i64
  %646 = add nsw i32 %638, -1
  %647 = mul nsw i32 %646, %636
  %648 = mul nsw i32 %636, -4
  %649 = or disjoint i32 %648, 3
  %650 = sext i32 %649 to i64
  %651 = or disjoint i32 %648, 1
  %652 = sext i32 %651 to i64
  %653 = zext nneg i32 %636 to i64
  br label %660

654:                                              ; preds = %660, %632
  %655 = icmp sgt i32 %638, 0
  br i1 %655, label %656, label %698

656:                                              ; preds = %654
  %657 = shl nsw i32 %636, 2
  %658 = sext i32 %657 to i64
  %659 = zext nneg i32 %638 to i64
  br label %679

660:                                              ; preds = %660, %640
  %661 = phi i64 [ 0, %640 ], [ %677, %660 ]
  %662 = shl nsw i64 %661, 2
  %663 = getelementptr inbounds i8, ptr %634, i64 %662
  %664 = getelementptr inbounds i8, ptr %663, i64 3
  store i8 -101, ptr %664, align 1, !tbaa !45
  %665 = getelementptr inbounds i8, ptr %663, i64 1
  store i8 -101, ptr %665, align 1, !tbaa !45
  %666 = getelementptr inbounds i8, ptr %663, i64 %643
  store i8 -101, ptr %666, align 1, !tbaa !45
  %667 = getelementptr inbounds i8, ptr %663, i64 %645
  store i8 -101, ptr %667, align 1, !tbaa !45
  %668 = trunc i64 %661 to i32
  %669 = add i32 %647, %668
  %670 = shl nsw i32 %669, 2
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, ptr %634, i64 %671
  %673 = getelementptr inbounds i8, ptr %672, i64 3
  store i8 -101, ptr %673, align 1, !tbaa !45
  %674 = getelementptr inbounds i8, ptr %672, i64 1
  store i8 -101, ptr %674, align 1, !tbaa !45
  %675 = getelementptr inbounds i8, ptr %672, i64 %650
  store i8 -101, ptr %675, align 1, !tbaa !45
  %676 = getelementptr inbounds i8, ptr %672, i64 %652
  store i8 -101, ptr %676, align 1, !tbaa !45
  %677 = add nuw nsw i64 %661, 1
  %678 = icmp eq i64 %677, %653
  br i1 %678, label %654, label %660, !llvm.loop !55

679:                                              ; preds = %679, %656
  %680 = phi i64 [ 0, %656 ], [ %687, %679 ]
  %681 = mul nsw i64 %680, %658
  %682 = getelementptr inbounds i8, ptr %634, i64 %681
  %683 = getelementptr inbounds i8, ptr %682, i64 3
  store i8 -101, ptr %683, align 1, !tbaa !45
  %684 = getelementptr inbounds i8, ptr %682, i64 1
  store i8 -101, ptr %684, align 1, !tbaa !45
  %685 = getelementptr inbounds i8, ptr %682, i64 7
  store i8 -101, ptr %685, align 1, !tbaa !45
  %686 = getelementptr inbounds i8, ptr %682, i64 5
  store i8 -101, ptr %686, align 1, !tbaa !45
  %687 = add nuw nsw i64 %680, 1
  %688 = trunc i64 %687 to i32
  %689 = mul i32 %657, %688
  %690 = add i32 %689, -4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i8, ptr %634, i64 %691
  %693 = getelementptr inbounds i8, ptr %692, i64 3
  store i8 -101, ptr %693, align 1, !tbaa !45
  %694 = getelementptr inbounds i8, ptr %692, i64 1
  store i8 -101, ptr %694, align 1, !tbaa !45
  %695 = getelementptr inbounds i8, ptr %692, i64 -1
  store i8 -101, ptr %695, align 1, !tbaa !45
  %696 = getelementptr inbounds i8, ptr %692, i64 -3
  store i8 -101, ptr %696, align 1, !tbaa !45
  %697 = icmp eq i64 %687, %659
  br i1 %697, label %698, label %679, !llvm.loop !56

698:                                              ; preds = %679, %654
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %2) #7
  br label %699

699:                                              ; preds = %698, %356
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @make_vectorscope_view_from_ibuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  %7 = tail call ptr @IMB_allocImBuf(i32 noundef 515, i32 noundef 515, i8 noundef zeroext 32, i32 noundef 1) #7
  br i1 %6, label %356, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #7
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ 0, %8 ], [ %23, %12 ]
  %14 = trunc i64 %13 to i32
  %15 = sitofp i32 %14 to float
  %16 = fadd float %15, 1.000000e+00
  %17 = fmul float %16, 3.906250e-03
  %18 = fpext float %17 to double
  %19 = tail call double @pow(double noundef %18, double noundef 0x3FC99999A0000000) #7
  %20 = fmul double %19, 2.550000e+02
  %21 = fptoui double %20 to i8
  %22 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %13
  store i8 %21, ptr %22, align 1, !tbaa !45
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, 256
  br i1 %24, label %31, label %12, !llvm.loop !87

25:                                               ; preds = %265
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %337

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  br label %268

31:                                               ; preds = %12, %265
  %32 = phi i32 [ %266, %265 ], [ 0, %12 ]
  %33 = trunc i32 %32 to i8
  %34 = xor i8 %33, -1
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FBD2F1AA0000000, float 0x3FD322D0E0000000)
  %38 = fsub float %36, %37
  %39 = fmul float %38, 0x3FDF7CEDA0000000
  %40 = fsub float 1.000000e+00, %37
  %41 = fmul float %40, 0x3FEC106240000000
  %42 = fmul float %39, 0x3FF0B8A7E0000000
  %43 = fadd float %42, 5.000000e-01
  %44 = fmul float %41, 0x3FE9FCBD20000000
  %45 = fadd float %44, 5.000000e-01
  %46 = tail call float @llvm.fmuladd.f32(float %45, float 5.120000e+02, float 1.000000e+00)
  %47 = fptosi float %46 to i32
  %48 = mul nsw i32 %47, 515
  %49 = tail call float @llvm.fmuladd.f32(float %43, float 5.120000e+02, float 1.000000e+00)
  %50 = fptosi float %49 to i32
  %51 = add nsw i32 %48, %50
  %52 = shl nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %11, i64 %53
  br label %55

55:                                               ; preds = %70, %31
  %56 = phi i64 [ 4294967295, %31 ], [ %71, %70 ]
  %57 = mul nuw nsw i64 %56, 515
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i64 [ 4294967295, %55 ], [ %68, %58 ]
  %60 = add nuw nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  %62 = shl nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %54, i64 %63
  store i8 -1, ptr %64, align 1, !tbaa !45
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 0, ptr %65, align 1, !tbaa !45
  %66 = getelementptr inbounds i8, ptr %64, i64 2
  store i8 %34, ptr %66, align 1, !tbaa !45
  %67 = getelementptr inbounds i8, ptr %64, i64 3
  store i8 -1, ptr %67, align 1, !tbaa !45
  %68 = add nuw nsw i64 %59, 1
  %69 = icmp eq i64 %68, 4294967298
  br i1 %69, label %70, label %58, !llvm.loop !88

70:                                               ; preds = %58
  %71 = add nuw nsw i64 %56, 1
  %72 = icmp eq i64 %71, 4294967298
  br i1 %72, label %73, label %55, !llvm.loop !89

73:                                               ; preds = %70
  %74 = uitofp i8 %33 to float
  %75 = fdiv float %74, 2.550000e+02
  %76 = fmul float %75, 0x3FE2C8B440000000
  %77 = fadd float %76, 0x3FD322D0E0000000
  %78 = fsub float 0.000000e+00, %77
  %79 = fmul float %78, 0x3FDF7CEDA0000000
  %80 = fsub float 1.000000e+00, %77
  %81 = fmul float %80, 0x3FEC106240000000
  %82 = fmul float %79, 0x3FF0B8A7E0000000
  %83 = fadd float %82, 5.000000e-01
  %84 = fmul float %81, 0x3FE9FCBD20000000
  %85 = fadd float %84, 5.000000e-01
  %86 = tail call float @llvm.fmuladd.f32(float %85, float 5.120000e+02, float 1.000000e+00)
  %87 = fptosi float %86 to i32
  %88 = mul nsw i32 %87, 515
  %89 = tail call float @llvm.fmuladd.f32(float %83, float 5.120000e+02, float 1.000000e+00)
  %90 = fptosi float %89 to i32
  %91 = add nsw i32 %88, %90
  %92 = shl nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %11, i64 %93
  br label %95

95:                                               ; preds = %110, %73
  %96 = phi i64 [ 4294967295, %73 ], [ %111, %110 ]
  %97 = mul nuw nsw i64 %96, 515
  br label %98

98:                                               ; preds = %98, %95
  %99 = phi i64 [ 4294967295, %95 ], [ %108, %98 ]
  %100 = add nuw nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  %102 = shl nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %94, i64 %103
  store i8 -1, ptr %104, align 1, !tbaa !45
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 %33, ptr %105, align 1, !tbaa !45
  %106 = getelementptr inbounds i8, ptr %104, i64 2
  store i8 0, ptr %106, align 1, !tbaa !45
  %107 = getelementptr inbounds i8, ptr %104, i64 3
  store i8 -1, ptr %107, align 1, !tbaa !45
  %108 = add nuw nsw i64 %99, 1
  %109 = icmp eq i64 %108, 4294967298
  br i1 %109, label %110, label %98, !llvm.loop !88

110:                                              ; preds = %98
  %111 = add nuw nsw i64 %96, 1
  %112 = icmp eq i64 %111, 4294967298
  br i1 %112, label %113, label %95, !llvm.loop !89

113:                                              ; preds = %110
  %114 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FD322D0E0000000, float 0x3FE2C8B440000000)
  %115 = fadd float %114, 0.000000e+00
  %116 = fsub float 0.000000e+00, %115
  %117 = fmul float %116, 0x3FDF7CEDA0000000
  %118 = fsub float %36, %115
  %119 = fmul float %118, 0x3FEC106240000000
  %120 = fmul float %117, 0x3FF0B8A7E0000000
  %121 = fadd float %120, 5.000000e-01
  %122 = fmul float %119, 0x3FE9FCBD20000000
  %123 = fadd float %122, 5.000000e-01
  %124 = tail call float @llvm.fmuladd.f32(float %123, float 5.120000e+02, float 1.000000e+00)
  %125 = fptosi float %124 to i32
  %126 = mul nsw i32 %125, 515
  %127 = tail call float @llvm.fmuladd.f32(float %121, float 5.120000e+02, float 1.000000e+00)
  %128 = fptosi float %127 to i32
  %129 = add nsw i32 %126, %128
  %130 = shl nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %11, i64 %131
  br label %133

133:                                              ; preds = %148, %113
  %134 = phi i64 [ 4294967295, %113 ], [ %149, %148 ]
  %135 = mul nuw nsw i64 %134, 515
  br label %136

136:                                              ; preds = %136, %133
  %137 = phi i64 [ 4294967295, %133 ], [ %146, %136 ]
  %138 = add nuw nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  %140 = shl nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %132, i64 %141
  store i8 %34, ptr %142, align 1, !tbaa !45
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  store i8 -1, ptr %143, align 1, !tbaa !45
  %144 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 0, ptr %144, align 1, !tbaa !45
  %145 = getelementptr inbounds i8, ptr %142, i64 3
  store i8 -1, ptr %145, align 1, !tbaa !45
  %146 = add nuw nsw i64 %137, 1
  %147 = icmp eq i64 %146, 4294967298
  br i1 %147, label %148, label %136, !llvm.loop !88

148:                                              ; preds = %136
  %149 = add nuw nsw i64 %134, 1
  %150 = icmp eq i64 %149, 4294967298
  br i1 %150, label %151, label %133, !llvm.loop !89

151:                                              ; preds = %148
  %152 = tail call float @llvm.fmuladd.f32(float %75, float 0x3FBD2F1AA0000000, float 0x3FE2C8B440000000)
  %153 = fsub float %75, %152
  %154 = fmul float %153, 0x3FDF7CEDA0000000
  %155 = fsub float 0.000000e+00, %152
  %156 = fmul float %155, 0x3FEC106240000000
  %157 = fmul float %154, 0x3FF0B8A7E0000000
  %158 = fadd float %157, 5.000000e-01
  %159 = fmul float %156, 0x3FE9FCBD20000000
  %160 = fadd float %159, 5.000000e-01
  %161 = tail call float @llvm.fmuladd.f32(float %160, float 5.120000e+02, float 1.000000e+00)
  %162 = fptosi float %161 to i32
  %163 = mul nsw i32 %162, 515
  %164 = tail call float @llvm.fmuladd.f32(float %158, float 5.120000e+02, float 1.000000e+00)
  %165 = fptosi float %164 to i32
  %166 = add nsw i32 %163, %165
  %167 = shl nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %11, i64 %168
  br label %170

170:                                              ; preds = %185, %151
  %171 = phi i64 [ 4294967295, %151 ], [ %186, %185 ]
  %172 = mul nuw nsw i64 %171, 515
  br label %173

173:                                              ; preds = %173, %170
  %174 = phi i64 [ 4294967295, %170 ], [ %183, %173 ]
  %175 = add nuw nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  %177 = shl nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, ptr %169, i64 %178
  store i8 0, ptr %179, align 1, !tbaa !45
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  store i8 -1, ptr %180, align 1, !tbaa !45
  %181 = getelementptr inbounds i8, ptr %179, i64 2
  store i8 %33, ptr %181, align 1, !tbaa !45
  %182 = getelementptr inbounds i8, ptr %179, i64 3
  store i8 -1, ptr %182, align 1, !tbaa !45
  %183 = add nuw nsw i64 %174, 1
  %184 = icmp eq i64 %183, 4294967298
  br i1 %184, label %185, label %173, !llvm.loop !88

185:                                              ; preds = %173
  %186 = add nuw nsw i64 %171, 1
  %187 = icmp eq i64 %186, 4294967298
  br i1 %187, label %188, label %170, !llvm.loop !89

188:                                              ; preds = %185
  %189 = fmul float %36, 0x3FE2C8B440000000
  %190 = fadd float %189, 0.000000e+00
  %191 = fadd float %190, 0x3FBD2F1AA0000000
  %192 = fsub float 1.000000e+00, %191
  %193 = fmul float %192, 0x3FDF7CEDA0000000
  %194 = fsub float 0.000000e+00, %191
  %195 = fmul float %194, 0x3FEC106240000000
  %196 = fmul float %193, 0x3FF0B8A7E0000000
  %197 = fadd float %196, 5.000000e-01
  %198 = fmul float %195, 0x3FE9FCBD20000000
  %199 = fadd float %198, 5.000000e-01
  %200 = tail call float @llvm.fmuladd.f32(float %199, float 5.120000e+02, float 1.000000e+00)
  %201 = fptosi float %200 to i32
  %202 = mul nsw i32 %201, 515
  %203 = tail call float @llvm.fmuladd.f32(float %197, float 5.120000e+02, float 1.000000e+00)
  %204 = fptosi float %203 to i32
  %205 = add nsw i32 %202, %204
  %206 = shl nsw i32 %205, 2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %11, i64 %207
  br label %209

209:                                              ; preds = %224, %188
  %210 = phi i64 [ 4294967295, %188 ], [ %225, %224 ]
  %211 = mul nuw nsw i64 %210, 515
  br label %212

212:                                              ; preds = %212, %209
  %213 = phi i64 [ 4294967295, %209 ], [ %222, %212 ]
  %214 = add nuw nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  %216 = shl nsw i32 %215, 2
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, ptr %208, i64 %217
  store i8 0, ptr %218, align 1, !tbaa !45
  %219 = getelementptr inbounds i8, ptr %218, i64 1
  store i8 %34, ptr %219, align 1, !tbaa !45
  %220 = getelementptr inbounds i8, ptr %218, i64 2
  store i8 -1, ptr %220, align 1, !tbaa !45
  %221 = getelementptr inbounds i8, ptr %218, i64 3
  store i8 -1, ptr %221, align 1, !tbaa !45
  %222 = add nuw nsw i64 %213, 1
  %223 = icmp eq i64 %222, 4294967298
  br i1 %223, label %224, label %212, !llvm.loop !88

224:                                              ; preds = %212
  %225 = add nuw nsw i64 %210, 1
  %226 = icmp eq i64 %225, 4294967298
  br i1 %226, label %227, label %209, !llvm.loop !89

227:                                              ; preds = %224
  %228 = tail call float @llvm.fmuladd.f32(float %75, float 0x3FD322D0E0000000, float 0.000000e+00)
  %229 = fadd float %228, 0x3FBD2F1AA0000000
  %230 = fsub float 1.000000e+00, %229
  %231 = fmul float %230, 0x3FDF7CEDA0000000
  %232 = fsub float %75, %229
  %233 = fmul float %232, 0x3FEC106240000000
  %234 = fmul float %231, 0x3FF0B8A7E0000000
  %235 = fadd float %234, 5.000000e-01
  %236 = fmul float %233, 0x3FE9FCBD20000000
  %237 = fadd float %236, 5.000000e-01
  %238 = tail call float @llvm.fmuladd.f32(float %237, float 5.120000e+02, float 1.000000e+00)
  %239 = fptosi float %238 to i32
  %240 = mul nsw i32 %239, 515
  %241 = tail call float @llvm.fmuladd.f32(float %235, float 5.120000e+02, float 1.000000e+00)
  %242 = fptosi float %241 to i32
  %243 = add nsw i32 %240, %242
  %244 = shl nsw i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, ptr %11, i64 %245
  br label %247

247:                                              ; preds = %262, %227
  %248 = phi i64 [ 4294967295, %227 ], [ %263, %262 ]
  %249 = mul nuw nsw i64 %248, 515
  br label %250

250:                                              ; preds = %250, %247
  %251 = phi i64 [ 4294967295, %247 ], [ %260, %250 ]
  %252 = add nuw nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  %254 = shl nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, ptr %246, i64 %255
  store i8 %33, ptr %256, align 1, !tbaa !45
  %257 = getelementptr inbounds i8, ptr %256, i64 1
  store i8 0, ptr %257, align 1, !tbaa !45
  %258 = getelementptr inbounds i8, ptr %256, i64 2
  store i8 -1, ptr %258, align 1, !tbaa !45
  %259 = getelementptr inbounds i8, ptr %256, i64 3
  store i8 -1, ptr %259, align 1, !tbaa !45
  %260 = add nuw nsw i64 %251, 1
  %261 = icmp eq i64 %260, 4294967298
  br i1 %261, label %262, label %250, !llvm.loop !88

262:                                              ; preds = %250
  %263 = add nuw nsw i64 %248, 1
  %264 = icmp eq i64 %263, 4294967298
  br i1 %264, label %265, label %247, !llvm.loop !89

265:                                              ; preds = %262
  %266 = add nuw nsw i32 %32, 1
  %267 = icmp eq i32 %266, 256
  br i1 %267, label %25, label %31, !llvm.loop !90

268:                                              ; preds = %29, %333
  %269 = phi i32 [ 0, %29 ], [ %334, %333 ]
  %270 = load i32, ptr %30, align 8, !tbaa !43
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %333

272:                                              ; preds = %268, %301
  %273 = phi i32 [ %331, %301 ], [ %270, %268 ]
  %274 = phi i32 [ %330, %301 ], [ 0, %268 ]
  %275 = mul nsw i32 %273, %269
  %276 = add nsw i32 %275, %274
  %277 = shl nsw i32 %276, 2
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, ptr %9, i64 %278
  %280 = load float, ptr %279, align 4
  %281 = getelementptr inbounds i8, ptr %279, i64 4
  %282 = load float, ptr %281, align 4
  %283 = getelementptr inbounds i8, ptr %279, i64 8
  %284 = load float, ptr %283, align 4
  %285 = fcmp olt float %280, 0.000000e+00
  br i1 %285, label %289, label %286

286:                                              ; preds = %272
  %287 = fcmp ogt float %280, 1.000000e+00
  br i1 %287, label %288, label %289

288:                                              ; preds = %286
  br label %289

289:                                              ; preds = %288, %286, %272
  %290 = phi float [ 1.000000e+00, %288 ], [ %280, %286 ], [ 0.000000e+00, %272 ]
  %291 = fcmp olt float %282, 0.000000e+00
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = fcmp ogt float %282, 1.000000e+00
  br i1 %293, label %294, label %295

294:                                              ; preds = %292
  br label %295

295:                                              ; preds = %294, %292, %289
  %296 = phi float [ 1.000000e+00, %294 ], [ %282, %292 ], [ 0.000000e+00, %289 ]
  %297 = fcmp olt float %284, 0.000000e+00
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = fcmp ogt float %284, 1.000000e+00
  br i1 %299, label %300, label %301

300:                                              ; preds = %298
  br label %301

301:                                              ; preds = %300, %298, %295
  %302 = phi float [ 1.000000e+00, %300 ], [ %284, %298 ], [ 0.000000e+00, %295 ]
  %303 = fmul float %296, 0x3FE2C8B440000000
  %304 = tail call float @llvm.fmuladd.f32(float %290, float 0x3FD322D0E0000000, float %303)
  %305 = tail call float @llvm.fmuladd.f32(float %302, float 0x3FBD2F1AA0000000, float %304)
  %306 = fsub float %302, %305
  %307 = fmul float %306, 0x3FDF7CEDA0000000
  %308 = fsub float %290, %305
  %309 = fmul float %308, 0x3FEC106240000000
  %310 = fmul float %307, 0x3FF0B8A7E0000000
  %311 = fadd float %310, 5.000000e-01
  %312 = fmul float %309, 0x3FE9FCBD20000000
  %313 = fadd float %312, 5.000000e-01
  %314 = tail call float @llvm.fmuladd.f32(float %313, float 5.120000e+02, float 1.000000e+00)
  %315 = fptosi float %314 to i32
  %316 = mul nsw i32 %315, 515
  %317 = tail call float @llvm.fmuladd.f32(float %311, float 5.120000e+02, float 1.000000e+00)
  %318 = fptosi float %317 to i32
  %319 = add nsw i32 %316, %318
  %320 = shl nsw i32 %319, 2
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %11, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !45
  %324 = zext i8 %323 to i64
  %325 = getelementptr inbounds i8, ptr %3, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !45
  %327 = getelementptr inbounds i8, ptr %322, i64 2
  store i8 %326, ptr %327, align 1, !tbaa !45
  %328 = getelementptr inbounds i8, ptr %322, i64 1
  store i8 %326, ptr %328, align 1, !tbaa !45
  store i8 %326, ptr %322, align 1, !tbaa !45
  %329 = getelementptr inbounds i8, ptr %322, i64 3
  store i8 -1, ptr %329, align 1, !tbaa !45
  %330 = add nuw nsw i32 %274, 1
  %331 = load i32, ptr %30, align 8, !tbaa !43
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %272, label %333, !llvm.loop !91

333:                                              ; preds = %301, %268
  %334 = add nuw nsw i32 %269, 1
  %335 = load i32, ptr %26, align 4, !tbaa !49
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %268, label %337, !llvm.loop !92

337:                                              ; preds = %333, %25
  %338 = getelementptr inbounds i8, ptr %11, i64 530448
  br label %339

339:                                              ; preds = %337, %352
  %340 = phi i64 [ -3, %337 ], [ %353, %352 ]
  %341 = mul nsw i64 %340, 515
  br label %342

342:                                              ; preds = %339, %342
  %343 = phi i64 [ -3, %339 ], [ %350, %342 ]
  %344 = add nsw i64 %343, %341
  %345 = shl nsw i64 %344, 2
  %346 = getelementptr inbounds i8, ptr %338, i64 %345
  store i8 -1, ptr %346, align 1, !tbaa !45
  %347 = getelementptr inbounds i8, ptr %346, i64 1
  store i8 0, ptr %347, align 1, !tbaa !45
  %348 = getelementptr inbounds i8, ptr %346, i64 2
  store i8 0, ptr %348, align 1, !tbaa !45
  %349 = getelementptr inbounds i8, ptr %346, i64 3
  store i8 -1, ptr %349, align 1, !tbaa !45
  %350 = add nsw i64 %343, 1
  %351 = icmp eq i64 %350, 4
  br i1 %351, label %352, label %342, !llvm.loop !88

352:                                              ; preds = %342
  %353 = add nsw i64 %340, 1
  %354 = icmp eq i64 %353, 4
  br i1 %354, label %355, label %339, !llvm.loop !89

355:                                              ; preds = %352
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #7
  br label %693

356:                                              ; preds = %1
  %357 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %358 = load ptr, ptr %357, align 8, !tbaa !44
  %359 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %360 = load ptr, ptr %359, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #7
  br label %361

361:                                              ; preds = %356, %361
  %362 = phi i64 [ 0, %356 ], [ %372, %361 ]
  %363 = trunc i64 %362 to i32
  %364 = sitofp i32 %363 to float
  %365 = fadd float %364, 1.000000e+00
  %366 = fmul float %365, 3.906250e-03
  %367 = fpext float %366 to double
  %368 = tail call double @pow(double noundef %367, double noundef 0x3FC99999A0000000) #7
  %369 = fmul double %368, 2.550000e+02
  %370 = fptoui double %369 to i8
  %371 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %362
  store i8 %370, ptr %371, align 1, !tbaa !45
  %372 = add nuw nsw i64 %362, 1
  %373 = icmp eq i64 %372, 256
  br i1 %373, label %380, label %361, !llvm.loop !93

374:                                              ; preds = %614
  %375 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %376 = load i32, ptr %375, align 4, !tbaa !49
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %674

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  br label %617

380:                                              ; preds = %361, %614
  %381 = phi i32 [ %615, %614 ], [ 0, %361 ]
  %382 = trunc i32 %381 to i8
  %383 = xor i8 %382, -1
  %384 = uitofp i8 %383 to float
  %385 = fdiv float %384, 2.550000e+02
  %386 = tail call float @llvm.fmuladd.f32(float %385, float 0x3FBD2F1AA0000000, float 0x3FD322D0E0000000)
  %387 = fsub float %385, %386
  %388 = fmul float %387, 0x3FDF7CEDA0000000
  %389 = fsub float 1.000000e+00, %386
  %390 = fmul float %389, 0x3FEC106240000000
  %391 = fmul float %388, 0x3FF0B8A7E0000000
  %392 = fadd float %391, 5.000000e-01
  %393 = fmul float %390, 0x3FE9FCBD20000000
  %394 = fadd float %393, 5.000000e-01
  %395 = tail call float @llvm.fmuladd.f32(float %394, float 5.120000e+02, float 1.000000e+00)
  %396 = fptosi float %395 to i32
  %397 = mul nsw i32 %396, 515
  %398 = tail call float @llvm.fmuladd.f32(float %392, float 5.120000e+02, float 1.000000e+00)
  %399 = fptosi float %398 to i32
  %400 = add nsw i32 %397, %399
  %401 = shl nsw i32 %400, 2
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, ptr %360, i64 %402
  br label %404

404:                                              ; preds = %419, %380
  %405 = phi i64 [ 4294967295, %380 ], [ %420, %419 ]
  %406 = mul nuw nsw i64 %405, 515
  br label %407

407:                                              ; preds = %407, %404
  %408 = phi i64 [ 4294967295, %404 ], [ %417, %407 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i32
  %411 = shl nsw i32 %410, 2
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %403, i64 %412
  store i8 -1, ptr %413, align 1, !tbaa !45
  %414 = getelementptr inbounds i8, ptr %413, i64 1
  store i8 0, ptr %414, align 1, !tbaa !45
  %415 = getelementptr inbounds i8, ptr %413, i64 2
  store i8 %383, ptr %415, align 1, !tbaa !45
  %416 = getelementptr inbounds i8, ptr %413, i64 3
  store i8 -1, ptr %416, align 1, !tbaa !45
  %417 = add nuw nsw i64 %408, 1
  %418 = icmp eq i64 %417, 4294967298
  br i1 %418, label %419, label %407, !llvm.loop !88

419:                                              ; preds = %407
  %420 = add nuw nsw i64 %405, 1
  %421 = icmp eq i64 %420, 4294967298
  br i1 %421, label %422, label %404, !llvm.loop !89

422:                                              ; preds = %419
  %423 = uitofp i8 %382 to float
  %424 = fdiv float %423, 2.550000e+02
  %425 = fmul float %424, 0x3FE2C8B440000000
  %426 = fadd float %425, 0x3FD322D0E0000000
  %427 = fsub float 0.000000e+00, %426
  %428 = fmul float %427, 0x3FDF7CEDA0000000
  %429 = fsub float 1.000000e+00, %426
  %430 = fmul float %429, 0x3FEC106240000000
  %431 = fmul float %428, 0x3FF0B8A7E0000000
  %432 = fadd float %431, 5.000000e-01
  %433 = fmul float %430, 0x3FE9FCBD20000000
  %434 = fadd float %433, 5.000000e-01
  %435 = tail call float @llvm.fmuladd.f32(float %434, float 5.120000e+02, float 1.000000e+00)
  %436 = fptosi float %435 to i32
  %437 = mul nsw i32 %436, 515
  %438 = tail call float @llvm.fmuladd.f32(float %432, float 5.120000e+02, float 1.000000e+00)
  %439 = fptosi float %438 to i32
  %440 = add nsw i32 %437, %439
  %441 = shl nsw i32 %440, 2
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8, ptr %360, i64 %442
  br label %444

444:                                              ; preds = %459, %422
  %445 = phi i64 [ 4294967295, %422 ], [ %460, %459 ]
  %446 = mul nuw nsw i64 %445, 515
  br label %447

447:                                              ; preds = %447, %444
  %448 = phi i64 [ 4294967295, %444 ], [ %457, %447 ]
  %449 = add nuw nsw i64 %448, %446
  %450 = trunc i64 %449 to i32
  %451 = shl nsw i32 %450, 2
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, ptr %443, i64 %452
  store i8 -1, ptr %453, align 1, !tbaa !45
  %454 = getelementptr inbounds i8, ptr %453, i64 1
  store i8 %382, ptr %454, align 1, !tbaa !45
  %455 = getelementptr inbounds i8, ptr %453, i64 2
  store i8 0, ptr %455, align 1, !tbaa !45
  %456 = getelementptr inbounds i8, ptr %453, i64 3
  store i8 -1, ptr %456, align 1, !tbaa !45
  %457 = add nuw nsw i64 %448, 1
  %458 = icmp eq i64 %457, 4294967298
  br i1 %458, label %459, label %447, !llvm.loop !88

459:                                              ; preds = %447
  %460 = add nuw nsw i64 %445, 1
  %461 = icmp eq i64 %460, 4294967298
  br i1 %461, label %462, label %444, !llvm.loop !89

462:                                              ; preds = %459
  %463 = tail call float @llvm.fmuladd.f32(float %385, float 0x3FD322D0E0000000, float 0x3FE2C8B440000000)
  %464 = fadd float %463, 0.000000e+00
  %465 = fsub float 0.000000e+00, %464
  %466 = fmul float %465, 0x3FDF7CEDA0000000
  %467 = fsub float %385, %464
  %468 = fmul float %467, 0x3FEC106240000000
  %469 = fmul float %466, 0x3FF0B8A7E0000000
  %470 = fadd float %469, 5.000000e-01
  %471 = fmul float %468, 0x3FE9FCBD20000000
  %472 = fadd float %471, 5.000000e-01
  %473 = tail call float @llvm.fmuladd.f32(float %472, float 5.120000e+02, float 1.000000e+00)
  %474 = fptosi float %473 to i32
  %475 = mul nsw i32 %474, 515
  %476 = tail call float @llvm.fmuladd.f32(float %470, float 5.120000e+02, float 1.000000e+00)
  %477 = fptosi float %476 to i32
  %478 = add nsw i32 %475, %477
  %479 = shl nsw i32 %478, 2
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8, ptr %360, i64 %480
  br label %482

482:                                              ; preds = %497, %462
  %483 = phi i64 [ 4294967295, %462 ], [ %498, %497 ]
  %484 = mul nuw nsw i64 %483, 515
  br label %485

485:                                              ; preds = %485, %482
  %486 = phi i64 [ 4294967295, %482 ], [ %495, %485 ]
  %487 = add nuw nsw i64 %486, %484
  %488 = trunc i64 %487 to i32
  %489 = shl nsw i32 %488, 2
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, ptr %481, i64 %490
  store i8 %383, ptr %491, align 1, !tbaa !45
  %492 = getelementptr inbounds i8, ptr %491, i64 1
  store i8 -1, ptr %492, align 1, !tbaa !45
  %493 = getelementptr inbounds i8, ptr %491, i64 2
  store i8 0, ptr %493, align 1, !tbaa !45
  %494 = getelementptr inbounds i8, ptr %491, i64 3
  store i8 -1, ptr %494, align 1, !tbaa !45
  %495 = add nuw nsw i64 %486, 1
  %496 = icmp eq i64 %495, 4294967298
  br i1 %496, label %497, label %485, !llvm.loop !88

497:                                              ; preds = %485
  %498 = add nuw nsw i64 %483, 1
  %499 = icmp eq i64 %498, 4294967298
  br i1 %499, label %500, label %482, !llvm.loop !89

500:                                              ; preds = %497
  %501 = tail call float @llvm.fmuladd.f32(float %424, float 0x3FBD2F1AA0000000, float 0x3FE2C8B440000000)
  %502 = fsub float %424, %501
  %503 = fmul float %502, 0x3FDF7CEDA0000000
  %504 = fsub float 0.000000e+00, %501
  %505 = fmul float %504, 0x3FEC106240000000
  %506 = fmul float %503, 0x3FF0B8A7E0000000
  %507 = fadd float %506, 5.000000e-01
  %508 = fmul float %505, 0x3FE9FCBD20000000
  %509 = fadd float %508, 5.000000e-01
  %510 = tail call float @llvm.fmuladd.f32(float %509, float 5.120000e+02, float 1.000000e+00)
  %511 = fptosi float %510 to i32
  %512 = mul nsw i32 %511, 515
  %513 = tail call float @llvm.fmuladd.f32(float %507, float 5.120000e+02, float 1.000000e+00)
  %514 = fptosi float %513 to i32
  %515 = add nsw i32 %512, %514
  %516 = shl nsw i32 %515, 2
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i8, ptr %360, i64 %517
  br label %519

519:                                              ; preds = %534, %500
  %520 = phi i64 [ 4294967295, %500 ], [ %535, %534 ]
  %521 = mul nuw nsw i64 %520, 515
  br label %522

522:                                              ; preds = %522, %519
  %523 = phi i64 [ 4294967295, %519 ], [ %532, %522 ]
  %524 = add nuw nsw i64 %523, %521
  %525 = trunc i64 %524 to i32
  %526 = shl nsw i32 %525, 2
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8, ptr %518, i64 %527
  store i8 0, ptr %528, align 1, !tbaa !45
  %529 = getelementptr inbounds i8, ptr %528, i64 1
  store i8 -1, ptr %529, align 1, !tbaa !45
  %530 = getelementptr inbounds i8, ptr %528, i64 2
  store i8 %382, ptr %530, align 1, !tbaa !45
  %531 = getelementptr inbounds i8, ptr %528, i64 3
  store i8 -1, ptr %531, align 1, !tbaa !45
  %532 = add nuw nsw i64 %523, 1
  %533 = icmp eq i64 %532, 4294967298
  br i1 %533, label %534, label %522, !llvm.loop !88

534:                                              ; preds = %522
  %535 = add nuw nsw i64 %520, 1
  %536 = icmp eq i64 %535, 4294967298
  br i1 %536, label %537, label %519, !llvm.loop !89

537:                                              ; preds = %534
  %538 = fmul float %385, 0x3FE2C8B440000000
  %539 = fadd float %538, 0.000000e+00
  %540 = fadd float %539, 0x3FBD2F1AA0000000
  %541 = fsub float 1.000000e+00, %540
  %542 = fmul float %541, 0x3FDF7CEDA0000000
  %543 = fsub float 0.000000e+00, %540
  %544 = fmul float %543, 0x3FEC106240000000
  %545 = fmul float %542, 0x3FF0B8A7E0000000
  %546 = fadd float %545, 5.000000e-01
  %547 = fmul float %544, 0x3FE9FCBD20000000
  %548 = fadd float %547, 5.000000e-01
  %549 = tail call float @llvm.fmuladd.f32(float %548, float 5.120000e+02, float 1.000000e+00)
  %550 = fptosi float %549 to i32
  %551 = mul nsw i32 %550, 515
  %552 = tail call float @llvm.fmuladd.f32(float %546, float 5.120000e+02, float 1.000000e+00)
  %553 = fptosi float %552 to i32
  %554 = add nsw i32 %551, %553
  %555 = shl nsw i32 %554, 2
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8, ptr %360, i64 %556
  br label %558

558:                                              ; preds = %573, %537
  %559 = phi i64 [ 4294967295, %537 ], [ %574, %573 ]
  %560 = mul nuw nsw i64 %559, 515
  br label %561

561:                                              ; preds = %561, %558
  %562 = phi i64 [ 4294967295, %558 ], [ %571, %561 ]
  %563 = add nuw nsw i64 %562, %560
  %564 = trunc i64 %563 to i32
  %565 = shl nsw i32 %564, 2
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8, ptr %557, i64 %566
  store i8 0, ptr %567, align 1, !tbaa !45
  %568 = getelementptr inbounds i8, ptr %567, i64 1
  store i8 %383, ptr %568, align 1, !tbaa !45
  %569 = getelementptr inbounds i8, ptr %567, i64 2
  store i8 -1, ptr %569, align 1, !tbaa !45
  %570 = getelementptr inbounds i8, ptr %567, i64 3
  store i8 -1, ptr %570, align 1, !tbaa !45
  %571 = add nuw nsw i64 %562, 1
  %572 = icmp eq i64 %571, 4294967298
  br i1 %572, label %573, label %561, !llvm.loop !88

573:                                              ; preds = %561
  %574 = add nuw nsw i64 %559, 1
  %575 = icmp eq i64 %574, 4294967298
  br i1 %575, label %576, label %558, !llvm.loop !89

576:                                              ; preds = %573
  %577 = tail call float @llvm.fmuladd.f32(float %424, float 0x3FD322D0E0000000, float 0.000000e+00)
  %578 = fadd float %577, 0x3FBD2F1AA0000000
  %579 = fsub float 1.000000e+00, %578
  %580 = fmul float %579, 0x3FDF7CEDA0000000
  %581 = fsub float %424, %578
  %582 = fmul float %581, 0x3FEC106240000000
  %583 = fmul float %580, 0x3FF0B8A7E0000000
  %584 = fadd float %583, 5.000000e-01
  %585 = fmul float %582, 0x3FE9FCBD20000000
  %586 = fadd float %585, 5.000000e-01
  %587 = tail call float @llvm.fmuladd.f32(float %586, float 5.120000e+02, float 1.000000e+00)
  %588 = fptosi float %587 to i32
  %589 = mul nsw i32 %588, 515
  %590 = tail call float @llvm.fmuladd.f32(float %584, float 5.120000e+02, float 1.000000e+00)
  %591 = fptosi float %590 to i32
  %592 = add nsw i32 %589, %591
  %593 = shl nsw i32 %592, 2
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i8, ptr %360, i64 %594
  br label %596

596:                                              ; preds = %611, %576
  %597 = phi i64 [ 4294967295, %576 ], [ %612, %611 ]
  %598 = mul nuw nsw i64 %597, 515
  br label %599

599:                                              ; preds = %599, %596
  %600 = phi i64 [ 4294967295, %596 ], [ %609, %599 ]
  %601 = add nuw nsw i64 %600, %598
  %602 = trunc i64 %601 to i32
  %603 = shl nsw i32 %602, 2
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i8, ptr %595, i64 %604
  store i8 %382, ptr %605, align 1, !tbaa !45
  %606 = getelementptr inbounds i8, ptr %605, i64 1
  store i8 0, ptr %606, align 1, !tbaa !45
  %607 = getelementptr inbounds i8, ptr %605, i64 2
  store i8 -1, ptr %607, align 1, !tbaa !45
  %608 = getelementptr inbounds i8, ptr %605, i64 3
  store i8 -1, ptr %608, align 1, !tbaa !45
  %609 = add nuw nsw i64 %600, 1
  %610 = icmp eq i64 %609, 4294967298
  br i1 %610, label %611, label %599, !llvm.loop !88

611:                                              ; preds = %599
  %612 = add nuw nsw i64 %597, 1
  %613 = icmp eq i64 %612, 4294967298
  br i1 %613, label %614, label %596, !llvm.loop !89

614:                                              ; preds = %611
  %615 = add nuw nsw i32 %381, 1
  %616 = icmp eq i32 %615, 256
  br i1 %616, label %374, label %380, !llvm.loop !94

617:                                              ; preds = %378, %670
  %618 = phi i32 [ 0, %378 ], [ %671, %670 ]
  %619 = load i32, ptr %379, align 8, !tbaa !43
  %620 = icmp sgt i32 %619, 0
  br i1 %620, label %621, label %670

621:                                              ; preds = %617, %621
  %622 = phi i32 [ %668, %621 ], [ %619, %617 ]
  %623 = phi i32 [ %667, %621 ], [ 0, %617 ]
  %624 = mul nsw i32 %622, %618
  %625 = add nsw i32 %624, %623
  %626 = shl nsw i32 %625, 2
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i8, ptr %358, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !45
  %630 = uitofp i8 %629 to float
  %631 = fdiv float %630, 2.550000e+02
  %632 = getelementptr inbounds i8, ptr %628, i64 1
  %633 = load i8, ptr %632, align 1, !tbaa !45
  %634 = uitofp i8 %633 to float
  %635 = fdiv float %634, 2.550000e+02
  %636 = getelementptr inbounds i8, ptr %628, i64 2
  %637 = load i8, ptr %636, align 1, !tbaa !45
  %638 = uitofp i8 %637 to float
  %639 = fdiv float %638, 2.550000e+02
  %640 = fmul float %635, 0x3FE2C8B440000000
  %641 = tail call float @llvm.fmuladd.f32(float %631, float 0x3FD322D0E0000000, float %640)
  %642 = tail call float @llvm.fmuladd.f32(float %639, float 0x3FBD2F1AA0000000, float %641)
  %643 = fsub float %639, %642
  %644 = fmul float %643, 0x3FDF7CEDA0000000
  %645 = fsub float %631, %642
  %646 = fmul float %645, 0x3FEC106240000000
  %647 = fmul float %644, 0x3FF0B8A7E0000000
  %648 = fadd float %647, 5.000000e-01
  %649 = fmul float %646, 0x3FE9FCBD20000000
  %650 = fadd float %649, 5.000000e-01
  %651 = tail call float @llvm.fmuladd.f32(float %650, float 5.120000e+02, float 1.000000e+00)
  %652 = fptosi float %651 to i32
  %653 = mul nsw i32 %652, 515
  %654 = tail call float @llvm.fmuladd.f32(float %648, float 5.120000e+02, float 1.000000e+00)
  %655 = fptosi float %654 to i32
  %656 = add nsw i32 %653, %655
  %657 = shl nsw i32 %656, 2
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8, ptr %360, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !45
  %661 = zext i8 %660 to i64
  %662 = getelementptr inbounds i8, ptr %2, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !45
  %664 = getelementptr inbounds i8, ptr %659, i64 2
  store i8 %663, ptr %664, align 1, !tbaa !45
  %665 = getelementptr inbounds i8, ptr %659, i64 1
  store i8 %663, ptr %665, align 1, !tbaa !45
  store i8 %663, ptr %659, align 1, !tbaa !45
  %666 = getelementptr inbounds i8, ptr %659, i64 3
  store i8 -1, ptr %666, align 1, !tbaa !45
  %667 = add nuw nsw i32 %623, 1
  %668 = load i32, ptr %379, align 8, !tbaa !43
  %669 = icmp slt i32 %667, %668
  br i1 %669, label %621, label %670, !llvm.loop !95

670:                                              ; preds = %621, %617
  %671 = add nuw nsw i32 %618, 1
  %672 = load i32, ptr %375, align 4, !tbaa !49
  %673 = icmp slt i32 %671, %672
  br i1 %673, label %617, label %674, !llvm.loop !96

674:                                              ; preds = %670, %374
  %675 = getelementptr inbounds i8, ptr %360, i64 530448
  br label %676

676:                                              ; preds = %674, %689
  %677 = phi i64 [ -3, %674 ], [ %690, %689 ]
  %678 = mul nsw i64 %677, 515
  br label %679

679:                                              ; preds = %676, %679
  %680 = phi i64 [ -3, %676 ], [ %687, %679 ]
  %681 = add nsw i64 %680, %678
  %682 = shl nsw i64 %681, 2
  %683 = getelementptr inbounds i8, ptr %675, i64 %682
  store i8 -1, ptr %683, align 1, !tbaa !45
  %684 = getelementptr inbounds i8, ptr %683, i64 1
  store i8 0, ptr %684, align 1, !tbaa !45
  %685 = getelementptr inbounds i8, ptr %683, i64 2
  store i8 0, ptr %685, align 1, !tbaa !45
  %686 = getelementptr inbounds i8, ptr %683, i64 3
  store i8 -1, ptr %686, align 1, !tbaa !45
  %687 = add nsw i64 %680, 1
  %688 = icmp eq i64 %687, 4
  br i1 %688, label %689, label %679, !llvm.loop !88

689:                                              ; preds = %679
  %690 = add nsw i64 %677, 1
  %691 = icmp eq i64 %690, 4
  br i1 %691, label %692, label %676, !llvm.loop !89

692:                                              ; preds = %689
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #7
  br label %693

693:                                              ; preds = %692, %355
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 48}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !39, i64 16}
!44 = !{!35, !36, i64 40}
!45 = !{!37, !37, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!35, !39, i64 20}
!50 = distinct !{!50, !47, !48}
!51 = !{!40, !40, i64 0}
!52 = distinct !{!52, !47, !48}
!53 = distinct !{!53, !47, !48}
!54 = distinct !{!54, !47, !48}
!55 = distinct !{!55, !47, !48}
!56 = distinct !{!56, !47, !48}
!57 = distinct !{!57, !47, !48}
!58 = distinct !{!58, !47, !48}
!59 = distinct !{!59, !47, !48}
!60 = distinct !{!60, !47, !48}
!61 = !{!36, !36, i64 0}
!62 = distinct !{!62, !47, !48}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = distinct !{!65, !47, !48}
!66 = distinct !{!66, !47, !48}
!67 = distinct !{!67, !47, !48}
!68 = distinct !{!68, !47, !48}
!69 = distinct !{!69, !47, !48}
!70 = distinct !{!70, !47, !48}
!71 = distinct !{!71, !47, !48}
!72 = distinct !{!72, !47, !48}
!73 = distinct !{!73, !47, !48}
!74 = !{!39, !39, i64 0}
!75 = distinct !{!75, !47, !48}
!76 = distinct !{!76, !47, !48}
!77 = distinct !{!77, !47, !48}
!78 = distinct !{!78, !47, !48}
!79 = distinct !{!79, !47, !48}
!80 = distinct !{!80, !47, !48}
!81 = distinct !{!81, !47, !48}
!82 = distinct !{!82, !47, !48}
!83 = distinct !{!83, !47, !48}
!84 = distinct !{!84, !47, !48}
!85 = distinct !{!85, !47, !48}
!86 = distinct !{!86, !47, !48}
!87 = distinct !{!87, !47, !48}
!88 = distinct !{!88, !47, !48}
!89 = distinct !{!89, !47, !48}
!90 = distinct !{!90, !47, !48}
!91 = distinct !{!91, !47, !48}
!92 = distinct !{!92, !47, !48}
!93 = distinct !{!93, !47, !48}
!94 = distinct !{!94, !47, !48}
!95 = distinct !{!95, !47, !48}
!96 = distinct !{!96, !47, !48}
