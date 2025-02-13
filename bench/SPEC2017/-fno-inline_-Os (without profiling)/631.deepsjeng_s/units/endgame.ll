; ModuleID = 'endgame.cpp'
source_filename = "endgame.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@BlackSqMask = external local_unnamed_addr global i64, align 8
@KingSafetyMask = external local_unnamed_addr global [64 x i64], align 16
@FileMask = external local_unnamed_addr global [8 x i64], align 16
@WhiteSqMask = external local_unnamed_addr global i64, align 8
@Mask = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = icmp eq i32 %15, 0
  br i1 %13, label %17, label %473

17:                                               ; preds = %4
  br i1 %16, label %18, label %374

18:                                               ; preds = %17
  %19 = icmp sgt i32 %2, %3
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = icmp sgt i32 %3, %2
  br i1 %21, label %22, label %29

22:                                               ; preds = %20, %18
  %23 = phi i32 [ -15, %18 ], [ 15, %20 ]
  %24 = phi i32 [ 120, %18 ], [ -120, %20 ]
  %25 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %6, i32 noundef %8) #4
  %26 = mul i32 %25, %23
  %27 = add i32 %24, %1
  %28 = add i32 %27, %26
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi i32 [ %1, %20 ], [ %28, %22 ]
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %32 = load i32, ptr %31, align 4, !tbaa !14
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %34 = load i32, ptr %33, align 4, !tbaa !14
  %35 = shl nsw i32 %34, 1
  %36 = add nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %38 = load i32, ptr %37, align 4, !tbaa !14
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %40 = load i32, ptr %39, align 4, !tbaa !14
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %41, %38
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !14
  %47 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %48 = load i32, ptr %47, align 4, !tbaa !14
  %49 = add nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %51 = load i32, ptr %50, align 4, !tbaa !14
  %52 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !14
  %54 = add nsw i32 %53, %51
  %55 = sub nsw i32 %49, %54
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %44
  %58 = icmp eq i32 %48, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = icmp ne i32 %51, 1
  %61 = icmp sgt i32 %30, 0
  %62 = and i1 %60, %61
  br i1 %62, label %65, label %67

63:                                               ; preds = %57
  %64 = icmp sgt i32 %30, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %63
  %66 = lshr i32 %30, 3
  br label %67

67:                                               ; preds = %59, %65, %63, %44
  %68 = phi i32 [ %66, %65 ], [ %30, %63 ], [ %30, %59 ], [ %30, %44 ]
  %69 = sub nsw i32 %54, %49
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = icmp eq i32 %53, 2
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = icmp ne i32 %46, 1
  %75 = icmp slt i32 %68, 0
  %76 = and i1 %74, %75
  br i1 %76, label %79, label %81

77:                                               ; preds = %71
  %78 = icmp slt i32 %68, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73, %77
  %80 = ashr i32 %68, 3
  br label %81

81:                                               ; preds = %67, %77, %79, %73, %29
  %82 = phi i32 [ %80, %79 ], [ %68, %77 ], [ %68, %73 ], [ %68, %67 ], [ %30, %29 ]
  %83 = icmp ne i32 %32, 0
  %84 = or i32 %38, %32
  %85 = icmp eq i32 %84, 0
  %86 = or i32 %40, %34
  %87 = icmp eq i32 %86, 0
  br i1 %85, label %88, label %230

88:                                               ; preds = %81
  br i1 %87, label %89, label %346

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %91 = load i32, ptr %90, align 4, !tbaa !14
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %95 = load i32, ptr %94, align 4, !tbaa !14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !14
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %142

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %103 = load i32, ptr %102, align 4, !tbaa !14
  %104 = icmp slt i32 %103, 3
  %105 = select i1 %104, i32 0, i32 %82
  br label %142

106:                                              ; preds = %93, %89
  %107 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %108 = load i32, ptr %107, align 4, !tbaa !14
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %112 = load i32, ptr %111, align 4, !tbaa !14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %116 = load i32, ptr %115, align 4, !tbaa !14
  %117 = sub nsw i32 %116, %91
  %118 = tail call i32 @llvm.abs.i32(i32 %117, i1 true)
  %119 = icmp ult i32 %118, 2
  %120 = select i1 %119, i32 0, i32 %82
  br label %140

121:                                              ; preds = %106
  %122 = icmp slt i32 %108, 3
  br i1 %122, label %123, label %140

123:                                              ; preds = %110, %121
  %124 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %125 = load i32, ptr %124, align 4, !tbaa !14
  %126 = icmp ne i32 %125, 0
  %127 = icmp ne i32 %125, 1
  %128 = or i1 %109, %127
  %129 = and i1 %126, %128
  br i1 %129, label %140, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %132 = load i32, ptr %131, align 4, !tbaa !14
  %133 = icmp sgt i32 %132, 2
  %134 = or i1 %92, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = icmp eq i32 %91, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = icmp eq i32 %132, 0
  %139 = select i1 %138, i32 0, i32 %82
  br label %185

140:                                              ; preds = %123, %121, %114, %135
  %141 = phi i32 [ %82, %135 ], [ %120, %114 ], [ %82, %121 ], [ %82, %123 ]
  br i1 %92, label %185, label %142

142:                                              ; preds = %130, %97, %101, %140
  %143 = phi i32 [ %108, %140 ], [ %99, %101 ], [ %99, %97 ], [ %108, %130 ]
  %144 = phi i32 [ %141, %140 ], [ %105, %101 ], [ %82, %97 ], [ 0, %130 ]
  %145 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %146 = load i32, ptr %145, align 4, !tbaa !14
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %150 = load i32, ptr %149, align 4, !tbaa !14
  %151 = icmp eq i32 %150, 1
  %152 = icmp eq i32 %143, 1
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %573

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %156 = load i64, ptr %155, align 8, !tbaa !15
  %157 = load i64, ptr @BlackSqMask, align 8, !tbaa !15
  %158 = and i64 %157, %156
  %159 = icmp eq i64 %158, 0
  %160 = add i32 %144, 240
  br i1 %159, label %173, label %161

161:                                              ; preds = %154
  %162 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %8) #4
  %163 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %8) #4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %8) #4
  %167 = mul i32 %166, -30
  %168 = add i32 %160, %167
  br label %573

169:                                              ; preds = %161
  %170 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %8) #4
  %171 = mul i32 %170, -30
  %172 = add i32 %160, %171
  br label %573

173:                                              ; preds = %154
  %174 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %8) #4
  %175 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %8) #4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %8) #4
  %179 = mul i32 %178, -30
  %180 = add i32 %160, %179
  br label %573

181:                                              ; preds = %173
  %182 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %8) #4
  %183 = mul i32 %182, -30
  %184 = add i32 %160, %183
  br label %573

185:                                              ; preds = %137, %142, %140
  %186 = phi i32 [ %143, %142 ], [ %108, %140 ], [ %108, %137 ]
  %187 = phi i32 [ %144, %142 ], [ %141, %140 ], [ %139, %137 ]
  %188 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %189 = load i32, ptr %188, align 4, !tbaa !14
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %573

191:                                              ; preds = %185
  %192 = icmp eq i32 %186, 0
  %193 = icmp eq i32 %91, 1
  %194 = and i1 %193, %192
  br i1 %194, label %195, label %573

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %197 = load i32, ptr %196, align 4, !tbaa !14
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %573

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %201 = load i64, ptr %200, align 8, !tbaa !15
  %202 = load i64, ptr @BlackSqMask, align 8, !tbaa !15
  %203 = and i64 %202, %201
  %204 = icmp eq i64 %203, 0
  %205 = add i32 %187, -240
  br i1 %204, label %218, label %206

206:                                              ; preds = %199
  %207 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %6) #4
  %208 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %6) #4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %6) #4
  %212 = mul i32 %211, 30
  %213 = add i32 %205, %212
  br label %573

214:                                              ; preds = %206
  %215 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %6) #4
  %216 = mul i32 %215, 30
  %217 = add i32 %205, %216
  br label %573

218:                                              ; preds = %199
  %219 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %6) #4
  %220 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %6) #4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %6) #4
  %224 = mul i32 %223, 30
  %225 = add i32 %205, %224
  br label %573

226:                                              ; preds = %218
  %227 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %6) #4
  %228 = mul i32 %227, 30
  %229 = add i32 %205, %228
  br label %573

230:                                              ; preds = %81
  br i1 %87, label %231, label %346

231:                                              ; preds = %230
  %232 = icmp eq i32 %32, 1
  %233 = icmp eq i32 %38, 0
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %280

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %237 = load i32, ptr %236, align 4, !tbaa !14
  %238 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %239 = load i32, ptr %238, align 4, !tbaa !14
  %240 = sub i32 0, %239
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %247, label %242

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %244 = load i32, ptr %243, align 4, !tbaa !14
  %245 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %246 = load i32, ptr %245, align 4, !tbaa !14
  br label %269

247:                                              ; preds = %235
  %248 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %249 = load i32, ptr %248, align 4, !tbaa !14
  %250 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %251 = load i32, ptr %250, align 4, !tbaa !14
  %252 = add i32 %249, -1
  %253 = add i32 %252, %251
  %254 = icmp ult i32 %253, 2
  br i1 %254, label %255, label %269

255:                                              ; preds = %247
  %256 = ashr i32 %82, 3
  %257 = sext i32 %8 to i64
  %258 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !15
  %260 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %261 = load i64, ptr %260, align 8, !tbaa !15
  %262 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %263 = load i64, ptr %262, align 8, !tbaa !15
  %264 = or i64 %263, %261
  %265 = and i64 %264, %259
  %266 = icmp eq i64 %265, 0
  %267 = add nsw i32 %256, 20
  %268 = select i1 %266, i32 %267, i32 %256
  br label %573

269:                                              ; preds = %242, %247
  %270 = phi i32 [ %246, %242 ], [ %249, %247 ]
  %271 = phi i32 [ %244, %242 ], [ %251, %247 ]
  %272 = add i32 %239, %237
  %273 = sub i32 %271, %272
  %274 = add i32 %273, %270
  %275 = icmp eq i32 %274, 1
  %276 = icmp sgt i32 %82, 0
  %277 = select i1 %275, i1 %276, i1 false
  %278 = lshr i32 %82, 2
  %279 = select i1 %277, i32 %278, i32 %82
  br label %573

280:                                              ; preds = %231
  %281 = icmp ne i32 %38, 1
  %282 = or i1 %83, %281
  br i1 %282, label %328, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %285 = load i32, ptr %284, align 4, !tbaa !14
  %286 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %287 = load i32, ptr %286, align 4, !tbaa !14
  %288 = sub i32 0, %287
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %292 = load i32, ptr %291, align 4, !tbaa !14
  %293 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %294 = load i32, ptr %293, align 4, !tbaa !14
  br label %317

295:                                              ; preds = %283
  %296 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %297 = load i32, ptr %296, align 4, !tbaa !14
  %298 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %299 = load i32, ptr %298, align 4, !tbaa !14
  %300 = add i32 %297, -1
  %301 = add i32 %300, %299
  %302 = icmp ult i32 %301, 2
  br i1 %302, label %303, label %317

303:                                              ; preds = %295
  %304 = ashr i32 %82, 3
  %305 = sext i32 %6 to i64
  %306 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !15
  %308 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %309 = load i64, ptr %308, align 8, !tbaa !15
  %310 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %311 = load i64, ptr %310, align 8, !tbaa !15
  %312 = or i64 %311, %309
  %313 = and i64 %312, %307
  %314 = icmp eq i64 %313, 0
  %315 = add nsw i32 %304, -20
  %316 = select i1 %314, i32 %315, i32 %304
  br label %573

317:                                              ; preds = %290, %295
  %318 = phi i32 [ %294, %290 ], [ %297, %295 ]
  %319 = phi i32 [ %292, %290 ], [ %299, %295 ]
  %320 = add i32 %287, %285
  %321 = sub i32 %319, %320
  %322 = add i32 %321, %318
  %323 = icmp eq i32 %322, 1
  %324 = icmp slt i32 %82, 0
  %325 = select i1 %323, i1 %324, i1 false
  %326 = ashr i32 %82, 2
  %327 = select i1 %325, i32 %326, i32 %82
  br label %573

328:                                              ; preds = %280
  %329 = icmp eq i32 %32, %38
  br i1 %329, label %573, label %330

330:                                              ; preds = %328
  %331 = sub nsw i32 %32, %38
  %332 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %333 = load i32, ptr %332, align 4, !tbaa !14
  %334 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %335 = load i32, ptr %334, align 4, !tbaa !14
  %336 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %337 = load i32, ptr %336, align 4, !tbaa !14
  %338 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %339 = load i32, ptr %338, align 4, !tbaa !14
  %340 = add i32 %335, %333
  %341 = add i32 %337, %339
  %342 = sub i32 %340, %341
  %343 = icmp eq i32 %331, %342
  %344 = ashr i32 %82, 2
  %345 = select i1 %343, i32 %344, i32 %82
  br label %573

346:                                              ; preds = %88, %230
  br i1 %43, label %573, label %347

347:                                              ; preds = %346
  %348 = sub nsw i32 %36, %42
  %349 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %350 = load i32, ptr %349, align 4, !tbaa !14
  %351 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %352 = load i32, ptr %351, align 4, !tbaa !14
  %353 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %354 = load i32, ptr %353, align 4, !tbaa !14
  %355 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %356 = load i32, ptr %355, align 4, !tbaa !14
  %357 = add i32 %352, %350
  %358 = add i32 %354, %356
  %359 = sub i32 %357, %358
  %360 = icmp eq i32 %348, %359
  br i1 %360, label %361, label %573

361:                                              ; preds = %347
  %362 = load i32, ptr %11, align 4, !tbaa !14
  %363 = icmp eq i32 %362, 0
  %364 = icmp sgt i32 %82, 0
  %365 = select i1 %363, i1 %364, i1 false
  %366 = lshr i32 %82, 2
  %367 = select i1 %365, i32 %366, i32 %82
  %368 = load i32, ptr %14, align 4, !tbaa !14
  %369 = icmp eq i32 %368, 0
  %370 = icmp slt i32 %367, 0
  %371 = select i1 %369, i1 %370, i1 false
  %372 = ashr i32 %367, 2
  %373 = select i1 %371, i32 %372, i32 %367
  br label %573

374:                                              ; preds = %17
  %375 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %376 = load i32, ptr %375, align 4, !tbaa !14
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %398

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %380 = load i32, ptr %379, align 4, !tbaa !14
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %398

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %384 = load i32, ptr %383, align 4, !tbaa !14
  %385 = icmp eq i32 %384, 1
  %386 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %387 = load i32, ptr %386, align 4, !tbaa !14
  %388 = icmp eq i32 %387, 0
  %389 = select i1 %385, i1 %388, i1 false
  br i1 %389, label %390, label %392

390:                                              ; preds = %382
  %391 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  br label %398

392:                                              ; preds = %382
  %393 = icmp eq i32 %387, 1
  br i1 %393, label %394, label %398

394:                                              ; preds = %392
  %395 = icmp eq i32 %384, 0
  %396 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %397 = select i1 %395, i32 %396, i32 %1
  br label %398

398:                                              ; preds = %394, %390, %392, %378, %374
  %399 = phi i32 [ %1, %374 ], [ %1, %378 ], [ %1, %392 ], [ %391, %390 ], [ %397, %394 ]
  %400 = icmp eq i32 %2, 10
  %401 = icmp eq i32 %3, 6
  %402 = and i1 %400, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %398
  %404 = icmp sgt i32 %15, 0
  %405 = icmp sgt i32 %399, 0
  %406 = and i1 %405, %404
  %407 = lshr i32 %399, 2
  %408 = select i1 %406, i32 %407, i32 %399
  br label %429

409:                                              ; preds = %398
  %410 = icmp eq i32 %2, 8
  br i1 %410, label %411, label %419

411:                                              ; preds = %409
  %412 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %413 = load i32, ptr %412, align 4, !tbaa !14
  %414 = icmp eq i32 %413, 0
  %415 = icmp sgt i32 %399, 0
  %416 = and i1 %415, %414
  %417 = lshr i32 %399, 3
  %418 = select i1 %416, i32 %417, i32 %399
  br label %419

419:                                              ; preds = %411, %409
  %420 = phi i32 [ %399, %409 ], [ %418, %411 ]
  %421 = icmp slt i32 %2, 9
  %422 = sub nsw i32 %2, %3
  %423 = icmp slt i32 %422, 5
  %424 = select i1 %421, i1 %423, i1 false
  br i1 %424, label %425, label %429

425:                                              ; preds = %419
  %426 = icmp sgt i32 %420, 0
  %427 = lshr i32 %420, 3
  %428 = select i1 %426, i32 %427, i32 %420
  br label %440

429:                                              ; preds = %403, %419
  %430 = phi i1 [ true, %403 ], [ %423, %419 ]
  %431 = phi i32 [ %408, %403 ], [ %420, %419 ]
  %432 = icmp slt i32 %2, 17
  %433 = icmp sgt i32 %2, %3
  %434 = and i1 %432, %433
  br i1 %434, label %435, label %440

435:                                              ; preds = %429
  %436 = icmp sgt i32 %431, 0
  %437 = and i1 %430, %436
  %438 = zext i1 %437 to i32
  %439 = lshr i32 %431, %438
  br label %440

440:                                              ; preds = %435, %425, %429
  %441 = phi i32 [ %431, %429 ], [ %428, %425 ], [ %439, %435 ]
  %442 = icmp eq i32 %15, 1
  %443 = icmp eq i32 %2, 6
  %444 = and i1 %443, %442
  %445 = and i1 %401, %444
  br i1 %445, label %446, label %573

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %448 = load i64, ptr %447, align 8, !tbaa !15
  %449 = tail call noundef i32 @_Z8FindLasty(i64 noundef %448) #4
  %450 = tail call noundef i32 @_Z4filei(i32 noundef %6) #4
  %451 = tail call noundef i32 @_Z4filei(i32 noundef %449) #4
  %452 = sub nsw i32 %450, %451
  %453 = tail call i32 @llvm.abs.i32(i32 %452, i1 true)
  %454 = icmp ult i32 %453, 2
  br i1 %454, label %455, label %461

455:                                              ; preds = %446
  %456 = tail call noundef i32 @_Z4ranki(i32 noundef %6) #4
  %457 = tail call noundef i32 @_Z4ranki(i32 noundef %449) #4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = ashr i32 %441, 1
  br label %741

461:                                              ; preds = %455, %446
  %462 = tail call noundef i32 @_Z4ranki(i32 noundef %8) #4
  %463 = tail call noundef i32 @_Z4ranki(i32 noundef %449) #4
  %464 = icmp sgt i32 %462, %463
  br i1 %464, label %471, label %465

465:                                              ; preds = %461
  %466 = tail call noundef i32 @_Z4filei(i32 noundef %8) #4
  %467 = tail call noundef i32 @_Z4filei(i32 noundef %449) #4
  %468 = sub nsw i32 %466, %467
  %469 = tail call i32 @llvm.abs.i32(i32 %468, i1 true)
  %470 = icmp ugt i32 %469, 1
  br i1 %470, label %471, label %741

471:                                              ; preds = %465, %461
  %472 = ashr i32 %441, 1
  br label %741

473:                                              ; preds = %4
  br i1 %16, label %474, label %573

474:                                              ; preds = %473
  %475 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %476 = load i32, ptr %475, align 4, !tbaa !14
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %498

478:                                              ; preds = %474
  %479 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %480 = load i32, ptr %479, align 4, !tbaa !14
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %498

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %484 = load i32, ptr %483, align 4, !tbaa !14
  %485 = icmp eq i32 %484, 1
  %486 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %487 = load i32, ptr %486, align 4, !tbaa !14
  %488 = icmp eq i32 %487, 0
  %489 = select i1 %485, i1 %488, i1 false
  br i1 %489, label %490, label %492

490:                                              ; preds = %482
  %491 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  br label %498

492:                                              ; preds = %482
  %493 = icmp eq i32 %487, 1
  br i1 %493, label %494, label %498

494:                                              ; preds = %492
  %495 = icmp eq i32 %484, 0
  %496 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %497 = select i1 %495, i32 %496, i32 %1
  br label %498

498:                                              ; preds = %494, %490, %492, %478, %474
  %499 = phi i32 [ %1, %474 ], [ %1, %478 ], [ %1, %492 ], [ %491, %490 ], [ %497, %494 ]
  %500 = icmp eq i32 %3, 10
  %501 = icmp eq i32 %2, 6
  %502 = and i1 %501, %500
  br i1 %502, label %503, label %509

503:                                              ; preds = %498
  %504 = icmp sgt i32 %12, 0
  %505 = icmp slt i32 %499, 0
  %506 = and i1 %504, %505
  %507 = ashr i32 %499, 2
  %508 = select i1 %506, i32 %507, i32 %499
  br label %529

509:                                              ; preds = %498
  %510 = icmp eq i32 %3, 8
  br i1 %510, label %511, label %519

511:                                              ; preds = %509
  %512 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %513 = load i32, ptr %512, align 4, !tbaa !14
  %514 = icmp eq i32 %513, 0
  %515 = icmp slt i32 %499, 0
  %516 = and i1 %515, %514
  %517 = ashr i32 %499, 3
  %518 = select i1 %516, i32 %517, i32 %499
  br label %519

519:                                              ; preds = %511, %509
  %520 = phi i32 [ %499, %509 ], [ %518, %511 ]
  %521 = icmp slt i32 %3, 9
  %522 = sub nsw i32 %3, %2
  %523 = icmp slt i32 %522, 5
  %524 = select i1 %521, i1 %523, i1 false
  br i1 %524, label %525, label %529

525:                                              ; preds = %519
  %526 = icmp slt i32 %520, 0
  %527 = ashr i32 %520, 3
  %528 = select i1 %526, i32 %527, i32 %520
  br label %540

529:                                              ; preds = %503, %519
  %530 = phi i1 [ true, %503 ], [ %523, %519 ]
  %531 = phi i32 [ %508, %503 ], [ %520, %519 ]
  %532 = icmp slt i32 %3, 17
  %533 = icmp sgt i32 %3, %2
  %534 = and i1 %532, %533
  br i1 %534, label %535, label %540

535:                                              ; preds = %529
  %536 = icmp slt i32 %531, 0
  %537 = and i1 %530, %536
  %538 = zext i1 %537 to i32
  %539 = ashr i32 %531, %538
  br label %540

540:                                              ; preds = %535, %525, %529
  %541 = phi i32 [ %531, %529 ], [ %528, %525 ], [ %539, %535 ]
  %542 = icmp eq i32 %12, 1
  %543 = icmp eq i32 %3, 6
  %544 = and i1 %543, %542
  %545 = and i1 %501, %544
  br i1 %545, label %546, label %573

546:                                              ; preds = %540
  %547 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %548 = load i64, ptr %547, align 8, !tbaa !15
  %549 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %548) #4
  %550 = tail call noundef i32 @_Z4filei(i32 noundef %8) #4
  %551 = tail call noundef i32 @_Z4filei(i32 noundef %549) #4
  %552 = sub nsw i32 %550, %551
  %553 = tail call i32 @llvm.abs.i32(i32 %552, i1 true)
  %554 = icmp ult i32 %553, 2
  br i1 %554, label %555, label %561

555:                                              ; preds = %546
  %556 = tail call noundef i32 @_Z4ranki(i32 noundef %8) #4
  %557 = tail call noundef i32 @_Z4ranki(i32 noundef %549) #4
  %558 = icmp sgt i32 %556, %557
  br i1 %558, label %559, label %561

559:                                              ; preds = %555
  %560 = ashr i32 %541, 1
  br label %741

561:                                              ; preds = %555, %546
  %562 = tail call noundef i32 @_Z4ranki(i32 noundef %6) #4
  %563 = tail call noundef i32 @_Z4ranki(i32 noundef %549) #4
  %564 = icmp slt i32 %562, %563
  br i1 %564, label %571, label %565

565:                                              ; preds = %561
  %566 = tail call noundef i32 @_Z4filei(i32 noundef %6) #4
  %567 = tail call noundef i32 @_Z4filei(i32 noundef %549) #4
  %568 = sub nsw i32 %566, %567
  %569 = tail call i32 @llvm.abs.i32(i32 %568, i1 true)
  %570 = icmp ugt i32 %569, 1
  br i1 %570, label %571, label %741

571:                                              ; preds = %565, %561
  %572 = ashr i32 %541, 1
  br label %741

573:                                              ; preds = %361, %330, %317, %303, %269, %255, %440, %540, %473, %185, %191, %214, %210, %226, %222, %195, %148, %177, %181, %165, %169, %346, %347, %328
  %574 = phi i32 [ %1, %473 ], [ %541, %540 ], [ %441, %440 ], [ %82, %347 ], [ %82, %346 ], [ %82, %328 ], [ %187, %185 ], [ %187, %191 ], [ %213, %210 ], [ %217, %214 ], [ %225, %222 ], [ %229, %226 ], [ %187, %195 ], [ %168, %165 ], [ %172, %169 ], [ %180, %177 ], [ %184, %181 ], [ %144, %148 ], [ %268, %255 ], [ %279, %269 ], [ %316, %303 ], [ %327, %317 ], [ %345, %330 ], [ %373, %361 ]
  %575 = icmp eq i32 %2, 4
  br i1 %575, label %576, label %657

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %578 = load i32, ptr %577, align 4, !tbaa !14
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %580, label %657

580:                                              ; preds = %576
  %581 = load i32, ptr %11, align 4, !tbaa !14
  %582 = icmp eq i32 %581, 1
  br i1 %582, label %583, label %657

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %585 = load i64, ptr %584, align 8, !tbaa !15
  %586 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !15
  %587 = load i64, ptr @FileMask, align 16, !tbaa !15
  %588 = or i64 %587, %586
  %589 = and i64 %588, %585
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %741, label %591

591:                                              ; preds = %583
  %592 = and i64 %586, %585
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %624, label %594

594:                                              ; preds = %591
  %595 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %596 = load i64, ptr %595, align 8, !tbaa !15
  %597 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !15
  %598 = and i64 %597, %596
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %600, label %624

600:                                              ; preds = %594
  %601 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %602 = load i64, ptr %601, align 8, !tbaa !15
  %603 = load i64, ptr @BlackSqMask, align 8, !tbaa !15
  %604 = and i64 %603, %602
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %606, label %741

606:                                              ; preds = %600
  %607 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %8) #4
  %608 = icmp sgt i32 %607, 1
  br i1 %608, label %609, label %622

609:                                              ; preds = %606
  %610 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %6) #4
  %611 = load i64, ptr %584, align 8, !tbaa !15
  %612 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %611) #4
  %613 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %612) #4
  %614 = sub nsw i32 %610, %10
  %615 = icmp sgt i32 %607, %614
  br i1 %615, label %741, label %616

616:                                              ; preds = %609
  %617 = add nsw i32 %607, -1
  %618 = sub nsw i32 %613, %10
  %619 = icmp sgt i32 %617, %618
  %620 = tail call i32 @llvm.smin.i32(i32 %574, i32 0)
  %621 = select i1 %619, i32 %574, i32 %620
  br label %741

622:                                              ; preds = %606
  %623 = tail call i32 @llvm.smin.i32(i32 %574, i32 0)
  br label %741

624:                                              ; preds = %594, %591
  %625 = and i64 %587, %585
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %741, label %627

627:                                              ; preds = %624
  %628 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %629 = load i64, ptr %628, align 8, !tbaa !15
  %630 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !15
  %631 = and i64 %630, %629
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %741

633:                                              ; preds = %627
  %634 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %635 = load i64, ptr %634, align 8, !tbaa !15
  %636 = load i64, ptr @WhiteSqMask, align 8, !tbaa !15
  %637 = and i64 %636, %635
  %638 = icmp eq i64 %637, 0
  br i1 %638, label %639, label %741

639:                                              ; preds = %633
  %640 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %8) #4
  %641 = icmp sgt i32 %640, 1
  br i1 %641, label %642, label %655

642:                                              ; preds = %639
  %643 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %6) #4
  %644 = load i64, ptr %584, align 8, !tbaa !15
  %645 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %644) #4
  %646 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %645) #4
  %647 = sub nsw i32 %643, %10
  %648 = icmp sgt i32 %640, %647
  br i1 %648, label %741, label %649

649:                                              ; preds = %642
  %650 = add nsw i32 %640, -1
  %651 = sub nsw i32 %646, %10
  %652 = icmp sgt i32 %650, %651
  %653 = tail call i32 @llvm.smin.i32(i32 %574, i32 0)
  %654 = select i1 %652, i32 %574, i32 %653
  br label %741

655:                                              ; preds = %639
  %656 = tail call i32 @llvm.smin.i32(i32 %574, i32 0)
  br label %741

657:                                              ; preds = %580, %576, %573
  %658 = icmp eq i32 %3, 4
  br i1 %658, label %659, label %741

659:                                              ; preds = %657
  %660 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %661 = load i32, ptr %660, align 4, !tbaa !14
  %662 = icmp eq i32 %661, 1
  br i1 %662, label %663, label %741

663:                                              ; preds = %659
  %664 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %665 = load i32, ptr %664, align 4, !tbaa !14
  %666 = icmp eq i32 %665, 1
  br i1 %666, label %667, label %741

667:                                              ; preds = %663
  %668 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %669 = load i64, ptr %668, align 8, !tbaa !15
  %670 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !15
  %671 = load i64, ptr @FileMask, align 16, !tbaa !15
  %672 = or i64 %671, %670
  %673 = and i64 %672, %669
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %741, label %675

675:                                              ; preds = %667
  %676 = and i64 %670, %669
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %708, label %678

678:                                              ; preds = %675
  %679 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %680 = load i64, ptr %679, align 8, !tbaa !15
  %681 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !15
  %682 = and i64 %681, %680
  %683 = icmp eq i64 %682, 0
  br i1 %683, label %684, label %708

684:                                              ; preds = %678
  %685 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %686 = load i64, ptr %685, align 8, !tbaa !15
  %687 = load i64, ptr @WhiteSqMask, align 8, !tbaa !15
  %688 = and i64 %687, %686
  %689 = icmp eq i64 %688, 0
  br i1 %689, label %690, label %741

690:                                              ; preds = %684
  %691 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %6) #4
  %692 = icmp sgt i32 %691, 1
  br i1 %692, label %693, label %706

693:                                              ; preds = %690
  %694 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %8) #4
  %695 = load i64, ptr %668, align 8, !tbaa !15
  %696 = tail call noundef i32 @_Z8FindLasty(i64 noundef %695) #4
  %697 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %696) #4
  %698 = add nsw i32 %694, %10
  %699 = icmp sgt i32 %691, %698
  br i1 %699, label %741, label %700

700:                                              ; preds = %693
  %701 = add nsw i32 %691, -1
  %702 = add nsw i32 %697, %10
  %703 = icmp sgt i32 %701, %702
  %704 = tail call i32 @llvm.smax.i32(i32 %574, i32 0)
  %705 = select i1 %703, i32 %574, i32 %704
  br label %741

706:                                              ; preds = %690
  %707 = tail call i32 @llvm.smax.i32(i32 %574, i32 0)
  br label %741

708:                                              ; preds = %678, %675
  %709 = and i64 %671, %669
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %741, label %711

711:                                              ; preds = %708
  %712 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %713 = load i64, ptr %712, align 8, !tbaa !15
  %714 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !15
  %715 = and i64 %714, %713
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %717, label %741

717:                                              ; preds = %711
  %718 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %719 = load i64, ptr %718, align 8, !tbaa !15
  %720 = load i64, ptr @BlackSqMask, align 8, !tbaa !15
  %721 = and i64 %720, %719
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %723, label %741

723:                                              ; preds = %717
  %724 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %6) #4
  %725 = icmp sgt i32 %724, 1
  br i1 %725, label %726, label %739

726:                                              ; preds = %723
  %727 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %8) #4
  %728 = load i64, ptr %668, align 8, !tbaa !15
  %729 = tail call noundef i32 @_Z8FindLasty(i64 noundef %728) #4
  %730 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %729) #4
  %731 = add nsw i32 %727, %10
  %732 = icmp sgt i32 %724, %731
  br i1 %732, label %741, label %733

733:                                              ; preds = %726
  %734 = add nsw i32 %724, -1
  %735 = add nsw i32 %730, %10
  %736 = icmp sgt i32 %734, %735
  %737 = tail call i32 @llvm.smax.i32(i32 %574, i32 0)
  %738 = select i1 %736, i32 %574, i32 %737
  br label %741

739:                                              ; preds = %723
  %740 = tail call i32 @llvm.smax.i32(i32 %574, i32 0)
  br label %741

741:                                              ; preds = %559, %571, %565, %459, %471, %465, %739, %733, %706, %700, %655, %649, %622, %616, %726, %693, %642, %609, %657, %659, %663, %684, %717, %711, %708, %667, %583, %624, %627, %633, %600
  %742 = phi i32 [ %574, %627 ], [ %574, %633 ], [ %574, %624 ], [ %574, %600 ], [ %574, %583 ], [ %574, %711 ], [ %574, %717 ], [ %574, %708 ], [ %574, %684 ], [ %574, %667 ], [ %574, %663 ], [ %574, %659 ], [ %574, %657 ], [ %574, %609 ], [ %621, %616 ], [ %623, %622 ], [ %574, %642 ], [ %654, %649 ], [ %656, %655 ], [ %574, %693 ], [ %705, %700 ], [ %707, %706 ], [ %574, %726 ], [ %738, %733 ], [ %740, %739 ], [ %541, %565 ], [ %572, %571 ], [ %560, %559 ], [ %441, %465 ], [ %472, %471 ], [ %460, %459 ]
  %743 = or i32 %3, %2
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %848

745:                                              ; preds = %741
  %746 = load i32, ptr %11, align 4, !tbaa !14
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %748, label %794

748:                                              ; preds = %745
  %749 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %750 = load i64, ptr %749, align 8, !tbaa !15
  %751 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !15
  %752 = and i64 %751, %750
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %772, label %754

754:                                              ; preds = %748
  %755 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %756 = load i64, ptr %755, align 8, !tbaa !15
  %757 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 7), align 8, !tbaa !15
  %758 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 15), align 8, !tbaa !15
  %759 = or i64 %758, %757
  %760 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 14), align 16, !tbaa !15
  %761 = or i64 %759, %760
  %762 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 6), align 16, !tbaa !15
  %763 = or i64 %761, %762
  %764 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 5), align 8, !tbaa !15
  %765 = or i64 %763, %764
  %766 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 23), align 8, !tbaa !15
  %767 = or i64 %765, %766
  %768 = and i64 %767, %756
  %769 = icmp eq i64 %768, 0
  %770 = ashr i32 %742, 2
  %771 = select i1 %769, i32 %742, i32 %770
  br label %791

772:                                              ; preds = %748
  %773 = load i64, ptr @FileMask, align 16, !tbaa !15
  %774 = and i64 %773, %750
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %791, label %776

776:                                              ; preds = %772
  %777 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %778 = load i64, ptr %777, align 8, !tbaa !15
  %779 = load i64, ptr @Mask, align 16, !tbaa !15
  %780 = load <2 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 8), align 16, !tbaa !15
  %781 = load <2 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 1), align 8, !tbaa !15
  %782 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 16), align 16, !tbaa !15
  %783 = shufflevector <2 x i64> %780, <2 x i64> %781, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %784 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %783)
  %785 = or i64 %784, %779
  %786 = or i64 %785, %782
  %787 = and i64 %786, %778
  %788 = icmp eq i64 %787, 0
  %789 = ashr i32 %742, 2
  %790 = select i1 %788, i32 %742, i32 %789
  br label %791

791:                                              ; preds = %776, %754, %772
  %792 = phi i32 [ %742, %772 ], [ %771, %754 ], [ %790, %776 ]
  %793 = ashr i32 %792, 1
  br label %794

794:                                              ; preds = %791, %745
  %795 = phi i32 [ %742, %745 ], [ %793, %791 ]
  %796 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %797 = load i32, ptr %796, align 4, !tbaa !14
  %798 = icmp eq i32 %797, 1
  br i1 %798, label %799, label %848

799:                                              ; preds = %794
  %800 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %801 = load i64, ptr %800, align 8, !tbaa !15
  %802 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !15
  %803 = and i64 %802, %801
  %804 = icmp eq i64 %803, 0
  br i1 %804, label %823, label %805

805:                                              ; preds = %799
  %806 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %807 = load i64, ptr %806, align 8, !tbaa !15
  %808 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 63), align 8, !tbaa !15
  %809 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 55), align 8, !tbaa !15
  %810 = or i64 %809, %808
  %811 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 62), align 16, !tbaa !15
  %812 = or i64 %810, %811
  %813 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 54), align 16, !tbaa !15
  %814 = or i64 %812, %813
  %815 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 61), align 8, !tbaa !15
  %816 = or i64 %814, %815
  %817 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 47), align 8, !tbaa !15
  %818 = or i64 %816, %817
  %819 = and i64 %818, %807
  %820 = icmp eq i64 %819, 0
  %821 = ashr i32 %795, 2
  %822 = select i1 %820, i32 %795, i32 %821
  br label %845

823:                                              ; preds = %799
  %824 = load i64, ptr @FileMask, align 16, !tbaa !15
  %825 = and i64 %824, %801
  %826 = icmp eq i64 %825, 0
  br i1 %826, label %845, label %827

827:                                              ; preds = %823
  %828 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %829 = load i64, ptr %828, align 8, !tbaa !15
  %830 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 56), align 16, !tbaa !15
  %831 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 48), align 16, !tbaa !15
  %832 = or i64 %831, %830
  %833 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 57), align 8, !tbaa !15
  %834 = or i64 %832, %833
  %835 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 49), align 8, !tbaa !15
  %836 = or i64 %834, %835
  %837 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 58), align 16, !tbaa !15
  %838 = or i64 %836, %837
  %839 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 40), align 16, !tbaa !15
  %840 = or i64 %838, %839
  %841 = and i64 %840, %829
  %842 = icmp eq i64 %841, 0
  %843 = ashr i32 %795, 2
  %844 = select i1 %842, i32 %795, i32 %843
  br label %845

845:                                              ; preds = %827, %805, %823
  %846 = phi i32 [ %795, %823 ], [ %822, %805 ], [ %844, %827 ]
  %847 = ashr i32 %846, 1
  br label %848

848:                                              ; preds = %741, %845, %794
  %849 = phi i32 [ %847, %845 ], [ %795, %794 ], [ %742, %741 ]
  ret i32 %849
}

; Function Attrs: optsize
declare noundef i32 @_Z12taxicab_distii(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: optsize
declare noundef i32 @_Z8sum_distii(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_Z8FindLasty(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_Z4filei(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_Z9FindFirsty(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #3

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 464}
!7 = !{!"_ZTS7state_t", !8, i64 0, !9, i64 4, !11, i64 264, !11, i64 272, !11, i64 280, !9, i64 288, !8, i64 392, !8, i64 396, !9, i64 400, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !11, i64 480, !11, i64 488, !9, i64 496, !9, i64 2544, !9, i64 2800, !9, i64 3056, !11, i64 4080, !11, i64 4088, !8, i64 4096, !9, i64 4100, !8, i64 4356, !8, i64 4360, !8, i64 4364, !8, i64 4368, !8, i64 4372, !8, i64 4376, !8, i64 4380, !8, i64 4384, !8, i64 4388, !8, i64 4392, !9, i64 4400}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long long", !9, i64 0}
!12 = !{!7, !8, i64 468}
!13 = !{!7, !8, i64 460}
!14 = !{!8, !8, i64 0}
!15 = !{!11, !11, i64 0}
