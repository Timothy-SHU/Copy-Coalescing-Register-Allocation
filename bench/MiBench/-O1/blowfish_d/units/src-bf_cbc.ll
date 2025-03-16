; ModuleID = 'src/bf_cbc.c'
source_filename = "src/bf_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @BF_cbc_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #4
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = load i8, ptr %4, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  %14 = load i8, ptr %9, align 1, !tbaa !5
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or disjoint i64 %16, %12
  %18 = getelementptr inbounds i8, ptr %4, i64 3
  %19 = load i8, ptr %13, align 1, !tbaa !5
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %22 = or disjoint i64 %17, %21
  %23 = getelementptr inbounds i8, ptr %4, i64 4
  %24 = load i8, ptr %18, align 1, !tbaa !5
  %25 = zext i8 %24 to i64
  %26 = or disjoint i64 %22, %25
  %27 = getelementptr inbounds i8, ptr %4, i64 5
  %28 = load i8, ptr %23, align 1, !tbaa !5
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 24
  %31 = getelementptr inbounds i8, ptr %4, i64 6
  %32 = load i8, ptr %27, align 1, !tbaa !5
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 16
  %35 = or disjoint i64 %34, %30
  %36 = getelementptr inbounds i8, ptr %4, i64 7
  %37 = load i8, ptr %31, align 1, !tbaa !5
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = or disjoint i64 %35, %39
  %41 = load i8, ptr %36, align 1, !tbaa !5
  %42 = zext i8 %41 to i64
  %43 = or disjoint i64 %40, %42
  %44 = icmp sgt i64 %2, 7
  br i1 %8, label %210, label %45

45:                                               ; preds = %6
  br i1 %44, label %46, label %118

46:                                               ; preds = %45
  %47 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ %2, %46 ], [ %54, %48 ]
  %50 = phi i64 [ %43, %46 ], [ %94, %48 ]
  %51 = phi i64 [ %26, %46 ], [ %93, %48 ]
  %52 = phi ptr [ %0, %46 ], [ %87, %48 ]
  %53 = phi ptr [ %1, %46 ], [ %116, %48 ]
  %54 = add nsw i64 %49, -8
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  %56 = load i8, ptr %52, align 1, !tbaa !5
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 24
  %59 = getelementptr inbounds i8, ptr %52, i64 2
  %60 = load i8, ptr %55, align 1, !tbaa !5
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 16
  %63 = or disjoint i64 %62, %58
  %64 = getelementptr inbounds i8, ptr %52, i64 3
  %65 = load i8, ptr %59, align 1, !tbaa !5
  %66 = zext i8 %65 to i64
  %67 = shl nuw nsw i64 %66, 8
  %68 = or disjoint i64 %63, %67
  %69 = getelementptr inbounds i8, ptr %52, i64 4
  %70 = load i8, ptr %64, align 1, !tbaa !5
  %71 = zext i8 %70 to i64
  %72 = or disjoint i64 %68, %71
  %73 = getelementptr inbounds i8, ptr %52, i64 5
  %74 = load i8, ptr %69, align 1, !tbaa !5
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 24
  %77 = getelementptr inbounds i8, ptr %52, i64 6
  %78 = load i8, ptr %73, align 1, !tbaa !5
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 16
  %81 = or disjoint i64 %80, %76
  %82 = getelementptr inbounds i8, ptr %52, i64 7
  %83 = load i8, ptr %77, align 1, !tbaa !5
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 8
  %86 = or disjoint i64 %81, %85
  %87 = getelementptr inbounds i8, ptr %52, i64 8
  %88 = load i8, ptr %82, align 1, !tbaa !5
  %89 = zext i8 %88 to i64
  %90 = or disjoint i64 %86, %89
  %91 = xor i64 %72, %51
  %92 = xor i64 %90, %50
  store i64 %91, ptr %7, align 16, !tbaa !8
  store i64 %92, ptr %47, align 8, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1) #4
  %93 = load i64, ptr %7, align 16, !tbaa !8
  %94 = load i64, ptr %47, align 8, !tbaa !8
  %95 = lshr i64 %93, 24
  %96 = trunc i64 %95 to i8
  %97 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %96, ptr %53, align 1, !tbaa !5
  %98 = lshr i64 %93, 16
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds i8, ptr %53, i64 2
  store i8 %99, ptr %97, align 1, !tbaa !5
  %101 = lshr i64 %93, 8
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds i8, ptr %53, i64 3
  store i8 %102, ptr %100, align 1, !tbaa !5
  %104 = trunc i64 %93 to i8
  %105 = getelementptr inbounds i8, ptr %53, i64 4
  store i8 %104, ptr %103, align 1, !tbaa !5
  %106 = lshr i64 %94, 24
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds i8, ptr %53, i64 5
  store i8 %107, ptr %105, align 1, !tbaa !5
  %109 = lshr i64 %94, 16
  %110 = trunc i64 %109 to i8
  %111 = getelementptr inbounds i8, ptr %53, i64 6
  store i8 %110, ptr %108, align 1, !tbaa !5
  %112 = lshr i64 %94, 8
  %113 = trunc i64 %112 to i8
  %114 = getelementptr inbounds i8, ptr %53, i64 7
  store i8 %113, ptr %111, align 1, !tbaa !5
  %115 = trunc i64 %94 to i8
  %116 = getelementptr inbounds i8, ptr %53, i64 8
  store i8 %115, ptr %114, align 1, !tbaa !5
  %117 = icmp sgt i64 %49, 15
  br i1 %117, label %48, label %118, !llvm.loop !10

118:                                              ; preds = %48, %45
  %119 = phi ptr [ %1, %45 ], [ %116, %48 ]
  %120 = phi ptr [ %0, %45 ], [ %87, %48 ]
  %121 = phi i64 [ %26, %45 ], [ %93, %48 ]
  %122 = phi i64 [ %43, %45 ], [ %94, %48 ]
  %123 = phi i64 [ %2, %45 ], [ %54, %48 ]
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %365, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds i8, ptr %120, i64 %123
  switch i64 %123, label %181 [
    i64 1, label %172
    i64 7, label %127
    i64 6, label %132
    i64 5, label %140
    i64 4, label %148
    i64 3, label %154
    i64 2, label %163
  ]

127:                                              ; preds = %125
  %128 = getelementptr inbounds i8, ptr %126, i64 -1
  %129 = load i8, ptr %128, align 1, !tbaa !5
  %130 = zext i8 %129 to i64
  %131 = shl nuw nsw i64 %130, 8
  br label %132

132:                                              ; preds = %125, %127
  %133 = phi ptr [ %126, %125 ], [ %128, %127 ]
  %134 = phi i64 [ 0, %125 ], [ %131, %127 ]
  %135 = getelementptr inbounds i8, ptr %133, i64 -1
  %136 = load i8, ptr %135, align 1, !tbaa !5
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, 16
  %139 = or i64 %138, %134
  br label %140

140:                                              ; preds = %125, %132
  %141 = phi ptr [ %126, %125 ], [ %135, %132 ]
  %142 = phi i64 [ 0, %125 ], [ %139, %132 ]
  %143 = getelementptr inbounds i8, ptr %141, i64 -1
  %144 = load i8, ptr %143, align 1, !tbaa !5
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 24
  %147 = or i64 %146, %142
  br label %148

148:                                              ; preds = %125, %140
  %149 = phi ptr [ %126, %125 ], [ %143, %140 ]
  %150 = phi i64 [ 0, %125 ], [ %147, %140 ]
  %151 = getelementptr inbounds i8, ptr %149, i64 -1
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = zext i8 %152 to i64
  br label %154

154:                                              ; preds = %125, %148
  %155 = phi ptr [ %126, %125 ], [ %151, %148 ]
  %156 = phi i64 [ 0, %125 ], [ %153, %148 ]
  %157 = phi i64 [ 0, %125 ], [ %150, %148 ]
  %158 = getelementptr inbounds i8, ptr %155, i64 -1
  %159 = load i8, ptr %158, align 1, !tbaa !5
  %160 = zext i8 %159 to i64
  %161 = shl nuw nsw i64 %160, 8
  %162 = or disjoint i64 %161, %156
  br label %163

163:                                              ; preds = %125, %154
  %164 = phi ptr [ %126, %125 ], [ %158, %154 ]
  %165 = phi i64 [ 0, %125 ], [ %162, %154 ]
  %166 = phi i64 [ 0, %125 ], [ %157, %154 ]
  %167 = getelementptr inbounds i8, ptr %164, i64 -1
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = zext i8 %168 to i64
  %170 = shl nuw nsw i64 %169, 16
  %171 = or i64 %170, %165
  br label %172

172:                                              ; preds = %125, %163
  %173 = phi ptr [ %126, %125 ], [ %167, %163 ]
  %174 = phi i64 [ 0, %125 ], [ %171, %163 ]
  %175 = phi i64 [ 0, %125 ], [ %166, %163 ]
  %176 = getelementptr inbounds i8, ptr %173, i64 -1
  %177 = load i8, ptr %176, align 1, !tbaa !5
  %178 = zext i8 %177 to i64
  %179 = shl nuw nsw i64 %178, 24
  %180 = or i64 %179, %174
  br label %181

181:                                              ; preds = %172, %125
  %182 = phi i64 [ 0, %125 ], [ %180, %172 ]
  %183 = phi i64 [ 0, %125 ], [ %175, %172 ]
  %184 = xor i64 %182, %121
  %185 = xor i64 %183, %122
  store i64 %184, ptr %7, align 16, !tbaa !8
  %186 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  store i64 %185, ptr %186, align 8, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1) #4
  %187 = load i64, ptr %7, align 16, !tbaa !8
  %188 = load i64, ptr %186, align 8, !tbaa !8
  %189 = lshr i64 %187, 24
  %190 = trunc i64 %189 to i8
  %191 = getelementptr inbounds i8, ptr %119, i64 1
  store i8 %190, ptr %119, align 1, !tbaa !5
  %192 = lshr i64 %187, 16
  %193 = trunc i64 %192 to i8
  %194 = getelementptr inbounds i8, ptr %119, i64 2
  store i8 %193, ptr %191, align 1, !tbaa !5
  %195 = lshr i64 %187, 8
  %196 = trunc i64 %195 to i8
  %197 = getelementptr inbounds i8, ptr %119, i64 3
  store i8 %196, ptr %194, align 1, !tbaa !5
  %198 = trunc i64 %187 to i8
  %199 = getelementptr inbounds i8, ptr %119, i64 4
  store i8 %198, ptr %197, align 1, !tbaa !5
  %200 = lshr i64 %188, 24
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds i8, ptr %119, i64 5
  store i8 %201, ptr %199, align 1, !tbaa !5
  %203 = lshr i64 %188, 16
  %204 = trunc i64 %203 to i8
  %205 = getelementptr inbounds i8, ptr %119, i64 6
  store i8 %204, ptr %202, align 1, !tbaa !5
  %206 = lshr i64 %188, 8
  %207 = trunc i64 %206 to i8
  %208 = getelementptr inbounds i8, ptr %119, i64 7
  store i8 %207, ptr %205, align 1, !tbaa !5
  %209 = trunc i64 %188 to i8
  store i8 %209, ptr %208, align 1, !tbaa !5
  br label %365

210:                                              ; preds = %6
  br i1 %44, label %211, label %283

211:                                              ; preds = %210
  %212 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  br label %213

213:                                              ; preds = %211, %213
  %214 = phi i64 [ %2, %211 ], [ %219, %213 ]
  %215 = phi i64 [ %43, %211 ], [ %255, %213 ]
  %216 = phi i64 [ %26, %211 ], [ %237, %213 ]
  %217 = phi ptr [ %0, %211 ], [ %252, %213 ]
  %218 = phi ptr [ %1, %211 ], [ %281, %213 ]
  %219 = add nsw i64 %214, -8
  %220 = getelementptr inbounds i8, ptr %217, i64 1
  %221 = load i8, ptr %217, align 1, !tbaa !5
  %222 = zext i8 %221 to i64
  %223 = shl nuw nsw i64 %222, 24
  %224 = getelementptr inbounds i8, ptr %217, i64 2
  %225 = load i8, ptr %220, align 1, !tbaa !5
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 16
  %228 = or disjoint i64 %227, %223
  %229 = getelementptr inbounds i8, ptr %217, i64 3
  %230 = load i8, ptr %224, align 1, !tbaa !5
  %231 = zext i8 %230 to i64
  %232 = shl nuw nsw i64 %231, 8
  %233 = or disjoint i64 %228, %232
  %234 = getelementptr inbounds i8, ptr %217, i64 4
  %235 = load i8, ptr %229, align 1, !tbaa !5
  %236 = zext i8 %235 to i64
  %237 = or disjoint i64 %233, %236
  %238 = getelementptr inbounds i8, ptr %217, i64 5
  %239 = load i8, ptr %234, align 1, !tbaa !5
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 24
  %242 = getelementptr inbounds i8, ptr %217, i64 6
  %243 = load i8, ptr %238, align 1, !tbaa !5
  %244 = zext i8 %243 to i64
  %245 = shl nuw nsw i64 %244, 16
  %246 = or disjoint i64 %245, %241
  %247 = getelementptr inbounds i8, ptr %217, i64 7
  %248 = load i8, ptr %242, align 1, !tbaa !5
  %249 = zext i8 %248 to i64
  %250 = shl nuw nsw i64 %249, 8
  %251 = or disjoint i64 %246, %250
  %252 = getelementptr inbounds i8, ptr %217, i64 8
  %253 = load i8, ptr %247, align 1, !tbaa !5
  %254 = zext i8 %253 to i64
  %255 = or disjoint i64 %251, %254
  store i64 %237, ptr %7, align 16, !tbaa !8
  store i64 %255, ptr %212, align 8, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 0) #4
  %256 = load i64, ptr %7, align 16, !tbaa !8
  %257 = xor i64 %256, %216
  %258 = load i64, ptr %212, align 8, !tbaa !8
  %259 = xor i64 %258, %215
  %260 = lshr i64 %257, 24
  %261 = trunc i64 %260 to i8
  %262 = getelementptr inbounds i8, ptr %218, i64 1
  store i8 %261, ptr %218, align 1, !tbaa !5
  %263 = lshr i64 %257, 16
  %264 = trunc i64 %263 to i8
  %265 = getelementptr inbounds i8, ptr %218, i64 2
  store i8 %264, ptr %262, align 1, !tbaa !5
  %266 = lshr i64 %257, 8
  %267 = trunc i64 %266 to i8
  %268 = getelementptr inbounds i8, ptr %218, i64 3
  store i8 %267, ptr %265, align 1, !tbaa !5
  %269 = trunc i64 %257 to i8
  %270 = getelementptr inbounds i8, ptr %218, i64 4
  store i8 %269, ptr %268, align 1, !tbaa !5
  %271 = lshr i64 %259, 24
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds i8, ptr %218, i64 5
  store i8 %272, ptr %270, align 1, !tbaa !5
  %274 = lshr i64 %259, 16
  %275 = trunc i64 %274 to i8
  %276 = getelementptr inbounds i8, ptr %218, i64 6
  store i8 %275, ptr %273, align 1, !tbaa !5
  %277 = lshr i64 %259, 8
  %278 = trunc i64 %277 to i8
  %279 = getelementptr inbounds i8, ptr %218, i64 7
  store i8 %278, ptr %276, align 1, !tbaa !5
  %280 = trunc i64 %259 to i8
  %281 = getelementptr inbounds i8, ptr %218, i64 8
  store i8 %280, ptr %279, align 1, !tbaa !5
  %282 = icmp sgt i64 %214, 15
  br i1 %282, label %213, label %283, !llvm.loop !12

283:                                              ; preds = %213, %210
  %284 = phi ptr [ %1, %210 ], [ %281, %213 ]
  %285 = phi ptr [ %0, %210 ], [ %252, %213 ]
  %286 = phi i64 [ %26, %210 ], [ %237, %213 ]
  %287 = phi i64 [ %43, %210 ], [ %255, %213 ]
  %288 = phi i64 [ %2, %210 ], [ %219, %213 ]
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %365, label %290

290:                                              ; preds = %283
  %291 = getelementptr inbounds i8, ptr %285, i64 1
  %292 = load i8, ptr %285, align 1, !tbaa !5
  %293 = zext i8 %292 to i64
  %294 = shl nuw nsw i64 %293, 24
  %295 = getelementptr inbounds i8, ptr %285, i64 2
  %296 = load i8, ptr %291, align 1, !tbaa !5
  %297 = zext i8 %296 to i64
  %298 = shl nuw nsw i64 %297, 16
  %299 = or disjoint i64 %298, %294
  %300 = getelementptr inbounds i8, ptr %285, i64 3
  %301 = load i8, ptr %295, align 1, !tbaa !5
  %302 = zext i8 %301 to i64
  %303 = shl nuw nsw i64 %302, 8
  %304 = or disjoint i64 %299, %303
  %305 = getelementptr inbounds i8, ptr %285, i64 4
  %306 = load i8, ptr %300, align 1, !tbaa !5
  %307 = zext i8 %306 to i64
  %308 = or disjoint i64 %304, %307
  %309 = getelementptr inbounds i8, ptr %285, i64 5
  %310 = load i8, ptr %305, align 1, !tbaa !5
  %311 = zext i8 %310 to i64
  %312 = shl nuw nsw i64 %311, 24
  %313 = getelementptr inbounds i8, ptr %285, i64 6
  %314 = load i8, ptr %309, align 1, !tbaa !5
  %315 = zext i8 %314 to i64
  %316 = shl nuw nsw i64 %315, 16
  %317 = or disjoint i64 %316, %312
  %318 = getelementptr inbounds i8, ptr %285, i64 7
  %319 = load i8, ptr %313, align 1, !tbaa !5
  %320 = zext i8 %319 to i64
  %321 = shl nuw nsw i64 %320, 8
  %322 = or disjoint i64 %317, %321
  %323 = load i8, ptr %318, align 1, !tbaa !5
  %324 = zext i8 %323 to i64
  %325 = or disjoint i64 %322, %324
  store i64 %308, ptr %7, align 16, !tbaa !8
  %326 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  store i64 %325, ptr %326, align 8, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 0) #4
  %327 = load i64, ptr %7, align 16, !tbaa !8
  %328 = xor i64 %327, %286
  %329 = load i64, ptr %326, align 8, !tbaa !8
  %330 = xor i64 %329, %287
  %331 = getelementptr inbounds i8, ptr %284, i64 %288
  switch i64 %288, label %365 [
    i64 1, label %360
    i64 7, label %332
    i64 6, label %336
    i64 5, label %341
    i64 4, label %346
    i64 3, label %350
    i64 2, label %355
  ]

332:                                              ; preds = %290
  %333 = lshr i64 %330, 8
  %334 = trunc i64 %333 to i8
  %335 = getelementptr inbounds i8, ptr %331, i64 -1
  store i8 %334, ptr %335, align 1, !tbaa !5
  br label %336

336:                                              ; preds = %290, %332
  %337 = phi ptr [ %331, %290 ], [ %335, %332 ]
  %338 = lshr i64 %330, 16
  %339 = trunc i64 %338 to i8
  %340 = getelementptr inbounds i8, ptr %337, i64 -1
  store i8 %339, ptr %340, align 1, !tbaa !5
  br label %341

341:                                              ; preds = %290, %336
  %342 = phi ptr [ %331, %290 ], [ %340, %336 ]
  %343 = lshr i64 %330, 24
  %344 = trunc i64 %343 to i8
  %345 = getelementptr inbounds i8, ptr %342, i64 -1
  store i8 %344, ptr %345, align 1, !tbaa !5
  br label %346

346:                                              ; preds = %290, %341
  %347 = phi ptr [ %331, %290 ], [ %345, %341 ]
  %348 = trunc i64 %328 to i8
  %349 = getelementptr inbounds i8, ptr %347, i64 -1
  store i8 %348, ptr %349, align 1, !tbaa !5
  br label %350

350:                                              ; preds = %290, %346
  %351 = phi ptr [ %331, %290 ], [ %349, %346 ]
  %352 = lshr i64 %328, 8
  %353 = trunc i64 %352 to i8
  %354 = getelementptr inbounds i8, ptr %351, i64 -1
  store i8 %353, ptr %354, align 1, !tbaa !5
  br label %355

355:                                              ; preds = %290, %350
  %356 = phi ptr [ %331, %290 ], [ %354, %350 ]
  %357 = lshr i64 %328, 16
  %358 = trunc i64 %357 to i8
  %359 = getelementptr inbounds i8, ptr %356, i64 -1
  store i8 %358, ptr %359, align 1, !tbaa !5
  br label %360

360:                                              ; preds = %290, %355
  %361 = phi ptr [ %331, %290 ], [ %359, %355 ]
  %362 = lshr i64 %328, 24
  %363 = trunc i64 %362 to i8
  %364 = getelementptr inbounds i8, ptr %361, i64 -1
  store i8 %363, ptr %364, align 1, !tbaa !5
  br label %365

365:                                              ; preds = %283, %360, %290, %118, %181
  %366 = phi i64 [ %187, %181 ], [ %121, %118 ], [ %286, %283 ], [ %308, %360 ], [ %308, %290 ]
  %367 = phi i64 [ %188, %181 ], [ %122, %118 ], [ %287, %283 ], [ %325, %360 ], [ %325, %290 ]
  %368 = lshr i64 %366, 24
  %369 = trunc i64 %368 to i8
  store i8 %369, ptr %4, align 1, !tbaa !5
  %370 = lshr i64 %366, 16
  %371 = trunc i64 %370 to i8
  store i8 %371, ptr %9, align 1, !tbaa !5
  %372 = lshr i64 %366, 8
  %373 = trunc i64 %372 to i8
  store i8 %373, ptr %13, align 1, !tbaa !5
  %374 = trunc i64 %366 to i8
  store i8 %374, ptr %18, align 1, !tbaa !5
  %375 = lshr i64 %367, 24
  %376 = trunc i64 %375 to i8
  store i8 %376, ptr %23, align 1, !tbaa !5
  %377 = lshr i64 %367, 16
  %378 = trunc i64 %377 to i8
  store i8 %378, ptr %27, align 1, !tbaa !5
  %379 = lshr i64 %367, 8
  %380 = trunc i64 %379 to i8
  store i8 %380, ptr %31, align 1, !tbaa !5
  %381 = trunc i64 %367 to i8
  store i8 %381, ptr %36, align 1, !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BF_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
