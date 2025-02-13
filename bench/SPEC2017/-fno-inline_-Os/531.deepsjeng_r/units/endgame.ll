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
define dso_local noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !41 {
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = icmp eq i32 %15, 0
  br i1 %13, label %17, label %474, !prof !51

17:                                               ; preds = %4
  br i1 %16, label %18, label %374, !prof !52

18:                                               ; preds = %17
  %19 = icmp sgt i32 %2, %3
  br i1 %19, label %22, label %20, !prof !53

20:                                               ; preds = %18
  %21 = icmp sgt i32 %3, %2
  br i1 %21, label %22, label %29, !prof !53

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
  %32 = load i32, ptr %31, align 4, !tbaa !50
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = shl nsw i32 %34, 1
  %36 = add nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %41, %38
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %81, !prof !54

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = add nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %51 = load i32, ptr %50, align 4, !tbaa !50
  %52 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = add nsw i32 %53, %51
  %55 = sub nsw i32 %49, %54
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %67, !prof !53

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
  br i1 %70, label %71, label %81, !prof !53

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
  br i1 %85, label %88, label %230, !prof !55

88:                                               ; preds = %81
  br i1 %87, label %89, label %346

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %91 = load i32, ptr %90, align 4, !tbaa !50
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %95 = load i32, ptr %94, align 4, !tbaa !50
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %142

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %103 = load i32, ptr %102, align 4, !tbaa !50
  %104 = icmp slt i32 %103, 3
  %105 = select i1 %104, i32 0, i32 %82
  br label %142

106:                                              ; preds = %93, %89
  %107 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %108 = load i32, ptr %107, align 4, !tbaa !50
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %112 = load i32, ptr %111, align 4, !tbaa !50
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %116 = load i32, ptr %115, align 4, !tbaa !50
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
  %125 = load i32, ptr %124, align 4, !tbaa !50
  %126 = icmp ne i32 %125, 0
  %127 = icmp ne i32 %125, 1
  %128 = or i1 %109, %127
  %129 = and i1 %126, %128
  br i1 %129, label %140, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %132 = load i32, ptr %131, align 4, !tbaa !50
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
  %146 = load i32, ptr %145, align 4, !tbaa !50
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %150 = load i32, ptr %149, align 4, !tbaa !50
  %151 = icmp eq i32 %150, 1
  %152 = icmp eq i32 %143, 1
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %575

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %156 = load i64, ptr %155, align 8, !tbaa !56
  %157 = load i64, ptr @BlackSqMask, align 8, !tbaa !56
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
  br label %575

169:                                              ; preds = %161
  %170 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %8) #4
  %171 = mul i32 %170, -30
  %172 = add i32 %160, %171
  br label %575

173:                                              ; preds = %154
  %174 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %8) #4
  %175 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %8) #4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %8) #4
  %179 = mul i32 %178, -30
  %180 = add i32 %160, %179
  br label %575

181:                                              ; preds = %173
  %182 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %8) #4
  %183 = mul i32 %182, -30
  %184 = add i32 %160, %183
  br label %575

185:                                              ; preds = %137, %142, %140
  %186 = phi i32 [ %143, %142 ], [ %108, %140 ], [ %108, %137 ]
  %187 = phi i32 [ %144, %142 ], [ %141, %140 ], [ %139, %137 ]
  %188 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %575

191:                                              ; preds = %185
  %192 = icmp eq i32 %186, 0
  %193 = icmp eq i32 %91, 1
  %194 = and i1 %193, %192
  br i1 %194, label %195, label %575

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %197 = load i32, ptr %196, align 4, !tbaa !50
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %575

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %201 = load i64, ptr %200, align 8, !tbaa !56
  %202 = load i64, ptr @BlackSqMask, align 8, !tbaa !56
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
  br label %575

214:                                              ; preds = %206
  %215 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %6) #4
  %216 = mul i32 %215, 30
  %217 = add i32 %205, %216
  br label %575

218:                                              ; preds = %199
  %219 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %6) #4
  %220 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %6) #4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %6) #4
  %224 = mul i32 %223, 30
  %225 = add i32 %205, %224
  br label %575

226:                                              ; preds = %218
  %227 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %6) #4
  %228 = mul i32 %227, 30
  %229 = add i32 %205, %228
  br label %575

230:                                              ; preds = %81
  br i1 %87, label %231, label %346, !prof !57

231:                                              ; preds = %230
  %232 = icmp eq i32 %32, 1
  %233 = icmp eq i32 %38, 0
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %280, !prof !58

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %237 = load i32, ptr %236, align 4, !tbaa !50
  %238 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %239 = load i32, ptr %238, align 4, !tbaa !50
  %240 = sub i32 0, %239
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %247, label %242

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %244 = load i32, ptr %243, align 4, !tbaa !50
  %245 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %246 = load i32, ptr %245, align 4, !tbaa !50
  br label %269

247:                                              ; preds = %235
  %248 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %249 = load i32, ptr %248, align 4, !tbaa !50
  %250 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %251 = load i32, ptr %250, align 4, !tbaa !50
  %252 = add i32 %249, -1
  %253 = add i32 %252, %251
  %254 = icmp ult i32 %253, 2
  br i1 %254, label %255, label %269

255:                                              ; preds = %247
  %256 = ashr i32 %82, 3
  %257 = sext i32 %8 to i64
  %258 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !56
  %260 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %261 = load i64, ptr %260, align 8, !tbaa !56
  %262 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %263 = load i64, ptr %262, align 8, !tbaa !56
  %264 = or i64 %263, %261
  %265 = and i64 %264, %259
  %266 = icmp eq i64 %265, 0
  %267 = add nsw i32 %256, 20
  %268 = select i1 %266, i32 %267, i32 %256
  br label %575

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
  br label %575

280:                                              ; preds = %231
  %281 = icmp ne i32 %38, 1
  %282 = or i1 %83, %281
  br i1 %282, label %328, label %283, !prof !59

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %285 = load i32, ptr %284, align 4, !tbaa !50
  %286 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %287 = load i32, ptr %286, align 4, !tbaa !50
  %288 = sub i32 0, %287
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %292 = load i32, ptr %291, align 4, !tbaa !50
  %293 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %294 = load i32, ptr %293, align 4, !tbaa !50
  br label %317

295:                                              ; preds = %283
  %296 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %297 = load i32, ptr %296, align 4, !tbaa !50
  %298 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %299 = load i32, ptr %298, align 4, !tbaa !50
  %300 = add i32 %297, -1
  %301 = add i32 %300, %299
  %302 = icmp ult i32 %301, 2
  br i1 %302, label %303, label %317

303:                                              ; preds = %295
  %304 = ashr i32 %82, 3
  %305 = sext i32 %6 to i64
  %306 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !56
  %308 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %309 = load i64, ptr %308, align 8, !tbaa !56
  %310 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %311 = load i64, ptr %310, align 8, !tbaa !56
  %312 = or i64 %311, %309
  %313 = and i64 %312, %307
  %314 = icmp eq i64 %313, 0
  %315 = add nsw i32 %304, -20
  %316 = select i1 %314, i32 %315, i32 %304
  br label %575

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
  br label %575

328:                                              ; preds = %280
  %329 = icmp eq i32 %32, %38
  br i1 %329, label %575, label %330, !prof !54

330:                                              ; preds = %328
  %331 = sub nsw i32 %32, %38
  %332 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %333 = load i32, ptr %332, align 4, !tbaa !50
  %334 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %335 = load i32, ptr %334, align 4, !tbaa !50
  %336 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %337 = load i32, ptr %336, align 4, !tbaa !50
  %338 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %339 = load i32, ptr %338, align 4, !tbaa !50
  %340 = add i32 %335, %333
  %341 = add i32 %337, %339
  %342 = sub i32 %340, %341
  %343 = icmp eq i32 %331, %342
  %344 = ashr i32 %82, 2
  %345 = select i1 %343, i32 %344, i32 %82
  br label %575

346:                                              ; preds = %88, %230
  br i1 %43, label %575, label %347

347:                                              ; preds = %346
  %348 = sub nsw i32 %36, %42
  %349 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %350 = load i32, ptr %349, align 4, !tbaa !50
  %351 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %352 = load i32, ptr %351, align 4, !tbaa !50
  %353 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %354 = load i32, ptr %353, align 4, !tbaa !50
  %355 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %356 = load i32, ptr %355, align 4, !tbaa !50
  %357 = add i32 %352, %350
  %358 = add i32 %354, %356
  %359 = sub i32 %357, %358
  %360 = icmp eq i32 %348, %359
  br i1 %360, label %361, label %575

361:                                              ; preds = %347
  %362 = load i32, ptr %11, align 4, !tbaa !50
  %363 = icmp eq i32 %362, 0
  %364 = icmp sgt i32 %82, 0
  %365 = select i1 %363, i1 %364, i1 false
  %366 = lshr i32 %82, 2
  %367 = select i1 %365, i32 %366, i32 %82
  %368 = load i32, ptr %14, align 4, !tbaa !50
  %369 = icmp eq i32 %368, 0
  %370 = icmp slt i32 %367, 0
  %371 = select i1 %369, i1 %370, i1 false
  %372 = ashr i32 %367, 2
  %373 = select i1 %371, i32 %372, i32 %367
  br label %575

374:                                              ; preds = %17
  %375 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %376 = load i32, ptr %375, align 4, !tbaa !50
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %399, !prof !60

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %380 = load i32, ptr %379, align 4, !tbaa !50
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %399, !prof !61

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %384 = load i32, ptr %383, align 4, !tbaa !50
  %385 = icmp eq i32 %384, 1
  %386 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %387 = load i32, ptr %386, align 4, !tbaa !50
  %388 = icmp eq i32 %387, 0
  %389 = select i1 %385, i1 %388, i1 false
  br i1 %389, label %390, label %393, !prof !62

390:                                              ; preds = %382
  %391 = icmp sgt i32 %1, 0
  br i1 %391, label %392, label %399, !prof !63

392:                                              ; preds = %390
  br label %399

393:                                              ; preds = %382
  %394 = icmp eq i32 %387, 1
  br i1 %394, label %395, label %399, !prof !64

395:                                              ; preds = %393
  %396 = icmp eq i32 %384, 0
  %397 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %398 = select i1 %396, i32 %397, i32 %1
  br label %399

399:                                              ; preds = %395, %392, %390, %393, %378, %374
  %400 = phi i32 [ %1, %374 ], [ %1, %378 ], [ %1, %393 ], [ 0, %392 ], [ %1, %390 ], [ %398, %395 ]
  %401 = icmp eq i32 %2, 10
  %402 = icmp eq i32 %3, 6
  %403 = and i1 %401, %402
  br i1 %403, label %404, label %410, !prof !65

404:                                              ; preds = %399
  %405 = icmp sgt i32 %15, 0
  %406 = icmp sgt i32 %400, 0
  %407 = and i1 %406, %405
  %408 = lshr i32 %400, 2
  %409 = select i1 %407, i32 %408, i32 %400, !prof !66
  br label %430

410:                                              ; preds = %399
  %411 = icmp eq i32 %2, 8
  br i1 %411, label %412, label %420, !prof !67

412:                                              ; preds = %410
  %413 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %414 = load i32, ptr %413, align 4, !tbaa !50
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %420, !prof !68

416:                                              ; preds = %412
  %417 = icmp sgt i32 %400, 0
  %418 = lshr i32 %400, 3
  %419 = select i1 %417, i32 %418, i32 %400
  br label %420

420:                                              ; preds = %416, %412, %410
  %421 = phi i32 [ %400, %412 ], [ %400, %410 ], [ %419, %416 ]
  %422 = icmp slt i32 %2, 9
  %423 = sub nsw i32 %2, %3
  %424 = icmp slt i32 %423, 5
  %425 = select i1 %422, i1 %424, i1 false
  br i1 %425, label %426, label %430, !prof !69

426:                                              ; preds = %420
  %427 = icmp sgt i32 %421, 0
  %428 = lshr i32 %421, 3
  %429 = select i1 %427, i32 %428, i32 %421, !prof !70
  br label %441

430:                                              ; preds = %404, %420
  %431 = phi i1 [ true, %404 ], [ %424, %420 ]
  %432 = phi i32 [ %409, %404 ], [ %421, %420 ]
  %433 = icmp slt i32 %2, 17
  %434 = icmp sgt i32 %2, %3
  %435 = and i1 %433, %434
  br i1 %435, label %436, label %441, !prof !71

436:                                              ; preds = %430
  %437 = icmp sgt i32 %432, 0
  %438 = and i1 %431, %437
  %439 = zext i1 %438 to i32
  %440 = lshr i32 %432, %439
  br label %441

441:                                              ; preds = %436, %426, %430
  %442 = phi i32 [ %432, %430 ], [ %429, %426 ], [ %440, %436 ]
  %443 = icmp eq i32 %15, 1
  br i1 %443, label %444, label %575, !prof !72

444:                                              ; preds = %441
  %445 = icmp eq i32 %2, 6
  %446 = and i1 %445, %402
  br i1 %446, label %447, label %575, !prof !73

447:                                              ; preds = %444
  %448 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %449 = load i64, ptr %448, align 8, !tbaa !56
  %450 = tail call noundef i32 @_Z8FindLasty(i64 noundef %449) #4
  %451 = tail call noundef i32 @_Z4filei(i32 noundef %6) #4
  %452 = tail call noundef i32 @_Z4filei(i32 noundef %450) #4
  %453 = sub nsw i32 %451, %452
  %454 = tail call i32 @llvm.abs.i32(i32 %453, i1 true)
  %455 = icmp ult i32 %454, 2
  br i1 %455, label %456, label %462, !prof !74

456:                                              ; preds = %447
  %457 = tail call noundef i32 @_Z4ranki(i32 noundef %6) #4
  %458 = tail call noundef i32 @_Z4ranki(i32 noundef %450) #4
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %460, label %462, !prof !54

460:                                              ; preds = %456
  %461 = ashr i32 %442, 1
  br label %852

462:                                              ; preds = %456, %447
  %463 = tail call noundef i32 @_Z4ranki(i32 noundef %8) #4
  %464 = tail call noundef i32 @_Z4ranki(i32 noundef %450) #4
  %465 = icmp sgt i32 %463, %464
  br i1 %465, label %472, label %466, !prof !75

466:                                              ; preds = %462
  %467 = tail call noundef i32 @_Z4filei(i32 noundef %8) #4
  %468 = tail call noundef i32 @_Z4filei(i32 noundef %450) #4
  %469 = sub nsw i32 %467, %468
  %470 = tail call i32 @llvm.abs.i32(i32 %469, i1 true)
  %471 = icmp ugt i32 %470, 1
  br i1 %471, label %472, label %852, !prof !76

472:                                              ; preds = %466, %462
  %473 = ashr i32 %442, 1
  br label %852

474:                                              ; preds = %4
  br i1 %16, label %475, label %575, !prof !77

475:                                              ; preds = %474
  %476 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %477 = load i32, ptr %476, align 4, !tbaa !50
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %500, !prof !78

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %481 = load i32, ptr %480, align 4, !tbaa !50
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %500, !prof !79

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %485 = load i32, ptr %484, align 4, !tbaa !50
  %486 = icmp eq i32 %485, 1
  %487 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %488 = load i32, ptr %487, align 4, !tbaa !50
  %489 = icmp eq i32 %488, 0
  %490 = select i1 %486, i1 %489, i1 false
  br i1 %490, label %491, label %494, !prof !80

491:                                              ; preds = %483
  %492 = icmp slt i32 %1, 0
  br i1 %492, label %493, label %500, !prof !81

493:                                              ; preds = %491
  br label %500

494:                                              ; preds = %483
  %495 = icmp eq i32 %488, 1
  br i1 %495, label %496, label %500, !prof !82

496:                                              ; preds = %494
  %497 = icmp eq i32 %485, 0
  %498 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %499 = select i1 %497, i32 %498, i32 %1
  br label %500

500:                                              ; preds = %496, %493, %491, %494, %479, %475
  %501 = phi i32 [ %1, %475 ], [ %1, %479 ], [ %1, %494 ], [ 0, %493 ], [ %1, %491 ], [ %499, %496 ]
  %502 = icmp eq i32 %3, 10
  %503 = icmp eq i32 %2, 6
  %504 = and i1 %503, %502
  br i1 %504, label %505, label %511, !prof !83

505:                                              ; preds = %500
  %506 = icmp sgt i32 %12, 0
  %507 = icmp slt i32 %501, 0
  %508 = and i1 %506, %507
  %509 = ashr i32 %501, 2
  %510 = select i1 %508, i32 %509, i32 %501, !prof !84
  br label %531

511:                                              ; preds = %500
  %512 = icmp eq i32 %3, 8
  br i1 %512, label %513, label %521, !prof !85

513:                                              ; preds = %511
  %514 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %515 = load i32, ptr %514, align 4, !tbaa !50
  %516 = icmp eq i32 %515, 0
  %517 = icmp slt i32 %501, 0
  %518 = and i1 %517, %516
  br i1 %518, label %519, label %521, !prof !86

519:                                              ; preds = %513
  %520 = ashr i32 %501, 3
  br label %521

521:                                              ; preds = %519, %513, %511
  %522 = phi i32 [ %520, %519 ], [ %501, %513 ], [ %501, %511 ]
  %523 = icmp slt i32 %3, 9
  %524 = sub nsw i32 %3, %2
  %525 = icmp slt i32 %524, 5
  %526 = select i1 %523, i1 %525, i1 false
  br i1 %526, label %527, label %531, !prof !87

527:                                              ; preds = %521
  %528 = icmp slt i32 %522, 0
  br i1 %528, label %529, label %542, !prof !88

529:                                              ; preds = %527
  %530 = ashr i32 %522, 3
  br label %542

531:                                              ; preds = %505, %521
  %532 = phi i1 [ true, %505 ], [ %525, %521 ]
  %533 = phi i32 [ %510, %505 ], [ %522, %521 ]
  %534 = icmp slt i32 %3, 17
  %535 = icmp sgt i32 %3, %2
  %536 = and i1 %534, %535
  br i1 %536, label %537, label %542, !prof !89

537:                                              ; preds = %531
  %538 = icmp slt i32 %533, 0
  %539 = and i1 %532, %538
  %540 = zext i1 %539 to i32
  %541 = ashr i32 %533, %540
  br label %542

542:                                              ; preds = %537, %531, %527, %529
  %543 = phi i32 [ %530, %529 ], [ %522, %527 ], [ %533, %531 ], [ %541, %537 ]
  %544 = icmp eq i32 %12, 1
  br i1 %544, label %545, label %575, !prof !90

545:                                              ; preds = %542
  br i1 %503, label %546, label %575, !prof !91

546:                                              ; preds = %545
  %547 = icmp eq i32 %3, 6
  br i1 %547, label %548, label %659

548:                                              ; preds = %546
  %549 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %550 = load i64, ptr %549, align 8, !tbaa !56
  %551 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %550) #4
  %552 = tail call noundef i32 @_Z4filei(i32 noundef %8) #4
  %553 = tail call noundef i32 @_Z4filei(i32 noundef %551) #4
  %554 = sub nsw i32 %552, %553
  %555 = tail call i32 @llvm.abs.i32(i32 %554, i1 true)
  %556 = icmp ult i32 %555, 2
  br i1 %556, label %557, label %563

557:                                              ; preds = %548
  %558 = tail call noundef i32 @_Z4ranki(i32 noundef %8) #4
  %559 = tail call noundef i32 @_Z4ranki(i32 noundef %551) #4
  %560 = icmp sgt i32 %558, %559
  br i1 %560, label %561, label %563

561:                                              ; preds = %557
  %562 = ashr i32 %543, 1
  br label %852

563:                                              ; preds = %557, %548
  %564 = tail call noundef i32 @_Z4ranki(i32 noundef %6) #4
  %565 = tail call noundef i32 @_Z4ranki(i32 noundef %551) #4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %573, label %567

567:                                              ; preds = %563
  %568 = tail call noundef i32 @_Z4filei(i32 noundef %6) #4
  %569 = tail call noundef i32 @_Z4filei(i32 noundef %551) #4
  %570 = sub nsw i32 %568, %569
  %571 = tail call i32 @llvm.abs.i32(i32 %570, i1 true)
  %572 = icmp ugt i32 %571, 1
  br i1 %572, label %573, label %852

573:                                              ; preds = %567, %563
  %574 = ashr i32 %543, 1
  br label %852

575:                                              ; preds = %361, %330, %317, %303, %269, %255, %444, %441, %542, %545, %474, %185, %191, %214, %210, %226, %222, %195, %148, %177, %181, %165, %169, %346, %347, %328
  %576 = phi i32 [ %1, %474 ], [ %543, %545 ], [ %543, %542 ], [ %442, %444 ], [ %442, %441 ], [ %82, %347 ], [ %82, %346 ], [ %82, %328 ], [ %187, %185 ], [ %187, %191 ], [ %213, %210 ], [ %217, %214 ], [ %225, %222 ], [ %229, %226 ], [ %187, %195 ], [ %168, %165 ], [ %172, %169 ], [ %180, %177 ], [ %184, %181 ], [ %144, %148 ], [ %268, %255 ], [ %279, %269 ], [ %316, %303 ], [ %327, %317 ], [ %345, %330 ], [ %373, %361 ]
  %577 = icmp eq i32 %2, 4
  br i1 %577, label %578, label %659, !prof !92

578:                                              ; preds = %575
  %579 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %580 = load i32, ptr %579, align 4, !tbaa !50
  %581 = icmp eq i32 %580, 1
  br i1 %581, label %582, label %659, !prof !93

582:                                              ; preds = %578
  %583 = load i32, ptr %11, align 4, !tbaa !50
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %659, !prof !94

585:                                              ; preds = %582
  %586 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %587 = load i64, ptr %586, align 8, !tbaa !56
  %588 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !56
  %589 = load i64, ptr @FileMask, align 16, !tbaa !56
  %590 = or i64 %589, %588
  %591 = and i64 %590, %587
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %852, label %593, !prof !95

593:                                              ; preds = %585
  %594 = and i64 %588, %587
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %626, label %596, !prof !96

596:                                              ; preds = %593
  %597 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %598 = load i64, ptr %597, align 8, !tbaa !56
  %599 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !56
  %600 = and i64 %599, %598
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %602, label %626, !prof !97

602:                                              ; preds = %596
  %603 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %604 = load i64, ptr %603, align 8, !tbaa !56
  %605 = load i64, ptr @BlackSqMask, align 8, !tbaa !56
  %606 = and i64 %605, %604
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %608, label %852, !prof !98

608:                                              ; preds = %602
  %609 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %8) #4
  %610 = icmp sgt i32 %609, 1
  br i1 %610, label %611, label %624, !prof !99

611:                                              ; preds = %608
  %612 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %6) #4
  %613 = load i64, ptr %586, align 8, !tbaa !56
  %614 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %613) #4
  %615 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %614) #4
  %616 = sub nsw i32 %612, %10
  %617 = icmp sgt i32 %609, %616
  br i1 %617, label %852, label %618, !prof !100

618:                                              ; preds = %611
  %619 = add nsw i32 %609, -1
  %620 = sub nsw i32 %615, %10
  %621 = icmp sgt i32 %619, %620
  %622 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  %623 = select i1 %621, i32 %576, i32 %622
  br label %852

624:                                              ; preds = %608
  %625 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  br label %852

626:                                              ; preds = %596, %593
  %627 = and i64 %589, %587
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %852, label %629, !prof !101

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %631 = load i64, ptr %630, align 8, !tbaa !56
  %632 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !56
  %633 = and i64 %632, %631
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %635, label %852, !prof !102

635:                                              ; preds = %629
  %636 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %637 = load i64, ptr %636, align 8, !tbaa !56
  %638 = load i64, ptr @WhiteSqMask, align 8, !tbaa !56
  %639 = and i64 %638, %637
  %640 = icmp eq i64 %639, 0
  br i1 %640, label %641, label %852, !prof !103

641:                                              ; preds = %635
  %642 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %8) #4
  %643 = icmp sgt i32 %642, 1
  br i1 %643, label %644, label %657, !prof !104

644:                                              ; preds = %641
  %645 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %6) #4
  %646 = load i64, ptr %586, align 8, !tbaa !56
  %647 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %646) #4
  %648 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %647) #4
  %649 = sub nsw i32 %645, %10
  %650 = icmp sgt i32 %642, %649
  br i1 %650, label %852, label %651, !prof !104

651:                                              ; preds = %644
  %652 = add nsw i32 %642, -1
  %653 = sub nsw i32 %648, %10
  %654 = icmp sgt i32 %652, %653
  %655 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  %656 = select i1 %654, i32 %576, i32 %655
  br label %852

657:                                              ; preds = %641
  %658 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  br label %852

659:                                              ; preds = %546, %582, %578, %575
  %660 = phi i32 [ %576, %582 ], [ %576, %578 ], [ %576, %575 ], [ %543, %546 ]
  %661 = icmp eq i32 %3, 4
  br i1 %661, label %662, label %744, !prof !105

662:                                              ; preds = %659
  %663 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %664 = load i32, ptr %663, align 4, !tbaa !50
  %665 = icmp eq i32 %664, 1
  br i1 %665, label %666, label %744, !prof !106

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %668 = load i32, ptr %667, align 4, !tbaa !50
  %669 = icmp eq i32 %668, 1
  br i1 %669, label %670, label %744, !prof !107

670:                                              ; preds = %666
  %671 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %672 = load i64, ptr %671, align 8, !tbaa !56
  %673 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !56
  %674 = load i64, ptr @FileMask, align 16, !tbaa !56
  %675 = or i64 %674, %673
  %676 = and i64 %675, %672
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %744, label %678, !prof !108

678:                                              ; preds = %670
  %679 = and i64 %673, %672
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %711, label %681, !prof !109

681:                                              ; preds = %678
  %682 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %683 = load i64, ptr %682, align 8, !tbaa !56
  %684 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !56
  %685 = and i64 %684, %683
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %687, label %711, !prof !110

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %689 = load i64, ptr %688, align 8, !tbaa !56
  %690 = load i64, ptr @WhiteSqMask, align 8, !tbaa !56
  %691 = and i64 %690, %689
  %692 = icmp eq i64 %691, 0
  br i1 %692, label %693, label %744, !prof !111

693:                                              ; preds = %687
  %694 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %6) #4
  %695 = icmp sgt i32 %694, 1
  br i1 %695, label %696, label %709, !prof !112

696:                                              ; preds = %693
  %697 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %8) #4
  %698 = load i64, ptr %671, align 8, !tbaa !56
  %699 = tail call noundef i32 @_Z8FindLasty(i64 noundef %698) #4
  %700 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %699) #4
  %701 = add nsw i32 %697, %10
  %702 = icmp sgt i32 %694, %701
  br i1 %702, label %744, label %703, !prof !113

703:                                              ; preds = %696
  %704 = add nsw i32 %694, -1
  %705 = add nsw i32 %700, %10
  %706 = icmp sgt i32 %704, %705
  %707 = tail call i32 @llvm.smax.i32(i32 %660, i32 0)
  %708 = select i1 %706, i32 %660, i32 %707
  br label %744

709:                                              ; preds = %693
  %710 = tail call i32 @llvm.smax.i32(i32 %660, i32 0)
  br label %744

711:                                              ; preds = %681, %678
  %712 = and i64 %674, %672
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %744, label %714, !prof !114

714:                                              ; preds = %711
  %715 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %716 = load i64, ptr %715, align 8, !tbaa !56
  %717 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !56
  %718 = and i64 %717, %716
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %744, !prof !115

720:                                              ; preds = %714
  %721 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %722 = load i64, ptr %721, align 8, !tbaa !56
  %723 = load i64, ptr @BlackSqMask, align 8, !tbaa !56
  %724 = and i64 %723, %722
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %726, label %744, !prof !116

726:                                              ; preds = %720
  %727 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %6) #4
  %728 = icmp sgt i32 %727, 1
  br i1 %728, label %729, label %742, !prof !117

729:                                              ; preds = %726
  %730 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %8) #4
  %731 = load i64, ptr %671, align 8, !tbaa !56
  %732 = tail call noundef i32 @_Z8FindLasty(i64 noundef %731) #4
  %733 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %732) #4
  %734 = add nsw i32 %730, %10
  %735 = icmp sgt i32 %727, %734
  br i1 %735, label %744, label %736, !prof !118

736:                                              ; preds = %729
  %737 = add nsw i32 %727, -1
  %738 = add nsw i32 %733, %10
  %739 = icmp sgt i32 %737, %738
  %740 = tail call i32 @llvm.smax.i32(i32 %660, i32 0)
  %741 = select i1 %739, i32 %660, i32 %740
  br label %744

742:                                              ; preds = %726
  %743 = tail call i32 @llvm.smax.i32(i32 %660, i32 0)
  br label %744

744:                                              ; preds = %742, %736, %709, %703, %729, %696, %659, %662, %666, %687, %720, %714, %711, %670
  %745 = phi i32 [ %660, %714 ], [ %660, %720 ], [ %660, %711 ], [ %660, %687 ], [ %660, %670 ], [ %660, %666 ], [ %660, %662 ], [ %660, %659 ], [ %660, %696 ], [ %708, %703 ], [ %710, %709 ], [ %660, %729 ], [ %741, %736 ], [ %743, %742 ]
  %746 = icmp eq i32 %2, 0
  br i1 %746, label %747, label %852, !prof !119

747:                                              ; preds = %744
  %748 = icmp eq i32 %3, 0
  br i1 %748, label %749, label %852, !prof !120

749:                                              ; preds = %747
  %750 = load i32, ptr %11, align 4, !tbaa !50
  %751 = icmp eq i32 %750, 1
  br i1 %751, label %752, label %798, !prof !121

752:                                              ; preds = %749
  %753 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %754 = load i64, ptr %753, align 8, !tbaa !56
  %755 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !56
  %756 = and i64 %755, %754
  %757 = icmp eq i64 %756, 0
  br i1 %757, label %776, label %758, !prof !122

758:                                              ; preds = %752
  %759 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %760 = load i64, ptr %759, align 8, !tbaa !56
  %761 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 7), align 8, !tbaa !56
  %762 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 15), align 8, !tbaa !56
  %763 = or i64 %762, %761
  %764 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 14), align 16, !tbaa !56
  %765 = or i64 %763, %764
  %766 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 6), align 16, !tbaa !56
  %767 = or i64 %765, %766
  %768 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 5), align 8, !tbaa !56
  %769 = or i64 %767, %768
  %770 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 23), align 8, !tbaa !56
  %771 = or i64 %769, %770
  %772 = and i64 %771, %760
  %773 = icmp eq i64 %772, 0
  %774 = ashr i32 %745, 2
  %775 = select i1 %773, i32 %745, i32 %774, !prof !123
  br label %795

776:                                              ; preds = %752
  %777 = load i64, ptr @FileMask, align 16, !tbaa !56
  %778 = and i64 %777, %754
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %795, label %780, !prof !124

780:                                              ; preds = %776
  %781 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %782 = load i64, ptr %781, align 8, !tbaa !56
  %783 = load i64, ptr @Mask, align 16, !tbaa !56
  %784 = load <2 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 8), align 16, !tbaa !56
  %785 = load <2 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 1), align 8, !tbaa !56
  %786 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 16), align 16, !tbaa !56
  %787 = shufflevector <2 x i64> %784, <2 x i64> %785, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %788 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %787)
  %789 = or i64 %788, %783
  %790 = or i64 %789, %786
  %791 = and i64 %790, %782
  %792 = icmp eq i64 %791, 0
  %793 = ashr i32 %745, 2
  %794 = select i1 %792, i32 %745, i32 %793
  br label %795

795:                                              ; preds = %780, %758, %776
  %796 = phi i32 [ %745, %776 ], [ %775, %758 ], [ %794, %780 ]
  %797 = ashr i32 %796, 1
  br label %798

798:                                              ; preds = %795, %749
  %799 = phi i32 [ %797, %795 ], [ %745, %749 ]
  %800 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %801 = load i32, ptr %800, align 4, !tbaa !50
  %802 = icmp eq i32 %801, 1
  br i1 %802, label %803, label %852, !prof !125

803:                                              ; preds = %798
  %804 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %805 = load i64, ptr %804, align 8, !tbaa !56
  %806 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !56
  %807 = and i64 %806, %805
  %808 = icmp eq i64 %807, 0
  br i1 %808, label %827, label %809, !prof !126

809:                                              ; preds = %803
  %810 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %811 = load i64, ptr %810, align 8, !tbaa !56
  %812 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 63), align 8, !tbaa !56
  %813 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 55), align 8, !tbaa !56
  %814 = or i64 %813, %812
  %815 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 62), align 16, !tbaa !56
  %816 = or i64 %814, %815
  %817 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 54), align 16, !tbaa !56
  %818 = or i64 %816, %817
  %819 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 61), align 8, !tbaa !56
  %820 = or i64 %818, %819
  %821 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 47), align 8, !tbaa !56
  %822 = or i64 %820, %821
  %823 = and i64 %822, %811
  %824 = icmp eq i64 %823, 0
  %825 = ashr i32 %799, 2
  %826 = select i1 %824, i32 %799, i32 %825
  br label %849

827:                                              ; preds = %803
  %828 = load i64, ptr @FileMask, align 16, !tbaa !56
  %829 = and i64 %828, %805
  %830 = icmp eq i64 %829, 0
  br i1 %830, label %849, label %831, !prof !127

831:                                              ; preds = %827
  %832 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %833 = load i64, ptr %832, align 8, !tbaa !56
  %834 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 56), align 16, !tbaa !56
  %835 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 48), align 16, !tbaa !56
  %836 = or i64 %835, %834
  %837 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 57), align 8, !tbaa !56
  %838 = or i64 %836, %837
  %839 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 49), align 8, !tbaa !56
  %840 = or i64 %838, %839
  %841 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 58), align 16, !tbaa !56
  %842 = or i64 %840, %841
  %843 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 40), align 16, !tbaa !56
  %844 = or i64 %842, %843
  %845 = and i64 %844, %833
  %846 = icmp eq i64 %845, 0
  br i1 %846, label %849, label %847, !prof !128

847:                                              ; preds = %831
  %848 = ashr i32 %799, 2
  br label %849

849:                                              ; preds = %809, %827, %847, %831
  %850 = phi i32 [ %848, %847 ], [ %799, %831 ], [ %799, %827 ], [ %826, %809 ]
  %851 = ashr i32 %850, 1
  br label %852

852:                                              ; preds = %466, %472, %460, %567, %573, %561, %744, %747, %602, %635, %629, %626, %585, %611, %644, %618, %624, %651, %657, %849, %798
  %853 = phi i32 [ %851, %849 ], [ %799, %798 ], [ %658, %657 ], [ %656, %651 ], [ %576, %644 ], [ %625, %624 ], [ %623, %618 ], [ %576, %611 ], [ %576, %585 ], [ %576, %602 ], [ %576, %626 ], [ %576, %635 ], [ %576, %629 ], [ %745, %747 ], [ %745, %744 ], [ %461, %460 ], [ %473, %472 ], [ %442, %466 ], [ %562, %561 ], [ %574, %573 ], [ %543, %567 ]
  ret i32 %853
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 126727826429}
!4 = !{!"MaxCount", i64 7592818589}
!5 = !{!"MaxInternalCount", i64 4612963787}
!6 = !{!"MaxFunctionCount", i64 7592818589}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7592818589, i32 1}
!14 = !{i32 100000, i64 5393808666, i32 2}
!15 = !{i32 200000, i64 3322262585, i32 6}
!16 = !{i32 300000, i64 2468518944, i32 10}
!17 = !{i32 400000, i64 1837796421, i32 16}
!18 = !{i32 500000, i64 887660800, i32 29}
!19 = !{i32 600000, i64 608930740, i32 46}
!20 = !{i32 700000, i64 396110762, i32 71}
!21 = !{i32 800000, i64 205990918, i32 118}
!22 = !{i32 900000, i64 105535903, i32 199}
!23 = !{i32 950000, i64 66857471, i32 270}
!24 = !{i32 990000, i64 20633230, i32 388}
!25 = !{i32 999000, i64 3210553, i32 503}
!26 = !{i32 999900, i64 480625, i32 581}
!27 = !{i32 999990, i64 63262, i32 633}
!28 = !{i32 999999, i64 5111, i32 689}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z12taxicab_distii, i64 1295}
!36 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z8FindLasty, i64 393}
!37 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z4filei, i64 60}
!38 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z4ranki, i64 38}
!39 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z9FindFirsty, i64 50}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 288009370}
!42 = !{!43, !44, i64 464}
!43 = !{!"_ZTS7state_t", !44, i64 0, !45, i64 4, !47, i64 264, !47, i64 272, !47, i64 280, !45, i64 288, !44, i64 392, !44, i64 396, !45, i64 400, !44, i64 452, !44, i64 456, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !47, i64 480, !47, i64 488, !45, i64 496, !45, i64 2544, !45, i64 2800, !45, i64 3056, !47, i64 4080, !47, i64 4088, !44, i64 4096, !45, i64 4100, !44, i64 4356, !44, i64 4360, !44, i64 4364, !44, i64 4368, !44, i64 4372, !44, i64 4376, !44, i64 4380, !44, i64 4384, !44, i64 4388, !44, i64 4392, !45, i64 4400}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"long long", !45, i64 0}
!48 = !{!43, !44, i64 468}
!49 = !{!43, !44, i64 460}
!50 = !{!44, !44, i64 0}
!51 = !{!"branch_weights", i32 17468, i32 287991904}
!52 = !{!"branch_weights", i32 7, i32 17462}
!53 = !{!"branch_weights", i32 1, i32 7}
!54 = !{!"branch_weights", i32 7, i32 1}
!55 = !{!"branch_weights", i32 1, i32 15}
!56 = !{!47, !47, i64 0}
!57 = !{!"branch_weights", i32 -867653665, i32 867653664}
!58 = !{!"branch_weights", i32 5, i32 43}
!59 = !{!"branch_weights", i32 43, i32 5}
!60 = !{!"branch_weights", i32 3666, i32 13797}
!61 = !{!"branch_weights", i32 673, i32 2994}
!62 = !{!"branch_weights", i32 250368, i32 95394}
!63 = !{!"branch_weights", i32 1, i32 489}
!64 = !{!"branch_weights", i32 41, i32 145}
!65 = !{!"branch_weights", i32 207348, i32 32430999}
!66 = !{!"branch_weights", i32 1887, i32 10657}
!67 = !{!"branch_weights", i32 13613554, i32 2133870094}
!68 = !{!"branch_weights", i32 1, i32 110}
!69 = !{!"branch_weights", i32 135393435, i32 2012090213}
!70 = !{!"branch_weights", i32 11, i32 1085}
!71 = !{!"branch_weights", i32 9802899, i32 70405201}
!72 = !{!"branch_weights", i32 120, i32 17343}
!73 = !{!"branch_weights", i32 400, i32 2141}
!74 = !{!"branch_weights", i32 7, i32 14}
!75 = !{!"branch_weights", i32 3, i32 12}
!76 = !{!"branch_weights", i32 11, i32 2}
!77 = !{!"branch_weights", i32 41172, i32 287950733}
!78 = !{!"branch_weights", i32 5909, i32 35264}
!79 = !{!"branch_weights", i32 5173, i32 737}
!80 = !{!"branch_weights", i32 1457504, i32 4916864}
!81 = !{!"branch_weights", i32 1, i32 1184}
!82 = !{!"branch_weights", i32 59, i32 3932}
!83 = !{!"branch_weights", i32 404192, i32 122003137}
!84 = !{!"branch_weights", i32 3264, i32 15505}
!85 = !{!"branch_weights", i32 3506134, i32 2143977514}
!86 = !{!"branch_weights", i32 1, i32 135}
!87 = !{!"branch_weights", i32 557161506, i32 1590322142}
!88 = !{!"branch_weights", i32 3, i32 10646}
!89 = !{!"branch_weights", i32 18809050, i32 446132456}
!90 = !{!"branch_weights", i32 181, i32 40992}
!91 = !{!"branch_weights", i32 1, i32 181}
!92 = !{!"branch_weights", i32 15256846, i32 2132226802}
!93 = !{!"branch_weights", i32 1659393, i32 386777}
!94 = !{!"branch_weights", i32 12593, i32 1646801}
!95 = !{!"branch_weights", i32 2598, i32 9996}
!96 = !{!"branch_weights", i32 4, i32 9993}
!97 = !{!"branch_weights", i32 916, i32 9078}
!98 = !{!"branch_weights", i32 66, i32 851}
!99 = !{!"branch_weights", i32 50, i32 17}
!100 = !{!"branch_weights", i32 1, i32 50}
!101 = !{!"branch_weights", i32 9078, i32 4}
!102 = !{!"branch_weights", i32 4, i32 1}
!103 = !{!"branch_weights", i32 3, i32 2}
!104 = !{!"branch_weights", i32 3, i32 1}
!105 = !{!"branch_weights", i32 9683567, i32 2137800081}
!106 = !{!"branch_weights", i32 1071092, i32 227562}
!107 = !{!"branch_weights", i32 10273, i32 1060820}
!108 = !{!"branch_weights", i32 6315, i32 3959}
!109 = !{!"branch_weights", i32 3897, i32 63}
!110 = !{!"branch_weights", i32 53, i32 11}
!111 = !{!"branch_weights", i32 53, i32 1}
!112 = !{!"branch_weights", i32 52, i32 2}
!113 = !{!"branch_weights", i32 1, i32 52}
!114 = !{!"branch_weights", i32 11, i32 3897}
!115 = !{!"branch_weights", i32 346, i32 3552}
!116 = !{!"branch_weights", i32 327, i32 20}
!117 = !{!"branch_weights", i32 327, i32 1}
!118 = !{!"branch_weights", i32 184, i32 144}
!119 = !{!"branch_weights", i32 5035085, i32 2142448563}
!120 = !{!"branch_weights", i32 92192, i32 583059}
!121 = !{!"branch_weights", i32 65, i32 92128}
!122 = !{!"branch_weights", i32 2, i32 64}
!123 = !{!"branch_weights", i32 40, i32 25}
!124 = !{!"branch_weights", i32 2, i32 1}
!125 = !{!"branch_weights", i32 278, i32 91915}
!126 = !{!"branch_weights", i32 278, i32 1}
!127 = !{!"branch_weights", i32 126, i32 153}
!128 = !{!"branch_weights", i32 153, i32 1}
