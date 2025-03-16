; ModuleID = 'src/md5.c'
source_filename = "src/md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MD5Context = type { [4 x i64], [2 x i64], [64 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MD5Init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i64 1732584193, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds [4 x i64], ptr %0, i64 0, i64 1
  store i64 4023233417, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds [4 x i64], ptr %0, i64 0, i64 2
  store i64 2562383102, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds [4 x i64], ptr %0, i64 0, i64 3
  store i64 271733878, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.MD5Context, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MD5Update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.MD5Context, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = zext i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = add i64 %5, %7
  store i64 %8, ptr %4, align 8, !tbaa !5
  %9 = icmp ult i64 %8, %5
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MD5Context, ptr %0, i64 0, i32 1, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %10, %3
  %15 = lshr i32 %2, 29
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.MD5Context, ptr %0, i64 0, i32 1, i64 1
  %18 = load i64, ptr %17, align 8, !tbaa !5
  %19 = add i64 %18, %16
  store i64 %19, ptr %17, align 8, !tbaa !5
  %20 = lshr i64 %5, 3
  %21 = and i64 %20, 63
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.MD5Context, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds i8, ptr %24, i64 %21
  %26 = sub nuw nsw i64 64, %21
  %27 = icmp ugt i64 %26, %6
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %1, i64 %6, i1 false)
  br label %33

29:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %26, i1 false)
  tail call void @MD5Transform(ptr noundef %0, ptr noundef nonnull %24)
  %30 = getelementptr inbounds i8, ptr %1, i64 %26
  %31 = trunc i64 %26 to i32
  %32 = sub i32 %2, %31
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i32 [ %2, %28 ], [ %32, %29 ]
  %35 = phi ptr [ %1, %28 ], [ %30, %29 ]
  br i1 %27, label %53, label %36

36:                                               ; preds = %33, %14
  %37 = phi i32 [ %34, %33 ], [ %2, %14 ]
  %38 = phi ptr [ %35, %33 ], [ %1, %14 ]
  %39 = icmp ugt i32 %37, 63
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.MD5Context, ptr %0, i64 0, i32 2
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %38, %40 ], [ %45, %42 ]
  %44 = phi i32 [ %37, %40 ], [ %46, %42 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %41, ptr noundef nonnull align 1 dereferenceable(64) %43, i64 64, i1 false)
  tail call void @MD5Transform(ptr noundef %0, ptr noundef nonnull %41)
  %45 = getelementptr inbounds i8, ptr %43, i64 64
  %46 = add i32 %44, -64
  %47 = icmp ugt i32 %46, 63
  br i1 %47, label %42, label %48, !llvm.loop !9

48:                                               ; preds = %42, %36
  %49 = phi i32 [ %37, %36 ], [ %46, %42 ]
  %50 = phi ptr [ %38, %36 ], [ %45, %42 ]
  %51 = getelementptr inbounds %struct.MD5Context, ptr %0, i64 0, i32 2
  %52 = zext nneg i32 %49 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %51, ptr align 1 %50, i64 %52, i1 false)
  br label %53

53:                                               ; preds = %33, %48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MD5Transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds i64, ptr %0, i64 1
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds i64, ptr %0, i64 2
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds i64, ptr %0, i64 3
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = xor i64 %9, %7
  %11 = and i64 %10, %5
  %12 = xor i64 %11, %9
  %13 = load i64, ptr %1, align 8, !tbaa !5
  %14 = add i64 %3, 3614090360
  %15 = add i64 %14, %13
  %16 = add i64 %15, %12
  %17 = shl i64 %16, 7
  %18 = lshr i64 %16, 25
  %19 = or i64 %17, %18
  %20 = add i64 %19, %5
  %21 = xor i64 %7, %5
  %22 = and i64 %20, %21
  %23 = xor i64 %22, %7
  %24 = getelementptr inbounds i64, ptr %1, i64 1
  %25 = load i64, ptr %24, align 8, !tbaa !5
  %26 = add i64 %9, 3905402710
  %27 = add i64 %26, %25
  %28 = add i64 %27, %23
  %29 = shl i64 %28, 12
  %30 = lshr i64 %28, 20
  %31 = or i64 %29, %30
  %32 = add i64 %31, %20
  %33 = xor i64 %20, %5
  %34 = and i64 %32, %33
  %35 = xor i64 %34, %5
  %36 = getelementptr inbounds i64, ptr %1, i64 2
  %37 = load i64, ptr %36, align 8, !tbaa !5
  %38 = add i64 %7, 606105819
  %39 = add i64 %38, %37
  %40 = add i64 %39, %35
  %41 = shl i64 %40, 17
  %42 = lshr i64 %40, 15
  %43 = or i64 %41, %42
  %44 = add i64 %43, %32
  %45 = xor i64 %32, %20
  %46 = and i64 %44, %45
  %47 = xor i64 %46, %20
  %48 = getelementptr inbounds i64, ptr %1, i64 3
  %49 = load i64, ptr %48, align 8, !tbaa !5
  %50 = add i64 %5, 3250441966
  %51 = add i64 %50, %49
  %52 = add i64 %51, %47
  %53 = shl i64 %52, 22
  %54 = lshr i64 %52, 10
  %55 = or i64 %53, %54
  %56 = add i64 %55, %44
  %57 = xor i64 %44, %32
  %58 = and i64 %56, %57
  %59 = xor i64 %58, %32
  %60 = getelementptr inbounds i64, ptr %1, i64 4
  %61 = load i64, ptr %60, align 8, !tbaa !5
  %62 = add i64 %61, 4118548399
  %63 = add i64 %62, %20
  %64 = add i64 %63, %59
  %65 = shl i64 %64, 7
  %66 = lshr i64 %64, 25
  %67 = or i64 %65, %66
  %68 = add i64 %67, %56
  %69 = xor i64 %56, %44
  %70 = and i64 %68, %69
  %71 = xor i64 %70, %44
  %72 = getelementptr inbounds i64, ptr %1, i64 5
  %73 = load i64, ptr %72, align 8, !tbaa !5
  %74 = add i64 %73, 1200080426
  %75 = add i64 %74, %32
  %76 = add i64 %75, %71
  %77 = shl i64 %76, 12
  %78 = lshr i64 %76, 20
  %79 = or i64 %77, %78
  %80 = add i64 %79, %68
  %81 = xor i64 %68, %56
  %82 = and i64 %80, %81
  %83 = xor i64 %82, %56
  %84 = getelementptr inbounds i64, ptr %1, i64 6
  %85 = load i64, ptr %84, align 8, !tbaa !5
  %86 = add i64 %85, 2821735955
  %87 = add i64 %86, %44
  %88 = add i64 %87, %83
  %89 = shl i64 %88, 17
  %90 = lshr i64 %88, 15
  %91 = or i64 %89, %90
  %92 = add i64 %91, %80
  %93 = xor i64 %80, %68
  %94 = and i64 %92, %93
  %95 = xor i64 %94, %68
  %96 = getelementptr inbounds i64, ptr %1, i64 7
  %97 = load i64, ptr %96, align 8, !tbaa !5
  %98 = add i64 %97, 4249261313
  %99 = add i64 %98, %56
  %100 = add i64 %99, %95
  %101 = shl i64 %100, 22
  %102 = lshr i64 %100, 10
  %103 = or i64 %101, %102
  %104 = add i64 %103, %92
  %105 = xor i64 %92, %80
  %106 = and i64 %104, %105
  %107 = xor i64 %106, %80
  %108 = getelementptr inbounds i64, ptr %1, i64 8
  %109 = load i64, ptr %108, align 8, !tbaa !5
  %110 = add i64 %109, 1770035416
  %111 = add i64 %110, %68
  %112 = add i64 %111, %107
  %113 = shl i64 %112, 7
  %114 = lshr i64 %112, 25
  %115 = or i64 %113, %114
  %116 = add i64 %115, %104
  %117 = xor i64 %104, %92
  %118 = and i64 %116, %117
  %119 = xor i64 %118, %92
  %120 = getelementptr inbounds i64, ptr %1, i64 9
  %121 = load i64, ptr %120, align 8, !tbaa !5
  %122 = add i64 %121, 2336552879
  %123 = add i64 %122, %80
  %124 = add i64 %123, %119
  %125 = shl i64 %124, 12
  %126 = lshr i64 %124, 20
  %127 = or i64 %125, %126
  %128 = add i64 %127, %116
  %129 = xor i64 %116, %104
  %130 = and i64 %128, %129
  %131 = xor i64 %130, %104
  %132 = getelementptr inbounds i64, ptr %1, i64 10
  %133 = load i64, ptr %132, align 8, !tbaa !5
  %134 = add i64 %133, 4294925233
  %135 = add i64 %134, %92
  %136 = add i64 %135, %131
  %137 = shl i64 %136, 17
  %138 = lshr i64 %136, 15
  %139 = or i64 %137, %138
  %140 = add i64 %139, %128
  %141 = xor i64 %128, %116
  %142 = and i64 %140, %141
  %143 = xor i64 %142, %116
  %144 = getelementptr inbounds i64, ptr %1, i64 11
  %145 = load i64, ptr %144, align 8, !tbaa !5
  %146 = add i64 %145, 2304563134
  %147 = add i64 %146, %104
  %148 = add i64 %147, %143
  %149 = shl i64 %148, 22
  %150 = lshr i64 %148, 10
  %151 = or i64 %149, %150
  %152 = add i64 %151, %140
  %153 = xor i64 %140, %128
  %154 = and i64 %152, %153
  %155 = xor i64 %154, %128
  %156 = getelementptr inbounds i64, ptr %1, i64 12
  %157 = load i64, ptr %156, align 8, !tbaa !5
  %158 = add i64 %157, 1804603682
  %159 = add i64 %158, %116
  %160 = add i64 %159, %155
  %161 = shl i64 %160, 7
  %162 = lshr i64 %160, 25
  %163 = or i64 %161, %162
  %164 = add i64 %163, %152
  %165 = xor i64 %152, %140
  %166 = and i64 %164, %165
  %167 = xor i64 %166, %140
  %168 = getelementptr inbounds i64, ptr %1, i64 13
  %169 = load i64, ptr %168, align 8, !tbaa !5
  %170 = add i64 %169, 4254626195
  %171 = add i64 %170, %128
  %172 = add i64 %171, %167
  %173 = shl i64 %172, 12
  %174 = lshr i64 %172, 20
  %175 = or i64 %173, %174
  %176 = add i64 %175, %164
  %177 = xor i64 %164, %152
  %178 = and i64 %176, %177
  %179 = xor i64 %178, %152
  %180 = getelementptr inbounds i64, ptr %1, i64 14
  %181 = load i64, ptr %180, align 8, !tbaa !5
  %182 = add i64 %181, 2792965006
  %183 = add i64 %182, %140
  %184 = add i64 %183, %179
  %185 = shl i64 %184, 17
  %186 = lshr i64 %184, 15
  %187 = or i64 %185, %186
  %188 = add i64 %187, %176
  %189 = xor i64 %176, %164
  %190 = and i64 %188, %189
  %191 = xor i64 %190, %164
  %192 = getelementptr inbounds i64, ptr %1, i64 15
  %193 = load i64, ptr %192, align 8, !tbaa !5
  %194 = add i64 %193, 1236535329
  %195 = add i64 %194, %152
  %196 = add i64 %195, %191
  %197 = shl i64 %196, 22
  %198 = lshr i64 %196, 10
  %199 = or i64 %197, %198
  %200 = add i64 %199, %188
  %201 = xor i64 %200, %188
  %202 = and i64 %201, %176
  %203 = xor i64 %202, %188
  %204 = add i64 %25, 4129170786
  %205 = add i64 %204, %164
  %206 = add i64 %205, %203
  %207 = shl i64 %206, 5
  %208 = lshr i64 %206, 27
  %209 = or i64 %207, %208
  %210 = add i64 %209, %200
  %211 = xor i64 %210, %200
  %212 = and i64 %211, %188
  %213 = xor i64 %212, %200
  %214 = add i64 %85, 3225465664
  %215 = add i64 %214, %176
  %216 = add i64 %215, %213
  %217 = shl i64 %216, 9
  %218 = lshr i64 %216, 23
  %219 = or i64 %217, %218
  %220 = add i64 %219, %210
  %221 = xor i64 %220, %210
  %222 = and i64 %221, %200
  %223 = xor i64 %222, %210
  %224 = add i64 %145, 643717713
  %225 = add i64 %224, %188
  %226 = add i64 %225, %223
  %227 = shl i64 %226, 14
  %228 = lshr i64 %226, 18
  %229 = or i64 %227, %228
  %230 = add i64 %229, %220
  %231 = xor i64 %230, %220
  %232 = and i64 %231, %210
  %233 = xor i64 %232, %220
  %234 = add i64 %13, 3921069994
  %235 = add i64 %234, %200
  %236 = add i64 %235, %233
  %237 = shl i64 %236, 20
  %238 = lshr i64 %236, 12
  %239 = or i64 %237, %238
  %240 = add i64 %239, %230
  %241 = xor i64 %240, %230
  %242 = and i64 %241, %220
  %243 = xor i64 %242, %230
  %244 = add i64 %73, 3593408605
  %245 = add i64 %244, %210
  %246 = add i64 %245, %243
  %247 = shl i64 %246, 5
  %248 = lshr i64 %246, 27
  %249 = or i64 %247, %248
  %250 = add i64 %249, %240
  %251 = xor i64 %250, %240
  %252 = and i64 %251, %230
  %253 = xor i64 %252, %240
  %254 = add i64 %133, 38016083
  %255 = add i64 %254, %220
  %256 = add i64 %255, %253
  %257 = shl i64 %256, 9
  %258 = lshr i64 %256, 23
  %259 = or i64 %257, %258
  %260 = add i64 %259, %250
  %261 = xor i64 %260, %250
  %262 = and i64 %261, %240
  %263 = xor i64 %262, %250
  %264 = add i64 %193, 3634488961
  %265 = add i64 %264, %230
  %266 = add i64 %265, %263
  %267 = shl i64 %266, 14
  %268 = lshr i64 %266, 18
  %269 = or i64 %267, %268
  %270 = add i64 %269, %260
  %271 = xor i64 %270, %260
  %272 = and i64 %271, %250
  %273 = xor i64 %272, %260
  %274 = add i64 %61, 3889429448
  %275 = add i64 %274, %240
  %276 = add i64 %275, %273
  %277 = shl i64 %276, 20
  %278 = lshr i64 %276, 12
  %279 = or i64 %277, %278
  %280 = add i64 %279, %270
  %281 = xor i64 %280, %270
  %282 = and i64 %281, %260
  %283 = xor i64 %282, %270
  %284 = add i64 %121, 568446438
  %285 = add i64 %284, %250
  %286 = add i64 %285, %283
  %287 = shl i64 %286, 5
  %288 = lshr i64 %286, 27
  %289 = or i64 %287, %288
  %290 = add i64 %289, %280
  %291 = xor i64 %290, %280
  %292 = and i64 %291, %270
  %293 = xor i64 %292, %280
  %294 = add i64 %181, 3275163606
  %295 = add i64 %294, %260
  %296 = add i64 %295, %293
  %297 = shl i64 %296, 9
  %298 = lshr i64 %296, 23
  %299 = or i64 %297, %298
  %300 = add i64 %299, %290
  %301 = xor i64 %300, %290
  %302 = and i64 %301, %280
  %303 = xor i64 %302, %290
  %304 = add i64 %49, 4107603335
  %305 = add i64 %304, %270
  %306 = add i64 %305, %303
  %307 = shl i64 %306, 14
  %308 = lshr i64 %306, 18
  %309 = or i64 %307, %308
  %310 = add i64 %309, %300
  %311 = xor i64 %310, %300
  %312 = and i64 %311, %290
  %313 = xor i64 %312, %300
  %314 = add i64 %109, 1163531501
  %315 = add i64 %314, %280
  %316 = add i64 %315, %313
  %317 = shl i64 %316, 20
  %318 = lshr i64 %316, 12
  %319 = or i64 %317, %318
  %320 = add i64 %319, %310
  %321 = xor i64 %320, %310
  %322 = and i64 %321, %300
  %323 = xor i64 %322, %310
  %324 = add i64 %169, 2850285829
  %325 = add i64 %324, %290
  %326 = add i64 %325, %323
  %327 = shl i64 %326, 5
  %328 = lshr i64 %326, 27
  %329 = or i64 %327, %328
  %330 = add i64 %329, %320
  %331 = xor i64 %330, %320
  %332 = and i64 %331, %310
  %333 = xor i64 %332, %320
  %334 = add i64 %37, 4243563512
  %335 = add i64 %334, %300
  %336 = add i64 %335, %333
  %337 = shl i64 %336, 9
  %338 = lshr i64 %336, 23
  %339 = or i64 %337, %338
  %340 = add i64 %339, %330
  %341 = xor i64 %340, %330
  %342 = and i64 %341, %320
  %343 = xor i64 %342, %330
  %344 = add i64 %97, 1735328473
  %345 = add i64 %344, %310
  %346 = add i64 %345, %343
  %347 = shl i64 %346, 14
  %348 = lshr i64 %346, 18
  %349 = or i64 %347, %348
  %350 = add i64 %349, %340
  %351 = xor i64 %350, %340
  %352 = and i64 %351, %330
  %353 = xor i64 %352, %340
  %354 = add i64 %157, 2368359562
  %355 = add i64 %354, %320
  %356 = add i64 %355, %353
  %357 = shl i64 %356, 20
  %358 = lshr i64 %356, 12
  %359 = or i64 %357, %358
  %360 = add i64 %359, %350
  %361 = xor i64 %350, %340
  %362 = xor i64 %361, %360
  %363 = add i64 %73, 4294588738
  %364 = add i64 %363, %330
  %365 = add i64 %364, %362
  %366 = shl i64 %365, 4
  %367 = lshr i64 %365, 28
  %368 = or i64 %366, %367
  %369 = add i64 %368, %360
  %370 = xor i64 %360, %350
  %371 = xor i64 %370, %369
  %372 = add i64 %109, 2272392833
  %373 = add i64 %372, %340
  %374 = add i64 %373, %371
  %375 = shl i64 %374, 11
  %376 = lshr i64 %374, 21
  %377 = or i64 %375, %376
  %378 = add i64 %377, %369
  %379 = xor i64 %369, %360
  %380 = xor i64 %379, %378
  %381 = add i64 %145, 1839030562
  %382 = add i64 %381, %350
  %383 = add i64 %382, %380
  %384 = shl i64 %383, 16
  %385 = lshr i64 %383, 16
  %386 = or i64 %384, %385
  %387 = add i64 %386, %378
  %388 = xor i64 %378, %369
  %389 = xor i64 %388, %387
  %390 = add i64 %181, 4259657740
  %391 = add i64 %390, %360
  %392 = add i64 %391, %389
  %393 = shl i64 %392, 23
  %394 = lshr i64 %392, 9
  %395 = or i64 %393, %394
  %396 = add i64 %395, %387
  %397 = xor i64 %387, %378
  %398 = xor i64 %397, %396
  %399 = add i64 %25, 2763975236
  %400 = add i64 %399, %369
  %401 = add i64 %400, %398
  %402 = shl i64 %401, 4
  %403 = lshr i64 %401, 28
  %404 = or i64 %402, %403
  %405 = add i64 %404, %396
  %406 = xor i64 %396, %387
  %407 = xor i64 %406, %405
  %408 = add i64 %61, 1272893353
  %409 = add i64 %408, %378
  %410 = add i64 %409, %407
  %411 = shl i64 %410, 11
  %412 = lshr i64 %410, 21
  %413 = or i64 %411, %412
  %414 = add i64 %413, %405
  %415 = xor i64 %405, %396
  %416 = xor i64 %415, %414
  %417 = add i64 %97, 4139469664
  %418 = add i64 %417, %387
  %419 = add i64 %418, %416
  %420 = shl i64 %419, 16
  %421 = lshr i64 %419, 16
  %422 = or i64 %420, %421
  %423 = add i64 %422, %414
  %424 = xor i64 %414, %405
  %425 = xor i64 %424, %423
  %426 = add i64 %133, 3200236656
  %427 = add i64 %426, %396
  %428 = add i64 %427, %425
  %429 = shl i64 %428, 23
  %430 = lshr i64 %428, 9
  %431 = or i64 %429, %430
  %432 = add i64 %431, %423
  %433 = xor i64 %423, %414
  %434 = xor i64 %433, %432
  %435 = add i64 %169, 681279174
  %436 = add i64 %435, %405
  %437 = add i64 %436, %434
  %438 = shl i64 %437, 4
  %439 = lshr i64 %437, 28
  %440 = or i64 %438, %439
  %441 = add i64 %440, %432
  %442 = xor i64 %432, %423
  %443 = xor i64 %442, %441
  %444 = add i64 %13, 3936430074
  %445 = add i64 %444, %414
  %446 = add i64 %445, %443
  %447 = shl i64 %446, 11
  %448 = lshr i64 %446, 21
  %449 = or i64 %447, %448
  %450 = add i64 %449, %441
  %451 = xor i64 %441, %432
  %452 = xor i64 %451, %450
  %453 = add i64 %49, 3572445317
  %454 = add i64 %453, %423
  %455 = add i64 %454, %452
  %456 = shl i64 %455, 16
  %457 = lshr i64 %455, 16
  %458 = or i64 %456, %457
  %459 = add i64 %458, %450
  %460 = xor i64 %450, %441
  %461 = xor i64 %460, %459
  %462 = add i64 %85, 76029189
  %463 = add i64 %462, %432
  %464 = add i64 %463, %461
  %465 = shl i64 %464, 23
  %466 = lshr i64 %464, 9
  %467 = or i64 %465, %466
  %468 = add i64 %467, %459
  %469 = xor i64 %459, %450
  %470 = xor i64 %469, %468
  %471 = add i64 %121, 3654602809
  %472 = add i64 %471, %441
  %473 = add i64 %472, %470
  %474 = shl i64 %473, 4
  %475 = lshr i64 %473, 28
  %476 = or i64 %474, %475
  %477 = add i64 %476, %468
  %478 = xor i64 %468, %459
  %479 = xor i64 %478, %477
  %480 = add i64 %157, 3873151461
  %481 = add i64 %480, %450
  %482 = add i64 %481, %479
  %483 = shl i64 %482, 11
  %484 = lshr i64 %482, 21
  %485 = or i64 %483, %484
  %486 = add i64 %485, %477
  %487 = xor i64 %477, %468
  %488 = xor i64 %487, %486
  %489 = add i64 %193, 530742520
  %490 = add i64 %489, %459
  %491 = add i64 %490, %488
  %492 = shl i64 %491, 16
  %493 = lshr i64 %491, 16
  %494 = or i64 %492, %493
  %495 = add i64 %494, %486
  %496 = xor i64 %486, %477
  %497 = xor i64 %496, %495
  %498 = add i64 %37, 3299628645
  %499 = add i64 %498, %468
  %500 = add i64 %499, %497
  %501 = shl i64 %500, 23
  %502 = lshr i64 %500, 9
  %503 = or i64 %501, %502
  %504 = add i64 %503, %495
  %505 = xor i64 %486, -1
  %506 = or i64 %504, %505
  %507 = xor i64 %506, %495
  %508 = add i64 %13, 4096336452
  %509 = add i64 %508, %477
  %510 = add i64 %509, %507
  %511 = shl i64 %510, 6
  %512 = lshr i64 %510, 26
  %513 = or i64 %511, %512
  %514 = add i64 %513, %504
  %515 = xor i64 %495, -1
  %516 = or i64 %514, %515
  %517 = xor i64 %516, %504
  %518 = add i64 %97, 1126891415
  %519 = add i64 %518, %486
  %520 = add i64 %519, %517
  %521 = shl i64 %520, 10
  %522 = lshr i64 %520, 22
  %523 = or i64 %521, %522
  %524 = add i64 %523, %514
  %525 = xor i64 %504, -1
  %526 = or i64 %524, %525
  %527 = xor i64 %526, %514
  %528 = add i64 %181, 2878612391
  %529 = add i64 %528, %495
  %530 = add i64 %529, %527
  %531 = shl i64 %530, 15
  %532 = lshr i64 %530, 17
  %533 = or i64 %531, %532
  %534 = add i64 %533, %524
  %535 = xor i64 %514, -1
  %536 = or i64 %534, %535
  %537 = xor i64 %536, %524
  %538 = add i64 %73, 4237533241
  %539 = add i64 %538, %504
  %540 = add i64 %539, %537
  %541 = shl i64 %540, 21
  %542 = lshr i64 %540, 11
  %543 = or i64 %541, %542
  %544 = add i64 %543, %534
  %545 = xor i64 %524, -1
  %546 = or i64 %544, %545
  %547 = xor i64 %546, %534
  %548 = add i64 %157, 1700485571
  %549 = add i64 %548, %514
  %550 = add i64 %549, %547
  %551 = shl i64 %550, 6
  %552 = lshr i64 %550, 26
  %553 = or i64 %551, %552
  %554 = add i64 %553, %544
  %555 = xor i64 %534, -1
  %556 = or i64 %554, %555
  %557 = xor i64 %556, %544
  %558 = add i64 %49, 2399980690
  %559 = add i64 %558, %524
  %560 = add i64 %559, %557
  %561 = shl i64 %560, 10
  %562 = lshr i64 %560, 22
  %563 = or i64 %561, %562
  %564 = add i64 %563, %554
  %565 = xor i64 %544, -1
  %566 = or i64 %564, %565
  %567 = xor i64 %566, %554
  %568 = add i64 %133, 4293915773
  %569 = add i64 %568, %534
  %570 = add i64 %569, %567
  %571 = shl i64 %570, 15
  %572 = lshr i64 %570, 17
  %573 = or i64 %571, %572
  %574 = add i64 %573, %564
  %575 = xor i64 %554, -1
  %576 = or i64 %574, %575
  %577 = xor i64 %576, %564
  %578 = add i64 %25, 2240044497
  %579 = add i64 %578, %544
  %580 = add i64 %579, %577
  %581 = shl i64 %580, 21
  %582 = lshr i64 %580, 11
  %583 = or i64 %581, %582
  %584 = add i64 %583, %574
  %585 = xor i64 %564, -1
  %586 = or i64 %584, %585
  %587 = xor i64 %586, %574
  %588 = add i64 %109, 1873313359
  %589 = add i64 %588, %554
  %590 = add i64 %589, %587
  %591 = shl i64 %590, 6
  %592 = lshr i64 %590, 26
  %593 = or i64 %591, %592
  %594 = add i64 %593, %584
  %595 = xor i64 %574, -1
  %596 = or i64 %594, %595
  %597 = xor i64 %596, %584
  %598 = add i64 %193, 4264355552
  %599 = add i64 %598, %564
  %600 = add i64 %599, %597
  %601 = shl i64 %600, 10
  %602 = lshr i64 %600, 22
  %603 = or i64 %601, %602
  %604 = add i64 %603, %594
  %605 = xor i64 %584, -1
  %606 = or i64 %604, %605
  %607 = xor i64 %606, %594
  %608 = add i64 %85, 2734768916
  %609 = add i64 %608, %574
  %610 = add i64 %609, %607
  %611 = shl i64 %610, 15
  %612 = lshr i64 %610, 17
  %613 = or i64 %611, %612
  %614 = add i64 %613, %604
  %615 = xor i64 %594, -1
  %616 = or i64 %614, %615
  %617 = xor i64 %616, %604
  %618 = add i64 %169, 1309151649
  %619 = add i64 %618, %584
  %620 = add i64 %619, %617
  %621 = shl i64 %620, 21
  %622 = lshr i64 %620, 11
  %623 = or i64 %621, %622
  %624 = add i64 %623, %614
  %625 = xor i64 %604, -1
  %626 = or i64 %624, %625
  %627 = xor i64 %626, %614
  %628 = add i64 %61, 4149444226
  %629 = add i64 %628, %594
  %630 = add i64 %629, %627
  %631 = shl i64 %630, 6
  %632 = lshr i64 %630, 26
  %633 = or i64 %631, %632
  %634 = add i64 %633, %624
  %635 = xor i64 %614, -1
  %636 = or i64 %634, %635
  %637 = xor i64 %636, %624
  %638 = add i64 %145, 3174756917
  %639 = add i64 %638, %604
  %640 = add i64 %639, %637
  %641 = shl i64 %640, 10
  %642 = lshr i64 %640, 22
  %643 = or i64 %641, %642
  %644 = add i64 %643, %634
  %645 = xor i64 %624, -1
  %646 = or i64 %644, %645
  %647 = xor i64 %646, %634
  %648 = add i64 %37, 718787259
  %649 = add i64 %648, %614
  %650 = add i64 %649, %647
  %651 = shl i64 %650, 15
  %652 = lshr i64 %650, 17
  %653 = or i64 %651, %652
  %654 = add i64 %653, %644
  %655 = xor i64 %634, -1
  %656 = or i64 %654, %655
  %657 = xor i64 %656, %644
  %658 = add i64 %121, 3951481745
  %659 = add i64 %658, %624
  %660 = add i64 %659, %657
  %661 = shl i64 %660, 21
  %662 = lshr i64 %660, 11
  %663 = or i64 %661, %662
  %664 = add i64 %634, %3
  store i64 %664, ptr %0, align 8, !tbaa !5
  %665 = add i64 %654, %5
  %666 = add i64 %665, %663
  store i64 %666, ptr %4, align 8, !tbaa !5
  %667 = add i64 %654, %7
  store i64 %667, ptr %6, align 8, !tbaa !5
  %668 = add i64 %644, %9
  store i64 %668, ptr %8, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MD5Final(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.MD5Context, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 63
  %8 = getelementptr inbounds %struct.MD5Context, ptr %1, i64 0, i32 2
  %9 = zext nneg i32 %7 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 -128, ptr %10, align 1, !tbaa !11
  %12 = xor i32 %7, 63
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = zext nneg i32 %12 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %15, i1 false)
  tail call void @MD5Transform(ptr noundef %1, ptr noundef nonnull %8)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  br label %19

16:                                               ; preds = %2
  %17 = sub nsw i32 55, %7
  %18 = zext nneg i32 %17 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i64, ptr %3, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.MD5Context, ptr %1, i64 1, i32 2
  store i64 %20, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.MD5Context, ptr %1, i64 0, i32 1, i64 1
  %23 = load i64, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.MD5Context, ptr %1, i64 1, i32 2, i64 8
  store i64 %23, ptr %24, align 8, !tbaa !5
  tail call void @MD5Transform(ptr noundef %1, ptr noundef nonnull %8)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  store i64 0, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!7, !7, i64 0}
