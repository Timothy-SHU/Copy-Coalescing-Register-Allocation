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
  %17 = select i1 %16, i32 %9, i32 2, !prof !39
  %18 = icmp ult i64 %1, 7
  br i1 %18, label %22, label %19, !prof !40

19:                                               ; preds = %4
  %20 = sub i64 0, %2
  %21 = sub i64 0, %2
  br label %101

22:                                               ; preds = %637, %4
  %23 = phi i64 [ %1, %4 ], [ %640, %637 ]
  %24 = phi ptr [ %0, %4 ], [ %639, %637 ]
  %25 = phi i1 [ %13, %4 ], [ %644, %637 ]
  %26 = phi i32 [ %14, %4 ], [ %645, %637 ]
  %27 = phi i1 [ %16, %4 ], [ %647, %637 ]
  %28 = phi i32 [ %17, %4 ], [ %648, %637 ]
  %29 = mul i64 %23, %2
  %30 = getelementptr inbounds i8, ptr %24, i64 %29
  %31 = icmp sgt i64 %29, %2
  br i1 %31, label %32, label %650, !prof !41

32:                                               ; preds = %22
  %33 = getelementptr inbounds i8, ptr %24, i64 %2
  br label %34

34:                                               ; preds = %32, %98
  %35 = phi ptr [ %33, %32 ], [ %99, %98 ]
  %36 = icmp ugt ptr %35, %24
  br i1 %36, label %37, label %98, !prof !42

37:                                               ; preds = %34
  %38 = icmp eq i32 %26, 0
  br label %39

39:                                               ; preds = %37, %96
  %40 = phi ptr [ %41, %96 ], [ %35, %37 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 %5
  %42 = tail call i32 %3(ptr noundef nonnull %41, ptr noundef nonnull %40) #2, !prof !43
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %98, !prof !44

44:                                               ; preds = %39
  br i1 %38, label %45, label %48, !prof !45

45:                                               ; preds = %44
  %46 = load i64, ptr %40, align 8, !tbaa !46
  %47 = load i64, ptr %41, align 8, !tbaa !46
  store i64 %47, ptr %40, align 8, !tbaa !46
  store i64 %46, ptr %41, align 8, !tbaa !46
  br label %96

48:                                               ; preds = %44
  %49 = icmp eq i32 %28, 0
  br i1 %49, label %50, label %53, !prof !50

50:                                               ; preds = %48
  %51 = load i32, ptr %40, align 4, !tbaa !51
  %52 = load i32, ptr %41, align 4, !tbaa !51
  store i32 %52, ptr %40, align 4, !tbaa !51
  store i32 %51, ptr %41, align 4, !tbaa !51
  br label %96

53:                                               ; preds = %48
  br i1 %25, label %54, label %68

54:                                               ; preds = %53
  %55 = shl i64 %2, 32
  %56 = ashr exact i64 %55, 32
  %57 = lshr i64 %56, 3
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %65, %58 ], [ %41, %54 ]
  %60 = phi ptr [ %64, %58 ], [ %40, %54 ]
  %61 = phi i64 [ %66, %58 ], [ %57, %54 ]
  %62 = load i64, ptr %60, align 8, !tbaa !46
  %63 = load i64, ptr %59, align 8, !tbaa !46
  %64 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 %63, ptr %60, align 8, !tbaa !46
  %65 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 %62, ptr %59, align 8, !tbaa !46
  %66 = add nsw i64 %61, -1
  %67 = icmp sgt i64 %61, 1
  br i1 %67, label %58, label %96, !llvm.loop !53

68:                                               ; preds = %53
  br i1 %27, label %72, label %69

69:                                               ; preds = %68
  %70 = shl i64 %2, 32
  %71 = ashr exact i64 %70, 32
  br label %86

72:                                               ; preds = %68
  %73 = shl i64 %2, 32
  %74 = ashr exact i64 %73, 32
  %75 = lshr i64 %74, 2
  br label %76

76:                                               ; preds = %72, %76
  %77 = phi i64 [ %84, %76 ], [ %75, %72 ]
  %78 = phi ptr [ %82, %76 ], [ %40, %72 ]
  %79 = phi ptr [ %83, %76 ], [ %41, %72 ]
  %80 = load i32, ptr %78, align 4, !tbaa !51
  %81 = load i32, ptr %79, align 4, !tbaa !51
  %82 = getelementptr inbounds i32, ptr %78, i64 1
  store i32 %81, ptr %78, align 4, !tbaa !51
  %83 = getelementptr inbounds i32, ptr %79, i64 1
  store i32 %80, ptr %79, align 4, !tbaa !51
  %84 = add nsw i64 %77, -1
  %85 = icmp sgt i64 %77, 1
  br i1 %85, label %76, label %96, !llvm.loop !56

86:                                               ; preds = %69, %86
  %87 = phi i64 [ %94, %86 ], [ %71, %69 ]
  %88 = phi ptr [ %92, %86 ], [ %40, %69 ]
  %89 = phi ptr [ %93, %86 ], [ %41, %69 ]
  %90 = load i8, ptr %88, align 1, !tbaa !57
  %91 = load i8, ptr %89, align 1, !tbaa !57
  %92 = getelementptr inbounds i8, ptr %88, i64 1
  store i8 %91, ptr %88, align 1, !tbaa !57
  %93 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 %90, ptr %89, align 1, !tbaa !57
  %94 = add nsw i64 %87, -1
  %95 = icmp sgt i64 %87, 1
  br i1 %95, label %86, label %96, !llvm.loop !58

96:                                               ; preds = %86, %76, %58, %45, %50
  %97 = icmp ugt ptr %41, %24
  br i1 %97, label %39, label %98, !prof !59, !llvm.loop !60

98:                                               ; preds = %96, %39, %34
  %99 = getelementptr inbounds i8, ptr %35, i64 %2
  %100 = icmp ult ptr %99, %30
  br i1 %100, label %34, label %650, !prof !61, !llvm.loop !62

101:                                              ; preds = %19, %637
  %102 = phi i32 [ %17, %19 ], [ %648, %637 ]
  %103 = phi i1 [ %16, %19 ], [ %647, %637 ]
  %104 = phi i32 [ %14, %19 ], [ %645, %637 ]
  %105 = phi i1 [ %13, %19 ], [ %644, %637 ]
  %106 = phi i64 [ %10, %19 ], [ %641, %637 ]
  %107 = phi ptr [ %0, %19 ], [ %639, %637 ]
  %108 = phi i64 [ %1, %19 ], [ %640, %637 ]
  %109 = lshr i64 %108, 1
  %110 = mul i64 %109, %2
  %111 = getelementptr inbounds i8, ptr %107, i64 %110
  %112 = icmp eq i64 %108, 7
  br i1 %112, label %198, label %113, !prof !63

113:                                              ; preds = %101
  %114 = add i64 %108, -1
  %115 = mul i64 %114, %2
  %116 = getelementptr inbounds i8, ptr %107, i64 %115
  %117 = icmp ugt i64 %108, 40
  br i1 %117, label %118, label %179, !prof !64

118:                                              ; preds = %113
  %119 = lshr i64 %108, 3
  %120 = mul i64 %119, %2
  %121 = getelementptr inbounds i8, ptr %107, i64 %120
  %122 = shl i64 %120, 1
  %123 = getelementptr inbounds i8, ptr %107, i64 %122
  %124 = tail call i32 %3(ptr noundef %107, ptr noundef %121) #2, !prof !65
  %125 = icmp slt i32 %124, 0
  %126 = tail call i32 %3(ptr noundef %121, ptr noundef %123) #2
  br i1 %125, label %127, label %133, !prof !66

127:                                              ; preds = %118
  %128 = icmp slt i32 %126, 0
  br i1 %128, label %139, label %129, !prof !67

129:                                              ; preds = %127
  %130 = tail call i32 %3(ptr noundef %107, ptr noundef %123) #2, !prof !68
  %131 = icmp slt i32 %130, 0
  %132 = select i1 %131, ptr %123, ptr %107, !prof !69
  br label %139

133:                                              ; preds = %118
  %134 = icmp sgt i32 %126, 0
  br i1 %134, label %139, label %135, !prof !70

135:                                              ; preds = %133
  %136 = tail call i32 %3(ptr noundef %107, ptr noundef %123) #2, !prof !71
  %137 = icmp slt i32 %136, 0
  %138 = select i1 %137, ptr %107, ptr %123, !prof !72
  br label %139

139:                                              ; preds = %127, %129, %133, %135
  %140 = phi ptr [ %132, %129 ], [ %138, %135 ], [ %121, %127 ], [ %121, %133 ]
  %141 = sub i64 0, %120
  %142 = getelementptr inbounds i8, ptr %111, i64 %141
  %143 = getelementptr inbounds i8, ptr %111, i64 %120
  %144 = tail call i32 %3(ptr noundef %142, ptr noundef %111) #2, !prof !65
  %145 = icmp slt i32 %144, 0
  %146 = tail call i32 %3(ptr noundef %111, ptr noundef %143) #2
  br i1 %145, label %147, label %153, !prof !73

147:                                              ; preds = %139
  %148 = icmp slt i32 %146, 0
  br i1 %148, label %159, label %149, !prof !74

149:                                              ; preds = %147
  %150 = tail call i32 %3(ptr noundef %142, ptr noundef %143) #2, !prof !75
  %151 = icmp slt i32 %150, 0
  %152 = select i1 %151, ptr %143, ptr %142, !prof !76
  br label %159

153:                                              ; preds = %139
  %154 = icmp sgt i32 %146, 0
  br i1 %154, label %159, label %155, !prof !77

155:                                              ; preds = %153
  %156 = tail call i32 %3(ptr noundef %142, ptr noundef %143) #2, !prof !78
  %157 = icmp slt i32 %156, 0
  %158 = select i1 %157, ptr %142, ptr %143, !prof !79
  br label %159

159:                                              ; preds = %147, %149, %153, %155
  %160 = phi ptr [ %152, %149 ], [ %158, %155 ], [ %111, %147 ], [ %111, %153 ]
  %161 = sub i64 0, %122
  %162 = getelementptr inbounds i8, ptr %116, i64 %161
  %163 = getelementptr inbounds i8, ptr %116, i64 %141
  %164 = tail call i32 %3(ptr noundef %162, ptr noundef %163) #2, !prof !65
  %165 = icmp slt i32 %164, 0
  %166 = tail call i32 %3(ptr noundef %163, ptr noundef %116) #2
  br i1 %165, label %167, label %173, !prof !80

167:                                              ; preds = %159
  %168 = icmp slt i32 %166, 0
  br i1 %168, label %179, label %169, !prof !81

169:                                              ; preds = %167
  %170 = tail call i32 %3(ptr noundef %162, ptr noundef %116) #2, !prof !82
  %171 = icmp slt i32 %170, 0
  %172 = select i1 %171, ptr %116, ptr %162, !prof !83
  br label %179

173:                                              ; preds = %159
  %174 = icmp sgt i32 %166, 0
  br i1 %174, label %179, label %175, !prof !84

175:                                              ; preds = %173
  %176 = tail call i32 %3(ptr noundef %162, ptr noundef %116) #2, !prof !85
  %177 = icmp slt i32 %176, 0
  %178 = select i1 %177, ptr %162, ptr %116, !prof !86
  br label %179

179:                                              ; preds = %175, %173, %169, %167, %113
  %180 = phi ptr [ %116, %113 ], [ %172, %169 ], [ %178, %175 ], [ %163, %167 ], [ %163, %173 ]
  %181 = phi ptr [ %111, %113 ], [ %160, %169 ], [ %160, %175 ], [ %160, %167 ], [ %160, %173 ]
  %182 = phi ptr [ %107, %113 ], [ %140, %169 ], [ %140, %175 ], [ %140, %167 ], [ %140, %173 ]
  %183 = tail call i32 %3(ptr noundef %182, ptr noundef %181) #2, !prof !87
  %184 = icmp slt i32 %183, 0
  %185 = tail call i32 %3(ptr noundef %181, ptr noundef %180) #2
  br i1 %184, label %186, label %192, !prof !88

186:                                              ; preds = %179
  %187 = icmp slt i32 %185, 0
  br i1 %187, label %198, label %188, !prof !89

188:                                              ; preds = %186
  %189 = tail call i32 %3(ptr noundef %182, ptr noundef %180) #2, !prof !90
  %190 = icmp slt i32 %189, 0
  %191 = select i1 %190, ptr %180, ptr %182, !prof !91
  br label %198

192:                                              ; preds = %179
  %193 = icmp sgt i32 %185, 0
  br i1 %193, label %198, label %194, !prof !92

194:                                              ; preds = %192
  %195 = tail call i32 %3(ptr noundef %182, ptr noundef %180) #2, !prof !93
  %196 = icmp slt i32 %195, 0
  %197 = select i1 %196, ptr %182, ptr %180, !prof !94
  br label %198

198:                                              ; preds = %194, %192, %188, %186, %101
  %199 = phi ptr [ %111, %101 ], [ %191, %188 ], [ %197, %194 ], [ %181, %186 ], [ %181, %192 ]
  %200 = icmp eq i32 %104, 0
  br i1 %200, label %201, label %204, !prof !95

201:                                              ; preds = %198
  %202 = load i64, ptr %107, align 8, !tbaa !46
  %203 = load i64, ptr %199, align 8, !tbaa !46
  store i64 %203, ptr %107, align 8, !tbaa !46
  store i64 %202, ptr %199, align 8, !tbaa !46
  br label %252

204:                                              ; preds = %198
  %205 = icmp eq i32 %102, 0
  br i1 %205, label %206, label %209, !prof !96

206:                                              ; preds = %204
  %207 = load i32, ptr %107, align 4, !tbaa !51
  %208 = load i32, ptr %199, align 4, !tbaa !51
  store i32 %208, ptr %107, align 4, !tbaa !51
  store i32 %207, ptr %199, align 4, !tbaa !51
  br label %252

209:                                              ; preds = %204
  br i1 %105, label %210, label %224, !prof !97

210:                                              ; preds = %209
  %211 = shl i64 %2, 32
  %212 = ashr exact i64 %211, 32
  %213 = lshr i64 %212, 3
  br label %214

214:                                              ; preds = %210, %214
  %215 = phi ptr [ %221, %214 ], [ %199, %210 ]
  %216 = phi ptr [ %220, %214 ], [ %107, %210 ]
  %217 = phi i64 [ %222, %214 ], [ %213, %210 ]
  %218 = load i64, ptr %216, align 8, !tbaa !46
  %219 = load i64, ptr %215, align 8, !tbaa !46
  %220 = getelementptr inbounds i64, ptr %216, i64 1
  store i64 %219, ptr %216, align 8, !tbaa !46
  %221 = getelementptr inbounds i64, ptr %215, i64 1
  store i64 %218, ptr %215, align 8, !tbaa !46
  %222 = add nsw i64 %217, -1
  %223 = icmp sgt i64 %217, 1
  br i1 %223, label %214, label %252, !prof !98, !llvm.loop !53

224:                                              ; preds = %209
  br i1 %103, label %228, label %225

225:                                              ; preds = %224
  %226 = shl i64 %2, 32
  %227 = ashr exact i64 %226, 32
  br label %242

228:                                              ; preds = %224
  %229 = shl i64 %2, 32
  %230 = ashr exact i64 %229, 32
  %231 = lshr i64 %230, 2
  br label %232

232:                                              ; preds = %228, %232
  %233 = phi i64 [ %240, %232 ], [ %231, %228 ]
  %234 = phi ptr [ %238, %232 ], [ %107, %228 ]
  %235 = phi ptr [ %239, %232 ], [ %199, %228 ]
  %236 = load i32, ptr %234, align 4, !tbaa !51
  %237 = load i32, ptr %235, align 4, !tbaa !51
  %238 = getelementptr inbounds i32, ptr %234, i64 1
  store i32 %237, ptr %234, align 4, !tbaa !51
  %239 = getelementptr inbounds i32, ptr %235, i64 1
  store i32 %236, ptr %235, align 4, !tbaa !51
  %240 = add nsw i64 %233, -1
  %241 = icmp sgt i64 %233, 1
  br i1 %241, label %232, label %252, !llvm.loop !56

242:                                              ; preds = %225, %242
  %243 = phi i64 [ %250, %242 ], [ %227, %225 ]
  %244 = phi ptr [ %248, %242 ], [ %107, %225 ]
  %245 = phi ptr [ %249, %242 ], [ %199, %225 ]
  %246 = load i8, ptr %244, align 1, !tbaa !57
  %247 = load i8, ptr %245, align 1, !tbaa !57
  %248 = getelementptr inbounds i8, ptr %244, i64 1
  store i8 %247, ptr %244, align 1, !tbaa !57
  %249 = getelementptr inbounds i8, ptr %245, i64 1
  store i8 %246, ptr %245, align 1, !tbaa !57
  %250 = add nsw i64 %243, -1
  %251 = icmp sgt i64 %243, 1
  br i1 %251, label %242, label %252, !llvm.loop !58

252:                                              ; preds = %242, %232, %214, %206, %201
  %253 = getelementptr inbounds i8, ptr %107, i64 %2
  %254 = add i64 %108, -1
  %255 = mul i64 %254, %2
  %256 = getelementptr inbounds i8, ptr %107, i64 %255
  %257 = icmp eq i32 %102, 0
  br label %258

258:                                              ; preds = %456, %252
  %259 = phi i32 [ 0, %252 ], [ 1, %456 ]
  %260 = phi ptr [ %256, %252 ], [ %339, %456 ]
  %261 = phi ptr [ %256, %252 ], [ %458, %456 ]
  %262 = phi ptr [ %253, %252 ], [ %457, %456 ]
  %263 = phi ptr [ %253, %252 ], [ %335, %456 ]
  %264 = icmp ugt ptr %262, %261
  br i1 %264, label %332, label %265, !prof !99

265:                                              ; preds = %258, %327
  %266 = phi ptr [ %329, %327 ], [ %263, %258 ]
  %267 = phi ptr [ %330, %327 ], [ %262, %258 ]
  %268 = phi i32 [ %328, %327 ], [ %259, %258 ]
  %269 = tail call i32 %3(ptr noundef %267, ptr noundef %107) #2, !prof !100
  %270 = icmp slt i32 %269, 1
  br i1 %270, label %271, label %332, !prof !101

271:                                              ; preds = %265
  %272 = icmp eq i32 %269, 0
  br i1 %272, label %273, label %327, !prof !102

273:                                              ; preds = %271
  br i1 %200, label %274, label %277, !prof !103

274:                                              ; preds = %273
  %275 = load i64, ptr %266, align 8, !tbaa !46
  %276 = load i64, ptr %267, align 8, !tbaa !46
  store i64 %276, ptr %266, align 8, !tbaa !46
  store i64 %275, ptr %267, align 8, !tbaa !46
  br label %325

277:                                              ; preds = %273
  %278 = icmp eq i32 %102, 0
  br i1 %278, label %279, label %282, !prof !104

279:                                              ; preds = %277
  %280 = load i32, ptr %266, align 4, !tbaa !51
  %281 = load i32, ptr %267, align 4, !tbaa !51
  store i32 %281, ptr %266, align 4, !tbaa !51
  store i32 %280, ptr %267, align 4, !tbaa !51
  br label %325

282:                                              ; preds = %277
  br i1 %105, label %283, label %297

283:                                              ; preds = %282
  %284 = shl i64 %2, 32
  %285 = ashr exact i64 %284, 32
  %286 = lshr i64 %285, 3
  br label %287

287:                                              ; preds = %283, %287
  %288 = phi ptr [ %294, %287 ], [ %267, %283 ]
  %289 = phi ptr [ %293, %287 ], [ %266, %283 ]
  %290 = phi i64 [ %295, %287 ], [ %286, %283 ]
  %291 = load i64, ptr %289, align 8, !tbaa !46
  %292 = load i64, ptr %288, align 8, !tbaa !46
  %293 = getelementptr inbounds i64, ptr %289, i64 1
  store i64 %292, ptr %289, align 8, !tbaa !46
  %294 = getelementptr inbounds i64, ptr %288, i64 1
  store i64 %291, ptr %288, align 8, !tbaa !46
  %295 = add nsw i64 %290, -1
  %296 = icmp sgt i64 %290, 1
  br i1 %296, label %287, label %325, !llvm.loop !53

297:                                              ; preds = %282
  br i1 %103, label %301, label %298

298:                                              ; preds = %297
  %299 = shl i64 %2, 32
  %300 = ashr exact i64 %299, 32
  br label %315

301:                                              ; preds = %297
  %302 = shl i64 %2, 32
  %303 = ashr exact i64 %302, 32
  %304 = lshr i64 %303, 2
  br label %305

305:                                              ; preds = %301, %305
  %306 = phi i64 [ %313, %305 ], [ %304, %301 ]
  %307 = phi ptr [ %311, %305 ], [ %266, %301 ]
  %308 = phi ptr [ %312, %305 ], [ %267, %301 ]
  %309 = load i32, ptr %307, align 4, !tbaa !51
  %310 = load i32, ptr %308, align 4, !tbaa !51
  %311 = getelementptr inbounds i32, ptr %307, i64 1
  store i32 %310, ptr %307, align 4, !tbaa !51
  %312 = getelementptr inbounds i32, ptr %308, i64 1
  store i32 %309, ptr %308, align 4, !tbaa !51
  %313 = add nsw i64 %306, -1
  %314 = icmp sgt i64 %306, 1
  br i1 %314, label %305, label %325, !llvm.loop !56

315:                                              ; preds = %298, %315
  %316 = phi i64 [ %323, %315 ], [ %300, %298 ]
  %317 = phi ptr [ %321, %315 ], [ %266, %298 ]
  %318 = phi ptr [ %322, %315 ], [ %267, %298 ]
  %319 = load i8, ptr %317, align 1, !tbaa !57
  %320 = load i8, ptr %318, align 1, !tbaa !57
  %321 = getelementptr inbounds i8, ptr %317, i64 1
  store i8 %320, ptr %317, align 1, !tbaa !57
  %322 = getelementptr inbounds i8, ptr %318, i64 1
  store i8 %319, ptr %318, align 1, !tbaa !57
  %323 = add nsw i64 %316, -1
  %324 = icmp sgt i64 %316, 1
  br i1 %324, label %315, label %325, !llvm.loop !58

325:                                              ; preds = %315, %305, %287, %279, %274
  %326 = getelementptr inbounds i8, ptr %266, i64 %2
  br label %327

327:                                              ; preds = %325, %271
  %328 = phi i32 [ 1, %325 ], [ %268, %271 ]
  %329 = phi ptr [ %326, %325 ], [ %266, %271 ]
  %330 = getelementptr inbounds i8, ptr %267, i64 %2
  %331 = icmp ugt ptr %330, %261
  br i1 %331, label %332, label %265, !prof !105, !llvm.loop !106

332:                                              ; preds = %265, %327, %258
  %333 = phi i32 [ %259, %258 ], [ %268, %265 ], [ %328, %327 ]
  %334 = phi ptr [ %262, %258 ], [ %267, %265 ], [ %330, %327 ]
  %335 = phi ptr [ %263, %258 ], [ %266, %265 ], [ %329, %327 ]
  %336 = icmp ugt ptr %334, %261
  br i1 %336, label %459, label %337, !prof !107

337:                                              ; preds = %332, %400
  %338 = phi ptr [ %403, %400 ], [ %261, %332 ]
  %339 = phi ptr [ %402, %400 ], [ %260, %332 ]
  %340 = phi i32 [ %401, %400 ], [ %333, %332 ]
  %341 = tail call i32 %3(ptr noundef %338, ptr noundef %107) #2, !prof !108
  %342 = icmp sgt i32 %341, -1
  br i1 %342, label %343, label %405, !prof !109

343:                                              ; preds = %337
  %344 = icmp eq i32 %341, 0
  br i1 %344, label %345, label %400, !prof !110

345:                                              ; preds = %343
  br i1 %200, label %346, label %349, !prof !111

346:                                              ; preds = %345
  %347 = load i64, ptr %338, align 8, !tbaa !46
  %348 = load i64, ptr %339, align 8, !tbaa !46
  store i64 %348, ptr %338, align 8, !tbaa !46
  store i64 %347, ptr %339, align 8, !tbaa !46
  br label %397

349:                                              ; preds = %345
  %350 = icmp eq i32 %102, 0
  br i1 %350, label %351, label %354, !prof !112

351:                                              ; preds = %349
  %352 = load i32, ptr %338, align 4, !tbaa !51
  %353 = load i32, ptr %339, align 4, !tbaa !51
  store i32 %353, ptr %338, align 4, !tbaa !51
  store i32 %352, ptr %339, align 4, !tbaa !51
  br label %397

354:                                              ; preds = %349
  br i1 %105, label %355, label %369

355:                                              ; preds = %354
  %356 = shl i64 %2, 32
  %357 = ashr exact i64 %356, 32
  %358 = lshr i64 %357, 3
  br label %359

359:                                              ; preds = %355, %359
  %360 = phi ptr [ %366, %359 ], [ %339, %355 ]
  %361 = phi ptr [ %365, %359 ], [ %338, %355 ]
  %362 = phi i64 [ %367, %359 ], [ %358, %355 ]
  %363 = load i64, ptr %361, align 8, !tbaa !46
  %364 = load i64, ptr %360, align 8, !tbaa !46
  %365 = getelementptr inbounds i64, ptr %361, i64 1
  store i64 %364, ptr %361, align 8, !tbaa !46
  %366 = getelementptr inbounds i64, ptr %360, i64 1
  store i64 %363, ptr %360, align 8, !tbaa !46
  %367 = add nsw i64 %362, -1
  %368 = icmp sgt i64 %362, 1
  br i1 %368, label %359, label %397, !llvm.loop !53

369:                                              ; preds = %354
  br i1 %103, label %373, label %370

370:                                              ; preds = %369
  %371 = shl i64 %2, 32
  %372 = ashr exact i64 %371, 32
  br label %387

373:                                              ; preds = %369
  %374 = shl i64 %2, 32
  %375 = ashr exact i64 %374, 32
  %376 = lshr i64 %375, 2
  br label %377

377:                                              ; preds = %373, %377
  %378 = phi i64 [ %385, %377 ], [ %376, %373 ]
  %379 = phi ptr [ %383, %377 ], [ %338, %373 ]
  %380 = phi ptr [ %384, %377 ], [ %339, %373 ]
  %381 = load i32, ptr %379, align 4, !tbaa !51
  %382 = load i32, ptr %380, align 4, !tbaa !51
  %383 = getelementptr inbounds i32, ptr %379, i64 1
  store i32 %382, ptr %379, align 4, !tbaa !51
  %384 = getelementptr inbounds i32, ptr %380, i64 1
  store i32 %381, ptr %380, align 4, !tbaa !51
  %385 = add nsw i64 %378, -1
  %386 = icmp sgt i64 %378, 1
  br i1 %386, label %377, label %397, !llvm.loop !56

387:                                              ; preds = %370, %387
  %388 = phi i64 [ %395, %387 ], [ %372, %370 ]
  %389 = phi ptr [ %393, %387 ], [ %338, %370 ]
  %390 = phi ptr [ %394, %387 ], [ %339, %370 ]
  %391 = load i8, ptr %389, align 1, !tbaa !57
  %392 = load i8, ptr %390, align 1, !tbaa !57
  %393 = getelementptr inbounds i8, ptr %389, i64 1
  store i8 %392, ptr %389, align 1, !tbaa !57
  %394 = getelementptr inbounds i8, ptr %390, i64 1
  store i8 %391, ptr %390, align 1, !tbaa !57
  %395 = add nsw i64 %388, -1
  %396 = icmp sgt i64 %388, 1
  br i1 %396, label %387, label %397, !llvm.loop !58

397:                                              ; preds = %387, %377, %359, %351, %346
  %398 = sub i64 0, %2
  %399 = getelementptr inbounds i8, ptr %339, i64 %398
  br label %400

400:                                              ; preds = %397, %343
  %401 = phi i32 [ 1, %397 ], [ %340, %343 ]
  %402 = phi ptr [ %399, %397 ], [ %339, %343 ]
  %403 = getelementptr inbounds i8, ptr %338, i64 %20
  %404 = icmp ugt ptr %334, %403
  br i1 %404, label %459, label %337, !prof !113, !llvm.loop !114

405:                                              ; preds = %337
  br i1 %200, label %406, label %409, !prof !115

406:                                              ; preds = %405
  %407 = load i64, ptr %334, align 8, !tbaa !46
  %408 = load i64, ptr %338, align 8, !tbaa !46
  store i64 %408, ptr %334, align 8, !tbaa !46
  store i64 %407, ptr %338, align 8, !tbaa !46
  br label %456

409:                                              ; preds = %405
  br i1 %257, label %410, label %413, !prof !116

410:                                              ; preds = %409
  %411 = load i32, ptr %334, align 4, !tbaa !51
  %412 = load i32, ptr %338, align 4, !tbaa !51
  store i32 %412, ptr %334, align 4, !tbaa !51
  store i32 %411, ptr %338, align 4, !tbaa !51
  br label %456

413:                                              ; preds = %409
  br i1 %105, label %414, label %428

414:                                              ; preds = %413
  %415 = shl i64 %2, 32
  %416 = ashr exact i64 %415, 32
  %417 = lshr i64 %416, 3
  br label %418

418:                                              ; preds = %414, %418
  %419 = phi ptr [ %425, %418 ], [ %338, %414 ]
  %420 = phi ptr [ %424, %418 ], [ %334, %414 ]
  %421 = phi i64 [ %426, %418 ], [ %417, %414 ]
  %422 = load i64, ptr %420, align 8, !tbaa !46
  %423 = load i64, ptr %419, align 8, !tbaa !46
  %424 = getelementptr inbounds i64, ptr %420, i64 1
  store i64 %423, ptr %420, align 8, !tbaa !46
  %425 = getelementptr inbounds i64, ptr %419, i64 1
  store i64 %422, ptr %419, align 8, !tbaa !46
  %426 = add nsw i64 %421, -1
  %427 = icmp sgt i64 %421, 1
  br i1 %427, label %418, label %456, !llvm.loop !53

428:                                              ; preds = %413
  br i1 %103, label %432, label %429

429:                                              ; preds = %428
  %430 = shl i64 %2, 32
  %431 = ashr exact i64 %430, 32
  br label %446

432:                                              ; preds = %428
  %433 = shl i64 %2, 32
  %434 = ashr exact i64 %433, 32
  %435 = lshr i64 %434, 2
  br label %436

436:                                              ; preds = %432, %436
  %437 = phi i64 [ %444, %436 ], [ %435, %432 ]
  %438 = phi ptr [ %442, %436 ], [ %334, %432 ]
  %439 = phi ptr [ %443, %436 ], [ %338, %432 ]
  %440 = load i32, ptr %438, align 4, !tbaa !51
  %441 = load i32, ptr %439, align 4, !tbaa !51
  %442 = getelementptr inbounds i32, ptr %438, i64 1
  store i32 %441, ptr %438, align 4, !tbaa !51
  %443 = getelementptr inbounds i32, ptr %439, i64 1
  store i32 %440, ptr %439, align 4, !tbaa !51
  %444 = add nsw i64 %437, -1
  %445 = icmp sgt i64 %437, 1
  br i1 %445, label %436, label %456, !llvm.loop !56

446:                                              ; preds = %429, %446
  %447 = phi i64 [ %454, %446 ], [ %431, %429 ]
  %448 = phi ptr [ %452, %446 ], [ %334, %429 ]
  %449 = phi ptr [ %453, %446 ], [ %338, %429 ]
  %450 = load i8, ptr %448, align 1, !tbaa !57
  %451 = load i8, ptr %449, align 1, !tbaa !57
  %452 = getelementptr inbounds i8, ptr %448, i64 1
  store i8 %451, ptr %448, align 1, !tbaa !57
  %453 = getelementptr inbounds i8, ptr %449, i64 1
  store i8 %450, ptr %449, align 1, !tbaa !57
  %454 = add nsw i64 %447, -1
  %455 = icmp sgt i64 %447, 1
  br i1 %455, label %446, label %456, !llvm.loop !58

456:                                              ; preds = %446, %436, %418, %410, %406
  %457 = getelementptr inbounds i8, ptr %334, i64 %2
  %458 = getelementptr inbounds i8, ptr %338, i64 %21
  br label %258, !llvm.loop !117

459:                                              ; preds = %332, %400
  %460 = phi i32 [ %401, %400 ], [ %333, %332 ]
  %461 = phi ptr [ %402, %400 ], [ %260, %332 ]
  %462 = phi ptr [ %403, %400 ], [ %261, %332 ]
  %463 = icmp eq i32 %460, 0
  %464 = mul i64 %108, %2
  %465 = getelementptr i8, ptr %107, i64 %464
  br i1 %463, label %466, label %535, !prof !118

466:                                              ; preds = %459
  %467 = icmp sgt i64 %464, %2
  br i1 %467, label %468, label %650, !prof !119

468:                                              ; preds = %466
  %469 = sub i64 0, %2
  %470 = icmp eq i32 %102, 0
  br label %471

471:                                              ; preds = %468, %532
  %472 = phi ptr [ %253, %468 ], [ %533, %532 ]
  %473 = icmp ugt ptr %472, %107
  br i1 %473, label %474, label %532, !prof !120

474:                                              ; preds = %471, %530
  %475 = phi ptr [ %476, %530 ], [ %472, %471 ]
  %476 = getelementptr inbounds i8, ptr %475, i64 %469
  %477 = tail call i32 %3(ptr noundef nonnull %476, ptr noundef nonnull %475) #2, !prof !121
  %478 = icmp sgt i32 %477, 0
  br i1 %478, label %479, label %532, !prof !122

479:                                              ; preds = %474
  br i1 %200, label %480, label %483, !prof !123

480:                                              ; preds = %479
  %481 = load i64, ptr %475, align 8, !tbaa !46
  %482 = load i64, ptr %476, align 8, !tbaa !46
  store i64 %482, ptr %475, align 8, !tbaa !46
  store i64 %481, ptr %476, align 8, !tbaa !46
  br label %530

483:                                              ; preds = %479
  br i1 %470, label %484, label %487, !prof !124

484:                                              ; preds = %483
  %485 = load i32, ptr %475, align 4, !tbaa !51
  %486 = load i32, ptr %476, align 4, !tbaa !51
  store i32 %486, ptr %475, align 4, !tbaa !51
  store i32 %485, ptr %476, align 4, !tbaa !51
  br label %530

487:                                              ; preds = %483
  br i1 %105, label %488, label %502, !prof !125

488:                                              ; preds = %487
  %489 = shl i64 %2, 32
  %490 = ashr exact i64 %489, 32
  %491 = lshr i64 %490, 3
  br label %492

492:                                              ; preds = %488, %492
  %493 = phi ptr [ %499, %492 ], [ %476, %488 ]
  %494 = phi ptr [ %498, %492 ], [ %475, %488 ]
  %495 = phi i64 [ %500, %492 ], [ %491, %488 ]
  %496 = load i64, ptr %494, align 8, !tbaa !46
  %497 = load i64, ptr %493, align 8, !tbaa !46
  %498 = getelementptr inbounds i64, ptr %494, i64 1
  store i64 %497, ptr %494, align 8, !tbaa !46
  %499 = getelementptr inbounds i64, ptr %493, i64 1
  store i64 %496, ptr %493, align 8, !tbaa !46
  %500 = add nsw i64 %495, -1
  %501 = icmp sgt i64 %495, 1
  br i1 %501, label %492, label %530, !prof !126, !llvm.loop !53

502:                                              ; preds = %487
  br i1 %103, label %506, label %503

503:                                              ; preds = %502
  %504 = shl i64 %2, 32
  %505 = ashr exact i64 %504, 32
  br label %520

506:                                              ; preds = %502
  %507 = shl i64 %2, 32
  %508 = ashr exact i64 %507, 32
  %509 = lshr i64 %508, 2
  br label %510

510:                                              ; preds = %506, %510
  %511 = phi i64 [ %518, %510 ], [ %509, %506 ]
  %512 = phi ptr [ %516, %510 ], [ %475, %506 ]
  %513 = phi ptr [ %517, %510 ], [ %476, %506 ]
  %514 = load i32, ptr %512, align 4, !tbaa !51
  %515 = load i32, ptr %513, align 4, !tbaa !51
  %516 = getelementptr inbounds i32, ptr %512, i64 1
  store i32 %515, ptr %512, align 4, !tbaa !51
  %517 = getelementptr inbounds i32, ptr %513, i64 1
  store i32 %514, ptr %513, align 4, !tbaa !51
  %518 = add nsw i64 %511, -1
  %519 = icmp sgt i64 %511, 1
  br i1 %519, label %510, label %530, !llvm.loop !56

520:                                              ; preds = %503, %520
  %521 = phi i64 [ %528, %520 ], [ %505, %503 ]
  %522 = phi ptr [ %526, %520 ], [ %475, %503 ]
  %523 = phi ptr [ %527, %520 ], [ %476, %503 ]
  %524 = load i8, ptr %522, align 1, !tbaa !57
  %525 = load i8, ptr %523, align 1, !tbaa !57
  %526 = getelementptr inbounds i8, ptr %522, i64 1
  store i8 %525, ptr %522, align 1, !tbaa !57
  %527 = getelementptr inbounds i8, ptr %523, i64 1
  store i8 %524, ptr %523, align 1, !tbaa !57
  %528 = add nsw i64 %521, -1
  %529 = icmp sgt i64 %521, 1
  br i1 %529, label %520, label %530, !llvm.loop !58

530:                                              ; preds = %520, %510, %492, %480, %484
  %531 = icmp ugt ptr %476, %107
  br i1 %531, label %474, label %532, !prof !127, !llvm.loop !128

532:                                              ; preds = %530, %474, %471
  %533 = getelementptr inbounds i8, ptr %472, i64 %2
  %534 = icmp ult ptr %533, %465
  br i1 %534, label %471, label %650, !prof !129, !llvm.loop !130

535:                                              ; preds = %459
  %536 = ptrtoint ptr %335 to i64
  %537 = sub i64 %536, %106
  %538 = ptrtoint ptr %334 to i64
  %539 = sub i64 %538, %536
  %540 = tail call i64 @llvm.smin.i64(i64 %537, i64 %539)
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %582, label %542, !prof !131

542:                                              ; preds = %535
  %543 = sub i64 0, %540
  %544 = getelementptr i8, ptr %334, i64 %543
  %545 = shl i64 %540, 32
  %546 = ashr exact i64 %545, 32
  br i1 %105, label %547, label %559, !prof !132

547:                                              ; preds = %542
  %548 = lshr i64 %546, 3
  br label %549

549:                                              ; preds = %549, %547
  %550 = phi ptr [ %544, %547 ], [ %556, %549 ]
  %551 = phi ptr [ %107, %547 ], [ %555, %549 ]
  %552 = phi i64 [ %548, %547 ], [ %557, %549 ]
  %553 = load i64, ptr %551, align 8, !tbaa !46
  %554 = load i64, ptr %550, align 8, !tbaa !46
  %555 = getelementptr inbounds i64, ptr %551, i64 1
  store i64 %554, ptr %551, align 8, !tbaa !46
  %556 = getelementptr inbounds i64, ptr %550, i64 1
  store i64 %553, ptr %550, align 8, !tbaa !46
  %557 = add nsw i64 %552, -1
  %558 = icmp sgt i64 %552, 1
  br i1 %558, label %549, label %582, !prof !133, !llvm.loop !53

559:                                              ; preds = %542
  br i1 %103, label %560, label %572, !prof !134

560:                                              ; preds = %559
  %561 = lshr i64 %546, 2
  br label %562

562:                                              ; preds = %562, %560
  %563 = phi i64 [ %561, %560 ], [ %570, %562 ]
  %564 = phi ptr [ %107, %560 ], [ %568, %562 ]
  %565 = phi ptr [ %544, %560 ], [ %569, %562 ]
  %566 = load i32, ptr %564, align 4, !tbaa !51
  %567 = load i32, ptr %565, align 4, !tbaa !51
  %568 = getelementptr inbounds i32, ptr %564, i64 1
  store i32 %567, ptr %564, align 4, !tbaa !51
  %569 = getelementptr inbounds i32, ptr %565, i64 1
  store i32 %566, ptr %565, align 4, !tbaa !51
  %570 = add nsw i64 %563, -1
  %571 = icmp sgt i64 %563, 1
  br i1 %571, label %562, label %582, !prof !135, !llvm.loop !56

572:                                              ; preds = %559, %572
  %573 = phi i64 [ %580, %572 ], [ %546, %559 ]
  %574 = phi ptr [ %578, %572 ], [ %107, %559 ]
  %575 = phi ptr [ %579, %572 ], [ %544, %559 ]
  %576 = load i8, ptr %574, align 1, !tbaa !57
  %577 = load i8, ptr %575, align 1, !tbaa !57
  %578 = getelementptr inbounds i8, ptr %574, i64 1
  store i8 %577, ptr %574, align 1, !tbaa !57
  %579 = getelementptr inbounds i8, ptr %575, i64 1
  store i8 %576, ptr %575, align 1, !tbaa !57
  %580 = add nsw i64 %573, -1
  %581 = icmp sgt i64 %573, 1
  br i1 %581, label %572, label %582, !llvm.loop !58

582:                                              ; preds = %572, %562, %549, %535
  %583 = ptrtoint ptr %461 to i64
  %584 = ptrtoint ptr %462 to i64
  %585 = sub i64 %583, %584
  %586 = ptrtoint ptr %465 to i64
  %587 = add i64 %583, %2
  %588 = sub i64 %586, %587
  %589 = tail call i64 @llvm.smin.i64(i64 %585, i64 %588)
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %631, label %591, !prof !136

591:                                              ; preds = %582
  %592 = sub i64 0, %589
  %593 = getelementptr i8, ptr %465, i64 %592
  %594 = shl i64 %589, 32
  %595 = ashr exact i64 %594, 32
  br i1 %105, label %596, label %608, !prof !111

596:                                              ; preds = %591
  %597 = lshr i64 %595, 3
  br label %598

598:                                              ; preds = %598, %596
  %599 = phi ptr [ %593, %596 ], [ %605, %598 ]
  %600 = phi ptr [ %334, %596 ], [ %604, %598 ]
  %601 = phi i64 [ %597, %596 ], [ %606, %598 ]
  %602 = load i64, ptr %600, align 8, !tbaa !46
  %603 = load i64, ptr %599, align 8, !tbaa !46
  %604 = getelementptr inbounds i64, ptr %600, i64 1
  store i64 %603, ptr %600, align 8, !tbaa !46
  %605 = getelementptr inbounds i64, ptr %599, i64 1
  store i64 %602, ptr %599, align 8, !tbaa !46
  %606 = add nsw i64 %601, -1
  %607 = icmp sgt i64 %601, 1
  br i1 %607, label %598, label %631, !llvm.loop !53

608:                                              ; preds = %591
  br i1 %103, label %609, label %621, !prof !112

609:                                              ; preds = %608
  %610 = lshr i64 %595, 2
  br label %611

611:                                              ; preds = %611, %609
  %612 = phi i64 [ %610, %609 ], [ %619, %611 ]
  %613 = phi ptr [ %334, %609 ], [ %617, %611 ]
  %614 = phi ptr [ %593, %609 ], [ %618, %611 ]
  %615 = load i32, ptr %613, align 4, !tbaa !51
  %616 = load i32, ptr %614, align 4, !tbaa !51
  %617 = getelementptr inbounds i32, ptr %613, i64 1
  store i32 %616, ptr %613, align 4, !tbaa !51
  %618 = getelementptr inbounds i32, ptr %614, i64 1
  store i32 %615, ptr %614, align 4, !tbaa !51
  %619 = add nsw i64 %612, -1
  %620 = icmp sgt i64 %612, 1
  br i1 %620, label %611, label %631, !prof !111, !llvm.loop !56

621:                                              ; preds = %608, %621
  %622 = phi i64 [ %629, %621 ], [ %595, %608 ]
  %623 = phi ptr [ %627, %621 ], [ %334, %608 ]
  %624 = phi ptr [ %628, %621 ], [ %593, %608 ]
  %625 = load i8, ptr %623, align 1, !tbaa !57
  %626 = load i8, ptr %624, align 1, !tbaa !57
  %627 = getelementptr inbounds i8, ptr %623, i64 1
  store i8 %626, ptr %623, align 1, !tbaa !57
  %628 = getelementptr inbounds i8, ptr %624, i64 1
  store i8 %625, ptr %624, align 1, !tbaa !57
  %629 = add nsw i64 %622, -1
  %630 = icmp sgt i64 %622, 1
  br i1 %630, label %621, label %631, !llvm.loop !58

631:                                              ; preds = %621, %611, %598, %582
  %632 = icmp ugt i64 %539, %2
  br i1 %632, label %633, label %635, !prof !137

633:                                              ; preds = %631
  %634 = udiv i64 %539, %2
  tail call void @spec_qsort(ptr noundef %107, i64 noundef %634, i64 noundef %2, ptr noundef %3)
  br label %635

635:                                              ; preds = %633, %631
  %636 = icmp ugt i64 %585, %2
  br i1 %636, label %637, label %650, !prof !138

637:                                              ; preds = %635
  %638 = sub i64 0, %585
  %639 = getelementptr inbounds i8, ptr %465, i64 %638
  %640 = udiv i64 %585, %2
  %641 = ptrtoint ptr %639 to i64
  %642 = or i64 %641, %2
  %643 = and i64 %642, 7
  %644 = icmp eq i64 %643, 0
  %645 = select i1 %644, i32 %7, i32 2, !prof !38
  %646 = and i64 %642, 3
  %647 = icmp eq i64 %646, 0
  %648 = select i1 %647, i32 %9, i32 2, !prof !39
  %649 = icmp ult i64 %640, 7
  br i1 %649, label %22, label %101, !prof !139

650:                                              ; preds = %635, %532, %98, %466, %22
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
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @spec_qsort, ptr @spec_qsort, i64 292222}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 3142331}
!38 = !{!"branch_weights", i32 3078384, i32 324694}
!39 = !{!"branch_weights", i32 3242991, i32 160087}
!40 = !{!"branch_weights", i32 1996426, i32 703326}
!41 = !{!"branch_weights", i32 1366861, i32 1332891}
!42 = !{!"branch_weights", i32 636094, i32 1}
!43 = !{!"VP", i32 0, i64 1988584, i64 -8352263030577299711, i64 740913, i64 8060891128497495954, i64 671371, i64 4812125273914555213, i64 220730}
!44 = !{!"branch_weights", i32 1257818, i32 730766}
!45 = !{!"branch_weights", i32 1024603, i32 233215}
!46 = !{!47, !47, i64 0}
!47 = !{!"long", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!"branch_weights", i32 233215, i32 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !48, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = !{!48, !48, i64 0}
!58 = distinct !{!58, !54, !55}
!59 = !{!"branch_weights", i32 1352490, i32 636094}
!60 = distinct !{!60, !54, !55}
!61 = !{!"branch_weights", i32 0, i32 1366861}
!62 = distinct !{!62, !54, !55}
!63 = !{!"branch_weights", i32 37545, i32 665781}
!64 = !{!"branch_weights", i32 448586, i32 217195}
!65 = !{!"VP", i32 0, i64 448586, i64 632113874883725823, i64 400577, i64 -8352263030577299711, i64 25236, i64 4812125273914555213, i64 10484}
!66 = !{!"branch_weights", i32 25294, i32 423292}
!67 = !{!"branch_weights", i32 14631, i32 10663}
!68 = !{!"VP", i32 0, i64 10663, i64 -8352263030577299711, i64 4729, i64 4478025356786101081, i64 2458, i64 4812125273914555213, i64 2250}
!69 = !{!"branch_weights", i32 6196, i32 4467}
!70 = !{!"branch_weights", i32 7234, i32 416058}
!71 = !{!"VP", i32 0, i64 416058, i64 632113874883725823, i64 400577, i64 -8352263030577299711, i64 8412, i64 4812125273914555213, i64 3193}
!72 = !{!"branch_weights", i32 5248, i32 410810}
!73 = !{!"branch_weights", i32 429789, i32 18797}
!74 = !{!"branch_weights", i32 420460, i32 9329}
!75 = !{!"VP", i32 0, i64 9329, i64 -8352263030577299711, i64 4270, i64 4812125273914555213, i64 2081, i64 4478025356786101081, i64 2052}
!76 = !{!"branch_weights", i32 4373, i32 4956}
!77 = !{!"branch_weights", i32 9954, i32 8843}
!78 = !{!"VP", i32 0, i64 8843, i64 -8352263030577299711, i64 3820, i64 4812125273914555213, i64 2163, i64 4478025356786101081, i64 1936}
!79 = !{!"branch_weights", i32 5115, i32 3728}
!80 = !{!"branch_weights", i32 428182, i32 20404}
!81 = !{!"branch_weights", i32 417016, i32 11166}
!82 = !{!"VP", i32 0, i64 11166, i64 -8352263030577299711, i64 6381, i64 4478025356786101081, i64 2045, i64 4812125273914555213, i64 1812}
!83 = !{!"branch_weights", i32 5567, i32 5599}
!84 = !{!"branch_weights", i32 10909, i32 9495}
!85 = !{!"VP", i32 0, i64 9495, i64 -8352263030577299711, i64 4560, i64 4812125273914555213, i64 2163, i64 4478025356786101081, i64 1799}
!86 = !{!"branch_weights", i32 4412, i32 5083}
!87 = !{!"VP", i32 0, i64 665781, i64 632113874883725823, i64 400577, i64 -8352263030577299711, i64 158002, i64 4812125273914555213, i64 52626}
!88 = !{!"branch_weights", i32 552910, i32 112871}
!89 = !{!"branch_weights", i32 461407, i32 91503}
!90 = !{!"VP", i32 0, i64 91503, i64 -8352263030577299711, i64 53351, i64 4812125273914555213, i64 19862, i64 4478025356786101081, i64 11340}
!91 = !{!"branch_weights", i32 48898, i32 42605}
!92 = !{!"branch_weights", i32 30722, i32 82149}
!93 = !{!"VP", i32 0, i64 82149, i64 -8352263030577299711, i64 44460, i64 4812125273914555213, i64 18711, i64 4478025356786101081, i64 11869}
!94 = !{!"branch_weights", i32 45027, i32 37122}
!95 = !{!"branch_weights", i32 607392, i32 95934}
!96 = !{!"branch_weights", i32 95856, i32 78}
!97 = !{!"branch_weights", i32 78, i32 0}
!98 = !{!"branch_weights", i32 156, i32 78}
!99 = !{!"branch_weights", i32 1, i32 122155}
!100 = !{!"VP", i32 0, i64 18401884, i64 632113874883725823, i64 9213271, i64 -8352263030577299711, i64 4670659, i64 4812125273914555213, i64 2023924}
!101 = !{!"branch_weights", i32 14742918, i32 3658966}
!102 = !{!"branch_weights", i32 9, i32 14742909}
!103 = !{!"branch_weights", i32 0, i32 9}
!104 = !{!"branch_weights", i32 9, i32 0}
!105 = !{!"branch_weights", i32 122155, i32 18279729}
!106 = distinct !{!106, !54, !55}
!107 = !{!"branch_weights", i32 1, i32 703325}
!108 = !{!"VP", i32 0, i64 17891228, i64 632113874883725823, i64 9213271, i64 -8352263030577299711, i64 4554274, i64 4812125273914555213, i64 1811107}
!109 = !{!"branch_weights", i32 14813432, i32 3077796}
!110 = !{!"branch_weights", i32 1, i32 14813431}
!111 = !{!"branch_weights", i32 0, i32 1}
!112 = !{!"branch_weights", i32 1, i32 0}
!113 = !{!"branch_weights", i32 703325, i32 17187903}
!114 = distinct !{!114, !54, !55}
!115 = !{!"branch_weights", i32 1546272, i32 1531524}
!116 = !{!"branch_weights", i32 1531524, i32 0}
!117 = distinct !{!117, !55}
!118 = !{!"branch_weights", i32 437566, i32 265760}
!119 = !{!"branch_weights", i32 437565, i32 1}
!120 = !{!"branch_weights", i32 497450, i32 1}
!121 = !{!"VP", i32 0, i64 38759734, i64 632113874883725823, i64 35250776, i64 -8352263030577299711, i64 1830975, i64 4478025356786101081, i64 968149}
!122 = !{!"branch_weights", i32 20439226, i32 18320508}
!123 = !{!"branch_weights", i32 19428505, i32 1010721}
!124 = !{!"branch_weights", i32 1010331, i32 390}
!125 = !{!"branch_weights", i32 390, i32 0}
!126 = !{!"branch_weights", i32 780, i32 390}
!127 = !{!"branch_weights", i32 38262284, i32 497450}
!128 = distinct !{!128, !54, !55}
!129 = !{!"branch_weights", i32 18380394, i32 437565}
!130 = distinct !{!130, !54, !55}
!131 = !{!"branch_weights", i32 1, i32 265759}
!132 = !{!"branch_weights", i32 179894, i32 85865}
!133 = !{!"branch_weights", i32 0, i32 179894}
!134 = !{!"branch_weights", i32 85865, i32 0}
!135 = !{!"branch_weights", i32 0, i32 85865}
!136 = !{!"branch_weights", i32 265759, i32 1}
!137 = !{!"branch_weights", i32 251064, i32 14696}
!138 = !{!"branch_weights", i32 260747, i32 5013}
!139 = !{!"branch_weights", i32 703326, i32 0}
