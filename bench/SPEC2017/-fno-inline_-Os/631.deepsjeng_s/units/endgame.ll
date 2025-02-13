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
define dso_local noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !42 {
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = icmp eq i32 %15, 0
  br i1 %13, label %17, label %474, !prof !52

17:                                               ; preds = %4
  br i1 %16, label %18, label %374, !prof !53

18:                                               ; preds = %17
  %19 = icmp sgt i32 %2, %3
  br i1 %19, label %22, label %20, !prof !54

20:                                               ; preds = %18
  %21 = icmp sgt i32 %3, %2
  br i1 %21, label %22, label %29, !prof !55

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
  %32 = load i32, ptr %31, align 4, !tbaa !51
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %34 = load i32, ptr %33, align 4, !tbaa !51
  %35 = shl nsw i32 %34, 1
  %36 = add nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %38 = load i32, ptr %37, align 4, !tbaa !51
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %41, %38
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %81, !prof !56

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !51
  %47 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %48 = load i32, ptr %47, align 4, !tbaa !51
  %49 = add nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %51 = load i32, ptr %50, align 4, !tbaa !51
  %52 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !51
  %54 = add nsw i32 %53, %51
  %55 = sub nsw i32 %49, %54
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %67, !prof !57

57:                                               ; preds = %44
  %58 = icmp eq i32 %48, 2
  br i1 %58, label %59, label %63, !prof !58

59:                                               ; preds = %57
  %60 = icmp ne i32 %51, 1
  %61 = icmp sgt i32 %30, 0
  %62 = and i1 %60, %61
  br i1 %62, label %65, label %67, !prof !59

63:                                               ; preds = %57
  %64 = icmp sgt i32 %30, 0
  br i1 %64, label %65, label %67, !prof !60

65:                                               ; preds = %59, %63
  %66 = lshr i32 %30, 3
  br label %67

67:                                               ; preds = %59, %65, %63, %44
  %68 = phi i32 [ %66, %65 ], [ %30, %63 ], [ %30, %59 ], [ %30, %44 ]
  %69 = sub nsw i32 %54, %49
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %81, !prof !61

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
  br i1 %85, label %88, label %230, !prof !62

88:                                               ; preds = %81
  br i1 %87, label %89, label %346

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %91 = load i32, ptr %90, align 4, !tbaa !51
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %95 = load i32, ptr %94, align 4, !tbaa !51
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !51
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %142

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %103 = load i32, ptr %102, align 4, !tbaa !51
  %104 = icmp slt i32 %103, 3
  %105 = select i1 %104, i32 0, i32 %82
  br label %142

106:                                              ; preds = %93, %89
  %107 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %108 = load i32, ptr %107, align 4, !tbaa !51
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %112 = load i32, ptr %111, align 4, !tbaa !51
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %116 = load i32, ptr %115, align 4, !tbaa !51
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
  %125 = load i32, ptr %124, align 4, !tbaa !51
  %126 = icmp ne i32 %125, 0
  %127 = icmp ne i32 %125, 1
  %128 = or i1 %109, %127
  %129 = and i1 %126, %128
  br i1 %129, label %140, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %132 = load i32, ptr %131, align 4, !tbaa !51
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
  %146 = load i32, ptr %145, align 4, !tbaa !51
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %150 = load i32, ptr %149, align 4, !tbaa !51
  %151 = icmp eq i32 %150, 1
  %152 = icmp eq i32 %143, 1
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %575

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %156 = load i64, ptr %155, align 8, !tbaa !63
  %157 = load i64, ptr @BlackSqMask, align 8, !tbaa !63
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
  %189 = load i32, ptr %188, align 4, !tbaa !51
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %575

191:                                              ; preds = %185
  %192 = icmp eq i32 %186, 0
  %193 = icmp eq i32 %91, 1
  %194 = and i1 %193, %192
  br i1 %194, label %195, label %575

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %197 = load i32, ptr %196, align 4, !tbaa !51
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %575

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %201 = load i64, ptr %200, align 8, !tbaa !63
  %202 = load i64, ptr @BlackSqMask, align 8, !tbaa !63
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
  br i1 %87, label %231, label %346, !prof !64

231:                                              ; preds = %230
  %232 = icmp eq i32 %32, 1
  %233 = icmp eq i32 %38, 0
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %280, !prof !65

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %237 = load i32, ptr %236, align 4, !tbaa !51
  %238 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %239 = load i32, ptr %238, align 4, !tbaa !51
  %240 = sub i32 0, %239
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %247, label %242

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %244 = load i32, ptr %243, align 4, !tbaa !51
  %245 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %246 = load i32, ptr %245, align 4, !tbaa !51
  br label %269

247:                                              ; preds = %235
  %248 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %249 = load i32, ptr %248, align 4, !tbaa !51
  %250 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %251 = load i32, ptr %250, align 4, !tbaa !51
  %252 = add i32 %249, -1
  %253 = add i32 %252, %251
  %254 = icmp ult i32 %253, 2
  br i1 %254, label %255, label %269

255:                                              ; preds = %247
  %256 = ashr i32 %82, 3
  %257 = sext i32 %8 to i64
  %258 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !63
  %260 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %261 = load i64, ptr %260, align 8, !tbaa !63
  %262 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %263 = load i64, ptr %262, align 8, !tbaa !63
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
  br i1 %282, label %328, label %283, !prof !66

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %285 = load i32, ptr %284, align 4, !tbaa !51
  %286 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %287 = load i32, ptr %286, align 4, !tbaa !51
  %288 = sub i32 0, %287
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %292 = load i32, ptr %291, align 4, !tbaa !51
  %293 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %294 = load i32, ptr %293, align 4, !tbaa !51
  br label %317

295:                                              ; preds = %283
  %296 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %297 = load i32, ptr %296, align 4, !tbaa !51
  %298 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %299 = load i32, ptr %298, align 4, !tbaa !51
  %300 = add i32 %297, -1
  %301 = add i32 %300, %299
  %302 = icmp ult i32 %301, 2
  br i1 %302, label %303, label %317

303:                                              ; preds = %295
  %304 = ashr i32 %82, 3
  %305 = sext i32 %6 to i64
  %306 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !63
  %308 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %309 = load i64, ptr %308, align 8, !tbaa !63
  %310 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %311 = load i64, ptr %310, align 8, !tbaa !63
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
  br i1 %329, label %575, label %330, !prof !67

330:                                              ; preds = %328
  %331 = sub nsw i32 %32, %38
  %332 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %333 = load i32, ptr %332, align 4, !tbaa !51
  %334 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %335 = load i32, ptr %334, align 4, !tbaa !51
  %336 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %337 = load i32, ptr %336, align 4, !tbaa !51
  %338 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %339 = load i32, ptr %338, align 4, !tbaa !51
  %340 = add i32 %335, %333
  %341 = add i32 %337, %339
  %342 = sub i32 %340, %341
  %343 = icmp eq i32 %331, %342
  %344 = ashr i32 %82, 2
  %345 = select i1 %343, i32 %344, i32 %82, !prof !58
  br label %575

346:                                              ; preds = %88, %230
  br i1 %43, label %575, label %347, !prof !68

347:                                              ; preds = %346
  %348 = sub nsw i32 %36, %42
  %349 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %350 = load i32, ptr %349, align 4, !tbaa !51
  %351 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %352 = load i32, ptr %351, align 4, !tbaa !51
  %353 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %354 = load i32, ptr %353, align 4, !tbaa !51
  %355 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %356 = load i32, ptr %355, align 4, !tbaa !51
  %357 = add i32 %352, %350
  %358 = add i32 %354, %356
  %359 = sub i32 %357, %358
  %360 = icmp eq i32 %348, %359
  br i1 %360, label %361, label %575, !prof !69

361:                                              ; preds = %347
  %362 = load i32, ptr %11, align 4, !tbaa !51
  %363 = icmp eq i32 %362, 0
  %364 = icmp sgt i32 %82, 0
  %365 = select i1 %363, i1 %364, i1 false
  %366 = lshr i32 %82, 2
  %367 = select i1 %365, i32 %366, i32 %82
  %368 = load i32, ptr %14, align 4, !tbaa !51
  %369 = icmp eq i32 %368, 0
  %370 = icmp slt i32 %367, 0
  %371 = select i1 %369, i1 %370, i1 false
  %372 = ashr i32 %367, 2
  %373 = select i1 %371, i32 %372, i32 %367
  br label %575

374:                                              ; preds = %17
  %375 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %376 = load i32, ptr %375, align 4, !tbaa !51
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %399, !prof !70

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %380 = load i32, ptr %379, align 4, !tbaa !51
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %399, !prof !71

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %384 = load i32, ptr %383, align 4, !tbaa !51
  %385 = icmp eq i32 %384, 1
  %386 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %387 = load i32, ptr %386, align 4, !tbaa !51
  %388 = icmp eq i32 %387, 0
  %389 = select i1 %385, i1 %388, i1 false
  br i1 %389, label %390, label %393, !prof !72

390:                                              ; preds = %382
  %391 = icmp sgt i32 %1, 0
  br i1 %391, label %392, label %399, !prof !73

392:                                              ; preds = %390
  br label %399

393:                                              ; preds = %382
  %394 = icmp eq i32 %387, 1
  br i1 %394, label %395, label %399, !prof !74

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
  br i1 %403, label %404, label %410, !prof !75

404:                                              ; preds = %399
  %405 = icmp sgt i32 %15, 0
  %406 = icmp sgt i32 %400, 0
  %407 = and i1 %406, %405
  %408 = lshr i32 %400, 2
  %409 = select i1 %407, i32 %408, i32 %400, !prof !76
  br label %430

410:                                              ; preds = %399
  %411 = icmp eq i32 %2, 8
  br i1 %411, label %412, label %420, !prof !77

412:                                              ; preds = %410
  %413 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %414 = load i32, ptr %413, align 4, !tbaa !51
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %420, !prof !78

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
  br i1 %425, label %426, label %430, !prof !79

426:                                              ; preds = %420
  %427 = icmp sgt i32 %421, 0
  %428 = lshr i32 %421, 3
  %429 = select i1 %427, i32 %428, i32 %421, !prof !80
  br label %441

430:                                              ; preds = %404, %420
  %431 = phi i1 [ true, %404 ], [ %424, %420 ]
  %432 = phi i32 [ %409, %404 ], [ %421, %420 ]
  %433 = icmp slt i32 %2, 17
  %434 = icmp sgt i32 %2, %3
  %435 = and i1 %433, %434
  br i1 %435, label %436, label %441, !prof !81

436:                                              ; preds = %430
  %437 = icmp sgt i32 %432, 0
  %438 = and i1 %431, %437
  %439 = zext i1 %438 to i32
  %440 = lshr i32 %432, %439
  br label %441

441:                                              ; preds = %436, %426, %430
  %442 = phi i32 [ %432, %430 ], [ %429, %426 ], [ %440, %436 ]
  %443 = icmp eq i32 %15, 1
  br i1 %443, label %444, label %575, !prof !82

444:                                              ; preds = %441
  %445 = icmp eq i32 %2, 6
  %446 = and i1 %445, %402
  br i1 %446, label %447, label %575, !prof !83

447:                                              ; preds = %444
  %448 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %449 = load i64, ptr %448, align 8, !tbaa !63
  %450 = tail call noundef i32 @_Z8FindLasty(i64 noundef %449) #4
  %451 = tail call noundef i32 @_Z4filei(i32 noundef %6) #4
  %452 = tail call noundef i32 @_Z4filei(i32 noundef %450) #4
  %453 = sub nsw i32 %451, %452
  %454 = tail call i32 @llvm.abs.i32(i32 %453, i1 true)
  %455 = icmp ult i32 %454, 2
  br i1 %455, label %456, label %462, !prof !84

456:                                              ; preds = %447
  %457 = tail call noundef i32 @_Z4ranki(i32 noundef %6) #4
  %458 = tail call noundef i32 @_Z4ranki(i32 noundef %450) #4
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %460, label %462, !prof !85

460:                                              ; preds = %456
  %461 = ashr i32 %442, 1
  br label %851

462:                                              ; preds = %456, %447
  %463 = tail call noundef i32 @_Z4ranki(i32 noundef %8) #4
  %464 = tail call noundef i32 @_Z4ranki(i32 noundef %450) #4
  %465 = icmp sgt i32 %463, %464
  br i1 %465, label %472, label %466, !prof !86

466:                                              ; preds = %462
  %467 = tail call noundef i32 @_Z4filei(i32 noundef %8) #4
  %468 = tail call noundef i32 @_Z4filei(i32 noundef %450) #4
  %469 = sub nsw i32 %467, %468
  %470 = tail call i32 @llvm.abs.i32(i32 %469, i1 true)
  %471 = icmp ugt i32 %470, 1
  br i1 %471, label %472, label %851, !prof !85

472:                                              ; preds = %466, %462
  %473 = ashr i32 %442, 1
  br label %851

474:                                              ; preds = %4
  br i1 %16, label %475, label %575, !prof !87

475:                                              ; preds = %474
  %476 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %477 = load i32, ptr %476, align 4, !tbaa !51
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %500, !prof !88

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %481 = load i32, ptr %480, align 4, !tbaa !51
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %500, !prof !89

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %485 = load i32, ptr %484, align 4, !tbaa !51
  %486 = icmp eq i32 %485, 1
  %487 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %488 = load i32, ptr %487, align 4, !tbaa !51
  %489 = icmp eq i32 %488, 0
  %490 = select i1 %486, i1 %489, i1 false
  br i1 %490, label %491, label %493, !prof !90

491:                                              ; preds = %483
  %492 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  br label %500

493:                                              ; preds = %483
  %494 = icmp eq i32 %488, 1
  br i1 %494, label %495, label %500, !prof !91

495:                                              ; preds = %493
  %496 = icmp eq i32 %485, 0
  %497 = icmp slt i32 %1, 0
  %498 = and i1 %497, %496
  br i1 %498, label %499, label %500, !prof !92

499:                                              ; preds = %495
  br label %500

500:                                              ; preds = %491, %499, %495, %493, %479, %475
  %501 = phi i32 [ %1, %475 ], [ %1, %479 ], [ 0, %499 ], [ %1, %495 ], [ %1, %493 ], [ %492, %491 ]
  %502 = icmp eq i32 %3, 10
  %503 = icmp eq i32 %2, 6
  %504 = and i1 %503, %502
  br i1 %504, label %505, label %511, !prof !93

505:                                              ; preds = %500
  %506 = icmp sgt i32 %12, 0
  %507 = icmp slt i32 %501, 0
  %508 = and i1 %506, %507
  %509 = ashr i32 %501, 2
  %510 = select i1 %508, i32 %509, i32 %501, !prof !94
  br label %531

511:                                              ; preds = %500
  %512 = icmp eq i32 %3, 8
  br i1 %512, label %513, label %521, !prof !95

513:                                              ; preds = %511
  %514 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %515 = load i32, ptr %514, align 4, !tbaa !51
  %516 = icmp eq i32 %515, 0
  %517 = icmp slt i32 %501, 0
  %518 = and i1 %517, %516
  br i1 %518, label %519, label %521, !prof !96

519:                                              ; preds = %513
  %520 = ashr i32 %501, 3
  br label %521

521:                                              ; preds = %519, %513, %511
  %522 = phi i32 [ %520, %519 ], [ %501, %513 ], [ %501, %511 ]
  %523 = icmp slt i32 %3, 9
  %524 = sub nsw i32 %3, %2
  %525 = icmp slt i32 %524, 5
  %526 = select i1 %523, i1 %525, i1 false
  br i1 %526, label %527, label %531, !prof !97

527:                                              ; preds = %521
  %528 = icmp slt i32 %522, 0
  br i1 %528, label %529, label %542, !prof !98

529:                                              ; preds = %527
  %530 = ashr i32 %522, 3
  br label %542

531:                                              ; preds = %505, %521
  %532 = phi i1 [ true, %505 ], [ %525, %521 ]
  %533 = phi i32 [ %510, %505 ], [ %522, %521 ]
  %534 = icmp slt i32 %3, 17
  %535 = icmp sgt i32 %3, %2
  %536 = and i1 %534, %535
  br i1 %536, label %537, label %542, !prof !99

537:                                              ; preds = %531
  %538 = icmp slt i32 %533, 0
  %539 = and i1 %532, %538
  %540 = zext i1 %539 to i32
  %541 = ashr i32 %533, %540
  br label %542

542:                                              ; preds = %537, %531, %527, %529
  %543 = phi i32 [ %530, %529 ], [ %522, %527 ], [ %533, %531 ], [ %541, %537 ]
  %544 = icmp eq i32 %12, 1
  br i1 %544, label %545, label %575, !prof !100

545:                                              ; preds = %542
  %546 = icmp eq i32 %3, 6
  %547 = and i1 %503, %546
  br i1 %547, label %548, label %575, !prof !101

548:                                              ; preds = %545
  %549 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %550 = load i64, ptr %549, align 8, !tbaa !63
  %551 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %550) #4
  %552 = tail call noundef i32 @_Z4filei(i32 noundef %8) #4
  %553 = tail call noundef i32 @_Z4filei(i32 noundef %551) #4
  %554 = sub nsw i32 %552, %553
  %555 = tail call i32 @llvm.abs.i32(i32 %554, i1 true)
  %556 = icmp ult i32 %555, 2
  br i1 %556, label %557, label %563, !prof !102

557:                                              ; preds = %548
  %558 = tail call noundef i32 @_Z4ranki(i32 noundef %8) #4
  %559 = tail call noundef i32 @_Z4ranki(i32 noundef %551) #4
  %560 = icmp sgt i32 %558, %559
  br i1 %560, label %561, label %563

561:                                              ; preds = %557
  %562 = ashr i32 %543, 1
  br label %851

563:                                              ; preds = %557, %548
  %564 = tail call noundef i32 @_Z4ranki(i32 noundef %6) #4
  %565 = tail call noundef i32 @_Z4ranki(i32 noundef %551) #4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %573, label %567, !prof !102

567:                                              ; preds = %563
  %568 = tail call noundef i32 @_Z4filei(i32 noundef %6) #4
  %569 = tail call noundef i32 @_Z4filei(i32 noundef %551) #4
  %570 = sub nsw i32 %568, %569
  %571 = tail call i32 @llvm.abs.i32(i32 %570, i1 true)
  %572 = icmp ugt i32 %571, 1
  br i1 %572, label %573, label %851, !prof !103

573:                                              ; preds = %567, %563
  %574 = ashr i32 %543, 1
  br label %851

575:                                              ; preds = %361, %330, %317, %303, %269, %255, %444, %441, %542, %545, %474, %185, %191, %214, %210, %226, %222, %195, %148, %177, %181, %165, %169, %346, %347, %328
  %576 = phi i32 [ %1, %474 ], [ %543, %545 ], [ %543, %542 ], [ %442, %444 ], [ %442, %441 ], [ %82, %347 ], [ %82, %346 ], [ %82, %328 ], [ %187, %185 ], [ %187, %191 ], [ %213, %210 ], [ %217, %214 ], [ %225, %222 ], [ %229, %226 ], [ %187, %195 ], [ %168, %165 ], [ %172, %169 ], [ %180, %177 ], [ %184, %181 ], [ %144, %148 ], [ %268, %255 ], [ %279, %269 ], [ %316, %303 ], [ %327, %317 ], [ %345, %330 ], [ %373, %361 ]
  %577 = icmp eq i32 %2, 4
  br i1 %577, label %578, label %659, !prof !104

578:                                              ; preds = %575
  %579 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %580 = load i32, ptr %579, align 4, !tbaa !51
  %581 = icmp eq i32 %580, 1
  br i1 %581, label %582, label %659, !prof !105

582:                                              ; preds = %578
  %583 = load i32, ptr %11, align 4, !tbaa !51
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %659, !prof !106

585:                                              ; preds = %582
  %586 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %587 = load i64, ptr %586, align 8, !tbaa !63
  %588 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !63
  %589 = load i64, ptr @FileMask, align 16, !tbaa !63
  %590 = or i64 %589, %588
  %591 = and i64 %590, %587
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %851, label %593, !prof !107

593:                                              ; preds = %585
  %594 = and i64 %588, %587
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %626, label %596, !prof !108

596:                                              ; preds = %593
  %597 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %598 = load i64, ptr %597, align 8, !tbaa !63
  %599 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !63
  %600 = and i64 %599, %598
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %602, label %626, !prof !109

602:                                              ; preds = %596
  %603 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %604 = load i64, ptr %603, align 8, !tbaa !63
  %605 = load i64, ptr @BlackSqMask, align 8, !tbaa !63
  %606 = and i64 %605, %604
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %608, label %851, !prof !110

608:                                              ; preds = %602
  %609 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %8) #4
  %610 = icmp sgt i32 %609, 1
  br i1 %610, label %611, label %624, !prof !111

611:                                              ; preds = %608
  %612 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %6) #4
  %613 = load i64, ptr %586, align 8, !tbaa !63
  %614 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %613) #4
  %615 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %614) #4
  %616 = sub nsw i32 %612, %10
  %617 = icmp sgt i32 %609, %616
  br i1 %617, label %851, label %618, !prof !112

618:                                              ; preds = %611
  %619 = add nsw i32 %609, -1
  %620 = sub nsw i32 %615, %10
  %621 = icmp sgt i32 %619, %620
  %622 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  %623 = select i1 %621, i32 %576, i32 %622
  br label %851

624:                                              ; preds = %608
  %625 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  br label %851

626:                                              ; preds = %596, %593
  %627 = and i64 %589, %587
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %851, label %629, !prof !113

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %631 = load i64, ptr %630, align 8, !tbaa !63
  %632 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !63
  %633 = and i64 %632, %631
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %635, label %851, !prof !114

635:                                              ; preds = %629
  %636 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %637 = load i64, ptr %636, align 8, !tbaa !63
  %638 = load i64, ptr @WhiteSqMask, align 8, !tbaa !63
  %639 = and i64 %638, %637
  %640 = icmp eq i64 %639, 0
  br i1 %640, label %641, label %851, !prof !115

641:                                              ; preds = %635
  %642 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %8) #4
  %643 = icmp sgt i32 %642, 1
  br i1 %643, label %644, label %657, !prof !116

644:                                              ; preds = %641
  %645 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %6) #4
  %646 = load i64, ptr %586, align 8, !tbaa !63
  %647 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %646) #4
  %648 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %647) #4
  %649 = sub nsw i32 %645, %10
  %650 = icmp sgt i32 %642, %649
  br i1 %650, label %851, label %651, !prof !116

651:                                              ; preds = %644
  %652 = add nsw i32 %642, -1
  %653 = sub nsw i32 %648, %10
  %654 = icmp sgt i32 %652, %653
  %655 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  %656 = select i1 %654, i32 %576, i32 %655
  br label %851

657:                                              ; preds = %641
  %658 = tail call i32 @llvm.smin.i32(i32 %576, i32 0)
  br label %851

659:                                              ; preds = %582, %578, %575
  %660 = icmp eq i32 %3, 4
  br i1 %660, label %661, label %743, !prof !117

661:                                              ; preds = %659
  %662 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %663 = load i32, ptr %662, align 4, !tbaa !51
  %664 = icmp eq i32 %663, 1
  br i1 %664, label %665, label %743, !prof !118

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %667 = load i32, ptr %666, align 4, !tbaa !51
  %668 = icmp eq i32 %667, 1
  br i1 %668, label %669, label %743, !prof !119

669:                                              ; preds = %665
  %670 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %671 = load i64, ptr %670, align 8, !tbaa !63
  %672 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !63
  %673 = load i64, ptr @FileMask, align 16, !tbaa !63
  %674 = or i64 %673, %672
  %675 = and i64 %674, %671
  %676 = icmp eq i64 %675, 0
  br i1 %676, label %743, label %677, !prof !120

677:                                              ; preds = %669
  %678 = and i64 %672, %671
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %710, label %680, !prof !121

680:                                              ; preds = %677
  %681 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %682 = load i64, ptr %681, align 8, !tbaa !63
  %683 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !63
  %684 = and i64 %683, %682
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %686, label %710, !prof !122

686:                                              ; preds = %680
  %687 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %688 = load i64, ptr %687, align 8, !tbaa !63
  %689 = load i64, ptr @WhiteSqMask, align 8, !tbaa !63
  %690 = and i64 %689, %688
  %691 = icmp eq i64 %690, 0
  br i1 %691, label %692, label %743, !prof !123

692:                                              ; preds = %686
  %693 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %6) #4
  %694 = icmp sgt i32 %693, 1
  br i1 %694, label %695, label %708, !prof !124

695:                                              ; preds = %692
  %696 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %8) #4
  %697 = load i64, ptr %670, align 8, !tbaa !63
  %698 = tail call noundef i32 @_Z8FindLasty(i64 noundef %697) #4
  %699 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %698) #4
  %700 = add nsw i32 %696, %10
  %701 = icmp sgt i32 %693, %700
  br i1 %701, label %743, label %702, !prof !125

702:                                              ; preds = %695
  %703 = add nsw i32 %693, -1
  %704 = add nsw i32 %699, %10
  %705 = icmp sgt i32 %703, %704
  %706 = tail call i32 @llvm.smax.i32(i32 %576, i32 0)
  %707 = select i1 %705, i32 %576, i32 %706
  br label %743

708:                                              ; preds = %692
  %709 = tail call i32 @llvm.smax.i32(i32 %576, i32 0)
  br label %743

710:                                              ; preds = %680, %677
  %711 = and i64 %673, %671
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %743, label %713, !prof !126

713:                                              ; preds = %710
  %714 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %715 = load i64, ptr %714, align 8, !tbaa !63
  %716 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !63
  %717 = and i64 %716, %715
  %718 = icmp eq i64 %717, 0
  br i1 %718, label %719, label %743, !prof !127

719:                                              ; preds = %713
  %720 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %721 = load i64, ptr %720, align 8, !tbaa !63
  %722 = load i64, ptr @BlackSqMask, align 8, !tbaa !63
  %723 = and i64 %722, %721
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %725, label %743, !prof !128

725:                                              ; preds = %719
  %726 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %6) #4
  %727 = icmp sgt i32 %726, 1
  br i1 %727, label %728, label %741, !prof !129

728:                                              ; preds = %725
  %729 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %8) #4
  %730 = load i64, ptr %670, align 8, !tbaa !63
  %731 = tail call noundef i32 @_Z8FindLasty(i64 noundef %730) #4
  %732 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %731) #4
  %733 = add nsw i32 %729, %10
  %734 = icmp sgt i32 %726, %733
  br i1 %734, label %743, label %735, !prof !130

735:                                              ; preds = %728
  %736 = add nsw i32 %726, -1
  %737 = add nsw i32 %732, %10
  %738 = icmp sgt i32 %736, %737
  %739 = tail call i32 @llvm.smax.i32(i32 %576, i32 0)
  %740 = select i1 %738, i32 %576, i32 %739
  br label %743

741:                                              ; preds = %725
  %742 = tail call i32 @llvm.smax.i32(i32 %576, i32 0)
  br label %743

743:                                              ; preds = %741, %735, %708, %702, %728, %695, %659, %661, %665, %686, %719, %713, %710, %669
  %744 = phi i32 [ %576, %713 ], [ %576, %719 ], [ %576, %710 ], [ %576, %686 ], [ %576, %669 ], [ %576, %665 ], [ %576, %661 ], [ %576, %659 ], [ %576, %695 ], [ %707, %702 ], [ %709, %708 ], [ %576, %728 ], [ %740, %735 ], [ %742, %741 ]
  %745 = icmp eq i32 %2, 0
  br i1 %745, label %746, label %851, !prof !131

746:                                              ; preds = %743
  %747 = icmp eq i32 %3, 0
  br i1 %747, label %748, label %851, !prof !132

748:                                              ; preds = %746
  %749 = load i32, ptr %11, align 4, !tbaa !51
  %750 = icmp eq i32 %749, 1
  br i1 %750, label %751, label %797, !prof !133

751:                                              ; preds = %748
  %752 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %753 = load i64, ptr %752, align 8, !tbaa !63
  %754 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !63
  %755 = and i64 %754, %753
  %756 = icmp eq i64 %755, 0
  br i1 %756, label %775, label %757, !prof !134

757:                                              ; preds = %751
  %758 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %759 = load i64, ptr %758, align 8, !tbaa !63
  %760 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 7), align 8, !tbaa !63
  %761 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 15), align 8, !tbaa !63
  %762 = or i64 %761, %760
  %763 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 14), align 16, !tbaa !63
  %764 = or i64 %762, %763
  %765 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 6), align 16, !tbaa !63
  %766 = or i64 %764, %765
  %767 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 5), align 8, !tbaa !63
  %768 = or i64 %766, %767
  %769 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 23), align 8, !tbaa !63
  %770 = or i64 %768, %769
  %771 = and i64 %770, %759
  %772 = icmp eq i64 %771, 0
  %773 = ashr i32 %744, 2
  %774 = select i1 %772, i32 %744, i32 %773, !prof !135
  br label %794

775:                                              ; preds = %751
  %776 = load i64, ptr @FileMask, align 16, !tbaa !63
  %777 = and i64 %776, %753
  %778 = icmp eq i64 %777, 0
  br i1 %778, label %794, label %779, !prof !136

779:                                              ; preds = %775
  %780 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %781 = load i64, ptr %780, align 8, !tbaa !63
  %782 = load i64, ptr @Mask, align 16, !tbaa !63
  %783 = load <2 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 8), align 16, !tbaa !63
  %784 = load <2 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 1), align 8, !tbaa !63
  %785 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 16), align 16, !tbaa !63
  %786 = shufflevector <2 x i64> %783, <2 x i64> %784, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %787 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %786)
  %788 = or i64 %787, %782
  %789 = or i64 %788, %785
  %790 = and i64 %789, %781
  %791 = icmp eq i64 %790, 0
  %792 = ashr i32 %744, 2
  %793 = select i1 %791, i32 %744, i32 %792
  br label %794

794:                                              ; preds = %779, %757, %775
  %795 = phi i32 [ %744, %775 ], [ %774, %757 ], [ %793, %779 ]
  %796 = ashr i32 %795, 1
  br label %797

797:                                              ; preds = %794, %748
  %798 = phi i32 [ %796, %794 ], [ %744, %748 ]
  %799 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %800 = load i32, ptr %799, align 4, !tbaa !51
  %801 = icmp eq i32 %800, 1
  br i1 %801, label %802, label %851, !prof !137

802:                                              ; preds = %797
  %803 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %804 = load i64, ptr %803, align 8, !tbaa !63
  %805 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !63
  %806 = and i64 %805, %804
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %826, label %808, !prof !138

808:                                              ; preds = %802
  %809 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %810 = load i64, ptr %809, align 8, !tbaa !63
  %811 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 63), align 8, !tbaa !63
  %812 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 55), align 8, !tbaa !63
  %813 = or i64 %812, %811
  %814 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 62), align 16, !tbaa !63
  %815 = or i64 %813, %814
  %816 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 54), align 16, !tbaa !63
  %817 = or i64 %815, %816
  %818 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 61), align 8, !tbaa !63
  %819 = or i64 %817, %818
  %820 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 47), align 8, !tbaa !63
  %821 = or i64 %819, %820
  %822 = and i64 %821, %810
  %823 = icmp eq i64 %822, 0
  %824 = ashr i32 %798, 2
  %825 = select i1 %823, i32 %798, i32 %824, !prof !139
  br label %848

826:                                              ; preds = %802
  %827 = load i64, ptr @FileMask, align 16, !tbaa !63
  %828 = and i64 %827, %804
  %829 = icmp eq i64 %828, 0
  br i1 %829, label %848, label %830, !prof !140

830:                                              ; preds = %826
  %831 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %832 = load i64, ptr %831, align 8, !tbaa !63
  %833 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 56), align 16, !tbaa !63
  %834 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 48), align 16, !tbaa !63
  %835 = or i64 %834, %833
  %836 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 57), align 8, !tbaa !63
  %837 = or i64 %835, %836
  %838 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 49), align 8, !tbaa !63
  %839 = or i64 %837, %838
  %840 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 58), align 16, !tbaa !63
  %841 = or i64 %839, %840
  %842 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 40), align 16, !tbaa !63
  %843 = or i64 %841, %842
  %844 = and i64 %843, %832
  %845 = icmp eq i64 %844, 0
  br i1 %845, label %848, label %846, !prof !141

846:                                              ; preds = %830
  %847 = ashr i32 %798, 2
  br label %848

848:                                              ; preds = %808, %826, %846, %830
  %849 = phi i32 [ %847, %846 ], [ %798, %830 ], [ %798, %826 ], [ %825, %808 ]
  %850 = ashr i32 %849, 1
  br label %851

851:                                              ; preds = %743, %561, %573, %567, %460, %472, %466, %746, %602, %635, %629, %626, %585, %611, %644, %618, %624, %651, %657, %848, %797
  %852 = phi i32 [ %850, %848 ], [ %798, %797 ], [ %658, %657 ], [ %656, %651 ], [ %576, %644 ], [ %625, %624 ], [ %623, %618 ], [ %576, %611 ], [ %576, %585 ], [ %576, %602 ], [ %576, %626 ], [ %576, %635 ], [ %576, %629 ], [ %744, %746 ], [ %543, %567 ], [ %574, %573 ], [ %562, %561 ], [ %442, %466 ], [ %473, %472 ], [ %461, %460 ], [ %744, %743 ]
  ret i32 %852
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z12taxicab_distii, i64 735}
!37 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z8FindLasty, i64 168}
!38 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z4filei, i64 42}
!39 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z4ranki, i64 32}
!40 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z9FindFirsty, i64 78}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 340459605}
!43 = !{!44, !45, i64 464}
!44 = !{!"_ZTS7state_t", !45, i64 0, !46, i64 4, !48, i64 264, !48, i64 272, !48, i64 280, !46, i64 288, !45, i64 392, !45, i64 396, !46, i64 400, !45, i64 452, !45, i64 456, !45, i64 460, !45, i64 464, !45, i64 468, !45, i64 472, !45, i64 476, !48, i64 480, !48, i64 488, !46, i64 496, !46, i64 2544, !46, i64 2800, !46, i64 3056, !48, i64 4080, !48, i64 4088, !45, i64 4096, !46, i64 4100, !45, i64 4356, !45, i64 4360, !45, i64 4364, !45, i64 4368, !45, i64 4372, !45, i64 4376, !45, i64 4380, !45, i64 4384, !45, i64 4388, !45, i64 4392, !46, i64 4400}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"long long", !46, i64 0}
!49 = !{!44, !45, i64 468}
!50 = !{!44, !45, i64 460}
!51 = !{!45, !45, i64 0}
!52 = !{!"branch_weights", i32 17217, i32 340442390}
!53 = !{!"branch_weights", i32 29, i32 17189}
!54 = !{!"branch_weights", i32 4, i32 26}
!55 = !{!"branch_weights", i32 6, i32 21}
!56 = !{!"branch_weights", i32 22, i32 8}
!57 = !{!"branch_weights", i32 2, i32 21}
!58 = !{!"branch_weights", i32 1, i32 2}
!59 = !{!"branch_weights", i32 2, i32 4}
!60 = !{!"branch_weights", i32 2, i32 1}
!61 = !{!"branch_weights", i32 1, i32 22}
!62 = !{!"branch_weights", i32 1, i32 59}
!63 = !{!48, !48, i64 0}
!64 = !{!"branch_weights", i32 -1655220591, i32 1655220590}
!65 = !{!"branch_weights", i32 1, i32 39}
!66 = !{!"branch_weights", i32 58, i32 2}
!67 = !{!"branch_weights", i32 18, i32 2}
!68 = !{!"branch_weights", i32 5, i32 7}
!69 = !{!"branch_weights", i32 1, i32 7}
!70 = !{!"branch_weights", i32 3936, i32 13254}
!71 = !{!"branch_weights", i32 773, i32 3164}
!72 = !{!"branch_weights", i32 260820, i32 157914}
!73 = !{!"branch_weights", i32 1, i32 483}
!74 = !{!"branch_weights", i32 70, i32 222}
!75 = !{!"branch_weights", i32 297168, i32 33549942}
!76 = !{!"branch_weights", i32 2869, i32 20235}
!77 = !{!"branch_weights", i32 29491690, i32 2117991958}
!78 = !{!"branch_weights", i32 1, i32 234}
!79 = !{!"branch_weights", i32 143176152, i32 2004307496}
!80 = !{!"branch_weights", i32 23, i32 1115}
!81 = !{!"branch_weights", i32 10487764, i32 71901364}
!82 = !{!"branch_weights", i32 166, i32 17024}
!83 = !{!"branch_weights", i32 144, i32 2027}
!84 = !{!"branch_weights", i32 6, i32 7}
!85 = !{!"branch_weights", i32 6, i32 1}
!86 = !{!"branch_weights", i32 2, i32 6}
!87 = !{!"branch_weights", i32 92181, i32 340350210}
!88 = !{!"branch_weights", i32 5559, i32 86623}
!89 = !{!"branch_weights", i32 596, i32 4964}
!90 = !{!"branch_weights", i32 38808, i32 99696}
!91 = !{!"branch_weights", i32 225, i32 205}
!92 = !{!"branch_weights", i32 52, i32 11926}
!93 = !{!"branch_weights", i32 15301785, i32 525437827}
!94 = !{!"branch_weights", i32 4200490, i32 2611610}
!95 = !{!"branch_weights", i32 1893990, i32 2145589658}
!96 = !{!"branch_weights", i32 1, i32 159}
!97 = !{!"branch_weights", i32 110523888, i32 2036959760}
!98 = !{!"branch_weights", i32 2, i32 4610}
!99 = !{!"branch_weights", i32 630774357, i32 -1316023813}
!100 = !{!"branch_weights", i32 355, i32 91827}
!101 = !{!"branch_weights", i32 96, i32 11652}
!102 = !{!"branch_weights", i32 1, i32 3}
!103 = !{!"branch_weights", i32 2, i32 2}
!104 = !{!"branch_weights", i32 13816103, i32 2133667545}
!105 = !{!"branch_weights", i32 1716967, i32 473423}
!106 = !{!"branch_weights", i32 11942, i32 1705026}
!107 = !{!"branch_weights", i32 2107, i32 9836}
!108 = !{!"branch_weights", i32 4, i32 9833}
!109 = !{!"branch_weights", i32 886, i32 8948}
!110 = !{!"branch_weights", i32 98, i32 789}
!111 = !{!"branch_weights", i32 75, i32 24}
!112 = !{!"branch_weights", i32 1, i32 75}
!113 = !{!"branch_weights", i32 8948, i32 4}
!114 = !{!"branch_weights", i32 4, i32 1}
!115 = !{!"branch_weights", i32 3, i32 2}
!116 = !{!"branch_weights", i32 3, i32 1}
!117 = !{!"branch_weights", i32 5139911, i32 2142343737}
!118 = !{!"branch_weights", i32 501285, i32 313563}
!119 = !{!"branch_weights", i32 1672, i32 499614}
!120 = !{!"branch_weights", i32 1231, i32 442}
!121 = !{!"branch_weights", i32 368, i32 75}
!122 = !{!"branch_weights", i32 54, i32 22}
!123 = !{!"branch_weights", i32 54, i32 1}
!124 = !{!"branch_weights", i32 51, i32 4}
!125 = !{!"branch_weights", i32 1, i32 51}
!126 = !{!"branch_weights", i32 22, i32 368}
!127 = !{!"branch_weights", i32 133, i32 236}
!128 = !{!"branch_weights", i32 112, i32 22}
!129 = !{!"branch_weights", i32 112, i32 1}
!130 = !{!"branch_weights", i32 40, i32 73}
!131 = !{!"branch_weights", i32 7069190, i32 2140414458}
!132 = !{!"branch_weights", i32 28162, i32 1092541}
!133 = !{!"branch_weights", i32 17, i32 28146}
!134 = !{!"branch_weights", i32 5, i32 13}
!135 = !{!"branch_weights", i32 13, i32 1}
!136 = !{!"branch_weights", i32 5, i32 1}
!137 = !{!"branch_weights", i32 281, i32 27882}
!138 = !{!"branch_weights", i32 220, i32 62}
!139 = !{!"branch_weights", i32 6, i32 57}
!140 = !{!"branch_weights", i32 101, i32 120}
!141 = !{!"branch_weights", i32 120, i32 1}
