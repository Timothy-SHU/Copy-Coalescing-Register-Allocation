; ModuleID = 'zlib/inffast.c'
source_filename = "zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define hidden void @inflate_fast(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds i8, ptr %5, i64 -1
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = add i32 %8, -5
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds i8, ptr %13, i64 -1
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = sub i32 %1, %16
  %18 = zext i32 %17 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  %21 = add i32 %16, -257
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %14, i64 %22
  %24 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !45
  %26 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  %29 = load i32, ptr %28, align 4, !tbaa !48
  %30 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 14
  %33 = load i64, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !51
  %36 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 21
  %41 = load i32, ptr %40, align 8, !tbaa !54
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 22
  %45 = load i32, ptr %44, align 4, !tbaa !55
  %46 = shl nsw i32 -1, %45
  %47 = xor i32 %46, -1
  %48 = zext nneg i32 %43 to i64
  %49 = zext nneg i32 %47 to i64
  %50 = ptrtoint ptr %20 to i64
  %51 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 31
  %52 = getelementptr inbounds i8, ptr %31, i64 -1
  %53 = icmp eq i32 %29, 0
  %54 = add i32 %29, %25
  br label %55

55:                                               ; preds = %406, %2
  %56 = phi i32 [ %35, %2 ], [ %407, %406 ]
  %57 = phi i64 [ %33, %2 ], [ %408, %406 ]
  %58 = phi ptr [ %14, %2 ], [ %409, %406 ]
  %59 = phi ptr [ %6, %2 ], [ %410, %406 ]
  %60 = icmp ult i32 %56, 15
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = getelementptr inbounds i8, ptr %59, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !56
  %64 = zext i8 %63 to i64
  %65 = zext nneg i32 %56 to i64
  %66 = shl nuw nsw i64 %64, %65
  %67 = add i64 %66, %57
  %68 = add nuw nsw i32 %56, 8
  %69 = getelementptr inbounds i8, ptr %59, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !56
  %71 = zext i8 %70 to i64
  %72 = zext nneg i32 %68 to i64
  %73 = shl nuw nsw i64 %71, %72
  %74 = add i64 %67, %73
  %75 = or disjoint i32 %56, 16
  br label %76

76:                                               ; preds = %61, %55
  %77 = phi i32 [ %75, %61 ], [ %56, %55 ]
  %78 = phi i64 [ %74, %61 ], [ %57, %55 ]
  %79 = phi ptr [ %69, %61 ], [ %59, %55 ]
  %80 = and i64 %78, %48
  %81 = getelementptr inbounds %struct.code, ptr %37, i64 %80
  %82 = load i8, ptr %81, align 2
  %83 = getelementptr inbounds %struct.code, ptr %37, i64 %80, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr inbounds %struct.code, ptr %37, i64 %80, i32 2
  %86 = load i16, ptr %85, align 2
  %87 = zext i8 %84 to i32
  %88 = zext nneg i8 %84 to i64
  %89 = lshr i64 %78, %88
  %90 = sub i32 %77, %87
  %91 = icmp eq i8 %82, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %385, %76
  %93 = phi i16 [ %86, %76 ], [ %397, %385 ]
  %94 = phi i64 [ %89, %76 ], [ %400, %385 ]
  %95 = phi i32 [ %90, %76 ], [ %401, %385 ]
  %96 = trunc i16 %93 to i8
  %97 = getelementptr inbounds i8, ptr %58, i64 1
  store i8 %96, ptr %97, align 1, !tbaa !56
  br label %406

98:                                               ; preds = %76, %385
  %99 = phi i8 [ %393, %385 ], [ %82, %76 ]
  %100 = phi i32 [ %401, %385 ], [ %90, %76 ]
  %101 = phi i64 [ %400, %385 ], [ %89, %76 ]
  %102 = phi i16 [ %397, %385 ], [ %86, %76 ]
  %103 = zext i8 %99 to i32
  %104 = and i32 %103, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %382, label %106

106:                                              ; preds = %98
  %107 = zext i16 %102 to i32
  %108 = and i32 %103, 15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %106
  %111 = icmp ult i32 %100, %108
  br i1 %111, label %112, label %120

112:                                              ; preds = %110
  %113 = getelementptr inbounds i8, ptr %79, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !56
  %115 = zext i8 %114 to i64
  %116 = zext nneg i32 %100 to i64
  %117 = shl nuw nsw i64 %115, %116
  %118 = add i64 %117, %101
  %119 = add nuw nsw i32 %100, 8
  br label %120

120:                                              ; preds = %112, %110
  %121 = phi i32 [ %119, %112 ], [ %100, %110 ]
  %122 = phi i64 [ %118, %112 ], [ %101, %110 ]
  %123 = phi ptr [ %113, %112 ], [ %79, %110 ]
  %124 = trunc i64 %122 to i32
  %125 = shl nsw i32 -1, %108
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  %128 = add nuw nsw i32 %127, %107
  %129 = zext nneg i32 %108 to i64
  %130 = lshr i64 %122, %129
  %131 = sub i32 %121, %108
  br label %132

132:                                              ; preds = %120, %106
  %133 = phi i32 [ %131, %120 ], [ %100, %106 ]
  %134 = phi i64 [ %130, %120 ], [ %101, %106 ]
  %135 = phi ptr [ %123, %120 ], [ %79, %106 ]
  %136 = phi i32 [ %128, %120 ], [ %107, %106 ]
  %137 = icmp ult i32 %133, 15
  br i1 %137, label %138, label %153

138:                                              ; preds = %132
  %139 = getelementptr inbounds i8, ptr %135, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !56
  %141 = zext i8 %140 to i64
  %142 = zext nneg i32 %133 to i64
  %143 = shl nuw nsw i64 %141, %142
  %144 = add i64 %143, %134
  %145 = add nuw nsw i32 %133, 8
  %146 = getelementptr inbounds i8, ptr %135, i64 2
  %147 = load i8, ptr %146, align 1, !tbaa !56
  %148 = zext i8 %147 to i64
  %149 = zext nneg i32 %145 to i64
  %150 = shl nuw nsw i64 %148, %149
  %151 = add i64 %144, %150
  %152 = or disjoint i32 %133, 16
  br label %153

153:                                              ; preds = %138, %132
  %154 = phi i32 [ %152, %138 ], [ %133, %132 ]
  %155 = phi i64 [ %151, %138 ], [ %134, %132 ]
  %156 = phi ptr [ %146, %138 ], [ %135, %132 ]
  %157 = and i64 %155, %49
  %158 = getelementptr inbounds %struct.code, ptr %39, i64 %157
  %159 = load i8, ptr %158, align 2
  %160 = getelementptr inbounds %struct.code, ptr %39, i64 %157, i32 1
  %161 = load i8, ptr %160, align 1
  %162 = getelementptr inbounds %struct.code, ptr %39, i64 %157, i32 2
  %163 = load i16, ptr %162, align 2
  %164 = zext i8 %161 to i32
  %165 = zext nneg i8 %161 to i64
  %166 = lshr i64 %155, %165
  %167 = sub i32 %154, %164
  %168 = zext i8 %159 to i32
  %169 = and i32 %168, 16
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %355, label %171

171:                                              ; preds = %362, %153
  %172 = phi i16 [ %163, %153 ], [ %374, %362 ]
  %173 = phi i64 [ %166, %153 ], [ %377, %362 ]
  %174 = phi i32 [ %167, %153 ], [ %378, %362 ]
  %175 = phi i32 [ %168, %153 ], [ %379, %362 ]
  %176 = zext i16 %172 to i32
  %177 = and i32 %175, 15
  %178 = icmp ult i32 %174, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %171
  %180 = getelementptr inbounds i8, ptr %156, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !56
  %182 = zext i8 %181 to i64
  %183 = zext nneg i32 %174 to i64
  %184 = shl nuw nsw i64 %182, %183
  %185 = add i64 %184, %173
  %186 = add nuw nsw i32 %174, 8
  %187 = icmp ult i32 %186, %177
  br i1 %187, label %188, label %196

188:                                              ; preds = %179
  %189 = getelementptr inbounds i8, ptr %156, i64 2
  %190 = load i8, ptr %189, align 1, !tbaa !56
  %191 = zext i8 %190 to i64
  %192 = zext nneg i32 %186 to i64
  %193 = shl nuw nsw i64 %191, %192
  %194 = add i64 %193, %185
  %195 = add nuw nsw i32 %174, 16
  br label %196

196:                                              ; preds = %179, %188, %171
  %197 = phi i32 [ %195, %188 ], [ %186, %179 ], [ %174, %171 ]
  %198 = phi i64 [ %194, %188 ], [ %185, %179 ], [ %173, %171 ]
  %199 = phi ptr [ %189, %188 ], [ %180, %179 ], [ %156, %171 ]
  %200 = trunc i64 %198 to i32
  %201 = shl nsw i32 -1, %177
  %202 = xor i32 %201, -1
  %203 = and i32 %200, %202
  %204 = add nuw nsw i32 %203, %176
  %205 = zext nneg i32 %177 to i64
  %206 = lshr i64 %198, %205
  %207 = sub i32 %197, %177
  %208 = ptrtoint ptr %58 to i64
  %209 = sub i64 %208, %50
  %210 = trunc i64 %209 to i32
  %211 = icmp ugt i32 %204, %210
  br i1 %211, label %212, label %325

212:                                              ; preds = %196
  %213 = sub nsw i32 %204, %210
  %214 = icmp ugt i32 %213, %27
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, ptr %51, align 8, !tbaa !57
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %414

218:                                              ; preds = %215, %212
  br i1 %53, label %219, label %238

219:                                              ; preds = %218
  %220 = sub i32 %25, %213
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %52, i64 %221
  %223 = icmp ult i32 %213, %136
  br i1 %223, label %224, label %291

224:                                              ; preds = %219, %224
  %225 = phi ptr [ %230, %224 ], [ %58, %219 ]
  %226 = phi i32 [ %231, %224 ], [ %213, %219 ]
  %227 = phi ptr [ %228, %224 ], [ %222, %219 ]
  %228 = getelementptr inbounds i8, ptr %227, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !56
  %230 = getelementptr inbounds i8, ptr %225, i64 1
  store i8 %229, ptr %230, align 1, !tbaa !56
  %231 = add i32 %226, -1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %224, !llvm.loop !58

233:                                              ; preds = %224
  %234 = sub nsw i32 %136, %213
  %235 = zext nneg i32 %204 to i64
  %236 = sub nsw i64 0, %235
  %237 = getelementptr inbounds i8, ptr %230, i64 %236
  br label %291

238:                                              ; preds = %218
  %239 = icmp ult i32 %29, %213
  br i1 %239, label %240, label %272

240:                                              ; preds = %238
  %241 = sub i32 %54, %213
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i8, ptr %52, i64 %242
  %244 = sub i32 %213, %29
  %245 = icmp ult i32 %244, %136
  br i1 %245, label %246, label %291

246:                                              ; preds = %240, %246
  %247 = phi ptr [ %252, %246 ], [ %58, %240 ]
  %248 = phi i32 [ %253, %246 ], [ %244, %240 ]
  %249 = phi ptr [ %250, %246 ], [ %243, %240 ]
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  %251 = load i8, ptr %250, align 1, !tbaa !56
  %252 = getelementptr inbounds i8, ptr %247, i64 1
  store i8 %251, ptr %252, align 1, !tbaa !56
  %253 = add i32 %248, -1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %246, !llvm.loop !60

255:                                              ; preds = %246
  %256 = sub nsw i32 %136, %244
  %257 = icmp ult i32 %29, %256
  br i1 %257, label %258, label %291

258:                                              ; preds = %255, %258
  %259 = phi ptr [ %264, %258 ], [ %252, %255 ]
  %260 = phi i32 [ %265, %258 ], [ %29, %255 ]
  %261 = phi ptr [ %262, %258 ], [ %52, %255 ]
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  %263 = load i8, ptr %262, align 1, !tbaa !56
  %264 = getelementptr inbounds i8, ptr %259, i64 1
  store i8 %263, ptr %264, align 1, !tbaa !56
  %265 = add i32 %260, -1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %258, !llvm.loop !61

267:                                              ; preds = %258
  %268 = sub i32 %256, %29
  %269 = zext nneg i32 %204 to i64
  %270 = sub nsw i64 0, %269
  %271 = getelementptr inbounds i8, ptr %264, i64 %270
  br label %291

272:                                              ; preds = %238
  %273 = sub i32 %29, %213
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8, ptr %52, i64 %274
  %276 = icmp ult i32 %213, %136
  br i1 %276, label %277, label %291

277:                                              ; preds = %272, %277
  %278 = phi ptr [ %283, %277 ], [ %58, %272 ]
  %279 = phi i32 [ %284, %277 ], [ %213, %272 ]
  %280 = phi ptr [ %281, %277 ], [ %275, %272 ]
  %281 = getelementptr inbounds i8, ptr %280, i64 1
  %282 = load i8, ptr %281, align 1, !tbaa !56
  %283 = getelementptr inbounds i8, ptr %278, i64 1
  store i8 %282, ptr %283, align 1, !tbaa !56
  %284 = add i32 %279, -1
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %277, !llvm.loop !62

286:                                              ; preds = %277
  %287 = sub nsw i32 %136, %213
  %288 = zext nneg i32 %204 to i64
  %289 = sub nsw i64 0, %288
  %290 = getelementptr inbounds i8, ptr %283, i64 %289
  br label %291

291:                                              ; preds = %255, %267, %240, %286, %272, %219, %233
  %292 = phi ptr [ %230, %233 ], [ %58, %219 ], [ %264, %267 ], [ %252, %255 ], [ %58, %240 ], [ %283, %286 ], [ %58, %272 ]
  %293 = phi i32 [ %234, %233 ], [ %136, %219 ], [ %268, %267 ], [ %256, %255 ], [ %136, %240 ], [ %287, %286 ], [ %136, %272 ]
  %294 = phi ptr [ %237, %233 ], [ %222, %219 ], [ %271, %267 ], [ %52, %255 ], [ %243, %240 ], [ %290, %286 ], [ %275, %272 ]
  %295 = icmp ugt i32 %293, 2
  br i1 %295, label %296, label %311

296:                                              ; preds = %291, %296
  %297 = phi ptr [ %306, %296 ], [ %294, %291 ]
  %298 = phi i32 [ %309, %296 ], [ %293, %291 ]
  %299 = phi ptr [ %308, %296 ], [ %292, %291 ]
  %300 = getelementptr inbounds i8, ptr %297, i64 1
  %301 = load i8, ptr %300, align 1, !tbaa !56
  %302 = getelementptr inbounds i8, ptr %299, i64 1
  store i8 %301, ptr %302, align 1, !tbaa !56
  %303 = getelementptr inbounds i8, ptr %297, i64 2
  %304 = load i8, ptr %303, align 1, !tbaa !56
  %305 = getelementptr inbounds i8, ptr %299, i64 2
  store i8 %304, ptr %305, align 1, !tbaa !56
  %306 = getelementptr inbounds i8, ptr %297, i64 3
  %307 = load i8, ptr %306, align 1, !tbaa !56
  %308 = getelementptr inbounds i8, ptr %299, i64 3
  store i8 %307, ptr %308, align 1, !tbaa !56
  %309 = add i32 %298, -3
  %310 = icmp ugt i32 %309, 2
  br i1 %310, label %296, label %311, !llvm.loop !63

311:                                              ; preds = %296, %291
  %312 = phi ptr [ %292, %291 ], [ %308, %296 ]
  %313 = phi i32 [ %293, %291 ], [ %309, %296 ]
  %314 = phi ptr [ %294, %291 ], [ %306, %296 ]
  %315 = icmp eq i32 %313, 0
  br i1 %315, label %406, label %316

316:                                              ; preds = %311
  %317 = getelementptr inbounds i8, ptr %314, i64 1
  %318 = load i8, ptr %317, align 1, !tbaa !56
  %319 = getelementptr inbounds i8, ptr %312, i64 1
  store i8 %318, ptr %319, align 1, !tbaa !56
  %320 = icmp eq i32 %313, 2
  br i1 %320, label %321, label %406

321:                                              ; preds = %316
  %322 = getelementptr inbounds i8, ptr %314, i64 2
  %323 = load i8, ptr %322, align 1, !tbaa !56
  %324 = getelementptr inbounds i8, ptr %312, i64 2
  store i8 %323, ptr %324, align 1, !tbaa !56
  br label %406

325:                                              ; preds = %196
  %326 = zext nneg i32 %204 to i64
  %327 = sub nsw i64 0, %326
  %328 = getelementptr inbounds i8, ptr %58, i64 %327
  br label %329

329:                                              ; preds = %329, %325
  %330 = phi ptr [ %58, %325 ], [ %341, %329 ]
  %331 = phi i32 [ %136, %325 ], [ %342, %329 ]
  %332 = phi ptr [ %328, %325 ], [ %339, %329 ]
  %333 = getelementptr inbounds i8, ptr %332, i64 1
  %334 = load i8, ptr %333, align 1, !tbaa !56
  %335 = getelementptr inbounds i8, ptr %330, i64 1
  store i8 %334, ptr %335, align 1, !tbaa !56
  %336 = getelementptr inbounds i8, ptr %332, i64 2
  %337 = load i8, ptr %336, align 1, !tbaa !56
  %338 = getelementptr inbounds i8, ptr %330, i64 2
  store i8 %337, ptr %338, align 1, !tbaa !56
  %339 = getelementptr inbounds i8, ptr %332, i64 3
  %340 = load i8, ptr %339, align 1, !tbaa !56
  %341 = getelementptr inbounds i8, ptr %330, i64 3
  store i8 %340, ptr %341, align 1, !tbaa !56
  %342 = add i32 %331, -3
  %343 = icmp ugt i32 %342, 2
  br i1 %343, label %329, label %344, !llvm.loop !64

344:                                              ; preds = %329
  %345 = icmp eq i32 %342, 0
  br i1 %345, label %406, label %346

346:                                              ; preds = %344
  %347 = getelementptr inbounds i8, ptr %332, i64 4
  %348 = load i8, ptr %347, align 1, !tbaa !56
  %349 = getelementptr inbounds i8, ptr %330, i64 4
  store i8 %348, ptr %349, align 1, !tbaa !56
  %350 = icmp eq i32 %342, 2
  br i1 %350, label %351, label %406

351:                                              ; preds = %346
  %352 = getelementptr inbounds i8, ptr %332, i64 5
  %353 = load i8, ptr %352, align 1, !tbaa !56
  %354 = getelementptr inbounds i8, ptr %330, i64 5
  store i8 %353, ptr %354, align 1, !tbaa !56
  br label %406

355:                                              ; preds = %153, %362
  %356 = phi i32 [ %379, %362 ], [ %168, %153 ]
  %357 = phi i32 [ %378, %362 ], [ %167, %153 ]
  %358 = phi i64 [ %377, %362 ], [ %166, %153 ]
  %359 = phi i16 [ %374, %362 ], [ %163, %153 ]
  %360 = and i32 %356, 64
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %414

362:                                              ; preds = %355
  %363 = zext i16 %359 to i64
  %364 = shl nsw i32 -1, %356
  %365 = xor i32 %364, -1
  %366 = zext nneg i32 %365 to i64
  %367 = and i64 %358, %366
  %368 = add nuw nsw i64 %367, %363
  %369 = getelementptr inbounds %struct.code, ptr %39, i64 %368
  %370 = load i8, ptr %369, align 2
  %371 = getelementptr inbounds %struct.code, ptr %39, i64 %368, i32 1
  %372 = load i8, ptr %371, align 1
  %373 = getelementptr inbounds %struct.code, ptr %39, i64 %368, i32 2
  %374 = load i16, ptr %373, align 2
  %375 = zext i8 %372 to i32
  %376 = zext nneg i8 %372 to i64
  %377 = lshr i64 %358, %376
  %378 = sub i32 %357, %375
  %379 = zext i8 %370 to i32
  %380 = and i32 %379, 16
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %355, label %171

382:                                              ; preds = %98
  %383 = and i32 %103, 64
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %403

385:                                              ; preds = %382
  %386 = zext i16 %102 to i64
  %387 = shl nsw i32 -1, %103
  %388 = xor i32 %387, -1
  %389 = zext nneg i32 %388 to i64
  %390 = and i64 %101, %389
  %391 = add nuw nsw i64 %390, %386
  %392 = getelementptr inbounds %struct.code, ptr %37, i64 %391
  %393 = load i8, ptr %392, align 2
  %394 = getelementptr inbounds %struct.code, ptr %37, i64 %391, i32 1
  %395 = load i8, ptr %394, align 1
  %396 = getelementptr inbounds %struct.code, ptr %37, i64 %391, i32 2
  %397 = load i16, ptr %396, align 2
  %398 = zext i8 %395 to i32
  %399 = zext nneg i8 %395 to i64
  %400 = lshr i64 %101, %399
  %401 = sub i32 %100, %398
  %402 = icmp eq i8 %393, 0
  br i1 %402, label %92, label %98

403:                                              ; preds = %382
  %404 = and i32 %103, 32
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %414, label %420

406:                                              ; preds = %92, %344, %351, %346, %311, %321, %316
  %407 = phi i32 [ %95, %92 ], [ %207, %321 ], [ %207, %316 ], [ %207, %311 ], [ %207, %351 ], [ %207, %346 ], [ %207, %344 ]
  %408 = phi i64 [ %94, %92 ], [ %206, %321 ], [ %206, %316 ], [ %206, %311 ], [ %206, %351 ], [ %206, %346 ], [ %206, %344 ]
  %409 = phi ptr [ %97, %92 ], [ %324, %321 ], [ %319, %316 ], [ %312, %311 ], [ %354, %351 ], [ %349, %346 ], [ %341, %344 ]
  %410 = phi ptr [ %79, %92 ], [ %199, %321 ], [ %199, %316 ], [ %199, %311 ], [ %199, %351 ], [ %199, %346 ], [ %199, %344 ]
  %411 = icmp ult ptr %410, %11
  %412 = icmp ult ptr %409, %23
  %413 = select i1 %411, i1 %412, i1 false
  br i1 %413, label %55, label %425, !llvm.loop !65

414:                                              ; preds = %215, %355, %403
  %415 = phi ptr [ @.str.2, %403 ], [ @.str.1, %355 ], [ @.str, %215 ]
  %416 = phi i32 [ %100, %403 ], [ %357, %355 ], [ %207, %215 ]
  %417 = phi i64 [ %101, %403 ], [ %358, %355 ], [ %206, %215 ]
  %418 = phi ptr [ %79, %403 ], [ %156, %355 ], [ %199, %215 ]
  %419 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %415, ptr %419, align 8, !tbaa !66
  br label %420

420:                                              ; preds = %414, %403
  %421 = phi i32 [ 11, %403 ], [ 29, %414 ]
  %422 = phi i32 [ %100, %403 ], [ %416, %414 ]
  %423 = phi i64 [ %101, %403 ], [ %417, %414 ]
  %424 = phi ptr [ %79, %403 ], [ %418, %414 ]
  store i32 %421, ptr %4, align 8, !tbaa !67
  br label %425

425:                                              ; preds = %406, %420
  %426 = phi i32 [ %422, %420 ], [ %407, %406 ]
  %427 = phi i64 [ %423, %420 ], [ %408, %406 ]
  %428 = phi ptr [ %58, %420 ], [ %409, %406 ]
  %429 = phi ptr [ %424, %420 ], [ %410, %406 ]
  %430 = lshr i32 %426, 3
  %431 = zext nneg i32 %430 to i64
  %432 = sub nsw i64 0, %431
  %433 = getelementptr inbounds i8, ptr %429, i64 %432
  %434 = getelementptr inbounds i8, ptr %433, i64 1
  store ptr %434, ptr %0, align 8, !tbaa !41
  %435 = getelementptr inbounds i8, ptr %428, i64 1
  store ptr %435, ptr %12, align 8, !tbaa !43
  %436 = ptrtoint ptr %11 to i64
  %437 = ptrtoint ptr %433 to i64
  %438 = sub i64 %436, %437
  %439 = trunc i64 %438 to i32
  %440 = add i32 %439, 5
  store i32 %440, ptr %7, align 8, !tbaa !42
  %441 = ptrtoint ptr %23 to i64
  %442 = ptrtoint ptr %428 to i64
  %443 = sub i64 %441, %442
  %444 = and i32 %426, 7
  %445 = shl nsw i32 -1, %444
  %446 = xor i32 %445, -1
  %447 = zext nneg i32 %446 to i64
  %448 = and i64 %427, %447
  %449 = trunc i64 %443 to i32
  %450 = add i32 %449, 257
  store i32 %450, ptr %15, align 8, !tbaa !44
  store i64 %448, ptr %32, align 8, !tbaa !50
  store i32 %444, ptr %34, align 8, !tbaa !51
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 56}
!35 = !{!"z_stream_s", !36, i64 0, !39, i64 8, !40, i64 16, !36, i64 24, !39, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !40, i64 96, !40, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!35, !36, i64 0}
!42 = !{!35, !39, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !39, i64 32}
!45 = !{!46, !39, i64 52}
!46 = !{!"inflate_state", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !40, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !36, i64 96, !36, i64 104, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !36, i64 136, !37, i64 144, !37, i64 784, !37, i64 1360, !39, i64 7136, !39, i64 7140, !39, i64 7144}
!47 = !{!46, !39, i64 56}
!48 = !{!46, !39, i64 60}
!49 = !{!46, !36, i64 64}
!50 = !{!46, !40, i64 72}
!51 = !{!46, !39, i64 80}
!52 = !{!46, !36, i64 96}
!53 = !{!46, !36, i64 104}
!54 = !{!46, !39, i64 112}
!55 = !{!46, !39, i64 116}
!56 = !{!37, !37, i64 0}
!57 = !{!46, !39, i64 7136}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = distinct !{!64, !59}
!65 = distinct !{!65, !59}
!66 = !{!35, !36, i64 48}
!67 = !{!46, !39, i64 0}
