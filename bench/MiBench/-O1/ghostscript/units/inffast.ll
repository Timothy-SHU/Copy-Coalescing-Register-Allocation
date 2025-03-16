; ModuleID = 'inffast.c'
source_filename = "inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, ptr, i32, ptr }
%struct.inflate_huft_s = type { %union.anon.1, %union.anon.3 }
%union.anon.1 = type { ptr }
%union.anon.3 = type { ptr }
%struct.anon.2 = type { i8, i8 }

@inflate_mask = external local_unnamed_addr global [17 x i32], align 16
@.str = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflate_fast(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %15 to i64
  %22 = xor i64 %21, -1
  %23 = add i64 %20, %22
  br label %30

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %15 to i64
  %29 = sub i64 %27, %28
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i64 [ %23, %19 ], [ %29, %24 ]
  %32 = trunc i64 %31 to i32
  %33 = zext i32 %0 to i64
  %34 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !19
  %36 = zext i32 %1 to i64
  %37 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i64 0, i32 5
  %40 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i64 0, i32 6
  br label %41

41:                                               ; preds = %311, %30
  %42 = phi i64 [ %11, %30 ], [ %312, %311 ]
  %43 = phi i32 [ %13, %30 ], [ %313, %311 ]
  %44 = phi ptr [ %7, %30 ], [ %314, %311 ]
  %45 = phi i32 [ %9, %30 ], [ %315, %311 ]
  %46 = phi ptr [ %15, %30 ], [ %316, %311 ]
  %47 = phi i32 [ %32, %30 ], [ %317, %311 ]
  %48 = icmp ult i32 %43, 20
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = zext nneg i32 %43 to i64
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ %50, %49 ], [ %62, %51 ]
  %53 = phi i32 [ %45, %49 ], [ %56, %51 ]
  %54 = phi ptr [ %44, %49 ], [ %57, %51 ]
  %55 = phi i64 [ %42, %49 ], [ %61, %51 ]
  %56 = add i32 %53, -1
  %57 = getelementptr inbounds i8, ptr %54, i64 1
  %58 = load i8, ptr %54, align 1, !tbaa !20
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, %52
  %61 = or i64 %60, %55
  %62 = add nuw nsw i64 %52, 8
  %63 = icmp ult i64 %52, 12
  br i1 %63, label %51, label %64, !llvm.loop !21

64:                                               ; preds = %51
  %65 = trunc i64 %62 to i32
  br label %66

66:                                               ; preds = %64, %41
  %67 = phi i64 [ %42, %41 ], [ %61, %64 ]
  %68 = phi i32 [ %43, %41 ], [ %65, %64 ]
  %69 = phi ptr [ %44, %41 ], [ %57, %64 ]
  %70 = phi i32 [ %45, %41 ], [ %56, %64 ]
  %71 = trunc i64 %67 to i32
  %72 = and i32 %35, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.inflate_huft_s, ptr %2, i64 %73
  %75 = load i8, ptr %74, align 8, !tbaa !20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.anon.2, ptr %74, i64 0, i32 1
  %79 = load i8, ptr %78, align 1, !tbaa !20
  %80 = zext i8 %79 to i32
  %81 = zext nneg i8 %79 to i64
  %82 = lshr i64 %67, %81
  %83 = sub i32 %68, %80
  %84 = getelementptr inbounds %struct.inflate_huft_s, ptr %2, i64 %73, i32 1
  br label %303

85:                                               ; preds = %66, %273
  %86 = phi i64 [ %95, %273 ], [ %67, %66 ]
  %87 = phi i32 [ %96, %273 ], [ %68, %66 ]
  %88 = phi i8 [ %283, %273 ], [ %75, %66 ]
  %89 = phi ptr [ %282, %273 ], [ %74, %66 ]
  %90 = zext i8 %88 to i32
  %91 = getelementptr inbounds %struct.anon.2, ptr %89, i64 0, i32 1
  %92 = load i8, ptr %91, align 1, !tbaa !20
  %93 = zext i8 %92 to i32
  %94 = zext nneg i8 %92 to i64
  %95 = lshr i64 %86, %94
  %96 = sub i32 %87, %93
  %97 = and i32 %90, 16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %270, label %99

99:                                               ; preds = %85
  %100 = and i32 %90, 15
  %101 = getelementptr inbounds %struct.inflate_huft_s, ptr %89, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !20
  %103 = trunc i64 %95 to i32
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !19
  %107 = and i32 %106, %103
  %108 = add i32 %107, %102
  %109 = lshr i64 %95, %104
  %110 = sub i32 %96, %100
  %111 = icmp ult i32 %110, 15
  br i1 %111, label %112, label %129

112:                                              ; preds = %99
  %113 = zext nneg i32 %110 to i64
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi i64 [ %113, %112 ], [ %125, %114 ]
  %116 = phi i32 [ %70, %112 ], [ %119, %114 ]
  %117 = phi ptr [ %69, %112 ], [ %120, %114 ]
  %118 = phi i64 [ %109, %112 ], [ %124, %114 ]
  %119 = add i32 %116, -1
  %120 = getelementptr inbounds i8, ptr %117, i64 1
  %121 = load i8, ptr %117, align 1, !tbaa !20
  %122 = zext i8 %121 to i64
  %123 = shl nuw nsw i64 %122, %115
  %124 = or i64 %123, %118
  %125 = add nuw nsw i64 %115, 8
  %126 = icmp ult i64 %115, 7
  br i1 %126, label %114, label %127, !llvm.loop !23

127:                                              ; preds = %114
  %128 = trunc i64 %125 to i32
  br label %129

129:                                              ; preds = %127, %99
  %130 = phi i64 [ %109, %99 ], [ %124, %127 ]
  %131 = phi i32 [ %110, %99 ], [ %128, %127 ]
  %132 = phi ptr [ %69, %99 ], [ %120, %127 ]
  %133 = phi i32 [ %70, %99 ], [ %119, %127 ]
  %134 = trunc i64 %130 to i32
  %135 = and i32 %38, %134
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.inflate_huft_s, ptr %3, i64 %136
  %138 = load i8, ptr %137, align 8, !tbaa !20
  %139 = zext i8 %138 to i32
  %140 = getelementptr inbounds %struct.anon.2, ptr %137, i64 0, i32 1
  %141 = load i8, ptr %140, align 1, !tbaa !20
  %142 = zext i8 %141 to i32
  %143 = zext nneg i8 %141 to i64
  %144 = lshr i64 %130, %143
  %145 = sub i32 %131, %142
  %146 = and i32 %139, 16
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %238, label %148

148:                                              ; preds = %246, %129
  %149 = phi ptr [ %137, %129 ], [ %255, %246 ]
  %150 = phi i32 [ %139, %129 ], [ %257, %246 ]
  %151 = phi i64 [ %144, %129 ], [ %262, %246 ]
  %152 = phi i32 [ %145, %129 ], [ %263, %246 ]
  %153 = and i32 %150, 15
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %148
  %156 = zext i32 %152 to i64
  %157 = zext nneg i32 %153 to i64
  br label %158

158:                                              ; preds = %155, %158
  %159 = phi i64 [ %156, %155 ], [ %169, %158 ]
  %160 = phi i32 [ %133, %155 ], [ %163, %158 ]
  %161 = phi ptr [ %132, %155 ], [ %164, %158 ]
  %162 = phi i64 [ %151, %155 ], [ %168, %158 ]
  %163 = add i32 %160, -1
  %164 = getelementptr inbounds i8, ptr %161, i64 1
  %165 = load i8, ptr %161, align 1, !tbaa !20
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, %159
  %168 = or i64 %167, %162
  %169 = add nuw nsw i64 %159, 8
  %170 = icmp ult i64 %169, %157
  br i1 %170, label %158, label %171, !llvm.loop !24

171:                                              ; preds = %158
  %172 = trunc i64 %169 to i32
  br label %173

173:                                              ; preds = %171, %148
  %174 = phi i64 [ %151, %148 ], [ %168, %171 ]
  %175 = phi i32 [ %152, %148 ], [ %172, %171 ]
  %176 = phi ptr [ %132, %148 ], [ %164, %171 ]
  %177 = phi i32 [ %133, %148 ], [ %163, %171 ]
  %178 = getelementptr inbounds %struct.inflate_huft_s, ptr %149, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !20
  %180 = trunc i64 %174 to i32
  %181 = zext nneg i32 %153 to i64
  %182 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !19
  %184 = and i32 %183, %180
  %185 = add i32 %184, %179
  %186 = lshr i64 %174, %181
  %187 = sub i32 %175, %153
  %188 = sub i32 %47, %108
  %189 = load ptr, ptr %39, align 8, !tbaa !25
  %190 = ptrtoint ptr %46 to i64
  %191 = ptrtoint ptr %189 to i64
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  %194 = icmp ugt i32 %185, %193
  br i1 %194, label %206, label %195

195:                                              ; preds = %173
  %196 = zext i32 %185 to i64
  %197 = sub nsw i64 0, %196
  %198 = getelementptr inbounds i8, ptr %46, i64 %197
  %199 = getelementptr inbounds i8, ptr %198, i64 1
  %200 = load i8, ptr %198, align 1, !tbaa !20
  %201 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %200, ptr %46, align 1, !tbaa !20
  %202 = getelementptr inbounds i8, ptr %198, i64 2
  %203 = load i8, ptr %199, align 1, !tbaa !20
  %204 = getelementptr inbounds i8, ptr %46, i64 2
  store i8 %203, ptr %201, align 1, !tbaa !20
  %205 = add i32 %108, -2
  br label %225

206:                                              ; preds = %173
  %207 = sub i32 %185, %193
  %208 = load ptr, ptr %40, align 8, !tbaa !18
  %209 = zext i32 %207 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr i8, ptr %208, i64 %210
  %212 = icmp ugt i32 %108, %207
  br i1 %212, label %213, label %225

213:                                              ; preds = %206, %213
  %214 = phi ptr [ %219, %213 ], [ %46, %206 ]
  %215 = phi i32 [ %220, %213 ], [ %207, %206 ]
  %216 = phi ptr [ %217, %213 ], [ %211, %206 ]
  %217 = getelementptr inbounds i8, ptr %216, i64 1
  %218 = load i8, ptr %216, align 1, !tbaa !20
  %219 = getelementptr inbounds i8, ptr %214, i64 1
  store i8 %218, ptr %214, align 1, !tbaa !20
  %220 = add i32 %215, -1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %213, !llvm.loop !26

222:                                              ; preds = %213
  %223 = sub i32 %108, %207
  %224 = load ptr, ptr %39, align 8, !tbaa !25
  br label %225

225:                                              ; preds = %206, %222, %195
  %226 = phi ptr [ %46, %206 ], [ %219, %222 ], [ %204, %195 ]
  %227 = phi i32 [ %108, %206 ], [ %223, %222 ], [ %205, %195 ]
  %228 = phi ptr [ %211, %206 ], [ %224, %222 ], [ %202, %195 ]
  br label %229

229:                                              ; preds = %225, %229
  %230 = phi ptr [ %235, %229 ], [ %226, %225 ]
  %231 = phi i32 [ %236, %229 ], [ %227, %225 ]
  %232 = phi ptr [ %233, %229 ], [ %228, %225 ]
  %233 = getelementptr inbounds i8, ptr %232, i64 1
  %234 = load i8, ptr %232, align 1, !tbaa !20
  %235 = getelementptr inbounds i8, ptr %230, i64 1
  store i8 %234, ptr %230, align 1, !tbaa !20
  %236 = add i32 %231, -1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %311, label %229, !llvm.loop !27

238:                                              ; preds = %129, %246
  %239 = phi i32 [ %263, %246 ], [ %145, %129 ]
  %240 = phi i64 [ %262, %246 ], [ %144, %129 ]
  %241 = phi i32 [ %257, %246 ], [ %139, %129 ]
  %242 = phi i8 [ %256, %246 ], [ %138, %129 ]
  %243 = phi ptr [ %255, %246 ], [ %137, %129 ]
  %244 = and i32 %241, 64
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %266

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.inflate_huft_s, ptr %243, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !20
  %249 = trunc i64 %240 to i32
  %250 = zext i8 %242 to i64
  %251 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !19
  %253 = and i32 %252, %249
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.inflate_huft_s, ptr %248, i64 %254
  %256 = load i8, ptr %255, align 8, !tbaa !20
  %257 = zext i8 %256 to i32
  %258 = getelementptr inbounds %struct.anon.2, ptr %255, i64 0, i32 1
  %259 = load i8, ptr %258, align 1, !tbaa !20
  %260 = zext i8 %259 to i32
  %261 = zext nneg i8 %259 to i64
  %262 = lshr i64 %240, %261
  %263 = sub i32 %239, %260
  %264 = and i32 %257, 16
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %238, label %148, !llvm.loop !28

266:                                              ; preds = %238
  %267 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 6
  store ptr @.str, ptr %267, align 8, !tbaa !29
  %268 = lshr i32 %239, 3
  %269 = add i32 %268, %133
  br label %324

270:                                              ; preds = %85
  %271 = and i32 %90, 64
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %293

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.inflate_huft_s, ptr %89, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !20
  %276 = trunc i64 %95 to i32
  %277 = zext i8 %88 to i64
  %278 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !19
  %280 = and i32 %279, %276
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.inflate_huft_s, ptr %275, i64 %281
  %283 = load i8, ptr %282, align 8, !tbaa !20
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %85, !llvm.loop !30

285:                                              ; preds = %273
  %286 = getelementptr inbounds %struct.anon.2, ptr %282, i64 0, i32 1
  %287 = load i8, ptr %286, align 1, !tbaa !20
  %288 = zext i8 %287 to i32
  %289 = zext nneg i8 %287 to i64
  %290 = lshr i64 %95, %289
  %291 = sub i32 %96, %288
  %292 = getelementptr inbounds %struct.inflate_huft_s, ptr %275, i64 %281, i32 1
  br label %303

293:                                              ; preds = %270
  %294 = and i32 %90, 32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = lshr i32 %96, 3
  %298 = add i32 %297, %70
  br label %324

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 6
  store ptr @.str.1, ptr %300, align 8, !tbaa !29
  %301 = lshr i32 %96, 3
  %302 = add i32 %301, %70
  br label %324

303:                                              ; preds = %77, %285
  %304 = phi ptr [ %292, %285 ], [ %84, %77 ]
  %305 = phi i64 [ %290, %285 ], [ %82, %77 ]
  %306 = phi i32 [ %291, %285 ], [ %83, %77 ]
  %307 = load i32, ptr %304, align 8, !tbaa !20
  %308 = trunc i32 %307 to i8
  %309 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %308, ptr %46, align 1, !tbaa !20
  %310 = add i32 %47, -1
  br label %311

311:                                              ; preds = %229, %303
  %312 = phi i64 [ %305, %303 ], [ %186, %229 ]
  %313 = phi i32 [ %306, %303 ], [ %187, %229 ]
  %314 = phi ptr [ %69, %303 ], [ %176, %229 ]
  %315 = phi i32 [ %70, %303 ], [ %177, %229 ]
  %316 = phi ptr [ %309, %303 ], [ %235, %229 ]
  %317 = phi i32 [ %310, %303 ], [ %188, %229 ]
  %318 = icmp ugt i32 %317, 257
  %319 = icmp ugt i32 %315, 9
  %320 = select i1 %318, i1 %319, i1 false
  br i1 %320, label %41, label %321, !llvm.loop !31

321:                                              ; preds = %311
  %322 = lshr i32 %313, 3
  %323 = add i32 %315, %322
  br label %324

324:                                              ; preds = %321, %299, %296, %266
  %325 = phi i32 [ %322, %321 ], [ %301, %299 ], [ %297, %296 ], [ %268, %266 ]
  %326 = phi ptr [ %314, %321 ], [ %69, %299 ], [ %69, %296 ], [ %132, %266 ]
  %327 = phi i32 [ %313, %321 ], [ %96, %299 ], [ %96, %296 ], [ %239, %266 ]
  %328 = phi i64 [ %312, %321 ], [ %95, %299 ], [ %95, %296 ], [ %240, %266 ]
  %329 = phi i32 [ %323, %321 ], [ %302, %299 ], [ %298, %296 ], [ %269, %266 ]
  %330 = phi ptr [ %316, %321 ], [ %46, %299 ], [ %46, %296 ], [ %46, %266 ]
  %331 = phi i32 [ 0, %321 ], [ -3, %299 ], [ 1, %296 ], [ -3, %266 ]
  %332 = zext nneg i32 %325 to i64
  %333 = sub nsw i64 0, %332
  %334 = getelementptr inbounds i8, ptr %326, i64 %333
  %335 = and i32 %327, 7
  store i64 %328, ptr %10, align 8, !tbaa !13
  store i32 %335, ptr %12, align 4, !tbaa !15
  store i32 %329, ptr %8, align 8, !tbaa !12
  %336 = load ptr, ptr %5, align 8, !tbaa !5
  %337 = ptrtoint ptr %334 to i64
  %338 = ptrtoint ptr %336 to i64
  %339 = sub i64 %337, %338
  %340 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 2
  %341 = load i64, ptr %340, align 8, !tbaa !32
  %342 = add i64 %339, %341
  store i64 %342, ptr %340, align 8, !tbaa !32
  store ptr %334, ptr %5, align 8, !tbaa !5
  store ptr %330, ptr %14, align 8, !tbaa !16
  ret i32 %331
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!14, !11, i64 48}
!14 = !{!"inflate_blocks_state", !10, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !11, i64 96}
!15 = !{!14, !10, i64 44}
!16 = !{!14, !7, i64 80}
!17 = !{!14, !7, i64 72}
!18 = !{!14, !7, i64 64}
!19 = !{!10, !10, i64 0}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = !{!14, !7, i64 56}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = !{!6, !7, i64 48}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = !{!6, !11, i64 16}
