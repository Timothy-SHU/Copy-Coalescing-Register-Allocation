; ModuleID = 'gdevddrw.c'
source_filename = "gdevddrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_fill_trapezoid(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = add nsw i64 %3, 2047
  %10 = and i64 %9, -4096
  %11 = or disjoint i64 %10, 2048
  %12 = add nsw i64 %4, 2047
  %13 = and i64 %12, -4096
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %15, label %449

15:                                               ; preds = %8
  %16 = lshr i64 %9, 12
  %17 = trunc i64 %16 to i32
  %18 = lshr i64 %12, 12
  %19 = trunc i64 %18 to i32
  %20 = load i64, ptr %1, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !11
  %23 = load i64, ptr %2, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !11
  %26 = sub nsw i64 %22, %20
  %27 = sub nsw i64 %25, %23
  %28 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !12
  %30 = sub nsw i64 %11, %29
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !12
  %33 = sub nsw i64 %11, %32
  %34 = load ptr, ptr %6, align 8, !tbaa !13
  %35 = icmp eq ptr %34, @gx_dc_procs_pure
  %36 = and i32 %7, 563
  %37 = icmp eq i32 %36, 48
  %38 = and i1 %37, %35
  br i1 %38, label %39, label %44

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  br label %44

44:                                               ; preds = %39, %15
  %45 = phi i64 [ %41, %39 ], [ undef, %15 ]
  %46 = phi ptr [ %43, %39 ], [ undef, %15 ]
  %47 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !28
  %49 = sub nsw i64 %48, %29
  %50 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !28
  %52 = sub nsw i64 %51, %32
  %53 = add nsw i64 %20, 2047
  %54 = add nsw i64 %23, 2047
  %55 = add nsw i64 %22, 2047
  %56 = xor i64 %55, %53
  %57 = icmp ult i64 %56, 4096
  br i1 %57, label %108, label %58

58:                                               ; preds = %44
  %59 = icmp sgt i64 %26, -1
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = icmp slt i64 %26, %49
  br i1 %61, label %87, label %62

62:                                               ; preds = %60
  %63 = sdiv i64 %26, %49
  %64 = trunc i64 %63 to i32
  %65 = shl i64 %63, 32
  %66 = ashr exact i64 %65, 32
  %67 = mul nsw i64 %66, %49
  %68 = sub nsw i64 %26, %67
  %69 = mul nsw i64 %66, %30
  %70 = add nsw i64 %69, %53
  br label %87

71:                                               ; preds = %58
  %72 = add nsw i64 %49, %26
  %73 = icmp sgt i64 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = sub nsw i64 %53, %30
  br label %87

76:                                               ; preds = %71
  %77 = xor i64 %26, -1
  %78 = add i64 %49, %77
  %79 = sdiv i64 %78, %49
  %80 = trunc i64 %79 to i32
  %81 = sub i32 0, %80
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %49, %82
  %84 = sub nsw i64 %26, %83
  %85 = mul nsw i64 %30, %82
  %86 = add nsw i64 %85, %53
  br label %87

87:                                               ; preds = %60, %74, %76, %62
  %88 = phi i32 [ %64, %62 ], [ -1, %74 ], [ %81, %76 ], [ 0, %60 ]
  %89 = phi i64 [ %68, %62 ], [ %72, %74 ], [ %84, %76 ], [ %26, %60 ]
  %90 = phi i64 [ %70, %62 ], [ %75, %74 ], [ %86, %76 ], [ %53, %60 ]
  %91 = icmp slt i64 %30, 4096
  %92 = icmp slt i64 %89, 2251799813685247
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = mul nsw i64 %89, %30
  %96 = sdiv i64 %95, %49
  br label %105

97:                                               ; preds = %87
  %98 = sitofp i64 %30 to double
  %99 = sitofp i64 %89 to double
  %100 = fmul double %98, %99
  %101 = sitofp i64 %49 to double
  %102 = fdiv double %100, %101
  %103 = tail call double @llvm.floor.f64(double %102)
  %104 = fptosi double %103 to i64
  br label %105

105:                                              ; preds = %97, %94
  %106 = phi i64 [ %96, %94 ], [ %104, %97 ]
  %107 = add nsw i64 %106, %90
  br label %108

108:                                              ; preds = %44, %105
  %109 = phi i32 [ %88, %105 ], [ 0, %44 ]
  %110 = phi i64 [ %89, %105 ], [ 0, %44 ]
  %111 = phi i64 [ %107, %105 ], [ %53, %44 ]
  %112 = phi i64 [ %106, %105 ], [ 0, %44 ]
  %113 = add nsw i64 %25, 2047
  %114 = xor i64 %113, %54
  %115 = icmp ult i64 %114, 4096
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = icmp eq i32 %109, 0
  %118 = icmp eq i64 %110, 0
  %119 = select i1 %117, i1 %118, i1 false
  %120 = select i1 %119, i32 2147483647, i32 1
  br label %233

121:                                              ; preds = %108
  %122 = icmp eq i64 %27, %26
  %123 = icmp ne i64 %112, 0
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %183

125:                                              ; preds = %121
  %126 = icmp eq i32 %109, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %125
  %128 = icmp sgt i64 %27, -1
  br i1 %128, label %129, label %140

129:                                              ; preds = %127
  %130 = icmp slt i64 %27, %52
  br i1 %130, label %156, label %131

131:                                              ; preds = %129
  %132 = sdiv i64 %27, %52
  %133 = trunc i64 %132 to i32
  %134 = shl i64 %132, 32
  %135 = ashr exact i64 %134, 32
  %136 = mul nsw i64 %135, %52
  %137 = sub nsw i64 %27, %136
  %138 = mul nsw i64 %135, %33
  %139 = add nsw i64 %138, %54
  br label %156

140:                                              ; preds = %127
  %141 = add nsw i64 %52, %27
  %142 = icmp sgt i64 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = sub nsw i64 %54, %33
  br label %156

145:                                              ; preds = %140
  %146 = xor i64 %27, -1
  %147 = add i64 %52, %146
  %148 = sdiv i64 %147, %52
  %149 = trunc i64 %148 to i32
  %150 = sub i32 0, %149
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %52, %151
  %153 = sub nsw i64 %27, %152
  %154 = mul nsw i64 %33, %151
  %155 = add nsw i64 %154, %54
  br label %156

156:                                              ; preds = %129, %125, %131, %145, %143
  %157 = phi i64 [ %137, %131 ], [ %141, %143 ], [ %153, %145 ], [ %110, %125 ], [ %27, %129 ]
  %158 = phi i32 [ %133, %131 ], [ -1, %143 ], [ %150, %145 ], [ 0, %125 ], [ 0, %129 ]
  %159 = phi i64 [ %139, %131 ], [ %144, %143 ], [ %155, %145 ], [ %54, %125 ], [ %54, %129 ]
  %160 = icmp eq i64 %29, %32
  %161 = icmp eq i64 %52, %49
  %162 = select i1 %160, i1 %161, i1 false
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = add nsw i64 %159, %112
  br label %233

165:                                              ; preds = %156
  %166 = icmp slt i64 %33, 4096
  %167 = icmp slt i64 %157, 2251799813685247
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = mul nsw i64 %157, %33
  %171 = sdiv i64 %170, %52
  br label %180

172:                                              ; preds = %165
  %173 = sitofp i64 %33 to double
  %174 = sitofp i64 %157 to double
  %175 = fmul double %173, %174
  %176 = sitofp i64 %52 to double
  %177 = fdiv double %175, %176
  %178 = tail call double @llvm.floor.f64(double %177)
  %179 = fptosi double %178 to i64
  br label %180

180:                                              ; preds = %172, %169
  %181 = phi i64 [ %171, %169 ], [ %179, %172 ]
  %182 = add nsw i64 %181, %159
  br label %233

183:                                              ; preds = %121
  %184 = icmp sgt i64 %27, -1
  br i1 %184, label %185, label %196

185:                                              ; preds = %183
  %186 = icmp slt i64 %27, %52
  br i1 %186, label %212, label %187

187:                                              ; preds = %185
  %188 = sdiv i64 %27, %52
  %189 = trunc i64 %188 to i32
  %190 = shl i64 %188, 32
  %191 = ashr exact i64 %190, 32
  %192 = mul nsw i64 %191, %52
  %193 = sub nsw i64 %27, %192
  %194 = mul nsw i64 %191, %33
  %195 = add nsw i64 %194, %54
  br label %212

196:                                              ; preds = %183
  %197 = add nsw i64 %52, %27
  %198 = icmp sgt i64 %197, -1
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = sub nsw i64 %54, %33
  br label %212

201:                                              ; preds = %196
  %202 = xor i64 %27, -1
  %203 = add i64 %52, %202
  %204 = sdiv i64 %203, %52
  %205 = trunc i64 %204 to i32
  %206 = sub i32 0, %205
  %207 = sext i32 %206 to i64
  %208 = mul nsw i64 %52, %207
  %209 = sub nsw i64 %27, %208
  %210 = mul nsw i64 %33, %207
  %211 = add nsw i64 %210, %54
  br label %212

212:                                              ; preds = %185, %199, %201, %187
  %213 = phi i64 [ %193, %187 ], [ %197, %199 ], [ %209, %201 ], [ %27, %185 ]
  %214 = phi i32 [ %189, %187 ], [ -1, %199 ], [ %206, %201 ], [ 0, %185 ]
  %215 = phi i64 [ %195, %187 ], [ %200, %199 ], [ %211, %201 ], [ %54, %185 ]
  %216 = icmp slt i64 %33, 4096
  %217 = icmp slt i64 %213, 2251799813685247
  %218 = select i1 %216, i1 %217, i1 false
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = mul nsw i64 %213, %33
  %221 = sdiv i64 %220, %52
  br label %230

222:                                              ; preds = %212
  %223 = sitofp i64 %33 to double
  %224 = sitofp i64 %213 to double
  %225 = fmul double %223, %224
  %226 = sitofp i64 %52 to double
  %227 = fdiv double %225, %226
  %228 = tail call double @llvm.floor.f64(double %227)
  %229 = fptosi double %228 to i64
  br label %230

230:                                              ; preds = %222, %219
  %231 = phi i64 [ %221, %219 ], [ %229, %222 ]
  %232 = add nsw i64 %231, %215
  br label %233

233:                                              ; preds = %116, %230, %180, %163
  %234 = phi i64 [ %157, %163 ], [ %157, %180 ], [ %213, %230 ], [ 0, %116 ]
  %235 = phi i32 [ %158, %163 ], [ %158, %180 ], [ %214, %230 ], [ 0, %116 ]
  %236 = phi i64 [ %164, %163 ], [ %182, %180 ], [ %232, %230 ], [ %54, %116 ]
  %237 = phi i32 [ 1, %163 ], [ 1, %180 ], [ 1, %230 ], [ %120, %116 ]
  %238 = lshr i64 %111, 12
  %239 = trunc i64 %238 to i32
  %240 = lshr i64 %236, 12
  %241 = trunc i64 %240 to i32
  %242 = sub nsw i32 %19, %17
  %243 = icmp sgt i32 %242, %237
  br i1 %243, label %244, label %422

244:                                              ; preds = %233
  %245 = icmp slt i64 %110, 2251799813685247
  br i1 %245, label %246, label %269

246:                                              ; preds = %244
  %247 = icmp eq i64 %110, 0
  %248 = sext i32 %109 to i64
  %249 = shl nsw i64 %248, 12
  br i1 %247, label %289, label %250

250:                                              ; preds = %246
  %251 = shl i64 %110, 12
  %252 = sdiv i64 %251, %49
  %253 = add nsw i64 %252, %249
  %254 = srem i64 %251, %49
  %255 = icmp slt i64 %30, 4096
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = mul nsw i64 %110, %30
  %258 = srem i64 %257, %49
  br label %289

259:                                              ; preds = %250
  %260 = sitofp i64 %30 to double
  %261 = sitofp i64 %110 to double
  %262 = fmul double %260, %261
  %263 = sitofp i64 %49 to double
  %264 = fdiv double %262, %263
  %265 = tail call double @llvm.floor.f64(double %264)
  %266 = fneg double %265
  %267 = tail call double @llvm.fmuladd.f64(double %266, double %263, double %262)
  %268 = fptosi double %267 to i64
  br label %289

269:                                              ; preds = %244
  %270 = sext i32 %109 to i64
  %271 = shl nsw i64 %270, 12
  %272 = sitofp i64 %110 to double
  %273 = fmul double %272, 4.096000e+03
  %274 = sitofp i64 %49 to double
  %275 = fdiv double %273, %274
  %276 = tail call double @llvm.floor.f64(double %275)
  %277 = fptosi double %276 to i64
  %278 = add nsw i64 %271, %277
  %279 = fneg double %276
  %280 = tail call double @llvm.fmuladd.f64(double %279, double %274, double %273)
  %281 = fptosi double %280 to i64
  %282 = sitofp i64 %30 to double
  %283 = fmul double %282, %272
  %284 = fdiv double %283, %274
  %285 = tail call double @llvm.floor.f64(double %284)
  %286 = fneg double %285
  %287 = tail call double @llvm.fmuladd.f64(double %286, double %274, double %283)
  %288 = fptosi double %287 to i64
  br label %289

289:                                              ; preds = %246, %256, %259, %269
  %290 = phi i64 [ %278, %269 ], [ %253, %259 ], [ %253, %256 ], [ %249, %246 ]
  %291 = phi i64 [ %281, %269 ], [ %254, %259 ], [ %254, %256 ], [ 0, %246 ]
  %292 = phi i64 [ %288, %269 ], [ %268, %259 ], [ %258, %256 ], [ 0, %246 ]
  %293 = sub nsw i64 %292, %49
  %294 = icmp eq i64 %27, %26
  %295 = icmp eq i64 %29, %32
  %296 = select i1 %294, i1 %295, i1 false
  %297 = icmp eq i64 %52, %49
  %298 = select i1 %296, i1 %297, i1 false
  br i1 %298, label %350, label %299

299:                                              ; preds = %289
  %300 = icmp slt i64 %234, 2251799813685247
  br i1 %300, label %301, label %329

301:                                              ; preds = %299
  %302 = icmp eq i64 %234, 0
  %303 = sext i32 %235 to i64
  %304 = shl nsw i64 %303, 12
  br i1 %302, label %305, label %307

305:                                              ; preds = %301
  %306 = sub nsw i64 0, %52
  br label %350

307:                                              ; preds = %301
  %308 = shl i64 %234, 12
  %309 = sdiv i64 %308, %52
  %310 = add nsw i64 %309, %304
  %311 = srem i64 %308, %52
  %312 = icmp slt i64 %33, 4096
  br i1 %312, label %313, label %316

313:                                              ; preds = %307
  %314 = mul nsw i64 %234, %33
  %315 = srem i64 %314, %52
  br label %326

316:                                              ; preds = %307
  %317 = sitofp i64 %33 to double
  %318 = sitofp i64 %234 to double
  %319 = fmul double %317, %318
  %320 = sitofp i64 %52 to double
  %321 = fdiv double %319, %320
  %322 = tail call double @llvm.floor.f64(double %321)
  %323 = fneg double %322
  %324 = tail call double @llvm.fmuladd.f64(double %323, double %320, double %319)
  %325 = fptosi double %324 to i64
  br label %326

326:                                              ; preds = %316, %313
  %327 = phi i64 [ %315, %313 ], [ %325, %316 ]
  %328 = sub nsw i64 %327, %52
  br label %350

329:                                              ; preds = %299
  %330 = sext i32 %235 to i64
  %331 = shl nsw i64 %330, 12
  %332 = sitofp i64 %234 to double
  %333 = fmul double %332, 4.096000e+03
  %334 = sitofp i64 %52 to double
  %335 = fdiv double %333, %334
  %336 = tail call double @llvm.floor.f64(double %335)
  %337 = fptosi double %336 to i64
  %338 = add nsw i64 %331, %337
  %339 = fneg double %336
  %340 = tail call double @llvm.fmuladd.f64(double %339, double %334, double %333)
  %341 = fptosi double %340 to i64
  %342 = sitofp i64 %33 to double
  %343 = fmul double %342, %332
  %344 = fdiv double %343, %334
  %345 = tail call double @llvm.floor.f64(double %344)
  %346 = fneg double %345
  %347 = tail call double @llvm.fmuladd.f64(double %346, double %334, double %343)
  %348 = fptosi double %347 to i64
  %349 = sub nsw i64 %348, %52
  br label %350

350:                                              ; preds = %289, %329, %326, %305
  %351 = phi i64 [ %304, %305 ], [ %310, %326 ], [ %338, %329 ], [ %290, %289 ]
  %352 = phi i64 [ 0, %305 ], [ %311, %326 ], [ %341, %329 ], [ %291, %289 ]
  %353 = phi i64 [ %306, %305 ], [ %328, %326 ], [ %349, %329 ], [ %293, %289 ]
  %354 = icmp eq i32 %5, 0
  %355 = icmp eq i32 %5, 0
  br label %356

356:                                              ; preds = %416, %350
  %357 = phi i32 [ %239, %350 ], [ %417, %416 ]
  %358 = phi i32 [ %241, %350 ], [ %418, %416 ]
  %359 = phi i32 [ %17, %350 ], [ %419, %416 ]
  %360 = phi i64 [ %236, %350 ], [ %380, %416 ]
  %361 = phi i64 [ %353, %350 ], [ %382, %416 ]
  %362 = phi i64 [ %111, %350 ], [ %373, %416 ]
  %363 = phi i64 [ %293, %350 ], [ %375, %416 ]
  %364 = phi i32 [ %17, %350 ], [ %366, %416 ]
  %365 = phi i32 [ undef, %350 ], [ %420, %416 ]
  %366 = add nsw i32 %364, 1
  %367 = icmp eq i32 %366, %19
  br i1 %367, label %422, label %368

368:                                              ; preds = %356
  %369 = add nsw i64 %362, %290
  %370 = add nsw i64 %363, %291
  %371 = icmp sgt i64 %370, -1
  %372 = zext i1 %371 to i64
  %373 = add nsw i64 %369, %372
  %374 = select i1 %371, i64 %49, i64 0
  %375 = sub nsw i64 %370, %374
  %376 = add nsw i64 %360, %351
  %377 = add nsw i64 %361, %352
  %378 = icmp sgt i64 %377, -1
  %379 = zext i1 %378 to i64
  %380 = add nsw i64 %376, %379
  %381 = select i1 %378, i64 %52, i64 0
  %382 = sub nsw i64 %377, %381
  %383 = lshr i64 %373, 12
  %384 = trunc i64 %383 to i32
  %385 = lshr i64 %380, 12
  %386 = trunc i64 %385 to i32
  %387 = icmp eq i32 %357, %384
  %388 = icmp eq i32 %358, %386
  %389 = select i1 %387, i1 %388, i1 false
  br i1 %389, label %416, label %390

390:                                              ; preds = %368
  br i1 %38, label %391, label %400

391:                                              ; preds = %390
  br i1 %355, label %396, label %392

392:                                              ; preds = %391
  %393 = sub nsw i32 %366, %359
  %394 = sub nsw i32 %358, %357
  %395 = tail call i32 %46(ptr noundef %0, i32 noundef %359, i32 noundef %357, i32 noundef %393, i32 noundef %394, i64 noundef %45) #6
  br label %412

396:                                              ; preds = %391
  %397 = sub nsw i32 %358, %357
  %398 = sub nsw i32 %366, %359
  %399 = tail call i32 %46(ptr noundef %0, i32 noundef %357, i32 noundef %359, i32 noundef %397, i32 noundef %398, i64 noundef %45) #6
  br label %412

400:                                              ; preds = %390
  %401 = load ptr, ptr %6, align 8, !tbaa !13
  %402 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %401, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !29
  br i1 %354, label %408, label %404

404:                                              ; preds = %400
  %405 = sub nsw i32 %366, %359
  %406 = sub nsw i32 %358, %357
  %407 = tail call i32 %403(ptr noundef nonnull %6, i32 noundef %359, i32 noundef %357, i32 noundef %405, i32 noundef %406, ptr noundef %0, i32 noundef %7, ptr noundef null) #6
  br label %412

408:                                              ; preds = %400
  %409 = sub nsw i32 %358, %357
  %410 = sub nsw i32 %366, %359
  %411 = tail call i32 %403(ptr noundef nonnull %6, i32 noundef %357, i32 noundef %359, i32 noundef %409, i32 noundef %410, ptr noundef %0, i32 noundef %7, ptr noundef null) #6
  br label %412

412:                                              ; preds = %404, %408, %392, %396
  %413 = phi i32 [ %395, %392 ], [ %399, %396 ], [ %407, %404 ], [ %411, %408 ]
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %412
  br label %416

416:                                              ; preds = %368, %412, %415
  %417 = phi i32 [ %357, %412 ], [ %357, %368 ], [ %384, %415 ]
  %418 = phi i32 [ %358, %412 ], [ %358, %368 ], [ %386, %415 ]
  %419 = phi i32 [ %359, %412 ], [ %359, %368 ], [ %366, %415 ]
  %420 = phi i32 [ %413, %412 ], [ %365, %368 ], [ %413, %415 ]
  %421 = phi i1 [ false, %412 ], [ true, %368 ], [ true, %415 ]
  br i1 %421, label %356, label %449

422:                                              ; preds = %356, %233
  %423 = phi i32 [ %239, %233 ], [ %357, %356 ]
  %424 = phi i32 [ %241, %233 ], [ %358, %356 ]
  %425 = phi i32 [ %17, %233 ], [ %359, %356 ]
  %426 = phi i32 [ %19, %233 ], [ %366, %356 ]
  %427 = icmp eq i32 %5, 0
  br i1 %38, label %428, label %437

428:                                              ; preds = %422
  br i1 %427, label %433, label %429

429:                                              ; preds = %428
  %430 = sub nsw i32 %426, %425
  %431 = sub nsw i32 %424, %423
  %432 = tail call i32 %46(ptr noundef %0, i32 noundef %425, i32 noundef %423, i32 noundef %430, i32 noundef %431, i64 noundef %45) #6
  br label %449

433:                                              ; preds = %428
  %434 = sub nsw i32 %424, %423
  %435 = sub nsw i32 %426, %425
  %436 = tail call i32 %46(ptr noundef %0, i32 noundef %423, i32 noundef %425, i32 noundef %434, i32 noundef %435, i64 noundef %45) #6
  br label %449

437:                                              ; preds = %422
  %438 = load ptr, ptr %6, align 8, !tbaa !13
  %439 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %438, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !29
  br i1 %427, label %445, label %441

441:                                              ; preds = %437
  %442 = sub nsw i32 %426, %425
  %443 = sub nsw i32 %424, %423
  %444 = tail call i32 %440(ptr noundef nonnull %6, i32 noundef %425, i32 noundef %423, i32 noundef %442, i32 noundef %443, ptr noundef %0, i32 noundef %7, ptr noundef null) #6
  br label %449

445:                                              ; preds = %437
  %446 = sub nsw i32 %424, %423
  %447 = sub nsw i32 %426, %425
  %448 = tail call i32 %440(ptr noundef nonnull %6, i32 noundef %423, i32 noundef %425, i32 noundef %446, i32 noundef %447, ptr noundef %0, i32 noundef %7, ptr noundef null) #6
  br label %449

449:                                              ; preds = %416, %441, %445, %429, %433, %8
  %450 = phi i32 [ 0, %8 ], [ %432, %429 ], [ %436, %433 ], [ %444, %441 ], [ %448, %445 ], [ %420, %416 ]
  ret i32 %450
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_fill_parallelogram(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.gs_fixed_edge_s, align 8
  %11 = alloca %struct.gs_fixed_edge_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #6
  %12 = icmp slt i64 %4, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %1
  %15 = add nsw i64 %4, %2
  %16 = sub nsw i64 0, %3
  %17 = sub nsw i64 0, %4
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i64 [ %17, %13 ], [ %4, %9 ]
  %20 = phi i64 [ %16, %13 ], [ %3, %9 ]
  %21 = phi i64 [ %15, %13 ], [ %2, %9 ]
  %22 = phi i64 [ %14, %13 ], [ %1, %9 ]
  %23 = icmp slt i64 %6, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = add nsw i64 %22, %5
  %26 = add nsw i64 %21, %6
  %27 = sub nsw i64 0, %5
  %28 = sub nsw i64 0, %6
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i64 [ %28, %24 ], [ %6, %18 ]
  %31 = phi i64 [ %27, %24 ], [ %5, %18 ]
  %32 = phi i64 [ %26, %24 ], [ %21, %18 ]
  %33 = phi i64 [ %25, %24 ], [ %22, %18 ]
  %34 = add i64 %31, %20
  %35 = add i64 %34, %33
  %36 = or i64 %31, %19
  %37 = icmp eq i64 %36, 0
  %38 = or i64 %30, %20
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %29
  %42 = add nsw i64 %33, 2047
  %43 = lshr i64 %42, 12
  %44 = trunc i64 %43 to i32
  %45 = add nsw i64 %32, 2047
  %46 = lshr i64 %45, 12
  %47 = trunc i64 %46 to i32
  %48 = add nsw i64 %35, 2047
  %49 = lshr i64 %48, 12
  %50 = trunc i64 %49 to i32
  %51 = sub nsw i32 %50, %44
  %52 = icmp slt i32 %51, 0
  %53 = select i1 %52, i32 %50, i32 %44
  %54 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %55 = load ptr, ptr %7, align 8, !tbaa !13
  %56 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !29
  %58 = add i64 %19, 2047
  %59 = add i64 %58, %30
  %60 = add i64 %59, %32
  %61 = lshr i64 %60, 12
  %62 = trunc i64 %61 to i32
  %63 = sub nsw i32 %62, %47
  %64 = tail call i32 %57(ptr noundef nonnull %7, i32 noundef %53, i32 noundef %47, i32 noundef %54, i32 noundef %63, ptr noundef %0, i32 noundef %8, ptr noundef null) #6
  br label %134

65:                                               ; preds = %29
  %66 = icmp sgt i64 %20, %31
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i64 [ %19, %67 ], [ %30, %65 ]
  %70 = phi i64 [ %20, %67 ], [ %31, %65 ]
  %71 = phi i64 [ %30, %67 ], [ %19, %65 ]
  %72 = phi i64 [ %31, %67 ], [ %20, %65 ]
  %73 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 27
  %74 = load ptr, ptr %73, align 8, !tbaa !31
  %75 = add nsw i64 %71, %32
  %76 = add nsw i64 %75, %69
  store i64 %33, ptr %11, align 8, !tbaa !5
  store i64 %33, ptr %10, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %11, i64 0, i32 1
  store i64 %32, ptr %77, align 8, !tbaa !12
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %32, ptr %78, align 8, !tbaa !12
  %79 = add nsw i64 %72, %33
  %80 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1
  store i64 %79, ptr %80, align 8, !tbaa !11
  %81 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1, i32 1
  store i64 %75, ptr %81, align 8, !tbaa !28
  %82 = add nsw i64 %70, %33
  %83 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1
  store i64 %82, ptr %83, align 8, !tbaa !11
  %84 = add nsw i64 %69, %32
  %85 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1, i32 1
  store i64 %84, ptr %85, align 8, !tbaa !28
  %86 = icmp slt i64 %71, %69
  %87 = add nsw i64 %32, 2047
  br i1 %86, label %88, label %106

88:                                               ; preds = %68
  %89 = add nsw i64 %75, 2047
  %90 = xor i64 %89, %87
  %91 = icmp ult i64 %90, 4096
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = call i32 %74(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %32, i64 noundef %75, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %134, label %95

95:                                               ; preds = %92, %88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %80, i64 16, i1 false), !tbaa.struct !32
  store i64 %35, ptr %80, align 8, !tbaa !11
  store i64 %76, ptr %81, align 8, !tbaa !28
  %96 = load i64, ptr %85, align 8, !tbaa !28
  %97 = load i64, ptr %78, align 8, !tbaa !12
  %98 = add nsw i64 %97, 2047
  %99 = add nsw i64 %96, 2047
  %100 = xor i64 %98, %99
  %101 = icmp ult i64 %100, 4096
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = call i32 %74(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %97, i64 noundef %96, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %134, label %105

105:                                              ; preds = %102, %95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %83, i64 16, i1 false), !tbaa.struct !32
  br label %124

106:                                              ; preds = %68
  %107 = add nsw i64 %84, 2047
  %108 = xor i64 %107, %87
  %109 = icmp ult i64 %108, 4096
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = call i32 %74(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %32, i64 noundef %84, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %110, %106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %83, i64 16, i1 false), !tbaa.struct !32
  store i64 %35, ptr %83, align 8, !tbaa !11
  store i64 %76, ptr %85, align 8, !tbaa !28
  %114 = load i64, ptr %81, align 8, !tbaa !28
  %115 = load i64, ptr %77, align 8, !tbaa !12
  %116 = add nsw i64 %115, 2047
  %117 = add nsw i64 %114, 2047
  %118 = xor i64 %116, %117
  %119 = icmp ult i64 %118, 4096
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = call i32 %74(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %115, i64 noundef %114, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %120, %113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %80, i64 16, i1 false), !tbaa.struct !32
  br label %124

124:                                              ; preds = %123, %105
  %125 = phi ptr [ %80, %123 ], [ %83, %105 ]
  %126 = phi ptr [ %81, %123 ], [ %85, %105 ]
  %127 = phi i64 [ %114, %123 ], [ %96, %105 ]
  store i64 %35, ptr %125, align 8, !tbaa !11
  store i64 %76, ptr %126, align 8, !tbaa !28
  %128 = add nsw i64 %127, 2047
  %129 = add nsw i64 %76, 2047
  %130 = xor i64 %128, %129
  %131 = icmp ult i64 %130, 4096
  br i1 %131, label %134, label %132

132:                                              ; preds = %124
  %133 = call i32 %74(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %127, i64 noundef %76, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  br label %134

134:                                              ; preds = %124, %120, %110, %102, %92, %132, %41
  %135 = phi i32 [ %64, %41 ], [ %133, %132 ], [ %93, %92 ], [ %103, %102 ], [ %111, %110 ], [ %121, %120 ], [ 0, %124 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #6
  ret i32 %135
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_fill_triangle(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.gs_fixed_edge_s, align 8
  %11 = alloca %struct.gs_fixed_edge_s, align 8
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #6
  %14 = icmp slt i64 %4, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = add nsw i64 %3, %1
  %17 = add nsw i64 %4, %2
  %18 = sub nsw i64 %5, %3
  %19 = sub nsw i64 %6, %4
  %20 = sub nsw i64 0, %3
  %21 = sub nsw i64 0, %4
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i64 [ %21, %15 ], [ %4, %9 ]
  %24 = phi i64 [ %18, %15 ], [ %5, %9 ]
  %25 = phi i64 [ %19, %15 ], [ %6, %9 ]
  %26 = phi i64 [ %20, %15 ], [ %3, %9 ]
  %27 = phi i64 [ %17, %15 ], [ %2, %9 ]
  %28 = phi i64 [ %16, %15 ], [ %1, %9 ]
  %29 = icmp slt i64 %25, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = add nsw i64 %28, %24
  %32 = add nsw i64 %27, %25
  %33 = sub nsw i64 %26, %24
  %34 = sub nsw i64 %23, %25
  %35 = sub nsw i64 0, %24
  %36 = sub nsw i64 0, %25
  br label %37

37:                                               ; preds = %30, %22
  %38 = phi i64 [ %34, %30 ], [ %23, %22 ]
  %39 = phi i64 [ %35, %30 ], [ %24, %22 ]
  %40 = phi i64 [ %36, %30 ], [ %25, %22 ]
  %41 = phi i64 [ %33, %30 ], [ %26, %22 ]
  %42 = phi i64 [ %32, %30 ], [ %27, %22 ]
  %43 = phi i64 [ %31, %30 ], [ %28, %22 ]
  %44 = icmp sgt i64 %38, %40
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i64 [ %40, %45 ], [ %38, %37 ]
  %48 = phi i64 [ %41, %45 ], [ %39, %37 ]
  %49 = phi i64 [ %38, %45 ], [ %40, %37 ]
  %50 = phi i64 [ %39, %45 ], [ %41, %37 ]
  store i64 %43, ptr %11, align 8, !tbaa !5
  store i64 %43, ptr %10, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %11, i64 0, i32 1
  store i64 %42, ptr %51, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %42, ptr %52, align 8, !tbaa !12
  %53 = icmp eq i64 %47, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = icmp slt i64 %50, 0
  %56 = add nsw i64 %50, %43
  br i1 %55, label %57, label %58

57:                                               ; preds = %54
  store i64 %56, ptr %10, align 8, !tbaa !5
  br label %59

58:                                               ; preds = %54
  store i64 %56, ptr %11, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %58, %57
  %60 = add nsw i64 %48, %43
  %61 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1
  store i64 %60, ptr %61, align 8, !tbaa !11
  %62 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1
  store i64 %60, ptr %62, align 8, !tbaa !11
  br label %101

63:                                               ; preds = %46
  %64 = icmp eq i64 %47, %49
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1
  %67 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1
  %68 = tail call i64 @llvm.smin.i64(i64 %39, i64 %41)
  %69 = tail call i64 @llvm.smax.i64(i64 %39, i64 %41)
  %70 = add nsw i64 %68, %43
  store i64 %70, ptr %66, align 8, !tbaa !11
  %71 = add nsw i64 %69, %43
  store i64 %71, ptr %67, align 8, !tbaa !11
  br label %101

72:                                               ; preds = %63
  %73 = add nsw i64 %47, %42
  %74 = sitofp i64 %48 to double
  %75 = sitofp i64 %47 to double
  %76 = fmul double %75, %74
  %77 = sitofp i64 %49 to double
  %78 = fdiv double %76, %77
  %79 = tail call double @llvm.floor.f64(double %78)
  %80 = fptosi double %79 to i64
  %81 = icmp sgt i64 %50, %80
  %82 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1
  %83 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1, i32 1
  br i1 %81, label %84, label %91

84:                                               ; preds = %72
  %85 = add nsw i64 %48, %43
  store i64 %85, ptr %82, align 8, !tbaa !11
  %86 = add nsw i64 %49, %42
  %87 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1, i32 1
  store i64 %86, ptr %87, align 8, !tbaa !28
  %88 = add nsw i64 %50, %43
  %89 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1
  store i64 %88, ptr %89, align 8, !tbaa !11
  store i64 %73, ptr %83, align 8, !tbaa !28
  %90 = call i32 %13(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %42, i64 noundef %73, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %89, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %89, ptr noundef nonnull align 8 dereferenceable(16) %82, i64 16, i1 false), !tbaa.struct !32
  br label %98

91:                                               ; preds = %72
  %92 = add nsw i64 %50, %43
  store i64 %92, ptr %82, align 8, !tbaa !11
  %93 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1, i32 1
  store i64 %73, ptr %93, align 8, !tbaa !28
  %94 = add nsw i64 %48, %43
  %95 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1
  store i64 %94, ptr %95, align 8, !tbaa !11
  %96 = add nsw i64 %49, %42
  store i64 %96, ptr %83, align 8, !tbaa !28
  %97 = call i32 %13(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %42, i64 noundef %73, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %82, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, ptr noundef nonnull align 8 dereferenceable(16) %95, i64 16, i1 false), !tbaa.struct !32
  br label %98

98:                                               ; preds = %91, %84
  %99 = phi i32 [ %90, %84 ], [ %97, %91 ]
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %110, label %105

101:                                              ; preds = %59, %65
  %102 = add nsw i64 %49, %42
  %103 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1, i32 1
  store i64 %102, ptr %103, align 8, !tbaa !28
  %104 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %10, i64 0, i32 1, i32 1
  store i64 %102, ptr %104, align 8, !tbaa !28
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i64 [ %73, %98 ], [ %42, %101 ]
  %107 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %11, i64 0, i32 1, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !28
  %109 = call i32 %13(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %106, i64 noundef %108, i32 noundef 0, ptr noundef %7, i32 noundef %8) #6
  br label %110

110:                                              ; preds = %98, %105
  %111 = phi i32 [ %109, %105 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #6
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_draw_thin_line(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.gs_fixed_edge_s, align 8
  %9 = alloca %struct.gs_fixed_edge_s, align 8
  %10 = lshr i64 %1, 12
  %11 = trunc i64 %10 to i32
  %12 = lshr i64 %2, 12
  %13 = trunc i64 %12 to i32
  %14 = lshr i64 %3, 12
  %15 = trunc i64 %14 to i32
  %16 = lshr i64 %4, 12
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, %13
  br i1 %18, label %19, label %32

19:                                               ; preds = %7
  %20 = icmp sgt i32 %11, %15
  %21 = load ptr, ptr %5, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  br i1 %20, label %28, label %24

24:                                               ; preds = %19
  %25 = sub i32 %15, %11
  %26 = add i32 %25, 1
  %27 = tail call i32 %23(ptr noundef nonnull %5, i32 noundef %11, i32 noundef %13, i32 noundef %26, i32 noundef 1, ptr noundef %0, i32 noundef %6, ptr noundef null) #6
  br label %93

28:                                               ; preds = %19
  %29 = add i32 %11, 1
  %30 = sub i32 %29, %15
  %31 = tail call i32 %23(ptr noundef nonnull %5, i32 noundef %15, i32 noundef %13, i32 noundef %30, i32 noundef 1, ptr noundef %0, i32 noundef %6, ptr noundef null) #6
  br label %93

32:                                               ; preds = %7
  %33 = icmp eq i32 %15, %11
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = icmp sgt i32 %13, %17
  %36 = load ptr, ptr %5, align 8, !tbaa !13
  %37 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !29
  br i1 %35, label %43, label %39

39:                                               ; preds = %34
  %40 = sub i32 %17, %13
  %41 = add i32 %40, 1
  %42 = tail call i32 %38(ptr noundef nonnull %5, i32 noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef %41, ptr noundef %0, i32 noundef %6, ptr noundef null) #6
  br label %93

43:                                               ; preds = %34
  %44 = add i32 %13, 1
  %45 = sub i32 %44, %17
  %46 = tail call i32 %38(ptr noundef nonnull %5, i32 noundef %11, i32 noundef %17, i32 noundef 1, i32 noundef %45, ptr noundef %0, i32 noundef %6, ptr noundef null) #6
  br label %93

47:                                               ; preds = %32
  %48 = load ptr, ptr %5, align 8, !tbaa !13
  %49 = icmp eq ptr %48, @gx_dc_procs_pure
  %50 = and i32 %6, 563
  %51 = icmp eq i32 %50, 48
  %52 = and i1 %51, %49
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.gx_device_color_s, ptr %5, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !21
  %58 = tail call i32 %55(ptr noundef %0, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %57) #6
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %93, label %60

60:                                               ; preds = %53, %47
  %61 = sub nsw i64 %4, %2
  %62 = sub nsw i64 %3, %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #6
  %63 = tail call i64 @llvm.abs.i64(i64 %62, i1 true)
  %64 = tail call i64 @llvm.abs.i64(i64 %61, i1 true)
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = icmp slt i64 %61, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  br label %72

69:                                               ; preds = %60
  %70 = icmp slt i64 %62, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %69, %71, %66, %68
  %73 = phi i64 [ %3, %68 ], [ %1, %66 ], [ %4, %71 ], [ %2, %69 ]
  %74 = phi i64 [ %1, %68 ], [ %3, %66 ], [ %2, %71 ], [ %4, %69 ]
  %75 = phi i64 [ %4, %68 ], [ %2, %66 ], [ %3, %71 ], [ %1, %69 ]
  %76 = phi i64 [ %2, %68 ], [ %4, %66 ], [ %1, %71 ], [ %3, %69 ]
  %77 = phi i32 [ 0, %68 ], [ 0, %66 ], [ 1, %71 ], [ 1, %69 ]
  %78 = add nsw i64 %73, -2048
  store i64 %78, ptr %8, align 8, !tbaa !5
  %79 = add nsw i64 %73, 2048
  store i64 %79, ptr %9, align 8, !tbaa !5
  %80 = add nsw i64 %74, -2048
  %81 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %8, i64 0, i32 1
  store i64 %80, ptr %81, align 8, !tbaa !11
  %82 = add nsw i64 %74, 2048
  %83 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %9, i64 0, i32 1
  store i64 %82, ptr %83, align 8, !tbaa !11
  %84 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  store i64 %75, ptr %84, align 8, !tbaa !12
  %85 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  store i64 %75, ptr %85, align 8, !tbaa !12
  %86 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %9, i64 0, i32 1, i32 1
  store i64 %76, ptr %86, align 8, !tbaa !28
  %87 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %8, i64 0, i32 1, i32 1
  store i64 %76, ptr %87, align 8, !tbaa !28
  %88 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 27
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  %90 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !12
  %92 = call i32 %89(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef %91, i64 noundef %76, i32 noundef %77, ptr noundef nonnull %5, i32 noundef %6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #6
  br label %93

93:                                               ; preds = %53, %39, %43, %24, %28, %72
  %94 = phi i32 [ %92, %72 ], [ %27, %24 ], [ %31, %28 ], [ %42, %39 ], [ %46, %43 ], [ 0, %53 ]
  ret i32 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_draw_line(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #4 {
  ret i32 -1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 0}
!6 = !{!"gs_fixed_edge_s", !7, i64 0, !7, i64 16}
!7 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 8}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !8, i64 16}
!12 = !{!6, !8, i64 8}
!13 = !{!14, !15, i64 0}
!14 = !{!"gx_device_color_s", !15, i64 0, !9, i64 8, !16, i64 48, !18, i64 56}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"gs_int_point_s", !17, i64 0, !17, i64 4}
!17 = !{!"int", !9, i64 0}
!18 = !{!"_mask", !19, i64 0, !8, i64 24, !15, i64 32}
!19 = !{!"gs_client_color_s", !20, i64 0, !15, i64 16}
!20 = !{!"gs_paint_color_s", !9, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!23, !15, i64 248}
!23 = !{!"gx_device_s", !17, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !17, i64 40, !17, i64 44, !24, i64 48, !17, i64 64, !17, i64 68, !9, i64 72, !9, i64 80, !17, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !8, i64 144, !8, i64 152, !17, i64 160, !26, i64 168, !27, i64 192}
!24 = !{!"gx_device_color_info_s", !17, i64 0, !17, i64 4, !25, i64 8, !25, i64 10, !25, i64 12, !25, i64 14}
!25 = !{!"short", !9, i64 0}
!26 = !{!"gx_page_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16}
!27 = !{!"gx_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288}
!28 = !{!6, !8, i64 24}
!29 = !{!30, !15, i64 8}
!30 = !{!"gx_device_color_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!31 = !{!23, !15, i64 408}
!32 = !{i64 0, i64 8, !33, i64 8, i64 8, !33}
!33 = !{!8, !8, i64 0}
!34 = !{!23, !15, i64 280}
