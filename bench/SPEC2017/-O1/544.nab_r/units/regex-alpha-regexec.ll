; ModuleID = 'regex-alpha/regexec.c'
source_filename = "regex-alpha/regexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lmat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.smat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.re_guts = type { i32, ptr, i32, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, ptr, ptr, i32, i64, i32, i64, [1 x i8] }
%struct.regmatch_t = type { i64, i64 }
%struct.cset = type { ptr, i8, i8, i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @regexec(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !37 {
  %6 = alloca %struct.lmat, align 8
  %7 = alloca %struct.smat, align 8
  %8 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = load i32, ptr %0, align 8, !tbaa !45
  %11 = icmp eq i32 %10, 62053
  br i1 %11, label %12, label %764, !prof !46

12:                                               ; preds = %5
  %13 = load i32, ptr %9, align 8, !tbaa !47
  %14 = icmp eq i32 %13, 53829
  br i1 %14, label %15, label %764, !prof !46

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %764, !prof !46

20:                                               ; preds = %15
  %21 = and i32 %4, 7
  %22 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !50
  %24 = icmp ult i64 %23, 33
  %25 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 8
  %26 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 9
  %27 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 6
  %28 = and i32 %4, 4
  %29 = icmp eq i32 %28, 0
  br i1 %24, label %30, label %377, !prof !46

30:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #14
  %31 = load i64, ptr %25, align 8, !tbaa !51
  %32 = add nsw i64 %31, 1
  %33 = load i64, ptr %26, align 8, !tbaa !52
  %34 = load i32, ptr %27, align 8, !tbaa !53
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i64 %2, i64 0, !prof !54
  br i1 %29, label %43, label %38, !prof !46

38:                                               ; preds = %30
  %39 = load i64, ptr %3, align 8, !tbaa !55
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !57
  br label %45

43:                                               ; preds = %30
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi ptr [ %40, %38 ], [ %1, %43 ]
  %47 = phi i64 [ %42, %38 ], [ %44, %43 ]
  %48 = getelementptr inbounds i8, ptr %1, i64 %47
  %49 = icmp ult ptr %48, %46
  br i1 %49, label %375, label %50, !prof !54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !58
  %53 = icmp eq ptr %52, null
  br i1 %53, label %79, label %54, !prof !54

54:                                               ; preds = %50
  %55 = icmp ult ptr %46, %48
  br i1 %55, label %56, label %76, !prof !59

56:                                               ; preds = %54
  %57 = load i8, ptr %52, align 1, !tbaa !60
  br label %58

58:                                               ; preds = %56, %73
  %59 = phi ptr [ %46, %56 ], [ %74, %73 ]
  %60 = load i8, ptr %59, align 1, !tbaa !60
  %61 = icmp eq i8 %60, %57
  br i1 %61, label %62, label %73, !prof !61

62:                                               ; preds = %58
  %63 = ptrtoint ptr %48 to i64
  %64 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 16
  %65 = ptrtoint ptr %59 to i64
  %66 = sub i64 %63, %65
  %67 = load i32, ptr %64, align 8, !tbaa !62
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %73, label %70, !prof !63

70:                                               ; preds = %62
  %71 = tail call i32 @bcmp(ptr nonnull %59, ptr nonnull %52, i64 %68)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70, %62, %58
  %74 = getelementptr inbounds i8, ptr %59, i64 1
  %75 = icmp ult ptr %74, %48
  br i1 %75, label %58, label %76, !prof !64, !llvm.loop !65

76:                                               ; preds = %73, %70, %54
  %77 = phi ptr [ %46, %54 ], [ %74, %73 ], [ %59, %70 ]
  %78 = icmp eq ptr %77, %48
  br i1 %78, label %375, label %79, !prof !46

79:                                               ; preds = %50, %76
  store ptr %9, ptr %7, align 8, !tbaa !68
  %80 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 1
  store i32 %21, ptr %80, align 8, !tbaa !70
  %81 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 2
  store ptr null, ptr %81, align 8, !tbaa !71
  %82 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 7
  store ptr null, ptr %82, align 8, !tbaa !72
  %83 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 3
  store ptr %1, ptr %83, align 8, !tbaa !73
  %84 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 4
  store ptr %46, ptr %84, align 8, !tbaa !74
  %85 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 5
  store ptr %48, ptr %85, align 8, !tbaa !75
  %86 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 9
  %87 = trunc i64 %32 to i32
  %88 = shl nuw i32 1, %87
  %89 = trunc i64 %33 to i32
  %90 = shl nuw i32 1, %89
  %91 = getelementptr inbounds %struct.smat, ptr %7, i64 0, i32 6
  %92 = icmp eq i64 %37, 0
  %93 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  br label %94

94:                                               ; preds = %329, %79
  %95 = phi ptr [ %46, %79 ], [ %331, %329 ]
  %96 = load ptr, ptr %84, align 8, !tbaa !74
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds i8, ptr %95, i64 -1
  %100 = load i8, ptr %99, align 1, !tbaa !60
  %101 = sext i8 %100 to i32
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i32 [ %101, %98 ], [ 128, %94 ]
  %104 = load ptr, ptr %7, align 8, !tbaa !68
  %105 = call fastcc i32 @sstep(ptr noundef %104, i64 noundef %32, i64 noundef %33, i32 noundef %88, i32 noundef 132, i32 noundef %88)
  %106 = load ptr, ptr %85, align 8, !tbaa !75
  %107 = load i32, ptr %80, align 8
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  %110 = and i32 %107, 2
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %232, %102
  %113 = phi i32 [ %105, %102 ], [ %233, %232 ]
  %114 = phi ptr [ %95, %102 ], [ %234, %232 ]
  %115 = phi i32 [ %103, %102 ], [ %122, %232 ]
  %116 = phi ptr [ null, %102 ], [ %124, %232 ]
  %117 = icmp eq ptr %114, %106
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i8, ptr %114, align 1, !tbaa !60
  %120 = sext i8 %119 to i32
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi i32 [ %120, %118 ], [ 128, %112 ]
  %123 = icmp eq i32 %113, %105
  %124 = select i1 %123, ptr %114, ptr %116
  switch i32 %115, label %137 [
    i32 10, label %125
    i32 128, label %133
  ]

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.re_guts, ptr %104, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !53
  %128 = and i32 %127, 8
  %129 = icmp eq i32 %128, 0
  %130 = icmp ne i32 %115, 128
  %131 = select i1 %130, i1 true, i1 %109
  %132 = select i1 %129, i1 %131, i1 false
  br i1 %132, label %137, label %134

133:                                              ; preds = %121
  br i1 %109, label %137, label %134

134:                                              ; preds = %133, %125
  %135 = getelementptr inbounds %struct.re_guts, ptr %104, i64 0, i32 11
  %136 = load i32, ptr %135, align 4, !tbaa !76
  br label %137

137:                                              ; preds = %125, %133, %134, %121
  %138 = phi i32 [ 131, %134 ], [ 130, %121 ], [ 130, %133 ], [ 130, %125 ]
  %139 = phi i32 [ 129, %134 ], [ 0, %121 ], [ 0, %133 ], [ 0, %125 ]
  %140 = phi i32 [ %136, %134 ], [ 0, %121 ], [ 0, %133 ], [ 0, %125 ]
  switch i32 %122, label %154 [
    i32 10, label %141
    i32 128, label %149
  ]

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.re_guts, ptr %104, i64 0, i32 6
  %143 = load i32, ptr %142, align 8, !tbaa !53
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  %146 = icmp ne i32 %122, 128
  %147 = select i1 %146, i1 true, i1 %111
  %148 = select i1 %145, i1 %147, i1 false
  br i1 %148, label %154, label %150

149:                                              ; preds = %137
  br i1 %111, label %154, label %150

150:                                              ; preds = %149, %141
  %151 = getelementptr inbounds %struct.re_guts, ptr %104, i64 0, i32 12
  %152 = load i32, ptr %151, align 8, !tbaa !77
  %153 = add nsw i32 %152, %140
  br label %154

154:                                              ; preds = %141, %149, %150, %137
  %155 = phi i32 [ %138, %150 ], [ %139, %137 ], [ %139, %149 ], [ %139, %141 ]
  %156 = phi i32 [ %153, %150 ], [ %140, %137 ], [ %140, %149 ], [ %140, %141 ]
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %154, %158
  %159 = phi i32 [ %161, %158 ], [ %113, %154 ]
  %160 = phi i32 [ %162, %158 ], [ %156, %154 ]
  %161 = call fastcc i32 @sstep(ptr noundef %104, i64 noundef %32, i64 noundef %33, i32 noundef %159, i32 noundef %155, i32 noundef %159)
  %162 = add nsw i32 %160, -1
  %163 = icmp sgt i32 %160, 1
  br i1 %163, label %158, label %164

164:                                              ; preds = %158, %154
  %165 = phi i32 [ %113, %154 ], [ %161, %158 ]
  %166 = icmp eq i32 %155, 129
  br i1 %166, label %181, label %167

167:                                              ; preds = %164
  %168 = icmp eq i32 %115, 128
  br i1 %168, label %194, label %169

169:                                              ; preds = %167
  %170 = tail call ptr @__ctype_b_loc() #16
  %171 = load ptr, ptr %170, align 8, !tbaa !78
  %172 = sext i32 %115 to i64
  %173 = getelementptr inbounds i16, ptr %171, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !79
  %175 = and i16 %174, 8
  %176 = icmp eq i16 %175, 0
  %177 = icmp ne i32 %115, 95
  %178 = select i1 %176, i1 %177, i1 false
  %179 = icmp ne i32 %122, 128
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %183, label %194

181:                                              ; preds = %164
  %182 = icmp eq i32 %122, 128
  br i1 %182, label %194, label %183

183:                                              ; preds = %181, %169
  %184 = tail call ptr @__ctype_b_loc() #16
  %185 = load ptr, ptr %184, align 8, !tbaa !78
  %186 = sext i32 %122 to i64
  %187 = getelementptr inbounds i16, ptr %185, i64 %186
  %188 = load i16, ptr %187, align 2, !tbaa !79
  %189 = and i16 %188, 8
  %190 = icmp ne i16 %189, 0
  %191 = icmp eq i32 %122, 95
  %192 = select i1 %190, i1 true, i1 %191
  %193 = select i1 %192, i32 133, i32 %155
  br label %194

194:                                              ; preds = %169, %183, %181, %167
  %195 = phi i32 [ 129, %181 ], [ %155, %167 ], [ %193, %183 ], [ %155, %169 ]
  %196 = icmp eq i32 %115, 128
  br i1 %196, label %220, label %197

197:                                              ; preds = %194
  %198 = tail call ptr @__ctype_b_loc() #16
  %199 = load ptr, ptr %198, align 8, !tbaa !78
  %200 = sext i32 %115 to i64
  %201 = getelementptr inbounds i16, ptr %199, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !79
  %203 = and i16 %202, 8
  %204 = icmp ne i16 %203, 0
  %205 = icmp eq i32 %115, 95
  %206 = select i1 %204, i1 true, i1 %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %197
  %208 = icmp eq i32 %195, 130
  br i1 %208, label %219, label %209

209:                                              ; preds = %207
  %210 = icmp eq i32 %122, 128
  br i1 %210, label %220, label %211

211:                                              ; preds = %209
  %212 = sext i32 %122 to i64
  %213 = getelementptr inbounds i16, ptr %199, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !79
  %215 = and i16 %214, 8
  %216 = icmp ne i16 %215, 0
  %217 = icmp eq i32 %122, 95
  %218 = select i1 %216, i1 true, i1 %217
  br i1 %218, label %220, label %219

219:                                              ; preds = %211, %207
  br label %220

220:                                              ; preds = %219, %211, %209, %197, %194
  %221 = phi i32 [ 134, %219 ], [ %195, %211 ], [ %195, %209 ], [ %195, %197 ], [ %195, %194 ]
  %222 = add i32 %221, -133
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = call fastcc i32 @sstep(ptr noundef %104, i64 noundef %32, i64 noundef %33, i32 noundef %165, i32 noundef %221, i32 noundef %165)
  br label %226

226:                                              ; preds = %224, %220
  %227 = phi i32 [ %225, %224 ], [ %165, %220 ]
  %228 = and i32 %227, %90
  %229 = icmp ne i32 %228, 0
  %230 = icmp eq ptr %114, %48
  %231 = or i1 %230, %229
  br i1 %231, label %235, label %232

232:                                              ; preds = %226
  %233 = call fastcc i32 @sstep(ptr noundef %104, i64 noundef %32, i64 noundef %33, i32 noundef %227, i32 noundef %122, i32 noundef %105)
  %234 = getelementptr inbounds i8, ptr %114, i64 1
  br label %112, !llvm.loop !81

235:                                              ; preds = %226
  store ptr %124, ptr %91, align 8, !tbaa !82
  br i1 %229, label %236, label %375

236:                                              ; preds = %235
  br i1 %92, label %237, label %240

237:                                              ; preds = %236
  %238 = load i32, ptr %93, align 8, !tbaa !83
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %332, label %240

240:                                              ; preds = %237, %236
  %241 = load ptr, ptr %91, align 8, !tbaa !82
  %242 = call fastcc ptr @sslow(ptr noundef nonnull %7, ptr noundef %241, ptr noundef %48, i64 noundef %32, i64 noundef %33)
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %249

244:                                              ; preds = %240, %244
  %245 = phi ptr [ %246, %244 ], [ %241, %240 ]
  %246 = getelementptr inbounds i8, ptr %245, i64 1
  store ptr %246, ptr %91, align 8, !tbaa !82
  %247 = call fastcc ptr @sslow(ptr noundef nonnull %7, ptr noundef nonnull %246, ptr noundef %48, i64 noundef %32, i64 noundef %33)
  %248 = icmp eq ptr %247, null
  br i1 %248, label %244, label %249, !llvm.loop !84

249:                                              ; preds = %244, %240
  %250 = phi ptr [ %241, %240 ], [ %246, %244 ]
  %251 = phi ptr [ %242, %240 ], [ %247, %244 ]
  %252 = icmp eq i64 %37, 1
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 18
  %255 = load i32, ptr %254, align 8, !tbaa !83
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %335, label %257

257:                                              ; preds = %253, %249
  %258 = load ptr, ptr %81, align 8, !tbaa !71
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.re_guts, ptr %104, i64 0, i32 17
  %262 = load i64, ptr %261, align 8, !tbaa !85
  %263 = shl i64 %262, 4
  %264 = add i64 %263, 16
  %265 = call noalias ptr @malloc(i64 noundef %264) #17
  store ptr %265, ptr %81, align 8, !tbaa !71
  br label %266

266:                                              ; preds = %260, %257
  %267 = load ptr, ptr %81, align 8, !tbaa !71
  %268 = icmp eq ptr %267, null
  br i1 %268, label %375, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.re_guts, ptr %104, i64 0, i32 17
  %271 = load i64, ptr %270, align 8, !tbaa !85
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %280, label %273

273:                                              ; preds = %269, %273
  %274 = phi i64 [ %278, %273 ], [ 1, %269 ]
  %275 = phi i32 [ %277, %273 ], [ 1, %269 ]
  %276 = getelementptr inbounds %struct.regmatch_t, ptr %267, i64 %274
  %277 = add i32 %275, 1
  %278 = zext i32 %277 to i64
  %279 = icmp ult i64 %271, %278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %276, i8 -1, i64 16, i1 false)
  br i1 %279, label %280, label %273, !llvm.loop !86

280:                                              ; preds = %273, %269
  %281 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 18
  %282 = load i32, ptr %281, align 8, !tbaa !83
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i32, ptr %80, align 8, !tbaa !70
  %286 = and i32 %285, 1024
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = call fastcc ptr @sdissect(ptr noundef nonnull %7, ptr noundef %250, ptr noundef nonnull %251, i64 noundef %32, i64 noundef %33)
  br label %307

290:                                              ; preds = %284, %280
  %291 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 19
  %292 = load i64, ptr %291, align 8, !tbaa !87
  %293 = icmp sgt i64 %292, 0
  %294 = load ptr, ptr %82, align 8
  %295 = icmp eq ptr %294, null
  %296 = select i1 %293, i1 %295, i1 false
  br i1 %296, label %297, label %301

297:                                              ; preds = %290
  %298 = shl i64 %292, 3
  %299 = add i64 %298, 8
  %300 = call noalias ptr @malloc(i64 noundef %299) #17
  store ptr %300, ptr %82, align 8, !tbaa !72
  br label %301

301:                                              ; preds = %297, %290
  %302 = load ptr, ptr %82, align 8
  %303 = icmp eq ptr %302, null
  %304 = select i1 %293, i1 %303, i1 false
  br i1 %304, label %372, label %305

305:                                              ; preds = %301
  %306 = call fastcc ptr @sbackref(ptr noundef nonnull %7, ptr noundef %250, ptr noundef nonnull %251, i64 noundef %32, i64 noundef %33, i64 noundef 0)
  br label %307

307:                                              ; preds = %305, %288
  %308 = phi ptr [ %306, %305 ], [ %289, %288 ]
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %335

310:                                              ; preds = %307
  %311 = load ptr, ptr %91, align 8, !tbaa !82
  %312 = icmp ugt ptr %251, %311
  br i1 %312, label %313, label %326

313:                                              ; preds = %310, %320
  %314 = phi ptr [ %323, %320 ], [ %311, %310 ]
  %315 = phi ptr [ %318, %320 ], [ %251, %310 ]
  %316 = phi i1 [ %322, %320 ], [ true, %310 ]
  %317 = getelementptr inbounds i8, ptr %315, i64 -1
  %318 = call fastcc ptr @sslow(ptr noundef nonnull %7, ptr noundef %314, ptr noundef nonnull %317, i64 noundef %32, i64 noundef %33)
  %319 = icmp eq ptr %318, null
  br i1 %319, label %326, label %320

320:                                              ; preds = %313
  %321 = call fastcc ptr @sbackref(ptr noundef nonnull %7, ptr noundef %314, ptr noundef nonnull %318, i64 noundef %32, i64 noundef %33, i64 noundef 0)
  %322 = icmp eq ptr %321, null
  %323 = load ptr, ptr %91, align 8
  %324 = icmp ugt ptr %318, %323
  %325 = select i1 %322, i1 %324, i1 false
  br i1 %325, label %313, label %326, !llvm.loop !88

326:                                              ; preds = %320, %313, %310
  %327 = phi i1 [ true, %310 ], [ %322, %320 ], [ %316, %313 ]
  %328 = phi ptr [ %251, %310 ], [ %318, %320 ], [ null, %313 ]
  br i1 %327, label %329, label %335

329:                                              ; preds = %326
  %330 = load ptr, ptr %91, align 8, !tbaa !82
  %331 = getelementptr inbounds i8, ptr %330, i64 1
  br label %94, !llvm.loop !89

332:                                              ; preds = %237
  %333 = getelementptr inbounds i8, ptr %114, i64 1
  %334 = select i1 %229, ptr %333, ptr null
  br label %335

335:                                              ; preds = %307, %253, %326, %332
  %336 = phi ptr [ %334, %332 ], [ %251, %307 ], [ %251, %253 ], [ %328, %326 ]
  br i1 %92, label %346, label %337

337:                                              ; preds = %335
  %338 = load ptr, ptr %91, align 8, !tbaa !82
  %339 = load ptr, ptr %83, align 8, !tbaa !73
  %340 = ptrtoint ptr %338 to i64
  %341 = ptrtoint ptr %339 to i64
  %342 = sub i64 %340, %341
  store i64 %342, ptr %3, align 8, !tbaa !55
  %343 = ptrtoint ptr %336 to i64
  %344 = sub i64 %343, %341
  %345 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  store i64 %344, ptr %345, align 8, !tbaa !57
  br label %346

346:                                              ; preds = %337, %335
  %347 = icmp ugt i64 %37, 1
  br i1 %347, label %348, label %365

348:                                              ; preds = %346
  %349 = load ptr, ptr %7, align 8, !tbaa !68
  %350 = getelementptr inbounds %struct.re_guts, ptr %349, i64 0, i32 17
  %351 = load ptr, ptr %81, align 8
  br label %352

352:                                              ; preds = %348, %361
  %353 = phi i64 [ 1, %348 ], [ %363, %361 ]
  %354 = phi i32 [ 1, %348 ], [ %362, %361 ]
  %355 = load i64, ptr %350, align 8, !tbaa !85
  %356 = icmp ult i64 %355, %353
  %357 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %353
  br i1 %356, label %360, label %358

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.regmatch_t, ptr %351, i64 %353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %357, ptr noundef nonnull align 8 dereferenceable(16) %359, i64 16, i1 false), !tbaa.struct !90
  br label %361

360:                                              ; preds = %352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %357, i8 -1, i64 16, i1 false)
  br label %361

361:                                              ; preds = %360, %358
  %362 = add i32 %354, 1
  %363 = zext i32 %362 to i64
  %364 = icmp ugt i64 %37, %363
  br i1 %364, label %352, label %365, !llvm.loop !92

365:                                              ; preds = %361, %346
  %366 = load ptr, ptr %81, align 8, !tbaa !71
  %367 = icmp eq ptr %366, null
  br i1 %367, label %369, label %368

368:                                              ; preds = %365
  call void @free(ptr noundef %366) #14
  br label %369

369:                                              ; preds = %368, %365
  %370 = load ptr, ptr %82, align 8, !tbaa !72
  %371 = icmp eq ptr %370, null
  br i1 %371, label %375, label %372

372:                                              ; preds = %301, %369
  %373 = phi ptr [ %370, %369 ], [ %267, %301 ]
  %374 = phi i32 [ 0, %369 ], [ 12, %301 ]
  call void @free(ptr noundef %373) #14
  br label %375

375:                                              ; preds = %235, %266, %372, %45, %76, %369
  %376 = phi i32 [ 16, %45 ], [ 1, %76 ], [ 0, %369 ], [ %374, %372 ], [ 1, %235 ], [ 12, %266 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #14
  br label %764

377:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #14
  %378 = load i64, ptr %25, align 8, !tbaa !51
  %379 = add nsw i64 %378, 1
  %380 = load i64, ptr %26, align 8, !tbaa !52
  %381 = load i32, ptr %27, align 8, !tbaa !53
  %382 = and i32 %381, 4
  %383 = icmp eq i32 %382, 0
  %384 = select i1 %383, i64 %2, i64 0
  br i1 %29, label %390, label %385

385:                                              ; preds = %377
  %386 = load i64, ptr %3, align 8, !tbaa !55
  %387 = getelementptr inbounds i8, ptr %1, i64 %386
  %388 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  %389 = load i64, ptr %388, align 8, !tbaa !57
  br label %392

390:                                              ; preds = %377
  %391 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  br label %392

392:                                              ; preds = %390, %385
  %393 = phi ptr [ %387, %385 ], [ %1, %390 ]
  %394 = phi i64 [ %389, %385 ], [ %391, %390 ]
  %395 = getelementptr inbounds i8, ptr %1, i64 %394
  %396 = icmp ult ptr %395, %393
  br i1 %396, label %762, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 15
  %399 = load ptr, ptr %398, align 8, !tbaa !58
  %400 = icmp eq ptr %399, null
  br i1 %400, label %426, label %401

401:                                              ; preds = %397
  %402 = icmp ult ptr %393, %395
  br i1 %402, label %403, label %423

403:                                              ; preds = %401
  %404 = load i8, ptr %399, align 1, !tbaa !60
  %405 = ptrtoint ptr %395 to i64
  %406 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 16
  br label %407

407:                                              ; preds = %403, %420
  %408 = phi ptr [ %393, %403 ], [ %421, %420 ]
  %409 = load i8, ptr %408, align 1, !tbaa !60
  %410 = icmp eq i8 %409, %404
  br i1 %410, label %411, label %420

411:                                              ; preds = %407
  %412 = ptrtoint ptr %408 to i64
  %413 = sub i64 %405, %412
  %414 = load i32, ptr %406, align 8, !tbaa !62
  %415 = sext i32 %414 to i64
  %416 = icmp slt i64 %413, %415
  br i1 %416, label %420, label %417

417:                                              ; preds = %411
  %418 = tail call i32 @bcmp(ptr nonnull %408, ptr nonnull %399, i64 %415)
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %423, label %420

420:                                              ; preds = %417, %411, %407
  %421 = getelementptr inbounds i8, ptr %408, i64 1
  %422 = icmp ult ptr %421, %395
  br i1 %422, label %407, label %423, !llvm.loop !93

423:                                              ; preds = %420, %417, %401
  %424 = phi ptr [ %393, %401 ], [ %421, %420 ], [ %408, %417 ]
  %425 = icmp eq ptr %424, %395
  br i1 %425, label %762, label %426

426:                                              ; preds = %397, %423
  store ptr %9, ptr %6, align 8, !tbaa !94
  %427 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 1
  store i32 %21, ptr %427, align 8, !tbaa !96
  %428 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 2
  store ptr null, ptr %428, align 8, !tbaa !97
  %429 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 7
  store ptr null, ptr %429, align 8, !tbaa !98
  %430 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 3
  store ptr %1, ptr %430, align 8, !tbaa !99
  %431 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 4
  store ptr %393, ptr %431, align 8, !tbaa !100
  %432 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 5
  store ptr %395, ptr %432, align 8, !tbaa !101
  %433 = load i64, ptr %22, align 8, !tbaa !50
  %434 = shl nsw i64 %433, 2
  %435 = tail call noalias ptr @malloc(i64 noundef %434) #17
  %436 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 9
  store ptr %435, ptr %436, align 8, !tbaa !102
  %437 = icmp eq ptr %435, null
  br i1 %437, label %762, label %438

438:                                              ; preds = %426
  %439 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 8
  store i32 1, ptr %439, align 8, !tbaa !103
  %440 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 10
  store ptr %435, ptr %440, align 8, !tbaa !104
  store i32 2, ptr %439, align 8, !tbaa !103
  %441 = getelementptr inbounds i8, ptr %435, i64 %433
  %442 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 11
  store ptr %441, ptr %442, align 8, !tbaa !105
  store i32 3, ptr %439, align 8, !tbaa !103
  %443 = shl nsw i64 %433, 1
  %444 = getelementptr inbounds i8, ptr %435, i64 %443
  %445 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 12
  store ptr %444, ptr %445, align 8, !tbaa !106
  store i32 4, ptr %439, align 8, !tbaa !103
  %446 = mul nsw i64 %433, 3
  %447 = getelementptr inbounds i8, ptr %435, i64 %446
  %448 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 13
  store ptr %447, ptr %448, align 8, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %447, i8 0, i64 %433, i1 false)
  %449 = getelementptr inbounds %struct.lmat, ptr %6, i64 0, i32 6
  %450 = icmp eq i64 %384, 0
  %451 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 18
  br label %452

452:                                              ; preds = %713, %438
  %453 = phi ptr [ %393, %438 ], [ %715, %713 ]
  %454 = load ptr, ptr %440, align 8, !tbaa !104
  %455 = load ptr, ptr %442, align 8, !tbaa !105
  %456 = load ptr, ptr %445, align 8, !tbaa !106
  %457 = load ptr, ptr %431, align 8, !tbaa !100
  %458 = icmp eq ptr %457, %453
  br i1 %458, label %463, label %459

459:                                              ; preds = %452
  %460 = getelementptr inbounds i8, ptr %453, i64 -1
  %461 = load i8, ptr %460, align 1, !tbaa !60
  %462 = sext i8 %461 to i32
  br label %463

463:                                              ; preds = %459, %452
  %464 = phi i32 [ %462, %459 ], [ 128, %452 ]
  %465 = load ptr, ptr %6, align 8, !tbaa !94
  %466 = getelementptr inbounds %struct.re_guts, ptr %465, i64 0, i32 7
  %467 = load i64, ptr %466, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr align 1 %454, i8 0, i64 %467, i1 false)
  %468 = getelementptr inbounds i8, ptr %454, i64 %379
  store i8 1, ptr %468, align 1, !tbaa !60
  %469 = load ptr, ptr %6, align 8, !tbaa !94
  %470 = call fastcc ptr @lstep(ptr noundef %469, i64 noundef %379, i64 noundef %380, ptr noundef %454, i32 noundef 132, ptr noundef %454)
  %471 = load ptr, ptr %6, align 8, !tbaa !94
  %472 = getelementptr inbounds %struct.re_guts, ptr %471, i64 0, i32 7
  %473 = load i64, ptr %472, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %455, ptr align 1 %454, i64 %473, i1 false)
  %474 = getelementptr inbounds i8, ptr %454, i64 %380
  br label %475

475:                                              ; preds = %602, %463
  %476 = phi ptr [ %453, %463 ], [ %611, %602 ]
  %477 = phi i32 [ %464, %463 ], [ %485, %602 ]
  %478 = phi ptr [ null, %463 ], [ %491, %602 ]
  %479 = load ptr, ptr %432, align 8, !tbaa !101
  %480 = icmp eq ptr %476, %479
  br i1 %480, label %484, label %481

481:                                              ; preds = %475
  %482 = load i8, ptr %476, align 1, !tbaa !60
  %483 = sext i8 %482 to i32
  br label %484

484:                                              ; preds = %481, %475
  %485 = phi i32 [ %483, %481 ], [ 128, %475 ]
  %486 = load ptr, ptr %6, align 8, !tbaa !94
  %487 = getelementptr inbounds %struct.re_guts, ptr %486, i64 0, i32 7
  %488 = load i64, ptr %487, align 8, !tbaa !50
  %489 = call i32 @bcmp(ptr %454, ptr %455, i64 %488)
  %490 = icmp eq i32 %489, 0
  %491 = select i1 %490, ptr %476, ptr %478
  switch i32 %477, label %506 [
    i32 10, label %492
    i32 128, label %499
  ]

492:                                              ; preds = %484
  %493 = getelementptr inbounds %struct.re_guts, ptr %486, i64 0, i32 6
  %494 = load i32, ptr %493, align 8, !tbaa !53
  %495 = and i32 %494, 8
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %492
  %498 = icmp eq i32 %477, 128
  br i1 %498, label %499, label %506

499:                                              ; preds = %497, %484
  %500 = load i32, ptr %427, align 8, !tbaa !96
  %501 = and i32 %500, 1
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %499, %492
  %504 = getelementptr inbounds %struct.re_guts, ptr %486, i64 0, i32 11
  %505 = load i32, ptr %504, align 4, !tbaa !76
  br label %506

506:                                              ; preds = %499, %497, %503, %484
  %507 = phi i32 [ 131, %503 ], [ 130, %484 ], [ 130, %497 ], [ 130, %499 ]
  %508 = phi i32 [ 129, %503 ], [ 0, %484 ], [ 0, %497 ], [ 0, %499 ]
  %509 = phi i32 [ %505, %503 ], [ 0, %484 ], [ 0, %497 ], [ 0, %499 ]
  switch i32 %485, label %525 [
    i32 10, label %510
    i32 128, label %517
  ]

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.re_guts, ptr %486, i64 0, i32 6
  %512 = load i32, ptr %511, align 8, !tbaa !53
  %513 = and i32 %512, 8
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %521

515:                                              ; preds = %510
  %516 = icmp eq i32 %485, 128
  br i1 %516, label %517, label %525

517:                                              ; preds = %515, %506
  %518 = load i32, ptr %427, align 8, !tbaa !96
  %519 = and i32 %518, 2
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %525

521:                                              ; preds = %517, %510
  %522 = getelementptr inbounds %struct.re_guts, ptr %486, i64 0, i32 12
  %523 = load i32, ptr %522, align 8, !tbaa !77
  %524 = add nsw i32 %523, %509
  br label %525

525:                                              ; preds = %517, %515, %521, %506
  %526 = phi i32 [ %507, %521 ], [ %508, %506 ], [ %508, %515 ], [ %508, %517 ]
  %527 = phi i32 [ %524, %521 ], [ %509, %506 ], [ %509, %515 ], [ %509, %517 ]
  %528 = icmp sgt i32 %527, 0
  br i1 %528, label %529, label %535

529:                                              ; preds = %525, %529
  %530 = phi i32 [ %533, %529 ], [ %527, %525 ]
  %531 = load ptr, ptr %6, align 8, !tbaa !94
  %532 = call fastcc ptr @lstep(ptr noundef %531, i64 noundef %379, i64 noundef %380, ptr noundef %454, i32 noundef %526, ptr noundef %454)
  %533 = add nsw i32 %530, -1
  %534 = icmp sgt i32 %530, 1
  br i1 %534, label %529, label %535

535:                                              ; preds = %529, %525
  %536 = icmp eq i32 %526, 129
  br i1 %536, label %551, label %537

537:                                              ; preds = %535
  %538 = icmp eq i32 %477, 128
  br i1 %538, label %564, label %539

539:                                              ; preds = %537
  %540 = tail call ptr @__ctype_b_loc() #16
  %541 = load ptr, ptr %540, align 8, !tbaa !78
  %542 = sext i32 %477 to i64
  %543 = getelementptr inbounds i16, ptr %541, i64 %542
  %544 = load i16, ptr %543, align 2, !tbaa !79
  %545 = and i16 %544, 8
  %546 = icmp eq i16 %545, 0
  %547 = icmp ne i32 %477, 95
  %548 = select i1 %546, i1 %547, i1 false
  %549 = icmp ne i32 %485, 128
  %550 = select i1 %548, i1 %549, i1 false
  br i1 %550, label %553, label %564

551:                                              ; preds = %535
  %552 = icmp eq i32 %485, 128
  br i1 %552, label %564, label %553

553:                                              ; preds = %551, %539
  %554 = tail call ptr @__ctype_b_loc() #16
  %555 = load ptr, ptr %554, align 8, !tbaa !78
  %556 = sext i32 %485 to i64
  %557 = getelementptr inbounds i16, ptr %555, i64 %556
  %558 = load i16, ptr %557, align 2, !tbaa !79
  %559 = and i16 %558, 8
  %560 = icmp ne i16 %559, 0
  %561 = icmp eq i32 %485, 95
  %562 = select i1 %560, i1 true, i1 %561
  %563 = select i1 %562, i32 133, i32 %526
  br label %564

564:                                              ; preds = %539, %553, %551, %537
  %565 = phi i32 [ 129, %551 ], [ %526, %537 ], [ %563, %553 ], [ %526, %539 ]
  %566 = icmp eq i32 %477, 128
  br i1 %566, label %590, label %567

567:                                              ; preds = %564
  %568 = tail call ptr @__ctype_b_loc() #16
  %569 = load ptr, ptr %568, align 8, !tbaa !78
  %570 = sext i32 %477 to i64
  %571 = getelementptr inbounds i16, ptr %569, i64 %570
  %572 = load i16, ptr %571, align 2, !tbaa !79
  %573 = and i16 %572, 8
  %574 = icmp ne i16 %573, 0
  %575 = icmp eq i32 %477, 95
  %576 = select i1 %574, i1 true, i1 %575
  br i1 %576, label %577, label %590

577:                                              ; preds = %567
  %578 = icmp eq i32 %565, 130
  br i1 %578, label %589, label %579

579:                                              ; preds = %577
  %580 = icmp eq i32 %485, 128
  br i1 %580, label %590, label %581

581:                                              ; preds = %579
  %582 = sext i32 %485 to i64
  %583 = getelementptr inbounds i16, ptr %569, i64 %582
  %584 = load i16, ptr %583, align 2, !tbaa !79
  %585 = and i16 %584, 8
  %586 = icmp ne i16 %585, 0
  %587 = icmp eq i32 %485, 95
  %588 = select i1 %586, i1 true, i1 %587
  br i1 %588, label %590, label %589

589:                                              ; preds = %581, %577
  br label %590

590:                                              ; preds = %589, %581, %579, %567, %564
  %591 = phi i32 [ 134, %589 ], [ %565, %581 ], [ %565, %579 ], [ %565, %567 ], [ %565, %564 ]
  %592 = add i32 %591, -133
  %593 = icmp ult i32 %592, 2
  br i1 %593, label %594, label %597

594:                                              ; preds = %590
  %595 = load ptr, ptr %6, align 8, !tbaa !94
  %596 = call fastcc ptr @lstep(ptr noundef %595, i64 noundef %379, i64 noundef %380, ptr noundef %454, i32 noundef %591, ptr noundef %454)
  br label %597

597:                                              ; preds = %594, %590
  %598 = load i8, ptr %474, align 1, !tbaa !60
  %599 = icmp ne i8 %598, 0
  %600 = icmp eq ptr %476, %395
  %601 = or i1 %600, %599
  br i1 %601, label %612, label %602

602:                                              ; preds = %597
  %603 = load ptr, ptr %6, align 8, !tbaa !94
  %604 = getelementptr inbounds %struct.re_guts, ptr %603, i64 0, i32 7
  %605 = load i64, ptr %604, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %456, ptr align 1 %454, i64 %605, i1 false)
  %606 = load ptr, ptr %6, align 8, !tbaa !94
  %607 = getelementptr inbounds %struct.re_guts, ptr %606, i64 0, i32 7
  %608 = load i64, ptr %607, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %454, ptr align 1 %455, i64 %608, i1 false)
  %609 = load ptr, ptr %6, align 8, !tbaa !94
  %610 = call fastcc ptr @lstep(ptr noundef %609, i64 noundef %379, i64 noundef %380, ptr noundef %456, i32 noundef %485, ptr noundef %454)
  %611 = getelementptr inbounds i8, ptr %476, i64 1
  br label %475, !llvm.loop !108

612:                                              ; preds = %597
  %613 = getelementptr inbounds i8, ptr %454, i64 %380
  store ptr %491, ptr %449, align 8, !tbaa !109
  %614 = load i8, ptr %613, align 1, !tbaa !60
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %759, label %616

616:                                              ; preds = %612
  br i1 %450, label %617, label %620

617:                                              ; preds = %616
  %618 = load i32, ptr %451, align 8, !tbaa !83
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %716, label %620

620:                                              ; preds = %617, %616
  %621 = load ptr, ptr %449, align 8, !tbaa !109
  %622 = call fastcc ptr @lslow(ptr noundef nonnull %6, ptr noundef %621, ptr noundef %395, i64 noundef %379, i64 noundef %380)
  %623 = icmp eq ptr %622, null
  br i1 %623, label %624, label %629

624:                                              ; preds = %620, %624
  %625 = load ptr, ptr %449, align 8, !tbaa !109
  %626 = getelementptr inbounds i8, ptr %625, i64 1
  store ptr %626, ptr %449, align 8, !tbaa !109
  %627 = call fastcc ptr @lslow(ptr noundef nonnull %6, ptr noundef nonnull %626, ptr noundef %395, i64 noundef %379, i64 noundef %380)
  %628 = icmp eq ptr %627, null
  br i1 %628, label %624, label %629, !llvm.loop !110

629:                                              ; preds = %624, %620
  %630 = phi ptr [ %622, %620 ], [ %627, %624 ]
  %631 = icmp eq i64 %384, 1
  br i1 %631, label %632, label %636

632:                                              ; preds = %629
  %633 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 18
  %634 = load i32, ptr %633, align 8, !tbaa !83
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %719, label %636

636:                                              ; preds = %632, %629
  %637 = load ptr, ptr %428, align 8, !tbaa !97
  %638 = icmp eq ptr %637, null
  br i1 %638, label %639, label %646

639:                                              ; preds = %636
  %640 = load ptr, ptr %6, align 8, !tbaa !94
  %641 = getelementptr inbounds %struct.re_guts, ptr %640, i64 0, i32 17
  %642 = load i64, ptr %641, align 8, !tbaa !85
  %643 = shl i64 %642, 4
  %644 = add i64 %643, 16
  %645 = call noalias ptr @malloc(i64 noundef %644) #17
  store ptr %645, ptr %428, align 8, !tbaa !97
  br label %646

646:                                              ; preds = %639, %636
  %647 = load ptr, ptr %428, align 8, !tbaa !97
  %648 = icmp eq ptr %647, null
  br i1 %648, label %759, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr %6, align 8, !tbaa !94
  %651 = getelementptr inbounds %struct.re_guts, ptr %650, i64 0, i32 17
  %652 = load i64, ptr %651, align 8, !tbaa !85
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %661, label %654

654:                                              ; preds = %649, %654
  %655 = phi i64 [ %659, %654 ], [ 1, %649 ]
  %656 = phi i32 [ %658, %654 ], [ 1, %649 ]
  %657 = getelementptr inbounds %struct.regmatch_t, ptr %647, i64 %655
  %658 = add i32 %656, 1
  %659 = zext i32 %658 to i64
  %660 = icmp ult i64 %652, %659
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %657, i8 -1, i64 16, i1 false)
  br i1 %660, label %661, label %654, !llvm.loop !111

661:                                              ; preds = %654, %649
  %662 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 18
  %663 = load i32, ptr %662, align 8, !tbaa !83
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %672

665:                                              ; preds = %661
  %666 = load i32, ptr %427, align 8, !tbaa !96
  %667 = and i32 %666, 1024
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %665
  %670 = load ptr, ptr %449, align 8, !tbaa !109
  %671 = call fastcc ptr @ldissect(ptr noundef nonnull %6, ptr noundef %670, ptr noundef nonnull %630, i64 noundef %379, i64 noundef %380)
  br label %690

672:                                              ; preds = %665, %661
  %673 = getelementptr inbounds %struct.re_guts, ptr %9, i64 0, i32 19
  %674 = load i64, ptr %673, align 8, !tbaa !87
  %675 = icmp sgt i64 %674, 0
  %676 = load ptr, ptr %429, align 8
  %677 = icmp eq ptr %676, null
  %678 = select i1 %675, i1 %677, i1 false
  br i1 %678, label %679, label %683

679:                                              ; preds = %672
  %680 = shl i64 %674, 3
  %681 = add i64 %680, 8
  %682 = call noalias ptr @malloc(i64 noundef %681) #17
  store ptr %682, ptr %429, align 8, !tbaa !98
  br label %683

683:                                              ; preds = %679, %672
  %684 = load ptr, ptr %429, align 8
  %685 = icmp eq ptr %684, null
  %686 = select i1 %675, i1 %685, i1 false
  br i1 %686, label %756, label %687

687:                                              ; preds = %683
  %688 = load ptr, ptr %449, align 8, !tbaa !109
  %689 = call fastcc ptr @lbackref(ptr noundef nonnull %6, ptr noundef %688, ptr noundef nonnull %630, i64 noundef %379, i64 noundef %380, i64 noundef 0)
  br label %690

690:                                              ; preds = %687, %669
  %691 = phi ptr [ %689, %687 ], [ %671, %669 ]
  %692 = icmp eq ptr %691, null
  br i1 %692, label %693, label %719

693:                                              ; preds = %690
  %694 = load ptr, ptr %449, align 8, !tbaa !109
  %695 = icmp ugt ptr %630, %694
  br i1 %695, label %696, label %710

696:                                              ; preds = %693, %703
  %697 = phi ptr [ %707, %703 ], [ %694, %693 ]
  %698 = phi ptr [ %701, %703 ], [ %630, %693 ]
  %699 = phi i1 [ %706, %703 ], [ true, %693 ]
  %700 = getelementptr inbounds i8, ptr %698, i64 -1
  %701 = call fastcc ptr @lslow(ptr noundef nonnull %6, ptr noundef %697, ptr noundef nonnull %700, i64 noundef %379, i64 noundef %380)
  %702 = icmp eq ptr %701, null
  br i1 %702, label %710, label %703

703:                                              ; preds = %696
  %704 = load ptr, ptr %449, align 8, !tbaa !109
  %705 = call fastcc ptr @lbackref(ptr noundef nonnull %6, ptr noundef %704, ptr noundef nonnull %701, i64 noundef %379, i64 noundef %380, i64 noundef 0)
  %706 = icmp eq ptr %705, null
  %707 = load ptr, ptr %449, align 8
  %708 = icmp ugt ptr %701, %707
  %709 = select i1 %706, i1 %708, i1 false
  br i1 %709, label %696, label %710, !llvm.loop !112

710:                                              ; preds = %703, %696, %693
  %711 = phi i1 [ true, %693 ], [ %706, %703 ], [ %699, %696 ]
  %712 = phi ptr [ %630, %693 ], [ %701, %703 ], [ null, %696 ]
  br i1 %711, label %713, label %719

713:                                              ; preds = %710
  %714 = load ptr, ptr %449, align 8, !tbaa !109
  %715 = getelementptr inbounds i8, ptr %714, i64 1
  br label %452, !llvm.loop !113

716:                                              ; preds = %617
  %717 = getelementptr inbounds i8, ptr %476, i64 1
  %718 = select i1 %615, ptr null, ptr %717
  br label %719

719:                                              ; preds = %632, %690, %710, %716
  %720 = phi ptr [ %718, %716 ], [ %630, %632 ], [ %630, %690 ], [ %712, %710 ]
  br i1 %450, label %730, label %721

721:                                              ; preds = %719
  %722 = load ptr, ptr %449, align 8, !tbaa !109
  %723 = load ptr, ptr %430, align 8, !tbaa !99
  %724 = ptrtoint ptr %722 to i64
  %725 = ptrtoint ptr %723 to i64
  %726 = sub i64 %724, %725
  store i64 %726, ptr %3, align 8, !tbaa !55
  %727 = ptrtoint ptr %720 to i64
  %728 = sub i64 %727, %725
  %729 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  store i64 %728, ptr %729, align 8, !tbaa !57
  br label %730

730:                                              ; preds = %721, %719
  %731 = icmp ugt i64 %384, 1
  br i1 %731, label %732, label %749

732:                                              ; preds = %730
  %733 = load ptr, ptr %6, align 8, !tbaa !94
  %734 = getelementptr inbounds %struct.re_guts, ptr %733, i64 0, i32 17
  %735 = load ptr, ptr %428, align 8
  br label %736

736:                                              ; preds = %732, %745
  %737 = phi i64 [ 1, %732 ], [ %747, %745 ]
  %738 = phi i32 [ 1, %732 ], [ %746, %745 ]
  %739 = load i64, ptr %734, align 8, !tbaa !85
  %740 = icmp ult i64 %739, %737
  %741 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %737
  br i1 %740, label %744, label %742

742:                                              ; preds = %736
  %743 = getelementptr inbounds %struct.regmatch_t, ptr %735, i64 %737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %741, ptr noundef nonnull align 8 dereferenceable(16) %743, i64 16, i1 false), !tbaa.struct !90
  br label %745

744:                                              ; preds = %736
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %741, i8 -1, i64 16, i1 false)
  br label %745

745:                                              ; preds = %744, %742
  %746 = add i32 %738, 1
  %747 = zext i32 %746 to i64
  %748 = icmp ugt i64 %384, %747
  br i1 %748, label %736, label %749, !llvm.loop !114

749:                                              ; preds = %745, %730
  %750 = load ptr, ptr %428, align 8, !tbaa !97
  %751 = icmp eq ptr %750, null
  br i1 %751, label %753, label %752

752:                                              ; preds = %749
  call void @free(ptr noundef %750) #14
  br label %753

753:                                              ; preds = %752, %749
  %754 = load ptr, ptr %429, align 8, !tbaa !98
  %755 = icmp eq ptr %754, null
  br i1 %755, label %759, label %756

756:                                              ; preds = %683, %753
  %757 = phi ptr [ %754, %753 ], [ %647, %683 ]
  %758 = phi i32 [ 0, %753 ], [ 12, %683 ]
  call void @free(ptr noundef %757) #14
  br label %759

759:                                              ; preds = %646, %612, %756, %753
  %760 = phi i32 [ 0, %753 ], [ %758, %756 ], [ 12, %646 ], [ 1, %612 ]
  %761 = load ptr, ptr %436, align 8, !tbaa !102
  call void @free(ptr noundef %761) #14
  br label %762

762:                                              ; preds = %759, %423, %392, %426
  %763 = phi i32 [ 16, %392 ], [ 12, %426 ], [ 1, %423 ], [ %760, %759 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #14
  br label %764

764:                                              ; preds = %15, %5, %12, %762, %375
  %765 = phi i32 [ %763, %762 ], [ %376, %375 ], [ 2, %12 ], [ 2, %5 ], [ 2, %15 ]
  ret i32 %765
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @sslow(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 !prof !115 {
  %6 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %1, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !60
  %14 = sext i8 %13 to i32
  br label %15

15:                                               ; preds = %5, %11
  %16 = phi i32 [ %14, %11 ], [ 128, %5 ]
  %17 = trunc i64 %3 to i32
  %18 = shl nuw i32 1, %17
  %19 = load ptr, ptr %0, align 8, !tbaa !68
  %20 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %18, i32 noundef 132, i32 noundef %18)
  %21 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.re_guts, ptr %19, i64 0, i32 11
  %25 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.re_guts, ptr %19, i64 0, i32 12
  %27 = trunc i64 %4 to i32
  %28 = shl nuw i32 1, %27
  br label %29

29:                                               ; preds = %151, %15
  %30 = phi ptr [ %1, %15 ], [ %153, %151 ]
  %31 = phi i32 [ %16, %15 ], [ %39, %151 ]
  %32 = phi i32 [ %20, %15 ], [ %152, %151 ]
  %33 = phi ptr [ null, %15 ], [ %147, %151 ]
  %34 = icmp eq ptr %30, %22
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i8, ptr %30, align 1, !tbaa !60
  %37 = sext i8 %36 to i32
  br label %38

38:                                               ; preds = %29, %35
  %39 = phi i32 [ %37, %35 ], [ 128, %29 ]
  switch i32 %31, label %53 [
    i32 10, label %40
    i32 128, label %47
  ]

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.re_guts, ptr %19, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !53
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = icmp eq i32 %31, 128
  br i1 %46, label %47, label %53

47:                                               ; preds = %38, %45
  %48 = load i32, ptr %23, align 8, !tbaa !70
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %40
  %52 = load i32, ptr %24, align 4, !tbaa !76
  br label %53

53:                                               ; preds = %47, %45, %38, %51
  %54 = phi i32 [ 131, %51 ], [ 130, %38 ], [ 130, %45 ], [ 130, %47 ]
  %55 = phi i32 [ 129, %51 ], [ 0, %38 ], [ 0, %45 ], [ 0, %47 ]
  %56 = phi i32 [ %52, %51 ], [ 0, %38 ], [ 0, %45 ], [ 0, %47 ]
  switch i32 %39, label %71 [
    i32 10, label %57
    i32 128, label %64
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.re_guts, ptr %19, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !53
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = icmp eq i32 %39, 128
  br i1 %63, label %64, label %71

64:                                               ; preds = %53, %62
  %65 = load i32, ptr %25, align 8, !tbaa !70
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %57
  %69 = load i32, ptr %26, align 8, !tbaa !77
  %70 = add nsw i32 %69, %56
  br label %71

71:                                               ; preds = %64, %62, %53, %68
  %72 = phi i32 [ %54, %68 ], [ %55, %53 ], [ %55, %62 ], [ %55, %64 ]
  %73 = phi i32 [ %70, %68 ], [ %56, %53 ], [ %56, %62 ], [ %56, %64 ]
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71, %75
  %76 = phi i32 [ %78, %75 ], [ %32, %71 ]
  %77 = phi i32 [ %79, %75 ], [ %73, %71 ]
  %78 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %76, i32 noundef %72, i32 noundef %76)
  %79 = add nsw i32 %77, -1
  %80 = icmp sgt i32 %77, 1
  br i1 %80, label %75, label %81

81:                                               ; preds = %75, %71
  %82 = phi i32 [ %32, %71 ], [ %78, %75 ]
  %83 = icmp eq i32 %72, 129
  br i1 %83, label %98, label %84

84:                                               ; preds = %81
  %85 = icmp eq i32 %31, 128
  br i1 %85, label %111, label %86

86:                                               ; preds = %84
  %87 = tail call ptr @__ctype_b_loc() #16
  %88 = load ptr, ptr %87, align 8, !tbaa !78
  %89 = sext i32 %31 to i64
  %90 = getelementptr inbounds i16, ptr %88, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !79
  %92 = and i16 %91, 8
  %93 = icmp eq i16 %92, 0
  %94 = icmp ne i32 %31, 95
  %95 = select i1 %93, i1 %94, i1 false
  %96 = icmp ne i32 %39, 128
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %100, label %111

98:                                               ; preds = %81
  %99 = icmp eq i32 %39, 128
  br i1 %99, label %111, label %100

100:                                              ; preds = %86, %98
  %101 = tail call ptr @__ctype_b_loc() #16
  %102 = load ptr, ptr %101, align 8, !tbaa !78
  %103 = sext i32 %39 to i64
  %104 = getelementptr inbounds i16, ptr %102, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !79
  %106 = and i16 %105, 8
  %107 = icmp ne i16 %106, 0
  %108 = icmp eq i32 %39, 95
  %109 = select i1 %107, i1 true, i1 %108
  %110 = select i1 %109, i32 133, i32 %72
  br label %111

111:                                              ; preds = %86, %100, %98, %84
  %112 = phi i32 [ 129, %98 ], [ %72, %84 ], [ %110, %100 ], [ %72, %86 ]
  %113 = icmp eq i32 %31, 128
  br i1 %113, label %137, label %114

114:                                              ; preds = %111
  %115 = tail call ptr @__ctype_b_loc() #16
  %116 = load ptr, ptr %115, align 8, !tbaa !78
  %117 = sext i32 %31 to i64
  %118 = getelementptr inbounds i16, ptr %116, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !79
  %120 = and i16 %119, 8
  %121 = icmp ne i16 %120, 0
  %122 = icmp eq i32 %31, 95
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %114
  %125 = icmp eq i32 %112, 130
  br i1 %125, label %136, label %126

126:                                              ; preds = %124
  %127 = icmp eq i32 %39, 128
  br i1 %127, label %137, label %128

128:                                              ; preds = %126
  %129 = sext i32 %39 to i64
  %130 = getelementptr inbounds i16, ptr %116, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !79
  %132 = and i16 %131, 8
  %133 = icmp ne i16 %132, 0
  %134 = icmp eq i32 %39, 95
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %128, %124
  br label %137

137:                                              ; preds = %114, %136, %128, %126, %111
  %138 = phi i32 [ 134, %136 ], [ %112, %128 ], [ %112, %126 ], [ %112, %114 ], [ %112, %111 ]
  %139 = add i32 %138, -133
  %140 = icmp ult i32 %139, 2
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %82, i32 noundef %138, i32 noundef %82)
  br label %143

143:                                              ; preds = %137, %141
  %144 = phi i32 [ %142, %141 ], [ %82, %137 ]
  %145 = and i32 %144, %28
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr %33, ptr %30
  %148 = icmp eq i32 %144, %7
  %149 = icmp eq ptr %30, %2
  %150 = or i1 %149, %148
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = tail call fastcc i32 @sstep(ptr noundef %19, i64 noundef %3, i64 noundef %4, i32 noundef %144, i32 noundef %39, i32 noundef %7)
  %153 = getelementptr inbounds i8, ptr %30, i64 1
  br label %29, !llvm.loop !117

154:                                              ; preds = %143
  ret ptr %147
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @sdissect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #5 !prof !115 {
  %6 = icmp slt i64 %3, %4
  br i1 %6, label %7, label %130

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 2
  br label %12

12:                                               ; preds = %7, %127
  %13 = phi ptr [ %1, %7 ], [ %128, %127 ]
  %14 = phi i64 [ %3, %7 ], [ %40, %127 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.re_guts, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = getelementptr inbounds i64, ptr %17, i64 %14
  %19 = load i64, ptr %18, align 8, !tbaa !91
  %20 = and i64 %19, 2080374784
  switch i64 %20, label %38 [
    i64 603979776, label %26
    i64 738197504, label %26
    i64 1006632960, label %21
  ]

21:                                               ; preds = %12
  %22 = getelementptr inbounds i64, ptr %17, i64 %14
  %23 = load i64, ptr %22, align 8, !tbaa !91
  %24 = and i64 %23, 2080374784
  %25 = icmp eq i64 %24, 1207959552
  br i1 %25, label %38, label %29

26:                                               ; preds = %12, %12
  %27 = and i64 %19, 67108863
  %28 = add nsw i64 %27, %14
  br label %38

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %35, %29 ], [ %23, %21 ]
  %31 = phi i64 [ %33, %29 ], [ %14, %21 ]
  %32 = and i64 %30, 67108863
  %33 = add nsw i64 %32, %31
  %34 = getelementptr inbounds i64, ptr %17, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !91
  %36 = and i64 %35, 2080374784
  %37 = icmp eq i64 %36, 1207959552
  br i1 %37, label %38, label %29, !llvm.loop !119

38:                                               ; preds = %29, %21, %12, %26
  %39 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %14, %21 ], [ %33, %29 ]
  %40 = add nsw i64 %39, 1
  %41 = add nsw i64 %20, -67108864
  %42 = lshr exact i64 %41, 26
  switch i64 %42, label %127 [
    i64 13, label %119
    i64 1, label %43
    i64 12, label %111
    i64 14, label %78
    i64 8, label %59
    i64 10, label %47
    i64 4, label %45
    i64 5, label %45
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %13, i64 1
  br label %127

45:                                               ; preds = %38, %38
  %46 = getelementptr inbounds i8, ptr %13, i64 1
  br label %127

47:                                               ; preds = %38, %47
  %48 = phi ptr [ %52, %47 ], [ %2, %38 ]
  %49 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %48, i64 noundef %14, i64 noundef %40)
  %50 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %2, i64 noundef %40, i64 noundef %4)
  %51 = icmp eq ptr %50, %2
  %52 = getelementptr inbounds i8, ptr %49, i64 -1
  br i1 %51, label %53, label %47, !llvm.loop !120

53:                                               ; preds = %47
  %54 = add nsw i64 %14, 1
  %55 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %49, i64 noundef %54, i64 noundef %39)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %127, label %57

57:                                               ; preds = %53
  %58 = tail call fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %49, i64 noundef %54, i64 noundef %39)
  br label %127

59:                                               ; preds = %38, %59
  %60 = phi ptr [ %64, %59 ], [ %2, %38 ]
  %61 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %60, i64 noundef %14, i64 noundef %40)
  %62 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %61, ptr noundef %2, i64 noundef %40, i64 noundef %4)
  %63 = icmp eq ptr %62, %2
  %64 = getelementptr inbounds i8, ptr %61, i64 -1
  br i1 %63, label %65, label %59, !llvm.loop !121

65:                                               ; preds = %59
  %66 = add nsw i64 %14, 1
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi ptr [ %13, %65 ], [ %70, %67 ]
  %69 = phi ptr [ %13, %65 ], [ %68, %67 ]
  %70 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %68, ptr noundef %61, i64 noundef %66, i64 noundef %39)
  %71 = icmp eq ptr %70, null
  %72 = icmp eq ptr %70, %68
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %67, !llvm.loop !122

74:                                               ; preds = %67
  %75 = select i1 %71, ptr %69, ptr %68
  %76 = select i1 %71, ptr %68, ptr %70
  %77 = tail call fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %75, ptr noundef %76, i64 noundef %66, i64 noundef %39)
  br label %127

78:                                               ; preds = %38, %78
  %79 = phi ptr [ %83, %78 ], [ %2, %38 ]
  %80 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %79, i64 noundef %14, i64 noundef %40)
  %81 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %80, ptr noundef %2, i64 noundef %40, i64 noundef %4)
  %82 = icmp eq ptr %81, %2
  %83 = getelementptr inbounds i8, ptr %80, i64 -1
  br i1 %82, label %84, label %78, !llvm.loop !123

84:                                               ; preds = %78
  %85 = and i64 %19, 67108863
  %86 = add i64 %14, -1
  %87 = add i64 %86, %85
  %88 = add nsw i64 %14, 1
  %89 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %80, i64 noundef %88, i64 noundef %87)
  %90 = icmp eq ptr %89, %80
  br i1 %90, label %107, label %91

91:                                               ; preds = %84, %91
  %92 = phi i64 [ %103, %91 ], [ %87, %84 ]
  %93 = add nsw i64 %92, 1
  %94 = getelementptr inbounds i64, ptr %17, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !91
  %96 = and i64 %95, 67108863
  %97 = add nsw i64 %96, %93
  %98 = getelementptr inbounds i64, ptr %17, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !91
  %100 = and i64 %99, 2080374784
  %101 = icmp eq i64 %100, 1140850688
  %102 = add i64 %96, %92
  %103 = select i1 %101, i64 %102, i64 %97
  %104 = add nsw i64 %92, 2
  %105 = tail call fastcc ptr @sslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %80, i64 noundef %104, i64 noundef %103)
  %106 = icmp eq ptr %105, %80
  br i1 %106, label %107, label %91, !llvm.loop !124

107:                                              ; preds = %91, %84
  %108 = phi i64 [ %87, %84 ], [ %103, %91 ]
  %109 = phi i64 [ %88, %84 ], [ %104, %91 ]
  %110 = tail call fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %80, i64 noundef %109, i64 noundef %108)
  br label %127

111:                                              ; preds = %38
  %112 = and i64 %19, 67108863
  %113 = load ptr, ptr %8, align 8, !tbaa !73
  %114 = ptrtoint ptr %13 to i64
  %115 = ptrtoint ptr %113 to i64
  %116 = sub i64 %114, %115
  %117 = load ptr, ptr %9, align 8, !tbaa !71
  %118 = getelementptr inbounds %struct.regmatch_t, ptr %117, i64 %112
  store i64 %116, ptr %118, align 8, !tbaa !55
  br label %127

119:                                              ; preds = %38
  %120 = and i64 %19, 67108863
  %121 = load ptr, ptr %10, align 8, !tbaa !73
  %122 = ptrtoint ptr %13 to i64
  %123 = ptrtoint ptr %121 to i64
  %124 = sub i64 %122, %123
  %125 = load ptr, ptr %11, align 8, !tbaa !71
  %126 = getelementptr inbounds %struct.regmatch_t, ptr %125, i64 %120, i32 1
  store i64 %124, ptr %126, align 8, !tbaa !57
  br label %127

127:                                              ; preds = %57, %53, %43, %45, %74, %107, %111, %119, %38
  %128 = phi ptr [ %13, %38 ], [ %46, %45 ], [ %61, %74 ], [ %80, %107 ], [ %13, %111 ], [ %44, %43 ], [ %13, %119 ], [ %49, %53 ], [ %49, %57 ]
  %129 = icmp slt i64 %40, %4
  br i1 %129, label %12, label %130, !llvm.loop !125

130:                                              ; preds = %127, %5
  %131 = phi ptr [ %1, %5 ], [ %128, %127 ]
  ret ptr %131
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @sbackref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #7 !prof !115 {
  br label %7

7:                                                ; preds = %289, %282, %271, %268, %262, %6
  %8 = phi ptr [ %1, %6 ], [ %263, %262 ], [ %218, %268 ], [ %218, %271 ], [ %218, %282 ], [ %218, %289 ]
  %9 = phi i64 [ %3, %6 ], [ %264, %262 ], [ %270, %268 ], [ %219, %271 ], [ %219, %282 ], [ %219, %289 ]
  %10 = phi i64 [ %5, %6 ], [ %10, %262 ], [ %10, %268 ], [ %274, %271 ], [ %283, %282 ], [ %290, %289 ]
  %11 = icmp slt i64 %9, %4
  br i1 %11, label %12, label %217

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 4
  br label %23

23:                                               ; preds = %12, %209
  %24 = phi i32 [ 0, %12 ], [ %212, %209 ]
  %25 = phi i64 [ %9, %12 ], [ %213, %209 ]
  %26 = phi ptr [ %8, %12 ], [ %210, %209 ]
  %27 = getelementptr inbounds i64, ptr %15, i64 %25
  %28 = load i64, ptr %27, align 8, !tbaa !91
  %29 = and i64 %28, 2080374784
  %30 = add nsw i64 %29, -134217728
  %31 = lshr exact i64 %30, 26
  switch i64 %31, label %208 [
    i64 0, label %32
    i64 3, label %42
    i64 4, label %46
    i64 1, label %62
    i64 2, label %83
    i64 17, label %101
    i64 18, label %150
    i64 10, label %209
    i64 14, label %195
  ]

32:                                               ; preds = %23
  %33 = icmp eq ptr %26, %2
  br i1 %33, label %353, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds i8, ptr %26, i64 1
  %36 = load i8, ptr %26, align 1, !tbaa !60
  %37 = sext i8 %36 to i32
  %38 = trunc i64 %28 to i32
  %39 = shl i32 %38, 24
  %40 = ashr exact i32 %39, 24
  %41 = icmp eq i32 %40, %37
  br i1 %41, label %209, label %353

42:                                               ; preds = %23
  %43 = icmp eq ptr %26, %2
  br i1 %43, label %353, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, ptr %26, i64 1
  br label %209

46:                                               ; preds = %23
  %47 = icmp eq ptr %26, %2
  br i1 %47, label %353, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %22, align 8, !tbaa !126
  %50 = and i64 %28, 67108863
  %51 = getelementptr inbounds %struct.cset, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !127
  %53 = getelementptr inbounds i8, ptr %26, i64 1
  %54 = load i8, ptr %26, align 1, !tbaa !60
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, ptr %52, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !60
  %58 = getelementptr inbounds %struct.cset, ptr %49, i64 %50, i32 1
  %59 = load i8, ptr %58, align 8, !tbaa !129
  %60 = and i8 %59, %57
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %353, label %209

62:                                               ; preds = %23
  %63 = load ptr, ptr %21, align 8, !tbaa !74
  %64 = icmp eq ptr %26, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !70
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %209, label %70

70:                                               ; preds = %65, %62
  %71 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !75
  %73 = icmp ult ptr %26, %72
  br i1 %73, label %74, label %353

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %26, i64 -1
  %76 = load i8, ptr %75, align 1, !tbaa !60
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %78, label %353

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !53
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %353, label %209

83:                                               ; preds = %23
  %84 = load ptr, ptr %20, align 8, !tbaa !75
  %85 = icmp eq ptr %26, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !70
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %209, label %91

91:                                               ; preds = %86, %83
  %92 = icmp ult ptr %26, %84
  br i1 %92, label %93, label %353

93:                                               ; preds = %91
  %94 = load i8, ptr %26, align 1, !tbaa !60
  %95 = icmp eq i8 %94, 10
  br i1 %95, label %96, label %353

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %98 = load i32, ptr %97, align 8, !tbaa !53
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %353, label %209

101:                                              ; preds = %23
  %102 = load ptr, ptr %18, align 8, !tbaa !74
  %103 = icmp eq ptr %26, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !70
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %136, label %109

109:                                              ; preds = %104, %101
  %110 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !75
  %112 = icmp ult ptr %26, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = getelementptr inbounds i8, ptr %26, i64 -1
  %115 = load i8, ptr %114, align 1, !tbaa !60
  %116 = icmp eq i8 %115, 10
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !53
  %120 = and i32 %119, 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117, %113, %109
  %123 = icmp ugt ptr %26, %102
  br i1 %123, label %124, label %353

124:                                              ; preds = %122
  %125 = tail call ptr @__ctype_b_loc() #16
  %126 = load ptr, ptr %125, align 8, !tbaa !78
  %127 = getelementptr inbounds i8, ptr %26, i64 -1
  %128 = load i8, ptr %127, align 1, !tbaa !60
  %129 = sext i8 %128 to i64
  %130 = getelementptr inbounds i16, ptr %126, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !79
  %132 = and i16 %131, 8
  %133 = icmp ne i16 %132, 0
  %134 = icmp eq i8 %128, 95
  %135 = or i1 %134, %133
  br i1 %135, label %353, label %136

136:                                              ; preds = %117, %124, %104
  %137 = load ptr, ptr %19, align 8, !tbaa !75
  %138 = icmp ult ptr %26, %137
  br i1 %138, label %139, label %353

139:                                              ; preds = %136
  %140 = tail call ptr @__ctype_b_loc() #16
  %141 = load ptr, ptr %140, align 8, !tbaa !78
  %142 = load i8, ptr %26, align 1, !tbaa !60
  %143 = sext i8 %142 to i64
  %144 = getelementptr inbounds i16, ptr %141, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !79
  %146 = and i16 %145, 8
  %147 = icmp ne i16 %146, 0
  %148 = icmp eq i8 %142, 95
  %149 = or i1 %148, %147
  br i1 %149, label %209, label %353

150:                                              ; preds = %23
  %151 = load ptr, ptr %16, align 8, !tbaa !75
  %152 = icmp eq ptr %26, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !70
  %156 = and i32 %155, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %180, label %158

158:                                              ; preds = %153, %150
  %159 = icmp ult ptr %26, %151
  br i1 %159, label %160, label %353

160:                                              ; preds = %158
  %161 = load i8, ptr %26, align 1, !tbaa !60
  %162 = icmp eq i8 %161, 10
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %165 = load i32, ptr %164, align 8, !tbaa !53
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %163, %160
  br i1 %159, label %169, label %353

169:                                              ; preds = %168
  %170 = tail call ptr @__ctype_b_loc() #16
  %171 = load ptr, ptr %170, align 8, !tbaa !78
  %172 = load i8, ptr %26, align 1, !tbaa !60
  %173 = sext i8 %172 to i64
  %174 = getelementptr inbounds i16, ptr %171, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !79
  %176 = and i16 %175, 8
  %177 = icmp ne i16 %176, 0
  %178 = icmp eq i8 %172, 95
  %179 = or i1 %178, %177
  br i1 %179, label %353, label %180

180:                                              ; preds = %163, %169, %153
  %181 = load ptr, ptr %17, align 8, !tbaa !74
  %182 = icmp ugt ptr %26, %181
  br i1 %182, label %183, label %353

183:                                              ; preds = %180
  %184 = tail call ptr @__ctype_b_loc() #16
  %185 = load ptr, ptr %184, align 8, !tbaa !78
  %186 = getelementptr inbounds i8, ptr %26, i64 -1
  %187 = load i8, ptr %186, align 1, !tbaa !60
  %188 = sext i8 %187 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !79
  %191 = and i16 %190, 8
  %192 = icmp ne i16 %191, 0
  %193 = icmp eq i8 %187, 95
  %194 = or i1 %193, %192
  br i1 %194, label %209, label %353

195:                                              ; preds = %23
  %196 = add nsw i64 %25, 1
  %197 = getelementptr inbounds i64, ptr %15, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !91
  br label %199

199:                                              ; preds = %199, %195
  %200 = phi i64 [ %196, %195 ], [ %203, %199 ]
  %201 = phi i64 [ %198, %195 ], [ %205, %199 ]
  %202 = and i64 %201, 67108863
  %203 = add nsw i64 %202, %200
  %204 = getelementptr inbounds i64, ptr %15, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !91
  %206 = and i64 %205, 2080374784
  %207 = icmp eq i64 %206, 1207959552
  br i1 %207, label %209, label %199, !llvm.loop !130

208:                                              ; preds = %23
  br label %209

209:                                              ; preds = %199, %44, %23, %208, %34, %48, %65, %78, %86, %96, %139, %183
  %210 = phi ptr [ %26, %208 ], [ %26, %23 ], [ %26, %183 ], [ %26, %139 ], [ %26, %96 ], [ %26, %86 ], [ %26, %78 ], [ %26, %65 ], [ %53, %48 ], [ %45, %44 ], [ %35, %34 ], [ %26, %199 ]
  %211 = phi i64 [ %25, %208 ], [ %25, %23 ], [ %25, %183 ], [ %25, %139 ], [ %25, %96 ], [ %25, %86 ], [ %25, %78 ], [ %25, %65 ], [ %25, %48 ], [ %25, %44 ], [ %25, %34 ], [ %203, %199 ]
  %212 = phi i32 [ 1, %208 ], [ %24, %23 ], [ %24, %183 ], [ %24, %139 ], [ %24, %96 ], [ %24, %86 ], [ %24, %78 ], [ %24, %65 ], [ %24, %48 ], [ %24, %44 ], [ %24, %34 ], [ %24, %199 ]
  %213 = add nsw i64 %211, 1
  %214 = icmp eq i32 %212, 0
  %215 = icmp slt i64 %213, %4
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %23, label %217, !llvm.loop !131

217:                                              ; preds = %209, %7
  %218 = phi ptr [ %8, %7 ], [ %210, %209 ]
  %219 = phi i64 [ %9, %7 ], [ %213, %209 ]
  %220 = phi i1 [ true, %7 ], [ %214, %209 ]
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = icmp eq ptr %218, %2
  %223 = select i1 %222, ptr %218, ptr null
  br label %353

224:                                              ; preds = %217
  %225 = add nsw i64 %219, -1
  %226 = load ptr, ptr %0, align 8, !tbaa !68
  %227 = getelementptr inbounds %struct.re_guts, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !118
  %229 = getelementptr inbounds i64, ptr %228, i64 %225
  %230 = load i64, ptr %229, align 8, !tbaa !91
  %231 = and i64 %230, 2080374784
  %232 = add nsw i64 %231, -469762048
  %233 = lshr exact i64 %232, 26
  switch i64 %233, label %353 [
    i64 0, label %234
    i64 4, label %265
    i64 2, label %271
    i64 3, label %276
    i64 8, label %291
    i64 6, label %321
    i64 7, label %337
  ]

234:                                              ; preds = %224
  %235 = and i64 %230, 67108863
  %236 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !71
  %238 = getelementptr inbounds %struct.regmatch_t, ptr %237, i64 %235, i32 1
  %239 = load i64, ptr %238, align 8, !tbaa !57
  %240 = icmp eq i64 %239, -1
  br i1 %240, label %353, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.regmatch_t, ptr %237, i64 %235
  %243 = load i64, ptr %242, align 8, !tbaa !55
  %244 = sub nsw i64 %239, %243
  %245 = sub i64 0, %244
  %246 = getelementptr inbounds i8, ptr %2, i64 %245
  %247 = icmp ugt ptr %218, %246
  br i1 %247, label %353, label %248

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !73
  %251 = getelementptr inbounds i8, ptr %250, i64 %243
  %252 = tail call i32 @bcmp(ptr %218, ptr %251, i64 %244)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %353

254:                                              ; preds = %248
  %255 = or disjoint i64 %235, 536870912
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi i64 [ %261, %256 ], [ %225, %254 ]
  %258 = getelementptr inbounds i64, ptr %228, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !91
  %260 = icmp eq i64 %259, %255
  %261 = add nsw i64 %257, 1
  br i1 %260, label %262, label %256, !llvm.loop !132

262:                                              ; preds = %256
  %263 = getelementptr inbounds i8, ptr %218, i64 %244
  %264 = add nsw i64 %257, 1
  br label %7

265:                                              ; preds = %224
  %266 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %4, i64 noundef %10)
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %353

268:                                              ; preds = %265
  %269 = and i64 %230, 67108863
  %270 = add i64 %269, %219
  br label %7

271:                                              ; preds = %224
  %272 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 7
  %273 = load ptr, ptr %272, align 8, !tbaa !72
  %274 = add nsw i64 %10, 1
  %275 = getelementptr inbounds ptr, ptr %273, i64 %274
  store ptr %218, ptr %275, align 8, !tbaa !78
  br label %7

276:                                              ; preds = %224
  %277 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 7
  %278 = load ptr, ptr %277, align 8, !tbaa !72
  %279 = getelementptr inbounds ptr, ptr %278, i64 %10
  %280 = load ptr, ptr %279, align 8, !tbaa !78
  %281 = icmp eq ptr %218, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = add nsw i64 %10, -1
  br label %7

284:                                              ; preds = %276
  store ptr %218, ptr %279, align 8, !tbaa !78
  %285 = and i64 %230, 67108863
  %286 = sub i64 %219, %285
  %287 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %286, i64 noundef %4, i64 noundef %10)
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %353

289:                                              ; preds = %284
  %290 = add nsw i64 %10, -1
  br label %7

291:                                              ; preds = %224
  %292 = and i64 %230, 67108863
  %293 = add i64 %219, -2
  %294 = add i64 %293, %292
  %295 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %294, i64 noundef %10)
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %353

297:                                              ; preds = %291, %306
  %298 = phi i64 [ %318, %306 ], [ %294, %291 ]
  %299 = load ptr, ptr %0, align 8, !tbaa !68
  %300 = getelementptr inbounds %struct.re_guts, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !118
  %302 = getelementptr inbounds i64, ptr %301, i64 %298
  %303 = load i64, ptr %302, align 8, !tbaa !91
  %304 = and i64 %303, 2080374784
  %305 = icmp eq i64 %304, 1207959552
  br i1 %305, label %353, label %306

306:                                              ; preds = %297
  %307 = add nsw i64 %298, 1
  %308 = add nsw i64 %298, 2
  %309 = getelementptr inbounds i64, ptr %301, i64 %307
  %310 = load i64, ptr %309, align 8, !tbaa !91
  %311 = and i64 %310, 67108863
  %312 = add nsw i64 %311, %307
  %313 = getelementptr inbounds i64, ptr %301, i64 %312
  %314 = load i64, ptr %313, align 8, !tbaa !91
  %315 = and i64 %314, 2080374784
  %316 = icmp eq i64 %315, 1140850688
  %317 = add i64 %311, %298
  %318 = select i1 %316, i64 %317, i64 %312
  %319 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %308, i64 noundef %318, i64 noundef %10)
  %320 = icmp eq ptr %319, null
  br i1 %320, label %297, label %353, !llvm.loop !133

321:                                              ; preds = %224
  %322 = and i64 %230, 67108863
  %323 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !71
  %325 = getelementptr inbounds %struct.regmatch_t, ptr %324, i64 %322
  %326 = load i64, ptr %325, align 8, !tbaa !55
  %327 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 3
  %328 = load ptr, ptr %327, align 8, !tbaa !73
  %329 = ptrtoint ptr %218 to i64
  %330 = ptrtoint ptr %328 to i64
  %331 = sub i64 %329, %330
  store i64 %331, ptr %325, align 8, !tbaa !55
  %332 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %4, i64 noundef %10)
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %353

334:                                              ; preds = %321
  %335 = load ptr, ptr %323, align 8, !tbaa !71
  %336 = getelementptr inbounds %struct.regmatch_t, ptr %335, i64 %322
  store i64 %326, ptr %336, align 8, !tbaa !55
  br label %353

337:                                              ; preds = %224
  %338 = and i64 %230, 67108863
  %339 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !71
  %341 = getelementptr inbounds %struct.regmatch_t, ptr %340, i64 %338, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !57
  %343 = getelementptr inbounds %struct.smat, ptr %0, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !73
  %345 = ptrtoint ptr %218 to i64
  %346 = ptrtoint ptr %344 to i64
  %347 = sub i64 %345, %346
  store i64 %347, ptr %341, align 8, !tbaa !57
  %348 = tail call fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %4, i64 noundef %10)
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %337
  %351 = load ptr, ptr %339, align 8, !tbaa !71
  %352 = getelementptr inbounds %struct.regmatch_t, ptr %351, i64 %338, i32 1
  store i64 %342, ptr %352, align 8, !tbaa !57
  br label %353

353:                                              ; preds = %158, %183, %169, %168, %139, %124, %122, %96, %91, %78, %70, %34, %180, %136, %93, %74, %46, %48, %42, %32, %306, %297, %291, %224, %337, %321, %284, %265, %248, %241, %234, %221, %350, %334
  %354 = phi ptr [ null, %350 ], [ null, %334 ], [ %223, %221 ], [ null, %234 ], [ null, %241 ], [ null, %248 ], [ %266, %265 ], [ %287, %284 ], [ %332, %321 ], [ %348, %337 ], [ null, %224 ], [ %295, %291 ], [ null, %297 ], [ %319, %306 ], [ null, %32 ], [ null, %42 ], [ null, %48 ], [ null, %46 ], [ null, %74 ], [ null, %93 ], [ null, %136 ], [ null, %180 ], [ null, %34 ], [ null, %70 ], [ null, %78 ], [ null, %91 ], [ null, %96 ], [ null, %122 ], [ null, %124 ], [ null, %139 ], [ null, %168 ], [ null, %169 ], [ null, %183 ], [ null, %158 ]
  ret ptr %354
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sstep(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #9 !prof !115 {
  %7 = icmp eq i64 %1, %2
  br i1 %7, label %184, label %8

8:                                                ; preds = %6
  %9 = trunc i64 %1 to i32
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp sgt i32 %4, 127
  %14 = icmp sgt i32 %4, 127
  %15 = icmp eq i32 %4, 134
  %16 = icmp eq i32 %4, 133
  %17 = and i32 %4, -2
  %18 = icmp eq i32 %17, 130
  %19 = and i32 %4, -3
  %20 = icmp eq i32 %19, 129
  br label %21

21:                                               ; preds = %8, %177
  %22 = phi i32 [ %5, %8 ], [ %180, %177 ]
  %23 = phi i32 [ %10, %8 ], [ %182, %177 ]
  %24 = phi i64 [ %1, %8 ], [ %181, %177 ]
  %25 = getelementptr inbounds i64, ptr %12, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !91
  %27 = and i64 %26, 2080374784
  %28 = add nsw i64 %27, -67108864
  %29 = lshr exact i64 %28, 26
  switch i64 %29, label %177 [
    i64 17, label %173
    i64 1, label %30
    i64 2, label %39
    i64 3, label %44
    i64 18, label %49
    i64 19, label %54
    i64 4, label %59
    i64 5, label %64
    i64 6, label %83
    i64 7, label %83
    i64 8, label %87
    i64 9, label %91
    i64 10, label %111
    i64 11, label %120
    i64 12, label %124
    i64 13, label %124
    i64 14, label %128
    i64 15, label %137
    i64 16, label %159
  ]

30:                                               ; preds = %21
  %31 = trunc i64 %26 to i32
  %32 = shl i32 %31, 24
  %33 = ashr exact i32 %32, 24
  %34 = icmp eq i32 %33, %4
  br i1 %34, label %35, label %177

35:                                               ; preds = %30
  %36 = and i32 %23, %3
  %37 = shl i32 %36, 1
  %38 = or i32 %37, %22
  br label %177

39:                                               ; preds = %21
  br i1 %20, label %40, label %177

40:                                               ; preds = %39
  %41 = and i32 %23, %3
  %42 = shl i32 %41, 1
  %43 = or i32 %42, %22
  br label %177

44:                                               ; preds = %21
  br i1 %18, label %45, label %177

45:                                               ; preds = %44
  %46 = and i32 %23, %3
  %47 = shl i32 %46, 1
  %48 = or i32 %47, %22
  br label %177

49:                                               ; preds = %21
  br i1 %16, label %50, label %177

50:                                               ; preds = %49
  %51 = and i32 %23, %3
  %52 = shl i32 %51, 1
  %53 = or i32 %52, %22
  br label %177

54:                                               ; preds = %21
  br i1 %15, label %55, label %177

55:                                               ; preds = %54
  %56 = and i32 %23, %3
  %57 = shl i32 %56, 1
  %58 = or i32 %57, %22
  br label %177

59:                                               ; preds = %21
  br i1 %14, label %177, label %60

60:                                               ; preds = %59
  %61 = and i32 %23, %3
  %62 = shl i32 %61, 1
  %63 = or i32 %62, %22
  br label %177

64:                                               ; preds = %21
  br i1 %13, label %177, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 4
  %67 = and i32 %4, 255
  %68 = zext nneg i32 %67 to i64
  %69 = load ptr, ptr %66, align 8, !tbaa !126
  %70 = and i64 %26, 67108863
  %71 = getelementptr inbounds %struct.cset, ptr %69, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !127
  %73 = getelementptr inbounds i8, ptr %72, i64 %68
  %74 = load i8, ptr %73, align 1, !tbaa !60
  %75 = getelementptr inbounds %struct.cset, ptr %69, i64 %70, i32 1
  %76 = load i8, ptr %75, align 8, !tbaa !129
  %77 = and i8 %76, %74
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %177, label %79

79:                                               ; preds = %65
  %80 = and i32 %23, %3
  %81 = shl i32 %80, 1
  %82 = or i32 %81, %22
  br label %177

83:                                               ; preds = %21, %21
  %84 = and i32 %22, %23
  %85 = shl i32 %84, 1
  %86 = or i32 %85, %22
  br label %177

87:                                               ; preds = %21
  %88 = and i32 %22, %23
  %89 = shl i32 %88, 1
  %90 = or i32 %89, %22
  br label %177

91:                                               ; preds = %21
  %92 = and i32 %22, %23
  %93 = shl i32 %92, 1
  %94 = or i32 %93, %22
  %95 = and i64 %26, 67108863
  %96 = trunc i64 %95 to i32
  %97 = lshr i32 %23, %96
  %98 = and i32 %97, %94
  %99 = and i32 %94, %23
  %100 = lshr i32 %99, %96
  %101 = or i32 %100, %94
  %102 = icmp ne i32 %98, 0
  %103 = and i32 %101, %97
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %177, label %106

106:                                              ; preds = %91
  %107 = xor i64 %95, -1
  %108 = add i64 %24, %107
  %109 = trunc i64 %108 to i32
  %110 = shl nuw i32 1, %109
  br label %177

111:                                              ; preds = %21
  %112 = and i32 %22, %23
  %113 = shl i32 %112, 1
  %114 = or i32 %113, %22
  %115 = and i32 %114, %23
  %116 = trunc i64 %26 to i32
  %117 = and i32 %116, 67108863
  %118 = shl i32 %115, %117
  %119 = or i32 %118, %114
  br label %177

120:                                              ; preds = %21
  %121 = and i32 %22, %23
  %122 = shl i32 %121, 1
  %123 = or i32 %122, %22
  br label %177

124:                                              ; preds = %21, %21
  %125 = and i32 %22, %23
  %126 = shl i32 %125, 1
  %127 = or i32 %126, %22
  br label %177

128:                                              ; preds = %21
  %129 = and i32 %22, %23
  %130 = shl i32 %129, 1
  %131 = or i32 %130, %22
  %132 = and i32 %131, %23
  %133 = trunc i64 %26 to i32
  %134 = and i32 %133, 67108863
  %135 = shl i32 %132, %134
  %136 = or i32 %135, %131
  br label %177

137:                                              ; preds = %21
  %138 = and i32 %22, %23
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %177, label %140

140:                                              ; preds = %137
  %141 = getelementptr i64, ptr %25, i64 1
  %142 = load i64, ptr %141, align 8, !tbaa !91
  %143 = and i64 %142, 2080374784
  %144 = icmp eq i64 %143, 1207959552
  br i1 %144, label %154, label %145

145:                                              ; preds = %140, %145
  %146 = phi i64 [ %151, %145 ], [ %142, %140 ]
  %147 = phi i64 [ %149, %145 ], [ 1, %140 ]
  %148 = and i64 %146, 67108863
  %149 = add nuw nsw i64 %148, %147
  %150 = getelementptr i64, ptr %25, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !91
  %152 = and i64 %151, 2080374784
  %153 = icmp eq i64 %152, 1207959552
  br i1 %153, label %154, label %145, !llvm.loop !134

154:                                              ; preds = %145, %140
  %155 = phi i64 [ 1, %140 ], [ %149, %145 ]
  %156 = trunc i64 %155 to i32
  %157 = shl i32 %138, %156
  %158 = or i32 %157, %22
  br label %177

159:                                              ; preds = %21
  %160 = and i32 %22, %23
  %161 = shl i32 %160, 1
  %162 = or i32 %161, %22
  %163 = and i64 %26, 67108863
  %164 = getelementptr i64, ptr %25, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !91
  %166 = and i64 %165, 2080374784
  %167 = icmp eq i64 %166, 1207959552
  br i1 %167, label %177, label %168

168:                                              ; preds = %159
  %169 = and i32 %162, %23
  %170 = trunc i64 %163 to i32
  %171 = shl i32 %169, %170
  %172 = or i32 %171, %162
  br label %177

173:                                              ; preds = %21
  %174 = and i32 %22, %23
  %175 = shl i32 %174, 1
  %176 = or i32 %175, %22
  br label %177

177:                                              ; preds = %83, %87, %111, %120, %124, %128, %173, %35, %30, %39, %40, %44, %45, %50, %49, %55, %54, %60, %59, %79, %65, %64, %106, %91, %154, %137, %168, %159, %21
  %178 = phi i64 [ %24, %21 ], [ %24, %168 ], [ %24, %159 ], [ %24, %154 ], [ %24, %137 ], [ %24, %128 ], [ %24, %124 ], [ %24, %120 ], [ %24, %111 ], [ %24, %91 ], [ %108, %106 ], [ %24, %87 ], [ %24, %83 ], [ %24, %64 ], [ %24, %79 ], [ %24, %65 ], [ %24, %59 ], [ %24, %60 ], [ %24, %55 ], [ %24, %54 ], [ %24, %50 ], [ %24, %49 ], [ %24, %45 ], [ %24, %44 ], [ %24, %40 ], [ %24, %39 ], [ %24, %35 ], [ %24, %30 ], [ %24, %173 ]
  %179 = phi i32 [ %23, %21 ], [ %23, %168 ], [ %23, %159 ], [ %23, %154 ], [ %23, %137 ], [ %23, %128 ], [ %23, %124 ], [ %23, %120 ], [ %23, %111 ], [ %23, %91 ], [ %110, %106 ], [ %23, %87 ], [ %23, %83 ], [ %23, %64 ], [ %23, %79 ], [ %23, %65 ], [ %23, %59 ], [ %23, %60 ], [ %23, %55 ], [ %23, %54 ], [ %23, %50 ], [ %23, %49 ], [ %23, %45 ], [ %23, %44 ], [ %23, %40 ], [ %23, %39 ], [ %23, %35 ], [ %23, %30 ], [ %23, %173 ]
  %180 = phi i32 [ %22, %21 ], [ %172, %168 ], [ %162, %159 ], [ %158, %154 ], [ %22, %137 ], [ %136, %128 ], [ %127, %124 ], [ %123, %120 ], [ %119, %111 ], [ %101, %91 ], [ %101, %106 ], [ %90, %87 ], [ %86, %83 ], [ %22, %64 ], [ %82, %79 ], [ %22, %65 ], [ %22, %59 ], [ %63, %60 ], [ %58, %55 ], [ %22, %54 ], [ %53, %50 ], [ %22, %49 ], [ %48, %45 ], [ %22, %44 ], [ %43, %40 ], [ %22, %39 ], [ %38, %35 ], [ %22, %30 ], [ %176, %173 ]
  %181 = add nsw i64 %178, 1
  %182 = shl i32 %179, 1
  %183 = icmp eq i64 %181, %2
  br i1 %183, label %184, label %21, !llvm.loop !135

184:                                              ; preds = %177, %6
  %185 = phi i32 [ %5, %6 ], [ %180, %177 ]
  ret i32 %185
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @lslow(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2, i64 noundef %3, i64 noundef %4) unnamed_addr #7 !prof !115 {
  %6 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %1, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !60
  %18 = sext i8 %17 to i32
  br label %19

19:                                               ; preds = %5, %15
  %20 = phi i32 [ %18, %15 ], [ 128, %5 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !94
  %22 = getelementptr inbounds %struct.re_guts, ptr %21, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %23, i1 false)
  %24 = getelementptr inbounds i8, ptr %7, i64 %3
  store i8 1, ptr %24, align 1, !tbaa !60
  %25 = load ptr, ptr %0, align 8, !tbaa !94
  %26 = tail call fastcc ptr @lstep(ptr noundef %25, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef 132, ptr noundef %7)
  %27 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %28 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds i8, ptr %7, i64 %4
  br label %31

31:                                               ; preds = %162, %19
  %32 = phi ptr [ %1, %19 ], [ %168, %162 ]
  %33 = phi i32 [ %20, %19 ], [ %41, %162 ]
  %34 = phi ptr [ null, %19 ], [ %154, %162 ]
  %35 = load ptr, ptr %27, align 8, !tbaa !101
  %36 = icmp eq ptr %32, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i8, ptr %32, align 1, !tbaa !60
  %39 = sext i8 %38 to i32
  br label %40

40:                                               ; preds = %31, %37
  %41 = phi i32 [ %39, %37 ], [ 128, %31 ]
  switch i32 %33, label %58 [
    i32 10, label %42
    i32 128, label %50
  ]

42:                                               ; preds = %40
  %43 = load ptr, ptr %0, align 8, !tbaa !94
  %44 = getelementptr inbounds %struct.re_guts, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !53
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = icmp eq i32 %33, 128
  br i1 %49, label %50, label %58

50:                                               ; preds = %40, %48
  %51 = load i32, ptr %28, align 8, !tbaa !96
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %42
  %55 = load ptr, ptr %0, align 8, !tbaa !94
  %56 = getelementptr inbounds %struct.re_guts, ptr %55, i64 0, i32 11
  %57 = load i32, ptr %56, align 4, !tbaa !76
  br label %58

58:                                               ; preds = %50, %48, %40, %54
  %59 = phi i32 [ 131, %54 ], [ 130, %40 ], [ 130, %48 ], [ 130, %50 ]
  %60 = phi i32 [ 129, %54 ], [ 0, %40 ], [ 0, %48 ], [ 0, %50 ]
  %61 = phi i32 [ %57, %54 ], [ 0, %40 ], [ 0, %48 ], [ 0, %50 ]
  switch i32 %41, label %79 [
    i32 10, label %62
    i32 128, label %70
  ]

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 8, !tbaa !94
  %64 = getelementptr inbounds %struct.re_guts, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !53
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = icmp eq i32 %41, 128
  br i1 %69, label %70, label %79

70:                                               ; preds = %58, %68
  %71 = load i32, ptr %29, align 8, !tbaa !96
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %62
  %75 = load ptr, ptr %0, align 8, !tbaa !94
  %76 = getelementptr inbounds %struct.re_guts, ptr %75, i64 0, i32 12
  %77 = load i32, ptr %76, align 8, !tbaa !77
  %78 = add nsw i32 %77, %61
  br label %79

79:                                               ; preds = %70, %68, %58, %74
  %80 = phi i32 [ %59, %74 ], [ %60, %58 ], [ %60, %68 ], [ %60, %70 ]
  %81 = phi i32 [ %78, %74 ], [ %61, %58 ], [ %61, %68 ], [ %61, %70 ]
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %83
  %84 = phi i32 [ %87, %83 ], [ %81, %79 ]
  %85 = load ptr, ptr %0, align 8, !tbaa !94
  %86 = tail call fastcc ptr @lstep(ptr noundef %85, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef %80, ptr noundef %7)
  %87 = add nsw i32 %84, -1
  %88 = icmp sgt i32 %84, 1
  br i1 %88, label %83, label %89

89:                                               ; preds = %83, %79
  %90 = icmp eq i32 %80, 129
  br i1 %90, label %105, label %91

91:                                               ; preds = %89
  %92 = icmp eq i32 %33, 128
  br i1 %92, label %118, label %93

93:                                               ; preds = %91
  %94 = tail call ptr @__ctype_b_loc() #16
  %95 = load ptr, ptr %94, align 8, !tbaa !78
  %96 = sext i32 %33 to i64
  %97 = getelementptr inbounds i16, ptr %95, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !79
  %99 = and i16 %98, 8
  %100 = icmp eq i16 %99, 0
  %101 = icmp ne i32 %33, 95
  %102 = select i1 %100, i1 %101, i1 false
  %103 = icmp ne i32 %41, 128
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %107, label %118

105:                                              ; preds = %89
  %106 = icmp eq i32 %41, 128
  br i1 %106, label %118, label %107

107:                                              ; preds = %93, %105
  %108 = tail call ptr @__ctype_b_loc() #16
  %109 = load ptr, ptr %108, align 8, !tbaa !78
  %110 = sext i32 %41 to i64
  %111 = getelementptr inbounds i16, ptr %109, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !79
  %113 = and i16 %112, 8
  %114 = icmp ne i16 %113, 0
  %115 = icmp eq i32 %41, 95
  %116 = select i1 %114, i1 true, i1 %115
  %117 = select i1 %116, i32 133, i32 %80
  br label %118

118:                                              ; preds = %93, %107, %105, %91
  %119 = phi i32 [ 129, %105 ], [ %80, %91 ], [ %117, %107 ], [ %80, %93 ]
  %120 = icmp eq i32 %33, 128
  br i1 %120, label %144, label %121

121:                                              ; preds = %118
  %122 = tail call ptr @__ctype_b_loc() #16
  %123 = load ptr, ptr %122, align 8, !tbaa !78
  %124 = sext i32 %33 to i64
  %125 = getelementptr inbounds i16, ptr %123, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !79
  %127 = and i16 %126, 8
  %128 = icmp ne i16 %127, 0
  %129 = icmp eq i32 %33, 95
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %121
  %132 = icmp eq i32 %119, 130
  br i1 %132, label %143, label %133

133:                                              ; preds = %131
  %134 = icmp eq i32 %41, 128
  br i1 %134, label %144, label %135

135:                                              ; preds = %133
  %136 = sext i32 %41 to i64
  %137 = getelementptr inbounds i16, ptr %123, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !79
  %139 = and i16 %138, 8
  %140 = icmp ne i16 %139, 0
  %141 = icmp eq i32 %41, 95
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %135, %131
  br label %144

144:                                              ; preds = %121, %143, %135, %133, %118
  %145 = phi i32 [ 134, %143 ], [ %119, %135 ], [ %119, %133 ], [ %119, %121 ], [ %119, %118 ]
  %146 = add i32 %145, -133
  %147 = icmp ult i32 %146, 2
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load ptr, ptr %0, align 8, !tbaa !94
  %150 = tail call fastcc ptr @lstep(ptr noundef %149, i64 noundef %3, i64 noundef %4, ptr noundef %7, i32 noundef %145, ptr noundef %7)
  br label %151

151:                                              ; preds = %144, %148
  %152 = load i8, ptr %30, align 1, !tbaa !60
  %153 = icmp eq i8 %152, 0
  %154 = select i1 %153, ptr %34, ptr %32
  %155 = load ptr, ptr %0, align 8, !tbaa !94
  %156 = getelementptr inbounds %struct.re_guts, ptr %155, i64 0, i32 7
  %157 = load i64, ptr %156, align 8, !tbaa !50
  %158 = tail call i32 @bcmp(ptr %7, ptr %9, i64 %157)
  %159 = icmp eq i32 %158, 0
  %160 = icmp eq ptr %32, %2
  %161 = or i1 %160, %159
  br i1 %161, label %169, label %162

162:                                              ; preds = %151
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %7, i64 %157, i1 false)
  %163 = load ptr, ptr %0, align 8, !tbaa !94
  %164 = getelementptr inbounds %struct.re_guts, ptr %163, i64 0, i32 7
  %165 = load i64, ptr %164, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 %165, i1 false)
  %166 = load ptr, ptr %0, align 8, !tbaa !94
  %167 = tail call fastcc ptr @lstep(ptr noundef %166, i64 noundef %3, i64 noundef %4, ptr noundef %11, i32 noundef %41, ptr noundef %7)
  %168 = getelementptr inbounds i8, ptr %32, i64 1
  br label %31, !llvm.loop !136

169:                                              ; preds = %151
  ret ptr %154
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @ldissect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #7 !prof !115 {
  %6 = icmp slt i64 %3, %4
  br i1 %6, label %7, label %138

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 2
  br label %12

12:                                               ; preds = %7, %135
  %13 = phi ptr [ %1, %7 ], [ %136, %135 ]
  %14 = phi i64 [ %3, %7 ], [ %40, %135 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.re_guts, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = getelementptr inbounds i64, ptr %17, i64 %14
  %19 = load i64, ptr %18, align 8, !tbaa !91
  %20 = and i64 %19, 2080374784
  switch i64 %20, label %38 [
    i64 603979776, label %26
    i64 738197504, label %26
    i64 1006632960, label %21
  ]

21:                                               ; preds = %12
  %22 = getelementptr inbounds i64, ptr %17, i64 %14
  %23 = load i64, ptr %22, align 8, !tbaa !91
  %24 = and i64 %23, 2080374784
  %25 = icmp eq i64 %24, 1207959552
  br i1 %25, label %38, label %29

26:                                               ; preds = %12, %12
  %27 = and i64 %19, 67108863
  %28 = add nsw i64 %27, %14
  br label %38

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %35, %29 ], [ %23, %21 ]
  %31 = phi i64 [ %33, %29 ], [ %14, %21 ]
  %32 = and i64 %30, 67108863
  %33 = add nsw i64 %32, %31
  %34 = getelementptr inbounds i64, ptr %17, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !91
  %36 = and i64 %35, 2080374784
  %37 = icmp eq i64 %36, 1207959552
  br i1 %37, label %38, label %29, !llvm.loop !137

38:                                               ; preds = %29, %21, %12, %26
  %39 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %14, %21 ], [ %33, %29 ]
  %40 = add nsw i64 %39, 1
  %41 = add nsw i64 %20, -67108864
  %42 = lshr exact i64 %41, 26
  switch i64 %42, label %135 [
    i64 13, label %127
    i64 1, label %43
    i64 12, label %119
    i64 14, label %78
    i64 8, label %59
    i64 10, label %47
    i64 4, label %45
    i64 5, label %45
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %13, i64 1
  br label %135

45:                                               ; preds = %38, %38
  %46 = getelementptr inbounds i8, ptr %13, i64 1
  br label %135

47:                                               ; preds = %38, %47
  %48 = phi ptr [ %52, %47 ], [ %2, %38 ]
  %49 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %48, i64 noundef %14, i64 noundef %40)
  %50 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %2, i64 noundef %40, i64 noundef %4)
  %51 = icmp eq ptr %50, %2
  %52 = getelementptr inbounds i8, ptr %49, i64 -1
  br i1 %51, label %53, label %47, !llvm.loop !138

53:                                               ; preds = %47
  %54 = add nsw i64 %14, 1
  %55 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %49, i64 noundef %54, i64 noundef %39)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %135, label %57

57:                                               ; preds = %53
  %58 = tail call fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %49, i64 noundef %54, i64 noundef %39)
  br label %135

59:                                               ; preds = %38, %59
  %60 = phi ptr [ %64, %59 ], [ %2, %38 ]
  %61 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %60, i64 noundef %14, i64 noundef %40)
  %62 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %61, ptr noundef %2, i64 noundef %40, i64 noundef %4)
  %63 = icmp eq ptr %62, %2
  %64 = getelementptr inbounds i8, ptr %61, i64 -1
  br i1 %63, label %65, label %59, !llvm.loop !139

65:                                               ; preds = %59
  %66 = add nsw i64 %14, 1
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi ptr [ %13, %65 ], [ %70, %67 ]
  %69 = phi ptr [ %13, %65 ], [ %68, %67 ]
  %70 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %68, ptr noundef %61, i64 noundef %66, i64 noundef %39)
  %71 = icmp eq ptr %70, null
  %72 = icmp eq ptr %70, %68
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %67, !llvm.loop !140

74:                                               ; preds = %67
  %75 = select i1 %71, ptr %69, ptr %68
  %76 = select i1 %71, ptr %68, ptr %70
  %77 = tail call fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %75, ptr noundef %76, i64 noundef %66, i64 noundef %39)
  br label %135

78:                                               ; preds = %38, %78
  %79 = phi ptr [ %83, %78 ], [ %2, %38 ]
  %80 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %79, i64 noundef %14, i64 noundef %40)
  %81 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %80, ptr noundef %2, i64 noundef %40, i64 noundef %4)
  %82 = icmp eq ptr %81, %2
  %83 = getelementptr inbounds i8, ptr %80, i64 -1
  br i1 %82, label %84, label %78, !llvm.loop !141

84:                                               ; preds = %78
  %85 = load ptr, ptr %0, align 8, !tbaa !94
  %86 = getelementptr inbounds %struct.re_guts, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !118
  %88 = getelementptr inbounds i64, ptr %87, i64 %14
  %89 = load i64, ptr %88, align 8, !tbaa !91
  %90 = and i64 %89, 67108863
  %91 = add i64 %14, -1
  %92 = add i64 %91, %90
  %93 = add nsw i64 %14, 1
  %94 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %80, i64 noundef %93, i64 noundef %92)
  %95 = icmp eq ptr %94, %80
  br i1 %95, label %115, label %96

96:                                               ; preds = %84, %96
  %97 = phi i64 [ %111, %96 ], [ %92, %84 ]
  %98 = add nsw i64 %97, 1
  %99 = load ptr, ptr %0, align 8, !tbaa !94
  %100 = getelementptr inbounds %struct.re_guts, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !118
  %102 = getelementptr inbounds i64, ptr %101, i64 %98
  %103 = load i64, ptr %102, align 8, !tbaa !91
  %104 = and i64 %103, 67108863
  %105 = add nsw i64 %104, %98
  %106 = getelementptr inbounds i64, ptr %101, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !91
  %108 = and i64 %107, 2080374784
  %109 = icmp eq i64 %108, 1140850688
  %110 = add i64 %104, %97
  %111 = select i1 %109, i64 %110, i64 %105
  %112 = add nsw i64 %97, 2
  %113 = tail call fastcc ptr @lslow(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %80, i64 noundef %112, i64 noundef %111)
  %114 = icmp eq ptr %113, %80
  br i1 %114, label %115, label %96, !llvm.loop !142

115:                                              ; preds = %96, %84
  %116 = phi i64 [ %92, %84 ], [ %111, %96 ]
  %117 = phi i64 [ %93, %84 ], [ %112, %96 ]
  %118 = tail call fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %80, i64 noundef %117, i64 noundef %116)
  br label %135

119:                                              ; preds = %38
  %120 = and i64 %19, 67108863
  %121 = load ptr, ptr %8, align 8, !tbaa !99
  %122 = ptrtoint ptr %13 to i64
  %123 = ptrtoint ptr %121 to i64
  %124 = sub i64 %122, %123
  %125 = load ptr, ptr %9, align 8, !tbaa !97
  %126 = getelementptr inbounds %struct.regmatch_t, ptr %125, i64 %120
  store i64 %124, ptr %126, align 8, !tbaa !55
  br label %135

127:                                              ; preds = %38
  %128 = and i64 %19, 67108863
  %129 = load ptr, ptr %10, align 8, !tbaa !99
  %130 = ptrtoint ptr %13 to i64
  %131 = ptrtoint ptr %129 to i64
  %132 = sub i64 %130, %131
  %133 = load ptr, ptr %11, align 8, !tbaa !97
  %134 = getelementptr inbounds %struct.regmatch_t, ptr %133, i64 %128, i32 1
  store i64 %132, ptr %134, align 8, !tbaa !57
  br label %135

135:                                              ; preds = %57, %53, %43, %45, %74, %115, %119, %127, %38
  %136 = phi ptr [ %13, %38 ], [ %46, %45 ], [ %61, %74 ], [ %80, %115 ], [ %13, %119 ], [ %44, %43 ], [ %13, %127 ], [ %49, %53 ], [ %49, %57 ]
  %137 = icmp slt i64 %40, %4
  br i1 %137, label %12, label %138, !llvm.loop !143

138:                                              ; preds = %135, %5
  %139 = phi ptr [ %1, %5 ], [ %136, %135 ]
  ret ptr %139
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @lbackref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #7 !prof !115 {
  br label %7

7:                                                ; preds = %289, %282, %271, %268, %262, %6
  %8 = phi ptr [ %1, %6 ], [ %263, %262 ], [ %218, %268 ], [ %218, %271 ], [ %218, %282 ], [ %218, %289 ]
  %9 = phi i64 [ %3, %6 ], [ %264, %262 ], [ %270, %268 ], [ %219, %271 ], [ %219, %282 ], [ %219, %289 ]
  %10 = phi i64 [ %5, %6 ], [ %10, %262 ], [ %10, %268 ], [ %274, %271 ], [ %283, %282 ], [ %290, %289 ]
  %11 = icmp slt i64 %9, %4
  br i1 %11, label %12, label %217

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 4
  br label %23

23:                                               ; preds = %12, %209
  %24 = phi i32 [ 0, %12 ], [ %212, %209 ]
  %25 = phi i64 [ %9, %12 ], [ %213, %209 ]
  %26 = phi ptr [ %8, %12 ], [ %210, %209 ]
  %27 = getelementptr inbounds i64, ptr %15, i64 %25
  %28 = load i64, ptr %27, align 8, !tbaa !91
  %29 = and i64 %28, 2080374784
  %30 = add nsw i64 %29, -134217728
  %31 = lshr exact i64 %30, 26
  switch i64 %31, label %208 [
    i64 0, label %32
    i64 3, label %42
    i64 4, label %46
    i64 1, label %62
    i64 2, label %83
    i64 17, label %101
    i64 18, label %150
    i64 10, label %209
    i64 14, label %195
  ]

32:                                               ; preds = %23
  %33 = icmp eq ptr %26, %2
  br i1 %33, label %353, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds i8, ptr %26, i64 1
  %36 = load i8, ptr %26, align 1, !tbaa !60
  %37 = sext i8 %36 to i32
  %38 = trunc i64 %28 to i32
  %39 = shl i32 %38, 24
  %40 = ashr exact i32 %39, 24
  %41 = icmp eq i32 %40, %37
  br i1 %41, label %209, label %353

42:                                               ; preds = %23
  %43 = icmp eq ptr %26, %2
  br i1 %43, label %353, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, ptr %26, i64 1
  br label %209

46:                                               ; preds = %23
  %47 = icmp eq ptr %26, %2
  br i1 %47, label %353, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %22, align 8, !tbaa !126
  %50 = and i64 %28, 67108863
  %51 = getelementptr inbounds %struct.cset, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !127
  %53 = getelementptr inbounds i8, ptr %26, i64 1
  %54 = load i8, ptr %26, align 1, !tbaa !60
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, ptr %52, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !60
  %58 = getelementptr inbounds %struct.cset, ptr %49, i64 %50, i32 1
  %59 = load i8, ptr %58, align 8, !tbaa !129
  %60 = and i8 %59, %57
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %353, label %209

62:                                               ; preds = %23
  %63 = load ptr, ptr %21, align 8, !tbaa !100
  %64 = icmp eq ptr %26, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !96
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %209, label %70

70:                                               ; preds = %65, %62
  %71 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !101
  %73 = icmp ult ptr %26, %72
  br i1 %73, label %74, label %353

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %26, i64 -1
  %76 = load i8, ptr %75, align 1, !tbaa !60
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %78, label %353

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !53
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %353, label %209

83:                                               ; preds = %23
  %84 = load ptr, ptr %20, align 8, !tbaa !101
  %85 = icmp eq ptr %26, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !96
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %209, label %91

91:                                               ; preds = %86, %83
  %92 = icmp ult ptr %26, %84
  br i1 %92, label %93, label %353

93:                                               ; preds = %91
  %94 = load i8, ptr %26, align 1, !tbaa !60
  %95 = icmp eq i8 %94, 10
  br i1 %95, label %96, label %353

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %98 = load i32, ptr %97, align 8, !tbaa !53
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %353, label %209

101:                                              ; preds = %23
  %102 = load ptr, ptr %18, align 8, !tbaa !100
  %103 = icmp eq ptr %26, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !96
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %136, label %109

109:                                              ; preds = %104, %101
  %110 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !101
  %112 = icmp ult ptr %26, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = getelementptr inbounds i8, ptr %26, i64 -1
  %115 = load i8, ptr %114, align 1, !tbaa !60
  %116 = icmp eq i8 %115, 10
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !53
  %120 = and i32 %119, 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117, %113, %109
  %123 = icmp ugt ptr %26, %102
  br i1 %123, label %124, label %353

124:                                              ; preds = %122
  %125 = tail call ptr @__ctype_b_loc() #16
  %126 = load ptr, ptr %125, align 8, !tbaa !78
  %127 = getelementptr inbounds i8, ptr %26, i64 -1
  %128 = load i8, ptr %127, align 1, !tbaa !60
  %129 = sext i8 %128 to i64
  %130 = getelementptr inbounds i16, ptr %126, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !79
  %132 = and i16 %131, 8
  %133 = icmp ne i16 %132, 0
  %134 = icmp eq i8 %128, 95
  %135 = or i1 %134, %133
  br i1 %135, label %353, label %136

136:                                              ; preds = %117, %124, %104
  %137 = load ptr, ptr %19, align 8, !tbaa !101
  %138 = icmp ult ptr %26, %137
  br i1 %138, label %139, label %353

139:                                              ; preds = %136
  %140 = tail call ptr @__ctype_b_loc() #16
  %141 = load ptr, ptr %140, align 8, !tbaa !78
  %142 = load i8, ptr %26, align 1, !tbaa !60
  %143 = sext i8 %142 to i64
  %144 = getelementptr inbounds i16, ptr %141, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !79
  %146 = and i16 %145, 8
  %147 = icmp ne i16 %146, 0
  %148 = icmp eq i8 %142, 95
  %149 = or i1 %148, %147
  br i1 %149, label %209, label %353

150:                                              ; preds = %23
  %151 = load ptr, ptr %16, align 8, !tbaa !101
  %152 = icmp eq ptr %26, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !96
  %156 = and i32 %155, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %180, label %158

158:                                              ; preds = %153, %150
  %159 = icmp ult ptr %26, %151
  br i1 %159, label %160, label %353

160:                                              ; preds = %158
  %161 = load i8, ptr %26, align 1, !tbaa !60
  %162 = icmp eq i8 %161, 10
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.re_guts, ptr %13, i64 0, i32 6
  %165 = load i32, ptr %164, align 8, !tbaa !53
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %163, %160
  br i1 %159, label %169, label %353

169:                                              ; preds = %168
  %170 = tail call ptr @__ctype_b_loc() #16
  %171 = load ptr, ptr %170, align 8, !tbaa !78
  %172 = load i8, ptr %26, align 1, !tbaa !60
  %173 = sext i8 %172 to i64
  %174 = getelementptr inbounds i16, ptr %171, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !79
  %176 = and i16 %175, 8
  %177 = icmp ne i16 %176, 0
  %178 = icmp eq i8 %172, 95
  %179 = or i1 %178, %177
  br i1 %179, label %353, label %180

180:                                              ; preds = %163, %169, %153
  %181 = load ptr, ptr %17, align 8, !tbaa !100
  %182 = icmp ugt ptr %26, %181
  br i1 %182, label %183, label %353

183:                                              ; preds = %180
  %184 = tail call ptr @__ctype_b_loc() #16
  %185 = load ptr, ptr %184, align 8, !tbaa !78
  %186 = getelementptr inbounds i8, ptr %26, i64 -1
  %187 = load i8, ptr %186, align 1, !tbaa !60
  %188 = sext i8 %187 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !79
  %191 = and i16 %190, 8
  %192 = icmp ne i16 %191, 0
  %193 = icmp eq i8 %187, 95
  %194 = or i1 %193, %192
  br i1 %194, label %209, label %353

195:                                              ; preds = %23
  %196 = add nsw i64 %25, 1
  %197 = getelementptr inbounds i64, ptr %15, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !91
  br label %199

199:                                              ; preds = %199, %195
  %200 = phi i64 [ %196, %195 ], [ %203, %199 ]
  %201 = phi i64 [ %198, %195 ], [ %205, %199 ]
  %202 = and i64 %201, 67108863
  %203 = add nsw i64 %202, %200
  %204 = getelementptr inbounds i64, ptr %15, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !91
  %206 = and i64 %205, 2080374784
  %207 = icmp eq i64 %206, 1207959552
  br i1 %207, label %209, label %199, !llvm.loop !144

208:                                              ; preds = %23
  br label %209

209:                                              ; preds = %199, %44, %23, %208, %34, %48, %65, %78, %86, %96, %139, %183
  %210 = phi ptr [ %26, %208 ], [ %26, %23 ], [ %26, %183 ], [ %26, %139 ], [ %26, %96 ], [ %26, %86 ], [ %26, %78 ], [ %26, %65 ], [ %53, %48 ], [ %45, %44 ], [ %35, %34 ], [ %26, %199 ]
  %211 = phi i64 [ %25, %208 ], [ %25, %23 ], [ %25, %183 ], [ %25, %139 ], [ %25, %96 ], [ %25, %86 ], [ %25, %78 ], [ %25, %65 ], [ %25, %48 ], [ %25, %44 ], [ %25, %34 ], [ %203, %199 ]
  %212 = phi i32 [ 1, %208 ], [ %24, %23 ], [ %24, %183 ], [ %24, %139 ], [ %24, %96 ], [ %24, %86 ], [ %24, %78 ], [ %24, %65 ], [ %24, %48 ], [ %24, %44 ], [ %24, %34 ], [ %24, %199 ]
  %213 = add nsw i64 %211, 1
  %214 = icmp eq i32 %212, 0
  %215 = icmp slt i64 %213, %4
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %23, label %217, !llvm.loop !145

217:                                              ; preds = %209, %7
  %218 = phi ptr [ %8, %7 ], [ %210, %209 ]
  %219 = phi i64 [ %9, %7 ], [ %213, %209 ]
  %220 = phi i1 [ true, %7 ], [ %214, %209 ]
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = icmp eq ptr %218, %2
  %223 = select i1 %222, ptr %218, ptr null
  br label %353

224:                                              ; preds = %217
  %225 = add nsw i64 %219, -1
  %226 = load ptr, ptr %0, align 8, !tbaa !94
  %227 = getelementptr inbounds %struct.re_guts, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !118
  %229 = getelementptr inbounds i64, ptr %228, i64 %225
  %230 = load i64, ptr %229, align 8, !tbaa !91
  %231 = and i64 %230, 2080374784
  %232 = add nsw i64 %231, -469762048
  %233 = lshr exact i64 %232, 26
  switch i64 %233, label %353 [
    i64 0, label %234
    i64 4, label %265
    i64 2, label %271
    i64 3, label %276
    i64 8, label %291
    i64 6, label %321
    i64 7, label %337
  ]

234:                                              ; preds = %224
  %235 = and i64 %230, 67108863
  %236 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !97
  %238 = getelementptr inbounds %struct.regmatch_t, ptr %237, i64 %235, i32 1
  %239 = load i64, ptr %238, align 8, !tbaa !57
  %240 = icmp eq i64 %239, -1
  br i1 %240, label %353, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.regmatch_t, ptr %237, i64 %235
  %243 = load i64, ptr %242, align 8, !tbaa !55
  %244 = sub nsw i64 %239, %243
  %245 = sub i64 0, %244
  %246 = getelementptr inbounds i8, ptr %2, i64 %245
  %247 = icmp ugt ptr %218, %246
  br i1 %247, label %353, label %248

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !99
  %251 = getelementptr inbounds i8, ptr %250, i64 %243
  %252 = tail call i32 @bcmp(ptr %218, ptr %251, i64 %244)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %353

254:                                              ; preds = %248
  %255 = or disjoint i64 %235, 536870912
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi i64 [ %261, %256 ], [ %225, %254 ]
  %258 = getelementptr inbounds i64, ptr %228, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !91
  %260 = icmp eq i64 %259, %255
  %261 = add nsw i64 %257, 1
  br i1 %260, label %262, label %256, !llvm.loop !146

262:                                              ; preds = %256
  %263 = getelementptr inbounds i8, ptr %218, i64 %244
  %264 = add nsw i64 %257, 1
  br label %7

265:                                              ; preds = %224
  %266 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %4, i64 noundef %10)
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %353

268:                                              ; preds = %265
  %269 = and i64 %230, 67108863
  %270 = add i64 %269, %219
  br label %7

271:                                              ; preds = %224
  %272 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 7
  %273 = load ptr, ptr %272, align 8, !tbaa !98
  %274 = add nsw i64 %10, 1
  %275 = getelementptr inbounds ptr, ptr %273, i64 %274
  store ptr %218, ptr %275, align 8, !tbaa !78
  br label %7

276:                                              ; preds = %224
  %277 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 7
  %278 = load ptr, ptr %277, align 8, !tbaa !98
  %279 = getelementptr inbounds ptr, ptr %278, i64 %10
  %280 = load ptr, ptr %279, align 8, !tbaa !78
  %281 = icmp eq ptr %218, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = add nsw i64 %10, -1
  br label %7

284:                                              ; preds = %276
  store ptr %218, ptr %279, align 8, !tbaa !78
  %285 = and i64 %230, 67108863
  %286 = sub i64 %219, %285
  %287 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %286, i64 noundef %4, i64 noundef %10)
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %353

289:                                              ; preds = %284
  %290 = add nsw i64 %10, -1
  br label %7

291:                                              ; preds = %224
  %292 = and i64 %230, 67108863
  %293 = add i64 %219, -2
  %294 = add i64 %293, %292
  %295 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %294, i64 noundef %10)
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %353

297:                                              ; preds = %291, %306
  %298 = phi i64 [ %318, %306 ], [ %294, %291 ]
  %299 = load ptr, ptr %0, align 8, !tbaa !94
  %300 = getelementptr inbounds %struct.re_guts, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !118
  %302 = getelementptr inbounds i64, ptr %301, i64 %298
  %303 = load i64, ptr %302, align 8, !tbaa !91
  %304 = and i64 %303, 2080374784
  %305 = icmp eq i64 %304, 1207959552
  br i1 %305, label %353, label %306

306:                                              ; preds = %297
  %307 = add nsw i64 %298, 1
  %308 = add nsw i64 %298, 2
  %309 = getelementptr inbounds i64, ptr %301, i64 %307
  %310 = load i64, ptr %309, align 8, !tbaa !91
  %311 = and i64 %310, 67108863
  %312 = add nsw i64 %311, %307
  %313 = getelementptr inbounds i64, ptr %301, i64 %312
  %314 = load i64, ptr %313, align 8, !tbaa !91
  %315 = and i64 %314, 2080374784
  %316 = icmp eq i64 %315, 1140850688
  %317 = add i64 %311, %298
  %318 = select i1 %316, i64 %317, i64 %312
  %319 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %308, i64 noundef %318, i64 noundef %10)
  %320 = icmp eq ptr %319, null
  br i1 %320, label %297, label %353, !llvm.loop !147

321:                                              ; preds = %224
  %322 = and i64 %230, 67108863
  %323 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !97
  %325 = getelementptr inbounds %struct.regmatch_t, ptr %324, i64 %322
  %326 = load i64, ptr %325, align 8, !tbaa !55
  %327 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 3
  %328 = load ptr, ptr %327, align 8, !tbaa !99
  %329 = ptrtoint ptr %218 to i64
  %330 = ptrtoint ptr %328 to i64
  %331 = sub i64 %329, %330
  store i64 %331, ptr %325, align 8, !tbaa !55
  %332 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %4, i64 noundef %10)
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %353

334:                                              ; preds = %321
  %335 = load ptr, ptr %323, align 8, !tbaa !97
  %336 = getelementptr inbounds %struct.regmatch_t, ptr %335, i64 %322
  store i64 %326, ptr %336, align 8, !tbaa !55
  br label %353

337:                                              ; preds = %224
  %338 = and i64 %230, 67108863
  %339 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !97
  %341 = getelementptr inbounds %struct.regmatch_t, ptr %340, i64 %338, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !57
  %343 = getelementptr inbounds %struct.lmat, ptr %0, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !99
  %345 = ptrtoint ptr %218 to i64
  %346 = ptrtoint ptr %344 to i64
  %347 = sub i64 %345, %346
  store i64 %347, ptr %341, align 8, !tbaa !57
  %348 = tail call fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %218, ptr noundef %2, i64 noundef %219, i64 noundef %4, i64 noundef %10)
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %337
  %351 = load ptr, ptr %339, align 8, !tbaa !97
  %352 = getelementptr inbounds %struct.regmatch_t, ptr %351, i64 %338, i32 1
  store i64 %342, ptr %352, align 8, !tbaa !57
  br label %353

353:                                              ; preds = %158, %183, %169, %168, %139, %124, %122, %96, %91, %78, %70, %34, %180, %136, %93, %74, %46, %48, %42, %32, %306, %297, %291, %224, %337, %321, %284, %265, %248, %241, %234, %221, %350, %334
  %354 = phi ptr [ null, %350 ], [ null, %334 ], [ %223, %221 ], [ null, %234 ], [ null, %241 ], [ null, %248 ], [ %266, %265 ], [ %287, %284 ], [ %332, %321 ], [ %348, %337 ], [ null, %224 ], [ %295, %291 ], [ null, %297 ], [ %319, %306 ], [ null, %32 ], [ null, %42 ], [ null, %48 ], [ null, %46 ], [ null, %74 ], [ null, %93 ], [ null, %136 ], [ null, %180 ], [ null, %34 ], [ null, %70 ], [ null, %78 ], [ null, %91 ], [ null, %96 ], [ null, %122 ], [ null, %124 ], [ null, %139 ], [ null, %168 ], [ null, %169 ], [ null, %183 ], [ null, %158 ]
  ret ptr %354
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @lstep(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef returned %5) unnamed_addr #12 !prof !115 {
  %7 = getelementptr i8, ptr %5, i64 1
  %8 = getelementptr i8, ptr %5, i64 1
  %9 = getelementptr i8, ptr %5, i64 1
  %10 = getelementptr i8, ptr %5, i64 1
  %11 = getelementptr i8, ptr %5, i64 1
  %12 = getelementptr i8, ptr %5, i64 1
  %13 = getelementptr i8, ptr %5, i64 1
  %14 = icmp eq i64 %1, %2
  br i1 %14, label %237, label %15

15:                                               ; preds = %6
  %16 = trunc i64 %1 to i32
  %17 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 1
  %18 = icmp sgt i32 %4, 127
  %19 = icmp sgt i32 %4, 127
  %20 = icmp eq i32 %4, 134
  %21 = icmp eq i32 %4, 133
  %22 = and i32 %4, -2
  %23 = icmp eq i32 %22, 130
  %24 = and i32 %4, -3
  %25 = icmp eq i32 %24, 129
  br label %26

26:                                               ; preds = %15, %231
  %27 = phi i32 [ %16, %15 ], [ %235, %231 ]
  %28 = phi i64 [ %1, %15 ], [ %234, %231 ]
  %29 = load ptr, ptr %17, align 8, !tbaa !118
  %30 = getelementptr inbounds i64, ptr %29, i64 %28
  %31 = load i64, ptr %30, align 8, !tbaa !91
  %32 = and i64 %31, 2080374784
  %33 = add nsw i64 %32, -67108864
  %34 = lshr exact i64 %33, 26
  switch i64 %34, label %231 [
    i64 17, label %224
    i64 1, label %35
    i64 2, label %47
    i64 3, label %55
    i64 18, label %63
    i64 19, label %71
    i64 4, label %79
    i64 5, label %87
    i64 6, label %109
    i64 7, label %109
    i64 8, label %116
    i64 9, label %123
    i64 10, label %142
    i64 11, label %154
    i64 12, label %161
    i64 13, label %161
    i64 14, label %168
    i64 15, label %180
    i64 16, label %205
  ]

35:                                               ; preds = %26
  %36 = trunc i64 %31 to i32
  %37 = shl i32 %36, 24
  %38 = ashr exact i32 %37, 24
  %39 = icmp eq i32 %38, %4
  br i1 %39, label %40, label %231

40:                                               ; preds = %35
  %41 = sext i32 %27 to i64
  %42 = getelementptr inbounds i8, ptr %3, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !60
  %44 = getelementptr i8, ptr %13, i64 %41
  %45 = load i8, ptr %44, align 1, !tbaa !60
  %46 = or i8 %45, %43
  store i8 %46, ptr %44, align 1, !tbaa !60
  br label %231

47:                                               ; preds = %26
  br i1 %25, label %48, label %231

48:                                               ; preds = %47
  %49 = sext i32 %27 to i64
  %50 = getelementptr inbounds i8, ptr %3, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !60
  %52 = getelementptr i8, ptr %12, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !60
  %54 = or i8 %53, %51
  store i8 %54, ptr %52, align 1, !tbaa !60
  br label %231

55:                                               ; preds = %26
  br i1 %23, label %56, label %231

56:                                               ; preds = %55
  %57 = sext i32 %27 to i64
  %58 = getelementptr inbounds i8, ptr %3, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !60
  %60 = getelementptr i8, ptr %11, i64 %57
  %61 = load i8, ptr %60, align 1, !tbaa !60
  %62 = or i8 %61, %59
  store i8 %62, ptr %60, align 1, !tbaa !60
  br label %231

63:                                               ; preds = %26
  br i1 %21, label %64, label %231

64:                                               ; preds = %63
  %65 = sext i32 %27 to i64
  %66 = getelementptr inbounds i8, ptr %3, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !60
  %68 = getelementptr i8, ptr %10, i64 %65
  %69 = load i8, ptr %68, align 1, !tbaa !60
  %70 = or i8 %69, %67
  store i8 %70, ptr %68, align 1, !tbaa !60
  br label %231

71:                                               ; preds = %26
  br i1 %20, label %72, label %231

72:                                               ; preds = %71
  %73 = sext i32 %27 to i64
  %74 = getelementptr inbounds i8, ptr %3, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !60
  %76 = getelementptr i8, ptr %9, i64 %73
  %77 = load i8, ptr %76, align 1, !tbaa !60
  %78 = or i8 %77, %75
  store i8 %78, ptr %76, align 1, !tbaa !60
  br label %231

79:                                               ; preds = %26
  br i1 %19, label %231, label %80

80:                                               ; preds = %79
  %81 = sext i32 %27 to i64
  %82 = getelementptr inbounds i8, ptr %3, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !60
  %84 = getelementptr i8, ptr %8, i64 %81
  %85 = load i8, ptr %84, align 1, !tbaa !60
  %86 = or i8 %85, %83
  store i8 %86, ptr %84, align 1, !tbaa !60
  br label %231

87:                                               ; preds = %26
  br i1 %18, label %231, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.re_guts, ptr %0, i64 0, i32 4
  %90 = and i32 %4, 255
  %91 = zext nneg i32 %90 to i64
  %92 = load ptr, ptr %89, align 8, !tbaa !126
  %93 = and i64 %31, 67108863
  %94 = getelementptr inbounds %struct.cset, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !127
  %96 = getelementptr inbounds i8, ptr %95, i64 %91
  %97 = load i8, ptr %96, align 1, !tbaa !60
  %98 = getelementptr inbounds %struct.cset, ptr %92, i64 %93, i32 1
  %99 = load i8, ptr %98, align 8, !tbaa !129
  %100 = and i8 %99, %97
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %231, label %102

102:                                              ; preds = %88
  %103 = sext i32 %27 to i64
  %104 = getelementptr inbounds i8, ptr %3, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !60
  %106 = getelementptr i8, ptr %7, i64 %103
  %107 = load i8, ptr %106, align 1, !tbaa !60
  %108 = or i8 %107, %105
  store i8 %108, ptr %106, align 1, !tbaa !60
  br label %231

109:                                              ; preds = %26, %26
  %110 = sext i32 %27 to i64
  %111 = getelementptr inbounds i8, ptr %5, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !60
  %113 = getelementptr i8, ptr %111, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !60
  %115 = or i8 %114, %112
  store i8 %115, ptr %113, align 1, !tbaa !60
  br label %231

116:                                              ; preds = %26
  %117 = sext i32 %27 to i64
  %118 = getelementptr inbounds i8, ptr %5, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !60
  %120 = getelementptr i8, ptr %118, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !60
  %122 = or i8 %121, %119
  store i8 %122, ptr %120, align 1, !tbaa !60
  br label %231

123:                                              ; preds = %26
  %124 = sext i32 %27 to i64
  %125 = getelementptr inbounds i8, ptr %5, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !60
  %127 = getelementptr i8, ptr %125, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !60
  %129 = or i8 %128, %126
  store i8 %129, ptr %127, align 1, !tbaa !60
  %130 = and i64 %31, 67108863
  %131 = sub nsw i64 %124, %130
  %132 = getelementptr inbounds i8, ptr %5, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !60
  %134 = or i8 %133, %126
  store i8 %134, ptr %132, align 1, !tbaa !60
  %135 = icmp ne i8 %133, 0
  %136 = icmp eq i8 %134, 0
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %231, label %138

138:                                              ; preds = %123
  %139 = xor i64 %130, -1
  %140 = add i64 %28, %139
  %141 = trunc i64 %140 to i32
  br label %231

142:                                              ; preds = %26
  %143 = sext i32 %27 to i64
  %144 = getelementptr inbounds i8, ptr %5, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !60
  %146 = getelementptr i8, ptr %144, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !60
  %148 = or i8 %147, %145
  store i8 %148, ptr %146, align 1, !tbaa !60
  %149 = and i64 %31, 67108863
  %150 = getelementptr i8, ptr %5, i64 %149
  %151 = getelementptr i8, ptr %150, i64 %143
  %152 = load i8, ptr %151, align 1, !tbaa !60
  %153 = or i8 %152, %145
  store i8 %153, ptr %151, align 1, !tbaa !60
  br label %231

154:                                              ; preds = %26
  %155 = sext i32 %27 to i64
  %156 = getelementptr inbounds i8, ptr %5, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !60
  %158 = getelementptr i8, ptr %156, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !60
  %160 = or i8 %159, %157
  store i8 %160, ptr %158, align 1, !tbaa !60
  br label %231

161:                                              ; preds = %26, %26
  %162 = sext i32 %27 to i64
  %163 = getelementptr inbounds i8, ptr %5, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !60
  %165 = getelementptr i8, ptr %163, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !60
  %167 = or i8 %166, %164
  store i8 %167, ptr %165, align 1, !tbaa !60
  br label %231

168:                                              ; preds = %26
  %169 = sext i32 %27 to i64
  %170 = getelementptr inbounds i8, ptr %5, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !60
  %172 = getelementptr i8, ptr %170, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !60
  %174 = or i8 %173, %171
  store i8 %174, ptr %172, align 1, !tbaa !60
  %175 = and i64 %31, 67108863
  %176 = getelementptr i8, ptr %5, i64 %175
  %177 = getelementptr i8, ptr %176, i64 %169
  %178 = load i8, ptr %177, align 1, !tbaa !60
  %179 = or i8 %178, %171
  store i8 %179, ptr %177, align 1, !tbaa !60
  br label %231

180:                                              ; preds = %26
  %181 = sext i32 %27 to i64
  %182 = getelementptr inbounds i8, ptr %5, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !60
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %231, label %185

185:                                              ; preds = %180
  %186 = getelementptr i64, ptr %30, i64 1
  %187 = load i64, ptr %186, align 8, !tbaa !91
  %188 = and i64 %187, 2080374784
  %189 = icmp eq i64 %188, 1207959552
  br i1 %189, label %199, label %190

190:                                              ; preds = %185, %190
  %191 = phi i64 [ %196, %190 ], [ %187, %185 ]
  %192 = phi i64 [ %194, %190 ], [ 1, %185 ]
  %193 = and i64 %191, 67108863
  %194 = add nuw nsw i64 %193, %192
  %195 = getelementptr i64, ptr %30, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !91
  %197 = and i64 %196, 2080374784
  %198 = icmp eq i64 %197, 1207959552
  br i1 %198, label %199, label %190, !llvm.loop !148

199:                                              ; preds = %190, %185
  %200 = phi i64 [ 1, %185 ], [ %194, %190 ]
  %201 = getelementptr i8, ptr %5, i64 %200
  %202 = getelementptr i8, ptr %201, i64 %181
  %203 = load i8, ptr %202, align 1, !tbaa !60
  %204 = or i8 %203, %183
  store i8 %204, ptr %202, align 1, !tbaa !60
  br label %231

205:                                              ; preds = %26
  %206 = sext i32 %27 to i64
  %207 = getelementptr inbounds i8, ptr %5, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !60
  %209 = getelementptr i8, ptr %207, i64 1
  %210 = load i8, ptr %209, align 1, !tbaa !60
  %211 = or i8 %210, %208
  store i8 %211, ptr %209, align 1, !tbaa !60
  %212 = load ptr, ptr %17, align 8, !tbaa !118
  %213 = and i64 %31, 67108863
  %214 = getelementptr i64, ptr %212, i64 %28
  %215 = getelementptr i64, ptr %214, i64 %213
  %216 = load i64, ptr %215, align 8, !tbaa !91
  %217 = and i64 %216, 2080374784
  %218 = icmp eq i64 %217, 1207959552
  br i1 %218, label %231, label %219

219:                                              ; preds = %205
  %220 = getelementptr i8, ptr %5, i64 %213
  %221 = getelementptr i8, ptr %220, i64 %206
  %222 = load i8, ptr %221, align 1, !tbaa !60
  %223 = or i8 %222, %208
  store i8 %223, ptr %221, align 1, !tbaa !60
  br label %231

224:                                              ; preds = %26
  %225 = sext i32 %27 to i64
  %226 = getelementptr inbounds i8, ptr %5, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !60
  %228 = getelementptr i8, ptr %226, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !60
  %230 = or i8 %229, %227
  store i8 %230, ptr %228, align 1, !tbaa !60
  br label %231

231:                                              ; preds = %109, %116, %142, %154, %161, %168, %224, %40, %35, %47, %48, %55, %56, %64, %63, %72, %71, %80, %79, %102, %88, %87, %138, %123, %199, %180, %219, %205, %26
  %232 = phi i64 [ %28, %26 ], [ %28, %219 ], [ %28, %205 ], [ %28, %199 ], [ %28, %180 ], [ %28, %168 ], [ %28, %161 ], [ %28, %154 ], [ %28, %142 ], [ %28, %123 ], [ %140, %138 ], [ %28, %116 ], [ %28, %109 ], [ %28, %87 ], [ %28, %102 ], [ %28, %88 ], [ %28, %79 ], [ %28, %80 ], [ %28, %72 ], [ %28, %71 ], [ %28, %64 ], [ %28, %63 ], [ %28, %56 ], [ %28, %55 ], [ %28, %48 ], [ %28, %47 ], [ %28, %40 ], [ %28, %35 ], [ %28, %224 ]
  %233 = phi i32 [ %27, %26 ], [ %27, %219 ], [ %27, %205 ], [ %27, %199 ], [ %27, %180 ], [ %27, %168 ], [ %27, %161 ], [ %27, %154 ], [ %27, %142 ], [ %27, %123 ], [ %141, %138 ], [ %27, %116 ], [ %27, %109 ], [ %27, %87 ], [ %27, %102 ], [ %27, %88 ], [ %27, %79 ], [ %27, %80 ], [ %27, %72 ], [ %27, %71 ], [ %27, %64 ], [ %27, %63 ], [ %27, %56 ], [ %27, %55 ], [ %27, %48 ], [ %27, %47 ], [ %27, %40 ], [ %27, %35 ], [ %27, %224 ]
  %234 = add nsw i64 %232, 1
  %235 = add nsw i32 %233, 1
  %236 = icmp eq i64 %234, %2
  br i1 %236, label %237, label %26, !llvm.loop !149

237:                                              ; preds = %231, %6
  ret ptr %5
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @regexec, ptr @strlen, i64 38060}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 38060}
!38 = !{!39, !44, i64 24}
!39 = !{!"", !40, i64 0, !43, i64 8, !44, i64 16, !44, i64 24}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"long", !41, i64 0}
!44 = !{!"any pointer", !41, i64 0}
!45 = !{!39, !40, i64 0}
!46 = !{!"branch_weights", i32 38060, i32 0}
!47 = !{!48, !40, i64 0}
!48 = !{!"re_guts", !40, i64 0, !44, i64 8, !40, i64 16, !40, i64 20, !44, i64 24, !44, i64 32, !40, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !44, i64 88, !44, i64 96, !40, i64 104, !43, i64 112, !40, i64 120, !43, i64 128, !41, i64 136}
!49 = !{!48, !40, i64 72}
!50 = !{!48, !43, i64 48}
!51 = !{!48, !43, i64 56}
!52 = !{!48, !43, i64 64}
!53 = !{!48, !40, i64 40}
!54 = !{!"branch_weights", i32 0, i32 38060}
!55 = !{!56, !43, i64 0}
!56 = !{!"", !43, i64 0, !43, i64 8}
!57 = !{!56, !43, i64 8}
!58 = !{!48, !44, i64 96}
!59 = !{!"branch_weights", i32 38059, i32 1}
!60 = !{!41, !41, i64 0}
!61 = !{!"branch_weights", i32 1132, i32 86904}
!62 = !{!48, !40, i64 104}
!63 = !{!"branch_weights", i32 1132, i32 0}
!64 = !{!"branch_weights", i32 49977, i32 38059}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!69, !44, i64 0}
!69 = !{!"smat", !44, i64 0, !40, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80}
!70 = !{!69, !40, i64 8}
!71 = !{!69, !44, i64 16}
!72 = !{!69, !44, i64 56}
!73 = !{!69, !44, i64 24}
!74 = !{!69, !44, i64 32}
!75 = !{!69, !44, i64 40}
!76 = !{!48, !40, i64 76}
!77 = !{!48, !40, i64 80}
!78 = !{!44, !44, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"short", !41, i64 0}
!81 = distinct !{!81, !67}
!82 = !{!69, !44, i64 48}
!83 = !{!48, !40, i64 120}
!84 = distinct !{!84, !67}
!85 = !{!48, !43, i64 112}
!86 = distinct !{!86, !66, !67}
!87 = !{!48, !43, i64 128}
!88 = distinct !{!88, !67}
!89 = distinct !{!89, !67}
!90 = !{i64 0, i64 8, !91, i64 8, i64 8, !91}
!91 = !{!43, !43, i64 0}
!92 = distinct !{!92, !66, !67}
!93 = distinct !{!93, !66, !67}
!94 = !{!95, !44, i64 0}
!95 = !{!"lmat", !44, i64 0, !40, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !40, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104}
!96 = !{!95, !40, i64 8}
!97 = !{!95, !44, i64 16}
!98 = !{!95, !44, i64 56}
!99 = !{!95, !44, i64 24}
!100 = !{!95, !44, i64 32}
!101 = !{!95, !44, i64 40}
!102 = !{!95, !44, i64 72}
!103 = !{!95, !40, i64 64}
!104 = !{!95, !44, i64 80}
!105 = !{!95, !44, i64 88}
!106 = !{!95, !44, i64 96}
!107 = !{!95, !44, i64 104}
!108 = distinct !{!108, !67}
!109 = !{!95, !44, i64 48}
!110 = distinct !{!110, !67}
!111 = distinct !{!111, !66, !67}
!112 = distinct !{!112, !67}
!113 = distinct !{!113, !67}
!114 = distinct !{!114, !66, !67}
!115 = !{!"function_entry_count", i64 0}
!116 = !{!69, !40, i64 80}
!117 = distinct !{!117, !67}
!118 = !{!48, !44, i64 8}
!119 = distinct !{!119, !66, !67}
!120 = distinct !{!120, !67}
!121 = distinct !{!121, !67}
!122 = distinct !{!122, !67}
!123 = distinct !{!123, !67}
!124 = distinct !{!124, !67}
!125 = distinct !{!125, !66, !67}
!126 = !{!48, !44, i64 24}
!127 = !{!128, !44, i64 0}
!128 = !{!"", !44, i64 0, !41, i64 8, !41, i64 9, !43, i64 16, !44, i64 24}
!129 = !{!128, !41, i64 8}
!130 = distinct !{!130, !66, !67}
!131 = distinct !{!131, !66, !67}
!132 = distinct !{!132, !66, !67}
!133 = distinct !{!133, !67}
!134 = distinct !{!134, !66, !67}
!135 = distinct !{!135, !66, !67}
!136 = distinct !{!136, !67}
!137 = distinct !{!137, !66, !67}
!138 = distinct !{!138, !67}
!139 = distinct !{!139, !67}
!140 = distinct !{!140, !67}
!141 = distinct !{!141, !67}
!142 = distinct !{!142, !67}
!143 = distinct !{!143, !66, !67}
!144 = distinct !{!144, !66, !67}
!145 = distinct !{!145, !66, !67}
!146 = distinct !{!146, !66, !67}
!147 = distinct !{!147, !67}
!148 = distinct !{!148, !66, !67}
!149 = distinct !{!149, !66, !67}
