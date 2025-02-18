; ModuleID = 'generate.cpp'
source_filename = "generate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@RankMask = external local_unnamed_addr global [8 x i64], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@KingMoves = external local_unnamed_addr global [64 x i64], align 16
@FileMask = external local_unnamed_addr global [8 x i64], align 16
@BishopMask = external local_unnamed_addr global [64 x i64], align 16
@RookMask = external local_unnamed_addr global [64 x i64], align 16
@PawnAttacksBlack = external local_unnamed_addr global [64 x i64], align 16
@PawnAttacksWhite = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !57 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !58
  %9 = xor i64 %8, -1
  %10 = load i32, ptr %6, align 4, !tbaa !64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %75, label %12, !prof !65

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !66
  %15 = lshr i64 %14, 8
  %16 = and i64 %15, %9
  store i64 %16, ptr %3, align 8, !tbaa !66
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !66
  %18 = and i64 %17, %14
  %19 = lshr i64 %18, 16
  %20 = lshr i64 %8, 8
  %21 = or i64 %20, %8
  %22 = xor i64 %21, -1
  %23 = and i64 %19, %22
  store i64 %23, ptr %4, align 8, !tbaa !66
  %24 = or i64 %23, %16
  store i64 %24, ptr %3, align 8, !tbaa !66
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %139, label %26, !prof !67

26:                                               ; preds = %12, %70
  %27 = phi ptr [ %72, %70 ], [ %1, %12 ]
  %28 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %29 = load i64, ptr %13, align 8, !tbaa !66
  %30 = add nsw i32 %28, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !66
  %34 = and i64 %33, %29
  %35 = icmp eq i64 %34, 0
  %36 = add nsw i32 %28, 16
  %37 = select i1 %35, i32 %36, i32 %30, !prof !68
  %38 = icmp ult i32 %28, 8
  br i1 %38, label %39, label %66, !prof !69

39:                                               ; preds = %26
  %40 = zext nneg i32 %28 to i64
  %41 = getelementptr inbounds i32, ptr %5, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !70
  %43 = shl i32 %42, 19
  %44 = shl nuw nsw i32 %37, 6
  %45 = or disjoint i32 %43, %44
  %46 = or disjoint i32 %45, %28
  %47 = or i32 %46, 36864
  store i32 %47, ptr %27, align 4, !tbaa !70
  %48 = getelementptr inbounds i32, ptr %27, i64 1
  %49 = load i32, ptr %41, align 4, !tbaa !70
  %50 = shl i32 %49, 19
  %51 = or disjoint i32 %50, %44
  %52 = or disjoint i32 %51, %28
  %53 = or i32 %52, 28672
  store i32 %53, ptr %48, align 4, !tbaa !70
  %54 = getelementptr inbounds i32, ptr %27, i64 2
  %55 = load i32, ptr %41, align 4, !tbaa !70
  %56 = shl i32 %55, 19
  %57 = or disjoint i32 %56, %44
  %58 = or disjoint i32 %57, %28
  %59 = or i32 %58, 45056
  store i32 %59, ptr %54, align 4, !tbaa !70
  %60 = getelementptr inbounds i32, ptr %27, i64 3
  %61 = load i32, ptr %41, align 4, !tbaa !70
  %62 = shl i32 %61, 19
  %63 = or disjoint i32 %62, %44
  %64 = or disjoint i32 %63, %28
  %65 = or i32 %64, 12288
  store i32 %65, ptr %60, align 4, !tbaa !70
  br label %70

66:                                               ; preds = %26
  %67 = shl i32 %37, 6
  %68 = or i32 %28, %67
  %69 = or i32 %68, 6815744
  store i32 %69, ptr %27, align 4, !tbaa !70
  br label %70

70:                                               ; preds = %66, %39
  %71 = phi i64 [ 1, %66 ], [ 4, %39 ]
  %72 = getelementptr inbounds i32, ptr %27, i64 %71
  %73 = load i64, ptr %3, align 8, !tbaa !66
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %139, label %26, !prof !71, !llvm.loop !72

75:                                               ; preds = %2
  %76 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %77 = load i64, ptr %76, align 8, !tbaa !66
  %78 = shl i64 %77, 8
  %79 = and i64 %78, %9
  store i64 %79, ptr %3, align 8, !tbaa !66
  %80 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !66
  %81 = and i64 %80, %77
  %82 = shl i64 %81, 16
  %83 = shl i64 %8, 8
  %84 = or i64 %83, %8
  %85 = xor i64 %84, -1
  %86 = and i64 %82, %85
  store i64 %86, ptr %4, align 8, !tbaa !66
  %87 = or i64 %86, %79
  store i64 %87, ptr %3, align 8, !tbaa !66
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %139, label %89, !prof !75

89:                                               ; preds = %75, %134
  %90 = phi ptr [ %136, %134 ], [ %1, %75 ]
  %91 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %92 = load i64, ptr %76, align 8, !tbaa !66
  %93 = add nsw i32 %91, -8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !66
  %97 = and i64 %96, %92
  %98 = icmp eq i64 %97, 0
  %99 = add nsw i32 %91, -16
  %100 = select i1 %98, i32 %99, i32 %93, !prof !76
  %101 = and i32 %91, -8
  %102 = icmp eq i32 %101, 56
  br i1 %102, label %103, label %130, !prof !77

103:                                              ; preds = %89
  %104 = zext nneg i32 %91 to i64
  %105 = getelementptr inbounds i32, ptr %5, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !70
  %107 = shl i32 %106, 19
  %108 = shl nuw nsw i32 %100, 6
  %109 = or disjoint i32 %107, %108
  %110 = or disjoint i32 %109, %91
  %111 = or i32 %110, 40960
  store i32 %111, ptr %90, align 4, !tbaa !70
  %112 = getelementptr inbounds i32, ptr %90, i64 1
  %113 = load i32, ptr %105, align 4, !tbaa !70
  %114 = shl i32 %113, 19
  %115 = or disjoint i32 %114, %108
  %116 = or disjoint i32 %115, %91
  %117 = or i32 %116, 32768
  store i32 %117, ptr %112, align 4, !tbaa !70
  %118 = getelementptr inbounds i32, ptr %90, i64 2
  %119 = load i32, ptr %105, align 4, !tbaa !70
  %120 = shl i32 %119, 19
  %121 = or disjoint i32 %120, %108
  %122 = or disjoint i32 %121, %91
  %123 = or i32 %122, 49152
  store i32 %123, ptr %118, align 4, !tbaa !70
  %124 = getelementptr inbounds i32, ptr %90, i64 3
  %125 = load i32, ptr %105, align 4, !tbaa !70
  %126 = shl i32 %125, 19
  %127 = or disjoint i32 %126, %108
  %128 = or disjoint i32 %127, %91
  %129 = or i32 %128, 16384
  store i32 %129, ptr %124, align 4, !tbaa !70
  br label %134

130:                                              ; preds = %89
  %131 = shl i32 %100, 6
  %132 = or i32 %91, %131
  %133 = or i32 %132, 6815744
  store i32 %133, ptr %90, align 4, !tbaa !70
  br label %134

134:                                              ; preds = %130, %103
  %135 = phi i64 [ 1, %130 ], [ 4, %103 ]
  %136 = getelementptr inbounds i32, ptr %90, i64 %135
  %137 = load i64, ptr %3, align 8, !tbaa !66
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %89, !prof !78, !llvm.loop !79

139:                                              ; preds = %70, %134, %12, %75
  %140 = phi ptr [ %1, %75 ], [ %1, %12 ], [ %136, %134 ], [ %72, %70 ]
  %141 = load i32, ptr %6, align 4, !tbaa !64
  %142 = icmp eq i32 %141, 0
  %143 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %144 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %145 = select i1 %142, ptr %143, ptr %144, !prof !65
  %146 = load i64, ptr %145, align 8, !tbaa !66
  store i64 %146, ptr %3, align 8, !tbaa !66
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %174, label %152, !prof !80

148:                                              ; preds = %162, %152
  %149 = phi ptr [ %153, %152 ], [ %171, %162 ]
  %150 = load i64, ptr %3, align 8, !tbaa !66
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %174, label %152, !prof !81, !llvm.loop !82

152:                                              ; preds = %139, %148
  %153 = phi ptr [ %149, %148 ], [ %140, %139 ]
  %154 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !66
  %158 = and i64 %157, %9
  store i64 %158, ptr %4, align 8, !tbaa !66
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %148, label %160, !prof !83

160:                                              ; preds = %152
  %161 = shl i32 %154, 6
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi ptr [ %153, %160 ], [ %171, %162 ]
  %164 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %5, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !70
  %168 = shl i32 %167, 19
  %169 = or i32 %161, %168
  %170 = or i32 %169, %164
  store i32 %170, ptr %163, align 4, !tbaa !70
  %171 = getelementptr inbounds i32, ptr %163, i64 1
  %172 = load i64, ptr %4, align 8, !tbaa !66
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %148, label %162, !prof !84, !llvm.loop !85

174:                                              ; preds = %148, %139
  %175 = phi ptr [ %140, %139 ], [ %149, %148 ]
  %176 = load i32, ptr %6, align 4, !tbaa !64
  %177 = icmp eq i32 %176, 0
  %178 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %179 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %180 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %181 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %182 = select i1 %177, ptr %179, ptr %181, !prof !65
  %183 = select i1 %177, ptr %178, ptr %180, !prof !65
  %184 = load i64, ptr %183, align 8, !tbaa !66
  %185 = load i64, ptr %182, align 8, !tbaa !66
  %186 = or i64 %185, %184
  store i64 %186, ptr %3, align 8, !tbaa !66
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %212, label %192, !prof !86

188:                                              ; preds = %200, %192
  %189 = phi ptr [ %193, %192 ], [ %209, %200 ]
  %190 = load i64, ptr %3, align 8, !tbaa !66
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %212, label %192, !prof !87, !llvm.loop !88

192:                                              ; preds = %174, %188
  %193 = phi ptr [ %189, %188 ], [ %175, %174 ]
  %194 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %195 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %194)
  %196 = and i64 %195, %9
  store i64 %196, ptr %4, align 8, !tbaa !66
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %188, label %198, !prof !89

198:                                              ; preds = %192
  %199 = shl i32 %194, 6
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi ptr [ %193, %198 ], [ %209, %200 ]
  %202 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %5, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !70
  %206 = shl i32 %205, 19
  %207 = or i32 %199, %206
  %208 = or i32 %207, %202
  store i32 %208, ptr %201, align 4, !tbaa !70
  %209 = getelementptr inbounds i32, ptr %201, i64 1
  %210 = load i64, ptr %4, align 8, !tbaa !66
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %188, label %200, !prof !90, !llvm.loop !91

212:                                              ; preds = %188, %174
  %213 = phi ptr [ %175, %174 ], [ %189, %188 ]
  %214 = load i32, ptr %6, align 4, !tbaa !64
  %215 = icmp eq i32 %214, 0
  %216 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %217 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %218 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %219 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %220 = select i1 %215, ptr %217, ptr %219, !prof !65
  %221 = select i1 %215, ptr %216, ptr %218, !prof !65
  %222 = load i64, ptr %221, align 8, !tbaa !66
  %223 = load i64, ptr %220, align 8, !tbaa !66
  %224 = or i64 %223, %222
  store i64 %224, ptr %3, align 8, !tbaa !66
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %250, label %230, !prof !86

226:                                              ; preds = %238, %230
  %227 = phi ptr [ %231, %230 ], [ %247, %238 ]
  %228 = load i64, ptr %3, align 8, !tbaa !66
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %250, label %230, !prof !92, !llvm.loop !93

230:                                              ; preds = %212, %226
  %231 = phi ptr [ %227, %226 ], [ %213, %212 ]
  %232 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %233 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %232)
  %234 = and i64 %233, %9
  store i64 %234, ptr %4, align 8, !tbaa !66
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %226, label %236, !prof !94

236:                                              ; preds = %230
  %237 = shl i32 %232, 6
  br label %238

238:                                              ; preds = %236, %238
  %239 = phi ptr [ %231, %236 ], [ %247, %238 ]
  %240 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, ptr %5, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !70
  %244 = shl i32 %243, 19
  %245 = or i32 %237, %244
  %246 = or i32 %245, %240
  store i32 %246, ptr %239, align 4, !tbaa !70
  %247 = getelementptr inbounds i32, ptr %239, i64 1
  %248 = load i64, ptr %4, align 8, !tbaa !66
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %226, label %238, !prof !95, !llvm.loop !96

250:                                              ; preds = %226, %212
  %251 = phi ptr [ %213, %212 ], [ %227, %226 ]
  %252 = load i32, ptr %6, align 4, !tbaa !64
  %253 = icmp eq i32 %252, 0
  %254 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %255 = load i32, ptr %254, align 4, !tbaa !97
  br i1 %253, label %285, label %256, !prof !65

256:                                              ; preds = %250
  %257 = and i32 %255, 2
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %268, label %259, !prof !98

259:                                              ; preds = %256
  %260 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 1)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %268, !prof !99

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %264 = load i32, ptr %263, align 8, !tbaa !100
  %265 = shl i32 %264, 6
  %266 = or i32 %265, 6881342
  store i32 %266, ptr %251, align 4, !tbaa !70
  %267 = getelementptr inbounds i32, ptr %251, i64 1
  br label %268

268:                                              ; preds = %259, %262, %256
  %269 = phi ptr [ %251, %259 ], [ %267, %262 ], [ %251, %256 ]
  %270 = load i32, ptr %254, align 4, !tbaa !97
  %271 = and i32 %270, 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %282, label %273, !prof !101

273:                                              ; preds = %268
  %274 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 2)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %282, !prof !102

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %278 = load i32, ptr %277, align 8, !tbaa !100
  %279 = shl i32 %278, 6
  %280 = or i32 %279, 6946874
  store i32 %280, ptr %269, align 4, !tbaa !70
  %281 = getelementptr inbounds i32, ptr %269, i64 1
  br label %282

282:                                              ; preds = %273, %276, %268
  %283 = phi ptr [ %269, %273 ], [ %281, %276 ], [ %269, %268 ]
  %284 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %314

285:                                              ; preds = %250
  %286 = and i32 %255, 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %297, label %288, !prof !103

288:                                              ; preds = %285
  %289 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 3)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297, !prof !104

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %293 = load i32, ptr %292, align 4, !tbaa !105
  %294 = shl i32 %293, 6
  %295 = or i32 %294, 7012358
  store i32 %295, ptr %251, align 4, !tbaa !70
  %296 = getelementptr inbounds i32, ptr %251, i64 1
  br label %297

297:                                              ; preds = %288, %291, %285
  %298 = phi ptr [ %251, %288 ], [ %296, %291 ], [ %251, %285 ]
  %299 = load i32, ptr %254, align 4, !tbaa !97
  %300 = and i32 %299, 16
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %311, label %302, !prof !106

302:                                              ; preds = %297
  %303 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 4)
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %311, !prof !107

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %307 = load i32, ptr %306, align 4, !tbaa !105
  %308 = shl i32 %307, 6
  %309 = or i32 %308, 7077890
  store i32 %309, ptr %298, align 4, !tbaa !70
  %310 = getelementptr inbounds i32, ptr %298, i64 1
  br label %311

311:                                              ; preds = %302, %305, %297
  %312 = phi ptr [ %298, %302 ], [ %310, %305 ], [ %298, %297 ]
  %313 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %314

314:                                              ; preds = %311, %282
  %315 = phi ptr [ %284, %282 ], [ %313, %311 ]
  %316 = phi ptr [ %283, %282 ], [ %312, %311 ]
  %317 = load i32, ptr %315, align 4, !tbaa !70
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !66
  %321 = and i64 %320, %9
  store i64 %321, ptr %3, align 8, !tbaa !66
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %337, label %323, !prof !86

323:                                              ; preds = %314
  %324 = shl i32 %317, 6
  br label %325

325:                                              ; preds = %323, %325
  %326 = phi ptr [ %316, %323 ], [ %334, %325 ]
  %327 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, ptr %5, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !70
  %331 = shl i32 %330, 19
  %332 = or i32 %324, %331
  %333 = or i32 %332, %327
  store i32 %333, ptr %326, align 4, !tbaa !70
  %334 = getelementptr inbounds i32, ptr %326, i64 1
  %335 = load i64, ptr %3, align 8, !tbaa !66
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %337, label %325, !prof !108, !llvm.loop !109

337:                                              ; preds = %325, %314
  %338 = phi ptr [ %316, %314 ], [ %334, %325 ]
  %339 = ptrtoint ptr %338 to i64
  %340 = ptrtoint ptr %1 to i64
  %341 = sub i64 %339, %340
  %342 = lshr exact i64 %341, 2
  %343 = trunc i64 %342 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %343
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_Z11add_capturePiiiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !prof !110 {
  %7 = shl i32 %5, 23
  %8 = shl i32 %3, 19
  %9 = shl i32 %4, 12
  %10 = shl i32 %1, 6
  %11 = or i32 %10, %2
  %12 = or i32 %11, %8
  %13 = or i32 %12, %9
  %14 = or i32 %13, %7
  store i32 %14, ptr %0, align 4, !tbaa !70
  %15 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_Z8add_movePiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !110 {
  %5 = shl i32 %3, 12
  %6 = shl i32 %1, 6
  %7 = or i32 %6, %2
  %8 = or i32 %7, %5
  %9 = or i32 %8, 6815744
  store i32 %9, ptr %0, align 4, !tbaa !70
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %10
}

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_Z15add_king_castlePiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !110 {
  %5 = shl i32 %3, 16
  %6 = shl i32 %1, 6
  %7 = or i32 %6, %2
  %8 = or i32 %7, %5
  %9 = or i32 %8, 6815744
  store i32 %9, ptr %0, align 4, !tbaa !70
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !111 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %11 = select i1 %8, ptr %10, ptr %9, !prof !112
  %12 = load i64, ptr %11, align 8, !tbaa !66
  %13 = xor i64 %12, -1
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = xor i64 %15, -1
  br i1 %8, label %80, label %17, !prof !112

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !66
  %20 = lshr i64 %19, 8
  %21 = and i64 %20, %16
  store i64 %21, ptr %3, align 8, !tbaa !66
  %22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !66
  %23 = and i64 %22, %19
  %24 = lshr i64 %23, 16
  %25 = lshr i64 %15, 8
  %26 = or i64 %25, %15
  %27 = xor i64 %26, -1
  %28 = and i64 %24, %27
  store i64 %28, ptr %4, align 8, !tbaa !66
  %29 = or i64 %28, %21
  store i64 %29, ptr %3, align 8, !tbaa !66
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %144, label %31, !prof !113

31:                                               ; preds = %17, %75
  %32 = phi ptr [ %77, %75 ], [ %1, %17 ]
  %33 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %34 = load i64, ptr %18, align 8, !tbaa !66
  %35 = add nsw i32 %33, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !66
  %39 = and i64 %38, %34
  %40 = icmp eq i64 %39, 0
  %41 = add nsw i32 %33, 16
  %42 = select i1 %40, i32 %41, i32 %35, !prof !114
  %43 = icmp ult i32 %33, 8
  br i1 %43, label %44, label %71, !prof !115

44:                                               ; preds = %31
  %45 = zext nneg i32 %33 to i64
  %46 = getelementptr inbounds i32, ptr %5, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !70
  %48 = shl i32 %47, 19
  %49 = shl nuw nsw i32 %42, 6
  %50 = or disjoint i32 %48, %49
  %51 = or disjoint i32 %50, %33
  %52 = or i32 %51, 36864
  store i32 %52, ptr %32, align 4, !tbaa !70
  %53 = getelementptr inbounds i32, ptr %32, i64 1
  %54 = load i32, ptr %46, align 4, !tbaa !70
  %55 = shl i32 %54, 19
  %56 = or disjoint i32 %55, %49
  %57 = or disjoint i32 %56, %33
  %58 = or i32 %57, 28672
  store i32 %58, ptr %53, align 4, !tbaa !70
  %59 = getelementptr inbounds i32, ptr %32, i64 2
  %60 = load i32, ptr %46, align 4, !tbaa !70
  %61 = shl i32 %60, 19
  %62 = or disjoint i32 %61, %49
  %63 = or disjoint i32 %62, %33
  %64 = or i32 %63, 45056
  store i32 %64, ptr %59, align 4, !tbaa !70
  %65 = getelementptr inbounds i32, ptr %32, i64 3
  %66 = load i32, ptr %46, align 4, !tbaa !70
  %67 = shl i32 %66, 19
  %68 = or disjoint i32 %67, %49
  %69 = or disjoint i32 %68, %33
  %70 = or i32 %69, 12288
  store i32 %70, ptr %65, align 4, !tbaa !70
  br label %75

71:                                               ; preds = %31
  %72 = shl i32 %42, 6
  %73 = or i32 %33, %72
  %74 = or i32 %73, 6815744
  store i32 %74, ptr %32, align 4, !tbaa !70
  br label %75

75:                                               ; preds = %71, %44
  %76 = phi i64 [ 1, %71 ], [ 4, %44 ]
  %77 = getelementptr inbounds i32, ptr %32, i64 %76
  %78 = load i64, ptr %3, align 8, !tbaa !66
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %144, label %31, !prof !116, !llvm.loop !117

80:                                               ; preds = %2
  %81 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %82 = load i64, ptr %81, align 8, !tbaa !66
  %83 = shl i64 %82, 8
  %84 = and i64 %83, %16
  store i64 %84, ptr %3, align 8, !tbaa !66
  %85 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !66
  %86 = and i64 %85, %82
  %87 = shl i64 %86, 16
  %88 = shl i64 %15, 8
  %89 = or i64 %88, %15
  %90 = xor i64 %89, -1
  %91 = and i64 %87, %90
  store i64 %91, ptr %4, align 8, !tbaa !66
  %92 = or i64 %91, %84
  store i64 %92, ptr %3, align 8, !tbaa !66
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %144, label %94, !prof !118

94:                                               ; preds = %80, %139
  %95 = phi ptr [ %141, %139 ], [ %1, %80 ]
  %96 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %97 = load i64, ptr %81, align 8, !tbaa !66
  %98 = add nsw i32 %96, -8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !66
  %102 = and i64 %101, %97
  %103 = icmp eq i64 %102, 0
  %104 = add nsw i32 %96, -16
  %105 = select i1 %103, i32 %104, i32 %98, !prof !119
  %106 = and i32 %96, -8
  %107 = icmp eq i32 %106, 56
  br i1 %107, label %108, label %135, !prof !120

108:                                              ; preds = %94
  %109 = zext nneg i32 %96 to i64
  %110 = getelementptr inbounds i32, ptr %5, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !70
  %112 = shl i32 %111, 19
  %113 = shl nuw nsw i32 %105, 6
  %114 = or disjoint i32 %112, %113
  %115 = or disjoint i32 %114, %96
  %116 = or i32 %115, 40960
  store i32 %116, ptr %95, align 4, !tbaa !70
  %117 = getelementptr inbounds i32, ptr %95, i64 1
  %118 = load i32, ptr %110, align 4, !tbaa !70
  %119 = shl i32 %118, 19
  %120 = or disjoint i32 %119, %113
  %121 = or disjoint i32 %120, %96
  %122 = or i32 %121, 32768
  store i32 %122, ptr %117, align 4, !tbaa !70
  %123 = getelementptr inbounds i32, ptr %95, i64 2
  %124 = load i32, ptr %110, align 4, !tbaa !70
  %125 = shl i32 %124, 19
  %126 = or disjoint i32 %125, %113
  %127 = or disjoint i32 %126, %96
  %128 = or i32 %127, 49152
  store i32 %128, ptr %123, align 4, !tbaa !70
  %129 = getelementptr inbounds i32, ptr %95, i64 3
  %130 = load i32, ptr %110, align 4, !tbaa !70
  %131 = shl i32 %130, 19
  %132 = or disjoint i32 %131, %113
  %133 = or disjoint i32 %132, %96
  %134 = or i32 %133, 16384
  store i32 %134, ptr %129, align 4, !tbaa !70
  br label %139

135:                                              ; preds = %94
  %136 = shl i32 %105, 6
  %137 = or i32 %96, %136
  %138 = or i32 %137, 6815744
  store i32 %138, ptr %95, align 4, !tbaa !70
  br label %139

139:                                              ; preds = %135, %108
  %140 = phi i64 [ 1, %135 ], [ 4, %108 ]
  %141 = getelementptr inbounds i32, ptr %95, i64 %140
  %142 = load i64, ptr %3, align 8, !tbaa !66
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %94, !prof !121, !llvm.loop !122

144:                                              ; preds = %75, %139, %17, %80
  %145 = phi ptr [ %1, %80 ], [ %1, %17 ], [ %141, %139 ], [ %77, %75 ]
  %146 = load i32, ptr %6, align 4, !tbaa !64
  %147 = icmp eq i32 %146, 0
  %148 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !66
  %149 = xor i64 %148, -1
  %150 = load i64, ptr @FileMask, align 16, !tbaa !66
  %151 = xor i64 %150, -1
  %152 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  br i1 %147, label %295, label %153, !prof !112

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %155 = load i64, ptr %154, align 8, !tbaa !66
  %156 = and i64 %155, %149
  %157 = lshr i64 %156, 7
  %158 = and i64 %155, %151
  %159 = lshr i64 %158, 9
  %160 = or i64 %159, %157
  store i64 %160, ptr %3, align 8, !tbaa !66
  %161 = load i32, ptr %152, align 8, !tbaa !123
  %162 = icmp sgt i32 %161, 0
  %163 = load i64, ptr %10, align 8, !tbaa !124
  br i1 %162, label %164, label %169, !prof !125

164:                                              ; preds = %153
  %165 = zext nneg i32 %161 to i64
  %166 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !66
  %168 = or i64 %167, %163
  br label %169

169:                                              ; preds = %153, %164
  %170 = phi i64 [ %168, %164 ], [ %163, %153 ]
  %171 = and i64 %170, %160
  store i64 %171, ptr %3, align 8, !tbaa !66
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %439, label %173, !prof !126

173:                                              ; preds = %169, %291
  %174 = phi ptr [ %292, %291 ], [ %145, %169 ]
  %175 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %176 = and i32 %175, 7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %233, label %178, !prof !127

178:                                              ; preds = %173
  %179 = add nsw i32 %175, 7
  %180 = load i64, ptr %154, align 8, !tbaa !66
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !66
  %184 = and i64 %183, %180
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %233, label %186, !prof !128

186:                                              ; preds = %178
  %187 = icmp ult i32 %175, 8
  br i1 %187, label %188, label %216, !prof !129

188:                                              ; preds = %186
  %189 = zext nneg i32 %175 to i64
  %190 = getelementptr inbounds i32, ptr %5, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !70
  %192 = shl i32 %191, 19
  %193 = shl nuw nsw i32 %179, 6
  %194 = or disjoint i32 %192, %193
  %195 = or disjoint i32 %194, %175
  %196 = or disjoint i32 %195, 36864
  store i32 %196, ptr %174, align 4, !tbaa !70
  %197 = getelementptr inbounds i32, ptr %174, i64 1
  %198 = load i32, ptr %190, align 4, !tbaa !70
  %199 = shl i32 %198, 19
  %200 = or disjoint i32 %199, %193
  %201 = or disjoint i32 %200, %175
  %202 = or disjoint i32 %201, 28672
  store i32 %202, ptr %197, align 4, !tbaa !70
  %203 = getelementptr inbounds i32, ptr %174, i64 2
  %204 = load i32, ptr %190, align 4, !tbaa !70
  %205 = shl i32 %204, 19
  %206 = or disjoint i32 %205, %193
  %207 = or disjoint i32 %206, %175
  %208 = or disjoint i32 %207, 45056
  store i32 %208, ptr %203, align 4, !tbaa !70
  %209 = getelementptr inbounds i32, ptr %174, i64 3
  %210 = load i32, ptr %190, align 4, !tbaa !70
  %211 = shl i32 %210, 19
  %212 = or disjoint i32 %211, %193
  %213 = or disjoint i32 %212, %175
  %214 = or disjoint i32 %213, 12288
  store i32 %214, ptr %209, align 4, !tbaa !70
  %215 = getelementptr inbounds i32, ptr %174, i64 4
  br label %233

216:                                              ; preds = %186
  %217 = load i32, ptr %152, align 8, !tbaa !123
  %218 = icmp eq i32 %175, %217
  br i1 %218, label %219, label %224, !prof !130

219:                                              ; preds = %216
  %220 = shl i32 %179, 6
  %221 = or i32 %175, %220
  %222 = or i32 %221, 9437184
  store i32 %222, ptr %174, align 4, !tbaa !70
  %223 = getelementptr inbounds i32, ptr %174, i64 1
  br label %233

224:                                              ; preds = %216
  %225 = sext i32 %175 to i64
  %226 = getelementptr inbounds i32, ptr %5, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !70
  %228 = shl i32 %227, 19
  %229 = shl i32 %179, 6
  %230 = or i32 %229, %228
  %231 = or i32 %230, %175
  store i32 %231, ptr %174, align 4, !tbaa !70
  %232 = getelementptr inbounds i32, ptr %174, i64 1
  br label %233

233:                                              ; preds = %178, %219, %224, %188, %173
  %234 = phi ptr [ %215, %188 ], [ %223, %219 ], [ %232, %224 ], [ %174, %178 ], [ %174, %173 ]
  %235 = icmp eq i32 %176, 7
  br i1 %235, label %291, label %236, !prof !131

236:                                              ; preds = %233
  %237 = add nsw i32 %175, 9
  %238 = load i64, ptr %154, align 8, !tbaa !66
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !66
  %242 = and i64 %241, %238
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %291, label %244, !prof !132

244:                                              ; preds = %236
  %245 = icmp ult i32 %175, 8
  br i1 %245, label %246, label %274, !prof !133

246:                                              ; preds = %244
  %247 = zext nneg i32 %175 to i64
  %248 = getelementptr inbounds i32, ptr %5, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !70
  %250 = shl i32 %249, 19
  %251 = shl nuw nsw i32 %237, 6
  %252 = or disjoint i32 %250, %251
  %253 = or disjoint i32 %252, %175
  %254 = or disjoint i32 %253, 36864
  store i32 %254, ptr %234, align 4, !tbaa !70
  %255 = getelementptr inbounds i32, ptr %234, i64 1
  %256 = load i32, ptr %248, align 4, !tbaa !70
  %257 = shl i32 %256, 19
  %258 = or disjoint i32 %257, %251
  %259 = or disjoint i32 %258, %175
  %260 = or disjoint i32 %259, 28672
  store i32 %260, ptr %255, align 4, !tbaa !70
  %261 = getelementptr inbounds i32, ptr %234, i64 2
  %262 = load i32, ptr %248, align 4, !tbaa !70
  %263 = shl i32 %262, 19
  %264 = or disjoint i32 %263, %251
  %265 = or disjoint i32 %264, %175
  %266 = or disjoint i32 %265, 45056
  store i32 %266, ptr %261, align 4, !tbaa !70
  %267 = getelementptr inbounds i32, ptr %234, i64 3
  %268 = load i32, ptr %248, align 4, !tbaa !70
  %269 = shl i32 %268, 19
  %270 = or disjoint i32 %269, %251
  %271 = or disjoint i32 %270, %175
  %272 = or disjoint i32 %271, 12288
  store i32 %272, ptr %267, align 4, !tbaa !70
  %273 = getelementptr inbounds i32, ptr %234, i64 4
  br label %291

274:                                              ; preds = %244
  %275 = load i32, ptr %152, align 8, !tbaa !123
  %276 = icmp eq i32 %175, %275
  br i1 %276, label %277, label %282, !prof !134

277:                                              ; preds = %274
  %278 = shl i32 %237, 6
  %279 = or i32 %175, %278
  %280 = or i32 %279, 9437184
  store i32 %280, ptr %234, align 4, !tbaa !70
  %281 = getelementptr inbounds i32, ptr %234, i64 1
  br label %291

282:                                              ; preds = %274
  %283 = sext i32 %175 to i64
  %284 = getelementptr inbounds i32, ptr %5, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !70
  %286 = shl i32 %285, 19
  %287 = shl i32 %237, 6
  %288 = or i32 %287, %286
  %289 = or i32 %288, %175
  store i32 %289, ptr %234, align 4, !tbaa !70
  %290 = getelementptr inbounds i32, ptr %234, i64 1
  br label %291

291:                                              ; preds = %236, %277, %282, %246, %233
  %292 = phi ptr [ %273, %246 ], [ %281, %277 ], [ %290, %282 ], [ %234, %236 ], [ %234, %233 ]
  %293 = load i64, ptr %3, align 8, !tbaa !66
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %439, label %173, !prof !135, !llvm.loop !136

295:                                              ; preds = %144
  %296 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %297 = load i64, ptr %296, align 8, !tbaa !66
  %298 = and i64 %297, %149
  %299 = shl i64 %298, 9
  %300 = and i64 %297, %151
  %301 = shl i64 %300, 7
  %302 = or i64 %301, %299
  store i64 %302, ptr %3, align 8, !tbaa !66
  %303 = load i32, ptr %152, align 8, !tbaa !123
  %304 = icmp sgt i32 %303, 0
  %305 = load i64, ptr %9, align 8, !tbaa !137
  br i1 %304, label %306, label %311, !prof !138

306:                                              ; preds = %295
  %307 = zext nneg i32 %303 to i64
  %308 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %307
  %309 = load i64, ptr %308, align 8, !tbaa !66
  %310 = or i64 %309, %305
  br label %311

311:                                              ; preds = %295, %306
  %312 = phi i64 [ %310, %306 ], [ %305, %295 ]
  %313 = and i64 %312, %302
  store i64 %313, ptr %3, align 8, !tbaa !66
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %439, label %315, !prof !139

315:                                              ; preds = %311, %435
  %316 = phi ptr [ %436, %435 ], [ %145, %311 ]
  %317 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %318 = and i32 %317, 7
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %376, label %320, !prof !140

320:                                              ; preds = %315
  %321 = add nsw i32 %317, -9
  %322 = load i64, ptr %296, align 8, !tbaa !66
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !66
  %326 = and i64 %325, %322
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %376, label %328, !prof !141

328:                                              ; preds = %320
  %329 = and i32 %317, -8
  %330 = icmp eq i32 %329, 56
  br i1 %330, label %331, label %359, !prof !142

331:                                              ; preds = %328
  %332 = zext nneg i32 %317 to i64
  %333 = getelementptr inbounds i32, ptr %5, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !70
  %335 = shl i32 %334, 19
  %336 = shl nuw nsw i32 %321, 6
  %337 = or disjoint i32 %335, %336
  %338 = or disjoint i32 %337, %317
  %339 = or disjoint i32 %338, 40960
  store i32 %339, ptr %316, align 4, !tbaa !70
  %340 = getelementptr inbounds i32, ptr %316, i64 1
  %341 = load i32, ptr %333, align 4, !tbaa !70
  %342 = shl i32 %341, 19
  %343 = or disjoint i32 %342, %336
  %344 = or disjoint i32 %343, %317
  %345 = or disjoint i32 %344, 32768
  store i32 %345, ptr %340, align 4, !tbaa !70
  %346 = getelementptr inbounds i32, ptr %316, i64 2
  %347 = load i32, ptr %333, align 4, !tbaa !70
  %348 = shl i32 %347, 19
  %349 = or disjoint i32 %348, %336
  %350 = or disjoint i32 %349, %317
  %351 = or disjoint i32 %350, 49152
  store i32 %351, ptr %346, align 4, !tbaa !70
  %352 = getelementptr inbounds i32, ptr %316, i64 3
  %353 = load i32, ptr %333, align 4, !tbaa !70
  %354 = shl i32 %353, 19
  %355 = or disjoint i32 %354, %336
  %356 = or disjoint i32 %355, %317
  %357 = or disjoint i32 %356, 16384
  store i32 %357, ptr %352, align 4, !tbaa !70
  %358 = getelementptr inbounds i32, ptr %316, i64 4
  br label %376

359:                                              ; preds = %328
  %360 = load i32, ptr %152, align 8, !tbaa !123
  %361 = icmp eq i32 %317, %360
  br i1 %361, label %362, label %367, !prof !143

362:                                              ; preds = %359
  %363 = shl i32 %321, 6
  %364 = or i32 %317, %363
  %365 = or i32 %364, 8912896
  store i32 %365, ptr %316, align 4, !tbaa !70
  %366 = getelementptr inbounds i32, ptr %316, i64 1
  br label %376

367:                                              ; preds = %359
  %368 = sext i32 %317 to i64
  %369 = getelementptr inbounds i32, ptr %5, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !70
  %371 = shl i32 %370, 19
  %372 = shl i32 %321, 6
  %373 = or i32 %372, %371
  %374 = or i32 %373, %317
  store i32 %374, ptr %316, align 4, !tbaa !70
  %375 = getelementptr inbounds i32, ptr %316, i64 1
  br label %376

376:                                              ; preds = %320, %362, %367, %331, %315
  %377 = phi ptr [ %358, %331 ], [ %366, %362 ], [ %375, %367 ], [ %316, %320 ], [ %316, %315 ]
  %378 = icmp eq i32 %318, 7
  br i1 %378, label %435, label %379, !prof !144

379:                                              ; preds = %376
  %380 = add nsw i32 %317, -7
  %381 = load i64, ptr %296, align 8, !tbaa !66
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %382
  %384 = load i64, ptr %383, align 8, !tbaa !66
  %385 = and i64 %384, %381
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %435, label %387, !prof !145

387:                                              ; preds = %379
  %388 = and i32 %317, -8
  %389 = icmp eq i32 %388, 56
  br i1 %389, label %390, label %418, !prof !146

390:                                              ; preds = %387
  %391 = zext nneg i32 %317 to i64
  %392 = getelementptr inbounds i32, ptr %5, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !70
  %394 = shl i32 %393, 19
  %395 = shl nuw nsw i32 %380, 6
  %396 = or disjoint i32 %394, %395
  %397 = or disjoint i32 %396, %317
  %398 = or disjoint i32 %397, 40960
  store i32 %398, ptr %377, align 4, !tbaa !70
  %399 = getelementptr inbounds i32, ptr %377, i64 1
  %400 = load i32, ptr %392, align 4, !tbaa !70
  %401 = shl i32 %400, 19
  %402 = or disjoint i32 %401, %395
  %403 = or disjoint i32 %402, %317
  %404 = or disjoint i32 %403, 32768
  store i32 %404, ptr %399, align 4, !tbaa !70
  %405 = getelementptr inbounds i32, ptr %377, i64 2
  %406 = load i32, ptr %392, align 4, !tbaa !70
  %407 = shl i32 %406, 19
  %408 = or disjoint i32 %407, %395
  %409 = or disjoint i32 %408, %317
  %410 = or disjoint i32 %409, 49152
  store i32 %410, ptr %405, align 4, !tbaa !70
  %411 = getelementptr inbounds i32, ptr %377, i64 3
  %412 = load i32, ptr %392, align 4, !tbaa !70
  %413 = shl i32 %412, 19
  %414 = or disjoint i32 %413, %395
  %415 = or disjoint i32 %414, %317
  %416 = or disjoint i32 %415, 16384
  store i32 %416, ptr %411, align 4, !tbaa !70
  %417 = getelementptr inbounds i32, ptr %377, i64 4
  br label %435

418:                                              ; preds = %387
  %419 = load i32, ptr %152, align 8, !tbaa !123
  %420 = icmp eq i32 %317, %419
  br i1 %420, label %421, label %426, !prof !147

421:                                              ; preds = %418
  %422 = shl i32 %380, 6
  %423 = or i32 %317, %422
  %424 = or i32 %423, 8912896
  store i32 %424, ptr %377, align 4, !tbaa !70
  %425 = getelementptr inbounds i32, ptr %377, i64 1
  br label %435

426:                                              ; preds = %418
  %427 = sext i32 %317 to i64
  %428 = getelementptr inbounds i32, ptr %5, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !70
  %430 = shl i32 %429, 19
  %431 = shl i32 %380, 6
  %432 = or i32 %431, %430
  %433 = or i32 %432, %317
  store i32 %433, ptr %377, align 4, !tbaa !70
  %434 = getelementptr inbounds i32, ptr %377, i64 1
  br label %435

435:                                              ; preds = %379, %421, %426, %390, %376
  %436 = phi ptr [ %417, %390 ], [ %425, %421 ], [ %434, %426 ], [ %377, %379 ], [ %377, %376 ]
  %437 = load i64, ptr %3, align 8, !tbaa !66
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %315, !prof !148, !llvm.loop !149

439:                                              ; preds = %291, %435, %169, %311
  %440 = phi ptr [ %145, %311 ], [ %145, %169 ], [ %436, %435 ], [ %292, %291 ]
  %441 = load i32, ptr %6, align 4, !tbaa !64
  %442 = icmp eq i32 %441, 0
  %443 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %444 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %445 = select i1 %442, ptr %443, ptr %444, !prof !112
  %446 = load i64, ptr %445, align 8, !tbaa !66
  store i64 %446, ptr %3, align 8, !tbaa !66
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %474, label %452, !prof !150

448:                                              ; preds = %462, %452
  %449 = phi ptr [ %453, %452 ], [ %471, %462 ]
  %450 = load i64, ptr %3, align 8, !tbaa !66
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %474, label %452, !prof !151, !llvm.loop !152

452:                                              ; preds = %439, %448
  %453 = phi ptr [ %449, %448 ], [ %440, %439 ]
  %454 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %455
  %457 = load i64, ptr %456, align 8, !tbaa !66
  %458 = and i64 %457, %13
  store i64 %458, ptr %4, align 8, !tbaa !66
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %448, label %460, !prof !153

460:                                              ; preds = %452
  %461 = shl i32 %454, 6
  br label %462

462:                                              ; preds = %460, %462
  %463 = phi ptr [ %453, %460 ], [ %471, %462 ]
  %464 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, ptr %5, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !70
  %468 = shl i32 %467, 19
  %469 = or i32 %461, %468
  %470 = or i32 %469, %464
  store i32 %470, ptr %463, align 4, !tbaa !70
  %471 = getelementptr inbounds i32, ptr %463, i64 1
  %472 = load i64, ptr %4, align 8, !tbaa !66
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %448, label %462, !prof !154, !llvm.loop !155

474:                                              ; preds = %448, %439
  %475 = phi ptr [ %440, %439 ], [ %449, %448 ]
  %476 = load i32, ptr %6, align 4, !tbaa !64
  %477 = icmp eq i32 %476, 0
  %478 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %479 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %480 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %481 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %482 = select i1 %477, ptr %479, ptr %481, !prof !112
  %483 = select i1 %477, ptr %478, ptr %480, !prof !112
  %484 = load i64, ptr %483, align 8, !tbaa !66
  %485 = load i64, ptr %482, align 8, !tbaa !66
  %486 = or i64 %485, %484
  store i64 %486, ptr %3, align 8, !tbaa !66
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %512, label %492, !prof !156

488:                                              ; preds = %500, %492
  %489 = phi ptr [ %493, %492 ], [ %509, %500 ]
  %490 = load i64, ptr %3, align 8, !tbaa !66
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %512, label %492, !prof !157, !llvm.loop !158

492:                                              ; preds = %474, %488
  %493 = phi ptr [ %489, %488 ], [ %475, %474 ]
  %494 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %495 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %494)
  %496 = and i64 %495, %13
  store i64 %496, ptr %4, align 8, !tbaa !66
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %488, label %498, !prof !159

498:                                              ; preds = %492
  %499 = shl i32 %494, 6
  br label %500

500:                                              ; preds = %498, %500
  %501 = phi ptr [ %493, %498 ], [ %509, %500 ]
  %502 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, ptr %5, i64 %503
  %505 = load i32, ptr %504, align 4, !tbaa !70
  %506 = shl i32 %505, 19
  %507 = or i32 %499, %506
  %508 = or i32 %507, %502
  store i32 %508, ptr %501, align 4, !tbaa !70
  %509 = getelementptr inbounds i32, ptr %501, i64 1
  %510 = load i64, ptr %4, align 8, !tbaa !66
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %488, label %500, !prof !160, !llvm.loop !161

512:                                              ; preds = %488, %474
  %513 = phi ptr [ %475, %474 ], [ %489, %488 ]
  %514 = load i32, ptr %6, align 4, !tbaa !64
  %515 = icmp eq i32 %514, 0
  %516 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %517 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %518 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %519 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %520 = select i1 %515, ptr %517, ptr %519, !prof !112
  %521 = select i1 %515, ptr %516, ptr %518, !prof !112
  %522 = load i64, ptr %521, align 8, !tbaa !66
  %523 = load i64, ptr %520, align 8, !tbaa !66
  %524 = or i64 %523, %522
  store i64 %524, ptr %3, align 8, !tbaa !66
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %550, label %530, !prof !156

526:                                              ; preds = %538, %530
  %527 = phi ptr [ %531, %530 ], [ %547, %538 ]
  %528 = load i64, ptr %3, align 8, !tbaa !66
  %529 = icmp eq i64 %528, 0
  br i1 %529, label %550, label %530, !prof !162, !llvm.loop !163

530:                                              ; preds = %512, %526
  %531 = phi ptr [ %527, %526 ], [ %513, %512 ]
  %532 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %533 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %532)
  %534 = and i64 %533, %13
  store i64 %534, ptr %4, align 8, !tbaa !66
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %526, label %536, !prof !164

536:                                              ; preds = %530
  %537 = shl i32 %532, 6
  br label %538

538:                                              ; preds = %536, %538
  %539 = phi ptr [ %531, %536 ], [ %547, %538 ]
  %540 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, ptr %5, i64 %541
  %543 = load i32, ptr %542, align 4, !tbaa !70
  %544 = shl i32 %543, 19
  %545 = or i32 %537, %544
  %546 = or i32 %545, %540
  store i32 %546, ptr %539, align 4, !tbaa !70
  %547 = getelementptr inbounds i32, ptr %539, i64 1
  %548 = load i64, ptr %4, align 8, !tbaa !66
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %526, label %538, !prof !165, !llvm.loop !166

550:                                              ; preds = %526, %512
  %551 = phi ptr [ %513, %512 ], [ %527, %526 ]
  %552 = load i32, ptr %6, align 4, !tbaa !64
  %553 = icmp eq i32 %552, 0
  %554 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %555 = load i32, ptr %554, align 4, !tbaa !97
  br i1 %553, label %585, label %556, !prof !112

556:                                              ; preds = %550
  %557 = and i32 %555, 2
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %568, label %559, !prof !167

559:                                              ; preds = %556
  %560 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 1)
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %568, !prof !168

562:                                              ; preds = %559
  %563 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %564 = load i32, ptr %563, align 8, !tbaa !100
  %565 = shl i32 %564, 6
  %566 = or i32 %565, 6881342
  store i32 %566, ptr %551, align 4, !tbaa !70
  %567 = getelementptr inbounds i32, ptr %551, i64 1
  br label %568

568:                                              ; preds = %559, %562, %556
  %569 = phi ptr [ %551, %559 ], [ %567, %562 ], [ %551, %556 ]
  %570 = load i32, ptr %554, align 4, !tbaa !97
  %571 = and i32 %570, 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %582, label %573, !prof !169

573:                                              ; preds = %568
  %574 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 2)
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %582, !prof !170

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %578 = load i32, ptr %577, align 8, !tbaa !100
  %579 = shl i32 %578, 6
  %580 = or i32 %579, 6946874
  store i32 %580, ptr %569, align 4, !tbaa !70
  %581 = getelementptr inbounds i32, ptr %569, i64 1
  br label %582

582:                                              ; preds = %573, %576, %568
  %583 = phi ptr [ %569, %573 ], [ %581, %576 ], [ %569, %568 ]
  %584 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %614

585:                                              ; preds = %550
  %586 = and i32 %555, 8
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %597, label %588, !prof !171

588:                                              ; preds = %585
  %589 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 3)
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %597, !prof !172

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %593 = load i32, ptr %592, align 4, !tbaa !105
  %594 = shl i32 %593, 6
  %595 = or i32 %594, 7012358
  store i32 %595, ptr %551, align 4, !tbaa !70
  %596 = getelementptr inbounds i32, ptr %551, i64 1
  br label %597

597:                                              ; preds = %588, %591, %585
  %598 = phi ptr [ %551, %588 ], [ %596, %591 ], [ %551, %585 ]
  %599 = load i32, ptr %554, align 4, !tbaa !97
  %600 = and i32 %599, 16
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %611, label %602, !prof !173

602:                                              ; preds = %597
  %603 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef %0, i32 noundef 4)
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %611, !prof !174

605:                                              ; preds = %602
  %606 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %607 = load i32, ptr %606, align 4, !tbaa !105
  %608 = shl i32 %607, 6
  %609 = or i32 %608, 7077890
  store i32 %609, ptr %598, align 4, !tbaa !70
  %610 = getelementptr inbounds i32, ptr %598, i64 1
  br label %611

611:                                              ; preds = %602, %605, %597
  %612 = phi ptr [ %598, %602 ], [ %610, %605 ], [ %598, %597 ]
  %613 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %614

614:                                              ; preds = %611, %582
  %615 = phi ptr [ %584, %582 ], [ %613, %611 ]
  %616 = phi ptr [ %583, %582 ], [ %612, %611 ]
  %617 = load i32, ptr %615, align 4, !tbaa !70
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %618
  %620 = load i64, ptr %619, align 8, !tbaa !66
  %621 = and i64 %620, %13
  store i64 %621, ptr %3, align 8, !tbaa !66
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %637, label %623, !prof !156

623:                                              ; preds = %614
  %624 = shl i32 %617, 6
  br label %625

625:                                              ; preds = %623, %625
  %626 = phi ptr [ %616, %623 ], [ %634, %625 ]
  %627 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, ptr %5, i64 %628
  %630 = load i32, ptr %629, align 4, !tbaa !70
  %631 = shl i32 %630, 19
  %632 = or i32 %624, %631
  %633 = or i32 %632, %627
  store i32 %633, ptr %626, align 4, !tbaa !70
  %634 = getelementptr inbounds i32, ptr %626, i64 1
  %635 = load i64, ptr %3, align 8, !tbaa !66
  %636 = icmp eq i64 %635, 0
  br i1 %636, label %637, label %625, !prof !175, !llvm.loop !176

637:                                              ; preds = %625, %614
  %638 = phi ptr [ %616, %614 ], [ %634, %625 ]
  %639 = ptrtoint ptr %638 to i64
  %640 = ptrtoint ptr %1 to i64
  %641 = sub i64 %639, %640
  %642 = lshr exact i64 %641, 2
  %643 = trunc i64 %642 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %643
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !177 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !58
  %11 = xor i64 %10, -1
  br i1 %8, label %142, label %12, !prof !178

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !124
  %15 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %16 = load i64, ptr %15, align 8, !tbaa !66
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !66
  %18 = and i64 %17, %16
  %19 = lshr i64 %18, 8
  %20 = and i64 %19, %11
  store i64 %20, ptr %3, align 8, !tbaa !66
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %22, !prof !179

22:                                               ; preds = %12, %22
  %23 = phi ptr [ %29, %22 ], [ %1, %12 ]
  %24 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %25 = shl i32 %24, 6
  %26 = add i32 %25, 512
  %27 = or i32 %24, %26
  %28 = or i32 %27, 6852608
  store i32 %28, ptr %23, align 4, !tbaa !70
  %29 = getelementptr inbounds i32, ptr %23, i64 1
  %30 = load i64, ptr %3, align 8, !tbaa !66
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %22, !prof !180, !llvm.loop !181

32:                                               ; preds = %22, %12
  %33 = phi ptr [ %1, %12 ], [ %29, %22 ]
  %34 = load i64, ptr %15, align 8, !tbaa !66
  %35 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !66
  %36 = xor i64 %35, -1
  %37 = and i64 %34, %36
  %38 = lshr i64 %37, 7
  %39 = load i64, ptr @FileMask, align 16, !tbaa !66
  %40 = xor i64 %39, -1
  %41 = and i64 %34, %40
  %42 = lshr i64 %41, 9
  %43 = or i64 %42, %38
  store i64 %43, ptr %3, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !123
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %52, !prof !182

47:                                               ; preds = %32
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !66
  %51 = or i64 %50, %14
  br label %52

52:                                               ; preds = %32, %47
  %53 = phi i64 [ %51, %47 ], [ %14, %32 ]
  %54 = and i64 %53, %43
  store i64 %54, ptr %3, align 8, !tbaa !66
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %274, label %56, !prof !183

56:                                               ; preds = %52, %138
  %57 = phi ptr [ %139, %138 ], [ %33, %52 ]
  %58 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %59 = and i32 %58, 7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %98, label %61, !prof !184

61:                                               ; preds = %56
  %62 = add nsw i32 %58, 7
  %63 = load i64, ptr %15, align 8, !tbaa !66
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !66
  %67 = and i64 %66, %63
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %98, label %69, !prof !185

69:                                               ; preds = %61
  %70 = icmp ult i32 %58, 8
  br i1 %70, label %71, label %80, !prof !186

71:                                               ; preds = %69
  %72 = zext nneg i32 %58 to i64
  %73 = getelementptr inbounds i32, ptr %5, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !70
  %75 = shl i32 %74, 19
  %76 = shl nuw nsw i32 %62, 6
  %77 = or disjoint i32 %75, %76
  %78 = or disjoint i32 %77, %58
  %79 = or disjoint i32 %78, 36864
  br label %95

80:                                               ; preds = %69
  %81 = load i32, ptr %44, align 8, !tbaa !123
  %82 = icmp eq i32 %58, %81
  br i1 %82, label %83, label %87, !prof !187

83:                                               ; preds = %80
  %84 = shl i32 %62, 6
  %85 = or i32 %58, %84
  %86 = or i32 %85, 9437184
  br label %95

87:                                               ; preds = %80
  %88 = sext i32 %58 to i64
  %89 = getelementptr inbounds i32, ptr %5, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !70
  %91 = shl i32 %90, 19
  %92 = shl i32 %62, 6
  %93 = or i32 %92, %91
  %94 = or i32 %93, %58
  br label %95

95:                                               ; preds = %71, %87, %83
  %96 = phi i32 [ %86, %83 ], [ %94, %87 ], [ %79, %71 ]
  store i32 %96, ptr %57, align 4, !tbaa !70
  %97 = getelementptr inbounds i32, ptr %57, i64 1
  br label %98

98:                                               ; preds = %95, %61, %56
  %99 = phi ptr [ %57, %61 ], [ %57, %56 ], [ %97, %95 ]
  %100 = icmp eq i32 %59, 7
  br i1 %100, label %138, label %101, !prof !188

101:                                              ; preds = %98
  %102 = add nsw i32 %58, 9
  %103 = load i64, ptr %15, align 8, !tbaa !66
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !66
  %107 = and i64 %106, %103
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %138, label %109, !prof !189

109:                                              ; preds = %101
  %110 = icmp ult i32 %58, 8
  br i1 %110, label %111, label %120, !prof !190

111:                                              ; preds = %109
  %112 = zext nneg i32 %58 to i64
  %113 = getelementptr inbounds i32, ptr %5, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !70
  %115 = shl i32 %114, 19
  %116 = shl nuw nsw i32 %102, 6
  %117 = or disjoint i32 %115, %116
  %118 = or disjoint i32 %117, %58
  %119 = or disjoint i32 %118, 36864
  br label %135

120:                                              ; preds = %109
  %121 = load i32, ptr %44, align 8, !tbaa !123
  %122 = icmp eq i32 %58, %121
  br i1 %122, label %123, label %127, !prof !191

123:                                              ; preds = %120
  %124 = shl i32 %102, 6
  %125 = or i32 %58, %124
  %126 = or i32 %125, 9437184
  br label %135

127:                                              ; preds = %120
  %128 = sext i32 %58 to i64
  %129 = getelementptr inbounds i32, ptr %5, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !70
  %131 = shl i32 %130, 19
  %132 = shl i32 %102, 6
  %133 = or i32 %132, %131
  %134 = or i32 %133, %58
  br label %135

135:                                              ; preds = %111, %127, %123
  %136 = phi i32 [ %126, %123 ], [ %134, %127 ], [ %119, %111 ]
  store i32 %136, ptr %99, align 4, !tbaa !70
  %137 = getelementptr inbounds i32, ptr %99, i64 1
  br label %138

138:                                              ; preds = %135, %101, %98
  %139 = phi ptr [ %99, %101 ], [ %99, %98 ], [ %137, %135 ]
  %140 = load i64, ptr %3, align 8, !tbaa !66
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %274, label %56, !prof !192, !llvm.loop !193

142:                                              ; preds = %2
  %143 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %144 = load i64, ptr %143, align 8, !tbaa !137
  %145 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %146 = load i64, ptr %145, align 8, !tbaa !66
  %147 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !66
  %148 = and i64 %147, %146
  %149 = shl i64 %148, 8
  %150 = and i64 %149, %11
  store i64 %150, ptr %3, align 8, !tbaa !66
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %162, label %152, !prof !194

152:                                              ; preds = %142, %152
  %153 = phi ptr [ %159, %152 ], [ %1, %142 ]
  %154 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %155 = shl i32 %154, 6
  %156 = add i32 %155, -512
  %157 = or i32 %154, %156
  %158 = or i32 %157, 6856704
  store i32 %158, ptr %153, align 4, !tbaa !70
  %159 = getelementptr inbounds i32, ptr %153, i64 1
  %160 = load i64, ptr %3, align 8, !tbaa !66
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %152, !prof !195, !llvm.loop !196

162:                                              ; preds = %152, %142
  %163 = phi ptr [ %1, %142 ], [ %159, %152 ]
  %164 = load i64, ptr %145, align 8, !tbaa !66
  %165 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !66
  %166 = xor i64 %165, -1
  %167 = and i64 %164, %166
  %168 = shl i64 %167, 9
  %169 = load i64, ptr @FileMask, align 16, !tbaa !66
  %170 = xor i64 %169, -1
  %171 = and i64 %164, %170
  %172 = shl i64 %171, 7
  %173 = or i64 %172, %168
  store i64 %173, ptr %3, align 8, !tbaa !66
  %174 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %175 = load i32, ptr %174, align 8, !tbaa !123
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %182, !prof !197

177:                                              ; preds = %162
  %178 = zext nneg i32 %175 to i64
  %179 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %178
  %180 = load i64, ptr %179, align 8, !tbaa !66
  %181 = or i64 %180, %144
  br label %182

182:                                              ; preds = %162, %177
  %183 = phi i64 [ %181, %177 ], [ %144, %162 ]
  %184 = and i64 %183, %173
  store i64 %184, ptr %3, align 8, !tbaa !66
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %274, label %186, !prof !198

186:                                              ; preds = %182, %270
  %187 = phi ptr [ %271, %270 ], [ %163, %182 ]
  %188 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %189 = and i32 %188, 7
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %229, label %191, !prof !199

191:                                              ; preds = %186
  %192 = add nsw i32 %188, -9
  %193 = load i64, ptr %145, align 8, !tbaa !66
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !66
  %197 = and i64 %196, %193
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %229, label %199, !prof !200

199:                                              ; preds = %191
  %200 = and i32 %188, -8
  %201 = icmp eq i32 %200, 56
  br i1 %201, label %202, label %211, !prof !201

202:                                              ; preds = %199
  %203 = zext nneg i32 %188 to i64
  %204 = getelementptr inbounds i32, ptr %5, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !70
  %206 = shl i32 %205, 19
  %207 = shl nuw nsw i32 %192, 6
  %208 = or disjoint i32 %206, %207
  %209 = or disjoint i32 %208, %188
  %210 = or disjoint i32 %209, 40960
  br label %226

211:                                              ; preds = %199
  %212 = load i32, ptr %174, align 8, !tbaa !123
  %213 = icmp eq i32 %188, %212
  br i1 %213, label %214, label %218, !prof !202

214:                                              ; preds = %211
  %215 = shl i32 %192, 6
  %216 = or i32 %188, %215
  %217 = or i32 %216, 8912896
  br label %226

218:                                              ; preds = %211
  %219 = sext i32 %188 to i64
  %220 = getelementptr inbounds i32, ptr %5, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !70
  %222 = shl i32 %221, 19
  %223 = shl i32 %192, 6
  %224 = or i32 %223, %222
  %225 = or i32 %224, %188
  br label %226

226:                                              ; preds = %202, %218, %214
  %227 = phi i32 [ %217, %214 ], [ %225, %218 ], [ %210, %202 ]
  store i32 %227, ptr %187, align 4, !tbaa !70
  %228 = getelementptr inbounds i32, ptr %187, i64 1
  br label %229

229:                                              ; preds = %226, %191, %186
  %230 = phi ptr [ %187, %191 ], [ %187, %186 ], [ %228, %226 ]
  %231 = icmp eq i32 %189, 7
  br i1 %231, label %270, label %232, !prof !203

232:                                              ; preds = %229
  %233 = add nsw i32 %188, -7
  %234 = load i64, ptr %145, align 8, !tbaa !66
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !66
  %238 = and i64 %237, %234
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %270, label %240, !prof !204

240:                                              ; preds = %232
  %241 = and i32 %188, -8
  %242 = icmp eq i32 %241, 56
  br i1 %242, label %243, label %252, !prof !205

243:                                              ; preds = %240
  %244 = zext nneg i32 %188 to i64
  %245 = getelementptr inbounds i32, ptr %5, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !70
  %247 = shl i32 %246, 19
  %248 = shl nuw nsw i32 %233, 6
  %249 = or disjoint i32 %247, %248
  %250 = or disjoint i32 %249, %188
  %251 = or disjoint i32 %250, 40960
  br label %267

252:                                              ; preds = %240
  %253 = load i32, ptr %174, align 8, !tbaa !123
  %254 = icmp eq i32 %188, %253
  br i1 %254, label %255, label %259, !prof !206

255:                                              ; preds = %252
  %256 = shl i32 %233, 6
  %257 = or i32 %188, %256
  %258 = or i32 %257, 8912896
  br label %267

259:                                              ; preds = %252
  %260 = sext i32 %188 to i64
  %261 = getelementptr inbounds i32, ptr %5, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !70
  %263 = shl i32 %262, 19
  %264 = shl i32 %233, 6
  %265 = or i32 %264, %263
  %266 = or i32 %265, %188
  br label %267

267:                                              ; preds = %243, %259, %255
  %268 = phi i32 [ %258, %255 ], [ %266, %259 ], [ %251, %243 ]
  store i32 %268, ptr %230, align 4, !tbaa !70
  %269 = getelementptr inbounds i32, ptr %230, i64 1
  br label %270

270:                                              ; preds = %267, %232, %229
  %271 = phi ptr [ %230, %232 ], [ %230, %229 ], [ %269, %267 ]
  %272 = load i64, ptr %3, align 8, !tbaa !66
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %186, !prof !207, !llvm.loop !208

274:                                              ; preds = %138, %270, %52, %182
  %275 = phi i64 [ %144, %182 ], [ %14, %52 ], [ %144, %270 ], [ %14, %138 ]
  %276 = phi ptr [ %163, %182 ], [ %33, %52 ], [ %271, %270 ], [ %139, %138 ]
  %277 = load i32, ptr %6, align 4, !tbaa !64
  %278 = icmp eq i32 %277, 0
  %279 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %280 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %281 = select i1 %278, ptr %280, ptr %279, !prof !178
  %282 = load i32, ptr %281, align 4, !tbaa !70
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %283
  %285 = load i64, ptr %284, align 8, !tbaa !66
  %286 = and i64 %285, %275
  store i64 %286, ptr %3, align 8, !tbaa !66
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %302, label %288, !prof !209

288:                                              ; preds = %274
  %289 = shl i32 %282, 6
  br label %290

290:                                              ; preds = %288, %290
  %291 = phi ptr [ %276, %288 ], [ %299, %290 ]
  %292 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, ptr %5, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !70
  %296 = shl i32 %295, 19
  %297 = or i32 %289, %296
  %298 = or i32 %297, %292
  store i32 %298, ptr %291, align 4, !tbaa !70
  %299 = getelementptr inbounds i32, ptr %291, i64 1
  %300 = load i64, ptr %3, align 8, !tbaa !66
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %290, !prof !210, !llvm.loop !211

302:                                              ; preds = %290, %274
  %303 = phi ptr [ %276, %274 ], [ %299, %290 ]
  %304 = load i32, ptr %6, align 4, !tbaa !64
  %305 = icmp eq i32 %304, 0
  %306 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %307 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %308 = select i1 %305, ptr %306, ptr %307, !prof !178
  %309 = load i64, ptr %308, align 8, !tbaa !66
  store i64 %309, ptr %3, align 8, !tbaa !66
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %337, label %315, !prof !212

311:                                              ; preds = %325, %315
  %312 = phi ptr [ %316, %315 ], [ %334, %325 ]
  %313 = load i64, ptr %3, align 8, !tbaa !66
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %337, label %315, !prof !213, !llvm.loop !214

315:                                              ; preds = %302, %311
  %316 = phi ptr [ %312, %311 ], [ %303, %302 ]
  %317 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !66
  %321 = and i64 %320, %275
  store i64 %321, ptr %4, align 8, !tbaa !66
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %311, label %323, !prof !215

323:                                              ; preds = %315
  %324 = shl i32 %317, 6
  br label %325

325:                                              ; preds = %323, %325
  %326 = phi ptr [ %316, %323 ], [ %334, %325 ]
  %327 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, ptr %5, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !70
  %331 = shl i32 %330, 19
  %332 = or i32 %324, %331
  %333 = or i32 %332, %327
  store i32 %333, ptr %326, align 4, !tbaa !70
  %334 = getelementptr inbounds i32, ptr %326, i64 1
  %335 = load i64, ptr %4, align 8, !tbaa !66
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %311, label %325, !prof !216, !llvm.loop !217

337:                                              ; preds = %311, %302
  %338 = phi ptr [ %303, %302 ], [ %312, %311 ]
  %339 = load i32, ptr %6, align 4, !tbaa !64
  %340 = icmp eq i32 %339, 0
  %341 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %342 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %343 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %344 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %345 = select i1 %340, ptr %342, ptr %344, !prof !178
  %346 = select i1 %340, ptr %341, ptr %343, !prof !178
  %347 = load i64, ptr %346, align 8, !tbaa !66
  %348 = load i64, ptr %345, align 8, !tbaa !66
  %349 = or i64 %348, %347
  store i64 %349, ptr %3, align 8, !tbaa !66
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %375, label %355, !prof !218

351:                                              ; preds = %363, %355
  %352 = phi ptr [ %356, %355 ], [ %372, %363 ]
  %353 = load i64, ptr %3, align 8, !tbaa !66
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %375, label %355, !prof !219, !llvm.loop !220

355:                                              ; preds = %337, %351
  %356 = phi ptr [ %352, %351 ], [ %338, %337 ]
  %357 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %358 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %357)
  %359 = and i64 %358, %275
  store i64 %359, ptr %4, align 8, !tbaa !66
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %351, label %361, !prof !221

361:                                              ; preds = %355
  %362 = shl i32 %357, 6
  br label %363

363:                                              ; preds = %361, %363
  %364 = phi ptr [ %356, %361 ], [ %372, %363 ]
  %365 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, ptr %5, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !70
  %369 = shl i32 %368, 19
  %370 = or i32 %362, %369
  %371 = or i32 %370, %365
  store i32 %371, ptr %364, align 4, !tbaa !70
  %372 = getelementptr inbounds i32, ptr %364, i64 1
  %373 = load i64, ptr %4, align 8, !tbaa !66
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %351, label %363, !prof !222, !llvm.loop !223

375:                                              ; preds = %351, %337
  %376 = phi ptr [ %338, %337 ], [ %352, %351 ]
  %377 = load i32, ptr %6, align 4, !tbaa !64
  %378 = icmp eq i32 %377, 0
  %379 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %380 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %381 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %382 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %383 = select i1 %378, ptr %380, ptr %382, !prof !178
  %384 = select i1 %378, ptr %379, ptr %381, !prof !178
  %385 = load i64, ptr %384, align 8, !tbaa !66
  %386 = load i64, ptr %383, align 8, !tbaa !66
  %387 = or i64 %386, %385
  store i64 %387, ptr %3, align 8, !tbaa !66
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %413, label %393, !prof !218

389:                                              ; preds = %401, %393
  %390 = phi ptr [ %394, %393 ], [ %410, %401 ]
  %391 = load i64, ptr %3, align 8, !tbaa !66
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %413, label %393, !prof !224, !llvm.loop !225

393:                                              ; preds = %375, %389
  %394 = phi ptr [ %390, %389 ], [ %376, %375 ]
  %395 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %396 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %395)
  %397 = and i64 %396, %275
  store i64 %397, ptr %4, align 8, !tbaa !66
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %389, label %399, !prof !226

399:                                              ; preds = %393
  %400 = shl i32 %395, 6
  br label %401

401:                                              ; preds = %399, %401
  %402 = phi ptr [ %394, %399 ], [ %410, %401 ]
  %403 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, ptr %5, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !70
  %407 = shl i32 %406, 19
  %408 = or i32 %400, %407
  %409 = or i32 %408, %403
  store i32 %409, ptr %402, align 4, !tbaa !70
  %410 = getelementptr inbounds i32, ptr %402, i64 1
  %411 = load i64, ptr %4, align 8, !tbaa !66
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %389, label %401, !prof !227, !llvm.loop !228

413:                                              ; preds = %389, %375
  %414 = phi ptr [ %376, %375 ], [ %390, %389 ]
  %415 = ptrtoint ptr %414 to i64
  %416 = ptrtoint ptr %1 to i64
  %417 = sub i64 %415, %416
  %418 = lshr exact i64 %417, 2
  %419 = trunc i64 %418 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %419
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !229 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %13 = select i1 %8, ptr %12, ptr %10, !prof !230
  %14 = select i1 %8, ptr %11, ptr %9, !prof !230
  %15 = load i32, ptr %14, align 4, !tbaa !70
  %16 = load i64, ptr %13, align 8, !tbaa !66
  %17 = xor i64 %16, -1
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %18
  %22 = load i64, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %18
  %24 = load i64, ptr %23, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %27 = select i1 %8, ptr %25, ptr %26, !prof !230
  %28 = load i64, ptr %27, align 8, !tbaa !66
  store i64 %28, ptr %3, align 8, !tbaa !66
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %60, label %30, !prof !231

30:                                               ; preds = %2
  %31 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %18
  br label %36

32:                                               ; preds = %48, %36
  %33 = phi ptr [ %37, %36 ], [ %57, %48 ]
  %34 = load i64, ptr %3, align 8, !tbaa !66
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %60, label %36, !prof !232, !llvm.loop !233

36:                                               ; preds = %30, %32
  %37 = phi ptr [ %1, %30 ], [ %33, %32 ]
  %38 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !66
  store i64 %41, ptr %4, align 8, !tbaa !66
  %42 = load i64, ptr %31, align 8, !tbaa !66
  %43 = and i64 %42, %17
  %44 = and i64 %43, %41
  store i64 %44, ptr %4, align 8, !tbaa !66
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %32, label %46, !prof !234

46:                                               ; preds = %36
  %47 = shl i32 %38, 6
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi ptr [ %37, %46 ], [ %57, %48 ]
  %50 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %5, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !70
  %54 = shl i32 %53, 19
  %55 = or i32 %47, %54
  %56 = or i32 %55, %50
  store i32 %56, ptr %49, align 4, !tbaa !70
  %57 = getelementptr inbounds i32, ptr %49, i64 1
  %58 = load i64, ptr %4, align 8, !tbaa !66
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %32, label %48, !prof !235, !llvm.loop !236

60:                                               ; preds = %32, %2
  %61 = phi ptr [ %1, %2 ], [ %33, %32 ]
  %62 = load i32, ptr %6, align 4, !tbaa !64
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !58
  %66 = xor i64 %65, -1
  br i1 %63, label %71, label %67, !prof !230

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %69 = load i64, ptr %68, align 8, !tbaa !66
  %70 = lshr i64 %69, 8
  br label %75

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %73 = load i64, ptr %72, align 8, !tbaa !66
  %74 = shl i64 %73, 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i64 [ %70, %67 ], [ %74, %71 ]
  %77 = phi ptr [ @PawnAttacksBlack, %67 ], [ @PawnAttacksWhite, %71 ]
  %78 = and i64 %76, %66
  store i64 %78, ptr %3, align 8, !tbaa !66
  %79 = getelementptr inbounds [64 x i64], ptr %77, i64 0, i64 %18
  %80 = load i64, ptr %79, align 8, !tbaa !66
  %81 = and i64 %80, %78
  store i64 %81, ptr %3, align 8, !tbaa !66
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %96, label %83, !prof !237

83:                                               ; preds = %75, %83
  %84 = phi ptr [ %93, %83 ], [ %61, %75 ]
  %85 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %86 = load i32, ptr %6, align 4, !tbaa !64
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 67108856, i32 8, !prof !238
  %89 = add i32 %88, %85
  %90 = shl i32 %89, 6
  %91 = or i32 %85, %90
  %92 = or i32 %91, 6815744
  store i32 %92, ptr %84, align 4, !tbaa !70
  %93 = getelementptr inbounds i32, ptr %84, i64 1
  %94 = load i64, ptr %3, align 8, !tbaa !66
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %83, !prof !239, !llvm.loop !240

96:                                               ; preds = %83, %75
  %97 = phi ptr [ %61, %75 ], [ %93, %83 ]
  %98 = load i32, ptr %6, align 4, !tbaa !64
  %99 = icmp eq i32 %98, 0
  %100 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %103 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %104 = select i1 %99, ptr %101, ptr %103, !prof !230
  %105 = select i1 %99, ptr %100, ptr %102, !prof !230
  %106 = load i64, ptr %105, align 8, !tbaa !66
  %107 = load i64, ptr %104, align 8, !tbaa !66
  %108 = or i64 %107, %106
  store i64 %108, ptr %3, align 8, !tbaa !66
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %140, label %114, !prof !241

110:                                              ; preds = %136, %114
  %111 = phi ptr [ %115, %114 ], [ %137, %136 ]
  %112 = load i64, ptr %3, align 8, !tbaa !66
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %140, label %114, !prof !242, !llvm.loop !243

114:                                              ; preds = %96, %110
  %115 = phi ptr [ %111, %110 ], [ %97, %96 ]
  %116 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %117 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %116)
  %118 = and i64 %22, %117
  %119 = and i64 %118, %17
  store i64 %119, ptr %4, align 8, !tbaa !66
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %110, label %121, !prof !244

121:                                              ; preds = %114, %136
  %122 = phi ptr [ %137, %136 ], [ %115, %114 ]
  %123 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %124 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %123)
  %125 = and i64 %124, %24
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %136, label %127, !prof !245

127:                                              ; preds = %121
  %128 = shl i32 %116, 6
  %129 = sext i32 %123 to i64
  %130 = getelementptr inbounds i32, ptr %5, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !70
  %132 = shl i32 %131, 19
  %133 = or i32 %128, %132
  %134 = or i32 %133, %123
  store i32 %134, ptr %122, align 4, !tbaa !70
  %135 = getelementptr inbounds i32, ptr %122, i64 1
  br label %136

136:                                              ; preds = %127, %121
  %137 = phi ptr [ %135, %127 ], [ %122, %121 ]
  %138 = load i64, ptr %4, align 8, !tbaa !66
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %110, label %121, !prof !246, !llvm.loop !247

140:                                              ; preds = %110, %96
  %141 = phi ptr [ %97, %96 ], [ %111, %110 ]
  %142 = load i32, ptr %6, align 4, !tbaa !64
  %143 = icmp eq i32 %142, 0
  %144 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %145 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %146 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %147 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %148 = select i1 %143, ptr %145, ptr %147, !prof !230
  %149 = select i1 %143, ptr %144, ptr %146, !prof !230
  %150 = load i64, ptr %149, align 8, !tbaa !66
  %151 = load i64, ptr %148, align 8, !tbaa !66
  %152 = or i64 %151, %150
  store i64 %152, ptr %3, align 8, !tbaa !66
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %184, label %158, !prof !241

154:                                              ; preds = %180, %158
  %155 = phi ptr [ %159, %158 ], [ %181, %180 ]
  %156 = load i64, ptr %3, align 8, !tbaa !66
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %184, label %158, !prof !248, !llvm.loop !249

158:                                              ; preds = %140, %154
  %159 = phi ptr [ %155, %154 ], [ %141, %140 ]
  %160 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3)
  %161 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %160)
  %162 = and i64 %20, %161
  %163 = and i64 %162, %17
  store i64 %163, ptr %4, align 8, !tbaa !66
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %154, label %165, !prof !250

165:                                              ; preds = %158, %180
  %166 = phi ptr [ %181, %180 ], [ %159, %158 ]
  %167 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %168 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %167)
  %169 = and i64 %168, %24
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %180, label %171, !prof !251

171:                                              ; preds = %165
  %172 = shl i32 %160, 6
  %173 = sext i32 %167 to i64
  %174 = getelementptr inbounds i32, ptr %5, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !70
  %176 = shl i32 %175, 19
  %177 = or i32 %172, %176
  %178 = or i32 %177, %167
  store i32 %178, ptr %166, align 4, !tbaa !70
  %179 = getelementptr inbounds i32, ptr %166, i64 1
  br label %180

180:                                              ; preds = %171, %165
  %181 = phi ptr [ %179, %171 ], [ %166, %165 ]
  %182 = load i64, ptr %4, align 8, !tbaa !66
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %154, label %165, !prof !252, !llvm.loop !253

184:                                              ; preds = %154, %140
  %185 = phi ptr [ %141, %140 ], [ %155, %154 ]
  %186 = ptrtoint ptr %185 to i64
  %187 = ptrtoint ptr %1 to i64
  %188 = sub i64 %186, %187
  %189 = lshr exact i64 %188, 2
  %190 = trunc i64 %189 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %190
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !254 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %11 = select i1 %8, ptr %10, ptr %9, !prof !255
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = tail call noundef i32 @_Z4ranki(i32 noundef %12)
  %14 = add i32 %2, -11
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %19, label %16, !prof !256

16:                                               ; preds = %3
  %17 = add i32 %2, -7
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %24, !prof !257

19:                                               ; preds = %16, %3
  %20 = phi ptr [ @BishopMask, %3 ], [ @RookMask, %16 ]
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds [64 x i64], ptr %20, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !66
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i64 [ -1, %16 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !58
  %28 = xor i64 %27, -1
  %29 = and i64 %25, %28
  %30 = load i32, ptr %6, align 4, !tbaa !64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %68, label %32, !prof !255

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %34 = load i64, ptr %33, align 8, !tbaa !66
  %35 = lshr i64 %34, 8
  %36 = and i64 %35, %28
  store i64 %36, ptr %4, align 8, !tbaa !66
  %37 = load i64, ptr @RankMask, align 16, !tbaa !66
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  store i64 %39, ptr %4, align 8, !tbaa !66
  %40 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !66
  %41 = and i64 %40, %34
  %42 = lshr i64 %41, 16
  %43 = lshr i64 %27, 8
  %44 = or i64 %43, %27
  %45 = xor i64 %44, -1
  %46 = and i64 %42, %45
  store i64 %46, ptr %5, align 8, !tbaa !66
  %47 = or i64 %46, %39
  %48 = and i64 %47, %25
  store i64 %48, ptr %4, align 8, !tbaa !66
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %104, label %50, !prof !258

50:                                               ; preds = %32, %50
  %51 = phi ptr [ %65, %50 ], [ %1, %32 ]
  %52 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %53 = load i64, ptr %33, align 8, !tbaa !66
  %54 = add nsw i32 %52, 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !66
  %58 = and i64 %57, %53
  %59 = icmp eq i64 %58, 0
  %60 = add nsw i32 %52, 16
  %61 = select i1 %59, i32 %60, i32 %54, !prof !259
  %62 = shl i32 %61, 6
  %63 = or i32 %52, %62
  %64 = or i32 %63, 6815744
  store i32 %64, ptr %51, align 4, !tbaa !70
  %65 = getelementptr inbounds i32, ptr %51, i64 1
  %66 = load i64, ptr %4, align 8, !tbaa !66
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %104, label %50, !prof !260, !llvm.loop !261

68:                                               ; preds = %24
  %69 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %70 = load i64, ptr %69, align 8, !tbaa !66
  %71 = shl i64 %70, 8
  %72 = and i64 %71, %28
  store i64 %72, ptr %4, align 8, !tbaa !66
  %73 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 7), align 8, !tbaa !66
  %74 = xor i64 %73, -1
  %75 = and i64 %72, %74
  store i64 %75, ptr %4, align 8, !tbaa !66
  %76 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !66
  %77 = and i64 %76, %70
  %78 = shl i64 %77, 16
  %79 = shl i64 %27, 8
  %80 = or i64 %79, %27
  %81 = xor i64 %80, -1
  %82 = and i64 %78, %81
  store i64 %82, ptr %5, align 8, !tbaa !66
  %83 = or i64 %82, %75
  %84 = and i64 %83, %25
  store i64 %84, ptr %4, align 8, !tbaa !66
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %104, label %86, !prof !262

86:                                               ; preds = %68, %86
  %87 = phi ptr [ %101, %86 ], [ %1, %68 ]
  %88 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %89 = load i64, ptr %69, align 8, !tbaa !66
  %90 = add nsw i32 %88, -8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !66
  %94 = and i64 %93, %89
  %95 = icmp eq i64 %94, 0
  %96 = add i32 %88, 67108848
  %97 = select i1 %95, i32 %96, i32 %90, !prof !263
  %98 = shl i32 %97, 6
  %99 = or i32 %88, %98
  %100 = or i32 %99, 6815744
  store i32 %100, ptr %87, align 4, !tbaa !70
  %101 = getelementptr inbounds i32, ptr %87, i64 1
  %102 = load i64, ptr %4, align 8, !tbaa !66
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %86, !prof !264, !llvm.loop !265

104:                                              ; preds = %50, %86, %32, %68
  %105 = phi ptr [ %1, %68 ], [ %1, %32 ], [ %101, %86 ], [ %65, %50 ]
  %106 = load i32, ptr %6, align 4, !tbaa !64
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %109 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %110 = select i1 %107, ptr %108, ptr %109, !prof !255
  %111 = load i64, ptr %110, align 8, !tbaa !66
  store i64 %111, ptr %4, align 8, !tbaa !66
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %135, label %117, !prof !266

113:                                              ; preds = %127, %117
  %114 = phi ptr [ %118, %117 ], [ %132, %127 ]
  %115 = load i64, ptr %4, align 8, !tbaa !66
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %135, label %117, !prof !267, !llvm.loop !268

117:                                              ; preds = %104, %113
  %118 = phi ptr [ %114, %113 ], [ %105, %104 ]
  %119 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !66
  %123 = and i64 %122, %29
  store i64 %123, ptr %5, align 8, !tbaa !66
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %113, label %125, !prof !269

125:                                              ; preds = %117
  %126 = shl i32 %119, 6
  br label %127

127:                                              ; preds = %125, %127
  %128 = phi ptr [ %118, %125 ], [ %132, %127 ]
  %129 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %130 = or i32 %126, %129
  %131 = or i32 %130, 6815744
  store i32 %131, ptr %128, align 4, !tbaa !70
  %132 = getelementptr inbounds i32, ptr %128, i64 1
  %133 = load i64, ptr %5, align 8, !tbaa !66
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %113, label %127, !prof !270, !llvm.loop !271

135:                                              ; preds = %113, %104
  %136 = phi ptr [ %105, %104 ], [ %114, %113 ]
  %137 = load i32, ptr %6, align 4, !tbaa !64
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %140 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %141 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %142 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %143 = select i1 %138, ptr %140, ptr %142, !prof !255
  %144 = select i1 %138, ptr %139, ptr %141, !prof !255
  %145 = load i64, ptr %144, align 8, !tbaa !66
  %146 = load i64, ptr %143, align 8, !tbaa !66
  %147 = or i64 %146, %145
  store i64 %147, ptr %4, align 8, !tbaa !66
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %169, label %153, !prof !272

149:                                              ; preds = %161, %153
  %150 = phi ptr [ %154, %153 ], [ %166, %161 ]
  %151 = load i64, ptr %4, align 8, !tbaa !66
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %169, label %153, !prof !273, !llvm.loop !274

153:                                              ; preds = %135, %149
  %154 = phi ptr [ %150, %149 ], [ %136, %135 ]
  %155 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %156 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %155)
  %157 = and i64 %156, %29
  store i64 %157, ptr %5, align 8, !tbaa !66
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %149, label %159, !prof !275

159:                                              ; preds = %153
  %160 = shl i32 %155, 6
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi ptr [ %154, %159 ], [ %166, %161 ]
  %163 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %164 = or i32 %160, %163
  %165 = or i32 %164, 6815744
  store i32 %165, ptr %162, align 4, !tbaa !70
  %166 = getelementptr inbounds i32, ptr %162, i64 1
  %167 = load i64, ptr %5, align 8, !tbaa !66
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %149, label %161, !prof !276, !llvm.loop !277

169:                                              ; preds = %149, %135
  %170 = phi ptr [ %136, %135 ], [ %150, %149 ]
  %171 = load i32, ptr %6, align 4, !tbaa !64
  %172 = icmp eq i32 %171, 0
  %173 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %174 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %175 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %176 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %177 = select i1 %172, ptr %174, ptr %176, !prof !255
  %178 = select i1 %172, ptr %173, ptr %175, !prof !255
  %179 = load i64, ptr %178, align 8, !tbaa !66
  %180 = load i64, ptr %177, align 8, !tbaa !66
  %181 = or i64 %180, %179
  store i64 %181, ptr %4, align 8, !tbaa !66
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %203, label %187, !prof !272

183:                                              ; preds = %195, %187
  %184 = phi ptr [ %188, %187 ], [ %200, %195 ]
  %185 = load i64, ptr %4, align 8, !tbaa !66
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %203, label %187, !prof !278, !llvm.loop !279

187:                                              ; preds = %169, %183
  %188 = phi ptr [ %184, %183 ], [ %170, %169 ]
  %189 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %190 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %189)
  %191 = and i64 %190, %29
  store i64 %191, ptr %5, align 8, !tbaa !66
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %183, label %193, !prof !280

193:                                              ; preds = %187
  %194 = shl i32 %189, 6
  br label %195

195:                                              ; preds = %193, %195
  %196 = phi ptr [ %188, %193 ], [ %200, %195 ]
  %197 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %198 = or i32 %194, %197
  %199 = or i32 %198, 6815744
  store i32 %199, ptr %196, align 4, !tbaa !70
  %200 = getelementptr inbounds i32, ptr %196, i64 1
  %201 = load i64, ptr %5, align 8, !tbaa !66
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %183, label %195, !prof !281, !llvm.loop !282

203:                                              ; preds = %183, %169
  %204 = phi ptr [ %170, %169 ], [ %184, %183 ]
  %205 = ptrtoint ptr %204 to i64
  %206 = ptrtoint ptr %1 to i64
  %207 = sub i64 %205, %206
  %208 = lshr exact i64 %207, 2
  %209 = trunc i64 %208 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %209
}

declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !283 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !58
  %10 = xor i64 %9, -1
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %13 = select i1 %7, ptr %11, ptr %12, !prof !284
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !66
  %18 = and i64 %17, %10
  store i64 %18, ptr %4, align 8, !tbaa !66
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %20, !prof !285

20:                                               ; preds = %3
  %21 = load i32, ptr %13, align 4, !tbaa !70
  %22 = shl i32 %21, 6
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %1, %20 ], [ %28, %23 ]
  %25 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %26 = or i32 %22, %25
  %27 = or i32 %26, 6815744
  store i32 %27, ptr %24, align 4, !tbaa !70
  %28 = getelementptr inbounds i32, ptr %24, i64 1
  %29 = load i64, ptr %4, align 8, !tbaa !66
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %23, !prof !286, !llvm.loop !287

31:                                               ; preds = %23, %3
  %32 = phi ptr [ %1, %3 ], [ %28, %23 ]
  %33 = call noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %0, ptr noundef %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = add i32 %2, -1
  %37 = icmp ult i32 %36, 6
  br i1 %37, label %42, label %38, !prof !288

38:                                               ; preds = %31
  %39 = call noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef %0, ptr noundef %35, i32 noundef %2)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %35, i64 %40
  br label %42

42:                                               ; preds = %31, %38
  %43 = phi ptr [ %41, %38 ], [ %35, %31 ]
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %1 to i64
  %46 = sub i64 %44, %45
  %47 = lshr exact i64 %46, 2
  %48 = trunc i64 %47 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %48
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 295433270}
!36 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 13590894}
!37 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 18375388}
!38 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z20check_castle_blockerP7state_ti, i64 867766}
!39 = !{ptr @_Z3genP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 2079865526}
!40 = !{ptr @_Z3genP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 89137284}
!41 = !{ptr @_Z3genP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 116529139}
!42 = !{ptr @_Z3genP7state_tPi, ptr @_Z20check_castle_blockerP7state_ti, i64 4587051}
!43 = !{ptr @_Z12gen_capturesP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 1605864690}
!44 = !{ptr @_Z12gen_capturesP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 456141816}
!45 = !{ptr @_Z12gen_capturesP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 349148367}
!46 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 417072743}
!47 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 222516107}
!48 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 147490888}
!49 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z4ranki, i64 38085146}
!50 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z15FindFirstRemovePy, i64 374030479}
!51 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z11RookAttacksP7state_ti, i64 82968365}
!52 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z13BishopAttacksP7state_ti, i64 67069061}
!53 = !{ptr @_Z12gen_evasionsP7state_tPii, ptr @_Z15FindFirstRemovePy, i64 178570437}
!54 = !{ptr @_Z12gen_evasionsP7state_tPii, ptr @_Z12gen_capturesP7state_tPi, i64 44687203}
!55 = !{ptr @_Z12gen_evasionsP7state_tPii, ptr @_Z16gen_check_blocksP7state_tPii, i64 38085146}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 7394807}
!58 = !{!59, !63, i64 264}
!59 = !{!"_ZTS7state_t", !60, i64 0, !61, i64 4, !63, i64 264, !63, i64 272, !63, i64 280, !61, i64 288, !60, i64 392, !60, i64 396, !61, i64 400, !60, i64 452, !60, i64 456, !60, i64 460, !60, i64 464, !60, i64 468, !60, i64 472, !60, i64 476, !63, i64 480, !63, i64 488, !61, i64 496, !61, i64 2544, !61, i64 2800, !61, i64 3056, !63, i64 4080, !63, i64 4088, !60, i64 4096, !61, i64 4100, !60, i64 4356, !60, i64 4360, !60, i64 4364, !60, i64 4368, !60, i64 4372, !60, i64 4376, !60, i64 4380, !60, i64 4384, !60, i64 4388, !60, i64 4392, !61, i64 4400}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!"long long", !61, i64 0}
!64 = !{!59, !60, i64 460}
!65 = !{!"branch_weights", i32 3468400, i32 3926407}
!66 = !{!63, !63, i64 0}
!67 = !{!"branch_weights", i32 1, i32 3926406}
!68 = !{!"branch_weights", i32 7610116, i32 16500372}
!69 = !{!"branch_weights", i32 19832, i32 24090656}
!70 = !{!60, !60, i64 0}
!71 = !{!"branch_weights", i32 3926406, i32 20184082}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!"branch_weights", i32 1, i32 3468399}
!76 = !{!"branch_weights", i32 6754224, i32 14862568}
!77 = !{!"branch_weights", i32 14276, i32 21602516}
!78 = !{!"branch_weights", i32 3468399, i32 18148393}
!79 = distinct !{!79, !73, !74}
!80 = !{!"branch_weights", i32 1890243, i32 5504564}
!81 = !{!"branch_weights", i32 5504564, i32 0}
!82 = distinct !{!82, !73, !74}
!83 = !{!"branch_weights", i32 1, i32 5504563}
!84 = !{!"branch_weights", i32 5504563, i32 20899669}
!85 = distinct !{!85, !73, !74}
!86 = !{!"branch_weights", i32 1, i32 7394806}
!87 = !{!"branch_weights", i32 7394806, i32 6196088}
!88 = distinct !{!88, !73, !74}
!89 = !{!"branch_weights", i32 1, i32 13590893}
!90 = !{!"branch_weights", i32 13590893, i32 51309220}
!91 = distinct !{!91, !73, !74}
!92 = !{!"branch_weights", i32 7394806, i32 10980582}
!93 = distinct !{!93, !73, !74}
!94 = !{!"branch_weights", i32 1, i32 18375387}
!95 = !{!"branch_weights", i32 18375387, i32 78695805}
!96 = distinct !{!96, !73, !74}
!97 = !{!59, !60, i64 452}
!98 = !{!"branch_weights", i32 3844708, i32 81699}
!99 = !{!"branch_weights", i32 77801, i32 3898}
!100 = !{!59, !60, i64 464}
!101 = !{!"branch_weights", i32 3752962, i32 173445}
!102 = !{!"branch_weights", i32 75044, i32 98401}
!103 = !{!"branch_weights", i32 3160227, i32 308173}
!104 = !{!"branch_weights", i32 235944, i32 72229}
!105 = !{!59, !60, i64 468}
!106 = !{!"branch_weights", i32 3163951, i32 304449}
!107 = !{!"branch_weights", i32 87362, i32 217087}
!108 = !{!"branch_weights", i32 7394806, i32 16464801}
!109 = distinct !{!109, !73, !74}
!110 = !{!"function_entry_count", i64 0}
!111 = !{!"function_entry_count", i64 49742872}
!112 = !{!"branch_weights", i32 23373414, i32 26369458}
!113 = !{!"branch_weights", i32 1, i32 26369457}
!114 = !{!"branch_weights", i32 49105481, i32 105689295}
!115 = !{!"branch_weights", i32 282727, i32 154512049}
!116 = !{!"branch_weights", i32 26369457, i32 128425319}
!117 = distinct !{!117, !73, !74}
!118 = !{!"branch_weights", i32 1, i32 23373413}
!119 = !{!"branch_weights", i32 46802167, i32 98580852}
!120 = !{!"branch_weights", i32 244701, i32 145138318}
!121 = !{!"branch_weights", i32 23373413, i32 122009606}
!122 = distinct !{!122, !73, !74}
!123 = !{!59, !60, i64 456}
!124 = !{!59, !63, i64 272}
!125 = !{!"branch_weights", i32 602505, i32 25766953}
!126 = !{!"branch_weights", i32 19067591, i32 7301867}
!127 = !{!"branch_weights", i32 325072, i32 6976795}
!128 = !{!"branch_weights", i32 2960768, i32 4016027}
!129 = !{!"branch_weights", i32 72298, i32 3943729}
!130 = !{!"branch_weights", i32 55269, i32 3888460}
!131 = !{!"branch_weights", i32 320523, i32 6981344}
!132 = !{!"branch_weights", i32 3542215, i32 3439129}
!133 = !{!"branch_weights", i32 82754, i32 3356375}
!134 = !{!"branch_weights", i32 6364, i32 3350011}
!135 = !{!"branch_weights", i32 7301867, i32 0}
!136 = distinct !{!136, !73, !74}
!137 = !{!59, !63, i64 280}
!138 = !{!"branch_weights", i32 499723, i32 22873691}
!139 = !{!"branch_weights", i32 15344817, i32 8028597}
!140 = !{!"branch_weights", i32 491798, i32 7536799}
!141 = !{!"branch_weights", i32 4385600, i32 3151199}
!142 = !{!"branch_weights", i32 34711, i32 3116488}
!143 = !{!"branch_weights", i32 3646, i32 3112842}
!144 = !{!"branch_weights", i32 527044, i32 7501553}
!145 = !{!"branch_weights", i32 2453695, i32 5047858}
!146 = !{!"branch_weights", i32 82021, i32 4965837}
!147 = !{!"branch_weights", i32 1673, i32 4964164}
!148 = !{!"branch_weights", i32 8028597, i32 0}
!149 = distinct !{!149, !73, !74}
!150 = !{!"branch_weights", i32 12669518, i32 37073354}
!151 = !{!"branch_weights", i32 37073354, i32 0}
!152 = distinct !{!152, !73, !74}
!153 = !{!"branch_weights", i32 1, i32 37073353}
!154 = !{!"branch_weights", i32 37073353, i32 168948358}
!155 = distinct !{!155, !73, !74}
!156 = !{!"branch_weights", i32 1, i32 49742871}
!157 = !{!"branch_weights", i32 49742871, i32 39394413}
!158 = distinct !{!158, !73, !74}
!159 = !{!"branch_weights", i32 1, i32 89137283}
!160 = !{!"branch_weights", i32 89137283, i32 383557413}
!161 = distinct !{!161, !73, !74}
!162 = !{!"branch_weights", i32 49742871, i32 66786268}
!163 = distinct !{!163, !73, !74}
!164 = !{!"branch_weights", i32 1, i32 116529138}
!165 = !{!"branch_weights", i32 116529138, i32 567566045}
!166 = distinct !{!166, !73, !74}
!167 = !{!"branch_weights", i32 25955168, i32 414290}
!168 = !{!"branch_weights", i32 402824, i32 11466}
!169 = !{!"branch_weights", i32 25692828, i32 676630}
!170 = !{!"branch_weights", i32 205734, i32 470896}
!171 = !{!"branch_weights", i32 21464769, i32 1908645}
!172 = !{!"branch_weights", i32 1331861, i32 576784}
!173 = !{!"branch_weights", i32 21785928, i32 1587486}
!174 = !{!"branch_weights", i32 261133, i32 1326353}
!175 = !{!"branch_weights", i32 49742871, i32 109063029}
!176 = distinct !{!176, !73, !74}
!177 = !{!"function_entry_count", i64 209616225}
!178 = !{!"branch_weights", i32 107044397, i32 102571828}
!179 = !{!"branch_weights", i32 101316744, i32 1255084}
!180 = !{!"branch_weights", i32 1255084, i32 0}
!181 = distinct !{!181, !73, !74}
!182 = !{!"branch_weights", i32 361369, i32 102210459}
!183 = !{!"branch_weights", i32 75419002, i32 27152826}
!184 = !{!"branch_weights", i32 1090629, i32 26062197}
!185 = !{!"branch_weights", i32 10924127, i32 15138070}
!186 = !{!"branch_weights", i32 228961, i32 14909109}
!187 = !{!"branch_weights", i32 42311, i32 14866798}
!188 = !{!"branch_weights", i32 1075392, i32 26077434}
!189 = !{!"branch_weights", i32 13186704, i32 12890730}
!190 = !{!"branch_weights", i32 223815, i32 12666915}
!191 = !{!"branch_weights", i32 4569, i32 12662346}
!192 = !{!"branch_weights", i32 27152826, i32 0}
!193 = distinct !{!193, !73, !74}
!194 = !{!"branch_weights", i32 105892255, i32 1152142}
!195 = !{!"branch_weights", i32 1152142, i32 0}
!196 = distinct !{!196, !73, !74}
!197 = !{!"branch_weights", i32 377713, i32 106666684}
!198 = !{!"branch_weights", i32 73004968, i32 34039429}
!199 = !{!"branch_weights", i32 2110489, i32 31928940}
!200 = !{!"branch_weights", i32 18246649, i32 13682291}
!201 = !{!"branch_weights", i32 139566, i32 13542725}
!202 = !{!"branch_weights", i32 2719, i32 13540006}
!203 = !{!"branch_weights", i32 2116141, i32 31923288}
!204 = !{!"branch_weights", i32 10772456, i32 21150832}
!205 = !{!"branch_weights", i32 280942, i32 20869890}
!206 = !{!"branch_weights", i32 1631, i32 20868259}
!207 = !{!"branch_weights", i32 34039429, i32 0}
!208 = distinct !{!208, !73, !74}
!209 = !{!"branch_weights", i32 180013579, i32 29602646}
!210 = !{!"branch_weights", i32 29602646, i32 0}
!211 = distinct !{!211, !73, !74}
!212 = !{!"branch_weights", i32 67606287, i32 142009938}
!213 = !{!"branch_weights", i32 142009938, i32 0}
!214 = distinct !{!214, !73, !74}
!215 = !{!"branch_weights", i32 36529484, i32 105480454}
!216 = !{!"branch_weights", i32 105480454, i32 0}
!217 = distinct !{!217, !73, !74}
!218 = !{!"branch_weights", i32 1, i32 209616224}
!219 = !{!"branch_weights", i32 209616224, i32 246525592}
!220 = distinct !{!220, !73, !74}
!221 = !{!"branch_weights", i32 192678960, i32 263462856}
!222 = !{!"branch_weights", i32 263462856, i32 0}
!223 = distinct !{!223, !73, !74}
!224 = !{!"branch_weights", i32 209616224, i32 139532143}
!225 = distinct !{!225, !73, !74}
!226 = !{!"branch_weights", i32 152729235, i32 196419132}
!227 = !{!"branch_weights", i32 196419132, i32 0}
!228 = distinct !{!228, !73, !74}
!229 = !{!"function_entry_count", i64 57578690}
!230 = !{!"branch_weights", i32 23670311, i32 33908379}
!231 = !{!"branch_weights", i32 19659676, i32 37919014}
!232 = !{!"branch_weights", i32 37919014, i32 0}
!233 = distinct !{!233, !73, !74}
!234 = !{!"branch_weights", i32 29961367, i32 7957647}
!235 = !{!"branch_weights", i32 7957647, i32 0}
!236 = distinct !{!236, !73, !74}
!237 = !{!"branch_weights", i32 56389603, i32 1189087}
!238 = !{!"branch_weights", i32 209332, i32 979755}
!239 = !{!"branch_weights", i32 1189087, i32 0}
!240 = distinct !{!240, !73, !74}
!241 = !{!"branch_weights", i32 1, i32 57578689}
!242 = !{!"branch_weights", i32 57578689, i32 67082439}
!243 = distinct !{!243, !73, !74}
!244 = !{!"branch_weights", i32 26806149, i32 97854979}
!245 = !{!"branch_weights", i32 67642229, i32 30212750}
!246 = !{!"branch_weights", i32 97854979, i32 0}
!247 = distinct !{!247, !73, !74}
!248 = !{!"branch_weights", i32 57578689, i32 33794709}
!249 = distinct !{!249, !73, !74}
!250 = !{!"branch_weights", i32 35255908, i32 56117490}
!251 = !{!"branch_weights", i32 38571523, i32 17545967}
!252 = !{!"branch_weights", i32 56117490, i32 0}
!253 = distinct !{!253, !73, !74}
!254 = !{!"function_entry_count", i64 38085146}
!255 = !{!"branch_weights", i32 26412163, i32 11672983}
!256 = !{!"branch_weights", i32 14405627, i32 23679519}
!257 = !{!"branch_weights", i32 23679519, i32 0}
!258 = !{!"branch_weights", i32 2032575, i32 9640408}
!259 = !{!"branch_weights", i32 2831792, i32 6808616}
!260 = !{!"branch_weights", i32 9640408, i32 0}
!261 = distinct !{!261, !73, !74}
!262 = !{!"branch_weights", i32 8074804, i32 18337359}
!263 = !{!"branch_weights", i32 5093249, i32 13244110}
!264 = !{!"branch_weights", i32 18337359, i32 0}
!265 = distinct !{!265, !73, !74}
!266 = !{!"branch_weights", i32 15917053, i32 22168093}
!267 = !{!"branch_weights", i32 22168093, i32 0}
!268 = distinct !{!268, !73, !74}
!269 = !{!"branch_weights", i32 3020873, i32 19147220}
!270 = !{!"branch_weights", i32 19147220, i32 0}
!271 = distinct !{!271, !73, !74}
!272 = !{!"branch_weights", i32 1, i32 38085145}
!273 = !{!"branch_weights", i32 38085145, i32 44883220}
!274 = distinct !{!274, !73, !74}
!275 = !{!"branch_weights", i32 1, i32 82968364}
!276 = !{!"branch_weights", i32 82968364, i32 13298414}
!277 = distinct !{!277, !73, !74}
!278 = !{!"branch_weights", i32 38085145, i32 28983916}
!279 = distinct !{!279, !73, !74}
!280 = !{!"branch_weights", i32 8635866, i32 58433195}
!281 = !{!"branch_weights", i32 58433195, i32 0}
!282 = distinct !{!282, !73, !74}
!283 = !{!"function_entry_count", i64 44687203}
!284 = !{!"branch_weights", i32 30299226, i32 14387977}
!285 = !{!"branch_weights", i32 1, i32 44687202}
!286 = !{!"branch_weights", i32 44687202, i32 133883235}
!287 = distinct !{!287, !73, !74}
!288 = !{!"branch_weights", i32 6602057, i32 38085146}
