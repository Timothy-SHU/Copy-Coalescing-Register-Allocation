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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !6
  %9 = xor i64 %8, -1
  %10 = load i32, ptr %6, align 4, !tbaa !12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !13
  %15 = lshr i64 %14, 8
  %16 = and i64 %15, %9
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !13
  %18 = and i64 %17, %14
  %19 = lshr i64 %18, 16
  %20 = lshr i64 %8, 8
  %21 = or i64 %20, %8
  %22 = xor i64 %21, -1
  %23 = and i64 %19, %22
  store i64 %23, ptr %4, align 8, !tbaa !13
  %24 = or i64 %23, %16
  store i64 %24, ptr %3, align 8, !tbaa !13
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %101, label %26

26:                                               ; preds = %12, %52
  %27 = phi ptr [ %53, %52 ], [ %1, %12 ]
  %28 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %29 = load i64, ptr %13, align 8, !tbaa !13
  %30 = add nsw i32 %28, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !13
  %34 = and i64 %33, %29
  %35 = icmp eq i64 %34, 0
  %36 = add nsw i32 %28, 16
  %37 = select i1 %35, i32 %36, i32 %30
  %38 = icmp ult i32 %28, 8
  br i1 %38, label %39, label %50

39:                                               ; preds = %26
  %40 = zext nneg i32 %28 to i64
  %41 = getelementptr inbounds i32, ptr %5, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !14
  %43 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %27, i32 noundef %37, i32 noundef %28, i32 noundef %42, i32 noundef 9, i32 noundef 0) #5
  %44 = load i32, ptr %41, align 4, !tbaa !14
  %45 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %43, i32 noundef %37, i32 noundef %28, i32 noundef %44, i32 noundef 7, i32 noundef 0) #5
  %46 = load i32, ptr %41, align 4, !tbaa !14
  %47 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %45, i32 noundef %37, i32 noundef %28, i32 noundef %46, i32 noundef 11, i32 noundef 0) #5
  %48 = load i32, ptr %41, align 4, !tbaa !14
  %49 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %47, i32 noundef %37, i32 noundef %28, i32 noundef %48, i32 noundef 3, i32 noundef 0) #5
  br label %52

50:                                               ; preds = %26
  %51 = call noundef ptr @_Z8add_movePiiii(ptr noundef %27, i32 noundef %37, i32 noundef %28, i32 noundef 0) #5
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi ptr [ %49, %39 ], [ %51, %50 ]
  %54 = load i64, ptr %3, align 8, !tbaa !13
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %101, label %26, !llvm.loop !15

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %58 = load i64, ptr %57, align 8, !tbaa !13
  %59 = shl i64 %58, 8
  %60 = and i64 %59, %9
  %61 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !13
  %62 = and i64 %61, %58
  %63 = shl i64 %62, 16
  %64 = shl i64 %8, 8
  %65 = or i64 %64, %8
  %66 = xor i64 %65, -1
  %67 = and i64 %63, %66
  store i64 %67, ptr %4, align 8, !tbaa !13
  %68 = or i64 %67, %60
  store i64 %68, ptr %3, align 8, !tbaa !13
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %101, label %70

70:                                               ; preds = %56, %97
  %71 = phi ptr [ %98, %97 ], [ %1, %56 ]
  %72 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %73 = load i64, ptr %57, align 8, !tbaa !13
  %74 = add nsw i32 %72, -8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !13
  %78 = and i64 %77, %73
  %79 = icmp eq i64 %78, 0
  %80 = add nsw i32 %72, -16
  %81 = select i1 %79, i32 %80, i32 %74
  %82 = and i32 %72, -8
  %83 = icmp eq i32 %82, 56
  br i1 %83, label %84, label %95

84:                                               ; preds = %70
  %85 = zext nneg i32 %72 to i64
  %86 = getelementptr inbounds i32, ptr %5, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !14
  %88 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %71, i32 noundef %81, i32 noundef %72, i32 noundef %87, i32 noundef 10, i32 noundef 0) #5
  %89 = load i32, ptr %86, align 4, !tbaa !14
  %90 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %88, i32 noundef %81, i32 noundef %72, i32 noundef %89, i32 noundef 8, i32 noundef 0) #5
  %91 = load i32, ptr %86, align 4, !tbaa !14
  %92 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %90, i32 noundef %81, i32 noundef %72, i32 noundef %91, i32 noundef 12, i32 noundef 0) #5
  %93 = load i32, ptr %86, align 4, !tbaa !14
  %94 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %92, i32 noundef %81, i32 noundef %72, i32 noundef %93, i32 noundef 4, i32 noundef 0) #5
  br label %97

95:                                               ; preds = %70
  %96 = call noundef ptr @_Z8add_movePiiii(ptr noundef %71, i32 noundef %81, i32 noundef %72, i32 noundef 0) #5
  br label %97

97:                                               ; preds = %95, %84
  %98 = phi ptr [ %94, %84 ], [ %96, %95 ]
  %99 = load i64, ptr %3, align 8, !tbaa !13
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %70, !llvm.loop !17

101:                                              ; preds = %52, %97, %12, %56
  %102 = phi ptr [ %1, %56 ], [ %1, %12 ], [ %98, %97 ], [ %53, %52 ]
  %103 = load i32, ptr %6, align 4, !tbaa !12
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %106 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %107 = select i1 %104, ptr %105, ptr %106
  %108 = load i64, ptr %107, align 8, !tbaa !13
  store i64 %108, ptr %3, align 8, !tbaa !13
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %133, label %114

110:                                              ; preds = %122, %114
  %111 = phi ptr [ %115, %114 ], [ %128, %122 ]
  %112 = load i64, ptr %3, align 8, !tbaa !13
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %101, %110
  %115 = phi ptr [ %111, %110 ], [ %102, %101 ]
  %116 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !13
  %120 = and i64 %119, %9
  store i64 %120, ptr %4, align 8, !tbaa !13
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %110, label %122, !llvm.loop !18

122:                                              ; preds = %114, %122
  %123 = phi ptr [ %128, %122 ], [ %115, %114 ]
  %124 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %5, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !14
  %128 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %123, i32 noundef %116, i32 noundef %124, i32 noundef %127, i32 noundef 0, i32 noundef 0) #5
  %129 = load i64, ptr %4, align 8, !tbaa !13
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %110, label %122, !llvm.loop !19

131:                                              ; preds = %110
  %132 = load i32, ptr %6, align 4, !tbaa !12
  br label %133

133:                                              ; preds = %131, %101
  %134 = phi i32 [ %103, %101 ], [ %132, %131 ]
  %135 = phi ptr [ %102, %101 ], [ %111, %131 ]
  %136 = icmp eq i32 %134, 0
  %137 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %138 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %139 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %140 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %141 = select i1 %136, ptr %138, ptr %140
  %142 = select i1 %136, ptr %137, ptr %139
  %143 = load i64, ptr %142, align 8, !tbaa !13
  %144 = load i64, ptr %141, align 8, !tbaa !13
  %145 = or i64 %144, %143
  store i64 %145, ptr %3, align 8, !tbaa !13
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %168, label %151

147:                                              ; preds = %157, %151
  %148 = phi ptr [ %152, %151 ], [ %163, %157 ]
  %149 = load i64, ptr %3, align 8, !tbaa !13
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %133, %147
  %152 = phi ptr [ %148, %147 ], [ %135, %133 ]
  %153 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %154 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %153) #5
  %155 = and i64 %154, %9
  store i64 %155, ptr %4, align 8, !tbaa !13
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %147, label %157, !llvm.loop !20

157:                                              ; preds = %151, %157
  %158 = phi ptr [ %163, %157 ], [ %152, %151 ]
  %159 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %5, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !14
  %163 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %158, i32 noundef %153, i32 noundef %159, i32 noundef %162, i32 noundef 0, i32 noundef 0) #5
  %164 = load i64, ptr %4, align 8, !tbaa !13
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %147, label %157, !llvm.loop !21

166:                                              ; preds = %147
  %167 = load i32, ptr %6, align 4, !tbaa !12
  br label %168

168:                                              ; preds = %166, %133
  %169 = phi i32 [ %134, %133 ], [ %167, %166 ]
  %170 = phi ptr [ %135, %133 ], [ %148, %166 ]
  %171 = icmp eq i32 %169, 0
  %172 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %173 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %174 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %175 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %176 = select i1 %171, ptr %173, ptr %175
  %177 = select i1 %171, ptr %172, ptr %174
  %178 = load i64, ptr %177, align 8, !tbaa !13
  %179 = load i64, ptr %176, align 8, !tbaa !13
  %180 = or i64 %179, %178
  store i64 %180, ptr %3, align 8, !tbaa !13
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %203, label %186

182:                                              ; preds = %192, %186
  %183 = phi ptr [ %187, %186 ], [ %198, %192 ]
  %184 = load i64, ptr %3, align 8, !tbaa !13
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %168, %182
  %187 = phi ptr [ %183, %182 ], [ %170, %168 ]
  %188 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %189 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %188) #5
  %190 = and i64 %189, %9
  store i64 %190, ptr %4, align 8, !tbaa !13
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %182, label %192, !llvm.loop !22

192:                                              ; preds = %186, %192
  %193 = phi ptr [ %198, %192 ], [ %187, %186 ]
  %194 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, ptr %5, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !14
  %198 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %193, i32 noundef %188, i32 noundef %194, i32 noundef %197, i32 noundef 0, i32 noundef 0) #5
  %199 = load i64, ptr %4, align 8, !tbaa !13
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %182, label %192, !llvm.loop !23

201:                                              ; preds = %182
  %202 = load i32, ptr %6, align 4, !tbaa !12
  br label %203

203:                                              ; preds = %201, %168
  %204 = phi i32 [ %169, %168 ], [ %202, %201 ]
  %205 = phi ptr [ %170, %168 ], [ %183, %201 ]
  %206 = icmp eq i32 %204, 0
  %207 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %208 = load i32, ptr %207, align 4, !tbaa !24
  br i1 %206, label %234, label %209

209:                                              ; preds = %203
  %210 = and i32 %208, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %209
  %213 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 1) #5
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %217 = load i32, ptr %216, align 8, !tbaa !25
  %218 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %205, i32 noundef %217, i32 noundef 62, i32 noundef 1) #5
  br label %219

219:                                              ; preds = %212, %215, %209
  %220 = phi ptr [ %205, %212 ], [ %218, %215 ], [ %205, %209 ]
  %221 = load i32, ptr %207, align 4, !tbaa !24
  %222 = and i32 %221, 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %219
  %225 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 2) #5
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %229 = load i32, ptr %228, align 8, !tbaa !25
  %230 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %220, i32 noundef %229, i32 noundef 58, i32 noundef 2) #5
  br label %231

231:                                              ; preds = %224, %227, %219
  %232 = phi ptr [ %220, %224 ], [ %230, %227 ], [ %220, %219 ]
  %233 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %259

234:                                              ; preds = %203
  %235 = and i32 %208, 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %234
  %238 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 3) #5
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %242 = load i32, ptr %241, align 4, !tbaa !26
  %243 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %205, i32 noundef %242, i32 noundef 6, i32 noundef 3) #5
  br label %244

244:                                              ; preds = %237, %240, %234
  %245 = phi ptr [ %205, %237 ], [ %243, %240 ], [ %205, %234 ]
  %246 = load i32, ptr %207, align 4, !tbaa !24
  %247 = and i32 %246, 16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %244
  %250 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 4) #5
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %254 = load i32, ptr %253, align 4, !tbaa !26
  %255 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %245, i32 noundef %254, i32 noundef 2, i32 noundef 4) #5
  br label %256

256:                                              ; preds = %249, %252, %244
  %257 = phi ptr [ %245, %249 ], [ %255, %252 ], [ %245, %244 ]
  %258 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %259

259:                                              ; preds = %256, %231
  %260 = phi ptr [ %233, %231 ], [ %258, %256 ]
  %261 = phi ptr [ %232, %231 ], [ %257, %256 ]
  %262 = load i32, ptr %260, align 4, !tbaa !14
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !13
  %266 = and i64 %265, %9
  store i64 %266, ptr %3, align 8, !tbaa !13
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %277, label %268

268:                                              ; preds = %259, %268
  %269 = phi ptr [ %274, %268 ], [ %261, %259 ]
  %270 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, ptr %5, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !14
  %274 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %269, i32 noundef %262, i32 noundef %270, i32 noundef %273, i32 noundef 0, i32 noundef 0) #5
  %275 = load i64, ptr %3, align 8, !tbaa !13
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %268, !llvm.loop !27

277:                                              ; preds = %268, %259
  %278 = phi ptr [ %261, %259 ], [ %274, %268 ]
  %279 = ptrtoint ptr %278 to i64
  %280 = ptrtoint ptr %1 to i64
  %281 = sub i64 %279, %280
  %282 = lshr exact i64 %281, 2
  %283 = trunc i64 %282 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %283
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_Z11add_capturePiiiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
  %7 = shl i32 %5, 23
  %8 = shl i32 %3, 19
  %9 = shl i32 %4, 12
  %10 = shl i32 %1, 6
  %11 = or i32 %10, %2
  %12 = or i32 %11, %8
  %13 = or i32 %12, %9
  %14 = or i32 %13, %7
  store i32 %14, ptr %0, align 4, !tbaa !14
  %15 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_Z8add_movePiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = shl i32 %3, 12
  %6 = shl i32 %1, 6
  %7 = or i32 %6, %2
  %8 = or i32 %7, %5
  %9 = or i32 %8, 6815744
  store i32 %9, ptr %0, align 4, !tbaa !14
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %10
}

; Function Attrs: optsize
declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_Z15add_king_castlePiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = shl i32 %3, 16
  %6 = shl i32 %1, 6
  %7 = or i32 %6, %2
  %8 = or i32 %7, %5
  %9 = or i32 %8, 6815744
  store i32 %9, ptr %0, align 4, !tbaa !14
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = xor i64 %12, -1
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !6
  %16 = xor i64 %15, -1
  br i1 %8, label %61, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !13
  %20 = lshr i64 %19, 8
  %21 = and i64 %20, %16
  %22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !13
  %23 = and i64 %22, %19
  %24 = lshr i64 %23, 16
  %25 = lshr i64 %15, 8
  %26 = or i64 %25, %15
  %27 = xor i64 %26, -1
  %28 = and i64 %24, %27
  store i64 %28, ptr %4, align 8, !tbaa !13
  %29 = or i64 %28, %21
  store i64 %29, ptr %3, align 8, !tbaa !13
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %106, label %31

31:                                               ; preds = %17, %57
  %32 = phi ptr [ %58, %57 ], [ %1, %17 ]
  %33 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %34 = load i64, ptr %18, align 8, !tbaa !13
  %35 = add nsw i32 %33, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !13
  %39 = and i64 %38, %34
  %40 = icmp eq i64 %39, 0
  %41 = add nsw i32 %33, 16
  %42 = select i1 %40, i32 %41, i32 %35
  %43 = icmp ult i32 %33, 8
  br i1 %43, label %44, label %55

44:                                               ; preds = %31
  %45 = zext nneg i32 %33 to i64
  %46 = getelementptr inbounds i32, ptr %5, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !14
  %48 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %32, i32 noundef %42, i32 noundef %33, i32 noundef %47, i32 noundef 9, i32 noundef 0) #5
  %49 = load i32, ptr %46, align 4, !tbaa !14
  %50 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %48, i32 noundef %42, i32 noundef %33, i32 noundef %49, i32 noundef 7, i32 noundef 0) #5
  %51 = load i32, ptr %46, align 4, !tbaa !14
  %52 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %50, i32 noundef %42, i32 noundef %33, i32 noundef %51, i32 noundef 11, i32 noundef 0) #5
  %53 = load i32, ptr %46, align 4, !tbaa !14
  %54 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %52, i32 noundef %42, i32 noundef %33, i32 noundef %53, i32 noundef 3, i32 noundef 0) #5
  br label %57

55:                                               ; preds = %31
  %56 = call noundef ptr @_Z8add_movePiiii(ptr noundef %32, i32 noundef %42, i32 noundef %33, i32 noundef 0) #5
  br label %57

57:                                               ; preds = %55, %44
  %58 = phi ptr [ %54, %44 ], [ %56, %55 ]
  %59 = load i64, ptr %3, align 8, !tbaa !13
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %106, label %31, !llvm.loop !28

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %63 = load i64, ptr %62, align 8, !tbaa !13
  %64 = shl i64 %63, 8
  %65 = and i64 %64, %16
  %66 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !13
  %67 = and i64 %66, %63
  %68 = shl i64 %67, 16
  %69 = shl i64 %15, 8
  %70 = or i64 %69, %15
  %71 = xor i64 %70, -1
  %72 = and i64 %68, %71
  store i64 %72, ptr %4, align 8, !tbaa !13
  %73 = or i64 %72, %65
  store i64 %73, ptr %3, align 8, !tbaa !13
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %106, label %75

75:                                               ; preds = %61, %102
  %76 = phi ptr [ %103, %102 ], [ %1, %61 ]
  %77 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %78 = load i64, ptr %62, align 8, !tbaa !13
  %79 = add nsw i32 %77, -8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !13
  %83 = and i64 %82, %78
  %84 = icmp eq i64 %83, 0
  %85 = add nsw i32 %77, -16
  %86 = select i1 %84, i32 %85, i32 %79
  %87 = and i32 %77, -8
  %88 = icmp eq i32 %87, 56
  br i1 %88, label %89, label %100

89:                                               ; preds = %75
  %90 = zext nneg i32 %77 to i64
  %91 = getelementptr inbounds i32, ptr %5, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !14
  %93 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %76, i32 noundef %86, i32 noundef %77, i32 noundef %92, i32 noundef 10, i32 noundef 0) #5
  %94 = load i32, ptr %91, align 4, !tbaa !14
  %95 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %93, i32 noundef %86, i32 noundef %77, i32 noundef %94, i32 noundef 8, i32 noundef 0) #5
  %96 = load i32, ptr %91, align 4, !tbaa !14
  %97 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %95, i32 noundef %86, i32 noundef %77, i32 noundef %96, i32 noundef 12, i32 noundef 0) #5
  %98 = load i32, ptr %91, align 4, !tbaa !14
  %99 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %97, i32 noundef %86, i32 noundef %77, i32 noundef %98, i32 noundef 4, i32 noundef 0) #5
  br label %102

100:                                              ; preds = %75
  %101 = call noundef ptr @_Z8add_movePiiii(ptr noundef %76, i32 noundef %86, i32 noundef %77, i32 noundef 0) #5
  br label %102

102:                                              ; preds = %100, %89
  %103 = phi ptr [ %99, %89 ], [ %101, %100 ]
  %104 = load i64, ptr %3, align 8, !tbaa !13
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %75, !llvm.loop !29

106:                                              ; preds = %57, %102, %17, %61
  %107 = phi ptr [ %1, %61 ], [ %1, %17 ], [ %103, %102 ], [ %58, %57 ]
  %108 = load i32, ptr %6, align 4, !tbaa !12
  %109 = icmp eq i32 %108, 0
  %110 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !13
  %111 = xor i64 %110, -1
  %112 = load i64, ptr @FileMask, align 16, !tbaa !13
  %113 = xor i64 %112, -1
  %114 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %115 = load i32, ptr %114, align 8, !tbaa !30
  %116 = icmp sgt i32 %115, 0
  br i1 %109, label %212, label %117

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %119 = load i64, ptr %118, align 8, !tbaa !13
  %120 = and i64 %119, %111
  %121 = lshr i64 %120, 7
  %122 = and i64 %119, %113
  %123 = lshr i64 %122, 9
  %124 = or i64 %123, %121
  %125 = load i64, ptr %10, align 8, !tbaa !31
  br i1 %116, label %126, label %131

126:                                              ; preds = %117
  %127 = zext nneg i32 %115 to i64
  %128 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !13
  %130 = or i64 %129, %125
  br label %131

131:                                              ; preds = %117, %126
  %132 = phi i64 [ %130, %126 ], [ %125, %117 ]
  %133 = and i64 %132, %124
  store i64 %133, ptr %3, align 8, !tbaa !13
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %309, label %135

135:                                              ; preds = %131, %208
  %136 = phi ptr [ %209, %208 ], [ %107, %131 ]
  %137 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %138 = and i32 %137, 7
  %139 = icmp eq i32 %138, 0
  %140 = load i64, ptr %118, align 8, !tbaa !13
  br i1 %139, label %176, label %141

141:                                              ; preds = %135
  %142 = add nsw i32 %137, 7
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !13
  %146 = and i64 %145, %140
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %171, label %148

148:                                              ; preds = %141
  %149 = icmp ult i32 %137, 8
  br i1 %149, label %150, label %161

150:                                              ; preds = %148
  %151 = zext nneg i32 %137 to i64
  %152 = getelementptr inbounds i32, ptr %5, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !14
  %154 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %136, i32 noundef %142, i32 noundef %137, i32 noundef %153, i32 noundef 9, i32 noundef 0) #5
  %155 = load i32, ptr %152, align 4, !tbaa !14
  %156 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %154, i32 noundef %142, i32 noundef %137, i32 noundef %155, i32 noundef 7, i32 noundef 0) #5
  %157 = load i32, ptr %152, align 4, !tbaa !14
  %158 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %156, i32 noundef %142, i32 noundef %137, i32 noundef %157, i32 noundef 11, i32 noundef 0) #5
  %159 = load i32, ptr %152, align 4, !tbaa !14
  %160 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %158, i32 noundef %142, i32 noundef %137, i32 noundef %159, i32 noundef 3, i32 noundef 0) #5
  br label %171

161:                                              ; preds = %148
  %162 = load i32, ptr %114, align 8, !tbaa !30
  %163 = icmp eq i32 %137, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %136, i32 noundef %142, i32 noundef %137, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %171

166:                                              ; preds = %161
  %167 = sext i32 %137 to i64
  %168 = getelementptr inbounds i32, ptr %5, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !14
  %170 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %136, i32 noundef %142, i32 noundef %137, i32 noundef %169, i32 noundef 0, i32 noundef 0) #5
  br label %171

171:                                              ; preds = %141, %164, %166, %150
  %172 = phi ptr [ %160, %150 ], [ %165, %164 ], [ %170, %166 ], [ %136, %141 ]
  %173 = icmp eq i32 %138, 7
  br i1 %173, label %208, label %174

174:                                              ; preds = %171
  %175 = load i64, ptr %118, align 8, !tbaa !13
  br label %176

176:                                              ; preds = %174, %135
  %177 = phi i64 [ %175, %174 ], [ %140, %135 ]
  %178 = phi ptr [ %172, %174 ], [ %136, %135 ]
  %179 = add nsw i32 %137, 9
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !13
  %183 = and i64 %182, %177
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %208, label %185

185:                                              ; preds = %176
  %186 = icmp ult i32 %137, 8
  br i1 %186, label %187, label %198

187:                                              ; preds = %185
  %188 = zext nneg i32 %137 to i64
  %189 = getelementptr inbounds i32, ptr %5, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !14
  %191 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %178, i32 noundef %179, i32 noundef %137, i32 noundef %190, i32 noundef 9, i32 noundef 0) #5
  %192 = load i32, ptr %189, align 4, !tbaa !14
  %193 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %191, i32 noundef %179, i32 noundef %137, i32 noundef %192, i32 noundef 7, i32 noundef 0) #5
  %194 = load i32, ptr %189, align 4, !tbaa !14
  %195 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %193, i32 noundef %179, i32 noundef %137, i32 noundef %194, i32 noundef 11, i32 noundef 0) #5
  %196 = load i32, ptr %189, align 4, !tbaa !14
  %197 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %195, i32 noundef %179, i32 noundef %137, i32 noundef %196, i32 noundef 3, i32 noundef 0) #5
  br label %208

198:                                              ; preds = %185
  %199 = load i32, ptr %114, align 8, !tbaa !30
  %200 = icmp eq i32 %137, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %178, i32 noundef %179, i32 noundef %137, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %208

203:                                              ; preds = %198
  %204 = sext i32 %137 to i64
  %205 = getelementptr inbounds i32, ptr %5, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !14
  %207 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %178, i32 noundef %179, i32 noundef %137, i32 noundef %206, i32 noundef 0, i32 noundef 0) #5
  br label %208

208:                                              ; preds = %176, %201, %203, %187, %171
  %209 = phi ptr [ %197, %187 ], [ %202, %201 ], [ %207, %203 ], [ %178, %176 ], [ %172, %171 ]
  %210 = load i64, ptr %3, align 8, !tbaa !13
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %309, label %135, !llvm.loop !32

212:                                              ; preds = %106
  %213 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %214 = load i64, ptr %213, align 8, !tbaa !13
  %215 = and i64 %214, %111
  %216 = shl i64 %215, 9
  %217 = and i64 %214, %113
  %218 = shl i64 %217, 7
  %219 = or i64 %218, %216
  %220 = load i64, ptr %9, align 8, !tbaa !33
  br i1 %116, label %221, label %226

221:                                              ; preds = %212
  %222 = zext nneg i32 %115 to i64
  %223 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !13
  %225 = or i64 %224, %220
  br label %226

226:                                              ; preds = %212, %221
  %227 = phi i64 [ %225, %221 ], [ %220, %212 ]
  %228 = and i64 %227, %219
  store i64 %228, ptr %3, align 8, !tbaa !13
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %309, label %230

230:                                              ; preds = %226, %305
  %231 = phi ptr [ %306, %305 ], [ %107, %226 ]
  %232 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %233 = and i32 %232, 7
  %234 = icmp eq i32 %233, 0
  %235 = load i64, ptr %213, align 8, !tbaa !13
  br i1 %234, label %272, label %236

236:                                              ; preds = %230
  %237 = add nsw i32 %232, -9
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !13
  %241 = and i64 %240, %235
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %267, label %243

243:                                              ; preds = %236
  %244 = and i32 %232, -8
  %245 = icmp eq i32 %244, 56
  br i1 %245, label %246, label %257

246:                                              ; preds = %243
  %247 = zext nneg i32 %232 to i64
  %248 = getelementptr inbounds i32, ptr %5, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !14
  %250 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %231, i32 noundef %237, i32 noundef %232, i32 noundef %249, i32 noundef 10, i32 noundef 0) #5
  %251 = load i32, ptr %248, align 4, !tbaa !14
  %252 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %250, i32 noundef %237, i32 noundef %232, i32 noundef %251, i32 noundef 8, i32 noundef 0) #5
  %253 = load i32, ptr %248, align 4, !tbaa !14
  %254 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %252, i32 noundef %237, i32 noundef %232, i32 noundef %253, i32 noundef 12, i32 noundef 0) #5
  %255 = load i32, ptr %248, align 4, !tbaa !14
  %256 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %254, i32 noundef %237, i32 noundef %232, i32 noundef %255, i32 noundef 4, i32 noundef 0) #5
  br label %267

257:                                              ; preds = %243
  %258 = load i32, ptr %114, align 8, !tbaa !30
  %259 = icmp eq i32 %232, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %231, i32 noundef %237, i32 noundef %232, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %267

262:                                              ; preds = %257
  %263 = sext i32 %232 to i64
  %264 = getelementptr inbounds i32, ptr %5, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !14
  %266 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %231, i32 noundef %237, i32 noundef %232, i32 noundef %265, i32 noundef 0, i32 noundef 0) #5
  br label %267

267:                                              ; preds = %236, %260, %262, %246
  %268 = phi ptr [ %256, %246 ], [ %261, %260 ], [ %266, %262 ], [ %231, %236 ]
  %269 = icmp eq i32 %233, 7
  br i1 %269, label %305, label %270

270:                                              ; preds = %267
  %271 = load i64, ptr %213, align 8, !tbaa !13
  br label %272

272:                                              ; preds = %270, %230
  %273 = phi i64 [ %271, %270 ], [ %235, %230 ]
  %274 = phi ptr [ %268, %270 ], [ %231, %230 ]
  %275 = add nsw i32 %232, -7
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !13
  %279 = and i64 %278, %273
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %305, label %281

281:                                              ; preds = %272
  %282 = and i32 %232, -8
  %283 = icmp eq i32 %282, 56
  br i1 %283, label %284, label %295

284:                                              ; preds = %281
  %285 = zext nneg i32 %232 to i64
  %286 = getelementptr inbounds i32, ptr %5, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !14
  %288 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %274, i32 noundef %275, i32 noundef %232, i32 noundef %287, i32 noundef 10, i32 noundef 0) #5
  %289 = load i32, ptr %286, align 4, !tbaa !14
  %290 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %288, i32 noundef %275, i32 noundef %232, i32 noundef %289, i32 noundef 8, i32 noundef 0) #5
  %291 = load i32, ptr %286, align 4, !tbaa !14
  %292 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %290, i32 noundef %275, i32 noundef %232, i32 noundef %291, i32 noundef 12, i32 noundef 0) #5
  %293 = load i32, ptr %286, align 4, !tbaa !14
  %294 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %292, i32 noundef %275, i32 noundef %232, i32 noundef %293, i32 noundef 4, i32 noundef 0) #5
  br label %305

295:                                              ; preds = %281
  %296 = load i32, ptr %114, align 8, !tbaa !30
  %297 = icmp eq i32 %232, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %274, i32 noundef %275, i32 noundef %232, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %305

300:                                              ; preds = %295
  %301 = sext i32 %232 to i64
  %302 = getelementptr inbounds i32, ptr %5, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !14
  %304 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %274, i32 noundef %275, i32 noundef %232, i32 noundef %303, i32 noundef 0, i32 noundef 0) #5
  br label %305

305:                                              ; preds = %272, %298, %300, %284, %267
  %306 = phi ptr [ %294, %284 ], [ %299, %298 ], [ %304, %300 ], [ %274, %272 ], [ %268, %267 ]
  %307 = load i64, ptr %3, align 8, !tbaa !13
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %230, !llvm.loop !34

309:                                              ; preds = %208, %305, %131, %226
  %310 = phi ptr [ %107, %226 ], [ %107, %131 ], [ %306, %305 ], [ %209, %208 ]
  %311 = load i32, ptr %6, align 4, !tbaa !12
  %312 = icmp eq i32 %311, 0
  %313 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %314 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %315 = select i1 %312, ptr %313, ptr %314
  %316 = load i64, ptr %315, align 8, !tbaa !13
  store i64 %316, ptr %3, align 8, !tbaa !13
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %341, label %322

318:                                              ; preds = %330, %322
  %319 = phi ptr [ %323, %322 ], [ %336, %330 ]
  %320 = load i64, ptr %3, align 8, !tbaa !13
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %339, label %322

322:                                              ; preds = %309, %318
  %323 = phi ptr [ %319, %318 ], [ %310, %309 ]
  %324 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !13
  %328 = and i64 %327, %13
  store i64 %328, ptr %4, align 8, !tbaa !13
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %318, label %330, !llvm.loop !35

330:                                              ; preds = %322, %330
  %331 = phi ptr [ %336, %330 ], [ %323, %322 ]
  %332 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, ptr %5, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !14
  %336 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %331, i32 noundef %324, i32 noundef %332, i32 noundef %335, i32 noundef 0, i32 noundef 0) #5
  %337 = load i64, ptr %4, align 8, !tbaa !13
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %318, label %330, !llvm.loop !36

339:                                              ; preds = %318
  %340 = load i32, ptr %6, align 4, !tbaa !12
  br label %341

341:                                              ; preds = %339, %309
  %342 = phi i32 [ %311, %309 ], [ %340, %339 ]
  %343 = phi ptr [ %310, %309 ], [ %319, %339 ]
  %344 = icmp eq i32 %342, 0
  %345 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %346 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %347 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %348 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %349 = select i1 %344, ptr %346, ptr %348
  %350 = select i1 %344, ptr %345, ptr %347
  %351 = load i64, ptr %350, align 8, !tbaa !13
  %352 = load i64, ptr %349, align 8, !tbaa !13
  %353 = or i64 %352, %351
  store i64 %353, ptr %3, align 8, !tbaa !13
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %376, label %359

355:                                              ; preds = %365, %359
  %356 = phi ptr [ %360, %359 ], [ %371, %365 ]
  %357 = load i64, ptr %3, align 8, !tbaa !13
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %374, label %359

359:                                              ; preds = %341, %355
  %360 = phi ptr [ %356, %355 ], [ %343, %341 ]
  %361 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %362 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %361) #5
  %363 = and i64 %362, %13
  store i64 %363, ptr %4, align 8, !tbaa !13
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %355, label %365, !llvm.loop !37

365:                                              ; preds = %359, %365
  %366 = phi ptr [ %371, %365 ], [ %360, %359 ]
  %367 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, ptr %5, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !14
  %371 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %366, i32 noundef %361, i32 noundef %367, i32 noundef %370, i32 noundef 0, i32 noundef 0) #5
  %372 = load i64, ptr %4, align 8, !tbaa !13
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %355, label %365, !llvm.loop !38

374:                                              ; preds = %355
  %375 = load i32, ptr %6, align 4, !tbaa !12
  br label %376

376:                                              ; preds = %374, %341
  %377 = phi i32 [ %342, %341 ], [ %375, %374 ]
  %378 = phi ptr [ %343, %341 ], [ %356, %374 ]
  %379 = icmp eq i32 %377, 0
  %380 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %381 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %382 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %383 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %384 = select i1 %379, ptr %381, ptr %383
  %385 = select i1 %379, ptr %380, ptr %382
  %386 = load i64, ptr %385, align 8, !tbaa !13
  %387 = load i64, ptr %384, align 8, !tbaa !13
  %388 = or i64 %387, %386
  store i64 %388, ptr %3, align 8, !tbaa !13
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %411, label %394

390:                                              ; preds = %400, %394
  %391 = phi ptr [ %395, %394 ], [ %406, %400 ]
  %392 = load i64, ptr %3, align 8, !tbaa !13
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %409, label %394

394:                                              ; preds = %376, %390
  %395 = phi ptr [ %391, %390 ], [ %378, %376 ]
  %396 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %397 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %396) #5
  %398 = and i64 %397, %13
  store i64 %398, ptr %4, align 8, !tbaa !13
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %390, label %400, !llvm.loop !39

400:                                              ; preds = %394, %400
  %401 = phi ptr [ %406, %400 ], [ %395, %394 ]
  %402 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, ptr %5, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !14
  %406 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %401, i32 noundef %396, i32 noundef %402, i32 noundef %405, i32 noundef 0, i32 noundef 0) #5
  %407 = load i64, ptr %4, align 8, !tbaa !13
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %390, label %400, !llvm.loop !40

409:                                              ; preds = %390
  %410 = load i32, ptr %6, align 4, !tbaa !12
  br label %411

411:                                              ; preds = %409, %376
  %412 = phi i32 [ %377, %376 ], [ %410, %409 ]
  %413 = phi ptr [ %378, %376 ], [ %391, %409 ]
  %414 = icmp eq i32 %412, 0
  %415 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %416 = load i32, ptr %415, align 4, !tbaa !24
  br i1 %414, label %442, label %417

417:                                              ; preds = %411
  %418 = and i32 %416, 2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %427, label %420

420:                                              ; preds = %417
  %421 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 1) #5
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %425 = load i32, ptr %424, align 8, !tbaa !25
  %426 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %413, i32 noundef %425, i32 noundef 62, i32 noundef 1) #5
  br label %427

427:                                              ; preds = %420, %423, %417
  %428 = phi ptr [ %413, %420 ], [ %426, %423 ], [ %413, %417 ]
  %429 = load i32, ptr %415, align 4, !tbaa !24
  %430 = and i32 %429, 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %439, label %432

432:                                              ; preds = %427
  %433 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 2) #5
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %437 = load i32, ptr %436, align 8, !tbaa !25
  %438 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %428, i32 noundef %437, i32 noundef 58, i32 noundef 2) #5
  br label %439

439:                                              ; preds = %432, %435, %427
  %440 = phi ptr [ %428, %432 ], [ %438, %435 ], [ %428, %427 ]
  %441 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %467

442:                                              ; preds = %411
  %443 = and i32 %416, 8
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %452, label %445

445:                                              ; preds = %442
  %446 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 3) #5
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %450 = load i32, ptr %449, align 4, !tbaa !26
  %451 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %413, i32 noundef %450, i32 noundef 6, i32 noundef 3) #5
  br label %452

452:                                              ; preds = %445, %448, %442
  %453 = phi ptr [ %413, %445 ], [ %451, %448 ], [ %413, %442 ]
  %454 = load i32, ptr %415, align 4, !tbaa !24
  %455 = and i32 %454, 16
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %464, label %457

457:                                              ; preds = %452
  %458 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 4) #5
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %462 = load i32, ptr %461, align 4, !tbaa !26
  %463 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %453, i32 noundef %462, i32 noundef 2, i32 noundef 4) #5
  br label %464

464:                                              ; preds = %457, %460, %452
  %465 = phi ptr [ %453, %457 ], [ %463, %460 ], [ %453, %452 ]
  %466 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %467

467:                                              ; preds = %464, %439
  %468 = phi ptr [ %441, %439 ], [ %466, %464 ]
  %469 = phi ptr [ %440, %439 ], [ %465, %464 ]
  %470 = load i32, ptr %468, align 4, !tbaa !14
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %471
  %473 = load i64, ptr %472, align 8, !tbaa !13
  %474 = and i64 %473, %13
  store i64 %474, ptr %3, align 8, !tbaa !13
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %485, label %476

476:                                              ; preds = %467, %476
  %477 = phi ptr [ %482, %476 ], [ %469, %467 ]
  %478 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, ptr %5, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !14
  %482 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %477, i32 noundef %470, i32 noundef %478, i32 noundef %481, i32 noundef 0, i32 noundef 0) #5
  %483 = load i64, ptr %3, align 8, !tbaa !13
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %476, !llvm.loop !41

485:                                              ; preds = %476, %467
  %486 = phi ptr [ %469, %467 ], [ %482, %476 ]
  %487 = ptrtoint ptr %486 to i64
  %488 = ptrtoint ptr %1 to i64
  %489 = sub i64 %487, %488
  %490 = lshr exact i64 %489, 2
  %491 = trunc i64 %490 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %491
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !6
  %11 = xor i64 %10, -1
  br i1 %8, label %120, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !31
  %15 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !13
  %18 = and i64 %17, %16
  %19 = lshr i64 %18, 8
  %20 = and i64 %19, %11
  store i64 %20, ptr %3, align 8, !tbaa !13
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %12, %22
  %23 = phi ptr [ %26, %22 ], [ %1, %12 ]
  %24 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %25 = add nsw i32 %24, 8
  %26 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %23, i32 noundef %25, i32 noundef %24, i32 noundef 13, i32 noundef 9, i32 noundef 0) #5
  %27 = load i64, ptr %3, align 8, !tbaa !13
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %22, !llvm.loop !42

29:                                               ; preds = %22
  %30 = load i64, ptr %15, align 8, !tbaa !13
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi i64 [ %16, %12 ], [ %30, %29 ]
  %33 = phi ptr [ %1, %12 ], [ %26, %29 ]
  %34 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !13
  %35 = xor i64 %34, -1
  %36 = and i64 %32, %35
  %37 = lshr i64 %36, 7
  %38 = load i64, ptr @FileMask, align 16, !tbaa !13
  %39 = xor i64 %38, -1
  %40 = and i64 %32, %39
  %41 = lshr i64 %40, 9
  %42 = or i64 %41, %37
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !30
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = zext nneg i32 %44 to i64
  %48 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !13
  %50 = or i64 %49, %14
  br label %51

51:                                               ; preds = %31, %46
  %52 = phi i64 [ %50, %46 ], [ %14, %31 ]
  %53 = and i64 %52, %42
  store i64 %53, ptr %3, align 8, !tbaa !13
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %230, label %55

55:                                               ; preds = %51, %116
  %56 = phi ptr [ %117, %116 ], [ %33, %51 ]
  %57 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %58 = and i32 %57, 7
  %59 = icmp eq i32 %58, 0
  %60 = load i64, ptr %15, align 8, !tbaa !13
  br i1 %59, label %90, label %61

61:                                               ; preds = %55
  %62 = add nsw i32 %57, 7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !13
  %66 = and i64 %65, %60
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %61
  %69 = icmp ult i32 %57, 8
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = zext nneg i32 %57 to i64
  %72 = getelementptr inbounds i32, ptr %5, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !14
  %74 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %56, i32 noundef %62, i32 noundef %57, i32 noundef %73, i32 noundef 9, i32 noundef 0) #5
  br label %85

75:                                               ; preds = %68
  %76 = load i32, ptr %43, align 8, !tbaa !30
  %77 = icmp eq i32 %57, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %56, i32 noundef %62, i32 noundef %57, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %85

80:                                               ; preds = %75
  %81 = sext i32 %57 to i64
  %82 = getelementptr inbounds i32, ptr %5, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !14
  %84 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %56, i32 noundef %62, i32 noundef %57, i32 noundef %83, i32 noundef 0, i32 noundef 0) #5
  br label %85

85:                                               ; preds = %61, %78, %80, %70
  %86 = phi ptr [ %74, %70 ], [ %79, %78 ], [ %84, %80 ], [ %56, %61 ]
  %87 = icmp eq i32 %58, 7
  br i1 %87, label %116, label %88

88:                                               ; preds = %85
  %89 = load i64, ptr %15, align 8, !tbaa !13
  br label %90

90:                                               ; preds = %88, %55
  %91 = phi i64 [ %89, %88 ], [ %60, %55 ]
  %92 = phi ptr [ %86, %88 ], [ %56, %55 ]
  %93 = add nsw i32 %57, 9
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !13
  %97 = and i64 %96, %91
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %90
  %100 = icmp ult i32 %57, 8
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = zext nneg i32 %57 to i64
  %103 = getelementptr inbounds i32, ptr %5, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !14
  %105 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %92, i32 noundef %93, i32 noundef %57, i32 noundef %104, i32 noundef 9, i32 noundef 0) #5
  br label %116

106:                                              ; preds = %99
  %107 = load i32, ptr %43, align 8, !tbaa !30
  %108 = icmp eq i32 %57, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %92, i32 noundef %93, i32 noundef %57, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %116

111:                                              ; preds = %106
  %112 = sext i32 %57 to i64
  %113 = getelementptr inbounds i32, ptr %5, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !14
  %115 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %92, i32 noundef %93, i32 noundef %57, i32 noundef %114, i32 noundef 0, i32 noundef 0) #5
  br label %116

116:                                              ; preds = %90, %109, %111, %101, %85
  %117 = phi ptr [ %105, %101 ], [ %110, %109 ], [ %115, %111 ], [ %92, %90 ], [ %86, %85 ]
  %118 = load i64, ptr %3, align 8, !tbaa !13
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %230, label %55, !llvm.loop !43

120:                                              ; preds = %2
  %121 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %122 = load i64, ptr %121, align 8, !tbaa !33
  %123 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %124 = load i64, ptr %123, align 8, !tbaa !13
  %125 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !13
  %126 = and i64 %125, %124
  %127 = shl i64 %126, 8
  %128 = and i64 %127, %11
  store i64 %128, ptr %3, align 8, !tbaa !13
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %120, %130
  %131 = phi ptr [ %134, %130 ], [ %1, %120 ]
  %132 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %133 = add nsw i32 %132, -8
  %134 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %131, i32 noundef %133, i32 noundef %132, i32 noundef 13, i32 noundef 10, i32 noundef 0) #5
  %135 = load i64, ptr %3, align 8, !tbaa !13
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %130, !llvm.loop !44

137:                                              ; preds = %130
  %138 = load i64, ptr %123, align 8, !tbaa !13
  br label %139

139:                                              ; preds = %137, %120
  %140 = phi i64 [ %124, %120 ], [ %138, %137 ]
  %141 = phi ptr [ %1, %120 ], [ %134, %137 ]
  %142 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !13
  %143 = xor i64 %142, -1
  %144 = and i64 %140, %143
  %145 = shl i64 %144, 9
  %146 = load i64, ptr @FileMask, align 16, !tbaa !13
  %147 = xor i64 %146, -1
  %148 = and i64 %140, %147
  %149 = shl i64 %148, 7
  %150 = or i64 %149, %145
  %151 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %152 = load i32, ptr %151, align 8, !tbaa !30
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %139
  %155 = zext nneg i32 %152 to i64
  %156 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !13
  %158 = or i64 %157, %122
  br label %159

159:                                              ; preds = %139, %154
  %160 = phi i64 [ %158, %154 ], [ %122, %139 ]
  %161 = and i64 %160, %150
  store i64 %161, ptr %3, align 8, !tbaa !13
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %230, label %163

163:                                              ; preds = %159, %226
  %164 = phi ptr [ %227, %226 ], [ %141, %159 ]
  %165 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %166 = and i32 %165, 7
  %167 = icmp eq i32 %166, 0
  %168 = load i64, ptr %123, align 8, !tbaa !13
  br i1 %167, label %199, label %169

169:                                              ; preds = %163
  %170 = add nsw i32 %165, -9
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !13
  %174 = and i64 %173, %168
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %169
  %177 = and i32 %165, -8
  %178 = icmp eq i32 %177, 56
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = zext nneg i32 %165 to i64
  %181 = getelementptr inbounds i32, ptr %5, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !14
  %183 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %164, i32 noundef %170, i32 noundef %165, i32 noundef %182, i32 noundef 10, i32 noundef 0) #5
  br label %194

184:                                              ; preds = %176
  %185 = load i32, ptr %151, align 8, !tbaa !30
  %186 = icmp eq i32 %165, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %164, i32 noundef %170, i32 noundef %165, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %194

189:                                              ; preds = %184
  %190 = sext i32 %165 to i64
  %191 = getelementptr inbounds i32, ptr %5, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !14
  %193 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %164, i32 noundef %170, i32 noundef %165, i32 noundef %192, i32 noundef 0, i32 noundef 0) #5
  br label %194

194:                                              ; preds = %169, %187, %189, %179
  %195 = phi ptr [ %183, %179 ], [ %188, %187 ], [ %193, %189 ], [ %164, %169 ]
  %196 = icmp eq i32 %166, 7
  br i1 %196, label %226, label %197

197:                                              ; preds = %194
  %198 = load i64, ptr %123, align 8, !tbaa !13
  br label %199

199:                                              ; preds = %197, %163
  %200 = phi i64 [ %198, %197 ], [ %168, %163 ]
  %201 = phi ptr [ %195, %197 ], [ %164, %163 ]
  %202 = add nsw i32 %165, -7
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !13
  %206 = and i64 %205, %200
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %226, label %208

208:                                              ; preds = %199
  %209 = and i32 %165, -8
  %210 = icmp eq i32 %209, 56
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = zext nneg i32 %165 to i64
  %213 = getelementptr inbounds i32, ptr %5, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !14
  %215 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %201, i32 noundef %202, i32 noundef %165, i32 noundef %214, i32 noundef 10, i32 noundef 0) #5
  br label %226

216:                                              ; preds = %208
  %217 = load i32, ptr %151, align 8, !tbaa !30
  %218 = icmp eq i32 %165, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %201, i32 noundef %202, i32 noundef %165, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %226

221:                                              ; preds = %216
  %222 = sext i32 %165 to i64
  %223 = getelementptr inbounds i32, ptr %5, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !14
  %225 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %201, i32 noundef %202, i32 noundef %165, i32 noundef %224, i32 noundef 0, i32 noundef 0) #5
  br label %226

226:                                              ; preds = %199, %219, %221, %211, %194
  %227 = phi ptr [ %215, %211 ], [ %220, %219 ], [ %225, %221 ], [ %201, %199 ], [ %195, %194 ]
  %228 = load i64, ptr %3, align 8, !tbaa !13
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %163, !llvm.loop !45

230:                                              ; preds = %116, %226, %51, %159
  %231 = phi i64 [ %122, %159 ], [ %14, %51 ], [ %122, %226 ], [ %14, %116 ]
  %232 = phi ptr [ %141, %159 ], [ %33, %51 ], [ %227, %226 ], [ %117, %116 ]
  %233 = load i32, ptr %6, align 4, !tbaa !12
  %234 = icmp eq i32 %233, 0
  %235 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %236 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %237 = select i1 %234, ptr %236, ptr %235
  %238 = load i32, ptr %237, align 4, !tbaa !14
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !13
  %242 = and i64 %241, %231
  store i64 %242, ptr %3, align 8, !tbaa !13
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %230, %244
  %245 = phi ptr [ %250, %244 ], [ %232, %230 ]
  %246 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %5, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !14
  %250 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %245, i32 noundef %238, i32 noundef %246, i32 noundef %249, i32 noundef 0, i32 noundef 0) #5
  %251 = load i64, ptr %3, align 8, !tbaa !13
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %244, !llvm.loop !46

253:                                              ; preds = %244
  %254 = load i32, ptr %6, align 4, !tbaa !12
  br label %255

255:                                              ; preds = %253, %230
  %256 = phi i32 [ %233, %230 ], [ %254, %253 ]
  %257 = phi ptr [ %232, %230 ], [ %250, %253 ]
  %258 = icmp eq i32 %256, 0
  %259 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %260 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %261 = select i1 %258, ptr %259, ptr %260
  %262 = load i64, ptr %261, align 8, !tbaa !13
  store i64 %262, ptr %3, align 8, !tbaa !13
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %287, label %268

264:                                              ; preds = %276, %268
  %265 = phi ptr [ %269, %268 ], [ %282, %276 ]
  %266 = load i64, ptr %3, align 8, !tbaa !13
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %285, label %268

268:                                              ; preds = %255, %264
  %269 = phi ptr [ %265, %264 ], [ %257, %255 ]
  %270 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %271
  %273 = load i64, ptr %272, align 8, !tbaa !13
  %274 = and i64 %273, %231
  store i64 %274, ptr %4, align 8, !tbaa !13
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %264, label %276, !llvm.loop !47

276:                                              ; preds = %268, %276
  %277 = phi ptr [ %282, %276 ], [ %269, %268 ]
  %278 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %5, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !14
  %282 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %277, i32 noundef %270, i32 noundef %278, i32 noundef %281, i32 noundef 0, i32 noundef 0) #5
  %283 = load i64, ptr %4, align 8, !tbaa !13
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %264, label %276, !llvm.loop !48

285:                                              ; preds = %264
  %286 = load i32, ptr %6, align 4, !tbaa !12
  br label %287

287:                                              ; preds = %285, %255
  %288 = phi i32 [ %256, %255 ], [ %286, %285 ]
  %289 = phi ptr [ %257, %255 ], [ %265, %285 ]
  %290 = icmp eq i32 %288, 0
  %291 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %292 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %293 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %294 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %295 = select i1 %290, ptr %292, ptr %294
  %296 = select i1 %290, ptr %291, ptr %293
  %297 = load i64, ptr %296, align 8, !tbaa !13
  %298 = load i64, ptr %295, align 8, !tbaa !13
  %299 = or i64 %298, %297
  store i64 %299, ptr %3, align 8, !tbaa !13
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %322, label %305

301:                                              ; preds = %311, %305
  %302 = phi ptr [ %306, %305 ], [ %317, %311 ]
  %303 = load i64, ptr %3, align 8, !tbaa !13
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %320, label %305

305:                                              ; preds = %287, %301
  %306 = phi ptr [ %302, %301 ], [ %289, %287 ]
  %307 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %308 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %307) #5
  %309 = and i64 %308, %231
  store i64 %309, ptr %4, align 8, !tbaa !13
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %301, label %311, !llvm.loop !49

311:                                              ; preds = %305, %311
  %312 = phi ptr [ %317, %311 ], [ %306, %305 ]
  %313 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, ptr %5, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !14
  %317 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %312, i32 noundef %307, i32 noundef %313, i32 noundef %316, i32 noundef 0, i32 noundef 0) #5
  %318 = load i64, ptr %4, align 8, !tbaa !13
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %301, label %311, !llvm.loop !50

320:                                              ; preds = %301
  %321 = load i32, ptr %6, align 4, !tbaa !12
  br label %322

322:                                              ; preds = %320, %287
  %323 = phi i32 [ %288, %287 ], [ %321, %320 ]
  %324 = phi ptr [ %289, %287 ], [ %302, %320 ]
  %325 = icmp eq i32 %323, 0
  %326 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %327 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %328 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %329 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %330 = select i1 %325, ptr %327, ptr %329
  %331 = select i1 %325, ptr %326, ptr %328
  %332 = load i64, ptr %331, align 8, !tbaa !13
  %333 = load i64, ptr %330, align 8, !tbaa !13
  %334 = or i64 %333, %332
  store i64 %334, ptr %3, align 8, !tbaa !13
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %355, label %340

336:                                              ; preds = %346, %340
  %337 = phi ptr [ %341, %340 ], [ %352, %346 ]
  %338 = load i64, ptr %3, align 8, !tbaa !13
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %355, label %340

340:                                              ; preds = %322, %336
  %341 = phi ptr [ %337, %336 ], [ %324, %322 ]
  %342 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %343 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %342) #5
  %344 = and i64 %343, %231
  store i64 %344, ptr %4, align 8, !tbaa !13
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %336, label %346, !llvm.loop !51

346:                                              ; preds = %340, %346
  %347 = phi ptr [ %352, %346 ], [ %341, %340 ]
  %348 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, ptr %5, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !14
  %352 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %347, i32 noundef %342, i32 noundef %348, i32 noundef %351, i32 noundef 0, i32 noundef 0) #5
  %353 = load i64, ptr %4, align 8, !tbaa !13
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %336, label %346, !llvm.loop !52

355:                                              ; preds = %336, %322
  %356 = phi ptr [ %324, %322 ], [ %337, %336 ]
  %357 = ptrtoint ptr %356 to i64
  %358 = ptrtoint ptr %1 to i64
  %359 = sub i64 %357, %358
  %360 = lshr exact i64 %359, 2
  %361 = trunc i64 %360 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %361
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %13 = select i1 %8, ptr %12, ptr %10
  %14 = select i1 %8, ptr %11, ptr %9
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = load i64, ptr %13, align 8, !tbaa !13
  %17 = xor i64 %16, -1
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %18
  %22 = load i64, ptr %21, align 8, !tbaa !13
  %23 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %18
  %24 = load i64, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %27 = select i1 %8, ptr %25, ptr %26
  %28 = load i64, ptr %27, align 8, !tbaa !13
  store i64 %28, ptr %3, align 8, !tbaa !13
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %18
  br label %36

32:                                               ; preds = %46, %36
  %33 = phi ptr [ %37, %36 ], [ %52, %46 ]
  %34 = load i64, ptr %3, align 8, !tbaa !13
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %30, %32
  %37 = phi ptr [ %1, %30 ], [ %33, %32 ]
  %38 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !13
  %42 = load i64, ptr %31, align 8, !tbaa !13
  %43 = and i64 %42, %41
  %44 = and i64 %43, %17
  store i64 %44, ptr %4, align 8, !tbaa !13
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %32, label %46, !llvm.loop !53

46:                                               ; preds = %36, %46
  %47 = phi ptr [ %52, %46 ], [ %37, %36 ]
  %48 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %5, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !14
  %52 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %47, i32 noundef %38, i32 noundef %48, i32 noundef %51, i32 noundef 0, i32 noundef 0) #5
  %53 = load i64, ptr %4, align 8, !tbaa !13
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %32, label %46, !llvm.loop !54

55:                                               ; preds = %32
  %56 = load i32, ptr %6, align 4, !tbaa !12
  br label %57

57:                                               ; preds = %55, %2
  %58 = phi i32 [ %7, %2 ], [ %56, %55 ]
  %59 = phi ptr [ %1, %2 ], [ %33, %55 ]
  %60 = icmp eq i32 %58, 0
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !6
  %63 = xor i64 %62, -1
  br i1 %60, label %68, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %66 = load i64, ptr %65, align 8, !tbaa !13
  %67 = lshr i64 %66, 8
  br label %72

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %70 = load i64, ptr %69, align 8, !tbaa !13
  %71 = shl i64 %70, 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i64 [ %71, %68 ], [ %67, %64 ]
  %74 = phi ptr [ @PawnAttacksWhite, %68 ], [ @PawnAttacksBlack, %64 ]
  %75 = and i64 %73, %63
  %76 = getelementptr inbounds [64 x i64], ptr %74, i64 0, i64 %18
  %77 = load i64, ptr %76, align 8, !tbaa !13
  %78 = and i64 %77, %75
  store i64 %78, ptr %3, align 8, !tbaa !13
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %72, %80
  %81 = phi ptr [ %87, %80 ], [ %59, %72 ]
  %82 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %83 = load i32, ptr %6, align 4, !tbaa !12
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 -8, i32 8
  %86 = add nsw i32 %85, %82
  %87 = call noundef ptr @_Z8add_movePiiii(ptr noundef %81, i32 noundef %86, i32 noundef %82, i32 noundef 0) #5
  %88 = load i64, ptr %3, align 8, !tbaa !13
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %80, !llvm.loop !55

90:                                               ; preds = %80
  %91 = load i32, ptr %6, align 4, !tbaa !12
  br label %92

92:                                               ; preds = %90, %72
  %93 = phi i32 [ %58, %72 ], [ %91, %90 ]
  %94 = phi ptr [ %59, %72 ], [ %87, %90 ]
  %95 = icmp eq i32 %93, 0
  %96 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %97 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %100 = select i1 %95, ptr %97, ptr %99
  %101 = select i1 %95, ptr %96, ptr %98
  %102 = load i64, ptr %101, align 8, !tbaa !13
  %103 = load i64, ptr %100, align 8, !tbaa !13
  %104 = or i64 %103, %102
  store i64 %104, ptr %3, align 8, !tbaa !13
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %134, label %110

106:                                              ; preds = %128, %110
  %107 = phi ptr [ %111, %110 ], [ %129, %128 ]
  %108 = load i64, ptr %3, align 8, !tbaa !13
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %92, %106
  %111 = phi ptr [ %107, %106 ], [ %94, %92 ]
  %112 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %113 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %112) #5
  %114 = and i64 %22, %113
  %115 = and i64 %114, %17
  store i64 %115, ptr %4, align 8, !tbaa !13
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %106, label %117, !llvm.loop !56

117:                                              ; preds = %110, %128
  %118 = phi ptr [ %129, %128 ], [ %111, %110 ]
  %119 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %120 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %119) #5
  %121 = and i64 %120, %24
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %117
  %124 = sext i32 %119 to i64
  %125 = getelementptr inbounds i32, ptr %5, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !14
  %127 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %118, i32 noundef %112, i32 noundef %119, i32 noundef %126, i32 noundef 0, i32 noundef 0) #5
  br label %128

128:                                              ; preds = %123, %117
  %129 = phi ptr [ %127, %123 ], [ %118, %117 ]
  %130 = load i64, ptr %4, align 8, !tbaa !13
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %106, label %117, !llvm.loop !57

132:                                              ; preds = %106
  %133 = load i32, ptr %6, align 4, !tbaa !12
  br label %134

134:                                              ; preds = %132, %92
  %135 = phi i32 [ %93, %92 ], [ %133, %132 ]
  %136 = phi ptr [ %94, %92 ], [ %107, %132 ]
  %137 = icmp eq i32 %135, 0
  %138 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %139 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %140 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %141 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %142 = select i1 %137, ptr %139, ptr %141
  %143 = select i1 %137, ptr %138, ptr %140
  %144 = load i64, ptr %143, align 8, !tbaa !13
  %145 = load i64, ptr %142, align 8, !tbaa !13
  %146 = or i64 %145, %144
  store i64 %146, ptr %3, align 8, !tbaa !13
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %174, label %152

148:                                              ; preds = %170, %152
  %149 = phi ptr [ %153, %152 ], [ %171, %170 ]
  %150 = load i64, ptr %3, align 8, !tbaa !13
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %174, label %152

152:                                              ; preds = %134, %148
  %153 = phi ptr [ %149, %148 ], [ %136, %134 ]
  %154 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %155 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %154) #5
  %156 = and i64 %20, %155
  %157 = and i64 %156, %17
  store i64 %157, ptr %4, align 8, !tbaa !13
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %148, label %159, !llvm.loop !58

159:                                              ; preds = %152, %170
  %160 = phi ptr [ %171, %170 ], [ %153, %152 ]
  %161 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %162 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %161) #5
  %163 = and i64 %162, %24
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %159
  %166 = sext i32 %161 to i64
  %167 = getelementptr inbounds i32, ptr %5, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !14
  %169 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %160, i32 noundef %154, i32 noundef %161, i32 noundef %168, i32 noundef 0, i32 noundef 0) #5
  br label %170

170:                                              ; preds = %165, %159
  %171 = phi ptr [ %169, %165 ], [ %160, %159 ]
  %172 = load i64, ptr %4, align 8, !tbaa !13
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %148, label %159, !llvm.loop !59

174:                                              ; preds = %148, %134
  %175 = phi ptr [ %136, %134 ], [ %149, %148 ]
  %176 = ptrtoint ptr %175 to i64
  %177 = ptrtoint ptr %1 to i64
  %178 = sub i64 %176, %177
  %179 = lshr exact i64 %178, 2
  %180 = trunc i64 %179 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %180
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = tail call noundef i32 @_Z4ranki(i32 noundef %12) #5
  %14 = add i32 %2, -11
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = add i32 %2, -7
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %3
  %20 = phi ptr [ @BishopMask, %3 ], [ @RookMask, %16 ]
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds [64 x i64], ptr %20, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !13
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i64 [ -1, %16 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !6
  %28 = xor i64 %27, -1
  %29 = and i64 %25, %28
  %30 = load i32, ptr %6, align 4, !tbaa !12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %34 = load i64, ptr %33, align 8, !tbaa !13
  %35 = lshr i64 %34, 8
  %36 = load i64, ptr @RankMask, align 16, !tbaa !13
  %37 = or i64 %27, %36
  %38 = xor i64 %37, -1
  %39 = and i64 %35, %38
  %40 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !13
  %41 = and i64 %40, %34
  %42 = lshr i64 %41, 16
  %43 = lshr i64 %27, 8
  %44 = or i64 %43, %27
  %45 = xor i64 %44, -1
  %46 = and i64 %42, %45
  store i64 %46, ptr %5, align 8, !tbaa !13
  %47 = or i64 %46, %39
  %48 = and i64 %47, %25
  store i64 %48, ptr %4, align 8, !tbaa !13
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %98, label %50

50:                                               ; preds = %32, %50
  %51 = phi ptr [ %62, %50 ], [ %1, %32 ]
  %52 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %53 = load i64, ptr %33, align 8, !tbaa !13
  %54 = add nsw i32 %52, 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !13
  %58 = and i64 %57, %53
  %59 = icmp eq i64 %58, 0
  %60 = add nsw i32 %52, 16
  %61 = select i1 %59, i32 %60, i32 %54
  %62 = call noundef ptr @_Z8add_movePiiii(ptr noundef %51, i32 noundef %61, i32 noundef %52, i32 noundef 0) #5
  %63 = load i64, ptr %4, align 8, !tbaa !13
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %98, label %50, !llvm.loop !60

65:                                               ; preds = %24
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %67 = load i64, ptr %66, align 8, !tbaa !13
  %68 = shl i64 %67, 8
  %69 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 7), align 8, !tbaa !13
  %70 = or i64 %27, %69
  %71 = xor i64 %70, -1
  %72 = and i64 %68, %71
  %73 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !13
  %74 = and i64 %73, %67
  %75 = shl i64 %74, 16
  %76 = shl i64 %27, 8
  %77 = or i64 %76, %27
  %78 = xor i64 %77, -1
  %79 = and i64 %75, %78
  store i64 %79, ptr %5, align 8, !tbaa !13
  %80 = or i64 %79, %72
  %81 = and i64 %80, %25
  store i64 %81, ptr %4, align 8, !tbaa !13
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %65, %83
  %84 = phi ptr [ %95, %83 ], [ %1, %65 ]
  %85 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %86 = load i64, ptr %66, align 8, !tbaa !13
  %87 = add nsw i32 %85, -8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !13
  %91 = and i64 %90, %86
  %92 = icmp eq i64 %91, 0
  %93 = add nsw i32 %85, -16
  %94 = select i1 %92, i32 %93, i32 %87
  %95 = call noundef ptr @_Z8add_movePiiii(ptr noundef %84, i32 noundef %94, i32 noundef %85, i32 noundef 0) #5
  %96 = load i64, ptr %4, align 8, !tbaa !13
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %83, !llvm.loop !61

98:                                               ; preds = %50, %83, %32, %65
  %99 = phi ptr [ %1, %65 ], [ %1, %32 ], [ %95, %83 ], [ %62, %50 ]
  %100 = load i32, ptr %6, align 4, !tbaa !12
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %103 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %104 = select i1 %101, ptr %102, ptr %103
  %105 = load i64, ptr %104, align 8, !tbaa !13
  store i64 %105, ptr %4, align 8, !tbaa !13
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %127, label %111

107:                                              ; preds = %119, %111
  %108 = phi ptr [ %112, %111 ], [ %122, %119 ]
  %109 = load i64, ptr %4, align 8, !tbaa !13
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %98, %107
  %112 = phi ptr [ %108, %107 ], [ %99, %98 ]
  %113 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !13
  %117 = and i64 %116, %29
  store i64 %117, ptr %5, align 8, !tbaa !13
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %107, label %119, !llvm.loop !62

119:                                              ; preds = %111, %119
  %120 = phi ptr [ %122, %119 ], [ %112, %111 ]
  %121 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #5
  %122 = call noundef ptr @_Z8add_movePiiii(ptr noundef %120, i32 noundef %113, i32 noundef %121, i32 noundef 0) #5
  %123 = load i64, ptr %5, align 8, !tbaa !13
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %107, label %119, !llvm.loop !63

125:                                              ; preds = %107
  %126 = load i32, ptr %6, align 4, !tbaa !12
  br label %127

127:                                              ; preds = %125, %98
  %128 = phi i32 [ %100, %98 ], [ %126, %125 ]
  %129 = phi ptr [ %99, %98 ], [ %108, %125 ]
  %130 = icmp eq i32 %128, 0
  %131 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %132 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %133 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %134 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %135 = select i1 %130, ptr %132, ptr %134
  %136 = select i1 %130, ptr %131, ptr %133
  %137 = load i64, ptr %136, align 8, !tbaa !13
  %138 = load i64, ptr %135, align 8, !tbaa !13
  %139 = or i64 %138, %137
  store i64 %139, ptr %4, align 8, !tbaa !13
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %159, label %145

141:                                              ; preds = %151, %145
  %142 = phi ptr [ %146, %145 ], [ %154, %151 ]
  %143 = load i64, ptr %4, align 8, !tbaa !13
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %127, %141
  %146 = phi ptr [ %142, %141 ], [ %129, %127 ]
  %147 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %148 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %147) #5
  %149 = and i64 %148, %29
  store i64 %149, ptr %5, align 8, !tbaa !13
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %141, label %151, !llvm.loop !64

151:                                              ; preds = %145, %151
  %152 = phi ptr [ %154, %151 ], [ %146, %145 ]
  %153 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #5
  %154 = call noundef ptr @_Z8add_movePiiii(ptr noundef %152, i32 noundef %147, i32 noundef %153, i32 noundef 0) #5
  %155 = load i64, ptr %5, align 8, !tbaa !13
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %141, label %151, !llvm.loop !65

157:                                              ; preds = %141
  %158 = load i32, ptr %6, align 4, !tbaa !12
  br label %159

159:                                              ; preds = %157, %127
  %160 = phi i32 [ %128, %127 ], [ %158, %157 ]
  %161 = phi ptr [ %129, %127 ], [ %142, %157 ]
  %162 = icmp eq i32 %160, 0
  %163 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %164 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %165 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %166 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %167 = select i1 %162, ptr %164, ptr %166
  %168 = select i1 %162, ptr %163, ptr %165
  %169 = load i64, ptr %168, align 8, !tbaa !13
  %170 = load i64, ptr %167, align 8, !tbaa !13
  %171 = or i64 %170, %169
  store i64 %171, ptr %4, align 8, !tbaa !13
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %189, label %177

173:                                              ; preds = %183, %177
  %174 = phi ptr [ %178, %177 ], [ %186, %183 ]
  %175 = load i64, ptr %4, align 8, !tbaa !13
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %159, %173
  %178 = phi ptr [ %174, %173 ], [ %161, %159 ]
  %179 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %180 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %179) #5
  %181 = and i64 %180, %29
  store i64 %181, ptr %5, align 8, !tbaa !13
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %173, label %183, !llvm.loop !66

183:                                              ; preds = %177, %183
  %184 = phi ptr [ %186, %183 ], [ %178, %177 ]
  %185 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #5
  %186 = call noundef ptr @_Z8add_movePiiii(ptr noundef %184, i32 noundef %179, i32 noundef %185, i32 noundef 0) #5
  %187 = load i64, ptr %5, align 8, !tbaa !13
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %173, label %183, !llvm.loop !67

189:                                              ; preds = %173, %159
  %190 = phi ptr [ %161, %159 ], [ %174, %173 ]
  %191 = ptrtoint ptr %190 to i64
  %192 = ptrtoint ptr %1 to i64
  %193 = sub i64 %191, %192
  %194 = lshr exact i64 %193, 2
  %195 = trunc i64 %194 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret i32 %195
}

; Function Attrs: optsize
declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !6
  %10 = xor i64 %9, -1
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %13 = select i1 %7, ptr %11, ptr %12
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = and i64 %17, %10
  store i64 %18, ptr %4, align 8, !tbaa !13
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3, %20
  %21 = phi ptr [ %23, %20 ], [ %1, %3 ]
  %22 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %23 = call noundef ptr @_Z8add_movePiiii(ptr noundef %21, i32 noundef %14, i32 noundef %22, i32 noundef 0) #5
  %24 = load i64, ptr %4, align 8, !tbaa !13
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %20, !llvm.loop !68

26:                                               ; preds = %20, %3
  %27 = phi ptr [ %1, %3 ], [ %23, %20 ]
  %28 = call noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %0, ptr noundef %27) #5
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  %31 = add i32 %2, -1
  %32 = icmp ult i32 %31, 6
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = call noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef %0, ptr noundef %30, i32 noundef %2) #5
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %30, i64 %35
  br label %37

37:                                               ; preds = %26, %33
  %38 = phi ptr [ %36, %33 ], [ %30, %26 ]
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %1 to i64
  %41 = sub i64 %39, %40
  %42 = lshr exact i64 %41, 2
  %43 = trunc i64 %42 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret i32 %43
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 264}
!7 = !{!"_ZTS7state_t", !8, i64 0, !9, i64 4, !11, i64 264, !11, i64 272, !11, i64 280, !9, i64 288, !8, i64 392, !8, i64 396, !9, i64 400, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !11, i64 480, !11, i64 488, !9, i64 496, !9, i64 2544, !9, i64 2800, !9, i64 3056, !11, i64 4080, !11, i64 4088, !8, i64 4096, !9, i64 4100, !8, i64 4356, !8, i64 4360, !8, i64 4364, !8, i64 4368, !8, i64 4372, !8, i64 4376, !8, i64 4380, !8, i64 4384, !8, i64 4388, !8, i64 4392, !9, i64 4400}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long long", !9, i64 0}
!12 = !{!7, !8, i64 460}
!13 = !{!11, !11, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{!7, !8, i64 452}
!25 = !{!7, !8, i64 464}
!26 = !{!7, !8, i64 468}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = !{!7, !8, i64 456}
!31 = !{!7, !11, i64 272}
!32 = distinct !{!32, !16}
!33 = !{!7, !11, i64 280}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
