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

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !39 {
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !47
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %476, !prof !49

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %371, !prof !50

18:                                               ; preds = %14
  %19 = icmp sgt i32 %2, %3
  br i1 %19, label %22, label %20, !prof !51

20:                                               ; preds = %18
  %21 = icmp sgt i32 %3, %2
  br i1 %21, label %22, label %29, !prof !51

22:                                               ; preds = %20, %18
  %23 = phi i32 [ -15, %18 ], [ 15, %20 ]
  %24 = phi i32 [ 120, %18 ], [ -120, %20 ]
  %25 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %6, i32 noundef %8)
  %26 = mul i32 %25, %23
  %27 = add i32 %24, %1
  %28 = add i32 %27, %26
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi i32 [ %1, %20 ], [ %28, %22 ]
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %32 = load i32, ptr %31, align 4, !tbaa !48
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %34 = load i32, ptr %33, align 4, !tbaa !48
  %35 = shl nsw i32 %34, 1
  %36 = add nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %38 = load i32, ptr %37, align 4, !tbaa !48
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %41, %38
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %81, !prof !52

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !48
  %47 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %48 = load i32, ptr %47, align 4, !tbaa !48
  %49 = add nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %51 = load i32, ptr %50, align 4, !tbaa !48
  %52 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa !48
  %54 = add nsw i32 %53, %51
  %55 = sub nsw i32 %49, %54
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %67, !prof !51

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
  %66 = ashr i32 %30, 3
  br label %67

67:                                               ; preds = %63, %59, %65, %44
  %68 = phi i32 [ %66, %65 ], [ %30, %59 ], [ %30, %44 ], [ %30, %63 ]
  %69 = sub nsw i32 %54, %49
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %81, !prof !51

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

79:                                               ; preds = %77, %73
  %80 = ashr i32 %68, 3
  br label %81

81:                                               ; preds = %67, %77, %79, %73, %29
  %82 = phi i32 [ %80, %79 ], [ %68, %77 ], [ %68, %73 ], [ %68, %67 ], [ %30, %29 ]
  %83 = icmp ne i32 %32, 0
  br i1 %83, label %231, label %84, !prof !52

84:                                               ; preds = %81
  %85 = or i32 %40, %34
  %86 = or i32 %85, %38
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %231

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %90 = load i32, ptr %89, align 4, !tbaa !48
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %94 = load i32, ptr %93, align 4, !tbaa !48
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %98 = load i32, ptr %97, align 4, !tbaa !48
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %141

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %102 = load i32, ptr %101, align 4, !tbaa !48
  %103 = icmp slt i32 %102, 3
  %104 = select i1 %103, i32 0, i32 %82
  br label %141

105:                                              ; preds = %92, %88
  %106 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %107 = load i32, ptr %106, align 4, !tbaa !48
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %111 = load i32, ptr %110, align 4, !tbaa !48
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %115 = load i32, ptr %114, align 4, !tbaa !48
  %116 = sub nsw i32 %115, %90
  %117 = tail call i32 @llvm.abs.i32(i32 %116, i1 true)
  %118 = icmp ult i32 %117, 2
  %119 = select i1 %118, i32 0, i32 %82
  br label %141

120:                                              ; preds = %109, %105
  %121 = icmp slt i32 %107, 3
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %124 = load i32, ptr %123, align 4, !tbaa !48
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %122, %120
  %127 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %128 = load i32, ptr %127, align 4, !tbaa !48
  %129 = icmp ne i32 %128, 1
  %130 = or i1 %108, %129
  br i1 %130, label %141, label %131

131:                                              ; preds = %126, %122
  %132 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %133 = load i32, ptr %132, align 4, !tbaa !48
  %134 = icmp sgt i32 %133, 2
  %135 = or i1 %91, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = icmp eq i32 %90, 1
  %138 = icmp eq i32 %133, 0
  %139 = and i1 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %131
  br label %141

141:                                              ; preds = %136, %126, %113, %100, %140, %96
  %142 = phi i32 [ 0, %140 ], [ %82, %126 ], [ %82, %96 ], [ %104, %100 ], [ %119, %113 ], [ %82, %136 ]
  br i1 %91, label %186, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %145 = load i32, ptr %144, align 4, !tbaa !48
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %149 = load i32, ptr %148, align 4, !tbaa !48
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %580

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %153 = load i32, ptr %152, align 4, !tbaa !48
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %580

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %157 = load i64, ptr %156, align 8, !tbaa !53
  %158 = load i64, ptr @BlackSqMask, align 8, !tbaa !53
  %159 = and i64 %158, %157
  %160 = icmp eq i64 %159, 0
  %161 = add i32 %142, 240
  br i1 %160, label %174, label %162

162:                                              ; preds = %155
  %163 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %8)
  %164 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %8)
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %8)
  %168 = mul i32 %167, -30
  %169 = add i32 %161, %168
  br label %580

170:                                              ; preds = %162
  %171 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %8)
  %172 = mul i32 %171, -30
  %173 = add i32 %161, %172
  br label %580

174:                                              ; preds = %155
  %175 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %8)
  %176 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %8)
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %8)
  %180 = mul i32 %179, -30
  %181 = add i32 %161, %180
  br label %580

182:                                              ; preds = %174
  %183 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %8)
  %184 = mul i32 %183, -30
  %185 = add i32 %161, %184
  br label %580

186:                                              ; preds = %143, %141
  %187 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %188 = load i32, ptr %187, align 4, !tbaa !48
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %580

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %192 = load i32, ptr %191, align 4, !tbaa !48
  %193 = icmp eq i32 %192, 0
  %194 = icmp eq i32 %90, 1
  %195 = and i1 %194, %193
  br i1 %195, label %196, label %580

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %198 = load i32, ptr %197, align 4, !tbaa !48
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %580

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %202 = load i64, ptr %201, align 8, !tbaa !53
  %203 = load i64, ptr @BlackSqMask, align 8, !tbaa !53
  %204 = and i64 %203, %202
  %205 = icmp eq i64 %204, 0
  %206 = add i32 %142, -240
  br i1 %205, label %219, label %207

207:                                              ; preds = %200
  %208 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %6)
  %209 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %6)
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = tail call noundef i32 @_Z8sum_distii(i32 noundef 56, i32 noundef %6)
  %213 = mul i32 %212, 30
  %214 = add i32 %206, %213
  br label %580

215:                                              ; preds = %207
  %216 = tail call noundef i32 @_Z8sum_distii(i32 noundef 7, i32 noundef %6)
  %217 = mul i32 %216, 30
  %218 = add i32 %206, %217
  br label %580

219:                                              ; preds = %200
  %220 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %6)
  %221 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %6)
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = tail call noundef i32 @_Z8sum_distii(i32 noundef 0, i32 noundef %6)
  %225 = mul i32 %224, 30
  %226 = add i32 %206, %225
  br label %580

227:                                              ; preds = %219
  %228 = tail call noundef i32 @_Z8sum_distii(i32 noundef 63, i32 noundef %6)
  %229 = mul i32 %228, 30
  %230 = add i32 %206, %229
  br label %580

231:                                              ; preds = %84, %81
  %232 = or i32 %40, %34
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %343, !prof !54

234:                                              ; preds = %231
  %235 = icmp eq i32 %32, 1
  %236 = icmp eq i32 %38, 0
  %237 = and i1 %235, %236
  br i1 %237, label %238, label %280, !prof !55

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %240 = load i32, ptr %239, align 4, !tbaa !48
  %241 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %242 = load i32, ptr %241, align 4, !tbaa !48
  %243 = sub i32 0, %242
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %247 = load i32, ptr %246, align 4, !tbaa !48
  %248 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %249 = load i32, ptr %248, align 4, !tbaa !48
  %250 = add i32 %247, -1
  %251 = add i32 %250, %249
  %252 = icmp ult i32 %251, 2
  br i1 %252, label %253, label %267

253:                                              ; preds = %245
  %254 = ashr i32 %82, 3
  %255 = sext i32 %8 to i64
  %256 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !53
  %258 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %259 = load i64, ptr %258, align 8, !tbaa !53
  %260 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %261 = load i64, ptr %260, align 8, !tbaa !53
  %262 = or i64 %261, %259
  %263 = and i64 %262, %257
  %264 = icmp eq i64 %263, 0
  %265 = add nsw i32 %254, 20
  %266 = select i1 %264, i32 %265, i32 %254
  br label %580

267:                                              ; preds = %245, %238
  %268 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %269 = load i32, ptr %268, align 4, !tbaa !48
  %270 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %271 = load i32, ptr %270, align 4, !tbaa !48
  %272 = add i32 %242, %240
  %273 = sub i32 %269, %272
  %274 = add i32 %273, %271
  %275 = icmp eq i32 %274, 1
  %276 = icmp sgt i32 %82, 0
  %277 = select i1 %275, i1 %276, i1 false
  %278 = lshr i32 %82, 2
  %279 = select i1 %277, i32 %278, i32 %82
  br label %580

280:                                              ; preds = %234
  %281 = icmp ne i32 %38, 1
  %282 = or i1 %83, %281
  br i1 %282, label %325, label %283, !prof !56

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %285 = load i32, ptr %284, align 4, !tbaa !48
  %286 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %287 = load i32, ptr %286, align 4, !tbaa !48
  %288 = sub i32 0, %287
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %290, label %312

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %292 = load i32, ptr %291, align 4, !tbaa !48
  %293 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %294 = load i32, ptr %293, align 4, !tbaa !48
  %295 = add i32 %292, -1
  %296 = add i32 %295, %294
  %297 = icmp ult i32 %296, 2
  br i1 %297, label %298, label %312

298:                                              ; preds = %290
  %299 = ashr i32 %82, 3
  %300 = sext i32 %6 to i64
  %301 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !53
  %303 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %304 = load i64, ptr %303, align 8, !tbaa !53
  %305 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %306 = load i64, ptr %305, align 8, !tbaa !53
  %307 = or i64 %306, %304
  %308 = and i64 %307, %302
  %309 = icmp eq i64 %308, 0
  %310 = add nsw i32 %299, -20
  %311 = select i1 %309, i32 %310, i32 %299
  br label %580

312:                                              ; preds = %290, %283
  %313 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %314 = load i32, ptr %313, align 4, !tbaa !48
  %315 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %316 = load i32, ptr %315, align 4, !tbaa !48
  %317 = add i32 %287, %285
  %318 = sub i32 %314, %317
  %319 = add i32 %318, %316
  %320 = icmp eq i32 %319, 1
  %321 = icmp slt i32 %82, 0
  %322 = select i1 %320, i1 %321, i1 false
  %323 = ashr i32 %82, 2
  %324 = select i1 %322, i32 %323, i32 %82
  br label %580

325:                                              ; preds = %280
  %326 = icmp eq i32 %32, %38
  br i1 %326, label %580, label %327, !prof !52

327:                                              ; preds = %325
  %328 = sub nsw i32 %32, %38
  %329 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %330 = load i32, ptr %329, align 4, !tbaa !48
  %331 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %332 = load i32, ptr %331, align 4, !tbaa !48
  %333 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %334 = load i32, ptr %333, align 4, !tbaa !48
  %335 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %336 = load i32, ptr %335, align 4, !tbaa !48
  %337 = add i32 %332, %330
  %338 = add i32 %334, %336
  %339 = sub i32 %337, %338
  %340 = icmp eq i32 %328, %339
  %341 = ashr i32 %82, 2
  %342 = select i1 %340, i32 %341, i32 %82
  br label %580

343:                                              ; preds = %231
  br i1 %43, label %580, label %344

344:                                              ; preds = %343
  %345 = sub nsw i32 %36, %42
  %346 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %347 = load i32, ptr %346, align 4, !tbaa !48
  %348 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %349 = load i32, ptr %348, align 4, !tbaa !48
  %350 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %351 = load i32, ptr %350, align 4, !tbaa !48
  %352 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %353 = load i32, ptr %352, align 4, !tbaa !48
  %354 = add i32 %349, %347
  %355 = add i32 %351, %353
  %356 = sub i32 %354, %355
  %357 = icmp eq i32 %345, %356
  br i1 %357, label %358, label %580

358:                                              ; preds = %344
  %359 = load i32, ptr %11, align 4, !tbaa !48
  %360 = icmp eq i32 %359, 0
  %361 = icmp sgt i32 %82, 0
  %362 = select i1 %360, i1 %361, i1 false
  %363 = lshr i32 %82, 2
  %364 = select i1 %362, i32 %363, i32 %82
  %365 = load i32, ptr %15, align 4, !tbaa !48
  %366 = icmp eq i32 %365, 0
  %367 = icmp slt i32 %364, 0
  %368 = select i1 %366, i1 %367, i1 false
  %369 = ashr i32 %364, 2
  %370 = select i1 %368, i32 %369, i32 %364
  br label %580

371:                                              ; preds = %14
  br i1 %13, label %372, label %476, !prof !57

372:                                              ; preds = %371
  %373 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %374 = load i32, ptr %373, align 4, !tbaa !48
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %398, !prof !58

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %378 = load i32, ptr %377, align 4, !tbaa !48
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %398, !prof !59

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %382 = load i32, ptr %381, align 4, !tbaa !48
  %383 = icmp eq i32 %382, 1
  br i1 %383, label %384, label %390, !prof !60

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %386 = load i32, ptr %385, align 4, !tbaa !48
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %390, !prof !61

388:                                              ; preds = %384
  %389 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  br label %398

390:                                              ; preds = %384, %380
  %391 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %392 = load i32, ptr %391, align 4, !tbaa !48
  %393 = icmp eq i32 %392, 1
  br i1 %393, label %394, label %398, !prof !62

394:                                              ; preds = %390
  %395 = icmp eq i32 %382, 0
  %396 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %397 = select i1 %395, i32 %396, i32 %1, !prof !63
  br label %398

398:                                              ; preds = %394, %388, %390, %376, %372
  %399 = phi i32 [ %1, %372 ], [ %1, %376 ], [ %1, %390 ], [ %389, %388 ], [ %397, %394 ]
  %400 = icmp eq i32 %2, 10
  %401 = icmp eq i32 %3, 6
  %402 = and i1 %400, %401
  br i1 %402, label %403, label %411, !prof !64

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %405 = load i32, ptr %404, align 4, !tbaa !48
  %406 = icmp sgt i32 %405, 0
  %407 = icmp sgt i32 %399, 0
  %408 = and i1 %407, %406
  %409 = lshr i32 %399, 2
  %410 = select i1 %408, i32 %409, i32 %399, !prof !65
  br label %411

411:                                              ; preds = %403, %398
  %412 = phi i32 [ %399, %398 ], [ %410, %403 ]
  %413 = icmp eq i32 %2, 8
  br i1 %413, label %414, label %422, !prof !66

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %416 = load i32, ptr %415, align 4, !tbaa !48
  %417 = icmp eq i32 %416, 0
  %418 = icmp sgt i32 %412, 0
  %419 = and i1 %418, %417
  %420 = lshr i32 %412, 3
  %421 = select i1 %419, i32 %420, i32 %412, !prof !67
  br label %422

422:                                              ; preds = %414, %411
  %423 = phi i32 [ %412, %411 ], [ %421, %414 ]
  %424 = icmp slt i32 %2, 9
  %425 = sub nsw i32 %2, %3
  %426 = icmp slt i32 %425, 5
  %427 = select i1 %424, i1 %426, i1 false, !prof !68
  br i1 %427, label %428, label %432, !prof !69

428:                                              ; preds = %422
  %429 = icmp sgt i32 %423, 0
  %430 = lshr i32 %423, 3
  %431 = select i1 %429, i32 %430, i32 %423, !prof !70
  br label %441

432:                                              ; preds = %422
  %433 = icmp slt i32 %2, 17
  %434 = icmp sgt i32 %2, %3
  %435 = and i1 %433, %434
  br i1 %435, label %436, label %441, !prof !71

436:                                              ; preds = %432
  %437 = icmp sgt i32 %423, 0
  %438 = and i1 %426, %437
  %439 = zext i1 %438 to i32
  %440 = lshr i32 %423, %439
  br label %441

441:                                              ; preds = %436, %428, %432
  %442 = phi i32 [ %423, %432 ], [ %431, %428 ], [ %440, %436 ]
  %443 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %444 = load i32, ptr %443, align 4, !tbaa !48
  %445 = icmp eq i32 %444, 1
  %446 = icmp eq i32 %2, 6
  %447 = and i1 %446, %445
  %448 = and i1 %401, %447
  br i1 %448, label %449, label %580, !prof !72

449:                                              ; preds = %441
  %450 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %451 = load i64, ptr %450, align 8, !tbaa !53
  %452 = tail call noundef i32 @_Z8FindLasty(i64 noundef %451)
  %453 = tail call noundef i32 @_Z4filei(i32 noundef %6)
  %454 = tail call noundef i32 @_Z4filei(i32 noundef %452)
  %455 = sub nsw i32 %453, %454
  %456 = tail call i32 @llvm.abs.i32(i32 %455, i1 true)
  %457 = icmp ult i32 %456, 2
  br i1 %457, label %458, label %464, !prof !73

458:                                              ; preds = %449
  %459 = tail call noundef i32 @_Z4ranki(i32 noundef %6)
  %460 = tail call noundef i32 @_Z4ranki(i32 noundef %452)
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %462, label %464, !prof !52

462:                                              ; preds = %458
  %463 = ashr i32 %442, 1
  br label %580

464:                                              ; preds = %458, %449
  %465 = tail call noundef i32 @_Z4ranki(i32 noundef %8)
  %466 = tail call noundef i32 @_Z4ranki(i32 noundef %452)
  %467 = icmp sgt i32 %465, %466
  br i1 %467, label %474, label %468, !prof !74

468:                                              ; preds = %464
  %469 = tail call noundef i32 @_Z4filei(i32 noundef %8)
  %470 = tail call noundef i32 @_Z4filei(i32 noundef %452)
  %471 = sub nsw i32 %469, %470
  %472 = tail call i32 @llvm.abs.i32(i32 %471, i1 true)
  %473 = icmp ugt i32 %472, 1
  br i1 %473, label %474, label %580, !prof !75

474:                                              ; preds = %468, %464
  %475 = ashr i32 %442, 1
  br label %580

476:                                              ; preds = %4, %371
  %477 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %478 = load i32, ptr %477, align 4, !tbaa !48
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %580, !prof !76

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %482 = load i32, ptr %481, align 4, !tbaa !48
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %506, !prof !77

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %486 = load i32, ptr %485, align 4, !tbaa !48
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %506, !prof !78

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %490 = load i32, ptr %489, align 4, !tbaa !48
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %498, !prof !79

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %494 = load i32, ptr %493, align 4, !tbaa !48
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %498, !prof !80

496:                                              ; preds = %492
  %497 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  br label %506

498:                                              ; preds = %492, %488
  %499 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %500 = load i32, ptr %499, align 4, !tbaa !48
  %501 = icmp eq i32 %500, 1
  br i1 %501, label %502, label %506, !prof !81

502:                                              ; preds = %498
  %503 = icmp eq i32 %490, 0
  %504 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %505 = select i1 %503, i32 %504, i32 %1, !prof !82
  br label %506

506:                                              ; preds = %502, %496, %498, %484, %480
  %507 = phi i32 [ %1, %480 ], [ %1, %484 ], [ %1, %498 ], [ %497, %496 ], [ %505, %502 ]
  %508 = icmp eq i32 %3, 10
  %509 = icmp eq i32 %2, 6
  %510 = and i1 %509, %508
  br i1 %510, label %511, label %517, !prof !83

511:                                              ; preds = %506
  %512 = icmp sgt i32 %12, 0
  %513 = icmp slt i32 %507, 0
  %514 = and i1 %512, %513
  %515 = ashr i32 %507, 2
  %516 = select i1 %514, i32 %515, i32 %507, !prof !84
  br label %517

517:                                              ; preds = %511, %506
  %518 = phi i32 [ %507, %506 ], [ %516, %511 ]
  %519 = icmp eq i32 %3, 8
  br i1 %519, label %520, label %528, !prof !85

520:                                              ; preds = %517
  %521 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %522 = load i32, ptr %521, align 4, !tbaa !48
  %523 = icmp eq i32 %522, 0
  %524 = icmp slt i32 %518, 0
  %525 = and i1 %524, %523
  %526 = ashr i32 %518, 3
  %527 = select i1 %525, i32 %526, i32 %518, !prof !86
  br label %528

528:                                              ; preds = %520, %517
  %529 = phi i32 [ %518, %517 ], [ %527, %520 ]
  %530 = icmp slt i32 %3, 9
  %531 = sub nsw i32 %3, %2
  %532 = icmp slt i32 %531, 5
  %533 = select i1 %530, i1 %532, i1 false, !prof !87
  br i1 %533, label %534, label %538, !prof !88

534:                                              ; preds = %528
  %535 = icmp slt i32 %529, 0
  %536 = ashr i32 %529, 3
  %537 = select i1 %535, i32 %536, i32 %529, !prof !89
  br label %547

538:                                              ; preds = %528
  %539 = icmp slt i32 %3, 17
  %540 = icmp sgt i32 %3, %2
  %541 = and i1 %539, %540
  br i1 %541, label %542, label %547, !prof !90

542:                                              ; preds = %538
  %543 = icmp slt i32 %529, 0
  %544 = and i1 %532, %543
  %545 = zext i1 %544 to i32
  %546 = ashr i32 %529, %545
  br label %547

547:                                              ; preds = %542, %534, %538
  %548 = phi i32 [ %529, %538 ], [ %537, %534 ], [ %546, %542 ]
  %549 = icmp eq i32 %12, 1
  %550 = icmp eq i32 %3, 6
  %551 = and i1 %550, %549
  %552 = and i1 %509, %551
  br i1 %552, label %553, label %580, !prof !91

553:                                              ; preds = %547
  %554 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %555 = load i64, ptr %554, align 8, !tbaa !53
  %556 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %555)
  %557 = tail call noundef i32 @_Z4filei(i32 noundef %8)
  %558 = tail call noundef i32 @_Z4filei(i32 noundef %556)
  %559 = sub nsw i32 %557, %558
  %560 = tail call i32 @llvm.abs.i32(i32 %559, i1 true)
  %561 = icmp ult i32 %560, 2
  br i1 %561, label %562, label %568

562:                                              ; preds = %553
  %563 = tail call noundef i32 @_Z4ranki(i32 noundef %8)
  %564 = tail call noundef i32 @_Z4ranki(i32 noundef %556)
  %565 = icmp sgt i32 %563, %564
  br i1 %565, label %566, label %568

566:                                              ; preds = %562
  %567 = ashr i32 %548, 1
  br label %580

568:                                              ; preds = %562, %553
  %569 = tail call noundef i32 @_Z4ranki(i32 noundef %6)
  %570 = tail call noundef i32 @_Z4ranki(i32 noundef %556)
  %571 = icmp slt i32 %569, %570
  br i1 %571, label %578, label %572

572:                                              ; preds = %568
  %573 = tail call noundef i32 @_Z4filei(i32 noundef %6)
  %574 = tail call noundef i32 @_Z4filei(i32 noundef %556)
  %575 = sub nsw i32 %573, %574
  %576 = tail call i32 @llvm.abs.i32(i32 %575, i1 true)
  %577 = icmp ugt i32 %576, 1
  br i1 %577, label %578, label %580

578:                                              ; preds = %572, %568
  %579 = ashr i32 %548, 1
  br label %580

580:                                              ; preds = %358, %327, %312, %298, %267, %253, %566, %578, %572, %462, %474, %468, %441, %547, %476, %186, %190, %215, %211, %227, %223, %196, %147, %151, %178, %182, %166, %170, %343, %344, %325
  %581 = phi i32 [ %1, %476 ], [ %548, %547 ], [ %442, %441 ], [ %82, %344 ], [ %82, %343 ], [ %82, %325 ], [ %142, %186 ], [ %142, %190 ], [ %214, %211 ], [ %218, %215 ], [ %226, %223 ], [ %230, %227 ], [ %142, %196 ], [ %169, %166 ], [ %173, %170 ], [ %181, %178 ], [ %185, %182 ], [ %142, %151 ], [ %142, %147 ], [ %266, %253 ], [ %279, %267 ], [ %311, %298 ], [ %324, %312 ], [ %342, %327 ], [ %463, %462 ], [ %475, %474 ], [ %442, %468 ], [ %567, %566 ], [ %579, %578 ], [ %548, %572 ], [ %370, %358 ]
  %582 = icmp eq i32 %2, 4
  br i1 %582, label %583, label %664, !prof !92

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %585 = load i32, ptr %584, align 4, !tbaa !48
  %586 = icmp eq i32 %585, 1
  br i1 %586, label %587, label %664, !prof !93

587:                                              ; preds = %583
  %588 = load i32, ptr %11, align 4, !tbaa !48
  %589 = icmp eq i32 %588, 1
  br i1 %589, label %590, label %664, !prof !94

590:                                              ; preds = %587
  %591 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %592 = load i64, ptr %591, align 8, !tbaa !53
  %593 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !53
  %594 = load i64, ptr @FileMask, align 16, !tbaa !53
  %595 = or i64 %594, %593
  %596 = and i64 %595, %592
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %748, label %598, !prof !95

598:                                              ; preds = %590
  %599 = and i64 %593, %592
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %631, label %601, !prof !96

601:                                              ; preds = %598
  %602 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %603 = load i64, ptr %602, align 8, !tbaa !53
  %604 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !53
  %605 = and i64 %604, %603
  %606 = icmp eq i64 %605, 0
  br i1 %606, label %607, label %631, !prof !97

607:                                              ; preds = %601
  %608 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %609 = load i64, ptr %608, align 8, !tbaa !53
  %610 = load i64, ptr @BlackSqMask, align 8, !tbaa !53
  %611 = and i64 %610, %609
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %613, label %748, !prof !98

613:                                              ; preds = %607
  %614 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %8)
  %615 = icmp sgt i32 %614, 1
  br i1 %615, label %616, label %629, !prof !99

616:                                              ; preds = %613
  %617 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %6)
  %618 = load i64, ptr %591, align 8, !tbaa !53
  %619 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %618)
  %620 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 7, i32 noundef %619)
  %621 = sub nsw i32 %617, %10
  %622 = icmp sgt i32 %614, %621
  br i1 %622, label %748, label %623, !prof !100

623:                                              ; preds = %616
  %624 = add nsw i32 %614, -1
  %625 = sub nsw i32 %620, %10
  %626 = icmp sgt i32 %624, %625
  %627 = tail call i32 @llvm.smin.i32(i32 %581, i32 0)
  %628 = select i1 %626, i32 %581, i32 %627, !prof !101
  br label %748

629:                                              ; preds = %613
  %630 = tail call i32 @llvm.smin.i32(i32 %581, i32 0)
  br label %748

631:                                              ; preds = %601, %598
  %632 = and i64 %594, %592
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %748, label %634, !prof !102

634:                                              ; preds = %631
  %635 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %636 = load i64, ptr %635, align 8, !tbaa !53
  %637 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !53
  %638 = and i64 %637, %636
  %639 = icmp eq i64 %638, 0
  br i1 %639, label %640, label %748, !prof !103

640:                                              ; preds = %634
  %641 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %642 = load i64, ptr %641, align 8, !tbaa !53
  %643 = load i64, ptr @WhiteSqMask, align 8, !tbaa !53
  %644 = and i64 %643, %642
  %645 = icmp eq i64 %644, 0
  br i1 %645, label %646, label %748, !prof !104

646:                                              ; preds = %640
  %647 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %8)
  %648 = icmp sgt i32 %647, 1
  br i1 %648, label %649, label %662, !prof !105

649:                                              ; preds = %646
  %650 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %6)
  %651 = load i64, ptr %591, align 8, !tbaa !53
  %652 = tail call noundef i32 @_Z9FindFirsty(i64 noundef %651)
  %653 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 0, i32 noundef %652)
  %654 = sub nsw i32 %650, %10
  %655 = icmp sgt i32 %647, %654
  br i1 %655, label %748, label %656, !prof !105

656:                                              ; preds = %649
  %657 = add nsw i32 %647, -1
  %658 = sub nsw i32 %653, %10
  %659 = icmp sgt i32 %657, %658
  %660 = tail call i32 @llvm.smin.i32(i32 %581, i32 0)
  %661 = select i1 %659, i32 %581, i32 %660
  br label %748

662:                                              ; preds = %646
  %663 = tail call i32 @llvm.smin.i32(i32 %581, i32 0)
  br label %748

664:                                              ; preds = %587, %583, %580
  %665 = icmp eq i32 %3, 4
  br i1 %665, label %666, label %748, !prof !106

666:                                              ; preds = %664
  %667 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %668 = load i32, ptr %667, align 4, !tbaa !48
  %669 = icmp eq i32 %668, 1
  br i1 %669, label %670, label %748, !prof !107

670:                                              ; preds = %666
  %671 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %672 = load i32, ptr %671, align 4, !tbaa !48
  %673 = icmp eq i32 %672, 1
  br i1 %673, label %674, label %748, !prof !108

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %676 = load i64, ptr %675, align 8, !tbaa !53
  %677 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !53
  %678 = load i64, ptr @FileMask, align 16, !tbaa !53
  %679 = or i64 %678, %677
  %680 = and i64 %679, %676
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %748, label %682, !prof !109

682:                                              ; preds = %674
  %683 = and i64 %677, %676
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %715, label %685, !prof !110

685:                                              ; preds = %682
  %686 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %687 = load i64, ptr %686, align 8, !tbaa !53
  %688 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !53
  %689 = and i64 %688, %687
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %691, label %715, !prof !111

691:                                              ; preds = %685
  %692 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %693 = load i64, ptr %692, align 8, !tbaa !53
  %694 = load i64, ptr @WhiteSqMask, align 8, !tbaa !53
  %695 = and i64 %694, %693
  %696 = icmp eq i64 %695, 0
  br i1 %696, label %697, label %748, !prof !112

697:                                              ; preds = %691
  %698 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %6)
  %699 = icmp sgt i32 %698, 1
  br i1 %699, label %700, label %713, !prof !113

700:                                              ; preds = %697
  %701 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %8)
  %702 = load i64, ptr %675, align 8, !tbaa !53
  %703 = tail call noundef i32 @_Z8FindLasty(i64 noundef %702)
  %704 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 63, i32 noundef %703)
  %705 = add nsw i32 %701, %10
  %706 = icmp sgt i32 %698, %705
  br i1 %706, label %748, label %707, !prof !114

707:                                              ; preds = %700
  %708 = add nsw i32 %698, -1
  %709 = add nsw i32 %704, %10
  %710 = icmp sgt i32 %708, %709
  %711 = tail call i32 @llvm.smax.i32(i32 %581, i32 0)
  %712 = select i1 %710, i32 %581, i32 %711, !prof !114
  br label %748

713:                                              ; preds = %697
  %714 = tail call i32 @llvm.smax.i32(i32 %581, i32 0)
  br label %748

715:                                              ; preds = %685, %682
  %716 = and i64 %678, %676
  %717 = icmp eq i64 %716, 0
  br i1 %717, label %748, label %718, !prof !115

718:                                              ; preds = %715
  %719 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %720 = load i64, ptr %719, align 8, !tbaa !53
  %721 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !53
  %722 = and i64 %721, %720
  %723 = icmp eq i64 %722, 0
  br i1 %723, label %724, label %748, !prof !116

724:                                              ; preds = %718
  %725 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %726 = load i64, ptr %725, align 8, !tbaa !53
  %727 = load i64, ptr @BlackSqMask, align 8, !tbaa !53
  %728 = and i64 %727, %726
  %729 = icmp eq i64 %728, 0
  br i1 %729, label %730, label %748, !prof !117

730:                                              ; preds = %724
  %731 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %6)
  %732 = icmp sgt i32 %731, 1
  br i1 %732, label %733, label %746, !prof !118

733:                                              ; preds = %730
  %734 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %8)
  %735 = load i64, ptr %675, align 8, !tbaa !53
  %736 = tail call noundef i32 @_Z8FindLasty(i64 noundef %735)
  %737 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef 56, i32 noundef %736)
  %738 = add nsw i32 %734, %10
  %739 = icmp sgt i32 %731, %738
  br i1 %739, label %748, label %740, !prof !119

740:                                              ; preds = %733
  %741 = add nsw i32 %731, -1
  %742 = add nsw i32 %737, %10
  %743 = icmp sgt i32 %741, %742
  %744 = tail call i32 @llvm.smax.i32(i32 %581, i32 0)
  %745 = select i1 %743, i32 %581, i32 %744, !prof !120
  br label %748

746:                                              ; preds = %730
  %747 = tail call i32 @llvm.smax.i32(i32 %581, i32 0)
  br label %748

748:                                              ; preds = %746, %740, %713, %707, %662, %656, %629, %623, %733, %700, %649, %616, %664, %666, %670, %691, %724, %718, %715, %674, %590, %631, %634, %640, %607
  %749 = phi i32 [ %581, %634 ], [ %581, %640 ], [ %581, %631 ], [ %581, %607 ], [ %581, %590 ], [ %581, %718 ], [ %581, %724 ], [ %581, %715 ], [ %581, %691 ], [ %581, %674 ], [ %581, %670 ], [ %581, %666 ], [ %581, %664 ], [ %581, %616 ], [ %628, %623 ], [ %630, %629 ], [ %581, %649 ], [ %661, %656 ], [ %663, %662 ], [ %581, %700 ], [ %712, %707 ], [ %714, %713 ], [ %581, %733 ], [ %745, %740 ], [ %747, %746 ]
  %750 = or i32 %3, %2
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %804, !prof !121

752:                                              ; preds = %748
  %753 = load i32, ptr %11, align 4, !tbaa !48
  %754 = icmp eq i32 %753, 1
  br i1 %754, label %755, label %804, !prof !122

755:                                              ; preds = %752
  %756 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %757 = load i64, ptr %756, align 8, !tbaa !53
  %758 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !53
  %759 = and i64 %758, %757
  %760 = icmp eq i64 %759, 0
  br i1 %760, label %779, label %761, !prof !123

761:                                              ; preds = %755
  %762 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %763 = load i64, ptr %762, align 8, !tbaa !53
  %764 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 7), align 8, !tbaa !53
  %765 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 15), align 8, !tbaa !53
  %766 = or i64 %765, %764
  %767 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 14), align 16, !tbaa !53
  %768 = or i64 %766, %767
  %769 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 6), align 16, !tbaa !53
  %770 = or i64 %768, %769
  %771 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 5), align 8, !tbaa !53
  %772 = or i64 %770, %771
  %773 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 23), align 8, !tbaa !53
  %774 = or i64 %772, %773
  %775 = and i64 %774, %763
  %776 = icmp eq i64 %775, 0
  %777 = ashr i32 %749, 2
  %778 = select i1 %776, i32 %749, i32 %777, !prof !124
  br label %801

779:                                              ; preds = %755
  %780 = load i64, ptr @FileMask, align 16, !tbaa !53
  %781 = and i64 %780, %757
  %782 = icmp eq i64 %781, 0
  br i1 %782, label %801, label %783, !prof !125

783:                                              ; preds = %779
  %784 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %785 = load i64, ptr %784, align 8, !tbaa !53
  %786 = load i64, ptr @Mask, align 16, !tbaa !53
  %787 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 8), align 16, !tbaa !53
  %788 = or i64 %787, %786
  %789 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 9), align 8, !tbaa !53
  %790 = or i64 %788, %789
  %791 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 1), align 8, !tbaa !53
  %792 = or i64 %790, %791
  %793 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 2), align 16, !tbaa !53
  %794 = or i64 %792, %793
  %795 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 16), align 16, !tbaa !53
  %796 = or i64 %794, %795
  %797 = and i64 %796, %785
  %798 = icmp eq i64 %797, 0
  %799 = ashr i32 %749, 2
  %800 = select i1 %798, i32 %749, i32 %799
  br label %801

801:                                              ; preds = %783, %761, %779
  %802 = phi i32 [ %749, %779 ], [ %778, %761 ], [ %800, %783 ]
  %803 = ashr i32 %802, 1
  br label %804

804:                                              ; preds = %801, %752, %748
  %805 = phi i32 [ %803, %801 ], [ %749, %752 ], [ %749, %748 ]
  br i1 %751, label %806, label %859, !prof !121

806:                                              ; preds = %804
  %807 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %808 = load i32, ptr %807, align 4, !tbaa !48
  %809 = icmp eq i32 %808, 1
  br i1 %809, label %810, label %859, !prof !126

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %812 = load i64, ptr %811, align 8, !tbaa !53
  %813 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !53
  %814 = and i64 %813, %812
  %815 = icmp eq i64 %814, 0
  br i1 %815, label %834, label %816, !prof !127

816:                                              ; preds = %810
  %817 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %818 = load i64, ptr %817, align 8, !tbaa !53
  %819 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 63), align 8, !tbaa !53
  %820 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 55), align 8, !tbaa !53
  %821 = or i64 %820, %819
  %822 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 62), align 16, !tbaa !53
  %823 = or i64 %821, %822
  %824 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 54), align 16, !tbaa !53
  %825 = or i64 %823, %824
  %826 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 61), align 8, !tbaa !53
  %827 = or i64 %825, %826
  %828 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 47), align 8, !tbaa !53
  %829 = or i64 %827, %828
  %830 = and i64 %829, %818
  %831 = icmp eq i64 %830, 0
  %832 = ashr i32 %805, 2
  %833 = select i1 %831, i32 %805, i32 %832
  br label %856

834:                                              ; preds = %810
  %835 = load i64, ptr @FileMask, align 16, !tbaa !53
  %836 = and i64 %835, %812
  %837 = icmp eq i64 %836, 0
  br i1 %837, label %856, label %838, !prof !128

838:                                              ; preds = %834
  %839 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %840 = load i64, ptr %839, align 8, !tbaa !53
  %841 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 56), align 16, !tbaa !53
  %842 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 48), align 16, !tbaa !53
  %843 = or i64 %842, %841
  %844 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 57), align 8, !tbaa !53
  %845 = or i64 %843, %844
  %846 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 49), align 8, !tbaa !53
  %847 = or i64 %845, %846
  %848 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 58), align 16, !tbaa !53
  %849 = or i64 %847, %848
  %850 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 40), align 16, !tbaa !53
  %851 = or i64 %849, %850
  %852 = and i64 %851, %840
  %853 = icmp eq i64 %852, 0
  %854 = ashr i32 %805, 2
  %855 = select i1 %853, i32 %805, i32 %854, !prof !129
  br label %856

856:                                              ; preds = %838, %816, %834
  %857 = phi i32 [ %805, %834 ], [ %833, %816 ], [ %855, %838 ]
  %858 = ashr i32 %857, 1
  br label %859

859:                                              ; preds = %856, %806, %804
  %860 = phi i32 [ %858, %856 ], [ %805, %806 ], [ %805, %804 ]
  ret i32 %860
}

declare noundef i32 @_Z12taxicab_distii(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

declare noundef i32 @_Z8sum_distii(i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z8FindLasty(i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z4filei(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z9FindFirsty(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z12taxicab_distii, i64 1301}
!36 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z9FindFirsty, i64 51}
!37 = !{ptr @_Z14drawn_endgamesP7state_tiii, ptr @_Z8FindLasty, i64 377}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 288009370}
!40 = !{!41, !42, i64 464}
!41 = !{!"_ZTS7state_t", !42, i64 0, !43, i64 4, !45, i64 264, !45, i64 272, !45, i64 280, !43, i64 288, !42, i64 392, !42, i64 396, !43, i64 400, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !45, i64 480, !45, i64 488, !43, i64 496, !43, i64 2544, !43, i64 2800, !43, i64 3056, !45, i64 4080, !45, i64 4088, !42, i64 4096, !43, i64 4100, !42, i64 4356, !42, i64 4360, !42, i64 4364, !42, i64 4368, !42, i64 4372, !42, i64 4376, !42, i64 4380, !42, i64 4384, !42, i64 4388, !42, i64 4392, !43, i64 4400}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"long long", !43, i64 0}
!46 = !{!41, !42, i64 468}
!47 = !{!41, !42, i64 460}
!48 = !{!42, !42, i64 0}
!49 = !{!"branch_weights", i32 17467, i32 287991903}
!50 = !{!"branch_weights", i32 6, i32 17461}
!51 = !{!"branch_weights", i32 0, i32 6}
!52 = !{!"branch_weights", i32 6, i32 0}
!53 = !{!45, !45, i64 0}
!54 = !{!"branch_weights", i32 36, i32 0}
!55 = !{!"branch_weights", i32 0, i32 24}
!56 = !{!"branch_weights", i32 24, i32 0}
!57 = !{!"branch_weights", i32 17461, i32 287991903}
!58 = !{!"branch_weights", i32 3665, i32 13796}
!59 = !{!"branch_weights", i32 672, i32 2993}
!60 = !{!"branch_weights", i32 511, i32 161}
!61 = !{!"branch_weights", i32 488, i32 23}
!62 = !{!"branch_weights", i32 40, i32 144}
!63 = !{!"branch_weights", i32 7, i32 33}
!64 = !{!"branch_weights", i32 110, i32 17351}
!65 = !{!"branch_weights", i32 16, i32 94}
!66 = !{!"branch_weights", i32 109, i32 17352}
!67 = !{!"branch_weights", i32 0, i32 109}
!68 = !{!"branch_weights", i32 1097, i32 16364}
!69 = !{!"branch_weights", i32 1094, i32 16367}
!70 = !{!"branch_weights", i32 10, i32 1084}
!71 = !{!"branch_weights", i32 2000, i32 14367}
!72 = !{!"branch_weights", i32 19, i32 17442}
!73 = !{!"branch_weights", i32 6, i32 13}
!74 = !{!"branch_weights", i32 2, i32 11}
!75 = !{!"branch_weights", i32 10, i32 1}
!76 = !{!"branch_weights", i32 41171, i32 287950732}
!77 = !{!"branch_weights", i32 5908, i32 35263}
!78 = !{!"branch_weights", i32 5172, i32 736}
!79 = !{!"branch_weights", i32 1230, i32 3942}
!80 = !{!"branch_weights", i32 1183, i32 47}
!81 = !{!"branch_weights", i32 58, i32 3931}
!82 = !{!"branch_weights", i32 3, i32 55}
!83 = !{!"branch_weights", i32 135, i32 41036}
!84 = !{!"branch_weights", i32 23, i32 112}
!85 = !{!"branch_weights", i32 66, i32 41105}
!86 = !{!"branch_weights", i32 0, i32 66}
!87 = !{!"branch_weights", i32 10665, i32 30506}
!88 = !{!"branch_weights", i32 10647, i32 30524}
!89 = !{!"branch_weights", i32 2, i32 10645}
!90 = !{!"branch_weights", i32 1234, i32 29290}
!91 = !{!"branch_weights", i32 0, i32 41171}
!92 = !{!"branch_weights", i32 2046168, i32 285963202}
!93 = !{!"branch_weights", i32 1659392, i32 386776}
!94 = !{!"branch_weights", i32 12592, i32 1646800}
!95 = !{!"branch_weights", i32 2597, i32 9995}
!96 = !{!"branch_weights", i32 3, i32 9992}
!97 = !{!"branch_weights", i32 915, i32 9077}
!98 = !{!"branch_weights", i32 65, i32 850}
!99 = !{!"branch_weights", i32 49, i32 16}
!100 = !{!"branch_weights", i32 0, i32 49}
!101 = !{!"branch_weights", i32 1, i32 48}
!102 = !{!"branch_weights", i32 9077, i32 3}
!103 = !{!"branch_weights", i32 3, i32 0}
!104 = !{!"branch_weights", i32 2, i32 1}
!105 = !{!"branch_weights", i32 2, i32 0}
!106 = !{!"branch_weights", i32 1298652, i32 286698126}
!107 = !{!"branch_weights", i32 1071091, i32 227561}
!108 = !{!"branch_weights", i32 10272, i32 1060819}
!109 = !{!"branch_weights", i32 6314, i32 3958}
!110 = !{!"branch_weights", i32 3896, i32 62}
!111 = !{!"branch_weights", i32 52, i32 10}
!112 = !{!"branch_weights", i32 52, i32 0}
!113 = !{!"branch_weights", i32 51, i32 1}
!114 = !{!"branch_weights", i32 0, i32 51}
!115 = !{!"branch_weights", i32 10, i32 3896}
!116 = !{!"branch_weights", i32 345, i32 3551}
!117 = !{!"branch_weights", i32 326, i32 19}
!118 = !{!"branch_weights", i32 326, i32 0}
!119 = !{!"branch_weights", i32 183, i32 143}
!120 = !{!"branch_weights", i32 14, i32 129}
!121 = !{!"branch_weights", i32 92191, i32 287917179}
!122 = !{!"branch_weights", i32 64, i32 92127}
!123 = !{!"branch_weights", i32 1, i32 63}
!124 = !{!"branch_weights", i32 39, i32 24}
!125 = !{!"branch_weights", i32 1, i32 0}
!126 = !{!"branch_weights", i32 277, i32 91914}
!127 = !{!"branch_weights", i32 277, i32 0}
!128 = !{!"branch_weights", i32 125, i32 152}
!129 = !{!"branch_weights", i32 152, i32 0}
