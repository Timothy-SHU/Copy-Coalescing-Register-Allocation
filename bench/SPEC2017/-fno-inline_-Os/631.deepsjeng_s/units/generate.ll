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
define dso_local noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !69 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !70
  %9 = xor i64 %8, -1
  %10 = load i32, ptr %6, align 4, !tbaa !76
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %12, !prof !77

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !78
  %15 = lshr i64 %14, 8
  %16 = and i64 %15, %9
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !78
  %18 = and i64 %17, %14
  %19 = lshr i64 %18, 16
  %20 = lshr i64 %8, 8
  %21 = or i64 %20, %8
  %22 = xor i64 %21, -1
  %23 = and i64 %19, %22
  store i64 %23, ptr %4, align 8, !tbaa !78
  %24 = or i64 %23, %16
  store i64 %24, ptr %3, align 8, !tbaa !78
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %101, label %26, !prof !79

26:                                               ; preds = %12, %52
  %27 = phi ptr [ %53, %52 ], [ %1, %12 ]
  %28 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %29 = load i64, ptr %13, align 8, !tbaa !78
  %30 = add nsw i32 %28, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !78
  %34 = and i64 %33, %29
  %35 = icmp eq i64 %34, 0
  %36 = add nsw i32 %28, 16
  %37 = select i1 %35, i32 %36, i32 %30, !prof !80
  %38 = icmp ult i32 %28, 8
  br i1 %38, label %39, label %50, !prof !81

39:                                               ; preds = %26
  %40 = zext nneg i32 %28 to i64
  %41 = getelementptr inbounds i32, ptr %5, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !82
  %43 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %27, i32 noundef %37, i32 noundef %28, i32 noundef %42, i32 noundef 9, i32 noundef 0) #5
  %44 = load i32, ptr %41, align 4, !tbaa !82
  %45 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %43, i32 noundef %37, i32 noundef %28, i32 noundef %44, i32 noundef 7, i32 noundef 0) #5
  %46 = load i32, ptr %41, align 4, !tbaa !82
  %47 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %45, i32 noundef %37, i32 noundef %28, i32 noundef %46, i32 noundef 11, i32 noundef 0) #5
  %48 = load i32, ptr %41, align 4, !tbaa !82
  %49 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %47, i32 noundef %37, i32 noundef %28, i32 noundef %48, i32 noundef 3, i32 noundef 0) #5
  br label %52

50:                                               ; preds = %26
  %51 = call noundef ptr @_Z8add_movePiiii(ptr noundef %27, i32 noundef %37, i32 noundef %28, i32 noundef 0) #5
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi ptr [ %49, %39 ], [ %51, %50 ]
  %54 = load i64, ptr %3, align 8, !tbaa !78
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %101, label %26, !prof !83, !llvm.loop !84

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %58 = load i64, ptr %57, align 8, !tbaa !78
  %59 = shl i64 %58, 8
  %60 = and i64 %59, %9
  %61 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !78
  %62 = and i64 %61, %58
  %63 = shl i64 %62, 16
  %64 = shl i64 %8, 8
  %65 = or i64 %64, %8
  %66 = xor i64 %65, -1
  %67 = and i64 %63, %66
  store i64 %67, ptr %4, align 8, !tbaa !78
  %68 = or i64 %67, %60
  store i64 %68, ptr %3, align 8, !tbaa !78
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %101, label %70, !prof !86

70:                                               ; preds = %56, %97
  %71 = phi ptr [ %98, %97 ], [ %1, %56 ]
  %72 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %73 = load i64, ptr %57, align 8, !tbaa !78
  %74 = add nsw i32 %72, -8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !78
  %78 = and i64 %77, %73
  %79 = icmp eq i64 %78, 0
  %80 = add nsw i32 %72, -16
  %81 = select i1 %79, i32 %80, i32 %74, !prof !87
  %82 = and i32 %72, -8
  %83 = icmp eq i32 %82, 56
  br i1 %83, label %84, label %95, !prof !88

84:                                               ; preds = %70
  %85 = zext nneg i32 %72 to i64
  %86 = getelementptr inbounds i32, ptr %5, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !82
  %88 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %71, i32 noundef %81, i32 noundef %72, i32 noundef %87, i32 noundef 10, i32 noundef 0) #5
  %89 = load i32, ptr %86, align 4, !tbaa !82
  %90 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %88, i32 noundef %81, i32 noundef %72, i32 noundef %89, i32 noundef 8, i32 noundef 0) #5
  %91 = load i32, ptr %86, align 4, !tbaa !82
  %92 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %90, i32 noundef %81, i32 noundef %72, i32 noundef %91, i32 noundef 12, i32 noundef 0) #5
  %93 = load i32, ptr %86, align 4, !tbaa !82
  %94 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %92, i32 noundef %81, i32 noundef %72, i32 noundef %93, i32 noundef 4, i32 noundef 0) #5
  br label %97

95:                                               ; preds = %70
  %96 = call noundef ptr @_Z8add_movePiiii(ptr noundef %71, i32 noundef %81, i32 noundef %72, i32 noundef 0) #5
  br label %97

97:                                               ; preds = %95, %84
  %98 = phi ptr [ %94, %84 ], [ %96, %95 ]
  %99 = load i64, ptr %3, align 8, !tbaa !78
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %70, !prof !89, !llvm.loop !90

101:                                              ; preds = %52, %97, %12, %56
  %102 = phi ptr [ %1, %56 ], [ %1, %12 ], [ %98, %97 ], [ %53, %52 ]
  %103 = load i32, ptr %6, align 4, !tbaa !76
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %106 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %107 = select i1 %104, ptr %105, ptr %106, !prof !77
  %108 = load i64, ptr %107, align 8, !tbaa !78
  store i64 %108, ptr %3, align 8, !tbaa !78
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %133, label %114, !prof !91

110:                                              ; preds = %122, %114
  %111 = phi ptr [ %115, %114 ], [ %128, %122 ]
  %112 = load i64, ptr %3, align 8, !tbaa !78
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %131, label %114, !prof !92

114:                                              ; preds = %101, %110
  %115 = phi ptr [ %111, %110 ], [ %102, %101 ]
  %116 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !78
  %120 = and i64 %119, %9
  store i64 %120, ptr %4, align 8, !tbaa !78
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %110, label %122, !prof !93, !llvm.loop !94

122:                                              ; preds = %114, %122
  %123 = phi ptr [ %128, %122 ], [ %115, %114 ]
  %124 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %5, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !82
  %128 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %123, i32 noundef %116, i32 noundef %124, i32 noundef %127, i32 noundef 0, i32 noundef 0) #5
  %129 = load i64, ptr %4, align 8, !tbaa !78
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %110, label %122, !prof !95, !llvm.loop !96

131:                                              ; preds = %110
  %132 = load i32, ptr %6, align 4, !tbaa !76
  br label %133

133:                                              ; preds = %131, %101
  %134 = phi i32 [ %103, %101 ], [ %132, %131 ]
  %135 = phi ptr [ %102, %101 ], [ %111, %131 ]
  %136 = icmp eq i32 %134, 0
  %137 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %138 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %139 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %140 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %141 = select i1 %136, ptr %138, ptr %140, !prof !77
  %142 = select i1 %136, ptr %137, ptr %139, !prof !77
  %143 = load i64, ptr %142, align 8, !tbaa !78
  %144 = load i64, ptr %141, align 8, !tbaa !78
  %145 = or i64 %144, %143
  store i64 %145, ptr %3, align 8, !tbaa !78
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %168, label %151, !prof !97

147:                                              ; preds = %157, %151
  %148 = phi ptr [ %152, %151 ], [ %163, %157 ]
  %149 = load i64, ptr %3, align 8, !tbaa !78
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %166, label %151, !prof !98

151:                                              ; preds = %133, %147
  %152 = phi ptr [ %148, %147 ], [ %135, %133 ]
  %153 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %154 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %153) #5
  %155 = and i64 %154, %9
  store i64 %155, ptr %4, align 8, !tbaa !78
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %147, label %157, !prof !99, !llvm.loop !100

157:                                              ; preds = %151, %157
  %158 = phi ptr [ %163, %157 ], [ %152, %151 ]
  %159 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %5, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !82
  %163 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %158, i32 noundef %153, i32 noundef %159, i32 noundef %162, i32 noundef 0, i32 noundef 0) #5
  %164 = load i64, ptr %4, align 8, !tbaa !78
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %147, label %157, !prof !101, !llvm.loop !102

166:                                              ; preds = %147
  %167 = load i32, ptr %6, align 4, !tbaa !76
  br label %168

168:                                              ; preds = %166, %133
  %169 = phi i32 [ %134, %133 ], [ %167, %166 ]
  %170 = phi ptr [ %135, %133 ], [ %148, %166 ]
  %171 = icmp eq i32 %169, 0
  %172 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %173 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %174 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %175 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %176 = select i1 %171, ptr %173, ptr %175, !prof !77
  %177 = select i1 %171, ptr %172, ptr %174, !prof !77
  %178 = load i64, ptr %177, align 8, !tbaa !78
  %179 = load i64, ptr %176, align 8, !tbaa !78
  %180 = or i64 %179, %178
  store i64 %180, ptr %3, align 8, !tbaa !78
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %203, label %186, !prof !97

182:                                              ; preds = %192, %186
  %183 = phi ptr [ %187, %186 ], [ %198, %192 ]
  %184 = load i64, ptr %3, align 8, !tbaa !78
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %201, label %186, !prof !103

186:                                              ; preds = %168, %182
  %187 = phi ptr [ %183, %182 ], [ %170, %168 ]
  %188 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %189 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %188) #5
  %190 = and i64 %189, %9
  store i64 %190, ptr %4, align 8, !tbaa !78
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %182, label %192, !prof !104, !llvm.loop !105

192:                                              ; preds = %186, %192
  %193 = phi ptr [ %198, %192 ], [ %187, %186 ]
  %194 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, ptr %5, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !82
  %198 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %193, i32 noundef %188, i32 noundef %194, i32 noundef %197, i32 noundef 0, i32 noundef 0) #5
  %199 = load i64, ptr %4, align 8, !tbaa !78
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %182, label %192, !prof !106, !llvm.loop !107

201:                                              ; preds = %182
  %202 = load i32, ptr %6, align 4, !tbaa !76
  br label %203

203:                                              ; preds = %201, %168
  %204 = phi i32 [ %169, %168 ], [ %202, %201 ]
  %205 = phi ptr [ %170, %168 ], [ %183, %201 ]
  %206 = icmp eq i32 %204, 0
  %207 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %208 = load i32, ptr %207, align 4, !tbaa !108
  br i1 %206, label %234, label %209, !prof !77

209:                                              ; preds = %203
  %210 = and i32 %208, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212, !prof !109

212:                                              ; preds = %209
  %213 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 1) #5
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219, !prof !110

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %217 = load i32, ptr %216, align 8, !tbaa !111
  %218 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %205, i32 noundef %217, i32 noundef 62, i32 noundef 1) #5
  br label %219

219:                                              ; preds = %212, %215, %209
  %220 = phi ptr [ %205, %212 ], [ %218, %215 ], [ %205, %209 ]
  %221 = load i32, ptr %207, align 4, !tbaa !108
  %222 = and i32 %221, 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %224, !prof !112

224:                                              ; preds = %219
  %225 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 2) #5
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231, !prof !113

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %229 = load i32, ptr %228, align 8, !tbaa !111
  %230 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %220, i32 noundef %229, i32 noundef 58, i32 noundef 2) #5
  br label %231

231:                                              ; preds = %224, %227, %219
  %232 = phi ptr [ %220, %224 ], [ %230, %227 ], [ %220, %219 ]
  %233 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %259

234:                                              ; preds = %203
  %235 = and i32 %208, 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %244, label %237, !prof !114

237:                                              ; preds = %234
  %238 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 3) #5
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244, !prof !115

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %242 = load i32, ptr %241, align 4, !tbaa !116
  %243 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %205, i32 noundef %242, i32 noundef 6, i32 noundef 3) #5
  br label %244

244:                                              ; preds = %237, %240, %234
  %245 = phi ptr [ %205, %237 ], [ %243, %240 ], [ %205, %234 ]
  %246 = load i32, ptr %207, align 4, !tbaa !108
  %247 = and i32 %246, 16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %256, label %249, !prof !117

249:                                              ; preds = %244
  %250 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 4) #5
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256, !prof !118

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %254 = load i32, ptr %253, align 4, !tbaa !116
  %255 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %245, i32 noundef %254, i32 noundef 2, i32 noundef 4) #5
  br label %256

256:                                              ; preds = %249, %252, %244
  %257 = phi ptr [ %245, %249 ], [ %255, %252 ], [ %245, %244 ]
  %258 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %259

259:                                              ; preds = %256, %231
  %260 = phi ptr [ %233, %231 ], [ %258, %256 ]
  %261 = phi ptr [ %232, %231 ], [ %257, %256 ]
  %262 = load i32, ptr %260, align 4, !tbaa !82
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !78
  %266 = and i64 %265, %9
  store i64 %266, ptr %3, align 8, !tbaa !78
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %277, label %268, !prof !97

268:                                              ; preds = %259, %268
  %269 = phi ptr [ %274, %268 ], [ %261, %259 ]
  %270 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, ptr %5, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !82
  %274 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %269, i32 noundef %262, i32 noundef %270, i32 noundef %273, i32 noundef 0, i32 noundef 0) #5
  %275 = load i64, ptr %3, align 8, !tbaa !78
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %268, !prof !119, !llvm.loop !120

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
define dso_local noundef nonnull ptr @_Z11add_capturePiiiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !prof !121 {
  %7 = shl i32 %5, 23
  %8 = shl i32 %3, 19
  %9 = shl i32 %4, 12
  %10 = shl i32 %1, 6
  %11 = or i32 %10, %2
  %12 = or i32 %11, %8
  %13 = or i32 %12, %9
  %14 = or i32 %13, %7
  store i32 %14, ptr %0, align 4, !tbaa !82
  %15 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_Z8add_movePiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !122 {
  %5 = shl i32 %3, 12
  %6 = shl i32 %1, 6
  %7 = or i32 %6, %2
  %8 = or i32 %7, %5
  %9 = or i32 %8, 6815744
  store i32 %9, ptr %0, align 4, !tbaa !82
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
define dso_local noundef nonnull ptr @_Z15add_king_castlePiiii(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !123 {
  %5 = shl i32 %3, 16
  %6 = shl i32 %1, 6
  %7 = or i32 %6, %2
  %8 = or i32 %7, %5
  %9 = or i32 %8, 6815744
  store i32 %9, ptr %0, align 4, !tbaa !82
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !124 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %11 = select i1 %8, ptr %10, ptr %9, !prof !125
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %13 = xor i64 %12, -1
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !70
  %16 = xor i64 %15, -1
  br i1 %8, label %61, label %17, !prof !125

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !78
  %20 = lshr i64 %19, 8
  %21 = and i64 %20, %16
  %22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !78
  %23 = and i64 %22, %19
  %24 = lshr i64 %23, 16
  %25 = lshr i64 %15, 8
  %26 = or i64 %25, %15
  %27 = xor i64 %26, -1
  %28 = and i64 %24, %27
  store i64 %28, ptr %4, align 8, !tbaa !78
  %29 = or i64 %28, %21
  store i64 %29, ptr %3, align 8, !tbaa !78
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %106, label %31, !prof !126

31:                                               ; preds = %17, %57
  %32 = phi ptr [ %58, %57 ], [ %1, %17 ]
  %33 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %34 = load i64, ptr %18, align 8, !tbaa !78
  %35 = add nsw i32 %33, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !78
  %39 = and i64 %38, %34
  %40 = icmp eq i64 %39, 0
  %41 = add nsw i32 %33, 16
  %42 = select i1 %40, i32 %41, i32 %35, !prof !127
  %43 = icmp ult i32 %33, 8
  br i1 %43, label %44, label %55, !prof !128

44:                                               ; preds = %31
  %45 = zext nneg i32 %33 to i64
  %46 = getelementptr inbounds i32, ptr %5, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !82
  %48 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %32, i32 noundef %42, i32 noundef %33, i32 noundef %47, i32 noundef 9, i32 noundef 0) #5
  %49 = load i32, ptr %46, align 4, !tbaa !82
  %50 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %48, i32 noundef %42, i32 noundef %33, i32 noundef %49, i32 noundef 7, i32 noundef 0) #5
  %51 = load i32, ptr %46, align 4, !tbaa !82
  %52 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %50, i32 noundef %42, i32 noundef %33, i32 noundef %51, i32 noundef 11, i32 noundef 0) #5
  %53 = load i32, ptr %46, align 4, !tbaa !82
  %54 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %52, i32 noundef %42, i32 noundef %33, i32 noundef %53, i32 noundef 3, i32 noundef 0) #5
  br label %57

55:                                               ; preds = %31
  %56 = call noundef ptr @_Z8add_movePiiii(ptr noundef %32, i32 noundef %42, i32 noundef %33, i32 noundef 0) #5
  br label %57

57:                                               ; preds = %55, %44
  %58 = phi ptr [ %54, %44 ], [ %56, %55 ]
  %59 = load i64, ptr %3, align 8, !tbaa !78
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %106, label %31, !prof !129, !llvm.loop !130

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %63 = load i64, ptr %62, align 8, !tbaa !78
  %64 = shl i64 %63, 8
  %65 = and i64 %64, %16
  %66 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !78
  %67 = and i64 %66, %63
  %68 = shl i64 %67, 16
  %69 = shl i64 %15, 8
  %70 = or i64 %69, %15
  %71 = xor i64 %70, -1
  %72 = and i64 %68, %71
  store i64 %72, ptr %4, align 8, !tbaa !78
  %73 = or i64 %72, %65
  store i64 %73, ptr %3, align 8, !tbaa !78
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %106, label %75, !prof !131

75:                                               ; preds = %61, %102
  %76 = phi ptr [ %103, %102 ], [ %1, %61 ]
  %77 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %78 = load i64, ptr %62, align 8, !tbaa !78
  %79 = add nsw i32 %77, -8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !78
  %83 = and i64 %82, %78
  %84 = icmp eq i64 %83, 0
  %85 = add nsw i32 %77, -16
  %86 = select i1 %84, i32 %85, i32 %79, !prof !132
  %87 = and i32 %77, -8
  %88 = icmp eq i32 %87, 56
  br i1 %88, label %89, label %100, !prof !133

89:                                               ; preds = %75
  %90 = zext nneg i32 %77 to i64
  %91 = getelementptr inbounds i32, ptr %5, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !82
  %93 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %76, i32 noundef %86, i32 noundef %77, i32 noundef %92, i32 noundef 10, i32 noundef 0) #5
  %94 = load i32, ptr %91, align 4, !tbaa !82
  %95 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %93, i32 noundef %86, i32 noundef %77, i32 noundef %94, i32 noundef 8, i32 noundef 0) #5
  %96 = load i32, ptr %91, align 4, !tbaa !82
  %97 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %95, i32 noundef %86, i32 noundef %77, i32 noundef %96, i32 noundef 12, i32 noundef 0) #5
  %98 = load i32, ptr %91, align 4, !tbaa !82
  %99 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %97, i32 noundef %86, i32 noundef %77, i32 noundef %98, i32 noundef 4, i32 noundef 0) #5
  br label %102

100:                                              ; preds = %75
  %101 = call noundef ptr @_Z8add_movePiiii(ptr noundef %76, i32 noundef %86, i32 noundef %77, i32 noundef 0) #5
  br label %102

102:                                              ; preds = %100, %89
  %103 = phi ptr [ %99, %89 ], [ %101, %100 ]
  %104 = load i64, ptr %3, align 8, !tbaa !78
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %75, !prof !134, !llvm.loop !135

106:                                              ; preds = %57, %102, %17, %61
  %107 = phi ptr [ %1, %61 ], [ %1, %17 ], [ %103, %102 ], [ %58, %57 ]
  %108 = load i32, ptr %6, align 4, !tbaa !76
  %109 = icmp eq i32 %108, 0
  %110 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !78
  %111 = xor i64 %110, -1
  %112 = load i64, ptr @FileMask, align 16, !tbaa !78
  %113 = xor i64 %112, -1
  %114 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %115 = load i32, ptr %114, align 8, !tbaa !136
  %116 = icmp sgt i32 %115, 0
  br i1 %109, label %212, label %117, !prof !125

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %119 = load i64, ptr %118, align 8, !tbaa !78
  %120 = and i64 %119, %111
  %121 = lshr i64 %120, 7
  %122 = and i64 %119, %113
  %123 = lshr i64 %122, 9
  %124 = or i64 %123, %121
  %125 = load i64, ptr %10, align 8, !tbaa !137
  br i1 %116, label %126, label %131, !prof !138

126:                                              ; preds = %117
  %127 = zext nneg i32 %115 to i64
  %128 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !78
  %130 = or i64 %129, %125
  br label %131

131:                                              ; preds = %117, %126
  %132 = phi i64 [ %130, %126 ], [ %125, %117 ]
  %133 = and i64 %132, %124
  store i64 %133, ptr %3, align 8, !tbaa !78
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %309, label %135, !prof !139

135:                                              ; preds = %131, %208
  %136 = phi ptr [ %209, %208 ], [ %107, %131 ]
  %137 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %138 = and i32 %137, 7
  %139 = icmp eq i32 %138, 0
  %140 = load i64, ptr %118, align 8, !tbaa !78
  br i1 %139, label %176, label %141, !prof !140

141:                                              ; preds = %135
  %142 = add nsw i32 %137, 7
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !78
  %146 = and i64 %145, %140
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %171, label %148, !prof !141

148:                                              ; preds = %141
  %149 = icmp ult i32 %137, 8
  br i1 %149, label %150, label %161, !prof !142

150:                                              ; preds = %148
  %151 = zext nneg i32 %137 to i64
  %152 = getelementptr inbounds i32, ptr %5, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !82
  %154 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %136, i32 noundef %142, i32 noundef %137, i32 noundef %153, i32 noundef 9, i32 noundef 0) #5
  %155 = load i32, ptr %152, align 4, !tbaa !82
  %156 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %154, i32 noundef %142, i32 noundef %137, i32 noundef %155, i32 noundef 7, i32 noundef 0) #5
  %157 = load i32, ptr %152, align 4, !tbaa !82
  %158 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %156, i32 noundef %142, i32 noundef %137, i32 noundef %157, i32 noundef 11, i32 noundef 0) #5
  %159 = load i32, ptr %152, align 4, !tbaa !82
  %160 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %158, i32 noundef %142, i32 noundef %137, i32 noundef %159, i32 noundef 3, i32 noundef 0) #5
  br label %171

161:                                              ; preds = %148
  %162 = load i32, ptr %114, align 8, !tbaa !136
  %163 = icmp eq i32 %137, %162
  br i1 %163, label %164, label %166, !prof !143

164:                                              ; preds = %161
  %165 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %136, i32 noundef %142, i32 noundef %137, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %171

166:                                              ; preds = %161
  %167 = sext i32 %137 to i64
  %168 = getelementptr inbounds i32, ptr %5, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !82
  %170 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %136, i32 noundef %142, i32 noundef %137, i32 noundef %169, i32 noundef 0, i32 noundef 0) #5
  br label %171

171:                                              ; preds = %141, %164, %166, %150
  %172 = phi ptr [ %160, %150 ], [ %165, %164 ], [ %170, %166 ], [ %136, %141 ]
  %173 = icmp eq i32 %138, 7
  br i1 %173, label %208, label %174, !prof !144

174:                                              ; preds = %171
  %175 = load i64, ptr %118, align 8, !tbaa !78
  br label %176

176:                                              ; preds = %174, %135
  %177 = phi i64 [ %175, %174 ], [ %140, %135 ]
  %178 = phi ptr [ %172, %174 ], [ %136, %135 ]
  %179 = add nsw i32 %137, 9
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !78
  %183 = and i64 %182, %177
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %208, label %185, !prof !145

185:                                              ; preds = %176
  %186 = icmp ult i32 %137, 8
  br i1 %186, label %187, label %198, !prof !146

187:                                              ; preds = %185
  %188 = zext nneg i32 %137 to i64
  %189 = getelementptr inbounds i32, ptr %5, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !82
  %191 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %178, i32 noundef %179, i32 noundef %137, i32 noundef %190, i32 noundef 9, i32 noundef 0) #5
  %192 = load i32, ptr %189, align 4, !tbaa !82
  %193 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %191, i32 noundef %179, i32 noundef %137, i32 noundef %192, i32 noundef 7, i32 noundef 0) #5
  %194 = load i32, ptr %189, align 4, !tbaa !82
  %195 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %193, i32 noundef %179, i32 noundef %137, i32 noundef %194, i32 noundef 11, i32 noundef 0) #5
  %196 = load i32, ptr %189, align 4, !tbaa !82
  %197 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %195, i32 noundef %179, i32 noundef %137, i32 noundef %196, i32 noundef 3, i32 noundef 0) #5
  br label %208

198:                                              ; preds = %185
  %199 = load i32, ptr %114, align 8, !tbaa !136
  %200 = icmp eq i32 %137, %199
  br i1 %200, label %201, label %203, !prof !147

201:                                              ; preds = %198
  %202 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %178, i32 noundef %179, i32 noundef %137, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %208

203:                                              ; preds = %198
  %204 = sext i32 %137 to i64
  %205 = getelementptr inbounds i32, ptr %5, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !82
  %207 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %178, i32 noundef %179, i32 noundef %137, i32 noundef %206, i32 noundef 0, i32 noundef 0) #5
  br label %208

208:                                              ; preds = %176, %201, %203, %187, %171
  %209 = phi ptr [ %197, %187 ], [ %202, %201 ], [ %207, %203 ], [ %178, %176 ], [ %172, %171 ]
  %210 = load i64, ptr %3, align 8, !tbaa !78
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %309, label %135, !prof !148, !llvm.loop !149

212:                                              ; preds = %106
  %213 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %214 = load i64, ptr %213, align 8, !tbaa !78
  %215 = and i64 %214, %111
  %216 = shl i64 %215, 9
  %217 = and i64 %214, %113
  %218 = shl i64 %217, 7
  %219 = or i64 %218, %216
  %220 = load i64, ptr %9, align 8, !tbaa !150
  br i1 %116, label %221, label %226, !prof !151

221:                                              ; preds = %212
  %222 = zext nneg i32 %115 to i64
  %223 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !78
  %225 = or i64 %224, %220
  br label %226

226:                                              ; preds = %212, %221
  %227 = phi i64 [ %225, %221 ], [ %220, %212 ]
  %228 = and i64 %227, %219
  store i64 %228, ptr %3, align 8, !tbaa !78
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %309, label %230, !prof !152

230:                                              ; preds = %226, %305
  %231 = phi ptr [ %306, %305 ], [ %107, %226 ]
  %232 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %233 = and i32 %232, 7
  %234 = icmp eq i32 %233, 0
  %235 = load i64, ptr %213, align 8, !tbaa !78
  br i1 %234, label %272, label %236, !prof !153

236:                                              ; preds = %230
  %237 = add nsw i32 %232, -9
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !78
  %241 = and i64 %240, %235
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %267, label %243, !prof !154

243:                                              ; preds = %236
  %244 = and i32 %232, -8
  %245 = icmp eq i32 %244, 56
  br i1 %245, label %246, label %257, !prof !155

246:                                              ; preds = %243
  %247 = zext nneg i32 %232 to i64
  %248 = getelementptr inbounds i32, ptr %5, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !82
  %250 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %231, i32 noundef %237, i32 noundef %232, i32 noundef %249, i32 noundef 10, i32 noundef 0) #5
  %251 = load i32, ptr %248, align 4, !tbaa !82
  %252 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %250, i32 noundef %237, i32 noundef %232, i32 noundef %251, i32 noundef 8, i32 noundef 0) #5
  %253 = load i32, ptr %248, align 4, !tbaa !82
  %254 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %252, i32 noundef %237, i32 noundef %232, i32 noundef %253, i32 noundef 12, i32 noundef 0) #5
  %255 = load i32, ptr %248, align 4, !tbaa !82
  %256 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %254, i32 noundef %237, i32 noundef %232, i32 noundef %255, i32 noundef 4, i32 noundef 0) #5
  br label %267

257:                                              ; preds = %243
  %258 = load i32, ptr %114, align 8, !tbaa !136
  %259 = icmp eq i32 %232, %258
  br i1 %259, label %260, label %262, !prof !156

260:                                              ; preds = %257
  %261 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %231, i32 noundef %237, i32 noundef %232, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %267

262:                                              ; preds = %257
  %263 = sext i32 %232 to i64
  %264 = getelementptr inbounds i32, ptr %5, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !82
  %266 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %231, i32 noundef %237, i32 noundef %232, i32 noundef %265, i32 noundef 0, i32 noundef 0) #5
  br label %267

267:                                              ; preds = %236, %260, %262, %246
  %268 = phi ptr [ %256, %246 ], [ %261, %260 ], [ %266, %262 ], [ %231, %236 ]
  %269 = icmp eq i32 %233, 7
  br i1 %269, label %305, label %270, !prof !157

270:                                              ; preds = %267
  %271 = load i64, ptr %213, align 8, !tbaa !78
  br label %272

272:                                              ; preds = %270, %230
  %273 = phi i64 [ %271, %270 ], [ %235, %230 ]
  %274 = phi ptr [ %268, %270 ], [ %231, %230 ]
  %275 = add nsw i32 %232, -7
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !78
  %279 = and i64 %278, %273
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %305, label %281, !prof !158

281:                                              ; preds = %272
  %282 = and i32 %232, -8
  %283 = icmp eq i32 %282, 56
  br i1 %283, label %284, label %295, !prof !159

284:                                              ; preds = %281
  %285 = zext nneg i32 %232 to i64
  %286 = getelementptr inbounds i32, ptr %5, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !82
  %288 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %274, i32 noundef %275, i32 noundef %232, i32 noundef %287, i32 noundef 10, i32 noundef 0) #5
  %289 = load i32, ptr %286, align 4, !tbaa !82
  %290 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %288, i32 noundef %275, i32 noundef %232, i32 noundef %289, i32 noundef 8, i32 noundef 0) #5
  %291 = load i32, ptr %286, align 4, !tbaa !82
  %292 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %290, i32 noundef %275, i32 noundef %232, i32 noundef %291, i32 noundef 12, i32 noundef 0) #5
  %293 = load i32, ptr %286, align 4, !tbaa !82
  %294 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef nonnull %292, i32 noundef %275, i32 noundef %232, i32 noundef %293, i32 noundef 4, i32 noundef 0) #5
  br label %305

295:                                              ; preds = %281
  %296 = load i32, ptr %114, align 8, !tbaa !136
  %297 = icmp eq i32 %232, %296
  br i1 %297, label %298, label %300, !prof !160

298:                                              ; preds = %295
  %299 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %274, i32 noundef %275, i32 noundef %232, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %305

300:                                              ; preds = %295
  %301 = sext i32 %232 to i64
  %302 = getelementptr inbounds i32, ptr %5, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !82
  %304 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %274, i32 noundef %275, i32 noundef %232, i32 noundef %303, i32 noundef 0, i32 noundef 0) #5
  br label %305

305:                                              ; preds = %272, %298, %300, %284, %267
  %306 = phi ptr [ %294, %284 ], [ %299, %298 ], [ %304, %300 ], [ %274, %272 ], [ %268, %267 ]
  %307 = load i64, ptr %3, align 8, !tbaa !78
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %230, !prof !161, !llvm.loop !162

309:                                              ; preds = %208, %305, %131, %226
  %310 = phi ptr [ %107, %226 ], [ %107, %131 ], [ %306, %305 ], [ %209, %208 ]
  %311 = load i32, ptr %6, align 4, !tbaa !76
  %312 = icmp eq i32 %311, 0
  %313 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %314 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %315 = select i1 %312, ptr %313, ptr %314, !prof !125
  %316 = load i64, ptr %315, align 8, !tbaa !78
  store i64 %316, ptr %3, align 8, !tbaa !78
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %341, label %322, !prof !163

318:                                              ; preds = %330, %322
  %319 = phi ptr [ %323, %322 ], [ %336, %330 ]
  %320 = load i64, ptr %3, align 8, !tbaa !78
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %339, label %322, !prof !164

322:                                              ; preds = %309, %318
  %323 = phi ptr [ %319, %318 ], [ %310, %309 ]
  %324 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !78
  %328 = and i64 %327, %13
  store i64 %328, ptr %4, align 8, !tbaa !78
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %318, label %330, !prof !165, !llvm.loop !166

330:                                              ; preds = %322, %330
  %331 = phi ptr [ %336, %330 ], [ %323, %322 ]
  %332 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, ptr %5, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !82
  %336 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %331, i32 noundef %324, i32 noundef %332, i32 noundef %335, i32 noundef 0, i32 noundef 0) #5
  %337 = load i64, ptr %4, align 8, !tbaa !78
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %318, label %330, !prof !167, !llvm.loop !168

339:                                              ; preds = %318
  %340 = load i32, ptr %6, align 4, !tbaa !76
  br label %341

341:                                              ; preds = %339, %309
  %342 = phi i32 [ %311, %309 ], [ %340, %339 ]
  %343 = phi ptr [ %310, %309 ], [ %319, %339 ]
  %344 = icmp eq i32 %342, 0
  %345 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %346 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %347 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %348 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %349 = select i1 %344, ptr %346, ptr %348, !prof !125
  %350 = select i1 %344, ptr %345, ptr %347, !prof !125
  %351 = load i64, ptr %350, align 8, !tbaa !78
  %352 = load i64, ptr %349, align 8, !tbaa !78
  %353 = or i64 %352, %351
  store i64 %353, ptr %3, align 8, !tbaa !78
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %376, label %359, !prof !169

355:                                              ; preds = %365, %359
  %356 = phi ptr [ %360, %359 ], [ %371, %365 ]
  %357 = load i64, ptr %3, align 8, !tbaa !78
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %374, label %359, !prof !170

359:                                              ; preds = %341, %355
  %360 = phi ptr [ %356, %355 ], [ %343, %341 ]
  %361 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %362 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %361) #5
  %363 = and i64 %362, %13
  store i64 %363, ptr %4, align 8, !tbaa !78
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %355, label %365, !prof !171, !llvm.loop !172

365:                                              ; preds = %359, %365
  %366 = phi ptr [ %371, %365 ], [ %360, %359 ]
  %367 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, ptr %5, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !82
  %371 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %366, i32 noundef %361, i32 noundef %367, i32 noundef %370, i32 noundef 0, i32 noundef 0) #5
  %372 = load i64, ptr %4, align 8, !tbaa !78
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %355, label %365, !prof !173, !llvm.loop !174

374:                                              ; preds = %355
  %375 = load i32, ptr %6, align 4, !tbaa !76
  br label %376

376:                                              ; preds = %374, %341
  %377 = phi i32 [ %342, %341 ], [ %375, %374 ]
  %378 = phi ptr [ %343, %341 ], [ %356, %374 ]
  %379 = icmp eq i32 %377, 0
  %380 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %381 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %382 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %383 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %384 = select i1 %379, ptr %381, ptr %383, !prof !125
  %385 = select i1 %379, ptr %380, ptr %382, !prof !125
  %386 = load i64, ptr %385, align 8, !tbaa !78
  %387 = load i64, ptr %384, align 8, !tbaa !78
  %388 = or i64 %387, %386
  store i64 %388, ptr %3, align 8, !tbaa !78
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %411, label %394, !prof !169

390:                                              ; preds = %400, %394
  %391 = phi ptr [ %395, %394 ], [ %406, %400 ]
  %392 = load i64, ptr %3, align 8, !tbaa !78
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %409, label %394, !prof !175

394:                                              ; preds = %376, %390
  %395 = phi ptr [ %391, %390 ], [ %378, %376 ]
  %396 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %397 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %396) #5
  %398 = and i64 %397, %13
  store i64 %398, ptr %4, align 8, !tbaa !78
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %390, label %400, !prof !176, !llvm.loop !177

400:                                              ; preds = %394, %400
  %401 = phi ptr [ %406, %400 ], [ %395, %394 ]
  %402 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, ptr %5, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !82
  %406 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %401, i32 noundef %396, i32 noundef %402, i32 noundef %405, i32 noundef 0, i32 noundef 0) #5
  %407 = load i64, ptr %4, align 8, !tbaa !78
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %390, label %400, !prof !178, !llvm.loop !179

409:                                              ; preds = %390
  %410 = load i32, ptr %6, align 4, !tbaa !76
  br label %411

411:                                              ; preds = %409, %376
  %412 = phi i32 [ %377, %376 ], [ %410, %409 ]
  %413 = phi ptr [ %378, %376 ], [ %391, %409 ]
  %414 = icmp eq i32 %412, 0
  %415 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %416 = load i32, ptr %415, align 4, !tbaa !108
  br i1 %414, label %442, label %417, !prof !125

417:                                              ; preds = %411
  %418 = and i32 %416, 2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %427, label %420, !prof !180

420:                                              ; preds = %417
  %421 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 1) #5
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %427, !prof !181

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %425 = load i32, ptr %424, align 8, !tbaa !111
  %426 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %413, i32 noundef %425, i32 noundef 62, i32 noundef 1) #5
  br label %427

427:                                              ; preds = %420, %423, %417
  %428 = phi ptr [ %413, %420 ], [ %426, %423 ], [ %413, %417 ]
  %429 = load i32, ptr %415, align 4, !tbaa !108
  %430 = and i32 %429, 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %439, label %432, !prof !182

432:                                              ; preds = %427
  %433 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 2) #5
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %439, !prof !183

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %437 = load i32, ptr %436, align 8, !tbaa !111
  %438 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %428, i32 noundef %437, i32 noundef 58, i32 noundef 2) #5
  br label %439

439:                                              ; preds = %432, %435, %427
  %440 = phi ptr [ %428, %432 ], [ %438, %435 ], [ %428, %427 ]
  %441 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %467

442:                                              ; preds = %411
  %443 = and i32 %416, 8
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %452, label %445, !prof !184

445:                                              ; preds = %442
  %446 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 3) #5
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %452, !prof !185

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %450 = load i32, ptr %449, align 4, !tbaa !116
  %451 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %413, i32 noundef %450, i32 noundef 6, i32 noundef 3) #5
  br label %452

452:                                              ; preds = %445, %448, %442
  %453 = phi ptr [ %413, %445 ], [ %451, %448 ], [ %413, %442 ]
  %454 = load i32, ptr %415, align 4, !tbaa !108
  %455 = and i32 %454, 16
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %464, label %457, !prof !186

457:                                              ; preds = %452
  %458 = call noundef i32 @_Z20check_castle_blockerP7state_ti(ptr noundef nonnull %0, i32 noundef 4) #5
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %464, !prof !187

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %462 = load i32, ptr %461, align 4, !tbaa !116
  %463 = call noundef ptr @_Z15add_king_castlePiiii(ptr noundef %453, i32 noundef %462, i32 noundef 2, i32 noundef 4) #5
  br label %464

464:                                              ; preds = %457, %460, %452
  %465 = phi ptr [ %453, %457 ], [ %463, %460 ], [ %453, %452 ]
  %466 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %467

467:                                              ; preds = %464, %439
  %468 = phi ptr [ %441, %439 ], [ %466, %464 ]
  %469 = phi ptr [ %440, %439 ], [ %465, %464 ]
  %470 = load i32, ptr %468, align 4, !tbaa !82
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %471
  %473 = load i64, ptr %472, align 8, !tbaa !78
  %474 = and i64 %473, %13
  store i64 %474, ptr %3, align 8, !tbaa !78
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %485, label %476, !prof !169

476:                                              ; preds = %467, %476
  %477 = phi ptr [ %482, %476 ], [ %469, %467 ]
  %478 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, ptr %5, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !82
  %482 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %477, i32 noundef %470, i32 noundef %478, i32 noundef %481, i32 noundef 0, i32 noundef 0) #5
  %483 = load i64, ptr %3, align 8, !tbaa !78
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %476, !prof !188, !llvm.loop !189

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
define dso_local noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !190 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !70
  %11 = xor i64 %10, -1
  br i1 %8, label %120, label %12, !prof !191

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !137
  %15 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %16 = load i64, ptr %15, align 8, !tbaa !78
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !78
  %18 = and i64 %17, %16
  %19 = lshr i64 %18, 8
  %20 = and i64 %19, %11
  store i64 %20, ptr %3, align 8, !tbaa !78
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22, !prof !192

22:                                               ; preds = %12, %22
  %23 = phi ptr [ %26, %22 ], [ %1, %12 ]
  %24 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %25 = add nsw i32 %24, 8
  %26 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %23, i32 noundef %25, i32 noundef %24, i32 noundef 13, i32 noundef 9, i32 noundef 0) #5
  %27 = load i64, ptr %3, align 8, !tbaa !78
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %22, !prof !193, !llvm.loop !194

29:                                               ; preds = %22
  %30 = load i64, ptr %15, align 8, !tbaa !78
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi i64 [ %16, %12 ], [ %30, %29 ]
  %33 = phi ptr [ %1, %12 ], [ %26, %29 ]
  %34 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !78
  %35 = xor i64 %34, -1
  %36 = and i64 %32, %35
  %37 = lshr i64 %36, 7
  %38 = load i64, ptr @FileMask, align 16, !tbaa !78
  %39 = xor i64 %38, -1
  %40 = and i64 %32, %39
  %41 = lshr i64 %40, 9
  %42 = or i64 %41, %37
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !136
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %51, !prof !195

46:                                               ; preds = %31
  %47 = zext nneg i32 %44 to i64
  %48 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !78
  %50 = or i64 %49, %14
  br label %51

51:                                               ; preds = %31, %46
  %52 = phi i64 [ %50, %46 ], [ %14, %31 ]
  %53 = and i64 %52, %42
  store i64 %53, ptr %3, align 8, !tbaa !78
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %230, label %55, !prof !196

55:                                               ; preds = %51, %116
  %56 = phi ptr [ %117, %116 ], [ %33, %51 ]
  %57 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %58 = and i32 %57, 7
  %59 = icmp eq i32 %58, 0
  %60 = load i64, ptr %15, align 8, !tbaa !78
  br i1 %59, label %90, label %61, !prof !197

61:                                               ; preds = %55
  %62 = add nsw i32 %57, 7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !78
  %66 = and i64 %65, %60
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %85, label %68, !prof !198

68:                                               ; preds = %61
  %69 = icmp ult i32 %57, 8
  br i1 %69, label %70, label %75, !prof !199

70:                                               ; preds = %68
  %71 = zext nneg i32 %57 to i64
  %72 = getelementptr inbounds i32, ptr %5, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !82
  %74 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %56, i32 noundef %62, i32 noundef %57, i32 noundef %73, i32 noundef 9, i32 noundef 0) #5
  br label %85

75:                                               ; preds = %68
  %76 = load i32, ptr %43, align 8, !tbaa !136
  %77 = icmp eq i32 %57, %76
  br i1 %77, label %78, label %80, !prof !200

78:                                               ; preds = %75
  %79 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %56, i32 noundef %62, i32 noundef %57, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %85

80:                                               ; preds = %75
  %81 = sext i32 %57 to i64
  %82 = getelementptr inbounds i32, ptr %5, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !82
  %84 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %56, i32 noundef %62, i32 noundef %57, i32 noundef %83, i32 noundef 0, i32 noundef 0) #5
  br label %85

85:                                               ; preds = %61, %78, %80, %70
  %86 = phi ptr [ %74, %70 ], [ %79, %78 ], [ %84, %80 ], [ %56, %61 ]
  %87 = icmp eq i32 %58, 7
  br i1 %87, label %116, label %88, !prof !201

88:                                               ; preds = %85
  %89 = load i64, ptr %15, align 8, !tbaa !78
  br label %90

90:                                               ; preds = %88, %55
  %91 = phi i64 [ %89, %88 ], [ %60, %55 ]
  %92 = phi ptr [ %86, %88 ], [ %56, %55 ]
  %93 = add nsw i32 %57, 9
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !78
  %97 = and i64 %96, %91
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %116, label %99, !prof !202

99:                                               ; preds = %90
  %100 = icmp ult i32 %57, 8
  br i1 %100, label %101, label %106, !prof !203

101:                                              ; preds = %99
  %102 = zext nneg i32 %57 to i64
  %103 = getelementptr inbounds i32, ptr %5, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !82
  %105 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %92, i32 noundef %93, i32 noundef %57, i32 noundef %104, i32 noundef 9, i32 noundef 0) #5
  br label %116

106:                                              ; preds = %99
  %107 = load i32, ptr %43, align 8, !tbaa !136
  %108 = icmp eq i32 %57, %107
  br i1 %108, label %109, label %111, !prof !204

109:                                              ; preds = %106
  %110 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %92, i32 noundef %93, i32 noundef %57, i32 noundef 2, i32 noundef 0, i32 noundef 1) #5
  br label %116

111:                                              ; preds = %106
  %112 = sext i32 %57 to i64
  %113 = getelementptr inbounds i32, ptr %5, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !82
  %115 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %92, i32 noundef %93, i32 noundef %57, i32 noundef %114, i32 noundef 0, i32 noundef 0) #5
  br label %116

116:                                              ; preds = %90, %109, %111, %101, %85
  %117 = phi ptr [ %105, %101 ], [ %110, %109 ], [ %115, %111 ], [ %92, %90 ], [ %86, %85 ]
  %118 = load i64, ptr %3, align 8, !tbaa !78
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %230, label %55, !prof !205, !llvm.loop !206

120:                                              ; preds = %2
  %121 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %122 = load i64, ptr %121, align 8, !tbaa !150
  %123 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %124 = load i64, ptr %123, align 8, !tbaa !78
  %125 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !78
  %126 = and i64 %125, %124
  %127 = shl i64 %126, 8
  %128 = and i64 %127, %11
  store i64 %128, ptr %3, align 8, !tbaa !78
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %139, label %130, !prof !207

130:                                              ; preds = %120, %130
  %131 = phi ptr [ %134, %130 ], [ %1, %120 ]
  %132 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %133 = add nsw i32 %132, -8
  %134 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %131, i32 noundef %133, i32 noundef %132, i32 noundef 13, i32 noundef 10, i32 noundef 0) #5
  %135 = load i64, ptr %3, align 8, !tbaa !78
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %130, !prof !208, !llvm.loop !209

137:                                              ; preds = %130
  %138 = load i64, ptr %123, align 8, !tbaa !78
  br label %139

139:                                              ; preds = %137, %120
  %140 = phi i64 [ %124, %120 ], [ %138, %137 ]
  %141 = phi ptr [ %1, %120 ], [ %134, %137 ]
  %142 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !78
  %143 = xor i64 %142, -1
  %144 = and i64 %140, %143
  %145 = shl i64 %144, 9
  %146 = load i64, ptr @FileMask, align 16, !tbaa !78
  %147 = xor i64 %146, -1
  %148 = and i64 %140, %147
  %149 = shl i64 %148, 7
  %150 = or i64 %149, %145
  %151 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %152 = load i32, ptr %151, align 8, !tbaa !136
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %159, !prof !210

154:                                              ; preds = %139
  %155 = zext nneg i32 %152 to i64
  %156 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !78
  %158 = or i64 %157, %122
  br label %159

159:                                              ; preds = %139, %154
  %160 = phi i64 [ %158, %154 ], [ %122, %139 ]
  %161 = and i64 %160, %150
  store i64 %161, ptr %3, align 8, !tbaa !78
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %230, label %163, !prof !211

163:                                              ; preds = %159, %226
  %164 = phi ptr [ %227, %226 ], [ %141, %159 ]
  %165 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %166 = and i32 %165, 7
  %167 = icmp eq i32 %166, 0
  %168 = load i64, ptr %123, align 8, !tbaa !78
  br i1 %167, label %199, label %169, !prof !212

169:                                              ; preds = %163
  %170 = add nsw i32 %165, -9
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !78
  %174 = and i64 %173, %168
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %194, label %176, !prof !213

176:                                              ; preds = %169
  %177 = and i32 %165, -8
  %178 = icmp eq i32 %177, 56
  br i1 %178, label %179, label %184, !prof !214

179:                                              ; preds = %176
  %180 = zext nneg i32 %165 to i64
  %181 = getelementptr inbounds i32, ptr %5, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !82
  %183 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %164, i32 noundef %170, i32 noundef %165, i32 noundef %182, i32 noundef 10, i32 noundef 0) #5
  br label %194

184:                                              ; preds = %176
  %185 = load i32, ptr %151, align 8, !tbaa !136
  %186 = icmp eq i32 %165, %185
  br i1 %186, label %187, label %189, !prof !215

187:                                              ; preds = %184
  %188 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %164, i32 noundef %170, i32 noundef %165, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %194

189:                                              ; preds = %184
  %190 = sext i32 %165 to i64
  %191 = getelementptr inbounds i32, ptr %5, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !82
  %193 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %164, i32 noundef %170, i32 noundef %165, i32 noundef %192, i32 noundef 0, i32 noundef 0) #5
  br label %194

194:                                              ; preds = %169, %187, %189, %179
  %195 = phi ptr [ %183, %179 ], [ %188, %187 ], [ %193, %189 ], [ %164, %169 ]
  %196 = icmp eq i32 %166, 7
  br i1 %196, label %226, label %197, !prof !216

197:                                              ; preds = %194
  %198 = load i64, ptr %123, align 8, !tbaa !78
  br label %199

199:                                              ; preds = %197, %163
  %200 = phi i64 [ %198, %197 ], [ %168, %163 ]
  %201 = phi ptr [ %195, %197 ], [ %164, %163 ]
  %202 = add nsw i32 %165, -7
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !78
  %206 = and i64 %205, %200
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %226, label %208, !prof !217

208:                                              ; preds = %199
  %209 = and i32 %165, -8
  %210 = icmp eq i32 %209, 56
  br i1 %210, label %211, label %216, !prof !218

211:                                              ; preds = %208
  %212 = zext nneg i32 %165 to i64
  %213 = getelementptr inbounds i32, ptr %5, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !82
  %215 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %201, i32 noundef %202, i32 noundef %165, i32 noundef %214, i32 noundef 10, i32 noundef 0) #5
  br label %226

216:                                              ; preds = %208
  %217 = load i32, ptr %151, align 8, !tbaa !136
  %218 = icmp eq i32 %165, %217
  br i1 %218, label %219, label %221, !prof !219

219:                                              ; preds = %216
  %220 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %201, i32 noundef %202, i32 noundef %165, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  br label %226

221:                                              ; preds = %216
  %222 = sext i32 %165 to i64
  %223 = getelementptr inbounds i32, ptr %5, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !82
  %225 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %201, i32 noundef %202, i32 noundef %165, i32 noundef %224, i32 noundef 0, i32 noundef 0) #5
  br label %226

226:                                              ; preds = %199, %219, %221, %211, %194
  %227 = phi ptr [ %215, %211 ], [ %220, %219 ], [ %225, %221 ], [ %201, %199 ], [ %195, %194 ]
  %228 = load i64, ptr %3, align 8, !tbaa !78
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %163, !prof !220, !llvm.loop !221

230:                                              ; preds = %116, %226, %51, %159
  %231 = phi i64 [ %122, %159 ], [ %14, %51 ], [ %122, %226 ], [ %14, %116 ]
  %232 = phi ptr [ %141, %159 ], [ %33, %51 ], [ %227, %226 ], [ %117, %116 ]
  %233 = load i32, ptr %6, align 4, !tbaa !76
  %234 = icmp eq i32 %233, 0
  %235 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %236 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %237 = select i1 %234, ptr %236, ptr %235, !prof !191
  %238 = load i32, ptr %237, align 4, !tbaa !82
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !78
  %242 = and i64 %241, %231
  store i64 %242, ptr %3, align 8, !tbaa !78
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %255, label %244, !prof !222

244:                                              ; preds = %230, %244
  %245 = phi ptr [ %250, %244 ], [ %232, %230 ]
  %246 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %5, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !82
  %250 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %245, i32 noundef %238, i32 noundef %246, i32 noundef %249, i32 noundef 0, i32 noundef 0) #5
  %251 = load i64, ptr %3, align 8, !tbaa !78
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %244, !prof !223, !llvm.loop !224

253:                                              ; preds = %244
  %254 = load i32, ptr %6, align 4, !tbaa !76
  br label %255

255:                                              ; preds = %253, %230
  %256 = phi i32 [ %233, %230 ], [ %254, %253 ]
  %257 = phi ptr [ %232, %230 ], [ %250, %253 ]
  %258 = icmp eq i32 %256, 0
  %259 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %260 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %261 = select i1 %258, ptr %259, ptr %260, !prof !191
  %262 = load i64, ptr %261, align 8, !tbaa !78
  store i64 %262, ptr %3, align 8, !tbaa !78
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %287, label %268, !prof !225

264:                                              ; preds = %276, %268
  %265 = phi ptr [ %269, %268 ], [ %282, %276 ]
  %266 = load i64, ptr %3, align 8, !tbaa !78
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %285, label %268, !prof !226

268:                                              ; preds = %255, %264
  %269 = phi ptr [ %265, %264 ], [ %257, %255 ]
  %270 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %271
  %273 = load i64, ptr %272, align 8, !tbaa !78
  %274 = and i64 %273, %231
  store i64 %274, ptr %4, align 8, !tbaa !78
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %264, label %276, !prof !227, !llvm.loop !228

276:                                              ; preds = %268, %276
  %277 = phi ptr [ %282, %276 ], [ %269, %268 ]
  %278 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %5, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !82
  %282 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %277, i32 noundef %270, i32 noundef %278, i32 noundef %281, i32 noundef 0, i32 noundef 0) #5
  %283 = load i64, ptr %4, align 8, !tbaa !78
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %264, label %276, !prof !229, !llvm.loop !230

285:                                              ; preds = %264
  %286 = load i32, ptr %6, align 4, !tbaa !76
  br label %287

287:                                              ; preds = %285, %255
  %288 = phi i32 [ %256, %255 ], [ %286, %285 ]
  %289 = phi ptr [ %257, %255 ], [ %265, %285 ]
  %290 = icmp eq i32 %288, 0
  %291 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %292 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %293 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %294 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %295 = select i1 %290, ptr %292, ptr %294, !prof !191
  %296 = select i1 %290, ptr %291, ptr %293, !prof !191
  %297 = load i64, ptr %296, align 8, !tbaa !78
  %298 = load i64, ptr %295, align 8, !tbaa !78
  %299 = or i64 %298, %297
  store i64 %299, ptr %3, align 8, !tbaa !78
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %322, label %305, !prof !231

301:                                              ; preds = %311, %305
  %302 = phi ptr [ %306, %305 ], [ %317, %311 ]
  %303 = load i64, ptr %3, align 8, !tbaa !78
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %320, label %305, !prof !232

305:                                              ; preds = %287, %301
  %306 = phi ptr [ %302, %301 ], [ %289, %287 ]
  %307 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %308 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %307) #5
  %309 = and i64 %308, %231
  store i64 %309, ptr %4, align 8, !tbaa !78
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %301, label %311, !prof !233, !llvm.loop !234

311:                                              ; preds = %305, %311
  %312 = phi ptr [ %317, %311 ], [ %306, %305 ]
  %313 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, ptr %5, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !82
  %317 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %312, i32 noundef %307, i32 noundef %313, i32 noundef %316, i32 noundef 0, i32 noundef 0) #5
  %318 = load i64, ptr %4, align 8, !tbaa !78
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %301, label %311, !prof !235, !llvm.loop !236

320:                                              ; preds = %301
  %321 = load i32, ptr %6, align 4, !tbaa !76
  br label %322

322:                                              ; preds = %320, %287
  %323 = phi i32 [ %288, %287 ], [ %321, %320 ]
  %324 = phi ptr [ %289, %287 ], [ %302, %320 ]
  %325 = icmp eq i32 %323, 0
  %326 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %327 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %328 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %329 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %330 = select i1 %325, ptr %327, ptr %329, !prof !191
  %331 = select i1 %325, ptr %326, ptr %328, !prof !191
  %332 = load i64, ptr %331, align 8, !tbaa !78
  %333 = load i64, ptr %330, align 8, !tbaa !78
  %334 = or i64 %333, %332
  store i64 %334, ptr %3, align 8, !tbaa !78
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %355, label %340, !prof !231

336:                                              ; preds = %346, %340
  %337 = phi ptr [ %341, %340 ], [ %352, %346 ]
  %338 = load i64, ptr %3, align 8, !tbaa !78
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %355, label %340, !prof !237

340:                                              ; preds = %322, %336
  %341 = phi ptr [ %337, %336 ], [ %324, %322 ]
  %342 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %343 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %342) #5
  %344 = and i64 %343, %231
  store i64 %344, ptr %4, align 8, !tbaa !78
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %336, label %346, !prof !238, !llvm.loop !239

346:                                              ; preds = %340, %346
  %347 = phi ptr [ %352, %346 ], [ %341, %340 ]
  %348 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, ptr %5, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !82
  %352 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %347, i32 noundef %342, i32 noundef %348, i32 noundef %351, i32 noundef 0, i32 noundef 0) #5
  %353 = load i64, ptr %4, align 8, !tbaa !78
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %336, label %346, !prof !240, !llvm.loop !241

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
define dso_local noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !242 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %13 = select i1 %8, ptr %12, ptr %10, !prof !243
  %14 = select i1 %8, ptr %11, ptr %9, !prof !243
  %15 = load i32, ptr %14, align 4, !tbaa !82
  %16 = load i64, ptr %13, align 8, !tbaa !78
  %17 = xor i64 %16, -1
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !78
  %21 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %18
  %22 = load i64, ptr %21, align 8, !tbaa !78
  %23 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %18
  %24 = load i64, ptr %23, align 8, !tbaa !78
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %27 = select i1 %8, ptr %25, ptr %26, !prof !243
  %28 = load i64, ptr %27, align 8, !tbaa !78
  store i64 %28, ptr %3, align 8, !tbaa !78
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %57, label %30, !prof !244

30:                                               ; preds = %2
  %31 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %18
  br label %36

32:                                               ; preds = %46, %36
  %33 = phi ptr [ %37, %36 ], [ %52, %46 ]
  %34 = load i64, ptr %3, align 8, !tbaa !78
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %55, label %36, !prof !245

36:                                               ; preds = %30, %32
  %37 = phi ptr [ %1, %30 ], [ %33, %32 ]
  %38 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !78
  %42 = load i64, ptr %31, align 8, !tbaa !78
  %43 = and i64 %42, %41
  %44 = and i64 %43, %17
  store i64 %44, ptr %4, align 8, !tbaa !78
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %32, label %46, !prof !246, !llvm.loop !247

46:                                               ; preds = %36, %46
  %47 = phi ptr [ %52, %46 ], [ %37, %36 ]
  %48 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %5, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !82
  %52 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %47, i32 noundef %38, i32 noundef %48, i32 noundef %51, i32 noundef 0, i32 noundef 0) #5
  %53 = load i64, ptr %4, align 8, !tbaa !78
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %32, label %46, !prof !248, !llvm.loop !249

55:                                               ; preds = %32
  %56 = load i32, ptr %6, align 4, !tbaa !76
  br label %57

57:                                               ; preds = %55, %2
  %58 = phi i32 [ %7, %2 ], [ %56, %55 ]
  %59 = phi ptr [ %1, %2 ], [ %33, %55 ]
  %60 = icmp eq i32 %58, 0
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !70
  %63 = xor i64 %62, -1
  br i1 %60, label %68, label %64, !prof !243

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %66 = load i64, ptr %65, align 8, !tbaa !78
  %67 = lshr i64 %66, 8
  br label %72

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %70 = load i64, ptr %69, align 8, !tbaa !78
  %71 = shl i64 %70, 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i64 [ %71, %68 ], [ %67, %64 ]
  %74 = phi ptr [ @PawnAttacksWhite, %68 ], [ @PawnAttacksBlack, %64 ]
  %75 = and i64 %73, %63
  %76 = getelementptr inbounds [64 x i64], ptr %74, i64 0, i64 %18
  %77 = load i64, ptr %76, align 8, !tbaa !78
  %78 = and i64 %77, %75
  store i64 %78, ptr %3, align 8, !tbaa !78
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %92, label %80, !prof !250

80:                                               ; preds = %72, %80
  %81 = phi ptr [ %87, %80 ], [ %59, %72 ]
  %82 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %83 = load i32, ptr %6, align 4, !tbaa !76
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 -8, i32 8, !prof !251
  %86 = add nsw i32 %85, %82
  %87 = call noundef ptr @_Z8add_movePiiii(ptr noundef %81, i32 noundef %86, i32 noundef %82, i32 noundef 0) #5
  %88 = load i64, ptr %3, align 8, !tbaa !78
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %80, !prof !252, !llvm.loop !253

90:                                               ; preds = %80
  %91 = load i32, ptr %6, align 4, !tbaa !76
  br label %92

92:                                               ; preds = %90, %72
  %93 = phi i32 [ %58, %72 ], [ %91, %90 ]
  %94 = phi ptr [ %59, %72 ], [ %87, %90 ]
  %95 = icmp eq i32 %93, 0
  %96 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %97 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %100 = select i1 %95, ptr %97, ptr %99, !prof !243
  %101 = select i1 %95, ptr %96, ptr %98, !prof !243
  %102 = load i64, ptr %101, align 8, !tbaa !78
  %103 = load i64, ptr %100, align 8, !tbaa !78
  %104 = or i64 %103, %102
  store i64 %104, ptr %3, align 8, !tbaa !78
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %134, label %110, !prof !254

106:                                              ; preds = %128, %110
  %107 = phi ptr [ %111, %110 ], [ %129, %128 ]
  %108 = load i64, ptr %3, align 8, !tbaa !78
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %132, label %110, !prof !255

110:                                              ; preds = %92, %106
  %111 = phi ptr [ %107, %106 ], [ %94, %92 ]
  %112 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %113 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %112) #5
  %114 = and i64 %22, %113
  %115 = and i64 %114, %17
  store i64 %115, ptr %4, align 8, !tbaa !78
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %106, label %117, !prof !256, !llvm.loop !257

117:                                              ; preds = %110, %128
  %118 = phi ptr [ %129, %128 ], [ %111, %110 ]
  %119 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %120 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %119) #5
  %121 = and i64 %120, %24
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %128, label %123, !prof !258

123:                                              ; preds = %117
  %124 = sext i32 %119 to i64
  %125 = getelementptr inbounds i32, ptr %5, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !82
  %127 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %118, i32 noundef %112, i32 noundef %119, i32 noundef %126, i32 noundef 0, i32 noundef 0) #5
  br label %128

128:                                              ; preds = %123, %117
  %129 = phi ptr [ %127, %123 ], [ %118, %117 ]
  %130 = load i64, ptr %4, align 8, !tbaa !78
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %106, label %117, !prof !259, !llvm.loop !260

132:                                              ; preds = %106
  %133 = load i32, ptr %6, align 4, !tbaa !76
  br label %134

134:                                              ; preds = %132, %92
  %135 = phi i32 [ %93, %92 ], [ %133, %132 ]
  %136 = phi ptr [ %94, %92 ], [ %107, %132 ]
  %137 = icmp eq i32 %135, 0
  %138 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %139 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %140 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %141 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %142 = select i1 %137, ptr %139, ptr %141, !prof !243
  %143 = select i1 %137, ptr %138, ptr %140, !prof !243
  %144 = load i64, ptr %143, align 8, !tbaa !78
  %145 = load i64, ptr %142, align 8, !tbaa !78
  %146 = or i64 %145, %144
  store i64 %146, ptr %3, align 8, !tbaa !78
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %174, label %152, !prof !254

148:                                              ; preds = %170, %152
  %149 = phi ptr [ %153, %152 ], [ %171, %170 ]
  %150 = load i64, ptr %3, align 8, !tbaa !78
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %174, label %152, !prof !261

152:                                              ; preds = %134, %148
  %153 = phi ptr [ %149, %148 ], [ %136, %134 ]
  %154 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #5
  %155 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %154) #5
  %156 = and i64 %20, %155
  %157 = and i64 %156, %17
  store i64 %157, ptr %4, align 8, !tbaa !78
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %148, label %159, !prof !262, !llvm.loop !263

159:                                              ; preds = %152, %170
  %160 = phi ptr [ %171, %170 ], [ %153, %152 ]
  %161 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %162 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %161) #5
  %163 = and i64 %162, %24
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %170, label %165, !prof !264

165:                                              ; preds = %159
  %166 = sext i32 %161 to i64
  %167 = getelementptr inbounds i32, ptr %5, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !82
  %169 = call noundef ptr @_Z11add_capturePiiiiii(ptr noundef %160, i32 noundef %154, i32 noundef %161, i32 noundef %168, i32 noundef 0, i32 noundef 0) #5
  br label %170

170:                                              ; preds = %165, %159
  %171 = phi ptr [ %169, %165 ], [ %160, %159 ]
  %172 = load i64, ptr %4, align 8, !tbaa !78
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %148, label %159, !prof !265, !llvm.loop !266

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
define dso_local noundef i32 @_Z16gen_check_blocksP7state_tPii(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !267 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %11 = select i1 %8, ptr %10, ptr %9, !prof !268
  %12 = load i32, ptr %11, align 4, !tbaa !82
  %13 = tail call noundef i32 @_Z4ranki(i32 noundef %12) #5
  %14 = add i32 %2, -11
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %19, label %16, !prof !269

16:                                               ; preds = %3
  %17 = add i32 %2, -7
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %24, !prof !270

19:                                               ; preds = %16, %3
  %20 = phi ptr [ @BishopMask, %3 ], [ @RookMask, %16 ]
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds [64 x i64], ptr %20, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !78
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i64 [ -1, %16 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !70
  %28 = xor i64 %27, -1
  %29 = and i64 %25, %28
  %30 = load i32, ptr %6, align 4, !tbaa !76
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %65, label %32, !prof !268

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %34 = load i64, ptr %33, align 8, !tbaa !78
  %35 = lshr i64 %34, 8
  %36 = load i64, ptr @RankMask, align 16, !tbaa !78
  %37 = or i64 %27, %36
  %38 = xor i64 %37, -1
  %39 = and i64 %35, %38
  %40 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !78
  %41 = and i64 %40, %34
  %42 = lshr i64 %41, 16
  %43 = lshr i64 %27, 8
  %44 = or i64 %43, %27
  %45 = xor i64 %44, -1
  %46 = and i64 %42, %45
  store i64 %46, ptr %5, align 8, !tbaa !78
  %47 = or i64 %46, %39
  %48 = and i64 %47, %25
  store i64 %48, ptr %4, align 8, !tbaa !78
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %98, label %50, !prof !271

50:                                               ; preds = %32, %50
  %51 = phi ptr [ %62, %50 ], [ %1, %32 ]
  %52 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %53 = load i64, ptr %33, align 8, !tbaa !78
  %54 = add nsw i32 %52, 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !78
  %58 = and i64 %57, %53
  %59 = icmp eq i64 %58, 0
  %60 = add nsw i32 %52, 16
  %61 = select i1 %59, i32 %60, i32 %54, !prof !272
  %62 = call noundef ptr @_Z8add_movePiiii(ptr noundef %51, i32 noundef %61, i32 noundef %52, i32 noundef 0) #5
  %63 = load i64, ptr %4, align 8, !tbaa !78
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %98, label %50, !prof !273, !llvm.loop !274

65:                                               ; preds = %24
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %67 = load i64, ptr %66, align 8, !tbaa !78
  %68 = shl i64 %67, 8
  %69 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 7), align 8, !tbaa !78
  %70 = or i64 %27, %69
  %71 = xor i64 %70, -1
  %72 = and i64 %68, %71
  %73 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !78
  %74 = and i64 %73, %67
  %75 = shl i64 %74, 16
  %76 = shl i64 %27, 8
  %77 = or i64 %76, %27
  %78 = xor i64 %77, -1
  %79 = and i64 %75, %78
  store i64 %79, ptr %5, align 8, !tbaa !78
  %80 = or i64 %79, %72
  %81 = and i64 %80, %25
  store i64 %81, ptr %4, align 8, !tbaa !78
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %98, label %83, !prof !275

83:                                               ; preds = %65, %83
  %84 = phi ptr [ %95, %83 ], [ %1, %65 ]
  %85 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %86 = load i64, ptr %66, align 8, !tbaa !78
  %87 = add nsw i32 %85, -8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !78
  %91 = and i64 %90, %86
  %92 = icmp eq i64 %91, 0
  %93 = add nsw i32 %85, -16
  %94 = select i1 %92, i32 %93, i32 %87, !prof !276
  %95 = call noundef ptr @_Z8add_movePiiii(ptr noundef %84, i32 noundef %94, i32 noundef %85, i32 noundef 0) #5
  %96 = load i64, ptr %4, align 8, !tbaa !78
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %83, !prof !277, !llvm.loop !278

98:                                               ; preds = %50, %83, %32, %65
  %99 = phi ptr [ %1, %65 ], [ %1, %32 ], [ %95, %83 ], [ %62, %50 ]
  %100 = load i32, ptr %6, align 4, !tbaa !76
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %103 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %104 = select i1 %101, ptr %102, ptr %103, !prof !268
  %105 = load i64, ptr %104, align 8, !tbaa !78
  store i64 %105, ptr %4, align 8, !tbaa !78
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %127, label %111, !prof !279

107:                                              ; preds = %119, %111
  %108 = phi ptr [ %112, %111 ], [ %122, %119 ]
  %109 = load i64, ptr %4, align 8, !tbaa !78
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %125, label %111, !prof !280

111:                                              ; preds = %98, %107
  %112 = phi ptr [ %108, %107 ], [ %99, %98 ]
  %113 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !78
  %117 = and i64 %116, %29
  store i64 %117, ptr %5, align 8, !tbaa !78
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %107, label %119, !prof !281, !llvm.loop !282

119:                                              ; preds = %111, %119
  %120 = phi ptr [ %122, %119 ], [ %112, %111 ]
  %121 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #5
  %122 = call noundef ptr @_Z8add_movePiiii(ptr noundef %120, i32 noundef %113, i32 noundef %121, i32 noundef 0) #5
  %123 = load i64, ptr %5, align 8, !tbaa !78
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %107, label %119, !prof !283, !llvm.loop !284

125:                                              ; preds = %107
  %126 = load i32, ptr %6, align 4, !tbaa !76
  br label %127

127:                                              ; preds = %125, %98
  %128 = phi i32 [ %100, %98 ], [ %126, %125 ]
  %129 = phi ptr [ %99, %98 ], [ %108, %125 ]
  %130 = icmp eq i32 %128, 0
  %131 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %132 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %133 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %134 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %135 = select i1 %130, ptr %132, ptr %134, !prof !268
  %136 = select i1 %130, ptr %131, ptr %133, !prof !268
  %137 = load i64, ptr %136, align 8, !tbaa !78
  %138 = load i64, ptr %135, align 8, !tbaa !78
  %139 = or i64 %138, %137
  store i64 %139, ptr %4, align 8, !tbaa !78
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %159, label %145, !prof !285

141:                                              ; preds = %151, %145
  %142 = phi ptr [ %146, %145 ], [ %154, %151 ]
  %143 = load i64, ptr %4, align 8, !tbaa !78
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %157, label %145, !prof !286

145:                                              ; preds = %127, %141
  %146 = phi ptr [ %142, %141 ], [ %129, %127 ]
  %147 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %148 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %147) #5
  %149 = and i64 %148, %29
  store i64 %149, ptr %5, align 8, !tbaa !78
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %141, label %151, !prof !287, !llvm.loop !288

151:                                              ; preds = %145, %151
  %152 = phi ptr [ %154, %151 ], [ %146, %145 ]
  %153 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #5
  %154 = call noundef ptr @_Z8add_movePiiii(ptr noundef %152, i32 noundef %147, i32 noundef %153, i32 noundef 0) #5
  %155 = load i64, ptr %5, align 8, !tbaa !78
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %141, label %151, !prof !289, !llvm.loop !290

157:                                              ; preds = %141
  %158 = load i32, ptr %6, align 4, !tbaa !76
  br label %159

159:                                              ; preds = %157, %127
  %160 = phi i32 [ %128, %127 ], [ %158, %157 ]
  %161 = phi ptr [ %129, %127 ], [ %142, %157 ]
  %162 = icmp eq i32 %160, 0
  %163 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %164 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %165 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %166 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %167 = select i1 %162, ptr %164, ptr %166, !prof !268
  %168 = select i1 %162, ptr %163, ptr %165, !prof !268
  %169 = load i64, ptr %168, align 8, !tbaa !78
  %170 = load i64, ptr %167, align 8, !tbaa !78
  %171 = or i64 %170, %169
  store i64 %171, ptr %4, align 8, !tbaa !78
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %189, label %177, !prof !285

173:                                              ; preds = %183, %177
  %174 = phi ptr [ %178, %177 ], [ %186, %183 ]
  %175 = load i64, ptr %4, align 8, !tbaa !78
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %189, label %177, !prof !291

177:                                              ; preds = %159, %173
  %178 = phi ptr [ %174, %173 ], [ %161, %159 ]
  %179 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %180 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %179) #5
  %181 = and i64 %180, %29
  store i64 %181, ptr %5, align 8, !tbaa !78
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %173, label %183, !prof !292, !llvm.loop !293

183:                                              ; preds = %177, %183
  %184 = phi ptr [ %186, %183 ], [ %178, %177 ]
  %185 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #5
  %186 = call noundef ptr @_Z8add_movePiiii(ptr noundef %184, i32 noundef %179, i32 noundef %185, i32 noundef 0) #5
  %187 = load i64, ptr %5, align 8, !tbaa !78
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %173, label %183, !prof !294, !llvm.loop !295

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
define dso_local noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !296 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !70
  %10 = xor i64 %9, -1
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %13 = select i1 %7, ptr %11, ptr %12, !prof !297
  %14 = load i32, ptr %13, align 4, !tbaa !82
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !78
  %18 = and i64 %17, %10
  store i64 %18, ptr %4, align 8, !tbaa !78
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20, !prof !298

20:                                               ; preds = %3, %20
  %21 = phi ptr [ %23, %20 ], [ %1, %3 ]
  %22 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4) #5
  %23 = call noundef ptr @_Z8add_movePiiii(ptr noundef %21, i32 noundef %14, i32 noundef %22, i32 noundef 0) #5
  %24 = load i64, ptr %4, align 8, !tbaa !78
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %20, !prof !299, !llvm.loop !300

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!68}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!36 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 374798787}
!37 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z11add_capturePiiiiii, i64 269754670}
!38 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z8add_movePiiii, i64 59949179}
!39 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 16383354}
!40 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 22981286}
!41 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z20check_castle_blockerP7state_ti, i64 897642}
!42 = !{ptr @_Z9gen_quietP7state_tPi, ptr @_Z15add_king_castlePiiii, i64 493677}
!43 = !{ptr @_Z3genP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 2377061901}
!44 = !{ptr @_Z3genP7state_tPi, ptr @_Z11add_capturePiiiiii, i64 1756700583}
!45 = !{ptr @_Z3genP7state_tPi, ptr @_Z8add_movePiiii, i64 352192321}
!46 = !{ptr @_Z3genP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 99306781}
!47 = !{ptr @_Z3genP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 132963646}
!48 = !{ptr @_Z3genP7state_tPi, ptr @_Z20check_castle_blockerP7state_ti, i64 4880174}
!49 = !{ptr @_Z3genP7state_tPi, ptr @_Z15add_king_castlePiiii, i64 2359659}
!50 = !{ptr @_Z12gen_capturesP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 1796430719}
!51 = !{ptr @_Z12gen_capturesP7state_tPi, ptr @_Z11add_capturePiiiiii, i64 735588901}
!52 = !{ptr @_Z12gen_capturesP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 525900870}
!53 = !{ptr @_Z12gen_capturesP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 389762778}
!54 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z15FindFirstRemovePy, i64 486618415}
!55 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z11add_capturePiiiiii, i64 70373214}
!56 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z8add_movePiiii, i64 1782280}
!57 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z11RookAttacksP7state_ti, i64 270947196}
!58 = !{ptr @_Z15gen_good_checksP7state_tPi, ptr @_Z13BishopAttacksP7state_ti, i64 166565838}
!59 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z4ranki, i64 47054432}
!60 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z15FindFirstRemovePy, i64 457742877}
!61 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z8add_movePiiii, i64 253014098}
!62 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z11RookAttacksP7state_ti, i64 104318282}
!63 = !{ptr @_Z16gen_check_blocksP7state_tPii, ptr @_Z13BishopAttacksP7state_ti, i64 77992233}
!64 = !{ptr @_Z12gen_evasionsP7state_tPii, ptr @_Z15FindFirstRemovePy, i64 223177909}
!65 = !{ptr @_Z12gen_evasionsP7state_tPii, ptr @_Z8add_movePiiii, i64 223177909}
!66 = !{ptr @_Z12gen_evasionsP7state_tPii, ptr @_Z12gen_capturesP7state_tPi, i64 54143365}
!67 = !{ptr @_Z12gen_evasionsP7state_tPii, ptr @_Z16gen_check_blocksP7state_tPii, i64 27071682}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 9526698}
!70 = !{!71, !75, i64 264}
!71 = !{!"_ZTS7state_t", !72, i64 0, !73, i64 4, !75, i64 264, !75, i64 272, !75, i64 280, !73, i64 288, !72, i64 392, !72, i64 396, !73, i64 400, !72, i64 452, !72, i64 456, !72, i64 460, !72, i64 464, !72, i64 468, !72, i64 472, !72, i64 476, !75, i64 480, !75, i64 488, !73, i64 496, !73, i64 2544, !73, i64 2800, !73, i64 3056, !75, i64 4080, !75, i64 4088, !72, i64 4096, !73, i64 4100, !72, i64 4356, !72, i64 4360, !72, i64 4364, !72, i64 4368, !72, i64 4372, !72, i64 4376, !72, i64 4380, !72, i64 4384, !72, i64 4388, !72, i64 4392, !73, i64 4400}
!72 = !{!"int", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C++ TBAA"}
!75 = !{!"long long", !73, i64 0}
!76 = !{!71, !72, i64 460}
!77 = !{!"branch_weights", i32 4486084, i32 5040616}
!78 = !{!75, !75, i64 0}
!79 = !{!"branch_weights", i32 1, i32 5040615}
!80 = !{!"branch_weights", i32 10607865, i32 22172855}
!81 = !{!"branch_weights", i32 23433, i32 32757287}
!82 = !{!72, !72, i64 0}
!83 = !{!"branch_weights", i32 5040615, i32 27740104}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"branch_weights", i32 1, i32 4486083}
!87 = !{!"branch_weights", i32 8551400, i32 18655201}
!88 = !{!"branch_weights", i32 14694, i32 27191907}
!89 = !{!"branch_weights", i32 4486083, i32 22720517}
!90 = distinct !{!90, !85}
!91 = !{!"branch_weights", i32 3682019, i32 5844680}
!92 = !{!"branch_weights", i32 5844680, i32 0}
!93 = !{!"branch_weights", i32 1, i32 5844679}
!94 = distinct !{!94, !85}
!95 = !{!"branch_weights", i32 5844679, i32 22393377}
!96 = distinct !{!96, !85}
!97 = !{!"branch_weights", i32 1, i32 9526698}
!98 = !{!"branch_weights", i32 9526698, i32 6856658}
!99 = !{!"branch_weights", i32 1, i32 16383355}
!100 = distinct !{!100, !85}
!101 = !{!"branch_weights", i32 16383355, i32 64312675}
!102 = distinct !{!102, !85}
!103 = !{!"branch_weights", i32 9526698, i32 13454590}
!104 = !{!"branch_weights", i32 1, i32 22981287}
!105 = distinct !{!105, !85}
!106 = !{!"branch_weights", i32 22981287, i32 106076870}
!107 = distinct !{!107, !85}
!108 = !{!71, !72, i64 452}
!109 = !{!"branch_weights", i32 4961097, i32 79520}
!110 = !{!"branch_weights", i32 75897, i32 3624}
!111 = !{!71, !72, i64 464}
!112 = !{!"branch_weights", i32 4871603, i32 169014}
!113 = !{!"branch_weights", i32 73601, i32 95414}
!114 = !{!"branch_weights", i32 4159216, i32 326869}
!115 = !{!"branch_weights", i32 247946, i32 78924}
!116 = !{!71, !72, i64 468}
!117 = !{!"branch_weights", i32 4163846, i32 322239}
!118 = !{!"branch_weights", i32 96235, i32 226005}
!119 = !{!"branch_weights", i32 9526698, i32 22083250}
!120 = distinct !{!120, !85}
!121 = !{!"function_entry_count", i64 2832417385}
!122 = !{!"function_entry_count", i64 890115814}
!123 = !{!"function_entry_count", i64 2853332}
!124 = !{!"function_entry_count", i64 57573436}
!125 = !{!"branch_weights", i32 26824882, i32 30748556}
!126 = !{!"branch_weights", i32 1, i32 30748555}
!127 = !{!"branch_weights", i32 61408184, i32 127183589}
!128 = !{!"branch_weights", i32 289198, i32 188302575}
!129 = !{!"branch_weights", i32 30748555, i32 157843217}
!130 = distinct !{!130, !85}
!131 = !{!"branch_weights", i32 1, i32 26824881}
!132 = !{!"branch_weights", i32 52813342, i32 111344603}
!133 = !{!"branch_weights", i32 268185, i32 163889760}
!134 = !{!"branch_weights", i32 26824881, i32 137333063}
!135 = distinct !{!135, !85}
!136 = !{!71, !72, i64 456}
!137 = !{!71, !75, i64 272}
!138 = !{!"branch_weights", i32 637180, i32 30111377}
!139 = !{!"branch_weights", i32 23019859, i32 7728697}
!140 = !{!"branch_weights", i32 369772, i32 7358926}
!141 = !{!"branch_weights", i32 3115744, i32 4243183}
!142 = !{!"branch_weights", i32 77142, i32 4166042}
!143 = !{!"branch_weights", i32 69445, i32 4096598}
!144 = !{!"branch_weights", i32 99819160, i32 2047664488}
!145 = !{!"branch_weights", i32 3737795, i32 3648847}
!146 = !{!"branch_weights", i32 78616, i32 3570232}
!147 = !{!"branch_weights", i32 6900, i32 3563333}
!148 = !{!"branch_weights", i32 7728697, i32 0}
!149 = distinct !{!149, !85}
!150 = !{!71, !75, i64 280}
!151 = !{!"branch_weights", i32 766503, i32 26058380}
!152 = !{!"branch_weights", i32 18007728, i32 8817154}
!153 = !{!"branch_weights", i32 559072, i32 8258083}
!154 = !{!"branch_weights", i32 4700529, i32 3557555}
!155 = !{!"branch_weights", i32 43580, i32 3513976}
!156 = !{!"branch_weights", i32 4180, i32 3509797}
!157 = !{!"branch_weights", i32 151934110, i32 1995549538}
!158 = !{!"branch_weights", i32 2802213, i32 5430685}
!159 = !{!"branch_weights", i32 80318, i32 5350368}
!160 = !{!"branch_weights", i32 1896, i32 5348473}
!161 = !{!"branch_weights", i32 8817154, i32 0}
!162 = distinct !{!162, !85}
!163 = !{!"branch_weights", i32 18829334, i32 38744103}
!164 = !{!"branch_weights", i32 38744103, i32 0}
!165 = !{!"branch_weights", i32 1, i32 38744102}
!166 = distinct !{!166, !85}
!167 = !{!"branch_weights", i32 38744102, i32 177940704}
!168 = distinct !{!168, !85}
!169 = !{!"branch_weights", i32 1, i32 57573436}
!170 = !{!"branch_weights", i32 57573436, i32 41733347}
!171 = !{!"branch_weights", i32 1, i32 99306782}
!172 = distinct !{!172, !85}
!173 = !{!"branch_weights", i32 99306782, i32 431079511}
!174 = distinct !{!174, !85}
!175 = !{!"branch_weights", i32 57573436, i32 75390212}
!176 = !{!"branch_weights", i32 1, i32 132963647}
!177 = distinct !{!177, !85}
!178 = !{!"branch_weights", i32 132963647, i32 671413707}
!179 = distinct !{!179, !85}
!180 = !{!"branch_weights", i32 30350130, i32 398427}
!181 = !{!"branch_weights", i32 388405, i32 10023}
!182 = !{!"branch_weights", i32 30096692, i32 651865}
!183 = !{!"branch_weights", i32 199286, i32 452580}
!184 = !{!"branch_weights", i32 24741340, i32 2083543}
!185 = !{!"branch_weights", i32 1436948, i32 646596}
!186 = !{!"branch_weights", i32 25078544, i32 1746339}
!187 = !{!"branch_weights", i32 335022, i32 1411318}
!188 = !{!"branch_weights", i32 57573436, i32 127729957}
!189 = distinct !{!189, !85}
!190 = !{!"function_entry_count", i64 243231829}
!191 = !{!"branch_weights", i32 124961039, i32 118270792}
!192 = !{!"branch_weights", i32 117002886, i32 1267906}
!193 = !{!"branch_weights", i32 1267906, i32 0}
!194 = distinct !{!194, !85}
!195 = !{!"branch_weights", i32 362310, i32 117908483}
!196 = !{!"branch_weights", i32 89435091, i32 28835701}
!197 = !{!"branch_weights", i32 1247942, i32 27587760}
!198 = !{!"branch_weights", i32 11758115, i32 15829646}
!199 = !{!"branch_weights", i32 246378, i32 15583269}
!200 = !{!"branch_weights", i32 50231, i32 15533039}
!201 = !{!"branch_weights", i32 89076509, i32 2058407139}
!202 = !{!"branch_weights", i32 13832882, i32 13858495}
!203 = !{!"branch_weights", i32 215408, i32 13643088}
!204 = !{!"branch_weights", i32 5224, i32 13637865}
!205 = !{!"branch_weights", i32 28835701, i32 0}
!206 = distinct !{!206, !85}
!207 = !{!"branch_weights", i32 123751516, i32 1209523}
!208 = !{!"branch_weights", i32 1209523, i32 0}
!209 = distinct !{!209, !85}
!210 = !{!"branch_weights", i32 811535, i32 124149505}
!211 = !{!"branch_weights", i32 87831476, i32 37129563}
!212 = !{!"branch_weights", i32 2325264, i32 34804300}
!213 = !{!"branch_weights", i32 19760069, i32 15044232}
!214 = !{!"branch_weights", i32 165907, i32 14878326}
!215 = !{!"branch_weights", i32 5662, i32 14872665}
!216 = !{!"branch_weights", i32 142732451, i32 2004751197}
!217 = !{!"branch_weights", i32 11926650, i32 22889648}
!218 = !{!"branch_weights", i32 283361, i32 22606288}
!219 = !{!"branch_weights", i32 2726, i32 22603563}
!220 = !{!"branch_weights", i32 37129563, i32 0}
!221 = distinct !{!221, !85}
!222 = !{!"branch_weights", i32 208106908, i32 35124922}
!223 = !{!"branch_weights", i32 35124922, i32 0}
!224 = distinct !{!224, !85}
!225 = !{!"branch_weights", i32 96396906, i32 146834924}
!226 = !{!"branch_weights", i32 146834924, i32 0}
!227 = !{!"branch_weights", i32 36214126, i32 110620798}
!228 = distinct !{!228, !85}
!229 = !{!"branch_weights", i32 110620798, i32 0}
!230 = distinct !{!230, !85}
!231 = !{!"branch_weights", i32 1, i32 243231829}
!232 = !{!"branch_weights", i32 243231829, i32 282669043}
!233 = !{!"branch_weights", i32 224740436, i32 301160436}
!234 = distinct !{!234, !85}
!235 = !{!"branch_weights", i32 301160436, i32 0}
!236 = distinct !{!236, !85}
!237 = !{!"branch_weights", i32 243231829, i32 146530951}
!238 = !{!"branch_weights", i32 171179479, i32 218583301}
!239 = distinct !{!239, !85}
!240 = !{!"branch_weights", i32 218583301, i32 0}
!241 = distinct !{!241, !85}
!242 = !{!"function_entry_count", i64 68609666}
!243 = !{!"branch_weights", i32 27913996, i32 40695672}
!244 = !{!"branch_weights", i32 29322672, i32 39286995}
!245 = !{!"branch_weights", i32 39286995, i32 0}
!246 = !{!"branch_weights", i32 31250888, i32 8036107}
!247 = distinct !{!247, !85}
!248 = !{!"branch_weights", i32 8036107, i32 0}
!249 = distinct !{!249, !85}
!250 = !{!"branch_weights", i32 66827387, i32 1782280}
!251 = !{!"branch_weights", i32 208438, i32 1573843}
!252 = !{!"branch_weights", i32 1782280, i32 0}
!253 = distinct !{!253, !85}
!254 = !{!"branch_weights", i32 1, i32 68609666}
!255 = !{!"branch_weights", i32 68609666, i32 77298886}
!256 = !{!"branch_weights", i32 20869904, i32 125038648}
!257 = distinct !{!257, !85}
!258 = !{!"branch_weights", i32 83885986, i32 41152663}
!259 = !{!"branch_weights", i32 125038648, i32 0}
!260 = distinct !{!260, !85}
!261 = !{!"branch_weights", i32 68609666, i32 34720279}
!262 = !{!"branch_weights", i32 40094050, i32 63235895}
!263 = distinct !{!263, !85}
!264 = !{!"branch_weights", i32 42051450, i32 21184446}
!265 = !{!"branch_weights", i32 63235895, i32 0}
!266 = distinct !{!266, !85}
!267 = !{!"function_entry_count", i64 47054432}
!268 = !{!"branch_weights", i32 33390871, i32 13663563}
!269 = !{!"branch_weights", i32 -2084213752, i32 -234635314}
!270 = !{!"branch_weights", i32 -21281189, i32 140}
!271 = !{!"branch_weights", i32 1959587, i32 11703976}
!272 = !{!"branch_weights", i32 3674269, i32 8029708}
!273 = !{!"branch_weights", i32 11703976, i32 0}
!274 = distinct !{!274, !85}
!275 = !{!"branch_weights", i32 8312383, i32 25078488}
!276 = !{!"branch_weights", i32 6812875, i32 18265614}
!277 = !{!"branch_weights", i32 25078488, i32 0}
!278 = distinct !{!278, !85}
!279 = !{!"branch_weights", i32 24636169, i32 22418264}
!280 = !{!"branch_weights", i32 22418264, i32 0}
!281 = !{!"branch_weights", i32 2957927, i32 19460337}
!282 = distinct !{!282, !85}
!283 = !{!"branch_weights", i32 19460337, i32 0}
!284 = distinct !{!284, !85}
!285 = !{!"branch_weights", i32 1, i32 47054432}
!286 = !{!"branch_weights", i32 47054432, i32 57263852}
!287 = !{!"branch_weights", i32 1, i32 104318283}
!288 = distinct !{!288, !85}
!289 = !{!"branch_weights", i32 104318283, i32 22161216}
!290 = distinct !{!290, !85}
!291 = !{!"branch_weights", i32 47054432, i32 30937803}
!292 = !{!"branch_weights", i32 7700432, i32 70291803}
!293 = distinct !{!293, !85}
!294 = !{!"branch_weights", i32 70291803, i32 0}
!295 = distinct !{!295, !85}
!296 = !{!"function_entry_count", i64 54143365}
!297 = !{!"branch_weights", i32 37826286, i32 16317081}
!298 = !{!"branch_weights", i32 1, i32 54143365}
!299 = !{!"branch_weights", i32 54143365, i32 169034548}
!300 = distinct !{!300, !85}
