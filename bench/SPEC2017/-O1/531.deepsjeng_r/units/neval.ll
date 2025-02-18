; ModuleID = 'neval.cpp'
source_filename = "neval.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.pawntt_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.t_eval_comps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@material = dso_local local_unnamed_addr constant [14 x i32] [i32 0, i32 85, i32 -85, i32 305, i32 -305, i32 40000, i32 -40000, i32 490, i32 -490, i32 935, i32 -935, i32 330, i32 -330, i32 0], align 16
@FileMask = external local_unnamed_addr global [8 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@KingFilesMask = external local_unnamed_addr global [8 x i64], align 16
@RankMask = external local_unnamed_addr global [8 x i64], align 16
@KingPressureMask = external local_unnamed_addr global [64 x i64], align 16
@KingPressureMask1 = external local_unnamed_addr global [64 x i64], align 16
@_ZL8w_passer = internal unnamed_addr constant [6 x i32] [i32 185, i32 120, i32 70, i32 40, i32 20, i32 15], align 16
@_ZL23w_passer_pawn_supported = internal unnamed_addr constant [6 x i32] [i32 65, i32 25, i32 8, i32 -3, i32 -5, i32 -5], align 16
@_ZL23w_passer_king_supported = internal unnamed_addr constant [6 x i32] [i32 -25, i32 25, i32 7, i32 5, i32 5, i32 4], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@_ZL13w_passer_free = internal unnamed_addr constant [6 x i32] [i32 185, i32 15, i32 10, i32 8, i32 3, i32 1], align 16
@_ZL18w_passer_very_free = internal unnamed_addr constant [6 x i32] [i32 0, i32 80, i32 30, i32 15, i32 10, i32 10], align 16
@_ZL16w_passer_blocked = internal unnamed_addr constant [6 x i32] [i32 -25, i32 -10, i32 -4, i32 0, i32 0, i32 0], align 16
@FileDownMask = external local_unnamed_addr global [64 x i64], align 16
@FileUpMask = external local_unnamed_addr global [64 x i64], align 16
@WhiteSqMask = external local_unnamed_addr global i64, align 8
@BlackSqMask = external local_unnamed_addr global i64, align 8

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_Z5fevalP7state_tiP12t_eval_comps(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !49 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %11 = load i64, ptr %10, align 8, !tbaa !57
  %12 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !57
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  %15 = lshr i64 %14, 7
  %16 = load i64, ptr @FileMask, align 16, !tbaa !57
  %17 = xor i64 %16, -1
  %18 = and i64 %11, %17
  %19 = lshr i64 %18, 9
  %20 = or i64 %19, %15
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %22 = load i64, ptr %21, align 8, !tbaa !57
  %23 = and i64 %22, %13
  %24 = shl i64 %23, 9
  %25 = and i64 %22, %17
  %26 = shl i64 %25, 7
  %27 = or i64 %24, %26
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %29 = load i64, ptr %28, align 8, !tbaa !57
  store i64 %29, ptr %5, align 8, !tbaa !57
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %60, label %31, !prof !58

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %35 = or i64 %27, %7
  %36 = xor i64 %35, -1
  br label %37

37:                                               ; preds = %31, %37
  %38 = phi i32 [ 0, %31 ], [ %57, %37 ]
  %39 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %40 = load i64, ptr %32, align 8, !tbaa !57
  %41 = load i64, ptr %33, align 8, !tbaa !57
  %42 = or i64 %41, %40
  %43 = load i64, ptr %34, align 8, !tbaa !59
  %44 = xor i64 %43, %42
  store i64 %44, ptr %34, align 8, !tbaa !59
  %45 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %39)
  %46 = load i64, ptr %10, align 8, !tbaa !57
  %47 = and i64 %46, %45
  %48 = and i64 %45, %36
  %49 = load i64, ptr %32, align 8, !tbaa !57
  %50 = load i64, ptr %33, align 8, !tbaa !57
  %51 = or i64 %50, %49
  %52 = load i64, ptr %34, align 8, !tbaa !59
  %53 = xor i64 %52, %51
  store i64 %53, ptr %34, align 8, !tbaa !59
  %54 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %48)
  %55 = call noundef i32 @_Z8PopCounty(i64 noundef %47)
  %56 = add i32 %54, %38
  %57 = sub i32 %56, %55
  %58 = load i64, ptr %5, align 8, !tbaa !57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %37, !prof !60, !llvm.loop !61

60:                                               ; preds = %37, %3
  %61 = phi i64 [ 0, %3 ], [ %45, %37 ]
  %62 = phi i32 [ 0, %3 ], [ %57, %37 ]
  %63 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %64 = load i64, ptr %63, align 8, !tbaa !57
  store i64 %64, ptr %5, align 8, !tbaa !57
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %95, label %66, !prof !64

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %68 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %69 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %70 = or i64 %20, %9
  %71 = xor i64 %70, -1
  br label %72

72:                                               ; preds = %66, %72
  %73 = phi i32 [ 0, %66 ], [ %92, %72 ]
  %74 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %75 = load i64, ptr %67, align 8, !tbaa !57
  %76 = load i64, ptr %68, align 8, !tbaa !57
  %77 = or i64 %76, %75
  %78 = load i64, ptr %69, align 8, !tbaa !59
  %79 = xor i64 %78, %77
  store i64 %79, ptr %69, align 8, !tbaa !59
  %80 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %74)
  %81 = load i64, ptr %21, align 8, !tbaa !57
  %82 = and i64 %81, %80
  %83 = and i64 %80, %71
  %84 = load i64, ptr %67, align 8, !tbaa !57
  %85 = load i64, ptr %68, align 8, !tbaa !57
  %86 = or i64 %85, %84
  %87 = load i64, ptr %69, align 8, !tbaa !59
  %88 = xor i64 %87, %86
  store i64 %88, ptr %69, align 8, !tbaa !59
  %89 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %83)
  %90 = call noundef i32 @_Z8PopCounty(i64 noundef %82)
  %91 = sub i32 %73, %89
  %92 = add i32 %91, %90
  %93 = load i64, ptr %5, align 8, !tbaa !57
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %72, !prof !65, !llvm.loop !66

95:                                               ; preds = %72, %60
  %96 = phi i64 [ 0, %60 ], [ %80, %72 ]
  %97 = phi i32 [ 0, %60 ], [ %92, %72 ]
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %99 = load i64, ptr %98, align 8, !tbaa !57
  store i64 %99, ptr %5, align 8, !tbaa !57
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %172, label %101, !prof !58

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %103 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %104 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %105 = or i64 %27, %7
  %106 = xor i64 %105, -1
  br label %107

107:                                              ; preds = %101, %168
  %108 = phi i32 [ 0, %101 ], [ %169, %168 ]
  %109 = phi i32 [ %62, %101 ], [ %128, %168 ]
  %110 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %111 = load i64, ptr %102, align 8, !tbaa !57
  %112 = load i64, ptr %103, align 8, !tbaa !57
  %113 = or i64 %112, %111
  %114 = load i64, ptr %104, align 8, !tbaa !59
  %115 = xor i64 %114, %113
  store i64 %115, ptr %104, align 8, !tbaa !59
  %116 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %110)
  %117 = load i64, ptr %10, align 8, !tbaa !57
  %118 = and i64 %117, %116
  %119 = and i64 %116, %106
  %120 = load i64, ptr %102, align 8, !tbaa !57
  %121 = load i64, ptr %103, align 8, !tbaa !57
  %122 = or i64 %121, %120
  %123 = load i64, ptr %104, align 8, !tbaa !59
  %124 = xor i64 %123, %122
  store i64 %124, ptr %104, align 8, !tbaa !59
  %125 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %119)
  %126 = call noundef i32 @_Z8PopCounty(i64 noundef %118)
  %127 = add i32 %125, %109
  %128 = sub i32 %127, %126
  %129 = and i32 %110, 7
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !57
  %133 = load i64, ptr %10, align 8, !tbaa !57
  %134 = and i64 %133, %132
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %168, !prof !67

136:                                              ; preds = %107
  %137 = load i64, ptr %98, align 8, !tbaa !57
  %138 = and i64 %137, %132
  %139 = call noundef i32 @_Z8PopCounty(i64 noundef %138)
  %140 = load i64, ptr %131, align 8, !tbaa !57
  %141 = load i64, ptr %21, align 8, !tbaa !57
  %142 = and i64 %141, %140
  %143 = icmp eq i64 %142, 0
  %144 = icmp sgt i32 %139, 1
  br i1 %143, label %145, label %154, !prof !68

145:                                              ; preds = %136
  br i1 %144, label %146, label %150, !prof !69

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %148 = load i32, ptr %147, align 4, !tbaa !70
  %149 = add nsw i32 %148, 12
  br label %165

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %152 = load i32, ptr %151, align 4, !tbaa !70
  %153 = add nsw i32 %152, 8
  br label %165

154:                                              ; preds = %136
  br i1 %144, label %155, label %160, !prof !71

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %157 = load i32, ptr %156, align 4, !tbaa !70
  %158 = ashr i32 %157, 1
  %159 = add nsw i32 %158, 8
  br label %165

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %162 = load i32, ptr %161, align 4, !tbaa !70
  %163 = ashr i32 %162, 1
  %164 = add nsw i32 %163, 4
  br label %165

165:                                              ; preds = %160, %155, %150, %146
  %166 = phi i32 [ %159, %155 ], [ %164, %160 ], [ %149, %146 ], [ %153, %150 ]
  %167 = add nsw i32 %166, %108
  br label %168

168:                                              ; preds = %165, %107
  %169 = phi i32 [ %108, %107 ], [ %167, %165 ]
  %170 = load i64, ptr %5, align 8, !tbaa !57
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %107, !prof !72, !llvm.loop !73

172:                                              ; preds = %168, %95
  %173 = phi i64 [ 0, %95 ], [ %116, %168 ]
  %174 = phi i32 [ %62, %95 ], [ %128, %168 ]
  %175 = phi i32 [ 0, %95 ], [ %169, %168 ]
  %176 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %177 = load i64, ptr %176, align 8, !tbaa !57
  store i64 %177, ptr %5, align 8, !tbaa !57
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %250, label %179, !prof !58

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %181 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %182 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %183 = or i64 %20, %9
  %184 = xor i64 %183, -1
  br label %185

185:                                              ; preds = %179, %246
  %186 = phi i32 [ %175, %179 ], [ %247, %246 ]
  %187 = phi i32 [ %97, %179 ], [ %206, %246 ]
  %188 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %189 = load i64, ptr %180, align 8, !tbaa !57
  %190 = load i64, ptr %181, align 8, !tbaa !57
  %191 = or i64 %190, %189
  %192 = load i64, ptr %182, align 8, !tbaa !59
  %193 = xor i64 %192, %191
  store i64 %193, ptr %182, align 8, !tbaa !59
  %194 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %188)
  %195 = load i64, ptr %21, align 8, !tbaa !57
  %196 = and i64 %195, %194
  %197 = and i64 %194, %184
  %198 = load i64, ptr %180, align 8, !tbaa !57
  %199 = load i64, ptr %181, align 8, !tbaa !57
  %200 = or i64 %199, %198
  %201 = load i64, ptr %182, align 8, !tbaa !59
  %202 = xor i64 %201, %200
  store i64 %202, ptr %182, align 8, !tbaa !59
  %203 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %197)
  %204 = call noundef i32 @_Z8PopCounty(i64 noundef %196)
  %205 = sub i32 %187, %203
  %206 = add i32 %205, %204
  %207 = and i32 %188, 7
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !57
  %211 = load i64, ptr %21, align 8, !tbaa !57
  %212 = and i64 %211, %210
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %246, !prof !74

214:                                              ; preds = %185
  %215 = load i64, ptr %176, align 8, !tbaa !57
  %216 = and i64 %215, %210
  %217 = call noundef i32 @_Z8PopCounty(i64 noundef %216)
  %218 = load i64, ptr %209, align 8, !tbaa !57
  %219 = load i64, ptr %10, align 8, !tbaa !57
  %220 = and i64 %219, %218
  %221 = icmp eq i64 %220, 0
  %222 = icmp sgt i32 %217, 1
  br i1 %221, label %223, label %232, !prof !75

223:                                              ; preds = %214
  br i1 %222, label %224, label %228, !prof !76

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %226 = load i32, ptr %225, align 8, !tbaa !70
  %227 = add nsw i32 %226, 12
  br label %243

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %230 = load i32, ptr %229, align 8, !tbaa !70
  %231 = add nsw i32 %230, 8
  br label %243

232:                                              ; preds = %214
  br i1 %222, label %233, label %238, !prof !77

233:                                              ; preds = %232
  %234 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %235 = load i32, ptr %234, align 8, !tbaa !70
  %236 = ashr i32 %235, 1
  %237 = add nsw i32 %236, 8
  br label %243

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %240 = load i32, ptr %239, align 8, !tbaa !70
  %241 = ashr i32 %240, 1
  %242 = add nsw i32 %241, 4
  br label %243

243:                                              ; preds = %238, %233, %228, %224
  %244 = phi i32 [ %237, %233 ], [ %242, %238 ], [ %227, %224 ], [ %231, %228 ]
  %245 = sub nsw i32 %186, %244
  br label %246

246:                                              ; preds = %243, %185
  %247 = phi i32 [ %186, %185 ], [ %245, %243 ]
  %248 = load i64, ptr %5, align 8, !tbaa !57
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %185, !prof !78, !llvm.loop !79

250:                                              ; preds = %246, %172
  %251 = phi i64 [ 0, %172 ], [ %194, %246 ]
  %252 = phi i32 [ %97, %172 ], [ %206, %246 ]
  %253 = phi i32 [ %175, %172 ], [ %247, %246 ]
  %254 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %255 = load i64, ptr %254, align 8, !tbaa !57
  store i64 %255, ptr %5, align 8, !tbaa !57
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %272, label %257, !prof !80

257:                                              ; preds = %250
  %258 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %259

259:                                              ; preds = %257, %259
  %260 = phi i32 [ %253, %257 ], [ %267, %259 ]
  %261 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %262 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %261)
  %263 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %261)
  %264 = load i32, ptr %258, align 4, !tbaa !81
  %265 = call noundef i32 @_Z8sum_distii(i32 noundef %261, i32 noundef %264)
  %266 = add i32 %260, 14
  %267 = sub i32 %266, %265
  %268 = load i64, ptr %5, align 8, !tbaa !57
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %259, !prof !82, !llvm.loop !83

270:                                              ; preds = %259
  %271 = or i64 %263, %262
  br label %272

272:                                              ; preds = %270, %250
  %273 = phi i64 [ %271, %270 ], [ 0, %250 ]
  %274 = phi i32 [ %267, %270 ], [ %253, %250 ]
  %275 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %276 = load i64, ptr %275, align 8, !tbaa !57
  store i64 %276, ptr %5, align 8, !tbaa !57
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %293, label %278, !prof !84

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %280

280:                                              ; preds = %278, %280
  %281 = phi i32 [ %274, %278 ], [ %288, %280 ]
  %282 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %283 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %282)
  %284 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %282)
  %285 = load i32, ptr %279, align 8, !tbaa !85
  %286 = call noundef i32 @_Z8sum_distii(i32 noundef %282, i32 noundef %285)
  %287 = add i32 %281, -14
  %288 = add i32 %287, %286
  %289 = load i64, ptr %5, align 8, !tbaa !57
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %280, !prof !86, !llvm.loop !87

291:                                              ; preds = %280
  %292 = or i64 %284, %283
  br label %293

293:                                              ; preds = %291, %272
  %294 = phi i64 [ %292, %291 ], [ 0, %272 ]
  %295 = phi i32 [ %288, %291 ], [ %274, %272 ]
  %296 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %297 = load i64, ptr %296, align 8, !tbaa !57
  store i64 %297, ptr %5, align 8, !tbaa !57
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %314, label %299, !prof !88

299:                                              ; preds = %293
  %300 = or i64 %27, %7
  %301 = xor i64 %300, -1
  br label %302

302:                                              ; preds = %299, %302
  %303 = phi i32 [ %174, %299 ], [ %311, %302 ]
  %304 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !57
  %308 = and i64 %307, %301
  %309 = call noundef i32 @_Z8PopCounty(i64 noundef %308)
  %310 = shl nsw i32 %309, 1
  %311 = add nsw i32 %310, %303
  %312 = load i64, ptr %5, align 8, !tbaa !57
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %302, !prof !89, !llvm.loop !90

314:                                              ; preds = %302, %293
  %315 = phi i64 [ 0, %293 ], [ %307, %302 ]
  %316 = phi i32 [ %174, %293 ], [ %311, %302 ]
  %317 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %318 = load i64, ptr %317, align 8, !tbaa !57
  store i64 %318, ptr %5, align 8, !tbaa !57
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %335, label %320, !prof !91

320:                                              ; preds = %314
  %321 = or i64 %20, %9
  %322 = xor i64 %321, -1
  br label %323

323:                                              ; preds = %320, %323
  %324 = phi i32 [ %252, %320 ], [ %332, %323 ]
  %325 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5)
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %326
  %328 = load i64, ptr %327, align 8, !tbaa !57
  %329 = and i64 %328, %322
  %330 = call noundef i32 @_Z8PopCounty(i64 noundef %329)
  %331 = shl nsw i32 %330, 1
  %332 = sub nsw i32 %324, %331
  %333 = load i64, ptr %5, align 8, !tbaa !57
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %323, !prof !92, !llvm.loop !93

335:                                              ; preds = %323, %314
  %336 = phi i64 [ 0, %314 ], [ %328, %323 ]
  %337 = phi i32 [ %252, %314 ], [ %332, %323 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %338 = call noundef ptr @_Z16static_pawn_evalP7state_t(ptr noundef %0)
  %339 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 10
  %340 = load i32, ptr %339, align 8, !tbaa !94
  %341 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 2
  store i32 %340, ptr %341, align 4, !tbaa !96
  %342 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 11
  %343 = load i32, ptr %342, align 4, !tbaa !98
  %344 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 3
  store i32 %343, ptr %344, align 4, !tbaa !99
  %345 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %346 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %347 = load i32, ptr %346, align 4, !tbaa !81
  %348 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %349 = load i32, ptr %348, align 8, !tbaa !70
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %482, label %351, !prof !100

351:                                              ; preds = %335
  %352 = load i32, ptr %345, align 8, !tbaa !85
  %353 = ashr i32 %352, 3
  %354 = and i32 %352, 7
  %355 = zext nneg i32 %354 to i64
  %356 = getelementptr inbounds [8 x i64], ptr @KingFilesMask, i64 0, i64 %355
  %357 = load i64, ptr %356, align 8, !tbaa !57
  %358 = add nsw i32 %354, -3
  %359 = icmp ult i32 %358, 3
  br i1 %359, label %360, label %370, !prof !101

360:                                              ; preds = %351
  %361 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %362 = load i32, ptr %361, align 4, !tbaa !102
  %363 = and i32 %362, 4
  %364 = icmp eq i32 %363, 0
  %365 = select i1 %364, i32 -16, i32 0, !prof !103
  %366 = and i32 %362, 2
  %367 = icmp eq i32 %366, 0
  %368 = add nsw i32 %365, -12
  %369 = select i1 %367, i32 %368, i32 %365, !prof !104
  br label %370

370:                                              ; preds = %360, %351
  %371 = phi i32 [ 0, %351 ], [ %369, %360 ]
  %372 = icmp sgt i32 %353, 2
  br i1 %372, label %373, label %445, !prof !105

373:                                              ; preds = %370
  %374 = load i64, ptr %10, align 8, !tbaa !57
  %375 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !57
  %376 = and i64 %374, %375
  %377 = and i64 %376, %357
  %378 = call noundef i32 @_Z8PopCounty(i64 noundef %377)
  %379 = icmp eq i32 %378, 3
  %380 = add nsw i32 %371, 6
  %381 = select i1 %379, i32 %380, i32 %371, !prof !106
  %382 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 2
  %383 = load i64, ptr %382, align 8, !tbaa !107
  %384 = and i64 %383, %357
  %385 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %384)
  %386 = shl i32 %385, 1
  %387 = sub i32 %381, %386
  %388 = load i32, ptr %345, align 8, !tbaa !85
  %389 = and i32 %388, 7
  switch i32 %389, label %394 [
    i32 0, label %390
    i32 7, label %392
  ], !prof !108

390:                                              ; preds = %373
  %391 = or disjoint i32 %388, 1
  br label %394

392:                                              ; preds = %373
  %393 = add nsw i32 %388, -1
  br label %394

394:                                              ; preds = %392, %390, %373
  %395 = phi i32 [ %391, %390 ], [ %393, %392 ], [ %388, %373 ]
  %396 = add nsw i32 %395, -9
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !70
  %400 = icmp eq i32 %399, 1
  %401 = select i1 %400, i32 12, i32 0, !prof !109
  %402 = add nsw i32 %387, %401
  %403 = add nsw i32 %395, -8
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !70
  %407 = icmp eq i32 %406, 1
  %408 = select i1 %407, i32 24, i32 0, !prof !110
  %409 = add nsw i32 %402, %408
  %410 = add nsw i32 %395, -7
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %411
  %413 = load i32, ptr %412, align 4, !tbaa !70
  %414 = icmp eq i32 %413, 1
  %415 = select i1 %414, i32 12, i32 0, !prof !111
  %416 = add nsw i32 %409, %415
  %417 = add nsw i32 %395, -17
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !70
  %421 = icmp eq i32 %420, 1
  %422 = select i1 %421, i32 4, i32 0, !prof !112
  %423 = add nsw i32 %416, %422
  %424 = add nsw i32 %395, -16
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !70
  %428 = icmp eq i32 %427, 1
  %429 = select i1 %428, i32 10, i32 0, !prof !113
  %430 = add nsw i32 %423, %429
  %431 = add nsw i32 %395, -15
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !70
  %435 = icmp eq i32 %434, 1
  %436 = select i1 %435, i32 4, i32 0, !prof !114
  %437 = add nsw i32 %430, %436
  %438 = add nsw i32 %395, -24
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !70
  %442 = icmp eq i32 %441, 1
  %443 = select i1 %442, i32 4, i32 0, !prof !115
  %444 = add nsw i32 %437, %443
  br label %447

445:                                              ; preds = %370
  %446 = add nsw i32 %371, -30
  br label %447

447:                                              ; preds = %445, %394
  %448 = phi i32 [ %444, %394 ], [ %446, %445 ]
  br i1 %372, label %449, label %470, !prof !105

449:                                              ; preds = %447
  %450 = load i64, ptr %21, align 8, !tbaa !57
  %451 = add nsw i32 %353, -1
  %452 = zext nneg i32 %451 to i64
  %453 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %452
  %454 = load i64, ptr %453, align 8, !tbaa !57
  %455 = add nsw i32 %353, -2
  %456 = zext nneg i32 %455 to i64
  %457 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %456
  %458 = load i64, ptr %457, align 8, !tbaa !57
  %459 = or i64 %458, %454
  %460 = add nsw i32 %353, -3
  %461 = zext nneg i32 %460 to i64
  %462 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %461
  %463 = load i64, ptr %462, align 8, !tbaa !57
  %464 = or i64 %459, %463
  %465 = and i64 %450, %464
  %466 = and i64 %465, %357
  %467 = call noundef i32 @_Z8PopCounty(i64 noundef %466)
  %468 = shl i32 %467, 2
  %469 = sub i32 %448, %468
  br label %470

470:                                              ; preds = %449, %447
  %471 = phi i32 [ %469, %449 ], [ %448, %447 ]
  %472 = load i64, ptr %176, align 8, !tbaa !57
  %473 = load i64, ptr %275, align 8, !tbaa !57
  %474 = or i64 %473, %472
  %475 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 3
  %476 = load i64, ptr %475, align 8, !tbaa !116
  %477 = and i64 %476, %474
  %478 = and i64 %477, %357
  %479 = call noundef i32 @_Z8PopCounty(i64 noundef %478)
  %480 = mul nsw i32 %479, -13
  %481 = add nsw i32 %480, %471
  br label %482

482:                                              ; preds = %470, %335
  %483 = phi i32 [ %481, %470 ], [ 0, %335 ]
  %484 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %485 = load i32, ptr %484, align 4, !tbaa !70
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %616, label %487, !prof !117

487:                                              ; preds = %482
  %488 = ashr i32 %347, 3
  %489 = and i32 %347, 7
  %490 = zext nneg i32 %489 to i64
  %491 = getelementptr inbounds [8 x i64], ptr @KingFilesMask, i64 0, i64 %490
  %492 = load i64, ptr %491, align 8, !tbaa !57
  %493 = add nsw i32 %489, -3
  %494 = icmp ult i32 %493, 3
  br i1 %494, label %495, label %504, !prof !118

495:                                              ; preds = %487
  %496 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %497 = load i32, ptr %496, align 4, !tbaa !102
  %498 = and i32 %497, 16
  %499 = xor i32 %498, 16
  %500 = and i32 %497, 8
  %501 = icmp eq i32 %500, 0
  %502 = or disjoint i32 %499, 12
  %503 = select i1 %501, i32 %502, i32 %499, !prof !119
  br label %504

504:                                              ; preds = %495, %487
  %505 = phi i32 [ 0, %487 ], [ %503, %495 ]
  %506 = icmp slt i32 %488, 5
  br i1 %506, label %507, label %579, !prof !120

507:                                              ; preds = %504
  %508 = load i64, ptr %21, align 8, !tbaa !57
  %509 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !57
  %510 = and i64 %508, %509
  %511 = and i64 %510, %492
  %512 = call noundef i32 @_Z8PopCounty(i64 noundef %511)
  %513 = icmp eq i32 %512, 3
  %514 = add nsw i32 %505, -6
  %515 = select i1 %513, i32 %514, i32 %505, !prof !121
  %516 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 3
  %517 = load i64, ptr %516, align 8, !tbaa !116
  %518 = and i64 %517, %492
  %519 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %518)
  %520 = shl nsw i32 %519, 1
  %521 = add nsw i32 %520, %515
  %522 = load i32, ptr %346, align 4, !tbaa !81
  %523 = and i32 %522, 7
  switch i32 %523, label %528 [
    i32 0, label %524
    i32 7, label %526
  ], !prof !122

524:                                              ; preds = %507
  %525 = or disjoint i32 %522, 1
  br label %528

526:                                              ; preds = %507
  %527 = add nsw i32 %522, -1
  br label %528

528:                                              ; preds = %526, %524, %507
  %529 = phi i32 [ %525, %524 ], [ %527, %526 ], [ %522, %507 ]
  %530 = add nsw i32 %529, 9
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %531
  %533 = load i32, ptr %532, align 4, !tbaa !70
  %534 = icmp eq i32 %533, 2
  %535 = select i1 %534, i32 -12, i32 0, !prof !123
  %536 = add i32 %521, %535
  %537 = add nsw i32 %529, 8
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %538
  %540 = load i32, ptr %539, align 4, !tbaa !70
  %541 = icmp eq i32 %540, 2
  %542 = select i1 %541, i32 -24, i32 0, !prof !124
  %543 = add i32 %536, %542
  %544 = add nsw i32 %529, 7
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %545
  %547 = load i32, ptr %546, align 4, !tbaa !70
  %548 = icmp eq i32 %547, 2
  %549 = select i1 %548, i32 -12, i32 0, !prof !125
  %550 = add i32 %543, %549
  %551 = add nsw i32 %529, 15
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %552
  %554 = load i32, ptr %553, align 4, !tbaa !70
  %555 = icmp eq i32 %554, 2
  %556 = select i1 %555, i32 -4, i32 0, !prof !126
  %557 = add i32 %550, %556
  %558 = add nsw i32 %529, 16
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !70
  %562 = icmp eq i32 %561, 2
  %563 = select i1 %562, i32 -10, i32 0, !prof !127
  %564 = add i32 %557, %563
  %565 = add nsw i32 %529, 17
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !70
  %569 = icmp eq i32 %568, 2
  %570 = select i1 %569, i32 -4, i32 0, !prof !128
  %571 = add i32 %564, %570
  %572 = add nsw i32 %529, 24
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %573
  %575 = load i32, ptr %574, align 4, !tbaa !70
  %576 = icmp eq i32 %575, 2
  %577 = select i1 %576, i32 -4, i32 0, !prof !129
  %578 = add i32 %571, %577
  br label %581

579:                                              ; preds = %504
  %580 = add nuw nsw i32 %505, 30
  br label %581

581:                                              ; preds = %579, %528
  %582 = phi i32 [ %578, %528 ], [ %580, %579 ]
  br i1 %506, label %583, label %604, !prof !120

583:                                              ; preds = %581
  %584 = load i64, ptr %10, align 8, !tbaa !57
  %585 = add nsw i32 %488, 1
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %586
  %588 = load i64, ptr %587, align 8, !tbaa !57
  %589 = add nsw i32 %488, 2
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %590
  %592 = load i64, ptr %591, align 8, !tbaa !57
  %593 = or i64 %592, %588
  %594 = add nsw i32 %488, 3
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %595
  %597 = load i64, ptr %596, align 8, !tbaa !57
  %598 = or i64 %593, %597
  %599 = and i64 %584, %598
  %600 = and i64 %599, %492
  %601 = call noundef i32 @_Z8PopCounty(i64 noundef %600)
  %602 = shl i32 %601, 2
  %603 = add i32 %602, %582
  br label %604

604:                                              ; preds = %583, %581
  %605 = phi i32 [ %603, %583 ], [ %582, %581 ]
  %606 = load i64, ptr %98, align 8, !tbaa !57
  %607 = load i64, ptr %254, align 8, !tbaa !57
  %608 = or i64 %607, %606
  %609 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 2
  %610 = load i64, ptr %609, align 8, !tbaa !107
  %611 = and i64 %610, %608
  %612 = and i64 %611, %492
  %613 = call noundef i32 @_Z8PopCounty(i64 noundef %612)
  %614 = mul i32 %613, 13
  %615 = add i32 %614, %605
  br label %616

616:                                              ; preds = %482, %604
  %617 = phi i32 [ %615, %604 ], [ 0, %482 ]
  %618 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 8
  %619 = load i32, ptr %618, align 4, !tbaa !130
  %620 = add nsw i32 %619, %483
  store i32 %620, ptr %618, align 4, !tbaa !130
  %621 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 9
  %622 = load i32, ptr %621, align 4, !tbaa !131
  %623 = add nsw i32 %622, %617
  store i32 %623, ptr %621, align 4, !tbaa !131
  %624 = load i32, ptr %345, align 8, !tbaa !85
  %625 = load i32, ptr %346, align 4, !tbaa !81
  %626 = load i32, ptr %484, align 4, !tbaa !70
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %631, !prof !117

628:                                              ; preds = %616
  %629 = load i32, ptr %348, align 8, !tbaa !70
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %772, label %631, !prof !132

631:                                              ; preds = %628, %616
  %632 = or i64 %61, %20
  %633 = or i64 %632, %173
  %634 = or i64 %633, %273
  %635 = or i64 %634, %315
  %636 = load i32, ptr %348, align 8, !tbaa !70
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %702, label %638, !prof !133

638:                                              ; preds = %631
  %639 = or i64 %96, %27
  %640 = or i64 %639, %251
  %641 = or i64 %640, %294
  %642 = or i64 %641, %336
  %643 = sext i32 %624 to i64
  %644 = getelementptr inbounds [64 x i64], ptr @KingPressureMask, i64 0, i64 %643
  %645 = load i64, ptr %644, align 8, !tbaa !57
  %646 = load i64, ptr %275, align 8, !tbaa !57
  %647 = load i64, ptr %176, align 8, !tbaa !57
  %648 = or i64 %647, %646
  %649 = load i64, ptr %63, align 8, !tbaa !57
  %650 = or i64 %648, %649
  %651 = load i64, ptr %317, align 8, !tbaa !57
  %652 = or i64 %650, %651
  %653 = and i64 %652, %645
  %654 = call noundef i32 @_Z8PopCounty(i64 noundef %653)
  %655 = mul nsw i32 %654, -22
  %656 = and i64 %645, %27
  %657 = icmp ne i64 %656, 0
  %658 = zext i1 %657 to i32
  %659 = and i64 %645, %96
  %660 = icmp eq i64 %659, 0
  %661 = select i1 %657, i32 2, i32 1, !prof !134
  %662 = select i1 %660, i32 %658, i32 %661, !prof !135
  %663 = and i64 %645, %336
  %664 = icmp ne i64 %663, 0
  %665 = zext i1 %664 to i32
  %666 = and i64 %645, %251
  %667 = icmp ne i64 %666, 0
  %668 = zext i1 %667 to i32
  %669 = and i64 %645, %294
  %670 = icmp ne i64 %669, 0
  %671 = zext i1 %670 to i32
  %672 = add nuw nsw i32 %668, %665
  %673 = add nuw nsw i32 %672, %671
  %674 = add nuw nsw i32 %673, %662
  %675 = and i64 %645, %642
  %676 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %675)
  %677 = getelementptr inbounds [64 x i64], ptr @KingPressureMask1, i64 0, i64 %643
  %678 = load i64, ptr %677, align 8, !tbaa !57
  %679 = and i64 %678, %27
  %680 = icmp eq i64 %679, 0
  %681 = and i64 %678, %96
  %682 = icmp eq i64 %681, 0
  %683 = and i64 %678, %336
  %684 = icmp eq i64 %683, 0
  %685 = and i64 %678, %251
  %686 = icmp eq i64 %685, 0
  %687 = and i64 %678, %294
  %688 = icmp eq i64 %687, 0
  %689 = select i1 %680, i32 0, i32 2, !prof !136
  %690 = or disjoint i32 %689, 4
  %691 = select i1 %682, i32 %689, i32 %690, !prof !137
  %692 = add nuw nsw i32 %691, 4
  %693 = select i1 %684, i32 %691, i32 %692, !prof !138
  %694 = add nuw nsw i32 %693, 8
  %695 = select i1 %686, i32 %693, i32 %694, !prof !139
  %696 = add nuw nsw i32 %695, 16
  %697 = select i1 %688, i32 %695, i32 %696, !prof !140
  %698 = add i32 %674, %676
  %699 = mul i32 %698, -3
  %700 = add i32 %699, %655
  %701 = sub i32 %700, %697
  br label %702

702:                                              ; preds = %638, %631
  %703 = phi i32 [ %701, %638 ], [ 0, %631 ]
  %704 = load i32, ptr %484, align 4, !tbaa !70
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %766, label %706, !prof !141

706:                                              ; preds = %702
  %707 = sext i32 %625 to i64
  %708 = getelementptr inbounds [64 x i64], ptr @KingPressureMask, i64 0, i64 %707
  %709 = load i64, ptr %708, align 8, !tbaa !57
  %710 = load i64, ptr %254, align 8, !tbaa !57
  %711 = load i64, ptr %98, align 8, !tbaa !57
  %712 = or i64 %711, %710
  %713 = load i64, ptr %28, align 8, !tbaa !57
  %714 = or i64 %712, %713
  %715 = load i64, ptr %296, align 8, !tbaa !57
  %716 = or i64 %714, %715
  %717 = and i64 %716, %709
  %718 = call noundef i32 @_Z8PopCounty(i64 noundef %717)
  %719 = mul nsw i32 %718, 22
  %720 = and i64 %709, %20
  %721 = icmp ne i64 %720, 0
  %722 = zext i1 %721 to i32
  %723 = and i64 %709, %61
  %724 = icmp eq i64 %723, 0
  %725 = select i1 %721, i32 2, i32 1, !prof !142
  %726 = select i1 %724, i32 %722, i32 %725, !prof !143
  %727 = and i64 %709, %315
  %728 = icmp ne i64 %727, 0
  %729 = zext i1 %728 to i32
  %730 = and i64 %709, %173
  %731 = icmp ne i64 %730, 0
  %732 = zext i1 %731 to i32
  %733 = and i64 %709, %273
  %734 = icmp ne i64 %733, 0
  %735 = zext i1 %734 to i32
  %736 = add nuw nsw i32 %732, %729
  %737 = add nuw nsw i32 %736, %735
  %738 = add nuw nsw i32 %737, %726
  %739 = and i64 %709, %635
  %740 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %739)
  %741 = getelementptr inbounds [64 x i64], ptr @KingPressureMask1, i64 0, i64 %707
  %742 = load i64, ptr %741, align 8, !tbaa !57
  %743 = and i64 %742, %20
  %744 = icmp eq i64 %743, 0
  %745 = and i64 %742, %61
  %746 = icmp eq i64 %745, 0
  %747 = and i64 %742, %315
  %748 = icmp eq i64 %747, 0
  %749 = and i64 %742, %173
  %750 = icmp eq i64 %749, 0
  %751 = and i64 %742, %273
  %752 = icmp eq i64 %751, 0
  %753 = select i1 %744, i32 0, i32 2, !prof !144
  %754 = or disjoint i32 %753, 4
  %755 = select i1 %746, i32 %753, i32 %754, !prof !145
  %756 = add nuw nsw i32 %755, 4
  %757 = select i1 %748, i32 %755, i32 %756, !prof !146
  %758 = add nuw nsw i32 %757, 8
  %759 = select i1 %750, i32 %757, i32 %758, !prof !147
  %760 = add nuw nsw i32 %759, 16
  %761 = select i1 %752, i32 %759, i32 %760, !prof !148
  %762 = add i32 %738, %740
  %763 = mul i32 %762, 3
  %764 = add i32 %763, %719
  %765 = add i32 %764, %761
  br label %766

766:                                              ; preds = %706, %702
  %767 = phi i32 [ %765, %706 ], [ 0, %702 ]
  %768 = load i32, ptr %618, align 4, !tbaa !130
  %769 = add nsw i32 %768, %703
  store i32 %769, ptr %618, align 4, !tbaa !130
  %770 = load i32, ptr %621, align 4, !tbaa !131
  %771 = add nsw i32 %770, %767
  store i32 %771, ptr %621, align 4, !tbaa !131
  br label %772

772:                                              ; preds = %628, %766
  %773 = load i32, ptr %345, align 8, !tbaa !85
  %774 = load i32, ptr %346, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %775 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 4
  %776 = load i64, ptr %775, align 8, !tbaa !149
  store i64 %776, ptr %4, align 8, !tbaa !57
  %777 = icmp eq i64 %776, 0
  br i1 %777, label %911, label %778, !prof !150

778:                                              ; preds = %772
  %779 = icmp slt i32 %1, 384
  %780 = ashr i32 %773, 3
  %781 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  br label %782

782:                                              ; preds = %778, %892
  %783 = phi i32 [ 0, %778 ], [ %908, %892 ]
  %784 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %785 = ashr i32 %784, 3
  %786 = and i32 %784, 7
  %787 = add nsw i32 %785, -1
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [6 x i32], ptr @_ZL8w_passer, i64 0, i64 %788
  %790 = load i32, ptr %789, align 4, !tbaa !70
  %791 = add nsw i32 %790, %783
  %792 = add nsw i32 %784, -1
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %793
  %795 = load i32, ptr %794, align 4, !tbaa !70
  %796 = icmp eq i32 %795, 1
  br i1 %796, label %809, label %797, !prof !151

797:                                              ; preds = %782
  %798 = add nsw i32 %784, 9
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !70
  %802 = icmp eq i32 %801, 1
  br i1 %802, label %809, label %803, !prof !152

803:                                              ; preds = %797
  %804 = add nsw i32 %784, 7
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %805
  %807 = load i32, ptr %806, align 4, !tbaa !70
  %808 = icmp eq i32 %807, 1
  br i1 %808, label %809, label %813, !prof !153

809:                                              ; preds = %803, %797, %782
  %810 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_pawn_supported, i64 0, i64 %788
  %811 = load i32, ptr %810, align 4, !tbaa !70
  %812 = add nsw i32 %811, %791
  br label %813

813:                                              ; preds = %809, %803
  %814 = phi i32 [ %812, %809 ], [ %791, %803 ]
  br i1 %779, label %815, label %846, !prof !154

815:                                              ; preds = %813
  %816 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %817 = sub nsw i32 1024, %1
  %818 = mul nsw i32 %817, 20
  %819 = sdiv i32 %818, 1024
  %820 = icmp eq i32 %1, 0
  %821 = icmp eq i32 %1, 0
  %822 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %786, i32 noundef %784)
  %823 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %786, i32 noundef %774)
  %824 = load i32, ptr %816, align 4, !tbaa !155
  %825 = icmp eq i32 %824, 0
  %826 = sext i1 %825 to i32
  %827 = add nsw i32 %823, %826
  %828 = icmp slt i32 %822, %827
  %829 = add nsw i32 %814, %819
  %830 = add nsw i32 %829, 500
  %831 = select i1 %820, i32 %830, i32 %829
  %832 = select i1 %828, i32 %831, i32 %814, !prof !156
  br i1 %821, label %833, label %846, !prof !157

833:                                              ; preds = %815
  %834 = ashr i32 %773, 3
  %835 = icmp sle i32 %834, %785
  %836 = icmp slt i32 %785, 2
  %837 = and i1 %835, %836
  br i1 %837, label %838, label %844, !prof !158

838:                                              ; preds = %833
  switch i32 %786, label %842 [
    i32 7, label %839
    i32 0, label %839
  ]

839:                                              ; preds = %838, %838
  %840 = and i32 %773, 7
  %841 = icmp eq i32 %840, %786
  br i1 %841, label %846, label %842

842:                                              ; preds = %839, %838
  %843 = add nsw i32 %832, 25
  br label %846

844:                                              ; preds = %833
  %845 = add nsw i32 %832, -25
  br label %846

846:                                              ; preds = %844, %842, %839, %815, %813
  %847 = phi i32 [ %843, %842 ], [ %832, %839 ], [ %845, %844 ], [ %832, %815 ], [ %814, %813 ]
  %848 = icmp sgt i32 %780, %785
  br i1 %848, label %858, label %849, !prof !159

849:                                              ; preds = %846
  %850 = and i32 %773, 7
  %851 = sub nsw i32 %850, %786
  %852 = call i32 @llvm.abs.i32(i32 %851, i1 true)
  %853 = icmp eq i32 %852, 1
  br i1 %853, label %854, label %858, !prof !160

854:                                              ; preds = %849
  %855 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_king_supported, i64 0, i64 %788
  %856 = load i32, ptr %855, align 4, !tbaa !70
  %857 = add nsw i32 %856, %847
  br label %858

858:                                              ; preds = %854, %849, %846
  %859 = phi i32 [ %857, %854 ], [ %847, %849 ], [ %847, %846 ]
  %860 = add nsw i32 %784, -8
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %861
  %863 = load i64, ptr %862, align 8, !tbaa !57
  %864 = load i64, ptr %781, align 8, !tbaa !59
  %865 = and i64 %864, %863
  %866 = icmp eq i64 %865, 0
  br i1 %866, label %867, label %886, !prof !161

867:                                              ; preds = %858
  %868 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef 0, i32 noundef %784, i32 noundef %860, i32 noundef 0)
  %869 = icmp sgt i32 %868, -1
  br i1 %869, label %870, label %892, !prof !162

870:                                              ; preds = %867
  %871 = getelementptr inbounds [6 x i32], ptr @_ZL13w_passer_free, i64 0, i64 %788
  %872 = load i32, ptr %871, align 4, !tbaa !70
  %873 = add nsw i32 %872, %859
  %874 = icmp sgt i32 %785, 1
  br i1 %874, label %875, label %892, !prof !163

875:                                              ; preds = %870
  %876 = add nsw i32 %784, -16
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %877
  %879 = load i64, ptr %878, align 8, !tbaa !57
  %880 = load i64, ptr %781, align 8, !tbaa !59
  %881 = and i64 %880, %879
  %882 = icmp eq i64 %881, 0
  br i1 %882, label %883, label %892, !prof !164

883:                                              ; preds = %875
  %884 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef 0, i32 noundef %784, i32 noundef %876, i32 noundef 0)
  %885 = icmp sgt i32 %884, -1
  br i1 %885, label %886, label %892, !prof !165

886:                                              ; preds = %858, %883
  %887 = phi ptr [ @_ZL18w_passer_very_free, %883 ], [ @_ZL16w_passer_blocked, %858 ]
  %888 = phi i32 [ %873, %883 ], [ %859, %858 ]
  %889 = getelementptr inbounds [6 x i32], ptr %887, i64 0, i64 %788
  %890 = load i32, ptr %889, align 4, !tbaa !70
  %891 = add nsw i32 %890, %888
  br label %892

892:                                              ; preds = %886, %883, %875, %870, %867
  %893 = phi i32 [ %873, %875 ], [ %873, %883 ], [ %873, %870 ], [ %859, %867 ], [ %891, %886 ]
  %894 = sub nsw i32 7, %785
  %895 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %774, i32 noundef %860)
  %896 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %773, i32 noundef %860)
  %897 = mul i32 %896, -3
  %898 = add i32 %897, %895
  %899 = mul i32 %898, %894
  %900 = add i32 %899, %893
  %901 = sext i32 %784 to i64
  %902 = getelementptr inbounds [64 x i64], ptr @FileDownMask, i64 0, i64 %901
  %903 = load i64, ptr %902, align 8, !tbaa !57
  %904 = load i64, ptr %176, align 8, !tbaa !57
  %905 = and i64 %904, %903
  %906 = icmp eq i64 %905, 0
  %907 = add nsw i32 %900, -8
  %908 = select i1 %906, i32 %900, i32 %907, !prof !166
  %909 = load i64, ptr %4, align 8, !tbaa !57
  %910 = icmp eq i64 %909, 0
  br i1 %910, label %911, label %782, !prof !167, !llvm.loop !168

911:                                              ; preds = %892, %772
  %912 = phi i32 [ 0, %772 ], [ %908, %892 ]
  %913 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 5
  %914 = load i64, ptr %913, align 8, !tbaa !169
  store i64 %914, ptr %4, align 8, !tbaa !57
  %915 = icmp eq i64 %914, 0
  br i1 %915, label %1050, label %916, !prof !170

916:                                              ; preds = %911
  %917 = icmp slt i32 %1, 384
  %918 = ashr i32 %774, 3
  %919 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  br label %920

920:                                              ; preds = %916, %1031
  %921 = phi i32 [ 0, %916 ], [ %1047, %1031 ]
  %922 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %4)
  %923 = ashr i32 %922, 3
  %924 = and i32 %922, 7
  %925 = sub nsw i32 6, %923
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds [6 x i32], ptr @_ZL8w_passer, i64 0, i64 %926
  %928 = load i32, ptr %927, align 4, !tbaa !70
  %929 = sub nsw i32 %921, %928
  %930 = add nsw i32 %922, 1
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %931
  %933 = load i32, ptr %932, align 4, !tbaa !70
  %934 = icmp eq i32 %933, 2
  br i1 %934, label %947, label %935, !prof !171

935:                                              ; preds = %920
  %936 = add nsw i32 %922, -9
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %937
  %939 = load i32, ptr %938, align 4, !tbaa !70
  %940 = icmp eq i32 %939, 2
  br i1 %940, label %947, label %941, !prof !172

941:                                              ; preds = %935
  %942 = add nsw i32 %922, -7
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %943
  %945 = load i32, ptr %944, align 4, !tbaa !70
  %946 = icmp eq i32 %945, 2
  br i1 %946, label %947, label %951, !prof !173

947:                                              ; preds = %941, %935, %920
  %948 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_pawn_supported, i64 0, i64 %926
  %949 = load i32, ptr %948, align 4, !tbaa !70
  %950 = sub nsw i32 %929, %949
  br label %951

951:                                              ; preds = %947, %941
  %952 = phi i32 [ %950, %947 ], [ %929, %941 ]
  br i1 %917, label %953, label %985, !prof !174

953:                                              ; preds = %951
  %954 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %955 = sub nsw i32 1024, %1
  %956 = mul nsw i32 %955, 20
  %957 = sdiv i32 %956, -1024
  %958 = icmp eq i32 %1, 0
  %959 = icmp eq i32 %1, 0
  %960 = or disjoint i32 %924, 56
  %961 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %960, i32 noundef %922)
  %962 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %960, i32 noundef %773)
  %963 = load i32, ptr %954, align 4, !tbaa !155
  %964 = icmp ne i32 %963, 0
  %965 = sext i1 %964 to i32
  %966 = add nsw i32 %962, %965
  %967 = icmp slt i32 %961, %966
  %968 = add i32 %952, %957
  %969 = add nsw i32 %968, -500
  %970 = select i1 %958, i32 %969, i32 %968
  %971 = select i1 %967, i32 %970, i32 %952, !prof !175
  br i1 %959, label %972, label %985, !prof !176

972:                                              ; preds = %953
  %973 = ashr i32 %774, 3
  %974 = icmp sge i32 %973, %923
  %975 = icmp sgt i32 %923, 5
  %976 = and i1 %974, %975
  br i1 %976, label %977, label %983, !prof !177

977:                                              ; preds = %972
  switch i32 %924, label %981 [
    i32 7, label %978
    i32 0, label %978
  ]

978:                                              ; preds = %977, %977
  %979 = and i32 %774, 7
  %980 = icmp eq i32 %979, %924
  br i1 %980, label %985, label %981

981:                                              ; preds = %978, %977
  %982 = add nsw i32 %971, -25
  br label %985

983:                                              ; preds = %972
  %984 = add nsw i32 %971, 25
  br label %985

985:                                              ; preds = %983, %981, %978, %953, %951
  %986 = phi i32 [ %982, %981 ], [ %971, %978 ], [ %984, %983 ], [ %971, %953 ], [ %952, %951 ]
  %987 = icmp slt i32 %918, %923
  br i1 %987, label %997, label %988, !prof !178

988:                                              ; preds = %985
  %989 = and i32 %774, 7
  %990 = sub nsw i32 %989, %924
  %991 = call i32 @llvm.abs.i32(i32 %990, i1 true)
  %992 = icmp eq i32 %991, 1
  br i1 %992, label %993, label %997, !prof !179

993:                                              ; preds = %988
  %994 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_king_supported, i64 0, i64 %926
  %995 = load i32, ptr %994, align 4, !tbaa !70
  %996 = sub nsw i32 %986, %995
  br label %997

997:                                              ; preds = %993, %988, %985
  %998 = phi i32 [ %996, %993 ], [ %986, %988 ], [ %986, %985 ]
  %999 = add nsw i32 %922, 8
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %1000
  %1002 = load i64, ptr %1001, align 8, !tbaa !57
  %1003 = load i64, ptr %919, align 8, !tbaa !59
  %1004 = and i64 %1003, %1002
  %1005 = icmp eq i64 %1004, 0
  br i1 %1005, label %1006, label %1025, !prof !180

1006:                                             ; preds = %997
  %1007 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef 1, i32 noundef %922, i32 noundef %999, i32 noundef 0)
  %1008 = icmp sgt i32 %1007, -1
  br i1 %1008, label %1009, label %1031, !prof !181

1009:                                             ; preds = %1006
  %1010 = getelementptr inbounds [6 x i32], ptr @_ZL13w_passer_free, i64 0, i64 %926
  %1011 = load i32, ptr %1010, align 4, !tbaa !70
  %1012 = sub nsw i32 %998, %1011
  %1013 = icmp slt i32 %923, 6
  br i1 %1013, label %1014, label %1031, !prof !182

1014:                                             ; preds = %1009
  %1015 = add nsw i32 %922, 16
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %1016
  %1018 = load i64, ptr %1017, align 8, !tbaa !57
  %1019 = load i64, ptr %919, align 8, !tbaa !59
  %1020 = and i64 %1019, %1018
  %1021 = icmp eq i64 %1020, 0
  br i1 %1021, label %1022, label %1031, !prof !183

1022:                                             ; preds = %1014
  %1023 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef 1, i32 noundef %922, i32 noundef %1015, i32 noundef 0)
  %1024 = icmp sgt i32 %1023, -1
  br i1 %1024, label %1025, label %1031, !prof !184

1025:                                             ; preds = %997, %1022
  %1026 = phi ptr [ @_ZL18w_passer_very_free, %1022 ], [ @_ZL16w_passer_blocked, %997 ]
  %1027 = phi i32 [ %1012, %1022 ], [ %998, %997 ]
  %1028 = getelementptr inbounds [6 x i32], ptr %1026, i64 0, i64 %926
  %1029 = load i32, ptr %1028, align 4, !tbaa !70
  %1030 = sub nsw i32 %1027, %1029
  br label %1031

1031:                                             ; preds = %1025, %1022, %1014, %1009, %1006
  %1032 = phi i32 [ %1012, %1014 ], [ %1012, %1022 ], [ %1012, %1009 ], [ %998, %1006 ], [ %1030, %1025 ]
  %1033 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %773, i32 noundef %999)
  %1034 = mul nsw i32 %1033, %923
  %1035 = sub nsw i32 %1032, %1034
  %1036 = mul nsw i32 %923, 3
  %1037 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %774, i32 noundef %999)
  %1038 = mul i32 %1036, %1037
  %1039 = add i32 %1038, %1035
  %1040 = sext i32 %922 to i64
  %1041 = getelementptr inbounds [64 x i64], ptr @FileUpMask, i64 0, i64 %1040
  %1042 = load i64, ptr %1041, align 8, !tbaa !57
  %1043 = load i64, ptr %98, align 8, !tbaa !57
  %1044 = and i64 %1043, %1042
  %1045 = icmp eq i64 %1044, 0
  %1046 = add nsw i32 %1039, 8
  %1047 = select i1 %1045, i32 %1039, i32 %1046, !prof !185
  %1048 = load i64, ptr %4, align 8, !tbaa !57
  %1049 = icmp eq i64 %1048, 0
  br i1 %1049, label %1050, label %920, !prof !186, !llvm.loop !187

1050:                                             ; preds = %1031, %911
  %1051 = phi i32 [ 0, %911 ], [ %1047, %1031 ]
  %1052 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 4
  store i32 %912, ptr %1052, align 4, !tbaa !188
  %1053 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 5
  store i32 %1051, ptr %1053, align 4, !tbaa !189
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @_Z8psq_evalP7state_tP12t_eval_comps(ptr noundef %0, ptr noundef %2)
  %1054 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 6
  %1055 = load i64, ptr %1054, align 8, !tbaa !190
  %1056 = load i64, ptr %296, align 8, !tbaa !57
  %1057 = and i64 %1056, %1055
  %1058 = call noundef i32 @_Z8PopCounty(i64 noundef %1057)
  %1059 = mul nsw i32 %1058, 15
  %1060 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 8
  %1061 = load i64, ptr %1060, align 8, !tbaa !191
  %1062 = load i64, ptr %296, align 8, !tbaa !57
  %1063 = and i64 %1062, %1061
  %1064 = call noundef i32 @_Z8PopCounty(i64 noundef %1063)
  %1065 = mul nsw i32 %1064, 25
  %1066 = add nsw i32 %1065, %1059
  %1067 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 7
  %1068 = load i64, ptr %1067, align 8, !tbaa !192
  %1069 = load i64, ptr %317, align 8, !tbaa !57
  %1070 = and i64 %1069, %1068
  %1071 = call noundef i32 @_Z8PopCounty(i64 noundef %1070)
  %1072 = mul nsw i32 %1071, -15
  %1073 = getelementptr inbounds %struct.pawntt_t, ptr %338, i64 0, i32 9
  %1074 = load i64, ptr %1073, align 8, !tbaa !193
  %1075 = load i64, ptr %317, align 8, !tbaa !57
  %1076 = and i64 %1075, %1074
  %1077 = call noundef i32 @_Z8PopCounty(i64 noundef %1076)
  %1078 = mul i32 %1077, -25
  %1079 = add i32 %1078, %1072
  %1080 = load i64, ptr @RankMask, align 16, !tbaa !57
  %1081 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %1082 = load i64, ptr %1081, align 8, !tbaa !57
  %1083 = and i64 %1082, %1080
  %1084 = icmp eq i64 %1083, 0
  br i1 %1084, label %1085, label %1090, !prof !194

1085:                                             ; preds = %1050
  %1086 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !57
  %1087 = load i64, ptr %21, align 8, !tbaa !57
  %1088 = and i64 %1087, %1086
  %1089 = icmp eq i64 %1088, 0
  br i1 %1089, label %1102, label %1090, !prof !195

1090:                                             ; preds = %1085, %1050
  %1091 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !57
  %1092 = load i64, ptr %98, align 8, !tbaa !57
  %1093 = and i64 %1092, %1091
  %1094 = icmp eq i64 %1093, 0
  br i1 %1094, label %1102, label %1095, !prof !196

1095:                                             ; preds = %1090
  %1096 = call noundef i32 @_Z8PopCounty(i64 noundef %1093)
  %1097 = icmp sgt i32 %1096, 1
  br i1 %1097, label %1098, label %1100, !prof !197

1098:                                             ; preds = %1095
  %1099 = add nsw i32 %1066, 40
  br label %1102

1100:                                             ; preds = %1095
  %1101 = add nsw i32 %1066, 3
  br label %1102

1102:                                             ; preds = %1085, %1100, %1098, %1090
  %1103 = phi i32 [ %1099, %1098 ], [ %1101, %1100 ], [ %1066, %1090 ], [ %1066, %1085 ]
  %1104 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 7), align 8, !tbaa !57
  %1105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %1106 = load i64, ptr %1105, align 8, !tbaa !57
  %1107 = and i64 %1106, %1104
  %1108 = icmp eq i64 %1107, 0
  br i1 %1108, label %1109, label %1114, !prof !198

1109:                                             ; preds = %1102
  %1110 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !57
  %1111 = load i64, ptr %10, align 8, !tbaa !57
  %1112 = and i64 %1111, %1110
  %1113 = icmp eq i64 %1112, 0
  br i1 %1113, label %1126, label %1114, !prof !199

1114:                                             ; preds = %1109, %1102
  %1115 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !57
  %1116 = load i64, ptr %176, align 8, !tbaa !57
  %1117 = and i64 %1116, %1115
  %1118 = icmp eq i64 %1117, 0
  br i1 %1118, label %1126, label %1119, !prof !200

1119:                                             ; preds = %1114
  %1120 = call noundef i32 @_Z8PopCounty(i64 noundef %1117)
  %1121 = icmp sgt i32 %1120, 1
  br i1 %1121, label %1122, label %1124, !prof !201

1122:                                             ; preds = %1119
  %1123 = add nsw i32 %1079, -40
  br label %1126

1124:                                             ; preds = %1119
  %1125 = add nsw i32 %1079, -3
  br label %1126

1126:                                             ; preds = %1109, %1124, %1122, %1114
  %1127 = phi i32 [ %1123, %1122 ], [ %1125, %1124 ], [ %1079, %1114 ], [ %1079, %1109 ]
  %1128 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %1129 = load i32, ptr %1128, align 4, !tbaa !70
  %1130 = icmp eq i32 %1129, 1
  br i1 %1130, label %1131, label %1147, !prof !202

1131:                                             ; preds = %1126
  %1132 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %1133 = load i32, ptr %1132, align 4, !tbaa !70
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1135, label %1147, !prof !203

1135:                                             ; preds = %1131
  %1136 = load i64, ptr %28, align 8, !tbaa !57
  %1137 = load i64, ptr @WhiteSqMask, align 8, !tbaa !57
  %1138 = and i64 %1137, %1136
  %1139 = icmp eq i64 %1138, 0
  %1140 = load i64, ptr %10, align 8, !tbaa !57
  %1141 = load i64, ptr @BlackSqMask, align 8
  %1142 = select i1 %1139, i64 %1141, i64 %1137, !prof !204
  %1143 = and i64 %1142, %1140
  %1144 = call noundef i32 @_Z8PopCounty(i64 noundef %1143)
  %1145 = mul nsw i32 %1144, -3
  %1146 = add nsw i32 %1145, %1103
  br label %1147

1147:                                             ; preds = %1135, %1131, %1126
  %1148 = phi i32 [ %1103, %1131 ], [ %1103, %1126 ], [ %1146, %1135 ]
  %1149 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %1150 = load i32, ptr %1149, align 8, !tbaa !70
  %1151 = icmp eq i32 %1150, 1
  br i1 %1151, label %1152, label %1168, !prof !205

1152:                                             ; preds = %1147
  %1153 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %1154 = load i32, ptr %1153, align 8, !tbaa !70
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1156, label %1168, !prof !206

1156:                                             ; preds = %1152
  %1157 = load i64, ptr %63, align 8, !tbaa !57
  %1158 = load i64, ptr @WhiteSqMask, align 8, !tbaa !57
  %1159 = and i64 %1158, %1157
  %1160 = icmp eq i64 %1159, 0
  %1161 = load i64, ptr %21, align 8, !tbaa !57
  %1162 = load i64, ptr @BlackSqMask, align 8
  %1163 = select i1 %1160, i64 %1162, i64 %1158, !prof !207
  %1164 = and i64 %1163, %1161
  %1165 = call noundef i32 @_Z8PopCounty(i64 noundef %1164)
  %1166 = mul i32 %1165, 3
  %1167 = add i32 %1166, %1127
  br label %1168

1168:                                             ; preds = %1156, %1147, %1152
  %1169 = phi i32 [ %1127, %1152 ], [ %1127, %1147 ], [ %1167, %1156 ]
  %1170 = load i32, ptr %1128, align 4, !tbaa !70
  %1171 = icmp eq i32 %1170, 2
  %1172 = add nsw i32 %1148, 30
  %1173 = select i1 %1171, i32 %1172, i32 %1148, !prof !208
  %1174 = load i32, ptr %1149, align 8, !tbaa !70
  %1175 = icmp eq i32 %1174, 2
  %1176 = add nsw i32 %1169, -30
  %1177 = select i1 %1175, i32 %1176, i32 %1169, !prof !209
  store i32 %1173, ptr %2, align 4, !tbaa !210
  %1178 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 1
  store i32 %1177, ptr %1178, align 4, !tbaa !211
  %1179 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %1180 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 48
  %1181 = load i32, ptr %1180, align 4, !tbaa !70
  %1182 = icmp eq i32 %1181, 12
  br i1 %1182, label %1187, label %1183, !prof !212

1183:                                             ; preds = %1168
  %1184 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 57
  %1185 = load i32, ptr %1184, align 4, !tbaa !70
  %1186 = icmp eq i32 %1185, 12
  br i1 %1186, label %1187, label %1196, !prof !213

1187:                                             ; preds = %1183, %1168
  %1188 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 41
  %1189 = load i32, ptr %1188, align 4, !tbaa !70
  %1190 = icmp eq i32 %1189, 1
  br i1 %1190, label %1191, label %1196, !prof !214

1191:                                             ; preds = %1187
  %1192 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 50
  %1193 = load i32, ptr %1192, align 4, !tbaa !70
  %1194 = icmp eq i32 %1193, 1
  %1195 = select i1 %1194, i32 90, i32 0, !prof !215
  br label %1196

1196:                                             ; preds = %1183, %1191, %1187
  %1197 = phi i32 [ 0, %1187 ], [ %1195, %1191 ], [ 0, %1183 ]
  %1198 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 55
  %1199 = load i32, ptr %1198, align 4, !tbaa !70
  %1200 = icmp eq i32 %1199, 12
  br i1 %1200, label %1205, label %1201, !prof !216

1201:                                             ; preds = %1196
  %1202 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 62
  %1203 = load i32, ptr %1202, align 4, !tbaa !70
  %1204 = icmp eq i32 %1203, 12
  br i1 %1204, label %1205, label %1214, !prof !217

1205:                                             ; preds = %1201, %1196
  %1206 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 46
  %1207 = load i32, ptr %1206, align 4, !tbaa !70
  %1208 = icmp eq i32 %1207, 1
  br i1 %1208, label %1209, label %1214, !prof !218

1209:                                             ; preds = %1205
  %1210 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 53
  %1211 = load i32, ptr %1210, align 4, !tbaa !70
  switch i32 %1211, label %1214 [
    i32 1, label %1212
    i32 5, label %1212
  ], !prof !219

1212:                                             ; preds = %1209, %1209
  %1213 = add nuw nsw i32 %1197, 90
  br label %1214

1214:                                             ; preds = %1201, %1212, %1209, %1205
  %1215 = phi i32 [ %1213, %1212 ], [ %1197, %1205 ], [ %1197, %1209 ], [ %1197, %1201 ]
  %1216 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 8
  %1217 = load i32, ptr %1216, align 4, !tbaa !70
  %1218 = icmp eq i32 %1217, 11
  br i1 %1218, label %1223, label %1219, !prof !220

1219:                                             ; preds = %1214
  %1220 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 1
  %1221 = load i32, ptr %1220, align 4, !tbaa !70
  %1222 = icmp eq i32 %1221, 11
  br i1 %1222, label %1223, label %1233, !prof !221

1223:                                             ; preds = %1219, %1214
  %1224 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 17
  %1225 = load i32, ptr %1224, align 4, !tbaa !70
  %1226 = icmp eq i32 %1225, 2
  br i1 %1226, label %1227, label %1233, !prof !222

1227:                                             ; preds = %1223
  %1228 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 10
  %1229 = load i32, ptr %1228, align 4, !tbaa !70
  %1230 = icmp eq i32 %1229, 2
  %1231 = add nsw i32 %1215, -90
  %1232 = select i1 %1230, i32 %1231, i32 %1215, !prof !223
  br label %1233

1233:                                             ; preds = %1219, %1227, %1223
  %1234 = phi i32 [ %1215, %1223 ], [ %1232, %1227 ], [ %1215, %1219 ]
  %1235 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 15
  %1236 = load i32, ptr %1235, align 4, !tbaa !70
  %1237 = icmp eq i32 %1236, 11
  br i1 %1237, label %1242, label %1238, !prof !224

1238:                                             ; preds = %1233
  %1239 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 6
  %1240 = load i32, ptr %1239, align 4, !tbaa !70
  %1241 = icmp eq i32 %1240, 11
  br i1 %1241, label %1242, label %1251, !prof !225

1242:                                             ; preds = %1238, %1233
  %1243 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 22
  %1244 = load i32, ptr %1243, align 4, !tbaa !70
  %1245 = icmp eq i32 %1244, 2
  br i1 %1245, label %1246, label %1251, !prof !226

1246:                                             ; preds = %1242
  %1247 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 13
  %1248 = load i32, ptr %1247, align 4, !tbaa !70
  switch i32 %1248, label %1251 [
    i32 2, label %1249
    i32 6, label %1249
  ], !prof !227

1249:                                             ; preds = %1246, %1246
  %1250 = add nsw i32 %1234, -90
  br label %1251

1251:                                             ; preds = %1238, %1249, %1246, %1242
  %1252 = phi i32 [ %1250, %1249 ], [ %1234, %1242 ], [ %1234, %1246 ], [ %1234, %1238 ]
  %1253 = icmp eq i32 %1236, 3
  br i1 %1253, label %1254, label %1264, !prof !228

1254:                                             ; preds = %1251
  %1255 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 21
  %1256 = load i32, ptr %1255, align 4, !tbaa !70
  %1257 = icmp eq i32 %1256, 2
  br i1 %1257, label %1258, label %1264, !prof !229

1258:                                             ; preds = %1254
  %1259 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 14
  %1260 = load i32, ptr %1259, align 4, !tbaa !70
  %1261 = icmp eq i32 %1260, 2
  %1262 = add nsw i32 %1252, -35
  %1263 = select i1 %1261, i32 %1262, i32 %1252, !prof !230
  br label %1264

1264:                                             ; preds = %1258, %1254, %1251
  %1265 = phi i32 [ %1252, %1254 ], [ %1252, %1251 ], [ %1263, %1258 ]
  %1266 = icmp eq i32 %1199, 4
  br i1 %1266, label %1267, label %1277, !prof !231

1267:                                             ; preds = %1264
  %1268 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 45
  %1269 = load i32, ptr %1268, align 4, !tbaa !70
  %1270 = icmp eq i32 %1269, 1
  br i1 %1270, label %1271, label %1277, !prof !232

1271:                                             ; preds = %1267
  %1272 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 54
  %1273 = load i32, ptr %1272, align 4, !tbaa !70
  %1274 = icmp eq i32 %1273, 1
  %1275 = add nsw i32 %1265, 35
  %1276 = select i1 %1274, i32 %1275, i32 %1265, !prof !233
  br label %1277

1277:                                             ; preds = %1271, %1267, %1264
  %1278 = phi i32 [ %1265, %1267 ], [ %1265, %1264 ], [ %1276, %1271 ]
  %1279 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 2
  %1280 = load i32, ptr %1279, align 4, !tbaa !70
  %1281 = icmp eq i32 %1280, 6
  br i1 %1281, label %1286, label %1282, !prof !234

1282:                                             ; preds = %1277
  %1283 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 1
  %1284 = load i32, ptr %1283, align 4, !tbaa !70
  %1285 = icmp eq i32 %1284, 6
  br i1 %1285, label %1286, label %1297, !prof !235

1286:                                             ; preds = %1282, %1277
  %1287 = load i32, ptr %1179, align 4, !tbaa !70
  %1288 = icmp eq i32 %1287, 8
  %1289 = icmp eq i32 %1217, 8
  %1290 = or i1 %1289, %1288
  br i1 %1290, label %1295, label %1291, !prof !236

1291:                                             ; preds = %1286
  %1292 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 1
  %1293 = load i32, ptr %1292, align 4, !tbaa !70
  %1294 = icmp eq i32 %1293, 8
  br i1 %1294, label %1295, label %1297, !prof !237

1295:                                             ; preds = %1291, %1286
  %1296 = add nsw i32 %1278, 25
  br label %1297

1297:                                             ; preds = %1291, %1295, %1282
  %1298 = phi i32 [ %1296, %1295 ], [ %1278, %1282 ], [ %1278, %1291 ]
  %1299 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 5
  %1300 = load i32, ptr %1299, align 4, !tbaa !70
  %1301 = icmp eq i32 %1300, 6
  br i1 %1301, label %1306, label %1302, !prof !238

1302:                                             ; preds = %1297
  %1303 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 6
  %1304 = load i32, ptr %1303, align 4, !tbaa !70
  %1305 = icmp eq i32 %1304, 6
  br i1 %1305, label %1306, label %1318, !prof !239

1306:                                             ; preds = %1302, %1297
  %1307 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 7
  %1308 = load i32, ptr %1307, align 4, !tbaa !70
  %1309 = icmp eq i32 %1308, 8
  %1310 = icmp eq i32 %1236, 8
  %1311 = or i1 %1310, %1309
  br i1 %1311, label %1316, label %1312, !prof !240

1312:                                             ; preds = %1306
  %1313 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 6
  %1314 = load i32, ptr %1313, align 4, !tbaa !70
  %1315 = icmp eq i32 %1314, 8
  br i1 %1315, label %1316, label %1318, !prof !241

1316:                                             ; preds = %1312, %1306
  %1317 = add nsw i32 %1298, 25
  br label %1318

1318:                                             ; preds = %1312, %1316, %1302
  %1319 = phi i32 [ %1317, %1316 ], [ %1298, %1302 ], [ %1298, %1312 ]
  %1320 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 58
  %1321 = load i32, ptr %1320, align 4, !tbaa !70
  %1322 = icmp eq i32 %1321, 5
  br i1 %1322, label %1327, label %1323, !prof !242

1323:                                             ; preds = %1318
  %1324 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 57
  %1325 = load i32, ptr %1324, align 4, !tbaa !70
  %1326 = icmp eq i32 %1325, 5
  br i1 %1326, label %1327, label %1339, !prof !243

1327:                                             ; preds = %1323, %1318
  %1328 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 56
  %1329 = load i32, ptr %1328, align 4, !tbaa !70
  %1330 = icmp eq i32 %1329, 7
  %1331 = icmp eq i32 %1181, 7
  %1332 = or i1 %1331, %1330
  br i1 %1332, label %1337, label %1333, !prof !244

1333:                                             ; preds = %1327
  %1334 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 57
  %1335 = load i32, ptr %1334, align 4, !tbaa !70
  %1336 = icmp eq i32 %1335, 7
  br i1 %1336, label %1337, label %1339, !prof !245

1337:                                             ; preds = %1333, %1327
  %1338 = add nsw i32 %1319, -25
  br label %1339

1339:                                             ; preds = %1333, %1337, %1323
  %1340 = phi i32 [ %1338, %1337 ], [ %1319, %1323 ], [ %1319, %1333 ]
  %1341 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 61
  %1342 = load i32, ptr %1341, align 4, !tbaa !70
  %1343 = icmp eq i32 %1342, 5
  br i1 %1343, label %1348, label %1344, !prof !246

1344:                                             ; preds = %1339
  %1345 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 62
  %1346 = load i32, ptr %1345, align 4, !tbaa !70
  %1347 = icmp eq i32 %1346, 5
  br i1 %1347, label %1348, label %1360, !prof !247

1348:                                             ; preds = %1344, %1339
  %1349 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 63
  %1350 = load i32, ptr %1349, align 4, !tbaa !70
  %1351 = icmp eq i32 %1350, 7
  %1352 = icmp eq i32 %1199, 7
  %1353 = or i1 %1352, %1351
  br i1 %1353, label %1358, label %1354, !prof !248

1354:                                             ; preds = %1348
  %1355 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 62
  %1356 = load i32, ptr %1355, align 4, !tbaa !70
  %1357 = icmp eq i32 %1356, 7
  br i1 %1357, label %1358, label %1360, !prof !249

1358:                                             ; preds = %1354, %1348
  %1359 = add nsw i32 %1340, -25
  br label %1360

1360:                                             ; preds = %1354, %1344, %1358
  %1361 = phi i32 [ %1359, %1358 ], [ %1340, %1344 ], [ %1340, %1354 ]
  %1362 = add nsw i32 %337, %316
  %1363 = mul nsw i32 %1362, 3
  %1364 = add nsw i32 %1363, %295
  %1365 = add nsw i32 %1364, %1361
  %1366 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 10
  store i32 %1365, ptr %1366, align 4, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare noundef ptr @_Z16static_pawn_evalP7state_t(ptr noundef) local_unnamed_addr #3

declare void @_Z8psq_evalP7state_tP12t_eval_comps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !251 {
  %5 = alloca %struct.t_eval_comps, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !252
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %47, !prof !254

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %47, label %16, !prof !255

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %18 = load i32, ptr %17, align 8, !tbaa !70
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %47, label %20, !prof !256

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !155
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %25 = load i32, ptr %24, align 8, !tbaa !257
  %26 = add nsw i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !70
  %30 = add nsw i32 %29, %10
  %31 = add i32 %10, %29
  %32 = sub i32 0, %31
  %33 = select i1 %23, i32 %32, i32 %30, !prof !258
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %35 = load i32, ptr %34, align 8, !tbaa !257
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !70
  %40 = sext i32 %35 to i64
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %40
  store i32 %39, ptr %41, align 4, !tbaa !70
  %42 = add nsw i32 %33, 50
  %43 = icmp sgt i32 %42, %1
  br i1 %43, label %44, label %177, !prof !259

44:                                               ; preds = %20
  %45 = add nsw i32 %33, -50
  %46 = icmp slt i32 %45, %2
  br i1 %46, label %47, label %177, !prof !260

47:                                               ; preds = %44, %16, %12, %4
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %49 = load i32, ptr %48, align 4, !tbaa !70
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %51 = load i32, ptr %50, align 4, !tbaa !70
  %52 = add i32 %51, %49
  %53 = shl i32 %52, 2
  %54 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %55 = load i32, ptr %54, align 4, !tbaa !70
  %56 = mul nsw i32 %55, 6
  %57 = add nsw i32 %53, %56
  %58 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %59 = load i32, ptr %58, align 4, !tbaa !70
  %60 = mul nsw i32 %59, 12
  %61 = add nsw i32 %57, %60
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %63 = load i32, ptr %62, align 8, !tbaa !70
  %64 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %65 = load i32, ptr %64, align 8, !tbaa !70
  %66 = add i32 %65, %63
  %67 = shl i32 %66, 2
  %68 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %69 = load i32, ptr %68, align 8, !tbaa !70
  %70 = mul nsw i32 %69, 6
  %71 = add nsw i32 %67, %70
  %72 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %73 = load i32, ptr %72, align 8, !tbaa !70
  %74 = mul nsw i32 %73, 12
  %75 = add nsw i32 %71, %74
  %76 = tail call i32 @llvm.smin.i32(i32 %61, i32 40)
  %77 = tail call i32 @llvm.smin.i32(i32 %75, i32 40)
  %78 = add nsw i32 %77, %76
  %79 = shl nsw i32 %78, 10
  %80 = sdiv i32 %79, 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i64 44, i1 false)
  call void @_Z5fevalP7state_tiP12t_eval_comps(ptr noundef %0, i32 noundef %80, ptr noundef nonnull %5)
  %81 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %82 = load i32, ptr %81, align 4, !tbaa !155
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 -10, i32 10, !prof !261
  %85 = load i32, ptr %5, align 4, !tbaa !210
  %86 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !211
  %88 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 10
  %89 = load i32, ptr %88, align 4, !tbaa !250
  %90 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !96
  %92 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !99
  %94 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 6
  %95 = load i32, ptr %94, align 4, !tbaa !262
  %96 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 7
  %97 = load i32, ptr %96, align 4, !tbaa !263
  %98 = add nsw i32 %97, %95
  %99 = sub nsw i32 1024, %80
  %100 = mul nsw i32 %98, %99
  %101 = sdiv i32 %100, 1280
  %102 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !188
  %104 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 5
  %105 = load i32, ptr %104, align 4, !tbaa !189
  %106 = add nsw i32 %105, %103
  %107 = sub nsw i32 2048, %80
  %108 = mul nsw i32 %106, %107
  %109 = sdiv i32 %108, 1536
  %110 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 8
  %111 = load i32, ptr %110, align 4, !tbaa !130
  %112 = mul nsw i32 %111, %111
  %113 = lshr i32 %112, 8
  %114 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 9
  %115 = load i32, ptr %114, align 4, !tbaa !131
  %116 = mul nsw i32 %115, %115
  %117 = lshr i32 %116, 8
  %118 = add i32 %115, %111
  %119 = sub i32 %118, %113
  %120 = add i32 %119, %117
  %121 = add nsw i32 %80, 1024
  %122 = mul nsw i32 %120, %121
  %123 = sdiv i32 %122, 2048
  %124 = add i32 %85, %10
  %125 = add i32 %124, %84
  %126 = add i32 %125, %87
  %127 = add i32 %126, %89
  %128 = add i32 %127, %91
  %129 = add i32 %128, %93
  %130 = add nsw i32 %129, %101
  %131 = add nsw i32 %130, %109
  %132 = add nsw i32 %131, %123
  %133 = icmp slt i32 %61, 11
  %134 = icmp slt i32 %75, 11
  %135 = and i1 %133, %134
  br i1 %135, label %136, label %165, !prof !264

136:                                              ; preds = %47
  %137 = load i32, ptr %48, align 4, !tbaa !70
  %138 = load i32, ptr %62, align 8, !tbaa !70
  %139 = icmp eq i32 %137, 1
  %140 = icmp eq i32 %138, 1
  %141 = and i1 %139, %140
  br i1 %141, label %142, label %165, !prof !265

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %144 = load i64, ptr %143, align 8, !tbaa !57
  %145 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %146 = load i64, ptr %145, align 8, !tbaa !57
  %147 = or i64 %146, %144
  %148 = load i64, ptr @WhiteSqMask, align 8, !tbaa !57
  %149 = and i64 %147, %148
  %150 = call noundef i32 @_Z8PopCounty(i64 noundef %149)
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %165, !prof !266

152:                                              ; preds = %142
  %153 = load i32, ptr %6, align 8, !tbaa !252
  %154 = call i32 @llvm.abs.i32(i32 %153, i1 true)
  %155 = icmp ult i32 %154, 171
  br i1 %155, label %156, label %165, !prof !267

156:                                              ; preds = %152
  %157 = icmp sgt i32 %61, 4
  %158 = icmp sgt i32 %75, 4
  %159 = or i1 %157, %158
  br i1 %159, label %160, label %163, !prof !268

160:                                              ; preds = %156
  %161 = mul nsw i32 %132, 3
  %162 = ashr i32 %161, 2
  br label %165

163:                                              ; preds = %156
  %164 = ashr i32 %132, 1
  br label %165

165:                                              ; preds = %47, %136, %142, %152, %160, %163
  %166 = phi i32 [ %162, %160 ], [ %164, %163 ], [ %132, %152 ], [ %132, %142 ], [ %132, %136 ], [ %132, %47 ]
  %167 = call noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef %0, i32 noundef %166, i32 noundef %76, i32 noundef %77)
  %168 = sub nsw i32 %167, %10
  %169 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %170 = load i32, ptr %169, align 8, !tbaa !257
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %171
  store i32 %168, ptr %172, align 4, !tbaa !70
  %173 = load i32, ptr %81, align 4, !tbaa !155
  %174 = icmp eq i32 %173, 0
  %175 = sub nsw i32 0, %167
  %176 = select i1 %174, i32 %175, i32 %167, !prof !261
  br label %177

177:                                              ; preds = %44, %20, %165
  %178 = phi i32 [ %176, %165 ], [ %42, %20 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #7
  ret i32 %178
}

declare noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z13retrieve_evalP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !269 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !257
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !252
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !253
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !155
  %15 = icmp eq i32 %14, 0
  %16 = sub nsw i32 0, %12
  %17 = select i1 %15, i32 %16, i32 %12, !prof !270
  ret i32 %17
}

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #3

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z13ThickPopCounty(i64 noundef) local_unnamed_addr #3

declare noundef i32 @_Z8PopCounty(i64 noundef) local_unnamed_addr #3

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z8sum_distii(i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z16taxicab_dist_bitii(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z15FindFirstRemovePy, i64 2598739840}
!36 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z13BishopAttacksP7state_ti, i64 1022901546}
!37 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z13ThickPopCounty, i64 2351442609}
!38 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z8PopCounty, i64 5310937100}
!39 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z11RookAttacksP7state_ti, i64 1330074715}
!40 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z8sum_distii, i64 426922806}
!41 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z16static_pawn_evalP7state_t, i64 288009370}
!42 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z16taxicab_dist_bitii, i64 597932234}
!43 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z3seeP7state_tiiii, i64 359871222}
!44 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z8psq_evalP7state_tP12t_eval_comps, i64 288009370}
!45 = !{ptr @_Z4evalP7state_tiii, ptr @_Z5fevalP7state_tiP12t_eval_comps, i64 288009370}
!46 = !{ptr @_Z4evalP7state_tiii, ptr @_Z8PopCounty, i64 1838047}
!47 = !{ptr @_Z4evalP7state_tiii, ptr @_Z14drawn_endgamesP7state_tiii, i64 288009370}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 288009370}
!50 = !{!51, !55, i64 280}
!51 = !{!"_ZTS7state_t", !52, i64 0, !53, i64 4, !55, i64 264, !55, i64 272, !55, i64 280, !53, i64 288, !52, i64 392, !52, i64 396, !53, i64 400, !52, i64 452, !52, i64 456, !52, i64 460, !52, i64 464, !52, i64 468, !52, i64 472, !52, i64 476, !55, i64 480, !55, i64 488, !53, i64 496, !53, i64 2544, !53, i64 2800, !53, i64 3056, !55, i64 4080, !55, i64 4088, !52, i64 4096, !53, i64 4100, !52, i64 4356, !52, i64 4360, !52, i64 4364, !52, i64 4368, !52, i64 4372, !52, i64 4376, !52, i64 4380, !52, i64 4384, !52, i64 4388, !52, i64 4392, !53, i64 4400}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!"long long", !53, i64 0}
!56 = !{!51, !55, i64 272}
!57 = !{!55, !55, i64 0}
!58 = !{!"branch_weights", i32 1, i32 288009369}
!59 = !{!51, !55, i64 264}
!60 = !{!"branch_weights", i32 288009369, i32 22146750}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"branch_weights", i32 2186749, i32 285822621}
!65 = !{!"branch_weights", i32 285822621, i32 0}
!66 = distinct !{!66, !62, !63}
!67 = !{!"branch_weights", i32 223789727, i32 199987068}
!68 = !{!"branch_weights", i32 162017804, i32 61771923}
!69 = !{!"branch_weights", i32 12893338, i32 149124466}
!70 = !{!52, !52, i64 0}
!71 = !{!"branch_weights", i32 1819206, i32 59952717}
!72 = !{!"branch_weights", i32 288009369, i32 135767426}
!73 = distinct !{!73, !62, !63}
!74 = !{!"branch_weights", i32 162244028, i32 317131086}
!75 = !{!"branch_weights", i32 94652000, i32 67592028}
!76 = !{!"branch_weights", i32 5511746, i32 89140254}
!77 = !{!"branch_weights", i32 3361098, i32 64230930}
!78 = !{!"branch_weights", i32 288009369, i32 191365745}
!79 = distinct !{!79, !62, !63}
!80 = !{!"branch_weights", i32 73547946, i32 214461424}
!81 = !{!51, !52, i64 468}
!82 = !{!"branch_weights", i32 214461424, i32 0}
!83 = distinct !{!83, !62, !63}
!84 = !{!"branch_weights", i32 75547988, i32 212461382}
!85 = !{!51, !52, i64 464}
!86 = !{!"branch_weights", i32 212461382, i32 0}
!87 = distinct !{!87, !62, !63}
!88 = !{!"branch_weights", i32 116155978, i32 171853392}
!89 = !{!"branch_weights", i32 171853392, i32 0}
!90 = distinct !{!90, !62, !63}
!91 = !{!"branch_weights", i32 57995361, i32 230014009}
!92 = !{!"branch_weights", i32 230014009, i32 0}
!93 = distinct !{!93, !62, !63}
!94 = !{!95, !52, i64 80}
!95 = !{!"_ZTS8pawntt_t", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !52, i64 80, !52, i64 84}
!96 = !{!97, !52, i64 8}
!97 = !{!"_ZTS12t_eval_comps", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40}
!98 = !{!95, !52, i64 84}
!99 = !{!97, !52, i64 12}
!100 = !{!"branch_weights", i32 75776345, i32 212233025}
!101 = !{!"branch_weights", i32 46093337, i32 166139688}
!102 = !{!51, !52, i64 452}
!103 = !{!"branch_weights", i32 39266667, i32 6826670}
!104 = !{!"branch_weights", i32 42196427, i32 3896910}
!105 = !{!"branch_weights", i32 212214985, i32 18040}
!106 = !{!"branch_weights", i32 20487311, i32 191727674}
!107 = !{!95, !55, i64 16}
!108 = !{!"branch_weights", i32 180100662, i32 1512928, i32 30601395}
!109 = !{!"branch_weights", i32 108542829, i32 103672156}
!110 = !{!"branch_weights", i32 102731019, i32 109483966}
!111 = !{!"branch_weights", i32 101375608, i32 110839377}
!112 = !{!"branch_weights", i32 10331584, i32 201883401}
!113 = !{!"branch_weights", i32 57395056, i32 154819929}
!114 = !{!"branch_weights", i32 53022755, i32 159192230}
!115 = !{!"branch_weights", i32 17129044, i32 195085941}
!116 = !{!95, !55, i64 24}
!117 = !{!"branch_weights", i32 73936116, i32 214073254}
!118 = !{!"branch_weights", i32 61471060, i32 152602194}
!119 = !{!"branch_weights", i32 45827971, i32 15643089}
!120 = !{!"branch_weights", i32 213790696, i32 282558}
!121 = !{!"branch_weights", i32 15736932, i32 198053764}
!122 = !{!"branch_weights", i32 156203301, i32 413658, i32 57173737}
!123 = !{!"branch_weights", i32 83993556, i32 129797140}
!124 = !{!"branch_weights", i32 97562759, i32 116227937}
!125 = !{!"branch_weights", i32 76226365, i32 137564331}
!126 = !{!"branch_weights", i32 20521377, i32 193269319}
!127 = !{!"branch_weights", i32 48156410, i32 165634286}
!128 = !{!"branch_weights", i32 66494082, i32 147296614}
!129 = !{!"branch_weights", i32 8820522, i32 204970174}
!130 = !{!97, !52, i64 32}
!131 = !{!97, !52, i64 36}
!132 = !{!"branch_weights", i32 40836420, i32 33099696}
!133 = !{!"branch_weights", i32 34939925, i32 212233025}
!134 = !{!"branch_weights", i32 54063638, i32 158169387}
!135 = !{!"branch_weights", i32 137590496, i32 74642529}
!136 = !{!"branch_weights", i32 195454116, i32 16778909}
!137 = !{!"branch_weights", i32 160702240, i32 51530785}
!138 = !{!"branch_weights", i32 188782807, i32 23450218}
!139 = !{!"branch_weights", i32 200424112, i32 11808913}
!140 = !{!"branch_weights", i32 131228071, i32 81004954}
!141 = !{!"branch_weights", i32 33099696, i32 214073254}
!142 = !{!"branch_weights", i32 106448569, i32 107624685}
!143 = !{!"branch_weights", i32 120362170, i32 93711084}
!144 = !{!"branch_weights", i32 185247017, i32 28826237}
!145 = !{!"branch_weights", i32 163779116, i32 50294138}
!146 = !{!"branch_weights", i32 196305876, i32 17767378}
!147 = !{!"branch_weights", i32 180915038, i32 33158216}
!148 = !{!"branch_weights", i32 107567359, i32 106505895}
!149 = !{!95, !55, i64 32}
!150 = !{!"branch_weights", i32 153907919, i32 134101451}
!151 = !{!"branch_weights", i32 13031036, i32 121070415}
!152 = !{!"branch_weights", i32 29583450, i32 91486965}
!153 = !{!"branch_weights", i32 28707097, i32 62779868}
!154 = !{!"branch_weights", i32 18632770, i32 115468681}
!155 = !{!51, !52, i64 460}
!156 = !{!"branch_weights", i32 2826157, i32 15806613}
!157 = !{!"branch_weights", i32 99198, i32 18533572}
!158 = !{!"branch_weights", i32 0, i32 99198}
!159 = !{!"branch_weights", i32 125147787, i32 8953664}
!160 = !{!"branch_weights", i32 4826084, i32 4127580}
!161 = !{!"branch_weights", i32 107514757, i32 26586694}
!162 = !{!"branch_weights", i32 82380836, i32 25133921}
!163 = !{!"branch_weights", i32 80796891, i32 1583945}
!164 = !{!"branch_weights", i32 71812450, i32 8984441}
!165 = !{!"branch_weights", i32 53130192, i32 18682258}
!166 = !{!"branch_weights", i32 133786784, i32 314667}
!167 = !{!"branch_weights", i32 134101451, i32 0}
!168 = distinct !{!168, !62, !63}
!169 = !{!95, !55, i64 40}
!170 = !{!"branch_weights", i32 151291837, i32 136717533}
!171 = !{!"branch_weights", i32 6642307, i32 130075226}
!172 = !{!"branch_weights", i32 7941177, i32 122134049}
!173 = !{!"branch_weights", i32 8219062, i32 113914987}
!174 = !{!"branch_weights", i32 9514363, i32 127203170}
!175 = !{!"branch_weights", i32 3025948, i32 6488415}
!176 = !{!"branch_weights", i32 6010, i32 9508353}
!177 = !{!"branch_weights", i32 0, i32 6010}
!178 = !{!"branch_weights", i32 131663354, i32 5054179}
!179 = !{!"branch_weights", i32 663563, i32 4390616}
!180 = !{!"branch_weights", i32 115673165, i32 21044368}
!181 = !{!"branch_weights", i32 76213601, i32 39459564}
!182 = !{!"branch_weights", i32 75407610, i32 805991}
!183 = !{!"branch_weights", i32 64870850, i32 10536760}
!184 = !{!"branch_weights", i32 46428444, i32 18442406}
!185 = !{!"branch_weights", i32 134547187, i32 2170346}
!186 = !{!"branch_weights", i32 136717533, i32 0}
!187 = distinct !{!187, !62, !63}
!188 = !{!97, !52, i64 16}
!189 = !{!97, !52, i64 20}
!190 = !{!95, !55, i64 48}
!191 = !{!95, !55, i64 64}
!192 = !{!95, !55, i64 56}
!193 = !{!95, !55, i64 72}
!194 = !{!"branch_weights", i32 66145677, i32 221863693}
!195 = !{!"branch_weights", i32 5956625, i32 60189052}
!196 = !{!"branch_weights", i32 257595654, i32 24457091}
!197 = !{!"branch_weights", i32 388947, i32 24068144}
!198 = !{!"branch_weights", i32 80877528, i32 207131842}
!199 = !{!"branch_weights", i32 1929748, i32 78947780}
!200 = !{!"branch_weights", i32 279345632, i32 6733990}
!201 = !{!"branch_weights", i32 51778, i32 6682212}
!202 = !{!"branch_weights", i32 131247808, i32 156761562}
!203 = !{!"branch_weights", i32 76595654, i32 54652154}
!204 = !{!"branch_weights", i32 32923180, i32 43672474}
!205 = !{!"branch_weights", i32 129565557, i32 158443813}
!206 = !{!"branch_weights", i32 59457160, i32 70108397}
!207 = !{!"branch_weights", i32 27970033, i32 31487127}
!208 = !{!"branch_weights", i32 89387005, i32 198622365}
!209 = !{!"branch_weights", i32 78098745, i32 209910625}
!210 = !{!97, !52, i64 0}
!211 = !{!97, !52, i64 4}
!212 = !{!"branch_weights", i32 86178, i32 287923192}
!213 = !{!"branch_weights", i32 1569461, i32 286353731}
!214 = !{!"branch_weights", i32 34578, i32 1621061}
!215 = !{!"branch_weights", i32 981, i32 33597}
!216 = !{!"branch_weights", i32 517980, i32 287491390}
!217 = !{!"branch_weights", i32 558932, i32 286932458}
!218 = !{!"branch_weights", i32 6759, i32 1070153}
!219 = !{!"branch_weights", i32 6381, i32 368, i32 10}
!220 = !{!"branch_weights", i32 196271, i32 287813099}
!221 = !{!"branch_weights", i32 102266, i32 287710833}
!222 = !{!"branch_weights", i32 5287, i32 293250}
!223 = !{!"branch_weights", i32 528, i32 4759}
!224 = !{!"branch_weights", i32 1409119, i32 286600251}
!225 = !{!"branch_weights", i32 264307, i32 286335944}
!226 = !{!"branch_weights", i32 51106, i32 1622320}
!227 = !{!"branch_weights", i32 47197, i32 3241, i32 668}
!228 = !{!"branch_weights", i32 1088145, i32 286921225}
!229 = !{!"branch_weights", i32 33348, i32 1054797}
!230 = !{!"branch_weights", i32 24966, i32 8382}
!231 = !{!"branch_weights", i32 169017, i32 287840353}
!232 = !{!"branch_weights", i32 9917, i32 159100}
!233 = !{!"branch_weights", i32 34, i32 9883}
!234 = !{!"branch_weights", i32 3851637, i32 284157733}
!235 = !{!"branch_weights", i32 613193, i32 283544540}
!236 = !{!"branch_weights", i32 582334961, i32 -680509214}
!237 = !{!"branch_weights", i32 361651, i32 3483652}
!238 = !{!"branch_weights", i32 19413428, i32 268595942}
!239 = !{!"branch_weights", i32 108106445, i32 160489497}
!240 = !{!"branch_weights", i32 306439206, i32 -1056036570}
!241 = !{!"branch_weights", i32 250075, i32 116247792}
!242 = !{!"branch_weights", i32 2129858, i32 285879512}
!243 = !{!"branch_weights", i32 18162864, i32 267716648}
!244 = !{!"branch_weights", i32 31866715, i32 -1215621538}
!245 = !{!"branch_weights", i32 13434, i32 20071439}
!246 = !{!"branch_weights", i32 7539067, i32 280470303}
!247 = !{!"branch_weights", i32 132090998, i32 148379305}
!248 = !{!"branch_weights", i32 9473664, i32 -1989524051}
!249 = !{!"branch_weights", i32 109157, i32 138949480}
!250 = !{!97, !52, i64 40}
!251 = !{!"function_entry_count", i64 411793847}
!252 = !{!51, !52, i64 392}
!253 = !{!51, !52, i64 396}
!254 = !{!"branch_weights", i32 188411068, i32 223382779}
!255 = !{!"branch_weights", i32 10996, i32 188400072}
!256 = !{!"branch_weights", i32 31603, i32 188368469}
!257 = !{!51, !52, i64 472}
!258 = !{!"branch_weights", i32 88921493, i32 99446976}
!259 = !{!"branch_weights", i32 84403292, i32 103965177}
!260 = !{!"branch_weights", i32 64583992, i32 19819300}
!261 = !{!"branch_weights", i32 161233668, i32 126775702}
!262 = !{!97, !52, i64 24}
!263 = !{!97, !52, i64 28}
!264 = !{!"branch_weights", i32 6636623, i32 281372747}
!265 = !{!"branch_weights", i32 1838047, i32 4798576}
!266 = !{!"branch_weights", i32 668450, i32 1169597}
!267 = !{!"branch_weights", i32 533529, i32 134921}
!268 = !{!"branch_weights", i32 465194, i32 68335}
!269 = !{!"function_entry_count", i64 436909794}
!270 = !{!"branch_weights", i32 222458728, i32 214451066}
