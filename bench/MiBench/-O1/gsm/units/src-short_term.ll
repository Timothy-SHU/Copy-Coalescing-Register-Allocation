; ModuleID = 'src/short_term.c'
source_filename = "src/short_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Gsm_Short_Term_Analysis_Filter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [8 x i16], align 16
  %5 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 6
  %6 = load i16, ptr %5, align 4, !tbaa !5
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %7
  %9 = xor i16 %6, 1
  store i16 %9, ptr %5, align 4, !tbaa !5
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  tail call fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef %1, ptr noundef nonnull %8)
  br label %12

12:                                               ; preds = %12, %3
  %13 = phi i32 [ 1, %3 ], [ %24, %12 ]
  %14 = phi ptr [ %4, %3 ], [ %25, %12 ]
  %15 = phi ptr [ %8, %3 ], [ %27, %12 ]
  %16 = phi ptr [ %11, %3 ], [ %26, %12 ]
  %17 = load i16, ptr %16, align 2, !tbaa !12
  %18 = ashr i16 %17, 2
  %19 = load i16, ptr %15, align 2, !tbaa !12
  %20 = ashr i16 %19, 2
  %21 = ashr i16 %17, 1
  %22 = add nsw i16 %21, %18
  %23 = add nsw i16 %22, %20
  store i16 %23, ptr %14, align 2, !tbaa !12
  %24 = add nuw nsw i32 %13, 1
  %25 = getelementptr inbounds i16, ptr %14, i64 1
  %26 = getelementptr inbounds i16, ptr %16, i64 1
  %27 = getelementptr inbounds i16, ptr %15, i64 1
  %28 = icmp eq i32 %24, 9
  br i1 %28, label %29, label %12, !llvm.loop !13

29:                                               ; preds = %12, %63
  %30 = phi i32 [ %65, %63 ], [ 1, %12 ]
  %31 = phi ptr [ %66, %63 ], [ %4, %12 ]
  %32 = load i16, ptr %31, align 2, !tbaa !12
  %33 = icmp slt i16 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = icmp eq i16 %32, -32768
  %36 = sub i16 0, %32
  %37 = select i1 %35, i16 32767, i16 %36
  %38 = icmp ult i16 %37, 11059
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = mul nsw i16 %37, -2
  br label %63

41:                                               ; preds = %34
  %42 = icmp ult i16 %37, 20070
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = sub nuw i16 -11059, %37
  br label %63

45:                                               ; preds = %41
  %46 = icmp ugt i16 %37, 26623
  br i1 %46, label %63, label %47

47:                                               ; preds = %45
  %48 = lshr i16 %37, 2
  %49 = sub nuw i16 -26112, %48
  br label %63

50:                                               ; preds = %29
  %51 = icmp slt i16 %32, 11059
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = shl nuw i16 %32, 1
  br label %63

54:                                               ; preds = %50
  %55 = icmp slt i16 %32, 20070
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = add nuw i16 %32, 11059
  br label %63

58:                                               ; preds = %54
  %59 = icmp ugt i16 %32, 26623
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = lshr i16 %32, 2
  %62 = add nuw i16 %61, 26112
  br label %63

63:                                               ; preds = %60, %58, %56, %52, %47, %45, %43, %39
  %64 = phi i16 [ %40, %39 ], [ %44, %43 ], [ %49, %47 ], [ -32767, %45 ], [ %53, %52 ], [ %57, %56 ], [ %62, %60 ], [ 32767, %58 ]
  store i16 %64, ptr %31, align 2, !tbaa !12
  %65 = add nuw nsw i32 %30, 1
  %66 = getelementptr inbounds i16, ptr %31, i64 1
  %67 = icmp eq i32 %65, 9
  br i1 %67, label %68, label %29, !llvm.loop !15

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 4
  br label %70

70:                                               ; preds = %99, %68
  %71 = phi i32 [ %100, %99 ], [ 13, %68 ]
  %72 = phi ptr [ %101, %99 ], [ %2, %68 ]
  %73 = load i16, ptr %72, align 2, !tbaa !12
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i64 [ 0, %70 ], [ %97, %74 ]
  %76 = phi i16 [ %73, %70 ], [ %90, %74 ]
  %77 = phi i16 [ %73, %70 ], [ %96, %74 ]
  %78 = getelementptr inbounds i16, ptr %69, i64 %75
  %79 = load i16, ptr %78, align 2, !tbaa !12
  %80 = getelementptr inbounds i16, ptr %4, i64 %75
  %81 = load i16, ptr %80, align 2, !tbaa !12
  store i16 %76, ptr %78, align 2, !tbaa !12
  %82 = sext i16 %81 to i64
  %83 = sext i16 %77 to i64
  %84 = sext i16 %79 to i64
  %85 = shl nsw i64 %83, 33
  %86 = mul i64 %85, %82
  %87 = add i64 %86, 140737488355328
  %88 = lshr i64 %87, 48
  %89 = trunc i64 %88 to i16
  %90 = tail call i16 @llvm.sadd.sat.i16(i16 %89, i16 %79)
  %91 = shl nsw i64 %84, 33
  %92 = mul i64 %91, %82
  %93 = add i64 %92, 140737488355328
  %94 = lshr i64 %93, 48
  %95 = trunc i64 %94 to i16
  %96 = tail call i16 @llvm.sadd.sat.i16(i16 %95, i16 %77)
  %97 = add nuw nsw i64 %75, 1
  %98 = icmp eq i64 %97, 8
  br i1 %98, label %99, label %74, !llvm.loop !16

99:                                               ; preds = %74
  %100 = add nsw i32 %71, -1
  store i16 %96, ptr %72, align 2, !tbaa !12
  %101 = getelementptr inbounds i16, ptr %72, i64 1
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %103, label %70, !llvm.loop !17

103:                                              ; preds = %99, %103
  %104 = phi ptr [ %114, %103 ], [ %11, %99 ]
  %105 = phi i32 [ %113, %103 ], [ 1, %99 ]
  %106 = phi ptr [ %116, %103 ], [ %4, %99 ]
  %107 = phi ptr [ %115, %103 ], [ %8, %99 ]
  %108 = load i16, ptr %104, align 2, !tbaa !12
  %109 = ashr i16 %108, 1
  %110 = load i16, ptr %107, align 2, !tbaa !12
  %111 = ashr i16 %110, 1
  %112 = add nsw i16 %111, %109
  store i16 %112, ptr %106, align 2, !tbaa !12
  %113 = add nuw nsw i32 %105, 1
  %114 = getelementptr inbounds i16, ptr %104, i64 1
  %115 = getelementptr inbounds i16, ptr %107, i64 1
  %116 = getelementptr inbounds i16, ptr %106, i64 1
  %117 = icmp eq i32 %113, 9
  br i1 %117, label %118, label %103, !llvm.loop !18

118:                                              ; preds = %103, %152
  %119 = phi i32 [ %154, %152 ], [ 1, %103 ]
  %120 = phi ptr [ %155, %152 ], [ %4, %103 ]
  %121 = load i16, ptr %120, align 2, !tbaa !12
  %122 = icmp slt i16 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = icmp eq i16 %121, -32768
  %125 = sub i16 0, %121
  %126 = select i1 %124, i16 32767, i16 %125
  %127 = icmp ult i16 %126, 11059
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = mul nsw i16 %126, -2
  br label %152

130:                                              ; preds = %123
  %131 = icmp ult i16 %126, 20070
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = sub nuw i16 -11059, %126
  br label %152

134:                                              ; preds = %130
  %135 = icmp ugt i16 %126, 26623
  br i1 %135, label %152, label %136

136:                                              ; preds = %134
  %137 = lshr i16 %126, 2
  %138 = sub nuw i16 -26112, %137
  br label %152

139:                                              ; preds = %118
  %140 = icmp slt i16 %121, 11059
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = shl nuw i16 %121, 1
  br label %152

143:                                              ; preds = %139
  %144 = icmp slt i16 %121, 20070
  br i1 %144, label %145, label %147

145:                                              ; preds = %143
  %146 = add nuw i16 %121, 11059
  br label %152

147:                                              ; preds = %143
  %148 = icmp ugt i16 %121, 26623
  br i1 %148, label %152, label %149

149:                                              ; preds = %147
  %150 = lshr i16 %121, 2
  %151 = add nuw i16 %150, 26112
  br label %152

152:                                              ; preds = %149, %147, %145, %141, %136, %134, %132, %128
  %153 = phi i16 [ %129, %128 ], [ %133, %132 ], [ %138, %136 ], [ -32767, %134 ], [ %142, %141 ], [ %146, %145 ], [ %151, %149 ], [ 32767, %147 ]
  store i16 %153, ptr %120, align 2, !tbaa !12
  %154 = add nuw nsw i32 %119, 1
  %155 = getelementptr inbounds i16, ptr %120, i64 1
  %156 = icmp eq i32 %154, 9
  br i1 %156, label %157, label %118, !llvm.loop !15

157:                                              ; preds = %152
  %158 = getelementptr inbounds i16, ptr %2, i64 13
  br label %159

159:                                              ; preds = %188, %157
  %160 = phi i32 [ %189, %188 ], [ 14, %157 ]
  %161 = phi ptr [ %190, %188 ], [ %158, %157 ]
  %162 = load i16, ptr %161, align 2, !tbaa !12
  br label %163

163:                                              ; preds = %163, %159
  %164 = phi i64 [ 0, %159 ], [ %186, %163 ]
  %165 = phi i16 [ %162, %159 ], [ %179, %163 ]
  %166 = phi i16 [ %162, %159 ], [ %185, %163 ]
  %167 = getelementptr inbounds i16, ptr %69, i64 %164
  %168 = load i16, ptr %167, align 2, !tbaa !12
  %169 = getelementptr inbounds i16, ptr %4, i64 %164
  %170 = load i16, ptr %169, align 2, !tbaa !12
  store i16 %165, ptr %167, align 2, !tbaa !12
  %171 = sext i16 %170 to i64
  %172 = sext i16 %166 to i64
  %173 = sext i16 %168 to i64
  %174 = shl nsw i64 %172, 33
  %175 = mul i64 %174, %171
  %176 = add i64 %175, 140737488355328
  %177 = lshr i64 %176, 48
  %178 = trunc i64 %177 to i16
  %179 = tail call i16 @llvm.sadd.sat.i16(i16 %178, i16 %168)
  %180 = shl nsw i64 %173, 33
  %181 = mul i64 %180, %171
  %182 = add i64 %181, 140737488355328
  %183 = lshr i64 %182, 48
  %184 = trunc i64 %183 to i16
  %185 = tail call i16 @llvm.sadd.sat.i16(i16 %184, i16 %166)
  %186 = add nuw nsw i64 %164, 1
  %187 = icmp eq i64 %186, 8
  br i1 %187, label %188, label %163, !llvm.loop !16

188:                                              ; preds = %163
  %189 = add nsw i32 %160, -1
  store i16 %185, ptr %161, align 2, !tbaa !12
  %190 = getelementptr inbounds i16, ptr %161, i64 1
  %191 = icmp eq i32 %189, 0
  br i1 %191, label %192, label %159, !llvm.loop !17

192:                                              ; preds = %188, %192
  %193 = phi i32 [ %204, %192 ], [ 1, %188 ]
  %194 = phi ptr [ %207, %192 ], [ %4, %188 ]
  %195 = phi ptr [ %206, %192 ], [ %8, %188 ]
  %196 = phi ptr [ %205, %192 ], [ %11, %188 ]
  %197 = load i16, ptr %196, align 2, !tbaa !12
  %198 = ashr i16 %197, 2
  %199 = load i16, ptr %195, align 2, !tbaa !12
  %200 = ashr i16 %199, 2
  %201 = add nsw i16 %200, %198
  %202 = ashr i16 %199, 1
  %203 = add nsw i16 %201, %202
  store i16 %203, ptr %194, align 2, !tbaa !12
  %204 = add nuw nsw i32 %193, 1
  %205 = getelementptr inbounds i16, ptr %196, i64 1
  %206 = getelementptr inbounds i16, ptr %195, i64 1
  %207 = getelementptr inbounds i16, ptr %194, i64 1
  %208 = icmp eq i32 %204, 9
  br i1 %208, label %209, label %192, !llvm.loop !19

209:                                              ; preds = %192, %243
  %210 = phi i32 [ %245, %243 ], [ 1, %192 ]
  %211 = phi ptr [ %246, %243 ], [ %4, %192 ]
  %212 = load i16, ptr %211, align 2, !tbaa !12
  %213 = icmp slt i16 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %209
  %215 = icmp eq i16 %212, -32768
  %216 = sub i16 0, %212
  %217 = select i1 %215, i16 32767, i16 %216
  %218 = icmp ult i16 %217, 11059
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = mul nsw i16 %217, -2
  br label %243

221:                                              ; preds = %214
  %222 = icmp ult i16 %217, 20070
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  %224 = sub nuw i16 -11059, %217
  br label %243

225:                                              ; preds = %221
  %226 = icmp ugt i16 %217, 26623
  br i1 %226, label %243, label %227

227:                                              ; preds = %225
  %228 = lshr i16 %217, 2
  %229 = sub nuw i16 -26112, %228
  br label %243

230:                                              ; preds = %209
  %231 = icmp slt i16 %212, 11059
  br i1 %231, label %232, label %234

232:                                              ; preds = %230
  %233 = shl nuw i16 %212, 1
  br label %243

234:                                              ; preds = %230
  %235 = icmp slt i16 %212, 20070
  br i1 %235, label %236, label %238

236:                                              ; preds = %234
  %237 = add nuw i16 %212, 11059
  br label %243

238:                                              ; preds = %234
  %239 = icmp ugt i16 %212, 26623
  br i1 %239, label %243, label %240

240:                                              ; preds = %238
  %241 = lshr i16 %212, 2
  %242 = add nuw i16 %241, 26112
  br label %243

243:                                              ; preds = %240, %238, %236, %232, %227, %225, %223, %219
  %244 = phi i16 [ %220, %219 ], [ %224, %223 ], [ %229, %227 ], [ -32767, %225 ], [ %233, %232 ], [ %237, %236 ], [ %242, %240 ], [ 32767, %238 ]
  store i16 %244, ptr %211, align 2, !tbaa !12
  %245 = add nuw nsw i32 %210, 1
  %246 = getelementptr inbounds i16, ptr %211, i64 1
  %247 = icmp eq i32 %245, 9
  br i1 %247, label %248, label %209, !llvm.loop !15

248:                                              ; preds = %243
  %249 = getelementptr inbounds i16, ptr %2, i64 27
  br label %250

250:                                              ; preds = %279, %248
  %251 = phi i32 [ %280, %279 ], [ 13, %248 ]
  %252 = phi ptr [ %281, %279 ], [ %249, %248 ]
  %253 = load i16, ptr %252, align 2, !tbaa !12
  br label %254

254:                                              ; preds = %254, %250
  %255 = phi i64 [ 0, %250 ], [ %277, %254 ]
  %256 = phi i16 [ %253, %250 ], [ %270, %254 ]
  %257 = phi i16 [ %253, %250 ], [ %276, %254 ]
  %258 = getelementptr inbounds i16, ptr %69, i64 %255
  %259 = load i16, ptr %258, align 2, !tbaa !12
  %260 = getelementptr inbounds i16, ptr %4, i64 %255
  %261 = load i16, ptr %260, align 2, !tbaa !12
  store i16 %256, ptr %258, align 2, !tbaa !12
  %262 = sext i16 %261 to i64
  %263 = sext i16 %257 to i64
  %264 = sext i16 %259 to i64
  %265 = shl nsw i64 %263, 33
  %266 = mul i64 %265, %262
  %267 = add i64 %266, 140737488355328
  %268 = lshr i64 %267, 48
  %269 = trunc i64 %268 to i16
  %270 = tail call i16 @llvm.sadd.sat.i16(i16 %269, i16 %259)
  %271 = shl nsw i64 %264, 33
  %272 = mul i64 %271, %262
  %273 = add i64 %272, 140737488355328
  %274 = lshr i64 %273, 48
  %275 = trunc i64 %274 to i16
  %276 = tail call i16 @llvm.sadd.sat.i16(i16 %275, i16 %257)
  %277 = add nuw nsw i64 %255, 1
  %278 = icmp eq i64 %277, 8
  br i1 %278, label %279, label %254, !llvm.loop !16

279:                                              ; preds = %254
  %280 = add nsw i32 %251, -1
  store i16 %276, ptr %252, align 2, !tbaa !12
  %281 = getelementptr inbounds i16, ptr %252, i64 1
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %283, label %250, !llvm.loop !17

283:                                              ; preds = %279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(16) %8, i64 16, i1 false), !tbaa !12
  br label %284

284:                                              ; preds = %283, %318
  %285 = phi i32 [ %320, %318 ], [ 1, %283 ]
  %286 = phi ptr [ %321, %318 ], [ %4, %283 ]
  %287 = load i16, ptr %286, align 2, !tbaa !12
  %288 = icmp slt i16 %287, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %284
  %290 = icmp eq i16 %287, -32768
  %291 = sub i16 0, %287
  %292 = select i1 %290, i16 32767, i16 %291
  %293 = icmp ult i16 %292, 11059
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = mul nsw i16 %292, -2
  br label %318

296:                                              ; preds = %289
  %297 = icmp ult i16 %292, 20070
  br i1 %297, label %298, label %300

298:                                              ; preds = %296
  %299 = sub nuw i16 -11059, %292
  br label %318

300:                                              ; preds = %296
  %301 = icmp ugt i16 %292, 26623
  br i1 %301, label %318, label %302

302:                                              ; preds = %300
  %303 = lshr i16 %292, 2
  %304 = sub nuw i16 -26112, %303
  br label %318

305:                                              ; preds = %284
  %306 = icmp slt i16 %287, 11059
  br i1 %306, label %307, label %309

307:                                              ; preds = %305
  %308 = shl nuw i16 %287, 1
  br label %318

309:                                              ; preds = %305
  %310 = icmp slt i16 %287, 20070
  br i1 %310, label %311, label %313

311:                                              ; preds = %309
  %312 = add nuw i16 %287, 11059
  br label %318

313:                                              ; preds = %309
  %314 = icmp ugt i16 %287, 26623
  br i1 %314, label %318, label %315

315:                                              ; preds = %313
  %316 = lshr i16 %287, 2
  %317 = add nuw i16 %316, 26112
  br label %318

318:                                              ; preds = %315, %313, %311, %307, %302, %300, %298, %294
  %319 = phi i16 [ %295, %294 ], [ %299, %298 ], [ %304, %302 ], [ -32767, %300 ], [ %308, %307 ], [ %312, %311 ], [ %317, %315 ], [ 32767, %313 ]
  store i16 %319, ptr %286, align 2, !tbaa !12
  %320 = add nuw nsw i32 %285, 1
  %321 = getelementptr inbounds i16, ptr %286, i64 1
  %322 = icmp eq i32 %320, 9
  br i1 %322, label %323, label %284, !llvm.loop !15

323:                                              ; preds = %318
  %324 = getelementptr inbounds i16, ptr %2, i64 40
  br label %325

325:                                              ; preds = %354, %323
  %326 = phi i32 [ %355, %354 ], [ 120, %323 ]
  %327 = phi ptr [ %356, %354 ], [ %324, %323 ]
  %328 = load i16, ptr %327, align 2, !tbaa !12
  br label %329

329:                                              ; preds = %329, %325
  %330 = phi i64 [ 0, %325 ], [ %352, %329 ]
  %331 = phi i16 [ %328, %325 ], [ %345, %329 ]
  %332 = phi i16 [ %328, %325 ], [ %351, %329 ]
  %333 = getelementptr inbounds i16, ptr %69, i64 %330
  %334 = load i16, ptr %333, align 2, !tbaa !12
  %335 = getelementptr inbounds i16, ptr %4, i64 %330
  %336 = load i16, ptr %335, align 2, !tbaa !12
  store i16 %331, ptr %333, align 2, !tbaa !12
  %337 = sext i16 %336 to i64
  %338 = sext i16 %332 to i64
  %339 = sext i16 %334 to i64
  %340 = shl nsw i64 %338, 33
  %341 = mul i64 %340, %337
  %342 = add i64 %341, 140737488355328
  %343 = lshr i64 %342, 48
  %344 = trunc i64 %343 to i16
  %345 = tail call i16 @llvm.sadd.sat.i16(i16 %344, i16 %334)
  %346 = shl nsw i64 %339, 33
  %347 = mul i64 %346, %337
  %348 = add i64 %347, 140737488355328
  %349 = lshr i64 %348, 48
  %350 = trunc i64 %349 to i16
  %351 = tail call i16 @llvm.sadd.sat.i16(i16 %350, i16 %332)
  %352 = add nuw nsw i64 %330, 1
  %353 = icmp eq i64 %352, 8
  br i1 %353, label %354, label %329, !llvm.loop !16

354:                                              ; preds = %329
  %355 = add nsw i32 %326, -1
  store i16 %351, ptr %327, align 2, !tbaa !12
  %356 = getelementptr inbounds i16, ptr %327, i64 1
  %357 = icmp eq i32 %355, 0
  br i1 %357, label %358, label %325, !llvm.loop !17

358:                                              ; preds = %354
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds i16, ptr %0, i64 1
  %4 = load i16, ptr %0, align 2, !tbaa !12
  %5 = sext i16 %4 to i64
  %6 = add nsw i64 %5, -32800
  %7 = icmp ult i64 %6, -65536
  %8 = icmp sgt i16 %4, 32
  %9 = select i1 %8, i16 63, i16 0
  %10 = xor i16 %4, 32
  %11 = select i1 %7, i16 %9, i16 %10
  %12 = shl i16 %11, 10
  %13 = sext i16 %12 to i64
  %14 = mul nsw i64 %13, 112588272697344
  %15 = add nsw i64 %14, 140737488355328
  %16 = lshr i64 %15, 47
  %17 = trunc i64 %16 to i16
  %18 = and i16 %17, -2
  %19 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 %18, ptr %1, align 2, !tbaa !12
  %20 = getelementptr inbounds i16, ptr %0, i64 2
  %21 = load i16, ptr %3, align 2, !tbaa !12
  %22 = sext i16 %21 to i64
  %23 = add nsw i64 %22, -32800
  %24 = icmp ult i64 %23, -65536
  %25 = icmp sgt i16 %21, 32
  %26 = select i1 %25, i16 63, i16 0
  %27 = xor i16 %21, 32
  %28 = select i1 %24, i16 %26, i16 %27
  %29 = shl i16 %28, 10
  %30 = sext i16 %29 to i64
  %31 = mul nsw i64 %30, 112588272697344
  %32 = add nsw i64 %31, 140737488355328
  %33 = lshr i64 %32, 47
  %34 = trunc i64 %33 to i16
  %35 = and i16 %34, -2
  %36 = getelementptr inbounds i16, ptr %1, i64 2
  store i16 %35, ptr %19, align 2, !tbaa !12
  %37 = getelementptr inbounds i16, ptr %0, i64 3
  %38 = load i16, ptr %20, align 2, !tbaa !12
  %39 = sext i16 %38 to i64
  %40 = add nsw i64 %39, -32784
  %41 = icmp ult i64 %40, -65536
  %42 = icmp sgt i16 %38, 16
  %43 = select i1 %42, i16 63, i16 0
  %44 = add i16 %38, 48
  %45 = select i1 %41, i16 %43, i16 %44
  %46 = shl i16 %45, 10
  %47 = add i16 %46, -4096
  %48 = icmp slt i16 %46, -28671
  %49 = select i1 %48, i16 -32768, i16 %47
  %50 = sext i16 %49 to i64
  %51 = mul nsw i64 %50, 112588272697344
  %52 = add nsw i64 %51, 140737488355328
  %53 = lshr i64 %52, 47
  %54 = trunc i64 %53 to i16
  %55 = and i16 %54, -2
  %56 = getelementptr inbounds i16, ptr %1, i64 3
  store i16 %55, ptr %36, align 2, !tbaa !12
  %57 = getelementptr inbounds i16, ptr %0, i64 4
  %58 = load i16, ptr %37, align 2, !tbaa !12
  %59 = sext i16 %58 to i64
  %60 = add nsw i64 %59, -32784
  %61 = icmp ult i64 %60, -65536
  %62 = icmp sgt i16 %58, 16
  %63 = select i1 %62, i16 63, i16 0
  %64 = add i16 %58, 48
  %65 = select i1 %61, i16 %63, i16 %64
  %66 = shl i16 %65, 10
  %67 = add i16 %66, 5120
  %68 = icmp sgt i16 %66, 27646
  %69 = select i1 %68, i16 32767, i16 %67
  %70 = sext i16 %69 to i64
  %71 = mul nsw i64 %70, 112588272697344
  %72 = add nsw i64 %71, 140737488355328
  %73 = lshr i64 %72, 47
  %74 = trunc i64 %73 to i16
  %75 = and i16 %74, -2
  %76 = getelementptr inbounds i16, ptr %1, i64 4
  store i16 %75, ptr %56, align 2, !tbaa !12
  %77 = getelementptr inbounds i16, ptr %0, i64 5
  %78 = load i16, ptr %57, align 2, !tbaa !12
  %79 = sext i16 %78 to i64
  %80 = add nsw i64 %79, -32776
  %81 = icmp ult i64 %80, -65536
  %82 = icmp sgt i16 %78, 8
  %83 = select i1 %82, i16 63, i16 0
  %84 = add i16 %78, 56
  %85 = select i1 %81, i16 %83, i16 %84
  %86 = shl i16 %85, 10
  %87 = add i16 %86, -188
  %88 = icmp slt i16 %86, -32579
  %89 = select i1 %88, i16 -32768, i16 %87
  %90 = sext i16 %89 to i64
  %91 = mul nsw i64 %90, 165124312662016
  %92 = add nsw i64 %91, 140737488355328
  %93 = ashr i64 %92, 47
  %94 = and i64 %93, -2
  %95 = add nsw i64 %93, -32768
  %96 = icmp ult i64 %95, -65536
  %97 = icmp sgt i64 %94, 0
  %98 = select i1 %97, i64 32767, i64 32768
  %99 = select i1 %96, i64 %98, i64 %94
  %100 = trunc i64 %99 to i16
  %101 = getelementptr inbounds i16, ptr %1, i64 5
  store i16 %100, ptr %76, align 2, !tbaa !12
  %102 = getelementptr inbounds i16, ptr %0, i64 6
  %103 = load i16, ptr %77, align 2, !tbaa !12
  %104 = sext i16 %103 to i64
  %105 = add nsw i64 %104, -32776
  %106 = icmp ult i64 %105, -65536
  %107 = icmp sgt i16 %103, 8
  %108 = select i1 %107, i16 63, i16 0
  %109 = add i16 %103, 56
  %110 = select i1 %106, i16 %108, i16 %109
  %111 = shl i16 %110, 10
  %112 = add i16 %111, 3584
  %113 = icmp sgt i16 %111, 29182
  %114 = select i1 %113, i16 32767, i16 %112
  %115 = sext i16 %114 to i64
  %116 = mul nsw i64 %115, 150117696929792
  %117 = add nsw i64 %116, 140737488355328
  %118 = ashr i64 %117, 47
  %119 = and i64 %118, -2
  %120 = add nsw i64 %118, -32768
  %121 = icmp ult i64 %120, -65536
  %122 = icmp sgt i64 %119, 0
  %123 = select i1 %122, i64 32767, i64 32768
  %124 = select i1 %121, i64 %123, i64 %119
  %125 = trunc i64 %124 to i16
  %126 = getelementptr inbounds i16, ptr %1, i64 6
  store i16 %125, ptr %101, align 2, !tbaa !12
  %127 = getelementptr inbounds i16, ptr %0, i64 7
  %128 = load i16, ptr %102, align 2, !tbaa !12
  %129 = sext i16 %128 to i64
  %130 = add nsw i64 %129, -32772
  %131 = icmp ult i64 %130, -65536
  %132 = icmp sgt i16 %128, 4
  %133 = select i1 %132, i16 63, i16 0
  %134 = add i16 %128, 60
  %135 = select i1 %131, i16 %133, i16 %134
  %136 = shl i16 %135, 10
  %137 = or disjoint i16 %136, 682
  %138 = sext i16 %137 to i64
  %139 = mul nsw i64 %138, 270187802656768
  %140 = add nsw i64 %139, 140737488355328
  %141 = ashr i64 %140, 47
  %142 = and i64 %141, -2
  %143 = add nsw i64 %141, -32768
  %144 = icmp ult i64 %143, -65536
  %145 = icmp sgt i64 %142, 0
  %146 = select i1 %145, i64 32767, i64 32768
  %147 = select i1 %144, i64 %146, i64 %142
  %148 = trunc i64 %147 to i16
  store i16 %148, ptr %126, align 2, !tbaa !12
  %149 = load i16, ptr %127, align 2, !tbaa !12
  %150 = sext i16 %149 to i64
  %151 = add nsw i64 %150, -32772
  %152 = icmp ult i64 %151, -65536
  %153 = icmp sgt i16 %149, 4
  %154 = select i1 %153, i16 63, i16 0
  %155 = add i16 %149, 60
  %156 = select i1 %152, i16 %154, i16 %155
  %157 = shl i16 %156, 10
  %158 = add i16 %157, 2288
  %159 = icmp sgt i16 %157, 30478
  %160 = select i1 %159, i16 32767, i16 %158
  %161 = sext i16 %160 to i64
  %162 = mul nsw i64 %161, 255189776859136
  %163 = add nsw i64 %162, 140737488355328
  %164 = ashr i64 %163, 47
  %165 = and i64 %164, -2
  %166 = add nsw i64 %164, -32768
  %167 = icmp ult i64 %166, -65536
  %168 = icmp sgt i64 %165, 0
  %169 = select i1 %168, i64 32767, i64 32768
  %170 = select i1 %167, i64 %169, i64 %165
  %171 = getelementptr inbounds i16, ptr %1, i64 7
  %172 = trunc i64 %170 to i16
  store i16 %172, ptr %171, align 2, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Gsm_Short_Term_Synthesis_Filter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [8 x i16], align 16
  %6 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !5
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %8
  %10 = xor i16 %7, 1
  store i16 %10, ptr %6, align 4, !tbaa !5
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  tail call fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef %1, ptr noundef nonnull %9)
  br label %13

13:                                               ; preds = %13, %4
  %14 = phi i32 [ 1, %4 ], [ %25, %13 ]
  %15 = phi ptr [ %5, %4 ], [ %26, %13 ]
  %16 = phi ptr [ %9, %4 ], [ %28, %13 ]
  %17 = phi ptr [ %12, %4 ], [ %27, %13 ]
  %18 = load i16, ptr %17, align 2, !tbaa !12
  %19 = ashr i16 %18, 2
  %20 = load i16, ptr %16, align 2, !tbaa !12
  %21 = ashr i16 %20, 2
  %22 = ashr i16 %18, 1
  %23 = add nsw i16 %22, %19
  %24 = add nsw i16 %23, %21
  store i16 %24, ptr %15, align 2, !tbaa !12
  %25 = add nuw nsw i32 %14, 1
  %26 = getelementptr inbounds i16, ptr %15, i64 1
  %27 = getelementptr inbounds i16, ptr %17, i64 1
  %28 = getelementptr inbounds i16, ptr %16, i64 1
  %29 = icmp eq i32 %25, 9
  br i1 %29, label %30, label %13, !llvm.loop !13

30:                                               ; preds = %13, %64
  %31 = phi i32 [ %66, %64 ], [ 1, %13 ]
  %32 = phi ptr [ %67, %64 ], [ %5, %13 ]
  %33 = load i16, ptr %32, align 2, !tbaa !12
  %34 = icmp slt i16 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = icmp eq i16 %33, -32768
  %37 = sub i16 0, %33
  %38 = select i1 %36, i16 32767, i16 %37
  %39 = icmp ult i16 %38, 11059
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = mul nsw i16 %38, -2
  br label %64

42:                                               ; preds = %35
  %43 = icmp ult i16 %38, 20070
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = sub nuw i16 -11059, %38
  br label %64

46:                                               ; preds = %42
  %47 = icmp ugt i16 %38, 26623
  br i1 %47, label %64, label %48

48:                                               ; preds = %46
  %49 = lshr i16 %38, 2
  %50 = sub nuw i16 -26112, %49
  br label %64

51:                                               ; preds = %30
  %52 = icmp slt i16 %33, 11059
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = shl nuw i16 %33, 1
  br label %64

55:                                               ; preds = %51
  %56 = icmp slt i16 %33, 20070
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = add nuw i16 %33, 11059
  br label %64

59:                                               ; preds = %55
  %60 = icmp ugt i16 %33, 26623
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = lshr i16 %33, 2
  %63 = add nuw i16 %62, 26112
  br label %64

64:                                               ; preds = %61, %59, %57, %53, %48, %46, %44, %40
  %65 = phi i16 [ %41, %40 ], [ %45, %44 ], [ %50, %48 ], [ -32767, %46 ], [ %54, %53 ], [ %58, %57 ], [ %63, %61 ], [ 32767, %59 ]
  store i16 %65, ptr %32, align 2, !tbaa !12
  %66 = add nuw nsw i32 %31, 1
  %67 = getelementptr inbounds i16, ptr %32, i64 1
  %68 = icmp eq i32 %66, 9
  br i1 %68, label %69, label %30, !llvm.loop !15

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 8
  br label %71

71:                                               ; preds = %115, %69
  %72 = phi i32 [ %116, %115 ], [ 13, %69 ]
  %73 = phi ptr [ %118, %115 ], [ %3, %69 ]
  %74 = phi ptr [ %117, %115 ], [ %2, %69 ]
  %75 = load i16, ptr %74, align 2, !tbaa !12
  br label %76

76:                                               ; preds = %107, %71
  %77 = phi i64 [ 8, %71 ], [ %114, %107 ]
  %78 = phi i64 [ 7, %71 ], [ %112, %107 ]
  %79 = phi i16 [ %75, %71 ], [ %97, %107 ]
  %80 = getelementptr inbounds i16, ptr %5, i64 %78
  %81 = load i16, ptr %80, align 2, !tbaa !12
  %82 = getelementptr inbounds i16, ptr %70, i64 %78
  %83 = load i16, ptr %82, align 2, !tbaa !12
  %84 = icmp eq i16 %81, -32768
  %85 = icmp eq i16 %83, -32768
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %94, label %87

87:                                               ; preds = %76
  %88 = sext i16 %81 to i64
  %89 = sext i16 %83 to i64
  %90 = mul nsw i64 %89, %88
  %91 = add nsw i64 %90, 16384
  %92 = lshr i64 %91, 15
  %93 = and i64 %92, 65535
  br label %94

94:                                               ; preds = %87, %76
  %95 = phi i64 [ %93, %87 ], [ 32767, %76 ]
  %96 = trunc i64 %95 to i16
  %97 = tail call i16 @llvm.ssub.sat.i16(i16 %79, i16 %96)
  %98 = icmp eq i16 %97, -32768
  %99 = select i1 %84, i1 %98, i1 false
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = sext i16 %81 to i64
  %102 = sext i16 %97 to i64
  %103 = mul nsw i64 %102, %101
  %104 = add nsw i64 %103, 16384
  %105 = lshr i64 %104, 15
  %106 = and i64 %105, 65535
  br label %107

107:                                              ; preds = %100, %94
  %108 = phi i64 [ %106, %100 ], [ 32767, %94 ]
  %109 = trunc i64 %108 to i16
  %110 = tail call i16 @llvm.sadd.sat.i16(i16 %109, i16 %83)
  %111 = getelementptr inbounds i16, ptr %70, i64 %77
  store i16 %110, ptr %111, align 2, !tbaa !12
  %112 = add nsw i64 %78, -1
  %113 = icmp eq i64 %78, 0
  %114 = add nsw i64 %77, -1
  br i1 %113, label %115, label %76, !llvm.loop !20

115:                                              ; preds = %107
  %116 = add nsw i32 %72, -1
  %117 = getelementptr inbounds i16, ptr %74, i64 1
  store i16 %97, ptr %70, align 2, !tbaa !12
  %118 = getelementptr inbounds i16, ptr %73, i64 1
  store i16 %97, ptr %73, align 2, !tbaa !12
  %119 = icmp eq i32 %116, 0
  br i1 %119, label %120, label %71, !llvm.loop !21

120:                                              ; preds = %115, %120
  %121 = phi ptr [ %131, %120 ], [ %12, %115 ]
  %122 = phi i32 [ %130, %120 ], [ 1, %115 ]
  %123 = phi ptr [ %133, %120 ], [ %5, %115 ]
  %124 = phi ptr [ %132, %120 ], [ %9, %115 ]
  %125 = load i16, ptr %121, align 2, !tbaa !12
  %126 = ashr i16 %125, 1
  %127 = load i16, ptr %124, align 2, !tbaa !12
  %128 = ashr i16 %127, 1
  %129 = add nsw i16 %128, %126
  store i16 %129, ptr %123, align 2, !tbaa !12
  %130 = add nuw nsw i32 %122, 1
  %131 = getelementptr inbounds i16, ptr %121, i64 1
  %132 = getelementptr inbounds i16, ptr %124, i64 1
  %133 = getelementptr inbounds i16, ptr %123, i64 1
  %134 = icmp eq i32 %130, 9
  br i1 %134, label %135, label %120, !llvm.loop !18

135:                                              ; preds = %120, %169
  %136 = phi i32 [ %171, %169 ], [ 1, %120 ]
  %137 = phi ptr [ %172, %169 ], [ %5, %120 ]
  %138 = load i16, ptr %137, align 2, !tbaa !12
  %139 = icmp slt i16 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = icmp eq i16 %138, -32768
  %142 = sub i16 0, %138
  %143 = select i1 %141, i16 32767, i16 %142
  %144 = icmp ult i16 %143, 11059
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = mul nsw i16 %143, -2
  br label %169

147:                                              ; preds = %140
  %148 = icmp ult i16 %143, 20070
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = sub nuw i16 -11059, %143
  br label %169

151:                                              ; preds = %147
  %152 = icmp ugt i16 %143, 26623
  br i1 %152, label %169, label %153

153:                                              ; preds = %151
  %154 = lshr i16 %143, 2
  %155 = sub nuw i16 -26112, %154
  br label %169

156:                                              ; preds = %135
  %157 = icmp slt i16 %138, 11059
  br i1 %157, label %158, label %160

158:                                              ; preds = %156
  %159 = shl nuw i16 %138, 1
  br label %169

160:                                              ; preds = %156
  %161 = icmp slt i16 %138, 20070
  br i1 %161, label %162, label %164

162:                                              ; preds = %160
  %163 = add nuw i16 %138, 11059
  br label %169

164:                                              ; preds = %160
  %165 = icmp ugt i16 %138, 26623
  br i1 %165, label %169, label %166

166:                                              ; preds = %164
  %167 = lshr i16 %138, 2
  %168 = add nuw i16 %167, 26112
  br label %169

169:                                              ; preds = %166, %164, %162, %158, %153, %151, %149, %145
  %170 = phi i16 [ %146, %145 ], [ %150, %149 ], [ %155, %153 ], [ -32767, %151 ], [ %159, %158 ], [ %163, %162 ], [ %168, %166 ], [ 32767, %164 ]
  store i16 %170, ptr %137, align 2, !tbaa !12
  %171 = add nuw nsw i32 %136, 1
  %172 = getelementptr inbounds i16, ptr %137, i64 1
  %173 = icmp eq i32 %171, 9
  br i1 %173, label %174, label %135, !llvm.loop !15

174:                                              ; preds = %169
  %175 = getelementptr inbounds i16, ptr %2, i64 13
  %176 = getelementptr inbounds i16, ptr %3, i64 13
  br label %177

177:                                              ; preds = %221, %174
  %178 = phi i32 [ %222, %221 ], [ 14, %174 ]
  %179 = phi ptr [ %224, %221 ], [ %176, %174 ]
  %180 = phi ptr [ %223, %221 ], [ %175, %174 ]
  %181 = load i16, ptr %180, align 2, !tbaa !12
  br label %182

182:                                              ; preds = %213, %177
  %183 = phi i64 [ 8, %177 ], [ %220, %213 ]
  %184 = phi i64 [ 7, %177 ], [ %218, %213 ]
  %185 = phi i16 [ %181, %177 ], [ %203, %213 ]
  %186 = getelementptr inbounds i16, ptr %5, i64 %184
  %187 = load i16, ptr %186, align 2, !tbaa !12
  %188 = getelementptr inbounds i16, ptr %70, i64 %184
  %189 = load i16, ptr %188, align 2, !tbaa !12
  %190 = icmp eq i16 %187, -32768
  %191 = icmp eq i16 %189, -32768
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %200, label %193

193:                                              ; preds = %182
  %194 = sext i16 %187 to i64
  %195 = sext i16 %189 to i64
  %196 = mul nsw i64 %195, %194
  %197 = add nsw i64 %196, 16384
  %198 = lshr i64 %197, 15
  %199 = and i64 %198, 65535
  br label %200

200:                                              ; preds = %193, %182
  %201 = phi i64 [ %199, %193 ], [ 32767, %182 ]
  %202 = trunc i64 %201 to i16
  %203 = tail call i16 @llvm.ssub.sat.i16(i16 %185, i16 %202)
  %204 = icmp eq i16 %203, -32768
  %205 = select i1 %190, i1 %204, i1 false
  br i1 %205, label %213, label %206

206:                                              ; preds = %200
  %207 = sext i16 %187 to i64
  %208 = sext i16 %203 to i64
  %209 = mul nsw i64 %208, %207
  %210 = add nsw i64 %209, 16384
  %211 = lshr i64 %210, 15
  %212 = and i64 %211, 65535
  br label %213

213:                                              ; preds = %206, %200
  %214 = phi i64 [ %212, %206 ], [ 32767, %200 ]
  %215 = trunc i64 %214 to i16
  %216 = tail call i16 @llvm.sadd.sat.i16(i16 %215, i16 %189)
  %217 = getelementptr inbounds i16, ptr %70, i64 %183
  store i16 %216, ptr %217, align 2, !tbaa !12
  %218 = add nsw i64 %184, -1
  %219 = icmp eq i64 %184, 0
  %220 = add nsw i64 %183, -1
  br i1 %219, label %221, label %182, !llvm.loop !20

221:                                              ; preds = %213
  %222 = add nsw i32 %178, -1
  %223 = getelementptr inbounds i16, ptr %180, i64 1
  store i16 %203, ptr %70, align 2, !tbaa !12
  %224 = getelementptr inbounds i16, ptr %179, i64 1
  store i16 %203, ptr %179, align 2, !tbaa !12
  %225 = icmp eq i32 %222, 0
  br i1 %225, label %226, label %177, !llvm.loop !21

226:                                              ; preds = %221, %226
  %227 = phi i32 [ %238, %226 ], [ 1, %221 ]
  %228 = phi ptr [ %241, %226 ], [ %5, %221 ]
  %229 = phi ptr [ %240, %226 ], [ %9, %221 ]
  %230 = phi ptr [ %239, %226 ], [ %12, %221 ]
  %231 = load i16, ptr %230, align 2, !tbaa !12
  %232 = ashr i16 %231, 2
  %233 = load i16, ptr %229, align 2, !tbaa !12
  %234 = ashr i16 %233, 2
  %235 = add nsw i16 %234, %232
  %236 = ashr i16 %233, 1
  %237 = add nsw i16 %235, %236
  store i16 %237, ptr %228, align 2, !tbaa !12
  %238 = add nuw nsw i32 %227, 1
  %239 = getelementptr inbounds i16, ptr %230, i64 1
  %240 = getelementptr inbounds i16, ptr %229, i64 1
  %241 = getelementptr inbounds i16, ptr %228, i64 1
  %242 = icmp eq i32 %238, 9
  br i1 %242, label %243, label %226, !llvm.loop !19

243:                                              ; preds = %226, %277
  %244 = phi i32 [ %279, %277 ], [ 1, %226 ]
  %245 = phi ptr [ %280, %277 ], [ %5, %226 ]
  %246 = load i16, ptr %245, align 2, !tbaa !12
  %247 = icmp slt i16 %246, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %243
  %249 = icmp eq i16 %246, -32768
  %250 = sub i16 0, %246
  %251 = select i1 %249, i16 32767, i16 %250
  %252 = icmp ult i16 %251, 11059
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = mul nsw i16 %251, -2
  br label %277

255:                                              ; preds = %248
  %256 = icmp ult i16 %251, 20070
  br i1 %256, label %257, label %259

257:                                              ; preds = %255
  %258 = sub nuw i16 -11059, %251
  br label %277

259:                                              ; preds = %255
  %260 = icmp ugt i16 %251, 26623
  br i1 %260, label %277, label %261

261:                                              ; preds = %259
  %262 = lshr i16 %251, 2
  %263 = sub nuw i16 -26112, %262
  br label %277

264:                                              ; preds = %243
  %265 = icmp slt i16 %246, 11059
  br i1 %265, label %266, label %268

266:                                              ; preds = %264
  %267 = shl nuw i16 %246, 1
  br label %277

268:                                              ; preds = %264
  %269 = icmp slt i16 %246, 20070
  br i1 %269, label %270, label %272

270:                                              ; preds = %268
  %271 = add nuw i16 %246, 11059
  br label %277

272:                                              ; preds = %268
  %273 = icmp ugt i16 %246, 26623
  br i1 %273, label %277, label %274

274:                                              ; preds = %272
  %275 = lshr i16 %246, 2
  %276 = add nuw i16 %275, 26112
  br label %277

277:                                              ; preds = %274, %272, %270, %266, %261, %259, %257, %253
  %278 = phi i16 [ %254, %253 ], [ %258, %257 ], [ %263, %261 ], [ -32767, %259 ], [ %267, %266 ], [ %271, %270 ], [ %276, %274 ], [ 32767, %272 ]
  store i16 %278, ptr %245, align 2, !tbaa !12
  %279 = add nuw nsw i32 %244, 1
  %280 = getelementptr inbounds i16, ptr %245, i64 1
  %281 = icmp eq i32 %279, 9
  br i1 %281, label %282, label %243, !llvm.loop !15

282:                                              ; preds = %277
  %283 = getelementptr inbounds i16, ptr %2, i64 27
  %284 = getelementptr inbounds i16, ptr %3, i64 27
  br label %285

285:                                              ; preds = %329, %282
  %286 = phi i32 [ %330, %329 ], [ 13, %282 ]
  %287 = phi ptr [ %332, %329 ], [ %284, %282 ]
  %288 = phi ptr [ %331, %329 ], [ %283, %282 ]
  %289 = load i16, ptr %288, align 2, !tbaa !12
  br label %290

290:                                              ; preds = %321, %285
  %291 = phi i64 [ 8, %285 ], [ %328, %321 ]
  %292 = phi i64 [ 7, %285 ], [ %326, %321 ]
  %293 = phi i16 [ %289, %285 ], [ %311, %321 ]
  %294 = getelementptr inbounds i16, ptr %5, i64 %292
  %295 = load i16, ptr %294, align 2, !tbaa !12
  %296 = getelementptr inbounds i16, ptr %70, i64 %292
  %297 = load i16, ptr %296, align 2, !tbaa !12
  %298 = icmp eq i16 %295, -32768
  %299 = icmp eq i16 %297, -32768
  %300 = select i1 %298, i1 %299, i1 false
  br i1 %300, label %308, label %301

301:                                              ; preds = %290
  %302 = sext i16 %295 to i64
  %303 = sext i16 %297 to i64
  %304 = mul nsw i64 %303, %302
  %305 = add nsw i64 %304, 16384
  %306 = lshr i64 %305, 15
  %307 = and i64 %306, 65535
  br label %308

308:                                              ; preds = %301, %290
  %309 = phi i64 [ %307, %301 ], [ 32767, %290 ]
  %310 = trunc i64 %309 to i16
  %311 = tail call i16 @llvm.ssub.sat.i16(i16 %293, i16 %310)
  %312 = icmp eq i16 %311, -32768
  %313 = select i1 %298, i1 %312, i1 false
  br i1 %313, label %321, label %314

314:                                              ; preds = %308
  %315 = sext i16 %295 to i64
  %316 = sext i16 %311 to i64
  %317 = mul nsw i64 %316, %315
  %318 = add nsw i64 %317, 16384
  %319 = lshr i64 %318, 15
  %320 = and i64 %319, 65535
  br label %321

321:                                              ; preds = %314, %308
  %322 = phi i64 [ %320, %314 ], [ 32767, %308 ]
  %323 = trunc i64 %322 to i16
  %324 = tail call i16 @llvm.sadd.sat.i16(i16 %323, i16 %297)
  %325 = getelementptr inbounds i16, ptr %70, i64 %291
  store i16 %324, ptr %325, align 2, !tbaa !12
  %326 = add nsw i64 %292, -1
  %327 = icmp eq i64 %292, 0
  %328 = add nsw i64 %291, -1
  br i1 %327, label %329, label %290, !llvm.loop !20

329:                                              ; preds = %321
  %330 = add nsw i32 %286, -1
  %331 = getelementptr inbounds i16, ptr %288, i64 1
  store i16 %311, ptr %70, align 2, !tbaa !12
  %332 = getelementptr inbounds i16, ptr %287, i64 1
  store i16 %311, ptr %287, align 2, !tbaa !12
  %333 = icmp eq i32 %330, 0
  br i1 %333, label %334, label %285, !llvm.loop !21

334:                                              ; preds = %329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 2 dereferenceable(16) %9, i64 16, i1 false), !tbaa !12
  br label %335

335:                                              ; preds = %334, %369
  %336 = phi i32 [ %371, %369 ], [ 1, %334 ]
  %337 = phi ptr [ %372, %369 ], [ %5, %334 ]
  %338 = load i16, ptr %337, align 2, !tbaa !12
  %339 = icmp slt i16 %338, 0
  br i1 %339, label %340, label %356

340:                                              ; preds = %335
  %341 = icmp eq i16 %338, -32768
  %342 = sub i16 0, %338
  %343 = select i1 %341, i16 32767, i16 %342
  %344 = icmp ult i16 %343, 11059
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  %346 = mul nsw i16 %343, -2
  br label %369

347:                                              ; preds = %340
  %348 = icmp ult i16 %343, 20070
  br i1 %348, label %349, label %351

349:                                              ; preds = %347
  %350 = sub nuw i16 -11059, %343
  br label %369

351:                                              ; preds = %347
  %352 = icmp ugt i16 %343, 26623
  br i1 %352, label %369, label %353

353:                                              ; preds = %351
  %354 = lshr i16 %343, 2
  %355 = sub nuw i16 -26112, %354
  br label %369

356:                                              ; preds = %335
  %357 = icmp slt i16 %338, 11059
  br i1 %357, label %358, label %360

358:                                              ; preds = %356
  %359 = shl nuw i16 %338, 1
  br label %369

360:                                              ; preds = %356
  %361 = icmp slt i16 %338, 20070
  br i1 %361, label %362, label %364

362:                                              ; preds = %360
  %363 = add nuw i16 %338, 11059
  br label %369

364:                                              ; preds = %360
  %365 = icmp ugt i16 %338, 26623
  br i1 %365, label %369, label %366

366:                                              ; preds = %364
  %367 = lshr i16 %338, 2
  %368 = add nuw i16 %367, 26112
  br label %369

369:                                              ; preds = %366, %364, %362, %358, %353, %351, %349, %345
  %370 = phi i16 [ %346, %345 ], [ %350, %349 ], [ %355, %353 ], [ -32767, %351 ], [ %359, %358 ], [ %363, %362 ], [ %368, %366 ], [ 32767, %364 ]
  store i16 %370, ptr %337, align 2, !tbaa !12
  %371 = add nuw nsw i32 %336, 1
  %372 = getelementptr inbounds i16, ptr %337, i64 1
  %373 = icmp eq i32 %371, 9
  br i1 %373, label %374, label %335, !llvm.loop !15

374:                                              ; preds = %369
  %375 = getelementptr inbounds i16, ptr %2, i64 40
  %376 = getelementptr inbounds i16, ptr %3, i64 40
  br label %377

377:                                              ; preds = %421, %374
  %378 = phi i32 [ %422, %421 ], [ 120, %374 ]
  %379 = phi ptr [ %424, %421 ], [ %376, %374 ]
  %380 = phi ptr [ %423, %421 ], [ %375, %374 ]
  %381 = load i16, ptr %380, align 2, !tbaa !12
  br label %382

382:                                              ; preds = %413, %377
  %383 = phi i64 [ 8, %377 ], [ %420, %413 ]
  %384 = phi i64 [ 7, %377 ], [ %418, %413 ]
  %385 = phi i16 [ %381, %377 ], [ %403, %413 ]
  %386 = getelementptr inbounds i16, ptr %5, i64 %384
  %387 = load i16, ptr %386, align 2, !tbaa !12
  %388 = getelementptr inbounds i16, ptr %70, i64 %384
  %389 = load i16, ptr %388, align 2, !tbaa !12
  %390 = icmp eq i16 %387, -32768
  %391 = icmp eq i16 %389, -32768
  %392 = select i1 %390, i1 %391, i1 false
  br i1 %392, label %400, label %393

393:                                              ; preds = %382
  %394 = sext i16 %387 to i64
  %395 = sext i16 %389 to i64
  %396 = mul nsw i64 %395, %394
  %397 = add nsw i64 %396, 16384
  %398 = lshr i64 %397, 15
  %399 = and i64 %398, 65535
  br label %400

400:                                              ; preds = %393, %382
  %401 = phi i64 [ %399, %393 ], [ 32767, %382 ]
  %402 = trunc i64 %401 to i16
  %403 = tail call i16 @llvm.ssub.sat.i16(i16 %385, i16 %402)
  %404 = icmp eq i16 %403, -32768
  %405 = select i1 %390, i1 %404, i1 false
  br i1 %405, label %413, label %406

406:                                              ; preds = %400
  %407 = sext i16 %387 to i64
  %408 = sext i16 %403 to i64
  %409 = mul nsw i64 %408, %407
  %410 = add nsw i64 %409, 16384
  %411 = lshr i64 %410, 15
  %412 = and i64 %411, 65535
  br label %413

413:                                              ; preds = %406, %400
  %414 = phi i64 [ %412, %406 ], [ 32767, %400 ]
  %415 = trunc i64 %414 to i16
  %416 = tail call i16 @llvm.sadd.sat.i16(i16 %415, i16 %389)
  %417 = getelementptr inbounds i16, ptr %70, i64 %383
  store i16 %416, ptr %417, align 2, !tbaa !12
  %418 = add nsw i64 %384, -1
  %419 = icmp eq i64 %384, 0
  %420 = add nsw i64 %383, -1
  br i1 %419, label %421, label %382, !llvm.loop !20

421:                                              ; preds = %413
  %422 = add nsw i32 %378, -1
  %423 = getelementptr inbounds i16, ptr %380, i64 1
  store i16 %403, ptr %70, align 2, !tbaa !12
  %424 = getelementptr inbounds i16, ptr %379, i64 1
  store i16 %403, ptr %379, align 2, !tbaa !12
  %425 = icmp eq i32 %422, 0
  br i1 %425, label %426, label %377, !llvm.loop !21

426:                                              ; preds = %421
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 628}
!6 = !{!"gsm_state", !7, i64 0, !9, i64 560, !10, i64 568, !11, i64 576, !7, i64 580, !7, i64 596, !9, i64 628, !9, i64 630, !7, i64 632, !9, i64 650, !7, i64 652, !7, i64 653}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"short", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
