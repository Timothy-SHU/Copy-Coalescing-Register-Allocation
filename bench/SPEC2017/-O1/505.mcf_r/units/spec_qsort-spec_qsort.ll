; ModuleID = 'spec_qsort/spec_qsort.c'
source_filename = "spec_qsort/spec_qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @spec_qsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !37 {
  %5 = sub i64 0, %2
  %6 = icmp ne i64 %2, 8
  %7 = zext i1 %6 to i32
  %8 = icmp ne i64 %2, 4
  %9 = zext i1 %8 to i32
  %10 = ptrtoint ptr %0 to i64
  %11 = or i64 %10, %2
  %12 = and i64 %11, 7
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, i32 %7, i32 2, !prof !38
  %15 = and i64 %11, 3
  %16 = icmp eq i64 %15, 0
  %17 = select i1 %16, i32 %9, i32 2, !prof !38
  %18 = icmp ult i64 %1, 7
  br i1 %18, label %22, label %19, !prof !39

19:                                               ; preds = %4
  %20 = sub i64 0, %2
  %21 = sub i64 0, %2
  br label %100

22:                                               ; preds = %636, %4
  %23 = phi i64 [ %1, %4 ], [ %639, %636 ]
  %24 = phi ptr [ %0, %4 ], [ %638, %636 ]
  %25 = phi i1 [ %13, %4 ], [ %643, %636 ]
  %26 = phi i32 [ %14, %4 ], [ %644, %636 ]
  %27 = phi i1 [ %16, %4 ], [ %646, %636 ]
  %28 = phi i32 [ %17, %4 ], [ %647, %636 ]
  %29 = mul i64 %23, %2
  %30 = getelementptr inbounds i8, ptr %24, i64 %29
  %31 = icmp sgt i64 %29, %2
  br i1 %31, label %32, label %649, !prof !40

32:                                               ; preds = %22
  %33 = getelementptr inbounds i8, ptr %24, i64 %2
  %34 = icmp eq i32 %26, 0
  br label %35

35:                                               ; preds = %32, %97
  %36 = phi ptr [ %33, %32 ], [ %98, %97 ]
  %37 = icmp ugt ptr %36, %24
  br i1 %37, label %38, label %97, !prof !41

38:                                               ; preds = %35, %95
  %39 = phi ptr [ %40, %95 ], [ %36, %35 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 %5
  %41 = tail call i32 %3(ptr noundef nonnull %40, ptr noundef nonnull %39) #2, !prof !42
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %97, !prof !43

43:                                               ; preds = %38
  br i1 %34, label %44, label %47, !prof !44

44:                                               ; preds = %43
  %45 = load i64, ptr %39, align 8, !tbaa !45
  %46 = load i64, ptr %40, align 8, !tbaa !45
  store i64 %46, ptr %39, align 8, !tbaa !45
  store i64 %45, ptr %40, align 8, !tbaa !45
  br label %95

47:                                               ; preds = %43
  %48 = icmp eq i32 %28, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, ptr %39, align 4, !tbaa !49
  %51 = load i32, ptr %40, align 4, !tbaa !49
  store i32 %51, ptr %39, align 4, !tbaa !49
  store i32 %50, ptr %40, align 4, !tbaa !49
  br label %95

52:                                               ; preds = %47
  br i1 %25, label %53, label %67

53:                                               ; preds = %52
  %54 = shl i64 %2, 32
  %55 = ashr exact i64 %54, 32
  %56 = lshr i64 %55, 3
  br label %57

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %64, %57 ], [ %40, %53 ]
  %59 = phi ptr [ %63, %57 ], [ %39, %53 ]
  %60 = phi i64 [ %65, %57 ], [ %56, %53 ]
  %61 = load i64, ptr %59, align 8, !tbaa !45
  %62 = load i64, ptr %58, align 8, !tbaa !45
  %63 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 %62, ptr %59, align 8, !tbaa !45
  %64 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 %61, ptr %58, align 8, !tbaa !45
  %65 = add nsw i64 %60, -1
  %66 = icmp sgt i64 %60, 1
  br i1 %66, label %57, label %95, !llvm.loop !51

67:                                               ; preds = %52
  br i1 %27, label %71, label %68

68:                                               ; preds = %67
  %69 = shl i64 %2, 32
  %70 = ashr exact i64 %69, 32
  br label %85

71:                                               ; preds = %67
  %72 = shl i64 %2, 32
  %73 = ashr exact i64 %72, 32
  %74 = lshr i64 %73, 2
  br label %75

75:                                               ; preds = %71, %75
  %76 = phi i64 [ %83, %75 ], [ %74, %71 ]
  %77 = phi ptr [ %81, %75 ], [ %39, %71 ]
  %78 = phi ptr [ %82, %75 ], [ %40, %71 ]
  %79 = load i32, ptr %77, align 4, !tbaa !49
  %80 = load i32, ptr %78, align 4, !tbaa !49
  %81 = getelementptr inbounds i32, ptr %77, i64 1
  store i32 %80, ptr %77, align 4, !tbaa !49
  %82 = getelementptr inbounds i32, ptr %78, i64 1
  store i32 %79, ptr %78, align 4, !tbaa !49
  %83 = add nsw i64 %76, -1
  %84 = icmp sgt i64 %76, 1
  br i1 %84, label %75, label %95, !llvm.loop !54

85:                                               ; preds = %68, %85
  %86 = phi i64 [ %93, %85 ], [ %70, %68 ]
  %87 = phi ptr [ %91, %85 ], [ %39, %68 ]
  %88 = phi ptr [ %92, %85 ], [ %40, %68 ]
  %89 = load i8, ptr %87, align 1, !tbaa !55
  %90 = load i8, ptr %88, align 1, !tbaa !55
  %91 = getelementptr inbounds i8, ptr %87, i64 1
  store i8 %90, ptr %87, align 1, !tbaa !55
  %92 = getelementptr inbounds i8, ptr %88, i64 1
  store i8 %89, ptr %88, align 1, !tbaa !55
  %93 = add nsw i64 %86, -1
  %94 = icmp sgt i64 %86, 1
  br i1 %94, label %85, label %95, !llvm.loop !56

95:                                               ; preds = %85, %75, %57, %44, %49
  %96 = icmp ugt ptr %40, %24
  br i1 %96, label %38, label %97, !prof !57, !llvm.loop !58

97:                                               ; preds = %95, %38, %35
  %98 = getelementptr inbounds i8, ptr %36, i64 %2
  %99 = icmp ult ptr %98, %30
  br i1 %99, label %35, label %649, !prof !59, !llvm.loop !60

100:                                              ; preds = %19, %636
  %101 = phi i32 [ %17, %19 ], [ %647, %636 ]
  %102 = phi i1 [ %16, %19 ], [ %646, %636 ]
  %103 = phi i32 [ %14, %19 ], [ %644, %636 ]
  %104 = phi i1 [ %13, %19 ], [ %643, %636 ]
  %105 = phi i64 [ %10, %19 ], [ %640, %636 ]
  %106 = phi ptr [ %0, %19 ], [ %638, %636 ]
  %107 = phi i64 [ %1, %19 ], [ %639, %636 ]
  %108 = lshr i64 %107, 1
  %109 = mul i64 %108, %2
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  %111 = icmp eq i64 %107, 7
  br i1 %111, label %197, label %112, !prof !61

112:                                              ; preds = %100
  %113 = add i64 %107, -1
  %114 = mul i64 %113, %2
  %115 = getelementptr inbounds i8, ptr %106, i64 %114
  %116 = icmp ugt i64 %107, 40
  br i1 %116, label %117, label %178, !prof !62

117:                                              ; preds = %112
  %118 = lshr i64 %107, 3
  %119 = mul i64 %118, %2
  %120 = getelementptr inbounds i8, ptr %106, i64 %119
  %121 = shl i64 %119, 1
  %122 = getelementptr inbounds i8, ptr %106, i64 %121
  %123 = tail call i32 %3(ptr noundef %106, ptr noundef %120) #2, !prof !63
  %124 = icmp slt i32 %123, 0
  %125 = tail call i32 %3(ptr noundef %120, ptr noundef %122) #2
  br i1 %124, label %126, label %132, !prof !64

126:                                              ; preds = %117
  %127 = icmp slt i32 %125, 0
  br i1 %127, label %138, label %128, !prof !65

128:                                              ; preds = %126
  %129 = tail call i32 %3(ptr noundef %106, ptr noundef %122) #2, !prof !66
  %130 = icmp slt i32 %129, 0
  %131 = select i1 %130, ptr %122, ptr %106, !prof !67
  br label %138

132:                                              ; preds = %117
  %133 = icmp sgt i32 %125, 0
  br i1 %133, label %138, label %134, !prof !68

134:                                              ; preds = %132
  %135 = tail call i32 %3(ptr noundef %106, ptr noundef %122) #2, !prof !69
  %136 = icmp slt i32 %135, 0
  %137 = select i1 %136, ptr %106, ptr %122, !prof !70
  br label %138

138:                                              ; preds = %126, %128, %132, %134
  %139 = phi ptr [ %131, %128 ], [ %137, %134 ], [ %120, %126 ], [ %120, %132 ]
  %140 = sub i64 0, %119
  %141 = getelementptr inbounds i8, ptr %110, i64 %140
  %142 = getelementptr inbounds i8, ptr %110, i64 %119
  %143 = tail call i32 %3(ptr noundef %141, ptr noundef %110) #2, !prof !63
  %144 = icmp slt i32 %143, 0
  %145 = tail call i32 %3(ptr noundef %110, ptr noundef %142) #2
  br i1 %144, label %146, label %152, !prof !71

146:                                              ; preds = %138
  %147 = icmp slt i32 %145, 0
  br i1 %147, label %158, label %148, !prof !72

148:                                              ; preds = %146
  %149 = tail call i32 %3(ptr noundef %141, ptr noundef %142) #2, !prof !73
  %150 = icmp slt i32 %149, 0
  %151 = select i1 %150, ptr %142, ptr %141, !prof !74
  br label %158

152:                                              ; preds = %138
  %153 = icmp sgt i32 %145, 0
  br i1 %153, label %158, label %154, !prof !75

154:                                              ; preds = %152
  %155 = tail call i32 %3(ptr noundef %141, ptr noundef %142) #2, !prof !76
  %156 = icmp slt i32 %155, 0
  %157 = select i1 %156, ptr %141, ptr %142, !prof !77
  br label %158

158:                                              ; preds = %146, %148, %152, %154
  %159 = phi ptr [ %151, %148 ], [ %157, %154 ], [ %110, %146 ], [ %110, %152 ]
  %160 = sub i64 0, %121
  %161 = getelementptr inbounds i8, ptr %115, i64 %160
  %162 = getelementptr inbounds i8, ptr %115, i64 %140
  %163 = tail call i32 %3(ptr noundef %161, ptr noundef %162) #2, !prof !63
  %164 = icmp slt i32 %163, 0
  %165 = tail call i32 %3(ptr noundef %162, ptr noundef %115) #2
  br i1 %164, label %166, label %172, !prof !78

166:                                              ; preds = %158
  %167 = icmp slt i32 %165, 0
  br i1 %167, label %178, label %168, !prof !79

168:                                              ; preds = %166
  %169 = tail call i32 %3(ptr noundef %161, ptr noundef %115) #2, !prof !80
  %170 = icmp slt i32 %169, 0
  %171 = select i1 %170, ptr %115, ptr %161, !prof !81
  br label %178

172:                                              ; preds = %158
  %173 = icmp sgt i32 %165, 0
  br i1 %173, label %178, label %174, !prof !82

174:                                              ; preds = %172
  %175 = tail call i32 %3(ptr noundef %161, ptr noundef %115) #2, !prof !83
  %176 = icmp slt i32 %175, 0
  %177 = select i1 %176, ptr %161, ptr %115, !prof !84
  br label %178

178:                                              ; preds = %174, %172, %168, %166, %112
  %179 = phi ptr [ %115, %112 ], [ %171, %168 ], [ %177, %174 ], [ %162, %166 ], [ %162, %172 ]
  %180 = phi ptr [ %110, %112 ], [ %159, %168 ], [ %159, %174 ], [ %159, %166 ], [ %159, %172 ]
  %181 = phi ptr [ %106, %112 ], [ %139, %168 ], [ %139, %174 ], [ %139, %166 ], [ %139, %172 ]
  %182 = tail call i32 %3(ptr noundef %181, ptr noundef %180) #2, !prof !85
  %183 = icmp slt i32 %182, 0
  %184 = tail call i32 %3(ptr noundef %180, ptr noundef %179) #2
  br i1 %183, label %185, label %191, !prof !86

185:                                              ; preds = %178
  %186 = icmp slt i32 %184, 0
  br i1 %186, label %197, label %187, !prof !87

187:                                              ; preds = %185
  %188 = tail call i32 %3(ptr noundef %181, ptr noundef %179) #2, !prof !88
  %189 = icmp slt i32 %188, 0
  %190 = select i1 %189, ptr %179, ptr %181, !prof !89
  br label %197

191:                                              ; preds = %178
  %192 = icmp sgt i32 %184, 0
  br i1 %192, label %197, label %193, !prof !90

193:                                              ; preds = %191
  %194 = tail call i32 %3(ptr noundef %181, ptr noundef %179) #2, !prof !91
  %195 = icmp slt i32 %194, 0
  %196 = select i1 %195, ptr %181, ptr %179, !prof !92
  br label %197

197:                                              ; preds = %193, %191, %187, %185, %100
  %198 = phi ptr [ %110, %100 ], [ %190, %187 ], [ %196, %193 ], [ %180, %185 ], [ %180, %191 ]
  %199 = icmp eq i32 %103, 0
  br i1 %199, label %200, label %203, !prof !93

200:                                              ; preds = %197
  %201 = load i64, ptr %106, align 8, !tbaa !45
  %202 = load i64, ptr %198, align 8, !tbaa !45
  store i64 %202, ptr %106, align 8, !tbaa !45
  store i64 %201, ptr %198, align 8, !tbaa !45
  br label %251

203:                                              ; preds = %197
  %204 = icmp eq i32 %101, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = load i32, ptr %106, align 4, !tbaa !49
  %207 = load i32, ptr %198, align 4, !tbaa !49
  store i32 %207, ptr %106, align 4, !tbaa !49
  store i32 %206, ptr %198, align 4, !tbaa !49
  br label %251

208:                                              ; preds = %203
  br i1 %104, label %209, label %223

209:                                              ; preds = %208
  %210 = shl i64 %2, 32
  %211 = ashr exact i64 %210, 32
  %212 = lshr i64 %211, 3
  br label %213

213:                                              ; preds = %209, %213
  %214 = phi ptr [ %220, %213 ], [ %198, %209 ]
  %215 = phi ptr [ %219, %213 ], [ %106, %209 ]
  %216 = phi i64 [ %221, %213 ], [ %212, %209 ]
  %217 = load i64, ptr %215, align 8, !tbaa !45
  %218 = load i64, ptr %214, align 8, !tbaa !45
  %219 = getelementptr inbounds i64, ptr %215, i64 1
  store i64 %218, ptr %215, align 8, !tbaa !45
  %220 = getelementptr inbounds i64, ptr %214, i64 1
  store i64 %217, ptr %214, align 8, !tbaa !45
  %221 = add nsw i64 %216, -1
  %222 = icmp sgt i64 %216, 1
  br i1 %222, label %213, label %251, !llvm.loop !51

223:                                              ; preds = %208
  br i1 %102, label %227, label %224

224:                                              ; preds = %223
  %225 = shl i64 %2, 32
  %226 = ashr exact i64 %225, 32
  br label %241

227:                                              ; preds = %223
  %228 = shl i64 %2, 32
  %229 = ashr exact i64 %228, 32
  %230 = lshr i64 %229, 2
  br label %231

231:                                              ; preds = %227, %231
  %232 = phi i64 [ %239, %231 ], [ %230, %227 ]
  %233 = phi ptr [ %237, %231 ], [ %106, %227 ]
  %234 = phi ptr [ %238, %231 ], [ %198, %227 ]
  %235 = load i32, ptr %233, align 4, !tbaa !49
  %236 = load i32, ptr %234, align 4, !tbaa !49
  %237 = getelementptr inbounds i32, ptr %233, i64 1
  store i32 %236, ptr %233, align 4, !tbaa !49
  %238 = getelementptr inbounds i32, ptr %234, i64 1
  store i32 %235, ptr %234, align 4, !tbaa !49
  %239 = add nsw i64 %232, -1
  %240 = icmp sgt i64 %232, 1
  br i1 %240, label %231, label %251, !llvm.loop !54

241:                                              ; preds = %224, %241
  %242 = phi i64 [ %249, %241 ], [ %226, %224 ]
  %243 = phi ptr [ %247, %241 ], [ %106, %224 ]
  %244 = phi ptr [ %248, %241 ], [ %198, %224 ]
  %245 = load i8, ptr %243, align 1, !tbaa !55
  %246 = load i8, ptr %244, align 1, !tbaa !55
  %247 = getelementptr inbounds i8, ptr %243, i64 1
  store i8 %246, ptr %243, align 1, !tbaa !55
  %248 = getelementptr inbounds i8, ptr %244, i64 1
  store i8 %245, ptr %244, align 1, !tbaa !55
  %249 = add nsw i64 %242, -1
  %250 = icmp sgt i64 %242, 1
  br i1 %250, label %241, label %251, !llvm.loop !56

251:                                              ; preds = %241, %231, %213, %205, %200
  %252 = getelementptr inbounds i8, ptr %106, i64 %2
  %253 = add i64 %107, -1
  %254 = mul i64 %253, %2
  %255 = getelementptr inbounds i8, ptr %106, i64 %254
  br label %256

256:                                              ; preds = %455, %251
  %257 = phi i32 [ 0, %251 ], [ 1, %455 ]
  %258 = phi ptr [ %255, %251 ], [ %337, %455 ]
  %259 = phi ptr [ %255, %251 ], [ %457, %455 ]
  %260 = phi ptr [ %252, %251 ], [ %456, %455 ]
  %261 = phi ptr [ %252, %251 ], [ %333, %455 ]
  %262 = icmp ugt ptr %260, %259
  br i1 %262, label %330, label %263, !prof !94

263:                                              ; preds = %256, %325
  %264 = phi ptr [ %327, %325 ], [ %261, %256 ]
  %265 = phi ptr [ %328, %325 ], [ %260, %256 ]
  %266 = phi i32 [ %326, %325 ], [ %257, %256 ]
  %267 = tail call i32 %3(ptr noundef %265, ptr noundef %106) #2, !prof !95
  %268 = icmp slt i32 %267, 1
  br i1 %268, label %269, label %330, !prof !96

269:                                              ; preds = %263
  %270 = icmp eq i32 %267, 0
  br i1 %270, label %271, label %325, !prof !97

271:                                              ; preds = %269
  br i1 %199, label %272, label %275

272:                                              ; preds = %271
  %273 = load i64, ptr %264, align 8, !tbaa !45
  %274 = load i64, ptr %265, align 8, !tbaa !45
  store i64 %274, ptr %264, align 8, !tbaa !45
  store i64 %273, ptr %265, align 8, !tbaa !45
  br label %323

275:                                              ; preds = %271
  %276 = icmp eq i32 %101, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %275
  %278 = load i32, ptr %264, align 4, !tbaa !49
  %279 = load i32, ptr %265, align 4, !tbaa !49
  store i32 %279, ptr %264, align 4, !tbaa !49
  store i32 %278, ptr %265, align 4, !tbaa !49
  br label %323

280:                                              ; preds = %275
  br i1 %104, label %281, label %295

281:                                              ; preds = %280
  %282 = shl i64 %2, 32
  %283 = ashr exact i64 %282, 32
  %284 = lshr i64 %283, 3
  br label %285

285:                                              ; preds = %281, %285
  %286 = phi ptr [ %292, %285 ], [ %265, %281 ]
  %287 = phi ptr [ %291, %285 ], [ %264, %281 ]
  %288 = phi i64 [ %293, %285 ], [ %284, %281 ]
  %289 = load i64, ptr %287, align 8, !tbaa !45
  %290 = load i64, ptr %286, align 8, !tbaa !45
  %291 = getelementptr inbounds i64, ptr %287, i64 1
  store i64 %290, ptr %287, align 8, !tbaa !45
  %292 = getelementptr inbounds i64, ptr %286, i64 1
  store i64 %289, ptr %286, align 8, !tbaa !45
  %293 = add nsw i64 %288, -1
  %294 = icmp sgt i64 %288, 1
  br i1 %294, label %285, label %323, !llvm.loop !51

295:                                              ; preds = %280
  br i1 %102, label %299, label %296

296:                                              ; preds = %295
  %297 = shl i64 %2, 32
  %298 = ashr exact i64 %297, 32
  br label %313

299:                                              ; preds = %295
  %300 = shl i64 %2, 32
  %301 = ashr exact i64 %300, 32
  %302 = lshr i64 %301, 2
  br label %303

303:                                              ; preds = %299, %303
  %304 = phi i64 [ %311, %303 ], [ %302, %299 ]
  %305 = phi ptr [ %309, %303 ], [ %264, %299 ]
  %306 = phi ptr [ %310, %303 ], [ %265, %299 ]
  %307 = load i32, ptr %305, align 4, !tbaa !49
  %308 = load i32, ptr %306, align 4, !tbaa !49
  %309 = getelementptr inbounds i32, ptr %305, i64 1
  store i32 %308, ptr %305, align 4, !tbaa !49
  %310 = getelementptr inbounds i32, ptr %306, i64 1
  store i32 %307, ptr %306, align 4, !tbaa !49
  %311 = add nsw i64 %304, -1
  %312 = icmp sgt i64 %304, 1
  br i1 %312, label %303, label %323, !llvm.loop !54

313:                                              ; preds = %296, %313
  %314 = phi i64 [ %321, %313 ], [ %298, %296 ]
  %315 = phi ptr [ %319, %313 ], [ %264, %296 ]
  %316 = phi ptr [ %320, %313 ], [ %265, %296 ]
  %317 = load i8, ptr %315, align 1, !tbaa !55
  %318 = load i8, ptr %316, align 1, !tbaa !55
  %319 = getelementptr inbounds i8, ptr %315, i64 1
  store i8 %318, ptr %315, align 1, !tbaa !55
  %320 = getelementptr inbounds i8, ptr %316, i64 1
  store i8 %317, ptr %316, align 1, !tbaa !55
  %321 = add nsw i64 %314, -1
  %322 = icmp sgt i64 %314, 1
  br i1 %322, label %313, label %323, !llvm.loop !56

323:                                              ; preds = %313, %303, %285, %277, %272
  %324 = getelementptr inbounds i8, ptr %264, i64 %2
  br label %325

325:                                              ; preds = %323, %269
  %326 = phi i32 [ 1, %323 ], [ %266, %269 ]
  %327 = phi ptr [ %324, %323 ], [ %264, %269 ]
  %328 = getelementptr inbounds i8, ptr %265, i64 %2
  %329 = icmp ugt ptr %328, %259
  br i1 %329, label %330, label %263, !prof !98, !llvm.loop !99

330:                                              ; preds = %263, %325, %256
  %331 = phi i32 [ %257, %256 ], [ %266, %263 ], [ %326, %325 ]
  %332 = phi ptr [ %260, %256 ], [ %265, %263 ], [ %328, %325 ]
  %333 = phi ptr [ %261, %256 ], [ %264, %263 ], [ %327, %325 ]
  %334 = icmp ugt ptr %332, %259
  br i1 %334, label %458, label %335, !prof !100

335:                                              ; preds = %330, %398
  %336 = phi ptr [ %401, %398 ], [ %259, %330 ]
  %337 = phi ptr [ %400, %398 ], [ %258, %330 ]
  %338 = phi i32 [ %399, %398 ], [ %331, %330 ]
  %339 = tail call i32 %3(ptr noundef %336, ptr noundef %106) #2, !prof !101
  %340 = icmp sgt i32 %339, -1
  br i1 %340, label %341, label %403, !prof !102

341:                                              ; preds = %335
  %342 = icmp eq i32 %339, 0
  br i1 %342, label %343, label %398, !prof !103

343:                                              ; preds = %341
  br i1 %199, label %344, label %347

344:                                              ; preds = %343
  %345 = load i64, ptr %336, align 8, !tbaa !45
  %346 = load i64, ptr %337, align 8, !tbaa !45
  store i64 %346, ptr %336, align 8, !tbaa !45
  store i64 %345, ptr %337, align 8, !tbaa !45
  br label %395

347:                                              ; preds = %343
  %348 = icmp eq i32 %101, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %347
  %350 = load i32, ptr %336, align 4, !tbaa !49
  %351 = load i32, ptr %337, align 4, !tbaa !49
  store i32 %351, ptr %336, align 4, !tbaa !49
  store i32 %350, ptr %337, align 4, !tbaa !49
  br label %395

352:                                              ; preds = %347
  br i1 %104, label %353, label %367

353:                                              ; preds = %352
  %354 = shl i64 %2, 32
  %355 = ashr exact i64 %354, 32
  %356 = lshr i64 %355, 3
  br label %357

357:                                              ; preds = %353, %357
  %358 = phi ptr [ %364, %357 ], [ %337, %353 ]
  %359 = phi ptr [ %363, %357 ], [ %336, %353 ]
  %360 = phi i64 [ %365, %357 ], [ %356, %353 ]
  %361 = load i64, ptr %359, align 8, !tbaa !45
  %362 = load i64, ptr %358, align 8, !tbaa !45
  %363 = getelementptr inbounds i64, ptr %359, i64 1
  store i64 %362, ptr %359, align 8, !tbaa !45
  %364 = getelementptr inbounds i64, ptr %358, i64 1
  store i64 %361, ptr %358, align 8, !tbaa !45
  %365 = add nsw i64 %360, -1
  %366 = icmp sgt i64 %360, 1
  br i1 %366, label %357, label %395, !llvm.loop !51

367:                                              ; preds = %352
  br i1 %102, label %371, label %368

368:                                              ; preds = %367
  %369 = shl i64 %2, 32
  %370 = ashr exact i64 %369, 32
  br label %385

371:                                              ; preds = %367
  %372 = shl i64 %2, 32
  %373 = ashr exact i64 %372, 32
  %374 = lshr i64 %373, 2
  br label %375

375:                                              ; preds = %371, %375
  %376 = phi i64 [ %383, %375 ], [ %374, %371 ]
  %377 = phi ptr [ %381, %375 ], [ %336, %371 ]
  %378 = phi ptr [ %382, %375 ], [ %337, %371 ]
  %379 = load i32, ptr %377, align 4, !tbaa !49
  %380 = load i32, ptr %378, align 4, !tbaa !49
  %381 = getelementptr inbounds i32, ptr %377, i64 1
  store i32 %380, ptr %377, align 4, !tbaa !49
  %382 = getelementptr inbounds i32, ptr %378, i64 1
  store i32 %379, ptr %378, align 4, !tbaa !49
  %383 = add nsw i64 %376, -1
  %384 = icmp sgt i64 %376, 1
  br i1 %384, label %375, label %395, !llvm.loop !54

385:                                              ; preds = %368, %385
  %386 = phi i64 [ %393, %385 ], [ %370, %368 ]
  %387 = phi ptr [ %391, %385 ], [ %336, %368 ]
  %388 = phi ptr [ %392, %385 ], [ %337, %368 ]
  %389 = load i8, ptr %387, align 1, !tbaa !55
  %390 = load i8, ptr %388, align 1, !tbaa !55
  %391 = getelementptr inbounds i8, ptr %387, i64 1
  store i8 %390, ptr %387, align 1, !tbaa !55
  %392 = getelementptr inbounds i8, ptr %388, i64 1
  store i8 %389, ptr %388, align 1, !tbaa !55
  %393 = add nsw i64 %386, -1
  %394 = icmp sgt i64 %386, 1
  br i1 %394, label %385, label %395, !llvm.loop !56

395:                                              ; preds = %385, %375, %357, %349, %344
  %396 = sub i64 0, %2
  %397 = getelementptr inbounds i8, ptr %337, i64 %396
  br label %398

398:                                              ; preds = %395, %341
  %399 = phi i32 [ 1, %395 ], [ %338, %341 ]
  %400 = phi ptr [ %397, %395 ], [ %337, %341 ]
  %401 = getelementptr inbounds i8, ptr %336, i64 %20
  %402 = icmp ugt ptr %332, %401
  br i1 %402, label %458, label %335, !prof !104, !llvm.loop !105

403:                                              ; preds = %335
  br i1 %199, label %404, label %407, !prof !106

404:                                              ; preds = %403
  %405 = load i64, ptr %332, align 8, !tbaa !45
  %406 = load i64, ptr %336, align 8, !tbaa !45
  store i64 %406, ptr %332, align 8, !tbaa !45
  store i64 %405, ptr %336, align 8, !tbaa !45
  br label %455

407:                                              ; preds = %403
  %408 = icmp eq i32 %101, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %407
  %410 = load i32, ptr %332, align 4, !tbaa !49
  %411 = load i32, ptr %336, align 4, !tbaa !49
  store i32 %411, ptr %332, align 4, !tbaa !49
  store i32 %410, ptr %336, align 4, !tbaa !49
  br label %455

412:                                              ; preds = %407
  br i1 %104, label %413, label %427

413:                                              ; preds = %412
  %414 = shl i64 %2, 32
  %415 = ashr exact i64 %414, 32
  %416 = lshr i64 %415, 3
  br label %417

417:                                              ; preds = %413, %417
  %418 = phi ptr [ %424, %417 ], [ %336, %413 ]
  %419 = phi ptr [ %423, %417 ], [ %332, %413 ]
  %420 = phi i64 [ %425, %417 ], [ %416, %413 ]
  %421 = load i64, ptr %419, align 8, !tbaa !45
  %422 = load i64, ptr %418, align 8, !tbaa !45
  %423 = getelementptr inbounds i64, ptr %419, i64 1
  store i64 %422, ptr %419, align 8, !tbaa !45
  %424 = getelementptr inbounds i64, ptr %418, i64 1
  store i64 %421, ptr %418, align 8, !tbaa !45
  %425 = add nsw i64 %420, -1
  %426 = icmp sgt i64 %420, 1
  br i1 %426, label %417, label %455, !llvm.loop !51

427:                                              ; preds = %412
  br i1 %102, label %431, label %428

428:                                              ; preds = %427
  %429 = shl i64 %2, 32
  %430 = ashr exact i64 %429, 32
  br label %445

431:                                              ; preds = %427
  %432 = shl i64 %2, 32
  %433 = ashr exact i64 %432, 32
  %434 = lshr i64 %433, 2
  br label %435

435:                                              ; preds = %431, %435
  %436 = phi i64 [ %443, %435 ], [ %434, %431 ]
  %437 = phi ptr [ %441, %435 ], [ %332, %431 ]
  %438 = phi ptr [ %442, %435 ], [ %336, %431 ]
  %439 = load i32, ptr %437, align 4, !tbaa !49
  %440 = load i32, ptr %438, align 4, !tbaa !49
  %441 = getelementptr inbounds i32, ptr %437, i64 1
  store i32 %440, ptr %437, align 4, !tbaa !49
  %442 = getelementptr inbounds i32, ptr %438, i64 1
  store i32 %439, ptr %438, align 4, !tbaa !49
  %443 = add nsw i64 %436, -1
  %444 = icmp sgt i64 %436, 1
  br i1 %444, label %435, label %455, !llvm.loop !54

445:                                              ; preds = %428, %445
  %446 = phi i64 [ %453, %445 ], [ %430, %428 ]
  %447 = phi ptr [ %451, %445 ], [ %332, %428 ]
  %448 = phi ptr [ %452, %445 ], [ %336, %428 ]
  %449 = load i8, ptr %447, align 1, !tbaa !55
  %450 = load i8, ptr %448, align 1, !tbaa !55
  %451 = getelementptr inbounds i8, ptr %447, i64 1
  store i8 %450, ptr %447, align 1, !tbaa !55
  %452 = getelementptr inbounds i8, ptr %448, i64 1
  store i8 %449, ptr %448, align 1, !tbaa !55
  %453 = add nsw i64 %446, -1
  %454 = icmp sgt i64 %446, 1
  br i1 %454, label %445, label %455, !llvm.loop !56

455:                                              ; preds = %445, %435, %417, %409, %404
  %456 = getelementptr inbounds i8, ptr %332, i64 %2
  %457 = getelementptr inbounds i8, ptr %336, i64 %21
  br label %256, !llvm.loop !107

458:                                              ; preds = %330, %398
  %459 = phi i32 [ %399, %398 ], [ %331, %330 ]
  %460 = phi ptr [ %400, %398 ], [ %258, %330 ]
  %461 = phi ptr [ %401, %398 ], [ %259, %330 ]
  %462 = icmp eq i32 %459, 0
  %463 = mul i64 %107, %2
  %464 = getelementptr i8, ptr %106, i64 %463
  br i1 %462, label %465, label %534, !prof !108

465:                                              ; preds = %458
  %466 = icmp sgt i64 %463, %2
  br i1 %466, label %467, label %649, !prof !109

467:                                              ; preds = %465
  %468 = sub i64 0, %2
  br label %469

469:                                              ; preds = %467, %531
  %470 = phi ptr [ %252, %467 ], [ %532, %531 ]
  %471 = icmp ugt ptr %470, %106
  br i1 %471, label %472, label %531, !prof !110

472:                                              ; preds = %469, %529
  %473 = phi ptr [ %474, %529 ], [ %470, %469 ]
  %474 = getelementptr inbounds i8, ptr %473, i64 %468
  %475 = tail call i32 %3(ptr noundef nonnull %474, ptr noundef nonnull %473) #2, !prof !111
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %531, !prof !112

477:                                              ; preds = %472
  br i1 %199, label %478, label %481, !prof !113

478:                                              ; preds = %477
  %479 = load i64, ptr %473, align 8, !tbaa !45
  %480 = load i64, ptr %474, align 8, !tbaa !45
  store i64 %480, ptr %473, align 8, !tbaa !45
  store i64 %479, ptr %474, align 8, !tbaa !45
  br label %529

481:                                              ; preds = %477
  %482 = icmp eq i32 %101, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %481
  %484 = load i32, ptr %473, align 4, !tbaa !49
  %485 = load i32, ptr %474, align 4, !tbaa !49
  store i32 %485, ptr %473, align 4, !tbaa !49
  store i32 %484, ptr %474, align 4, !tbaa !49
  br label %529

486:                                              ; preds = %481
  br i1 %104, label %487, label %501

487:                                              ; preds = %486
  %488 = shl i64 %2, 32
  %489 = ashr exact i64 %488, 32
  %490 = lshr i64 %489, 3
  br label %491

491:                                              ; preds = %487, %491
  %492 = phi ptr [ %498, %491 ], [ %474, %487 ]
  %493 = phi ptr [ %497, %491 ], [ %473, %487 ]
  %494 = phi i64 [ %499, %491 ], [ %490, %487 ]
  %495 = load i64, ptr %493, align 8, !tbaa !45
  %496 = load i64, ptr %492, align 8, !tbaa !45
  %497 = getelementptr inbounds i64, ptr %493, i64 1
  store i64 %496, ptr %493, align 8, !tbaa !45
  %498 = getelementptr inbounds i64, ptr %492, i64 1
  store i64 %495, ptr %492, align 8, !tbaa !45
  %499 = add nsw i64 %494, -1
  %500 = icmp sgt i64 %494, 1
  br i1 %500, label %491, label %529, !llvm.loop !51

501:                                              ; preds = %486
  br i1 %102, label %505, label %502

502:                                              ; preds = %501
  %503 = shl i64 %2, 32
  %504 = ashr exact i64 %503, 32
  br label %519

505:                                              ; preds = %501
  %506 = shl i64 %2, 32
  %507 = ashr exact i64 %506, 32
  %508 = lshr i64 %507, 2
  br label %509

509:                                              ; preds = %505, %509
  %510 = phi i64 [ %517, %509 ], [ %508, %505 ]
  %511 = phi ptr [ %515, %509 ], [ %473, %505 ]
  %512 = phi ptr [ %516, %509 ], [ %474, %505 ]
  %513 = load i32, ptr %511, align 4, !tbaa !49
  %514 = load i32, ptr %512, align 4, !tbaa !49
  %515 = getelementptr inbounds i32, ptr %511, i64 1
  store i32 %514, ptr %511, align 4, !tbaa !49
  %516 = getelementptr inbounds i32, ptr %512, i64 1
  store i32 %513, ptr %512, align 4, !tbaa !49
  %517 = add nsw i64 %510, -1
  %518 = icmp sgt i64 %510, 1
  br i1 %518, label %509, label %529, !llvm.loop !54

519:                                              ; preds = %502, %519
  %520 = phi i64 [ %527, %519 ], [ %504, %502 ]
  %521 = phi ptr [ %525, %519 ], [ %473, %502 ]
  %522 = phi ptr [ %526, %519 ], [ %474, %502 ]
  %523 = load i8, ptr %521, align 1, !tbaa !55
  %524 = load i8, ptr %522, align 1, !tbaa !55
  %525 = getelementptr inbounds i8, ptr %521, i64 1
  store i8 %524, ptr %521, align 1, !tbaa !55
  %526 = getelementptr inbounds i8, ptr %522, i64 1
  store i8 %523, ptr %522, align 1, !tbaa !55
  %527 = add nsw i64 %520, -1
  %528 = icmp sgt i64 %520, 1
  br i1 %528, label %519, label %529, !llvm.loop !56

529:                                              ; preds = %519, %509, %491, %478, %483
  %530 = icmp ugt ptr %474, %106
  br i1 %530, label %472, label %531, !prof !114, !llvm.loop !115

531:                                              ; preds = %529, %472, %469
  %532 = getelementptr inbounds i8, ptr %470, i64 %2
  %533 = icmp ult ptr %532, %464
  br i1 %533, label %469, label %649, !prof !116, !llvm.loop !117

534:                                              ; preds = %458
  %535 = ptrtoint ptr %333 to i64
  %536 = sub i64 %535, %105
  %537 = ptrtoint ptr %332 to i64
  %538 = sub i64 %537, %535
  %539 = tail call i64 @llvm.smin.i64(i64 %536, i64 %538)
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %581, label %541, !prof !118

541:                                              ; preds = %534
  %542 = sub i64 0, %539
  %543 = getelementptr i8, ptr %332, i64 %542
  %544 = shl i64 %539, 32
  %545 = ashr exact i64 %544, 32
  br i1 %104, label %546, label %558, !prof !119

546:                                              ; preds = %541
  %547 = lshr i64 %545, 3
  br label %548

548:                                              ; preds = %548, %546
  %549 = phi ptr [ %543, %546 ], [ %555, %548 ]
  %550 = phi ptr [ %106, %546 ], [ %554, %548 ]
  %551 = phi i64 [ %547, %546 ], [ %556, %548 ]
  %552 = load i64, ptr %550, align 8, !tbaa !45
  %553 = load i64, ptr %549, align 8, !tbaa !45
  %554 = getelementptr inbounds i64, ptr %550, i64 1
  store i64 %553, ptr %550, align 8, !tbaa !45
  %555 = getelementptr inbounds i64, ptr %549, i64 1
  store i64 %552, ptr %549, align 8, !tbaa !45
  %556 = add nsw i64 %551, -1
  %557 = icmp sgt i64 %551, 1
  br i1 %557, label %548, label %581, !prof !118, !llvm.loop !51

558:                                              ; preds = %541
  br i1 %102, label %559, label %571

559:                                              ; preds = %558
  %560 = lshr i64 %545, 2
  br label %561

561:                                              ; preds = %561, %559
  %562 = phi i64 [ %560, %559 ], [ %569, %561 ]
  %563 = phi ptr [ %106, %559 ], [ %567, %561 ]
  %564 = phi ptr [ %543, %559 ], [ %568, %561 ]
  %565 = load i32, ptr %563, align 4, !tbaa !49
  %566 = load i32, ptr %564, align 4, !tbaa !49
  %567 = getelementptr inbounds i32, ptr %563, i64 1
  store i32 %566, ptr %563, align 4, !tbaa !49
  %568 = getelementptr inbounds i32, ptr %564, i64 1
  store i32 %565, ptr %564, align 4, !tbaa !49
  %569 = add nsw i64 %562, -1
  %570 = icmp sgt i64 %562, 1
  br i1 %570, label %561, label %581, !llvm.loop !54

571:                                              ; preds = %558, %571
  %572 = phi i64 [ %579, %571 ], [ %545, %558 ]
  %573 = phi ptr [ %577, %571 ], [ %106, %558 ]
  %574 = phi ptr [ %578, %571 ], [ %543, %558 ]
  %575 = load i8, ptr %573, align 1, !tbaa !55
  %576 = load i8, ptr %574, align 1, !tbaa !55
  %577 = getelementptr inbounds i8, ptr %573, i64 1
  store i8 %576, ptr %573, align 1, !tbaa !55
  %578 = getelementptr inbounds i8, ptr %574, i64 1
  store i8 %575, ptr %574, align 1, !tbaa !55
  %579 = add nsw i64 %572, -1
  %580 = icmp sgt i64 %572, 1
  br i1 %580, label %571, label %581, !llvm.loop !56

581:                                              ; preds = %571, %561, %548, %534
  %582 = ptrtoint ptr %460 to i64
  %583 = ptrtoint ptr %461 to i64
  %584 = sub i64 %582, %583
  %585 = ptrtoint ptr %464 to i64
  %586 = add i64 %582, %2
  %587 = sub i64 %585, %586
  %588 = tail call i64 @llvm.smin.i64(i64 %584, i64 %587)
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %630, label %590, !prof !119

590:                                              ; preds = %581
  %591 = sub i64 0, %588
  %592 = getelementptr i8, ptr %464, i64 %591
  %593 = shl i64 %588, 32
  %594 = ashr exact i64 %593, 32
  br i1 %104, label %595, label %607

595:                                              ; preds = %590
  %596 = lshr i64 %594, 3
  br label %597

597:                                              ; preds = %597, %595
  %598 = phi ptr [ %592, %595 ], [ %604, %597 ]
  %599 = phi ptr [ %332, %595 ], [ %603, %597 ]
  %600 = phi i64 [ %596, %595 ], [ %605, %597 ]
  %601 = load i64, ptr %599, align 8, !tbaa !45
  %602 = load i64, ptr %598, align 8, !tbaa !45
  %603 = getelementptr inbounds i64, ptr %599, i64 1
  store i64 %602, ptr %599, align 8, !tbaa !45
  %604 = getelementptr inbounds i64, ptr %598, i64 1
  store i64 %601, ptr %598, align 8, !tbaa !45
  %605 = add nsw i64 %600, -1
  %606 = icmp sgt i64 %600, 1
  br i1 %606, label %597, label %630, !llvm.loop !51

607:                                              ; preds = %590
  br i1 %102, label %608, label %620

608:                                              ; preds = %607
  %609 = lshr i64 %594, 2
  br label %610

610:                                              ; preds = %610, %608
  %611 = phi i64 [ %609, %608 ], [ %618, %610 ]
  %612 = phi ptr [ %332, %608 ], [ %616, %610 ]
  %613 = phi ptr [ %592, %608 ], [ %617, %610 ]
  %614 = load i32, ptr %612, align 4, !tbaa !49
  %615 = load i32, ptr %613, align 4, !tbaa !49
  %616 = getelementptr inbounds i32, ptr %612, i64 1
  store i32 %615, ptr %612, align 4, !tbaa !49
  %617 = getelementptr inbounds i32, ptr %613, i64 1
  store i32 %614, ptr %613, align 4, !tbaa !49
  %618 = add nsw i64 %611, -1
  %619 = icmp sgt i64 %611, 1
  br i1 %619, label %610, label %630, !llvm.loop !54

620:                                              ; preds = %607, %620
  %621 = phi i64 [ %628, %620 ], [ %594, %607 ]
  %622 = phi ptr [ %626, %620 ], [ %332, %607 ]
  %623 = phi ptr [ %627, %620 ], [ %592, %607 ]
  %624 = load i8, ptr %622, align 1, !tbaa !55
  %625 = load i8, ptr %623, align 1, !tbaa !55
  %626 = getelementptr inbounds i8, ptr %622, i64 1
  store i8 %625, ptr %622, align 1, !tbaa !55
  %627 = getelementptr inbounds i8, ptr %623, i64 1
  store i8 %624, ptr %623, align 1, !tbaa !55
  %628 = add nsw i64 %621, -1
  %629 = icmp sgt i64 %621, 1
  br i1 %629, label %620, label %630, !llvm.loop !56

630:                                              ; preds = %620, %610, %597, %581
  %631 = icmp ugt i64 %538, %2
  br i1 %631, label %632, label %634, !prof !120

632:                                              ; preds = %630
  %633 = udiv i64 %538, %2
  tail call void @spec_qsort(ptr noundef %106, i64 noundef %633, i64 noundef %2, ptr noundef %3)
  br label %634

634:                                              ; preds = %632, %630
  %635 = icmp ugt i64 %584, %2
  br i1 %635, label %636, label %649, !prof !121

636:                                              ; preds = %634
  %637 = sub i64 0, %584
  %638 = getelementptr inbounds i8, ptr %464, i64 %637
  %639 = udiv i64 %584, %2
  %640 = ptrtoint ptr %638 to i64
  %641 = or i64 %640, %2
  %642 = and i64 %641, 7
  %643 = icmp eq i64 %642, 0
  %644 = select i1 %643, i32 %7, i32 2, !prof !38
  %645 = and i64 %641, 3
  %646 = icmp eq i64 %645, 0
  %647 = select i1 %646, i32 %9, i32 2, !prof !38
  %648 = icmp ult i64 %639, 7
  br i1 %648, label %22, label %100, !prof !122

649:                                              ; preds = %634, %531, %97, %465, %22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @spec_qsort, ptr @spec_qsort, i64 340113078}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 312488396}
!38 = !{!"branch_weights", i32 640114341, i32 0}
!39 = !{!"branch_weights", i32 1, i32 276787187}
!40 = !{!"branch_weights", i32 276787187, i32 1}
!41 = !{!"branch_weights", i32 287849507, i32 1}
!42 = !{!"VP", i32 0, i64 1488640924, i64 4557914418215715564, i64 1380020568, i64 -5189693494555051101, i64 108620356}
!43 = !{!"branch_weights", i32 950851262, i32 537789662}
!44 = !{!"branch_weights", i32 950851262, i32 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !47, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = !{!47, !47, i64 0}
!56 = distinct !{!56, !52, !53}
!57 = !{!"branch_weights", i32 1200791417, i32 287849507}
!58 = distinct !{!58, !52, !53}
!59 = !{!"branch_weights", i32 548851983, i32 276787187}
!60 = distinct !{!60, !52, !53}
!61 = !{!"branch_weights", i32 36994606, i32 326332547}
!62 = !{!"branch_weights", i32 63530418, i32 262802129}
!63 = !{!"VP", i32 0, i64 63530418, i64 4557914418215715564, i64 59030495, i64 -5189693494555051101, i64 4499923}
!64 = !{!"branch_weights", i32 31880561, i32 31649857}
!65 = !{!"branch_weights", i32 13319709, i32 18560852}
!66 = !{!"VP", i32 0, i64 18560852, i64 4557914418215715564, i64 17112573, i64 -5189693494555051101, i64 1448279}
!67 = !{!"branch_weights", i32 9676645, i32 8884207}
!68 = !{!"branch_weights", i32 9169527, i32 22480330}
!69 = !{!"VP", i32 0, i64 22480330, i64 4557914418215715564, i64 20995593, i64 -5189693494555051101, i64 1484737}
!70 = !{!"branch_weights", i32 9396308, i32 13084022}
!71 = !{!"branch_weights", i32 34617714, i32 28912704}
!72 = !{!"branch_weights", i32 15686591, i32 18931123}
!73 = !{!"VP", i32 0, i64 18931123, i64 4557914418215715564, i64 17504398, i64 -5189693494555051101, i64 1426725}
!74 = !{!"branch_weights", i32 9513862, i32 9417261}
!75 = !{!"branch_weights", i32 10404230, i32 18508474}
!76 = !{!"VP", i32 0, i64 18508474, i64 4557914418215715564, i64 17086023, i64 -5189693494555051101, i64 1422451}
!77 = !{!"branch_weights", i32 9266202, i32 9242272}
!78 = !{!"branch_weights", i32 33353456, i32 30176962}
!79 = !{!"branch_weights", i32 12574573, i32 20778883}
!80 = !{!"VP", i32 0, i64 20778883, i64 4557914418215715564, i64 19344431, i64 -5189693494555051101, i64 1434452}
!81 = !{!"branch_weights", i32 9938532, i32 10840351}
!82 = !{!"branch_weights", i32 10763429, i32 19413533}
!83 = !{!"VP", i32 0, i64 19413533, i64 4557914418215715564, i64 17984168, i64 -5189693494555051101, i64 1429365}
!84 = !{!"branch_weights", i32 9472367, i32 9941166}
!85 = !{!"VP", i32 0, i64 326332547, i64 4557914418215715564, i64 303836409, i64 -5189693494555051101, i64 22496138}
!86 = !{!"branch_weights", i32 176295081, i32 150037466}
!87 = !{!"branch_weights", i32 55294092, i32 121000989}
!88 = !{!"VP", i32 0, i64 121000989, i64 4557914418215715564, i64 113448219, i64 -5189693494555051101, i64 7552770}
!89 = !{!"branch_weights", i32 52106259, i32 68894730}
!90 = !{!"branch_weights", i32 48392692, i32 101644774}
!91 = !{!"VP", i32 0, i64 101644774, i64 4557914418215715564, i64 94066895, i64 -5189693494555051101, i64 7577879}
!92 = !{!"branch_weights", i32 49854499, i32 51790275}
!93 = !{!"branch_weights", i32 363327153, i32 0}
!94 = !{!"branch_weights", i32 1, i32 80982526}
!95 = !{!"VP", i32 0, i64 8160331559, i64 4557914418215715564, i64 6887720070, i64 -5189693494555051101, i64 1272611489}
!96 = !{!"branch_weights", i32 -1943002166, i32 1728200649}
!97 = !{!"branch_weights", i32 0, i32 -1943002166}
!98 = !{!"branch_weights", i32 80982526, i32 -295784043}
!99 = distinct !{!99, !52, !53}
!100 = !{!"branch_weights", i32 1, i32 181663575}
!101 = !{!"VP", i32 0, i64 8074987726, i64 4557914418215715564, i64 6805812263, i64 -5189693494555051101, i64 1269175463}
!102 = !{!"branch_weights", i32 -1884993033, i32 1627519600}
!103 = !{!"branch_weights", i32 0, i32 -1884993033}
!104 = !{!"branch_weights", i32 181663575, i32 -439137008}
!105 = distinct !{!105, !52, !53}
!106 = !{!"branch_weights", i32 -1039928096, i32 0}
!107 = distinct !{!107, !53}
!108 = !{!"branch_weights", i32 26442149, i32 336885004}
!109 = !{!"branch_weights", i32 26442148, i32 1}
!110 = !{!"branch_weights", i32 60889457, i32 1}
!111 = !{!"VP", i32 0, i64 890737590, i64 4557914418215715564, i64 846675007, i64 -5189693494555051101, i64 44062583}
!112 = !{!"branch_weights", i32 664071724, i32 226665866}
!113 = !{!"branch_weights", i32 664071724, i32 0}
!114 = !{!"branch_weights", i32 829848133, i32 60889457}
!115 = distinct !{!115, !52, !53}
!116 = !{!"branch_weights", i32 261113176, i32 26442148}
!117 = distinct !{!117, !52, !53}
!118 = !{!"branch_weights", i32 0, i32 336885004}
!119 = !{!"branch_weights", i32 336885004, i32 0}
!120 = !{!"branch_weights", i32 310511117, i32 26373887}
!121 = !{!"branch_weights", i32 327625945, i32 9259059}
!122 = !{!"branch_weights", i32 276787187, i32 86539966}
