; ModuleID = 'src/rpe.c'
source_filename = "src/rpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"exp <= 5\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"src/rpe.c\00", align 1
@__PRETTY_FUNCTION__.APCM_quantization = private unnamed_addr constant [63 x i8] c"void APCM_quantization(word *, word *, word *, word *, word *)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"exp <= 6 && exp >= 0\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"exp <= 4096 && exp >= -4096\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"mant >= 0 && mant <= 7\00", align 1
@gsm_NRFAC = external local_unnamed_addr global [8 x i16], align 16
@.str.6 = private unnamed_addr constant [25 x i8] c"temp1 >= 0 && temp1 < 16\00", align 1
@__PRETTY_FUNCTION__.APCM_inverse_quantization = private unnamed_addr constant [59 x i8] c"void APCM_inverse_quantization(word *, word, word, word *)\00", align 1
@gsm_FAC = external local_unnamed_addr global [8 x i16], align 16
@.str.7 = private unnamed_addr constant [23 x i8] c"*xMc <= 7 && *xMc >= 0\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"0 <= Mc && Mc <= 3\00", align 1
@__PRETTY_FUNCTION__.RPE_grid_positioning = private unnamed_addr constant [48 x i8] c"void RPE_grid_positioning(word, word *, word *)\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"exp >= -4 && exp <= 6\00", align 1
@__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant = private unnamed_addr constant [63 x i8] c"void APCM_quantization_xmaxc_to_exp_mant(word, word *, word *)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_RPE_Encoding(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca [40 x i16], align 16
  %7 = alloca [13 x i16], align 16
  %8 = alloca [13 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %8) #6
  %9 = getelementptr inbounds i16, ptr %1, i64 -5
  br label %10

10:                                               ; preds = %10, %5
  %11 = phi i64 [ 0, %5 ], [ %15, %10 ]
  %12 = getelementptr inbounds i16, ptr %9, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !5
  %14 = sext i16 %13 to i64
  %15 = add nuw nsw i64 %11, 1
  %16 = getelementptr inbounds i16, ptr %9, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !5
  %18 = sext i16 %17 to i64
  %19 = getelementptr i16, ptr %12, i64 3
  %20 = load i16, ptr %19, align 2, !tbaa !5
  %21 = sext i16 %20 to i64
  %22 = getelementptr i16, ptr %12, i64 4
  %23 = load i16, ptr %22, align 2, !tbaa !5
  %24 = sext i16 %23 to i64
  %25 = getelementptr i16, ptr %12, i64 5
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = sext i16 %26 to i64
  %28 = shl nsw i64 %27, 13
  %29 = getelementptr i16, ptr %12, i64 6
  %30 = load i16, ptr %29, align 2, !tbaa !5
  %31 = sext i16 %30 to i64
  %32 = getelementptr i16, ptr %12, i64 7
  %33 = load i16, ptr %32, align 2, !tbaa !5
  %34 = sext i16 %33 to i64
  %35 = getelementptr i16, ptr %12, i64 9
  %36 = load i16, ptr %35, align 2, !tbaa !5
  %37 = sext i16 %36 to i64
  %38 = getelementptr i16, ptr %12, i64 10
  %39 = load i16, ptr %38, align 2, !tbaa !5
  %40 = sext i16 %39 to i64
  %41 = add nsw i64 %31, %24
  %42 = mul nsw i64 %41, 5741
  %43 = add nsw i64 %34, %21
  %44 = mul nsw i64 %43, 2054
  %45 = add nsw i64 %37, %18
  %46 = mul nsw i64 %45, -374
  %47 = add nsw i64 %40, %14
  %48 = mul nsw i64 %47, -134
  %49 = or disjoint i64 %28, 4096
  %50 = add nsw i64 %49, %42
  %51 = add nsw i64 %50, %44
  %52 = add nsw i64 %51, %46
  %53 = add nsw i64 %52, %48
  %54 = ashr i64 %53, 13
  %55 = tail call i64 @llvm.smin.i64(i64 %54, i64 32767)
  %56 = tail call i64 @llvm.smax.i64(i64 %55, i64 -32768)
  %57 = trunc i64 %56 to i16
  %58 = getelementptr inbounds i16, ptr %6, i64 %11
  store i16 %57, ptr %58, align 2, !tbaa !5
  %59 = icmp eq i64 %15, 40
  br i1 %59, label %60, label %10, !llvm.loop !9

60:                                               ; preds = %10
  %61 = getelementptr inbounds i16, ptr %6, i64 3
  %62 = load i16, ptr %61, align 2, !tbaa !5
  %63 = ashr i16 %62, 2
  %64 = sext i16 %63 to i64
  %65 = mul nsw i64 %64, %64
  %66 = getelementptr inbounds i16, ptr %6, i64 6
  %67 = load i16, ptr %66, align 4, !tbaa !5
  %68 = ashr i16 %67, 2
  %69 = sext i16 %68 to i64
  %70 = mul nsw i64 %69, %69
  %71 = add nuw nsw i64 %70, %65
  %72 = getelementptr inbounds i16, ptr %6, i64 9
  %73 = load i16, ptr %72, align 2, !tbaa !5
  %74 = ashr i16 %73, 2
  %75 = sext i16 %74 to i64
  %76 = mul nsw i64 %75, %75
  %77 = add nuw nsw i64 %71, %76
  %78 = getelementptr inbounds i16, ptr %6, i64 12
  %79 = load i16, ptr %78, align 8, !tbaa !5
  %80 = ashr i16 %79, 2
  %81 = sext i16 %80 to i64
  %82 = mul nsw i64 %81, %81
  %83 = add nuw nsw i64 %77, %82
  %84 = getelementptr inbounds i16, ptr %6, i64 15
  %85 = load i16, ptr %84, align 2, !tbaa !5
  %86 = ashr i16 %85, 2
  %87 = sext i16 %86 to i64
  %88 = mul nsw i64 %87, %87
  %89 = add nuw nsw i64 %83, %88
  %90 = getelementptr inbounds i16, ptr %6, i64 18
  %91 = load i16, ptr %90, align 4, !tbaa !5
  %92 = ashr i16 %91, 2
  %93 = sext i16 %92 to i64
  %94 = mul nsw i64 %93, %93
  %95 = add nuw nsw i64 %89, %94
  %96 = getelementptr inbounds i16, ptr %6, i64 21
  %97 = load i16, ptr %96, align 2, !tbaa !5
  %98 = ashr i16 %97, 2
  %99 = sext i16 %98 to i64
  %100 = mul nsw i64 %99, %99
  %101 = add nuw nsw i64 %95, %100
  %102 = getelementptr inbounds i16, ptr %6, i64 24
  %103 = load i16, ptr %102, align 16, !tbaa !5
  %104 = ashr i16 %103, 2
  %105 = sext i16 %104 to i64
  %106 = mul nsw i64 %105, %105
  %107 = add nsw i64 %101, %106
  %108 = getelementptr inbounds i16, ptr %6, i64 27
  %109 = load i16, ptr %108, align 2, !tbaa !5
  %110 = ashr i16 %109, 2
  %111 = sext i16 %110 to i64
  %112 = mul nsw i64 %111, %111
  %113 = add nsw i64 %107, %112
  %114 = getelementptr inbounds i16, ptr %6, i64 30
  %115 = load i16, ptr %114, align 4, !tbaa !5
  %116 = ashr i16 %115, 2
  %117 = sext i16 %116 to i64
  %118 = mul nsw i64 %117, %117
  %119 = add nsw i64 %113, %118
  %120 = getelementptr inbounds i16, ptr %6, i64 33
  %121 = load i16, ptr %120, align 2, !tbaa !5
  %122 = ashr i16 %121, 2
  %123 = sext i16 %122 to i64
  %124 = mul nsw i64 %123, %123
  %125 = add nsw i64 %119, %124
  %126 = getelementptr inbounds i16, ptr %6, i64 36
  %127 = load i16, ptr %126, align 8, !tbaa !5
  %128 = ashr i16 %127, 2
  %129 = sext i16 %128 to i64
  %130 = mul nsw i64 %129, %129
  %131 = add nsw i64 %125, %130
  %132 = load i16, ptr %6, align 16, !tbaa !5
  %133 = ashr i16 %132, 2
  %134 = sext i16 %133 to i64
  %135 = mul nsw i64 %134, %134
  %136 = add nsw i64 %131, %135
  %137 = shl nsw i64 %136, 1
  %138 = getelementptr inbounds i16, ptr %6, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !5
  %140 = ashr i16 %139, 2
  %141 = sext i16 %140 to i64
  %142 = mul nsw i64 %141, %141
  %143 = getelementptr inbounds i16, ptr %6, i64 4
  %144 = load i16, ptr %143, align 8, !tbaa !5
  %145 = ashr i16 %144, 2
  %146 = sext i16 %145 to i64
  %147 = mul nsw i64 %146, %146
  %148 = add nuw nsw i64 %147, %142
  %149 = getelementptr inbounds i16, ptr %6, i64 7
  %150 = load i16, ptr %149, align 2, !tbaa !5
  %151 = ashr i16 %150, 2
  %152 = sext i16 %151 to i64
  %153 = mul nsw i64 %152, %152
  %154 = add nuw nsw i64 %148, %153
  %155 = getelementptr inbounds i16, ptr %6, i64 10
  %156 = load i16, ptr %155, align 4, !tbaa !5
  %157 = ashr i16 %156, 2
  %158 = sext i16 %157 to i64
  %159 = mul nsw i64 %158, %158
  %160 = add nuw nsw i64 %154, %159
  %161 = getelementptr inbounds i16, ptr %6, i64 13
  %162 = load i16, ptr %161, align 2, !tbaa !5
  %163 = ashr i16 %162, 2
  %164 = sext i16 %163 to i64
  %165 = mul nsw i64 %164, %164
  %166 = add nuw nsw i64 %160, %165
  %167 = getelementptr inbounds i16, ptr %6, i64 16
  %168 = load i16, ptr %167, align 16, !tbaa !5
  %169 = ashr i16 %168, 2
  %170 = sext i16 %169 to i64
  %171 = mul nsw i64 %170, %170
  %172 = add nuw nsw i64 %166, %171
  %173 = getelementptr inbounds i16, ptr %6, i64 19
  %174 = load i16, ptr %173, align 2, !tbaa !5
  %175 = ashr i16 %174, 2
  %176 = sext i16 %175 to i64
  %177 = mul nsw i64 %176, %176
  %178 = add nuw nsw i64 %172, %177
  %179 = getelementptr inbounds i16, ptr %6, i64 22
  %180 = load i16, ptr %179, align 4, !tbaa !5
  %181 = ashr i16 %180, 2
  %182 = sext i16 %181 to i64
  %183 = mul nsw i64 %182, %182
  %184 = add nsw i64 %178, %183
  %185 = getelementptr inbounds i16, ptr %6, i64 25
  %186 = load i16, ptr %185, align 2, !tbaa !5
  %187 = ashr i16 %186, 2
  %188 = sext i16 %187 to i64
  %189 = mul nsw i64 %188, %188
  %190 = add nsw i64 %184, %189
  %191 = getelementptr inbounds i16, ptr %6, i64 28
  %192 = load i16, ptr %191, align 8, !tbaa !5
  %193 = ashr i16 %192, 2
  %194 = sext i16 %193 to i64
  %195 = mul nsw i64 %194, %194
  %196 = add nsw i64 %190, %195
  %197 = getelementptr inbounds i16, ptr %6, i64 31
  %198 = load i16, ptr %197, align 2, !tbaa !5
  %199 = ashr i16 %198, 2
  %200 = sext i16 %199 to i64
  %201 = mul nsw i64 %200, %200
  %202 = add nsw i64 %196, %201
  %203 = getelementptr inbounds i16, ptr %6, i64 34
  %204 = load i16, ptr %203, align 4, !tbaa !5
  %205 = ashr i16 %204, 2
  %206 = sext i16 %205 to i64
  %207 = mul nsw i64 %206, %206
  %208 = add nsw i64 %202, %207
  %209 = getelementptr inbounds i16, ptr %6, i64 37
  %210 = load i16, ptr %209, align 2, !tbaa !5
  %211 = ashr i16 %210, 2
  %212 = sext i16 %211 to i64
  %213 = mul nsw i64 %212, %212
  %214 = add nsw i64 %208, %213
  %215 = shl nsw i64 %214, 1
  %216 = icmp sgt i64 %215, %137
  %217 = tail call i64 @llvm.smax.i64(i64 %215, i64 %137)
  %218 = zext i1 %216 to i16
  %219 = getelementptr inbounds i16, ptr %6, i64 2
  %220 = load i16, ptr %219, align 4, !tbaa !5
  %221 = ashr i16 %220, 2
  %222 = sext i16 %221 to i64
  %223 = mul nsw i64 %222, %222
  %224 = getelementptr inbounds i16, ptr %6, i64 5
  %225 = load i16, ptr %224, align 2, !tbaa !5
  %226 = ashr i16 %225, 2
  %227 = sext i16 %226 to i64
  %228 = mul nsw i64 %227, %227
  %229 = add nuw nsw i64 %228, %223
  %230 = getelementptr inbounds i16, ptr %6, i64 8
  %231 = load i16, ptr %230, align 16, !tbaa !5
  %232 = ashr i16 %231, 2
  %233 = sext i16 %232 to i64
  %234 = mul nsw i64 %233, %233
  %235 = add nuw nsw i64 %229, %234
  %236 = getelementptr inbounds i16, ptr %6, i64 11
  %237 = load i16, ptr %236, align 2, !tbaa !5
  %238 = ashr i16 %237, 2
  %239 = sext i16 %238 to i64
  %240 = mul nsw i64 %239, %239
  %241 = add nuw nsw i64 %235, %240
  %242 = getelementptr inbounds i16, ptr %6, i64 14
  %243 = load i16, ptr %242, align 4, !tbaa !5
  %244 = ashr i16 %243, 2
  %245 = sext i16 %244 to i64
  %246 = mul nsw i64 %245, %245
  %247 = add nuw nsw i64 %241, %246
  %248 = getelementptr inbounds i16, ptr %6, i64 17
  %249 = load i16, ptr %248, align 2, !tbaa !5
  %250 = ashr i16 %249, 2
  %251 = sext i16 %250 to i64
  %252 = mul nsw i64 %251, %251
  %253 = add nuw nsw i64 %247, %252
  %254 = getelementptr inbounds i16, ptr %6, i64 20
  %255 = load i16, ptr %254, align 8, !tbaa !5
  %256 = ashr i16 %255, 2
  %257 = sext i16 %256 to i64
  %258 = mul nsw i64 %257, %257
  %259 = add nuw nsw i64 %253, %258
  %260 = getelementptr inbounds i16, ptr %6, i64 23
  %261 = load i16, ptr %260, align 2, !tbaa !5
  %262 = ashr i16 %261, 2
  %263 = sext i16 %262 to i64
  %264 = mul nsw i64 %263, %263
  %265 = add nsw i64 %259, %264
  %266 = getelementptr inbounds i16, ptr %6, i64 26
  %267 = load i16, ptr %266, align 4, !tbaa !5
  %268 = ashr i16 %267, 2
  %269 = sext i16 %268 to i64
  %270 = mul nsw i64 %269, %269
  %271 = add nsw i64 %265, %270
  %272 = getelementptr inbounds i16, ptr %6, i64 29
  %273 = load i16, ptr %272, align 2, !tbaa !5
  %274 = ashr i16 %273, 2
  %275 = sext i16 %274 to i64
  %276 = mul nsw i64 %275, %275
  %277 = add nsw i64 %271, %276
  %278 = getelementptr inbounds i16, ptr %6, i64 32
  %279 = load i16, ptr %278, align 16, !tbaa !5
  %280 = ashr i16 %279, 2
  %281 = sext i16 %280 to i64
  %282 = mul nsw i64 %281, %281
  %283 = add nsw i64 %277, %282
  %284 = getelementptr inbounds i16, ptr %6, i64 35
  %285 = load i16, ptr %284, align 2, !tbaa !5
  %286 = ashr i16 %285, 2
  %287 = sext i16 %286 to i64
  %288 = mul nsw i64 %287, %287
  %289 = add nsw i64 %283, %288
  %290 = getelementptr inbounds i16, ptr %6, i64 38
  %291 = load i16, ptr %290, align 4, !tbaa !5
  %292 = ashr i16 %291, 2
  %293 = sext i16 %292 to i64
  %294 = mul nsw i64 %293, %293
  %295 = add nsw i64 %289, %294
  %296 = shl nsw i64 %295, 1
  %297 = icmp sgt i64 %296, %217
  %298 = tail call i64 @llvm.smax.i64(i64 %296, i64 %217)
  %299 = select i1 %297, i16 2, i16 %218
  %300 = getelementptr inbounds i16, ptr %6, i64 39
  %301 = load i16, ptr %300, align 2, !tbaa !5
  %302 = ashr i16 %301, 2
  %303 = sext i16 %302 to i64
  %304 = mul nsw i64 %303, %303
  %305 = add nsw i64 %304, %131
  %306 = shl nsw i64 %305, 1
  %307 = icmp sgt i64 %306, %298
  %308 = select i1 %307, i16 3, i16 %299
  %309 = zext nneg i16 %308 to i64
  %310 = getelementptr i16, ptr %6, i64 %309
  br label %311

311:                                              ; preds = %311, %60
  %312 = phi i64 [ 0, %60 ], [ %317, %311 ]
  %313 = mul nuw nsw i64 %312, 3
  %314 = getelementptr i16, ptr %310, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !5
  %316 = getelementptr inbounds i16, ptr %7, i64 %312
  store i16 %315, ptr %316, align 2, !tbaa !5
  %317 = add nuw nsw i64 %312, 1
  %318 = icmp eq i64 %317, 13
  br i1 %318, label %319, label %311, !llvm.loop !11

319:                                              ; preds = %311
  store i16 %308, ptr %3, align 2, !tbaa !5
  br label %320

320:                                              ; preds = %320, %319
  %321 = phi i64 [ 0, %319 ], [ %331, %320 ]
  %322 = phi i16 [ 0, %319 ], [ %330, %320 ]
  %323 = getelementptr inbounds i16, ptr %7, i64 %321
  %324 = load i16, ptr %323, align 2, !tbaa !5
  %325 = icmp slt i16 %324, 0
  %326 = icmp eq i16 %324, -32768
  %327 = sub i16 0, %324
  %328 = select i1 %326, i16 32767, i16 %327
  %329 = select i1 %325, i16 %328, i16 %324
  %330 = tail call i16 @llvm.smax.i16(i16 %329, i16 %322)
  %331 = add nuw nsw i64 %321, 1
  %332 = icmp eq i64 %331, 13
  br i1 %332, label %333, label %320, !llvm.loop !12

333:                                              ; preds = %320
  %334 = zext nneg i16 %330 to i32
  %335 = lshr i16 %330, 9
  br label %336

336:                                              ; preds = %343, %333
  %337 = phi i32 [ 0, %333 ], [ %351, %343 ]
  %338 = phi i32 [ 0, %333 ], [ %347, %343 ]
  %339 = phi i16 [ %335, %333 ], [ %344, %343 ]
  %340 = phi i16 [ 0, %333 ], [ %350, %343 ]
  %341 = icmp slt i16 %340, 6
  br i1 %341, label %343, label %342

342:                                              ; preds = %336
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #7
  unreachable

343:                                              ; preds = %336
  %344 = lshr i16 %339, 1
  %345 = icmp eq i16 %339, 0
  %346 = zext i1 %345 to i32
  %347 = or i32 %338, %346
  %348 = icmp eq i32 %347, 0
  %349 = zext i1 %348 to i16
  %350 = add i16 %340, %349
  %351 = add nuw nsw i32 %337, 1
  %352 = icmp eq i32 %351, 6
  br i1 %352, label %353, label %336, !llvm.loop !13

353:                                              ; preds = %343
  %354 = icmp ult i16 %350, 7
  br i1 %354, label %356, label %355

355:                                              ; preds = %353
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 297, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #7
  unreachable

356:                                              ; preds = %353
  %357 = add nuw nsw i16 %350, 5
  %358 = zext nneg i16 %357 to i32
  %359 = lshr i32 %334, %358
  %360 = trunc i32 %359 to i16
  %361 = shl nuw nsw i16 %350, 3
  %362 = tail call signext i16 @gsm_add(i16 noundef signext %360, i16 noundef signext %361) #6
  %363 = icmp sgt i16 %362, 15
  %364 = lshr i16 %362, 3
  %365 = add nsw i16 %364, -1
  %366 = select i1 %363, i16 %365, i16 0
  %367 = shl i16 %366, 3
  %368 = sub i16 %362, %367
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %356
  %371 = icmp slt i16 %368, 8
  br i1 %371, label %372, label %379

372:                                              ; preds = %370, %372
  %373 = phi i16 [ %376, %372 ], [ %368, %370 ]
  %374 = phi i16 [ %377, %372 ], [ %366, %370 ]
  %375 = shl i16 %373, 1
  %376 = or disjoint i16 %375, 1
  %377 = add i16 %374, -1
  %378 = icmp slt i16 %376, 8
  br i1 %378, label %372, label %379, !llvm.loop !14

379:                                              ; preds = %372, %370
  %380 = phi i16 [ %366, %370 ], [ %377, %372 ]
  %381 = phi i16 [ %368, %370 ], [ %376, %372 ]
  %382 = add nsw i16 %381, -8
  br label %383

383:                                              ; preds = %379, %356
  %384 = phi i16 [ %380, %379 ], [ -4, %356 ]
  %385 = phi i16 [ %382, %379 ], [ 7, %356 ]
  %386 = add i16 %384, 4
  %387 = icmp ult i16 %386, 11
  br i1 %387, label %389, label %388

388:                                              ; preds = %383
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #7
  unreachable

389:                                              ; preds = %383
  %390 = icmp ult i16 %385, 8
  br i1 %390, label %392, label %391

391:                                              ; preds = %389
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #7
  unreachable

392:                                              ; preds = %389
  %393 = add i16 %384, 4096
  %394 = icmp ult i16 %393, 8193
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 323, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #7
  unreachable

396:                                              ; preds = %392
  %397 = sub i16 6, %384
  %398 = zext nneg i16 %385 to i64
  %399 = getelementptr inbounds [8 x i16], ptr @gsm_NRFAC, i64 0, i64 %398
  %400 = load i16, ptr %399, align 2, !tbaa !5
  %401 = icmp ult i16 %397, 16
  %402 = zext nneg i16 %397 to i32
  %403 = sext i16 %400 to i64
  br i1 %401, label %404, label %422

404:                                              ; preds = %396, %404
  %405 = phi i64 [ %420, %404 ], [ 0, %396 ]
  %406 = getelementptr inbounds i16, ptr %7, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !5
  %408 = zext i16 %407 to i32
  %409 = shl nuw nsw i32 %408, %402
  %410 = zext nneg i32 %409 to i64
  %411 = shl i64 %410, 48
  %412 = ashr exact i64 %411, 48
  %413 = mul nsw i64 %412, %403
  %414 = trunc i64 %413 to i32
  %415 = shl i32 %414, 1
  %416 = ashr i32 %415, 28
  %417 = trunc i32 %416 to i16
  %418 = add nsw i16 %417, 4
  %419 = getelementptr inbounds i16, ptr %4, i64 %405
  store i16 %418, ptr %419, align 2, !tbaa !5
  %420 = add nuw nsw i64 %405, 1
  %421 = icmp eq i64 %420, 13
  br i1 %421, label %423, label %404, !llvm.loop !15

422:                                              ; preds = %396
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 331, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #7
  unreachable

423:                                              ; preds = %404
  store i16 %362, ptr %2, align 2, !tbaa !5
  call fastcc void @APCM_inverse_quantization(ptr noundef %4, i16 noundef signext %385, i16 noundef signext %384, ptr noundef nonnull %8)
  %424 = load i16, ptr %3, align 2, !tbaa !5
  %425 = icmp ult i16 %424, 4
  br i1 %425, label %427, label %426

426:                                              ; preds = %423
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull @__PRETTY_FUNCTION__.RPE_grid_positioning) #7
  unreachable

427:                                              ; preds = %423
  switch i16 %424, label %457 [
    i16 3, label %428
    i16 2, label %430
    i16 1, label %435
    i16 0, label %440
  ]

428:                                              ; preds = %427
  %429 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 0, ptr %1, align 2, !tbaa !5
  br label %430

430:                                              ; preds = %427, %428, %440
  %431 = phi ptr [ %444, %440 ], [ %8, %428 ], [ %8, %427 ]
  %432 = phi ptr [ %446, %440 ], [ %429, %428 ], [ %1, %427 ]
  %433 = phi i32 [ %447, %440 ], [ 13, %428 ], [ 13, %427 ]
  %434 = getelementptr inbounds i16, ptr %432, i64 1
  store i16 0, ptr %432, align 2, !tbaa !5
  br label %435

435:                                              ; preds = %430, %427
  %436 = phi ptr [ %431, %430 ], [ %8, %427 ]
  %437 = phi ptr [ %434, %430 ], [ %1, %427 ]
  %438 = phi i32 [ %433, %430 ], [ 13, %427 ]
  %439 = getelementptr inbounds i16, ptr %437, i64 1
  store i16 0, ptr %437, align 2, !tbaa !5
  br label %440

440:                                              ; preds = %435, %427
  %441 = phi ptr [ %8, %427 ], [ %436, %435 ]
  %442 = phi ptr [ %1, %427 ], [ %439, %435 ]
  %443 = phi i32 [ 13, %427 ], [ %438, %435 ]
  %444 = getelementptr inbounds i16, ptr %441, i64 1
  %445 = load i16, ptr %441, align 2, !tbaa !5
  %446 = getelementptr i16, ptr %442, i64 1
  store i16 %445, ptr %442, align 2, !tbaa !5
  %447 = add nsw i32 %443, -1
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %430, !llvm.loop !16

449:                                              ; preds = %440
  %450 = icmp eq i16 %424, 3
  br i1 %450, label %458, label %451

451:                                              ; preds = %449
  %452 = tail call i16 @llvm.smax.i16(i16 %424, i16 2)
  %453 = sub nsw i16 %452, %424
  %454 = zext i16 %453 to i64
  %455 = shl nuw nsw i64 %454, 1
  %456 = add nuw nsw i64 %455, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %446, i8 0, i64 %456, i1 false), !tbaa !5
  br label %458

457:                                              ; preds = %427
  unreachable

458:                                              ; preds = %449, %451
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @APCM_inverse_quantization(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = icmp ult i16 %1, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 364, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_inverse_quantization) #7
  unreachable

7:                                                ; preds = %4
  %8 = zext nneg i16 %1 to i64
  %9 = getelementptr inbounds [8 x i16], ptr @gsm_FAC, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !5
  %11 = tail call signext i16 @gsm_sub(i16 noundef signext 6, i16 noundef signext %2) #6
  %12 = tail call signext i16 @gsm_sub(i16 noundef signext %11, i16 noundef signext 1) #6
  %13 = sext i16 %12 to i32
  %14 = tail call signext i16 @gsm_asl(i16 noundef signext 1, i32 noundef %13) #6
  %15 = sext i16 %10 to i64
  %16 = shl nsw i64 %15, 33
  %17 = sext i16 %11 to i32
  br label %18

18:                                               ; preds = %7, %25
  %19 = phi i32 [ 12, %7 ], [ %37, %25 ]
  %20 = phi ptr [ %0, %7 ], [ %26, %25 ]
  %21 = phi ptr [ %3, %7 ], [ %36, %25 ]
  %22 = load i16, ptr %20, align 2, !tbaa !5
  %23 = icmp ult i16 %22, 8
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 372, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_inverse_quantization) #7
  unreachable

25:                                               ; preds = %18
  %26 = getelementptr inbounds i16, ptr %20, i64 1
  %27 = shl nuw i16 %22, 13
  %28 = add i16 %27, -28672
  %29 = sext i16 %28 to i64
  %30 = mul i64 %16, %29
  %31 = add i64 %30, 140737488355328
  %32 = lshr i64 %31, 48
  %33 = trunc i64 %32 to i16
  %34 = tail call i16 @llvm.sadd.sat.i16(i16 %33, i16 %14)
  %35 = tail call signext i16 @gsm_asr(i16 noundef signext %34, i32 noundef %17) #6
  %36 = getelementptr inbounds i16, ptr %21, i64 1
  store i16 %35, ptr %21, align 2, !tbaa !5
  %37 = add nsw i32 %19, -1
  %38 = icmp eq i32 %19, 0
  br i1 %38, label %39, label %18, !llvm.loop !17

39:                                               ; preds = %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_RPE_Decoding(ptr nocapture noundef readnone %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [13 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %6) #6
  %7 = icmp sgt i16 %1, 15
  %8 = lshr i16 %1, 3
  %9 = add nsw i16 %8, -1
  %10 = select i1 %7, i16 %9, i16 0
  %11 = shl i16 %10, 3
  %12 = sub i16 %1, %11
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %5
  %15 = icmp slt i16 %12, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %14, %16
  %17 = phi i16 [ %20, %16 ], [ %12, %14 ]
  %18 = phi i16 [ %21, %16 ], [ %10, %14 ]
  %19 = shl i16 %17, 1
  %20 = or disjoint i16 %19, 1
  %21 = add i16 %18, -1
  %22 = icmp slt i16 %20, 8
  br i1 %22, label %16, label %23, !llvm.loop !14

23:                                               ; preds = %16, %14
  %24 = phi i16 [ %10, %14 ], [ %21, %16 ]
  %25 = phi i16 [ %12, %14 ], [ %20, %16 ]
  %26 = add nsw i16 %25, -8
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i16 [ %24, %23 ], [ -4, %5 ]
  %29 = phi i16 [ %26, %23 ], [ 7, %5 ]
  %30 = add i16 %28, 4
  %31 = icmp ult i16 %30, 11
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #7
  unreachable

33:                                               ; preds = %27
  %34 = icmp ult i16 %29, 8
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #7
  unreachable

36:                                               ; preds = %33
  call fastcc void @APCM_inverse_quantization(ptr noundef %3, i16 noundef signext %29, i16 noundef signext %28, ptr noundef nonnull %6)
  %37 = icmp ult i16 %2, 4
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull @__PRETTY_FUNCTION__.RPE_grid_positioning) #7
  unreachable

39:                                               ; preds = %36
  switch i16 %2, label %69 [
    i16 3, label %40
    i16 2, label %42
    i16 1, label %47
    i16 0, label %52
  ]

40:                                               ; preds = %39
  %41 = getelementptr inbounds i16, ptr %4, i64 1
  store i16 0, ptr %4, align 2, !tbaa !5
  br label %42

42:                                               ; preds = %39, %40, %52
  %43 = phi ptr [ %56, %52 ], [ %6, %40 ], [ %6, %39 ]
  %44 = phi ptr [ %58, %52 ], [ %41, %40 ], [ %4, %39 ]
  %45 = phi i32 [ %59, %52 ], [ 13, %40 ], [ 13, %39 ]
  %46 = getelementptr inbounds i16, ptr %44, i64 1
  store i16 0, ptr %44, align 2, !tbaa !5
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi ptr [ %43, %42 ], [ %6, %39 ]
  %49 = phi ptr [ %46, %42 ], [ %4, %39 ]
  %50 = phi i32 [ %45, %42 ], [ 13, %39 ]
  %51 = getelementptr inbounds i16, ptr %49, i64 1
  store i16 0, ptr %49, align 2, !tbaa !5
  br label %52

52:                                               ; preds = %47, %39
  %53 = phi ptr [ %6, %39 ], [ %48, %47 ]
  %54 = phi ptr [ %4, %39 ], [ %51, %47 ]
  %55 = phi i32 [ 13, %39 ], [ %50, %47 ]
  %56 = getelementptr inbounds i16, ptr %53, i64 1
  %57 = load i16, ptr %53, align 2, !tbaa !5
  %58 = getelementptr i16, ptr %54, i64 1
  store i16 %57, ptr %54, align 2, !tbaa !5
  %59 = add nsw i32 %55, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %42, !llvm.loop !16

61:                                               ; preds = %52
  %62 = icmp eq i16 %2, 3
  br i1 %62, label %70, label %63

63:                                               ; preds = %61
  %64 = tail call i16 @llvm.smax.i16(i16 %2, i16 2)
  %65 = sub nsw i16 %64, %2
  %66 = zext i16 %65 to i64
  %67 = shl nuw nsw i64 %66, 1
  %68 = add nuw nsw i64 %67, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %58, i8 0, i64 %68, i1 false), !tbaa !5
  br label %70

69:                                               ; preds = %39
  unreachable

70:                                               ; preds = %61, %63
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %6) #6
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @gsm_add(i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare signext i16 @gsm_sub(i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare signext i16 @gsm_asl(i16 noundef signext, i32 noundef) local_unnamed_addr #3

declare signext i16 @gsm_asr(i16 noundef signext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
