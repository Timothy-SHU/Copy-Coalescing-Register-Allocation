; ModuleID = 'fft.c'
source_filename = "fft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@rv_tbl = internal unnamed_addr constant [128 x i16] [i16 0, i16 128, i16 64, i16 192, i16 32, i16 160, i16 96, i16 224, i16 16, i16 144, i16 80, i16 208, i16 48, i16 176, i16 112, i16 240, i16 8, i16 136, i16 72, i16 200, i16 40, i16 168, i16 104, i16 232, i16 24, i16 152, i16 88, i16 216, i16 56, i16 184, i16 120, i16 248, i16 4, i16 132, i16 68, i16 196, i16 36, i16 164, i16 100, i16 228, i16 20, i16 148, i16 84, i16 212, i16 52, i16 180, i16 116, i16 244, i16 12, i16 140, i16 76, i16 204, i16 44, i16 172, i16 108, i16 236, i16 28, i16 156, i16 92, i16 220, i16 60, i16 188, i16 124, i16 252, i16 2, i16 130, i16 66, i16 194, i16 34, i16 162, i16 98, i16 226, i16 18, i16 146, i16 82, i16 210, i16 50, i16 178, i16 114, i16 242, i16 10, i16 138, i16 74, i16 202, i16 42, i16 170, i16 106, i16 234, i16 26, i16 154, i16 90, i16 218, i16 58, i16 186, i16 122, i16 250, i16 6, i16 134, i16 70, i16 198, i16 38, i16 166, i16 102, i16 230, i16 22, i16 150, i16 86, i16 214, i16 54, i16 182, i16 118, i16 246, i16 14, i16 142, i16 78, i16 206, i16 46, i16 174, i16 110, i16 238, i16 30, i16 158, i16 94, i16 222, i16 62, i16 190, i16 126, i16 254], align 16
@window_s = internal unnamed_addr global [128 x float] zeroinitializer, align 16
@window = internal unnamed_addr global [512 x float] zeroinitializer, align 16
@costab = internal unnamed_addr global [8 x float] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fft_short(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %1, 2
  %5 = icmp eq i32 %1, 2
  %6 = getelementptr inbounds ptr, ptr %2, i64 1
  %7 = getelementptr inbounds ptr, ptr %2, i64 1
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %2, i64 %8
  br label %10

10:                                               ; preds = %3, %442
  %11 = phi i64 [ 0, %3 ], [ %444, %442 ]
  %12 = getelementptr inbounds [256 x float], ptr %0, i64 %11, i64 128
  %13 = trunc i64 %11 to i32
  %14 = mul i32 %13, 192
  %15 = add i32 %14, 192
  br i1 %4, label %16, label %116

16:                                               ; preds = %10
  %17 = load ptr, ptr %9, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 31, %16 ], [ %114, %18 ]
  %20 = phi ptr [ %12, %16 ], [ %62, %18 ]
  %21 = shl nsw i64 %19, 2
  %22 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %21
  %23 = load i16, ptr %22, align 8, !tbaa !9
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !11
  %27 = sext i16 %23 to i32
  %28 = add nsw i32 %15, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, ptr %17, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !9
  %32 = sitofp i16 %31 to float
  %33 = fmul float %26, %32
  %34 = sub nsw i32 127, %27
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !11
  %38 = getelementptr i16, ptr %30, i64 128
  %39 = load i16, ptr %38, align 2, !tbaa !9
  %40 = sitofp i16 %39 to float
  %41 = fmul float %37, %40
  %42 = fsub float %33, %41
  %43 = fadd float %33, %41
  %44 = add nsw i32 %27, 64
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !11
  %48 = getelementptr i16, ptr %30, i64 64
  %49 = load i16, ptr %48, align 2, !tbaa !9
  %50 = sitofp i16 %49 to float
  %51 = fmul float %47, %50
  %52 = sub nsw i32 63, %27
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !11
  %56 = getelementptr i16, ptr %30, i64 192
  %57 = load i16, ptr %56, align 2, !tbaa !9
  %58 = sitofp i16 %57 to float
  %59 = fmul float %55, %58
  %60 = fsub float %51, %59
  %61 = fadd float %51, %59
  %62 = getelementptr inbounds float, ptr %20, i64 -4
  %63 = fadd float %43, %61
  store float %63, ptr %62, align 4, !tbaa !11
  %64 = fsub float %43, %61
  %65 = getelementptr inbounds float, ptr %20, i64 -2
  store float %64, ptr %65, align 4, !tbaa !11
  %66 = fadd float %42, %60
  %67 = getelementptr inbounds float, ptr %20, i64 -3
  store float %66, ptr %67, align 4, !tbaa !11
  %68 = fsub float %42, %60
  %69 = getelementptr inbounds float, ptr %20, i64 -1
  store float %68, ptr %69, align 4, !tbaa !11
  %70 = add nsw i32 %27, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !11
  %74 = getelementptr i16, ptr %30, i64 1
  %75 = load i16, ptr %74, align 2, !tbaa !9
  %76 = sitofp i16 %75 to float
  %77 = fmul float %73, %76
  %78 = sub nsw i32 126, %27
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !11
  %82 = getelementptr i16, ptr %30, i64 129
  %83 = load i16, ptr %82, align 2, !tbaa !9
  %84 = sitofp i16 %83 to float
  %85 = fmul float %81, %84
  %86 = fsub float %77, %85
  %87 = fadd float %77, %85
  %88 = add nsw i32 %27, 65
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !11
  %92 = getelementptr i16, ptr %30, i64 65
  %93 = load i16, ptr %92, align 2, !tbaa !9
  %94 = sitofp i16 %93 to float
  %95 = fmul float %91, %94
  %96 = sub nsw i32 62, %27
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %97
  %99 = load float, ptr %98, align 4, !tbaa !11
  %100 = getelementptr i16, ptr %30, i64 193
  %101 = load i16, ptr %100, align 2, !tbaa !9
  %102 = sitofp i16 %101 to float
  %103 = fmul float %99, %102
  %104 = fsub float %95, %103
  %105 = fadd float %95, %103
  %106 = fadd float %87, %105
  %107 = getelementptr inbounds float, ptr %20, i64 124
  store float %106, ptr %107, align 4, !tbaa !11
  %108 = fsub float %87, %105
  %109 = getelementptr inbounds float, ptr %20, i64 126
  store float %108, ptr %109, align 4, !tbaa !11
  %110 = fadd float %86, %104
  %111 = getelementptr inbounds float, ptr %20, i64 125
  store float %110, ptr %111, align 4, !tbaa !11
  %112 = fsub float %86, %104
  %113 = getelementptr inbounds float, ptr %20, i64 127
  store float %112, ptr %113, align 4, !tbaa !11
  %114 = add nsw i64 %19, -1
  %115 = icmp sgt i64 %19, 0
  br i1 %115, label %18, label %442, !llvm.loop !13

116:                                              ; preds = %10
  %117 = load ptr, ptr %2, align 8, !tbaa !5
  br i1 %5, label %120, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %6, align 8, !tbaa !5
  br label %282

120:                                              ; preds = %116
  %121 = load ptr, ptr %7, align 8, !tbaa !5
  br label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ 31, %120 ], [ %280, %122 ]
  %124 = phi ptr [ %12, %120 ], [ %196, %122 ]
  %125 = shl nsw i64 %123, 2
  %126 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %125
  %127 = load i16, ptr %126, align 8, !tbaa !9
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %128
  %130 = load float, ptr %129, align 4, !tbaa !11
  %131 = sext i16 %127 to i32
  %132 = add nsw i32 %15, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i16, ptr %117, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !9
  %136 = sext i16 %135 to i32
  %137 = getelementptr inbounds i16, ptr %121, i64 %133
  %138 = load i16, ptr %137, align 2, !tbaa !9
  %139 = sext i16 %138 to i32
  %140 = add nsw i32 %139, %136
  %141 = sitofp i32 %140 to float
  %142 = fmul float %141, 0x3FE6A09E60000000
  %143 = fmul float %130, %142
  %144 = sub nsw i32 127, %131
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !11
  %148 = add nsw i32 %132, 128
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i16, ptr %117, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !9
  %152 = sext i16 %151 to i32
  %153 = getelementptr inbounds i16, ptr %121, i64 %149
  %154 = load i16, ptr %153, align 2, !tbaa !9
  %155 = sext i16 %154 to i32
  %156 = add nsw i32 %155, %152
  %157 = sitofp i32 %156 to float
  %158 = fmul float %157, 0x3FE6A09E60000000
  %159 = fmul float %147, %158
  %160 = fsub float %143, %159
  %161 = fadd float %143, %159
  %162 = add nsw i32 %131, 64
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !11
  %166 = add nsw i32 %132, 64
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i16, ptr %117, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !9
  %170 = sext i16 %169 to i32
  %171 = getelementptr inbounds i16, ptr %121, i64 %167
  %172 = load i16, ptr %171, align 2, !tbaa !9
  %173 = sext i16 %172 to i32
  %174 = add nsw i32 %173, %170
  %175 = sitofp i32 %174 to float
  %176 = fmul float %175, 0x3FE6A09E60000000
  %177 = fmul float %165, %176
  %178 = sub nsw i32 63, %131
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %179
  %181 = load float, ptr %180, align 4, !tbaa !11
  %182 = add nsw i32 %132, 192
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, ptr %117, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !9
  %186 = sext i16 %185 to i32
  %187 = getelementptr inbounds i16, ptr %121, i64 %183
  %188 = load i16, ptr %187, align 2, !tbaa !9
  %189 = sext i16 %188 to i32
  %190 = add nsw i32 %189, %186
  %191 = sitofp i32 %190 to float
  %192 = fmul float %191, 0x3FE6A09E60000000
  %193 = fmul float %181, %192
  %194 = fsub float %177, %193
  %195 = fadd float %177, %193
  %196 = getelementptr inbounds float, ptr %124, i64 -4
  %197 = fadd float %161, %195
  store float %197, ptr %196, align 4, !tbaa !11
  %198 = fsub float %161, %195
  %199 = getelementptr inbounds float, ptr %124, i64 -2
  store float %198, ptr %199, align 4, !tbaa !11
  %200 = fadd float %160, %194
  %201 = getelementptr inbounds float, ptr %124, i64 -3
  store float %200, ptr %201, align 4, !tbaa !11
  %202 = fsub float %160, %194
  %203 = getelementptr inbounds float, ptr %124, i64 -1
  store float %202, ptr %203, align 4, !tbaa !11
  %204 = add nsw i32 %131, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %205
  %207 = load float, ptr %206, align 4, !tbaa !11
  %208 = add nsw i32 %132, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i16, ptr %117, i64 %209
  %211 = load i16, ptr %210, align 2, !tbaa !9
  %212 = sext i16 %211 to i32
  %213 = getelementptr inbounds i16, ptr %121, i64 %209
  %214 = load i16, ptr %213, align 2, !tbaa !9
  %215 = sext i16 %214 to i32
  %216 = add nsw i32 %215, %212
  %217 = sitofp i32 %216 to float
  %218 = fmul float %217, 0x3FE6A09E60000000
  %219 = fmul float %207, %218
  %220 = sub nsw i32 126, %131
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %221
  %223 = load float, ptr %222, align 4, !tbaa !11
  %224 = add nsw i32 %132, 129
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i16, ptr %117, i64 %225
  %227 = load i16, ptr %226, align 2, !tbaa !9
  %228 = sext i16 %227 to i32
  %229 = getelementptr inbounds i16, ptr %121, i64 %225
  %230 = load i16, ptr %229, align 2, !tbaa !9
  %231 = sext i16 %230 to i32
  %232 = add nsw i32 %231, %228
  %233 = sitofp i32 %232 to float
  %234 = fmul float %233, 0x3FE6A09E60000000
  %235 = fmul float %223, %234
  %236 = fsub float %219, %235
  %237 = fadd float %219, %235
  %238 = add nsw i32 %131, 65
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %239
  %241 = load float, ptr %240, align 4, !tbaa !11
  %242 = add nsw i32 %132, 65
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i16, ptr %117, i64 %243
  %245 = load i16, ptr %244, align 2, !tbaa !9
  %246 = sext i16 %245 to i32
  %247 = getelementptr inbounds i16, ptr %121, i64 %243
  %248 = load i16, ptr %247, align 2, !tbaa !9
  %249 = sext i16 %248 to i32
  %250 = add nsw i32 %249, %246
  %251 = sitofp i32 %250 to float
  %252 = fmul float %251, 0x3FE6A09E60000000
  %253 = fmul float %241, %252
  %254 = sub nsw i32 62, %131
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %255
  %257 = load float, ptr %256, align 4, !tbaa !11
  %258 = add nsw i32 %132, 193
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i16, ptr %117, i64 %259
  %261 = load i16, ptr %260, align 2, !tbaa !9
  %262 = sext i16 %261 to i32
  %263 = getelementptr inbounds i16, ptr %121, i64 %259
  %264 = load i16, ptr %263, align 2, !tbaa !9
  %265 = sext i16 %264 to i32
  %266 = add nsw i32 %265, %262
  %267 = sitofp i32 %266 to float
  %268 = fmul float %267, 0x3FE6A09E60000000
  %269 = fmul float %257, %268
  %270 = fsub float %253, %269
  %271 = fadd float %253, %269
  %272 = fadd float %237, %271
  %273 = getelementptr inbounds float, ptr %124, i64 124
  store float %272, ptr %273, align 4, !tbaa !11
  %274 = fsub float %237, %271
  %275 = getelementptr inbounds float, ptr %124, i64 126
  store float %274, ptr %275, align 4, !tbaa !11
  %276 = fadd float %236, %270
  %277 = getelementptr inbounds float, ptr %124, i64 125
  store float %276, ptr %277, align 4, !tbaa !11
  %278 = fsub float %236, %270
  %279 = getelementptr inbounds float, ptr %124, i64 127
  store float %278, ptr %279, align 4, !tbaa !11
  %280 = add nsw i64 %123, -1
  %281 = icmp sgt i64 %123, 0
  br i1 %281, label %122, label %442, !llvm.loop !15

282:                                              ; preds = %118, %282
  %283 = phi i64 [ 31, %118 ], [ %440, %282 ]
  %284 = phi ptr [ %12, %118 ], [ %356, %282 ]
  %285 = shl nsw i64 %283, 2
  %286 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %285
  %287 = load i16, ptr %286, align 8, !tbaa !9
  %288 = sext i16 %287 to i64
  %289 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %288
  %290 = load float, ptr %289, align 4, !tbaa !11
  %291 = sext i16 %287 to i32
  %292 = add nsw i32 %15, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i16, ptr %117, i64 %293
  %295 = load i16, ptr %294, align 2, !tbaa !9
  %296 = sext i16 %295 to i32
  %297 = getelementptr inbounds i16, ptr %119, i64 %293
  %298 = load i16, ptr %297, align 2, !tbaa !9
  %299 = sext i16 %298 to i32
  %300 = sub nsw i32 %296, %299
  %301 = sitofp i32 %300 to float
  %302 = fmul float %301, 0x3FE6A09E60000000
  %303 = fmul float %290, %302
  %304 = sub nsw i32 127, %291
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %305
  %307 = load float, ptr %306, align 4, !tbaa !11
  %308 = add nsw i32 %292, 128
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i16, ptr %117, i64 %309
  %311 = load i16, ptr %310, align 2, !tbaa !9
  %312 = sext i16 %311 to i32
  %313 = getelementptr inbounds i16, ptr %119, i64 %309
  %314 = load i16, ptr %313, align 2, !tbaa !9
  %315 = sext i16 %314 to i32
  %316 = sub nsw i32 %312, %315
  %317 = sitofp i32 %316 to float
  %318 = fmul float %317, 0x3FE6A09E60000000
  %319 = fmul float %307, %318
  %320 = fsub float %303, %319
  %321 = fadd float %303, %319
  %322 = add nsw i32 %291, 64
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %323
  %325 = load float, ptr %324, align 4, !tbaa !11
  %326 = add nsw i32 %292, 64
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i16, ptr %117, i64 %327
  %329 = load i16, ptr %328, align 2, !tbaa !9
  %330 = sext i16 %329 to i32
  %331 = getelementptr inbounds i16, ptr %119, i64 %327
  %332 = load i16, ptr %331, align 2, !tbaa !9
  %333 = sext i16 %332 to i32
  %334 = sub nsw i32 %330, %333
  %335 = sitofp i32 %334 to float
  %336 = fmul float %335, 0x3FE6A09E60000000
  %337 = fmul float %325, %336
  %338 = sub nsw i32 63, %291
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %339
  %341 = load float, ptr %340, align 4, !tbaa !11
  %342 = add nsw i32 %292, 192
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i16, ptr %117, i64 %343
  %345 = load i16, ptr %344, align 2, !tbaa !9
  %346 = sext i16 %345 to i32
  %347 = getelementptr inbounds i16, ptr %119, i64 %343
  %348 = load i16, ptr %347, align 2, !tbaa !9
  %349 = sext i16 %348 to i32
  %350 = sub nsw i32 %346, %349
  %351 = sitofp i32 %350 to float
  %352 = fmul float %351, 0x3FE6A09E60000000
  %353 = fmul float %341, %352
  %354 = fsub float %337, %353
  %355 = fadd float %337, %353
  %356 = getelementptr inbounds float, ptr %284, i64 -4
  %357 = fadd float %321, %355
  store float %357, ptr %356, align 4, !tbaa !11
  %358 = fsub float %321, %355
  %359 = getelementptr inbounds float, ptr %284, i64 -2
  store float %358, ptr %359, align 4, !tbaa !11
  %360 = fadd float %320, %354
  %361 = getelementptr inbounds float, ptr %284, i64 -3
  store float %360, ptr %361, align 4, !tbaa !11
  %362 = fsub float %320, %354
  %363 = getelementptr inbounds float, ptr %284, i64 -1
  store float %362, ptr %363, align 4, !tbaa !11
  %364 = add nsw i32 %291, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %365
  %367 = load float, ptr %366, align 4, !tbaa !11
  %368 = add nsw i32 %292, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i16, ptr %117, i64 %369
  %371 = load i16, ptr %370, align 2, !tbaa !9
  %372 = sext i16 %371 to i32
  %373 = getelementptr inbounds i16, ptr %119, i64 %369
  %374 = load i16, ptr %373, align 2, !tbaa !9
  %375 = sext i16 %374 to i32
  %376 = sub nsw i32 %372, %375
  %377 = sitofp i32 %376 to float
  %378 = fmul float %377, 0x3FE6A09E60000000
  %379 = fmul float %367, %378
  %380 = sub nsw i32 126, %291
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %381
  %383 = load float, ptr %382, align 4, !tbaa !11
  %384 = add nsw i32 %292, 129
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i16, ptr %117, i64 %385
  %387 = load i16, ptr %386, align 2, !tbaa !9
  %388 = sext i16 %387 to i32
  %389 = getelementptr inbounds i16, ptr %119, i64 %385
  %390 = load i16, ptr %389, align 2, !tbaa !9
  %391 = sext i16 %390 to i32
  %392 = sub nsw i32 %388, %391
  %393 = sitofp i32 %392 to float
  %394 = fmul float %393, 0x3FE6A09E60000000
  %395 = fmul float %383, %394
  %396 = fsub float %379, %395
  %397 = fadd float %379, %395
  %398 = add nsw i32 %291, 65
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %399
  %401 = load float, ptr %400, align 4, !tbaa !11
  %402 = add nsw i32 %292, 65
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i16, ptr %117, i64 %403
  %405 = load i16, ptr %404, align 2, !tbaa !9
  %406 = sext i16 %405 to i32
  %407 = getelementptr inbounds i16, ptr %119, i64 %403
  %408 = load i16, ptr %407, align 2, !tbaa !9
  %409 = sext i16 %408 to i32
  %410 = sub nsw i32 %406, %409
  %411 = sitofp i32 %410 to float
  %412 = fmul float %411, 0x3FE6A09E60000000
  %413 = fmul float %401, %412
  %414 = sub nsw i32 62, %291
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %415
  %417 = load float, ptr %416, align 4, !tbaa !11
  %418 = add nsw i32 %292, 193
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i16, ptr %117, i64 %419
  %421 = load i16, ptr %420, align 2, !tbaa !9
  %422 = sext i16 %421 to i32
  %423 = getelementptr inbounds i16, ptr %119, i64 %419
  %424 = load i16, ptr %423, align 2, !tbaa !9
  %425 = sext i16 %424 to i32
  %426 = sub nsw i32 %422, %425
  %427 = sitofp i32 %426 to float
  %428 = fmul float %427, 0x3FE6A09E60000000
  %429 = fmul float %417, %428
  %430 = fsub float %413, %429
  %431 = fadd float %413, %429
  %432 = fadd float %397, %431
  %433 = getelementptr inbounds float, ptr %284, i64 124
  store float %432, ptr %433, align 4, !tbaa !11
  %434 = fsub float %397, %431
  %435 = getelementptr inbounds float, ptr %284, i64 126
  store float %434, ptr %435, align 4, !tbaa !11
  %436 = fadd float %396, %430
  %437 = getelementptr inbounds float, ptr %284, i64 125
  store float %436, ptr %437, align 4, !tbaa !11
  %438 = fsub float %396, %430
  %439 = getelementptr inbounds float, ptr %284, i64 127
  store float %438, ptr %439, align 4, !tbaa !11
  %440 = add nsw i64 %283, -1
  %441 = icmp sgt i64 %283, 0
  br i1 %441, label %282, label %442, !llvm.loop !16

442:                                              ; preds = %282, %122, %18
  %443 = phi ptr [ %62, %18 ], [ %196, %122 ], [ %356, %282 ]
  tail call fastcc void @fht(ptr noundef nonnull %443, i16 noundef signext 256)
  %444 = add nuw nsw i64 %11, 1
  %445 = icmp eq i64 %444, 3
  br i1 %445, label %446, label %10, !llvm.loop !17

446:                                              ; preds = %442
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fht(ptr noundef %0, i16 noundef signext %1) unnamed_addr #1 {
  %3 = zext i16 %1 to i64
  %4 = getelementptr inbounds float, ptr %0, i64 %3
  br label %5

5:                                                ; preds = %141, %2
  %6 = phi ptr [ @costab, %2 ], [ %142, %141 ]
  %7 = phi i16 [ 4, %2 ], [ %11, %141 ]
  %8 = ashr exact i16 %7, 1
  %9 = shl i16 %7, 1
  %10 = mul i16 %7, 3
  %11 = shl i16 %7, 2
  %12 = sext i16 %8 to i64
  %13 = getelementptr inbounds float, ptr %0, i64 %12
  %14 = sext i16 %7 to i64
  %15 = sext i16 %9 to i64
  %16 = sext i16 %10 to i64
  %17 = sext i16 %11 to i64
  br label %18

18:                                               ; preds = %18, %5
  %19 = phi ptr [ %13, %5 ], [ %55, %18 ]
  %20 = phi ptr [ %0, %5 ], [ %56, %18 ]
  %21 = load float, ptr %20, align 4, !tbaa !11
  %22 = getelementptr inbounds float, ptr %20, i64 %14
  %23 = load float, ptr %22, align 4, !tbaa !11
  %24 = fsub float %21, %23
  %25 = fadd float %21, %23
  %26 = getelementptr inbounds float, ptr %20, i64 %15
  %27 = load float, ptr %26, align 4, !tbaa !11
  %28 = getelementptr inbounds float, ptr %20, i64 %16
  %29 = load float, ptr %28, align 4, !tbaa !11
  %30 = fsub float %27, %29
  %31 = fadd float %27, %29
  %32 = fsub float %25, %31
  store float %32, ptr %26, align 4, !tbaa !11
  %33 = fadd float %25, %31
  store float %33, ptr %20, align 4, !tbaa !11
  %34 = fsub float %24, %30
  store float %34, ptr %28, align 4, !tbaa !11
  %35 = fadd float %24, %30
  store float %35, ptr %22, align 4, !tbaa !11
  %36 = load float, ptr %19, align 4, !tbaa !11
  %37 = getelementptr inbounds float, ptr %19, i64 %14
  %38 = load float, ptr %37, align 4, !tbaa !11
  %39 = fsub float %36, %38
  %40 = fadd float %36, %38
  %41 = getelementptr inbounds float, ptr %19, i64 %16
  %42 = load float, ptr %41, align 4, !tbaa !11
  %43 = fpext float %42 to double
  %44 = fmul double %43, 0x3FF6A09E667F3BCD
  %45 = fptrunc double %44 to float
  %46 = getelementptr inbounds float, ptr %19, i64 %15
  %47 = load float, ptr %46, align 4, !tbaa !11
  %48 = fpext float %47 to double
  %49 = fmul double %48, 0x3FF6A09E667F3BCD
  %50 = fptrunc double %49 to float
  %51 = fsub float %40, %50
  store float %51, ptr %46, align 4, !tbaa !11
  %52 = fadd float %40, %50
  store float %52, ptr %19, align 4, !tbaa !11
  %53 = fsub float %39, %45
  store float %53, ptr %41, align 4, !tbaa !11
  %54 = fadd float %39, %45
  store float %54, ptr %37, align 4, !tbaa !11
  %55 = getelementptr inbounds float, ptr %19, i64 %17
  %56 = getelementptr inbounds float, ptr %20, i64 %17
  %57 = icmp ult ptr %56, %4
  br i1 %57, label %18, label %58, !llvm.loop !18

58:                                               ; preds = %18
  %59 = getelementptr inbounds float, ptr %6, i64 1
  %60 = icmp sgt i16 %8, 1
  br i1 %60, label %61, label %141

61:                                               ; preds = %58
  %62 = load float, ptr %59, align 4, !tbaa !11
  %63 = load float, ptr %6, align 4, !tbaa !11
  %64 = getelementptr inbounds float, ptr %0, i64 %14
  %65 = zext nneg i16 %8 to i64
  br label %66

66:                                               ; preds = %61, %132
  %67 = phi i64 [ 1, %61 ], [ %139, %132 ]
  %68 = phi float [ %62, %61 ], [ %138, %132 ]
  %69 = phi float [ %63, %61 ], [ %136, %132 ]
  %70 = fmul float %68, 2.000000e+00
  %71 = fneg float %70
  %72 = tail call float @llvm.fmuladd.f32(float %71, float %68, float 1.000000e+00)
  %73 = fmul float %69, %70
  %74 = getelementptr inbounds float, ptr %0, i64 %67
  %75 = sub nsw i64 0, %67
  %76 = getelementptr inbounds float, ptr %64, i64 %75
  %77 = fneg float %72
  %78 = fneg float %69
  %79 = fneg float %68
  br label %80

80:                                               ; preds = %80, %66
  %81 = phi ptr [ %76, %66 ], [ %129, %80 ]
  %82 = phi ptr [ %74, %66 ], [ %130, %80 ]
  %83 = getelementptr inbounds float, ptr %82, i64 %14
  %84 = load float, ptr %83, align 4, !tbaa !11
  %85 = getelementptr inbounds float, ptr %81, i64 %14
  %86 = load float, ptr %85, align 4, !tbaa !11
  %87 = fmul float %86, %77
  %88 = tail call float @llvm.fmuladd.f32(float %73, float %84, float %87)
  %89 = fmul float %73, %86
  %90 = tail call float @llvm.fmuladd.f32(float %72, float %84, float %89)
  %91 = load float, ptr %82, align 4, !tbaa !11
  %92 = fsub float %91, %90
  %93 = fadd float %91, %90
  %94 = load float, ptr %81, align 4, !tbaa !11
  %95 = fsub float %94, %88
  %96 = fadd float %94, %88
  %97 = getelementptr inbounds float, ptr %82, i64 %16
  %98 = load float, ptr %97, align 4, !tbaa !11
  %99 = getelementptr inbounds float, ptr %81, i64 %16
  %100 = load float, ptr %99, align 4, !tbaa !11
  %101 = fmul float %100, %77
  %102 = tail call float @llvm.fmuladd.f32(float %73, float %98, float %101)
  %103 = fmul float %73, %100
  %104 = tail call float @llvm.fmuladd.f32(float %72, float %98, float %103)
  %105 = getelementptr inbounds float, ptr %82, i64 %15
  %106 = load float, ptr %105, align 4, !tbaa !11
  %107 = fsub float %106, %104
  %108 = fadd float %106, %104
  %109 = getelementptr inbounds float, ptr %81, i64 %15
  %110 = load float, ptr %109, align 4, !tbaa !11
  %111 = fsub float %110, %102
  %112 = fadd float %110, %102
  %113 = fmul float %111, %78
  %114 = tail call float @llvm.fmuladd.f32(float %68, float %108, float %113)
  %115 = fmul float %68, %111
  %116 = tail call float @llvm.fmuladd.f32(float %69, float %108, float %115)
  %117 = fsub float %93, %116
  store float %117, ptr %105, align 4, !tbaa !11
  %118 = fadd float %93, %116
  store float %118, ptr %82, align 4, !tbaa !11
  %119 = fsub float %95, %114
  store float %119, ptr %99, align 4, !tbaa !11
  %120 = fadd float %95, %114
  store float %120, ptr %85, align 4, !tbaa !11
  %121 = fmul float %107, %79
  %122 = tail call float @llvm.fmuladd.f32(float %69, float %112, float %121)
  %123 = fmul float %69, %107
  %124 = tail call float @llvm.fmuladd.f32(float %68, float %112, float %123)
  %125 = fsub float %96, %124
  store float %125, ptr %109, align 4, !tbaa !11
  %126 = fadd float %96, %124
  store float %126, ptr %81, align 4, !tbaa !11
  %127 = fsub float %92, %122
  store float %127, ptr %97, align 4, !tbaa !11
  %128 = fadd float %92, %122
  store float %128, ptr %83, align 4, !tbaa !11
  %129 = getelementptr inbounds float, ptr %81, i64 %17
  %130 = getelementptr inbounds float, ptr %82, i64 %17
  %131 = icmp ult ptr %130, %4
  br i1 %131, label %80, label %132, !llvm.loop !19

132:                                              ; preds = %80
  %133 = load float, ptr %6, align 4, !tbaa !11
  %134 = load float, ptr %59, align 4, !tbaa !11
  %135 = fmul float %134, %79
  %136 = tail call float @llvm.fmuladd.f32(float %69, float %133, float %135)
  %137 = fmul float %68, %133
  %138 = tail call float @llvm.fmuladd.f32(float %69, float %134, float %137)
  %139 = add nuw nsw i64 %67, 1
  %140 = icmp eq i64 %139, %65
  br i1 %140, label %141, label %66, !llvm.loop !20

141:                                              ; preds = %132, %58
  %142 = getelementptr inbounds float, ptr %6, i64 2
  %143 = icmp slt i16 %11, %1
  br i1 %143, label %5, label %144, !llvm.loop !21

144:                                              ; preds = %141
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fft_long(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds float, ptr %0, i64 512
  %5 = icmp slt i32 %1, 2
  br i1 %5, label %6, label %105

6:                                                ; preds = %3
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 127, %6 ], [ %103, %10 ]
  %12 = phi ptr [ %4, %6 ], [ %51, %10 ]
  %13 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %11
  %14 = load i16, ptr %13, align 2, !tbaa !9
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !11
  %18 = getelementptr inbounds i16, ptr %9, i64 %15
  %19 = load i16, ptr %18, align 2, !tbaa !9
  %20 = sitofp i16 %19 to float
  %21 = fmul float %17, %20
  %22 = sext i16 %14 to i32
  %23 = sub nsw i32 511, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !11
  %27 = getelementptr i16, ptr %18, i64 512
  %28 = load i16, ptr %27, align 2, !tbaa !9
  %29 = sitofp i16 %28 to float
  %30 = fmul float %26, %29
  %31 = fsub float %21, %30
  %32 = fadd float %21, %30
  %33 = add nsw i32 %22, 256
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !11
  %37 = getelementptr inbounds i16, ptr %9, i64 %34
  %38 = load i16, ptr %37, align 2, !tbaa !9
  %39 = sitofp i16 %38 to float
  %40 = fmul float %36, %39
  %41 = sub nsw i32 255, %22
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !11
  %45 = getelementptr i16, ptr %18, i64 768
  %46 = load i16, ptr %45, align 2, !tbaa !9
  %47 = sitofp i16 %46 to float
  %48 = fmul float %44, %47
  %49 = fsub float %40, %48
  %50 = fadd float %40, %48
  %51 = getelementptr inbounds float, ptr %12, i64 -4
  %52 = fadd float %32, %50
  store float %52, ptr %51, align 4, !tbaa !11
  %53 = fsub float %32, %50
  %54 = getelementptr inbounds float, ptr %12, i64 -2
  store float %53, ptr %54, align 4, !tbaa !11
  %55 = fadd float %31, %49
  %56 = getelementptr inbounds float, ptr %12, i64 -3
  store float %55, ptr %56, align 4, !tbaa !11
  %57 = fsub float %31, %49
  %58 = getelementptr inbounds float, ptr %12, i64 -1
  store float %57, ptr %58, align 4, !tbaa !11
  %59 = add nsw i32 %22, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !11
  %63 = getelementptr inbounds i16, ptr %9, i64 %60
  %64 = load i16, ptr %63, align 2, !tbaa !9
  %65 = sitofp i16 %64 to float
  %66 = fmul float %62, %65
  %67 = sub nsw i32 510, %22
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !11
  %71 = getelementptr i16, ptr %18, i64 513
  %72 = load i16, ptr %71, align 2, !tbaa !9
  %73 = sitofp i16 %72 to float
  %74 = fmul float %70, %73
  %75 = fsub float %66, %74
  %76 = fadd float %66, %74
  %77 = add nsw i32 %22, 257
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %78
  %80 = load float, ptr %79, align 4, !tbaa !11
  %81 = getelementptr inbounds i16, ptr %9, i64 %78
  %82 = load i16, ptr %81, align 2, !tbaa !9
  %83 = sitofp i16 %82 to float
  %84 = fmul float %80, %83
  %85 = sub nsw i32 254, %22
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %86
  %88 = load float, ptr %87, align 4, !tbaa !11
  %89 = getelementptr i16, ptr %18, i64 769
  %90 = load i16, ptr %89, align 2, !tbaa !9
  %91 = sitofp i16 %90 to float
  %92 = fmul float %88, %91
  %93 = fsub float %84, %92
  %94 = fadd float %84, %92
  %95 = fadd float %76, %94
  %96 = getelementptr inbounds float, ptr %12, i64 508
  store float %95, ptr %96, align 4, !tbaa !11
  %97 = fsub float %76, %94
  %98 = getelementptr inbounds float, ptr %12, i64 510
  store float %97, ptr %98, align 4, !tbaa !11
  %99 = fadd float %75, %93
  %100 = getelementptr inbounds float, ptr %12, i64 509
  store float %99, ptr %100, align 4, !tbaa !11
  %101 = fsub float %75, %93
  %102 = getelementptr inbounds float, ptr %12, i64 511
  store float %101, ptr %102, align 4, !tbaa !11
  %103 = add nsw i64 %11, -1
  %104 = icmp sgt i64 %11, 0
  br i1 %104, label %10, label %412, !llvm.loop !22

105:                                              ; preds = %3
  %106 = icmp eq i32 %1, 2
  %107 = load ptr, ptr %2, align 8, !tbaa !5
  %108 = getelementptr inbounds ptr, ptr %2, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  br i1 %106, label %110, label %261

110:                                              ; preds = %105, %110
  %111 = phi i64 [ %259, %110 ], [ 127, %105 ]
  %112 = phi ptr [ %179, %110 ], [ %4, %105 ]
  %113 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %111
  %114 = load i16, ptr %113, align 2, !tbaa !9
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %115
  %117 = load float, ptr %116, align 4, !tbaa !11
  %118 = getelementptr inbounds i16, ptr %107, i64 %115
  %119 = load i16, ptr %118, align 2, !tbaa !9
  %120 = sext i16 %119 to i32
  %121 = getelementptr inbounds i16, ptr %109, i64 %115
  %122 = load i16, ptr %121, align 2, !tbaa !9
  %123 = sext i16 %122 to i32
  %124 = add nsw i32 %123, %120
  %125 = sitofp i32 %124 to float
  %126 = fmul float %125, 0x3FE6A09E60000000
  %127 = fmul float %117, %126
  %128 = sext i16 %114 to i32
  %129 = sub nsw i32 511, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %130
  %132 = load float, ptr %131, align 4, !tbaa !11
  %133 = add nsw i32 %128, 512
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, ptr %107, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !9
  %137 = sext i16 %136 to i32
  %138 = getelementptr inbounds i16, ptr %109, i64 %134
  %139 = load i16, ptr %138, align 2, !tbaa !9
  %140 = sext i16 %139 to i32
  %141 = add nsw i32 %140, %137
  %142 = sitofp i32 %141 to float
  %143 = fmul float %142, 0x3FE6A09E60000000
  %144 = fmul float %132, %143
  %145 = fsub float %127, %144
  %146 = fadd float %127, %144
  %147 = add nsw i32 %128, 256
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !11
  %151 = getelementptr inbounds i16, ptr %107, i64 %148
  %152 = load i16, ptr %151, align 2, !tbaa !9
  %153 = sext i16 %152 to i32
  %154 = getelementptr inbounds i16, ptr %109, i64 %148
  %155 = load i16, ptr %154, align 2, !tbaa !9
  %156 = sext i16 %155 to i32
  %157 = add nsw i32 %156, %153
  %158 = sitofp i32 %157 to float
  %159 = fmul float %158, 0x3FE6A09E60000000
  %160 = fmul float %150, %159
  %161 = sub nsw i32 255, %128
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %162
  %164 = load float, ptr %163, align 4, !tbaa !11
  %165 = add nsw i32 %128, 768
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i16, ptr %107, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !9
  %169 = sext i16 %168 to i32
  %170 = getelementptr inbounds i16, ptr %109, i64 %166
  %171 = load i16, ptr %170, align 2, !tbaa !9
  %172 = sext i16 %171 to i32
  %173 = add nsw i32 %172, %169
  %174 = sitofp i32 %173 to float
  %175 = fmul float %174, 0x3FE6A09E60000000
  %176 = fmul float %164, %175
  %177 = fsub float %160, %176
  %178 = fadd float %160, %176
  %179 = getelementptr inbounds float, ptr %112, i64 -4
  %180 = fadd float %146, %178
  store float %180, ptr %179, align 4, !tbaa !11
  %181 = fsub float %146, %178
  %182 = getelementptr inbounds float, ptr %112, i64 -2
  store float %181, ptr %182, align 4, !tbaa !11
  %183 = fadd float %145, %177
  %184 = getelementptr inbounds float, ptr %112, i64 -3
  store float %183, ptr %184, align 4, !tbaa !11
  %185 = fsub float %145, %177
  %186 = getelementptr inbounds float, ptr %112, i64 -1
  store float %185, ptr %186, align 4, !tbaa !11
  %187 = add nsw i32 %128, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %188
  %190 = load float, ptr %189, align 4, !tbaa !11
  %191 = getelementptr inbounds i16, ptr %107, i64 %188
  %192 = load i16, ptr %191, align 2, !tbaa !9
  %193 = sext i16 %192 to i32
  %194 = getelementptr inbounds i16, ptr %109, i64 %188
  %195 = load i16, ptr %194, align 2, !tbaa !9
  %196 = sext i16 %195 to i32
  %197 = add nsw i32 %196, %193
  %198 = sitofp i32 %197 to float
  %199 = fmul float %198, 0x3FE6A09E60000000
  %200 = fmul float %190, %199
  %201 = sub nsw i32 510, %128
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %202
  %204 = load float, ptr %203, align 4, !tbaa !11
  %205 = add nsw i32 %128, 513
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i16, ptr %107, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !9
  %209 = sext i16 %208 to i32
  %210 = getelementptr inbounds i16, ptr %109, i64 %206
  %211 = load i16, ptr %210, align 2, !tbaa !9
  %212 = sext i16 %211 to i32
  %213 = add nsw i32 %212, %209
  %214 = sitofp i32 %213 to float
  %215 = fmul float %214, 0x3FE6A09E60000000
  %216 = fmul float %204, %215
  %217 = fsub float %200, %216
  %218 = fadd float %200, %216
  %219 = add nsw i32 %128, 257
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %220
  %222 = load float, ptr %221, align 4, !tbaa !11
  %223 = getelementptr inbounds i16, ptr %107, i64 %220
  %224 = load i16, ptr %223, align 2, !tbaa !9
  %225 = sext i16 %224 to i32
  %226 = getelementptr inbounds i16, ptr %109, i64 %220
  %227 = load i16, ptr %226, align 2, !tbaa !9
  %228 = sext i16 %227 to i32
  %229 = add nsw i32 %228, %225
  %230 = sitofp i32 %229 to float
  %231 = fmul float %230, 0x3FE6A09E60000000
  %232 = fmul float %222, %231
  %233 = sub nsw i32 254, %128
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %234
  %236 = load float, ptr %235, align 4, !tbaa !11
  %237 = add nsw i32 %128, 769
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i16, ptr %107, i64 %238
  %240 = load i16, ptr %239, align 2, !tbaa !9
  %241 = sext i16 %240 to i32
  %242 = getelementptr inbounds i16, ptr %109, i64 %238
  %243 = load i16, ptr %242, align 2, !tbaa !9
  %244 = sext i16 %243 to i32
  %245 = add nsw i32 %244, %241
  %246 = sitofp i32 %245 to float
  %247 = fmul float %246, 0x3FE6A09E60000000
  %248 = fmul float %236, %247
  %249 = fsub float %232, %248
  %250 = fadd float %232, %248
  %251 = fadd float %218, %250
  %252 = getelementptr inbounds float, ptr %112, i64 508
  store float %251, ptr %252, align 4, !tbaa !11
  %253 = fsub float %218, %250
  %254 = getelementptr inbounds float, ptr %112, i64 510
  store float %253, ptr %254, align 4, !tbaa !11
  %255 = fadd float %217, %249
  %256 = getelementptr inbounds float, ptr %112, i64 509
  store float %255, ptr %256, align 4, !tbaa !11
  %257 = fsub float %217, %249
  %258 = getelementptr inbounds float, ptr %112, i64 511
  store float %257, ptr %258, align 4, !tbaa !11
  %259 = add nsw i64 %111, -1
  %260 = icmp sgt i64 %111, 0
  br i1 %260, label %110, label %412, !llvm.loop !23

261:                                              ; preds = %105, %261
  %262 = phi i64 [ %410, %261 ], [ 127, %105 ]
  %263 = phi ptr [ %330, %261 ], [ %4, %105 ]
  %264 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %262
  %265 = load i16, ptr %264, align 2, !tbaa !9
  %266 = sext i16 %265 to i64
  %267 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %266
  %268 = load float, ptr %267, align 4, !tbaa !11
  %269 = getelementptr inbounds i16, ptr %107, i64 %266
  %270 = load i16, ptr %269, align 2, !tbaa !9
  %271 = sext i16 %270 to i32
  %272 = getelementptr inbounds i16, ptr %109, i64 %266
  %273 = load i16, ptr %272, align 2, !tbaa !9
  %274 = sext i16 %273 to i32
  %275 = sub nsw i32 %271, %274
  %276 = sitofp i32 %275 to float
  %277 = fmul float %276, 0x3FE6A09E60000000
  %278 = fmul float %268, %277
  %279 = sext i16 %265 to i32
  %280 = sub nsw i32 511, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %281
  %283 = load float, ptr %282, align 4, !tbaa !11
  %284 = add nsw i32 %279, 512
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i16, ptr %107, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !9
  %288 = sext i16 %287 to i32
  %289 = getelementptr inbounds i16, ptr %109, i64 %285
  %290 = load i16, ptr %289, align 2, !tbaa !9
  %291 = sext i16 %290 to i32
  %292 = sub nsw i32 %288, %291
  %293 = sitofp i32 %292 to float
  %294 = fmul float %293, 0x3FE6A09E60000000
  %295 = fmul float %283, %294
  %296 = fsub float %278, %295
  %297 = fadd float %278, %295
  %298 = add nsw i32 %279, 256
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %299
  %301 = load float, ptr %300, align 4, !tbaa !11
  %302 = getelementptr inbounds i16, ptr %107, i64 %299
  %303 = load i16, ptr %302, align 2, !tbaa !9
  %304 = sext i16 %303 to i32
  %305 = getelementptr inbounds i16, ptr %109, i64 %299
  %306 = load i16, ptr %305, align 2, !tbaa !9
  %307 = sext i16 %306 to i32
  %308 = sub nsw i32 %304, %307
  %309 = sitofp i32 %308 to float
  %310 = fmul float %309, 0x3FE6A09E60000000
  %311 = fmul float %301, %310
  %312 = sub nsw i32 255, %279
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %313
  %315 = load float, ptr %314, align 4, !tbaa !11
  %316 = add nsw i32 %279, 768
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i16, ptr %107, i64 %317
  %319 = load i16, ptr %318, align 2, !tbaa !9
  %320 = sext i16 %319 to i32
  %321 = getelementptr inbounds i16, ptr %109, i64 %317
  %322 = load i16, ptr %321, align 2, !tbaa !9
  %323 = sext i16 %322 to i32
  %324 = sub nsw i32 %320, %323
  %325 = sitofp i32 %324 to float
  %326 = fmul float %325, 0x3FE6A09E60000000
  %327 = fmul float %315, %326
  %328 = fsub float %311, %327
  %329 = fadd float %311, %327
  %330 = getelementptr inbounds float, ptr %263, i64 -4
  %331 = fadd float %297, %329
  store float %331, ptr %330, align 4, !tbaa !11
  %332 = fsub float %297, %329
  %333 = getelementptr inbounds float, ptr %263, i64 -2
  store float %332, ptr %333, align 4, !tbaa !11
  %334 = fadd float %296, %328
  %335 = getelementptr inbounds float, ptr %263, i64 -3
  store float %334, ptr %335, align 4, !tbaa !11
  %336 = fsub float %296, %328
  %337 = getelementptr inbounds float, ptr %263, i64 -1
  store float %336, ptr %337, align 4, !tbaa !11
  %338 = add nsw i32 %279, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %339
  %341 = load float, ptr %340, align 4, !tbaa !11
  %342 = getelementptr inbounds i16, ptr %107, i64 %339
  %343 = load i16, ptr %342, align 2, !tbaa !9
  %344 = sext i16 %343 to i32
  %345 = getelementptr inbounds i16, ptr %109, i64 %339
  %346 = load i16, ptr %345, align 2, !tbaa !9
  %347 = sext i16 %346 to i32
  %348 = sub nsw i32 %344, %347
  %349 = sitofp i32 %348 to float
  %350 = fmul float %349, 0x3FE6A09E60000000
  %351 = fmul float %341, %350
  %352 = sub nsw i32 510, %279
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %353
  %355 = load float, ptr %354, align 4, !tbaa !11
  %356 = add nsw i32 %279, 513
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i16, ptr %107, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !9
  %360 = sext i16 %359 to i32
  %361 = getelementptr inbounds i16, ptr %109, i64 %357
  %362 = load i16, ptr %361, align 2, !tbaa !9
  %363 = sext i16 %362 to i32
  %364 = sub nsw i32 %360, %363
  %365 = sitofp i32 %364 to float
  %366 = fmul float %365, 0x3FE6A09E60000000
  %367 = fmul float %355, %366
  %368 = fsub float %351, %367
  %369 = fadd float %351, %367
  %370 = add nsw i32 %279, 257
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %371
  %373 = load float, ptr %372, align 4, !tbaa !11
  %374 = getelementptr inbounds i16, ptr %107, i64 %371
  %375 = load i16, ptr %374, align 2, !tbaa !9
  %376 = sext i16 %375 to i32
  %377 = getelementptr inbounds i16, ptr %109, i64 %371
  %378 = load i16, ptr %377, align 2, !tbaa !9
  %379 = sext i16 %378 to i32
  %380 = sub nsw i32 %376, %379
  %381 = sitofp i32 %380 to float
  %382 = fmul float %381, 0x3FE6A09E60000000
  %383 = fmul float %373, %382
  %384 = sub nsw i32 254, %279
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %385
  %387 = load float, ptr %386, align 4, !tbaa !11
  %388 = add nsw i32 %279, 769
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i16, ptr %107, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !9
  %392 = sext i16 %391 to i32
  %393 = getelementptr inbounds i16, ptr %109, i64 %389
  %394 = load i16, ptr %393, align 2, !tbaa !9
  %395 = sext i16 %394 to i32
  %396 = sub nsw i32 %392, %395
  %397 = sitofp i32 %396 to float
  %398 = fmul float %397, 0x3FE6A09E60000000
  %399 = fmul float %387, %398
  %400 = fsub float %383, %399
  %401 = fadd float %383, %399
  %402 = fadd float %369, %401
  %403 = getelementptr inbounds float, ptr %263, i64 508
  store float %402, ptr %403, align 4, !tbaa !11
  %404 = fsub float %369, %401
  %405 = getelementptr inbounds float, ptr %263, i64 510
  store float %404, ptr %405, align 4, !tbaa !11
  %406 = fadd float %368, %400
  %407 = getelementptr inbounds float, ptr %263, i64 509
  store float %406, ptr %407, align 4, !tbaa !11
  %408 = fsub float %368, %400
  %409 = getelementptr inbounds float, ptr %263, i64 511
  store float %408, ptr %409, align 4, !tbaa !11
  %410 = add nsw i64 %262, -1
  %411 = icmp sgt i64 %262, 0
  br i1 %411, label %261, label %412, !llvm.loop !24

412:                                              ; preds = %261, %110, %10
  tail call fastcc void @fht(ptr noundef nonnull %0, i16 noundef signext 1024)
  ret void
}

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local void @init_fft() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %14, %1 ]
  %3 = phi float [ 0x3FD921FB60000000, %0 ], [ %13, %1 ]
  %4 = fpext float %3 to double
  %5 = tail call double @cos(double noundef %4) #5
  %6 = fptrunc double %5 to float
  %7 = shl nuw nsw i64 %2, 1
  %8 = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %7
  store float %6, ptr %8, align 8, !tbaa !11
  %9 = tail call double @sin(double noundef %4) #5
  %10 = fptrunc double %9 to float
  %11 = or disjoint i64 %7, 1
  %12 = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %11
  store float %10, ptr %12, align 4, !tbaa !11
  %13 = fmul float %3, 2.500000e-01
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %1, !llvm.loop !25

16:                                               ; preds = %1, %16
  %17 = phi i64 [ %28, %16 ], [ 0, %1 ]
  %18 = trunc i64 %17 to i32
  %19 = sitofp i32 %18 to double
  %20 = fadd double %19, 5.000000e-01
  %21 = fmul double %20, 0x401921FB54442D18
  %22 = fmul double %21, 0x3F50000000000000
  %23 = tail call double @cos(double noundef %22) #5
  %24 = fsub double 1.000000e+00, %23
  %25 = fmul double %24, 5.000000e-01
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %17
  store float %26, ptr %27, align 4, !tbaa !11
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, 512
  br i1 %29, label %30, label %16, !llvm.loop !26

30:                                               ; preds = %16, %30
  %31 = phi i64 [ %42, %30 ], [ 0, %16 ]
  %32 = trunc i64 %31 to i32
  %33 = sitofp i32 %32 to double
  %34 = fadd double %33, 5.000000e-01
  %35 = fmul double %34, 0x401921FB54442D18
  %36 = fmul double %35, 3.906250e-03
  %37 = tail call double @cos(double noundef %36) #5
  %38 = fsub double 1.000000e+00, %37
  %39 = fmul double %38, 5.000000e-01
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %31
  store float %40, ptr %41, align 4, !tbaa !11
  %42 = add nuw nsw i64 %31, 1
  %43 = icmp eq i64 %42, 128
  br i1 %43, label %44, label %30, !llvm.loop !27

44:                                               ; preds = %30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
