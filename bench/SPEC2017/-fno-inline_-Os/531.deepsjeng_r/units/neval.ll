; ModuleID = 'neval.cpp'
source_filename = "neval.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attackinfo_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pawntt_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.t_eval_comps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

$_ZSt3minIiERKT_S2_S2_ = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z5fevalP7state_tiP12t_eval_comps(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !63 {
  %4 = alloca %struct.attackinfo_t, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %5 = call fastcc noundef i32 @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t(ptr noundef %0, ptr noundef nonnull %4) #9
  %6 = tail call noundef ptr @_Z16static_pawn_evalP7state_t(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.pawntt_t, ptr %6, i64 0, i32 10
  %8 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 2
  %9 = load <2 x i32>, ptr %7, align 8, !tbaa !64
  store <2 x i32> %9, ptr %8, align 4, !tbaa !64
  tail call fastcc void @_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps(ptr noundef %0, ptr noundef %6, ptr noundef %2) #9
  call fastcc void @_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #9
  tail call fastcc void @_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps(ptr noundef %0, ptr noundef %6, i32 noundef %1, ptr noundef %2) #9
  tail call void @_Z8psq_evalP7state_tP12t_eval_comps(ptr noundef %0, ptr noundef %2) #9
  tail call fastcc void @_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps(ptr noundef %0, ptr noundef %6, ptr noundef %2) #9
  %10 = tail call fastcc noundef i32 @_ZL12trapped_evalP7state_tP12t_eval_comps(ptr noundef %0) #9
  %11 = add nsw i32 %10, %5
  %12 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 10
  store i32 %11, ptr %12, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !63 !PGOFuncName !70 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !75
  %10 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !75
  %11 = xor i64 %10, -1
  %12 = and i64 %9, %11
  %13 = lshr i64 %12, 7
  %14 = load i64, ptr @FileMask, align 16, !tbaa !75
  %15 = xor i64 %14, -1
  %16 = and i64 %9, %15
  %17 = lshr i64 %16, 9
  %18 = or i64 %17, %13
  store i64 %18, ptr %1, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %20 = load i64, ptr %19, align 8, !tbaa !75
  %21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !75
  %22 = xor i64 %21, -1
  %23 = and i64 %20, %22
  %24 = shl i64 %23, 9
  %25 = load i64, ptr @FileMask, align 16, !tbaa !75
  %26 = xor i64 %25, -1
  %27 = and i64 %20, %26
  %28 = shl i64 %27, 7
  %29 = or i64 %28, %24
  %30 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %32 = load i64, ptr %31, align 8, !tbaa !75
  store i64 %32, ptr %3, align 8, !tbaa !75
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %64, label %34, !prof !79

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 2
  %39 = or i64 %29, %5
  %40 = xor i64 %39, -1
  br label %41

41:                                               ; preds = %34, %41
  %42 = phi i32 [ 0, %34 ], [ %61, %41 ]
  %43 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %44 = load i64, ptr %35, align 8, !tbaa !75
  %45 = load i64, ptr %36, align 8, !tbaa !75
  %46 = or i64 %45, %44
  %47 = load i64, ptr %37, align 8, !tbaa !80
  %48 = xor i64 %47, %46
  store i64 %48, ptr %37, align 8, !tbaa !80
  %49 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %43) #9
  %50 = load i64, ptr %8, align 8, !tbaa !75
  %51 = and i64 %50, %49
  store i64 %49, ptr %38, align 8, !tbaa !81
  %52 = and i64 %49, %40
  %53 = load i64, ptr %35, align 8, !tbaa !75
  %54 = load i64, ptr %36, align 8, !tbaa !75
  %55 = or i64 %54, %53
  %56 = load i64, ptr %37, align 8, !tbaa !80
  %57 = xor i64 %56, %55
  store i64 %57, ptr %37, align 8, !tbaa !80
  %58 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %52) #9
  %59 = call noundef i32 @_Z8PopCounty(i64 noundef %51) #9
  %60 = add i32 %58, %42
  %61 = sub i32 %60, %59
  %62 = load i64, ptr %3, align 8, !tbaa !75
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %41, !prof !82, !llvm.loop !83

64:                                               ; preds = %41, %2
  %65 = phi i32 [ 0, %2 ], [ %61, %41 ]
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %67 = load i64, ptr %66, align 8, !tbaa !75
  store i64 %67, ptr %3, align 8, !tbaa !75
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %99, label %69, !prof !85

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %71 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %72 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %73 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 3
  %74 = or i64 %18, %7
  %75 = xor i64 %74, -1
  br label %76

76:                                               ; preds = %69, %76
  %77 = phi i32 [ 0, %69 ], [ %96, %76 ]
  %78 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %79 = load i64, ptr %70, align 8, !tbaa !75
  %80 = load i64, ptr %71, align 8, !tbaa !75
  %81 = or i64 %80, %79
  %82 = load i64, ptr %72, align 8, !tbaa !80
  %83 = xor i64 %82, %81
  store i64 %83, ptr %72, align 8, !tbaa !80
  %84 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %78) #9
  %85 = load i64, ptr %19, align 8, !tbaa !75
  %86 = and i64 %85, %84
  store i64 %84, ptr %73, align 8, !tbaa !86
  %87 = and i64 %84, %75
  %88 = load i64, ptr %70, align 8, !tbaa !75
  %89 = load i64, ptr %71, align 8, !tbaa !75
  %90 = or i64 %89, %88
  %91 = load i64, ptr %72, align 8, !tbaa !80
  %92 = xor i64 %91, %90
  store i64 %92, ptr %72, align 8, !tbaa !80
  %93 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %87) #9
  %94 = call noundef i32 @_Z8PopCounty(i64 noundef %86) #9
  %95 = sub i32 %77, %93
  %96 = add i32 %95, %94
  %97 = load i64, ptr %3, align 8, !tbaa !75
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %76, !prof !87, !llvm.loop !88

99:                                               ; preds = %76, %64
  %100 = phi i32 [ 0, %64 ], [ %96, %76 ]
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %102 = load i64, ptr %101, align 8, !tbaa !75
  store i64 %102, ptr %3, align 8, !tbaa !75
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %169, label %104, !prof !79

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %106 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %107 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %108 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 6
  %109 = or i64 %29, %5
  %110 = xor i64 %109, -1
  br label %111

111:                                              ; preds = %104, %165
  %112 = phi i32 [ 0, %104 ], [ %166, %165 ]
  %113 = phi i32 [ %65, %104 ], [ %132, %165 ]
  %114 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %115 = load i64, ptr %105, align 8, !tbaa !75
  %116 = load i64, ptr %106, align 8, !tbaa !75
  %117 = or i64 %116, %115
  %118 = load i64, ptr %107, align 8, !tbaa !80
  %119 = xor i64 %118, %117
  store i64 %119, ptr %107, align 8, !tbaa !80
  %120 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %114) #9
  %121 = load i64, ptr %8, align 8, !tbaa !75
  %122 = and i64 %121, %120
  store i64 %120, ptr %108, align 8, !tbaa !89
  %123 = and i64 %120, %110
  %124 = load i64, ptr %105, align 8, !tbaa !75
  %125 = load i64, ptr %106, align 8, !tbaa !75
  %126 = or i64 %125, %124
  %127 = load i64, ptr %107, align 8, !tbaa !80
  %128 = xor i64 %127, %126
  store i64 %128, ptr %107, align 8, !tbaa !80
  %129 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %123) #9
  %130 = call noundef i32 @_Z8PopCounty(i64 noundef %122) #9
  %131 = add i32 %129, %113
  %132 = sub i32 %131, %130
  %133 = and i32 %114, 7
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !75
  %137 = load i64, ptr %8, align 8, !tbaa !75
  %138 = and i64 %137, %136
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %165, !prof !90

140:                                              ; preds = %111
  %141 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %142 = load i64, ptr %101, align 8, !tbaa !75
  %143 = and i64 %142, %136
  %144 = call noundef i32 @_Z8PopCounty(i64 noundef %143) #9
  %145 = load i64, ptr %135, align 8, !tbaa !75
  %146 = load i64, ptr %19, align 8, !tbaa !75
  %147 = and i64 %146, %145
  %148 = icmp eq i64 %147, 0
  %149 = icmp sgt i32 %144, 1
  %150 = load i32, ptr %141, align 4, !tbaa !64
  br i1 %148, label %151, label %156, !prof !91

151:                                              ; preds = %140
  br i1 %149, label %152, label %154, !prof !92

152:                                              ; preds = %151
  %153 = add nsw i32 %150, 12
  br label %162

154:                                              ; preds = %151
  %155 = add nsw i32 %150, 8
  br label %162

156:                                              ; preds = %140
  %157 = ashr i32 %150, 1
  br i1 %149, label %158, label %160, !prof !93

158:                                              ; preds = %156
  %159 = add nsw i32 %157, 8
  br label %162

160:                                              ; preds = %156
  %161 = add nsw i32 %157, 4
  br label %162

162:                                              ; preds = %158, %160, %152, %154
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ], [ %153, %152 ], [ %155, %154 ]
  %164 = add nsw i32 %163, %112
  br label %165

165:                                              ; preds = %162, %111
  %166 = phi i32 [ %112, %111 ], [ %164, %162 ]
  %167 = load i64, ptr %3, align 8, !tbaa !75
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %111, !prof !94, !llvm.loop !95

169:                                              ; preds = %165, %99
  %170 = phi i32 [ %65, %99 ], [ %132, %165 ]
  %171 = phi i32 [ 0, %99 ], [ %166, %165 ]
  %172 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %173 = load i64, ptr %172, align 8, !tbaa !75
  store i64 %173, ptr %3, align 8, !tbaa !75
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %240, label %175, !prof !79

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %177 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %178 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %179 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 7
  %180 = or i64 %18, %7
  %181 = xor i64 %180, -1
  br label %182

182:                                              ; preds = %175, %236
  %183 = phi i32 [ %171, %175 ], [ %237, %236 ]
  %184 = phi i32 [ %100, %175 ], [ %203, %236 ]
  %185 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %186 = load i64, ptr %176, align 8, !tbaa !75
  %187 = load i64, ptr %177, align 8, !tbaa !75
  %188 = or i64 %187, %186
  %189 = load i64, ptr %178, align 8, !tbaa !80
  %190 = xor i64 %189, %188
  store i64 %190, ptr %178, align 8, !tbaa !80
  %191 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %185) #9
  %192 = load i64, ptr %19, align 8, !tbaa !75
  %193 = and i64 %192, %191
  store i64 %191, ptr %179, align 8, !tbaa !96
  %194 = and i64 %191, %181
  %195 = load i64, ptr %176, align 8, !tbaa !75
  %196 = load i64, ptr %177, align 8, !tbaa !75
  %197 = or i64 %196, %195
  %198 = load i64, ptr %178, align 8, !tbaa !80
  %199 = xor i64 %198, %197
  store i64 %199, ptr %178, align 8, !tbaa !80
  %200 = call noundef i32 @_Z13ThickPopCounty(i64 noundef %194) #9
  %201 = call noundef i32 @_Z8PopCounty(i64 noundef %193) #9
  %202 = sub i32 %184, %200
  %203 = add i32 %202, %201
  %204 = and i32 %185, 7
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !75
  %208 = load i64, ptr %19, align 8, !tbaa !75
  %209 = and i64 %208, %207
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %236, !prof !97

211:                                              ; preds = %182
  %212 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %213 = load i64, ptr %172, align 8, !tbaa !75
  %214 = and i64 %213, %207
  %215 = call noundef i32 @_Z8PopCounty(i64 noundef %214) #9
  %216 = load i64, ptr %206, align 8, !tbaa !75
  %217 = load i64, ptr %8, align 8, !tbaa !75
  %218 = and i64 %217, %216
  %219 = icmp eq i64 %218, 0
  %220 = icmp sgt i32 %215, 1
  %221 = load i32, ptr %212, align 8, !tbaa !64
  br i1 %219, label %222, label %227, !prof !98

222:                                              ; preds = %211
  br i1 %220, label %223, label %225, !prof !99

223:                                              ; preds = %222
  %224 = add nsw i32 %221, 12
  br label %233

225:                                              ; preds = %222
  %226 = add nsw i32 %221, 8
  br label %233

227:                                              ; preds = %211
  %228 = ashr i32 %221, 1
  br i1 %220, label %229, label %231, !prof !100

229:                                              ; preds = %227
  %230 = add nsw i32 %228, 8
  br label %233

231:                                              ; preds = %227
  %232 = add nsw i32 %228, 4
  br label %233

233:                                              ; preds = %229, %231, %223, %225
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ], [ %224, %223 ], [ %226, %225 ]
  %235 = sub nsw i32 %183, %234
  br label %236

236:                                              ; preds = %233, %182
  %237 = phi i32 [ %183, %182 ], [ %235, %233 ]
  %238 = load i64, ptr %3, align 8, !tbaa !75
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %182, !prof !101, !llvm.loop !102

240:                                              ; preds = %236, %169
  %241 = phi i32 [ %100, %169 ], [ %203, %236 ]
  %242 = phi i32 [ %171, %169 ], [ %237, %236 ]
  %243 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %244 = load i64, ptr %243, align 8, !tbaa !75
  store i64 %244, ptr %3, align 8, !tbaa !75
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %261, label %246, !prof !103

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 8
  %248 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  br label %249

249:                                              ; preds = %246, %249
  %250 = phi i32 [ %242, %246 ], [ %258, %249 ]
  %251 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %252 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %251) #9
  %253 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %251) #9
  %254 = or i64 %253, %252
  store i64 %254, ptr %247, align 8, !tbaa !104
  %255 = load i32, ptr %248, align 4, !tbaa !105
  %256 = call noundef i32 @_Z8sum_distii(i32 noundef %251, i32 noundef %255) #9
  %257 = add i32 %250, 14
  %258 = sub i32 %257, %256
  %259 = load i64, ptr %3, align 8, !tbaa !75
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %249, !prof !106, !llvm.loop !107

261:                                              ; preds = %249, %240
  %262 = phi i32 [ %242, %240 ], [ %258, %249 ]
  %263 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %264 = load i64, ptr %263, align 8, !tbaa !75
  store i64 %264, ptr %3, align 8, !tbaa !75
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %281, label %266, !prof !108

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 9
  %268 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  br label %269

269:                                              ; preds = %266, %269
  %270 = phi i32 [ %262, %266 ], [ %278, %269 ]
  %271 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %272 = call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %271) #9
  %273 = call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %271) #9
  %274 = or i64 %273, %272
  store i64 %274, ptr %267, align 8, !tbaa !109
  %275 = load i32, ptr %268, align 8, !tbaa !110
  %276 = call noundef i32 @_Z8sum_distii(i32 noundef %271, i32 noundef %275) #9
  %277 = add i32 %270, -14
  %278 = add i32 %277, %276
  %279 = load i64, ptr %3, align 8, !tbaa !75
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %269, !prof !111, !llvm.loop !112

281:                                              ; preds = %269, %261
  %282 = phi i32 [ %262, %261 ], [ %278, %269 ]
  %283 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %284 = load i64, ptr %283, align 8, !tbaa !75
  store i64 %284, ptr %3, align 8, !tbaa !75
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %302, label %286, !prof !113

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 4
  %288 = or i64 %29, %5
  %289 = xor i64 %288, -1
  br label %290

290:                                              ; preds = %286, %290
  %291 = phi i32 [ %170, %286 ], [ %299, %290 ]
  %292 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %293
  %295 = load i64, ptr %294, align 8, !tbaa !75
  store i64 %295, ptr %287, align 8, !tbaa !114
  %296 = and i64 %295, %289
  %297 = call noundef i32 @_Z8PopCounty(i64 noundef %296) #9
  %298 = shl nsw i32 %297, 1
  %299 = add nsw i32 %298, %291
  %300 = load i64, ptr %3, align 8, !tbaa !75
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %290, !prof !115, !llvm.loop !116

302:                                              ; preds = %290, %281
  %303 = phi i32 [ %170, %281 ], [ %299, %290 ]
  %304 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %305 = load i64, ptr %304, align 8, !tbaa !75
  store i64 %305, ptr %3, align 8, !tbaa !75
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %323, label %307, !prof !117

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 5
  %309 = or i64 %18, %7
  %310 = xor i64 %309, -1
  br label %311

311:                                              ; preds = %307, %311
  %312 = phi i32 [ %241, %307 ], [ %320, %311 ]
  %313 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #9
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !75
  store i64 %316, ptr %308, align 8, !tbaa !118
  %317 = and i64 %316, %310
  %318 = call noundef i32 @_Z8PopCounty(i64 noundef %317) #9
  %319 = shl nsw i32 %318, 1
  %320 = sub nsw i32 %312, %319
  %321 = load i64, ptr %3, align 8, !tbaa !75
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %311, !prof !119, !llvm.loop !120

323:                                              ; preds = %311, %302
  %324 = phi i32 [ %241, %302 ], [ %320, %311 ]
  %325 = add nsw i32 %324, %303
  %326 = mul nsw i32 %325, 3
  %327 = add nsw i32 %326, %282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %327
}

; Function Attrs: optsize
declare noundef ptr @_Z16static_pawn_evalP7state_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !63 !PGOFuncName !121 {
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !105
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %8 = load i32, ptr %7, align 8, !tbaa !64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %134, label %10, !prof !122

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 8, !tbaa !110
  %12 = ashr i32 %11, 3
  %13 = and i32 %11, 7
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [8 x i64], ptr @KingFilesMask, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !75
  %17 = add nsw i32 %13, -3
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %29, !prof !123

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !124
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 -16, i32 0, !prof !125
  %25 = and i32 %21, 2
  %26 = icmp eq i32 %25, 0
  %27 = add nsw i32 %24, -12
  %28 = select i1 %26, i32 %27, i32 %24, !prof !126
  br label %29

29:                                               ; preds = %19, %10
  %30 = phi i32 [ 0, %10 ], [ %28, %19 ]
  %31 = icmp sgt i32 %12, 2
  br i1 %31, label %32, label %53, !prof !127

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %34 = load i64, ptr %33, align 8, !tbaa !75
  %35 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !75
  %36 = and i64 %34, %35
  %37 = and i64 %36, %16
  %38 = tail call noundef i32 @_Z8PopCounty(i64 noundef %37) #9
  %39 = icmp eq i32 %38, 3
  %40 = add nsw i32 %30, 6
  %41 = select i1 %39, i32 %40, i32 %30, !prof !128
  %42 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !129
  %44 = and i64 %43, %16
  %45 = tail call noundef i32 @_Z13ThickPopCounty(i64 noundef %44) #9
  %46 = shl i32 %45, 1
  %47 = load i32, ptr %4, align 8, !tbaa !110
  %48 = and i32 %47, 7
  switch i32 %48, label %55 [
    i32 0, label %49
    i32 7, label %51
  ], !prof !131

49:                                               ; preds = %32
  %50 = or disjoint i32 %47, 1
  br label %55

51:                                               ; preds = %32
  %52 = add nsw i32 %47, -1
  br label %55

53:                                               ; preds = %29
  %54 = add nsw i32 %30, -30
  br label %120

55:                                               ; preds = %49, %51, %32
  %56 = phi i32 [ %50, %49 ], [ %52, %51 ], [ %47, %32 ]
  %57 = add nsw i32 %56, -9
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !64
  %61 = add nsw i32 %56, -8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %62
  %64 = load <2 x i32>, ptr %63, align 4, !tbaa !64
  %65 = add nsw i32 %56, -17
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !64
  %69 = insertelement <4 x i32> poison, i32 %60, i64 0
  %70 = shufflevector <2 x i32> %64, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %71 = shufflevector <4 x i32> %69, <4 x i32> %70, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %72 = insertelement <4 x i32> %71, i32 %68, i64 3
  %73 = icmp eq <4 x i32> %72, <i32 1, i32 1, i32 1, i32 1>
  %74 = select <4 x i1> %73, <4 x i32> <i32 12, i32 24, i32 12, i32 4>, <4 x i32> zeroinitializer
  %75 = add nsw i32 %56, -16
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !64
  %79 = icmp eq i32 %78, 1
  %80 = select i1 %79, i32 10, i32 0
  %81 = add nsw i32 %56, -15
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !64
  %85 = icmp eq i32 %84, 1
  %86 = select i1 %85, i32 4, i32 0
  %87 = add nsw i32 %56, -24
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !64
  %91 = icmp eq i32 %90, 1
  %92 = select i1 %91, i32 4, i32 0
  %93 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %74)
  %94 = add i32 %93, %80
  %95 = add nuw nsw i32 %86, %92
  %96 = add i32 %94, %95
  %97 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %98 = load i64, ptr %97, align 8, !tbaa !75
  %99 = add nsw i32 %12, -1
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !75
  %103 = add nsw i32 %12, -2
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !75
  %107 = or i64 %106, %102
  %108 = add nsw i32 %12, -3
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !75
  %112 = or i64 %107, %111
  %113 = and i64 %98, %112
  %114 = and i64 %113, %16
  %115 = tail call noundef i32 @_Z8PopCounty(i64 noundef %114) #9
  %116 = shl i32 %115, 2
  %117 = add i32 %41, %96
  %118 = add i32 %46, %116
  %119 = sub i32 %117, %118
  br label %120

120:                                              ; preds = %53, %55
  %121 = phi i32 [ %119, %55 ], [ %54, %53 ]
  %122 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %123 = load i64, ptr %122, align 8, !tbaa !75
  %124 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %125 = load i64, ptr %124, align 8, !tbaa !75
  %126 = or i64 %125, %123
  %127 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 3
  %128 = load i64, ptr %127, align 8, !tbaa !132
  %129 = and i64 %128, %126
  %130 = and i64 %129, %16
  %131 = tail call noundef i32 @_Z8PopCounty(i64 noundef %130) #9
  %132 = mul nsw i32 %131, -13
  %133 = add nsw i32 %132, %121
  br label %134

134:                                              ; preds = %120, %3
  %135 = phi i32 [ %133, %120 ], [ 0, %3 ]
  %136 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %137 = load i32, ptr %136, align 4, !tbaa !64
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %260, label %139, !prof !133

139:                                              ; preds = %134
  %140 = ashr i32 %6, 3
  %141 = and i32 %6, 7
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [8 x i64], ptr @KingFilesMask, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !75
  %145 = add nsw i32 %141, -3
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %156, !prof !134

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %149 = load i32, ptr %148, align 4, !tbaa !124
  %150 = and i32 %149, 16
  %151 = xor i32 %150, 16
  %152 = and i32 %149, 8
  %153 = icmp eq i32 %152, 0
  %154 = or disjoint i32 %151, 12
  %155 = select i1 %153, i32 %154, i32 %151, !prof !135
  br label %156

156:                                              ; preds = %147, %139
  %157 = phi i32 [ 0, %139 ], [ %155, %147 ]
  %158 = icmp slt i32 %140, 5
  br i1 %158, label %159, label %181, !prof !136

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %161 = load i64, ptr %160, align 8, !tbaa !75
  %162 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !75
  %163 = and i64 %161, %162
  %164 = and i64 %163, %144
  %165 = tail call noundef i32 @_Z8PopCounty(i64 noundef %164) #9
  %166 = icmp eq i32 %165, 3
  %167 = add nsw i32 %157, -6
  %168 = select i1 %166, i32 %167, i32 %157, !prof !137
  %169 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !132
  %171 = and i64 %170, %144
  %172 = tail call noundef i32 @_Z13ThickPopCounty(i64 noundef %171) #9
  %173 = shl nsw i32 %172, 1
  %174 = add nsw i32 %173, %168
  %175 = load i32, ptr %5, align 4, !tbaa !105
  %176 = and i32 %175, 7
  switch i32 %176, label %183 [
    i32 0, label %177
    i32 7, label %179
  ], !prof !138

177:                                              ; preds = %159
  %178 = or disjoint i32 %175, 1
  br label %183

179:                                              ; preds = %159
  %180 = add nsw i32 %175, -1
  br label %183

181:                                              ; preds = %156
  %182 = add nuw nsw i32 %157, 30
  br label %246

183:                                              ; preds = %177, %179, %159
  %184 = phi i32 [ %178, %177 ], [ %180, %179 ], [ %175, %159 ]
  %185 = add nsw i32 %184, 9
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !64
  %189 = icmp eq i32 %188, 2
  %190 = select i1 %189, i32 -12, i32 0
  %191 = add nsw i32 %184, 8
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !64
  %195 = icmp eq i32 %194, 2
  %196 = select i1 %195, i32 -24, i32 0
  %197 = add nsw i32 %184, 7
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !64
  %201 = icmp eq i32 %200, 2
  %202 = select i1 %201, i32 -12, i32 0
  %203 = add nsw i32 %184, 15
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %204
  %206 = load <2 x i32>, ptr %205, align 4, !tbaa !64
  %207 = add nsw i32 %184, 17
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !64
  %211 = add nsw i32 %184, 24
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !64
  %215 = shufflevector <2 x i32> %206, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %216 = insertelement <4 x i32> %215, i32 %210, i64 2
  %217 = insertelement <4 x i32> %216, i32 %214, i64 3
  %218 = icmp eq <4 x i32> %217, <i32 2, i32 2, i32 2, i32 2>
  %219 = select <4 x i1> %218, <4 x i32> <i32 -4, i32 -10, i32 -4, i32 -4>, <4 x i32> zeroinitializer
  %220 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %221 = load i64, ptr %220, align 8, !tbaa !75
  %222 = add nsw i32 %140, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !75
  %226 = add nsw i32 %140, 2
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !75
  %230 = or i64 %229, %225
  %231 = add nsw i32 %140, 3
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !75
  %235 = or i64 %230, %234
  %236 = and i64 %221, %235
  %237 = and i64 %236, %144
  %238 = tail call noundef i32 @_Z8PopCounty(i64 noundef %237) #9
  %239 = shl i32 %238, 2
  %240 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %219)
  %241 = add i32 %240, %190
  %242 = add nsw i32 %196, %202
  %243 = add i32 %239, %174
  %244 = add i32 %241, %242
  %245 = add i32 %244, %243
  br label %246

246:                                              ; preds = %181, %183
  %247 = phi i32 [ %245, %183 ], [ %182, %181 ]
  %248 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %249 = load i64, ptr %248, align 8, !tbaa !75
  %250 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %251 = load i64, ptr %250, align 8, !tbaa !75
  %252 = or i64 %251, %249
  %253 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 2
  %254 = load i64, ptr %253, align 8, !tbaa !129
  %255 = and i64 %254, %252
  %256 = and i64 %255, %144
  %257 = tail call noundef i32 @_Z8PopCounty(i64 noundef %256) #9
  %258 = mul i32 %257, 13
  %259 = add i32 %258, %247
  br label %260

260:                                              ; preds = %246, %134
  %261 = phi i32 [ %259, %246 ], [ 0, %134 ]
  %262 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 8
  %263 = load i32, ptr %262, align 4, !tbaa !139
  %264 = add nsw i32 %263, %135
  store i32 %264, ptr %262, align 4, !tbaa !139
  %265 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 9
  %266 = load i32, ptr %265, align 4, !tbaa !140
  %267 = add nsw i32 %266, %261
  store i32 %267, ptr %265, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !63 !PGOFuncName !141 {
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !105
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = icmp ne i32 %9, 0
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %12 = load i32, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i32 %12, 0
  %14 = xor i1 %13, true
  %15 = select i1 %10, i1 true, i1 %14
  br i1 %15, label %16, label %206, !prof !142

16:                                               ; preds = %3
  %17 = select i1 %10, i1 %13, i1 false, !prof !143
  %18 = load i64, ptr %1, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !81
  %21 = or i64 %20, %18
  %22 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !114
  %24 = or i64 %21, %23
  %25 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 6
  %26 = load i64, ptr %25, align 8, !tbaa !89
  %27 = or i64 %24, %26
  %28 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !104
  %30 = or i64 %27, %29
  br i1 %17, label %121, label %31, !prof !144

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !78
  %34 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !86
  %36 = or i64 %35, %33
  %37 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 5
  %38 = load i64, ptr %37, align 8, !tbaa !118
  %39 = or i64 %36, %38
  %40 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !96
  %42 = or i64 %39, %41
  %43 = getelementptr inbounds %struct.attackinfo_t, ptr %1, i64 0, i32 9
  %44 = load i64, ptr %43, align 8, !tbaa !109
  %45 = or i64 %42, %44
  %46 = sext i32 %5 to i64
  %47 = getelementptr inbounds [64 x i64], ptr @KingPressureMask, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !75
  %49 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %50 = load i64, ptr %49, align 8, !tbaa !75
  %51 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %52 = load i64, ptr %51, align 8, !tbaa !75
  %53 = or i64 %52, %50
  %54 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %55 = load i64, ptr %54, align 8, !tbaa !75
  %56 = or i64 %53, %55
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %58 = load i64, ptr %57, align 8, !tbaa !75
  %59 = or i64 %56, %58
  %60 = and i64 %59, %48
  %61 = tail call noundef i32 @_Z8PopCounty(i64 noundef %60) #9
  %62 = mul nsw i32 %61, -22
  %63 = load i64, ptr %32, align 8, !tbaa !78
  %64 = and i64 %63, %48
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i64, ptr %34, align 8, !tbaa !86
  %68 = and i64 %67, %48
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %65, i32 2, i32 1
  %71 = select i1 %69, i32 %66, i32 %70, !prof !145
  %72 = load i64, ptr %37, align 8, !tbaa !118
  %73 = and i64 %72, %48
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = add nuw nsw i32 %71, %75
  %77 = load i64, ptr %40, align 8, !tbaa !96
  %78 = and i64 %77, %48
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load i64, ptr %43, align 8, !tbaa !109
  %82 = and i64 %81, %48
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = and i64 %48, %45
  %86 = tail call noundef i32 @_Z13ThickPopCounty(i64 noundef %85) #9
  %87 = getelementptr inbounds [64 x i64], ptr @KingPressureMask1, i64 0, i64 %46
  %88 = load i64, ptr %87, align 8, !tbaa !75
  %89 = load i64, ptr %32, align 8, !tbaa !78
  %90 = and i64 %89, %88
  %91 = icmp eq i64 %90, 0
  %92 = load i64, ptr %34, align 8, !tbaa !86
  %93 = and i64 %92, %88
  %94 = icmp eq i64 %93, 0
  %95 = load i64, ptr %37, align 8, !tbaa !118
  %96 = and i64 %95, %88
  %97 = icmp eq i64 %96, 0
  %98 = load i64, ptr %40, align 8, !tbaa !96
  %99 = and i64 %98, %88
  %100 = icmp eq i64 %99, 0
  %101 = load i64, ptr %43, align 8, !tbaa !109
  %102 = and i64 %101, %88
  %103 = icmp eq i64 %102, 0
  %104 = select i1 %91, i32 0, i32 2
  %105 = or disjoint i32 %104, 4
  %106 = select i1 %94, i32 %104, i32 %105
  %107 = add nuw nsw i32 %106, 4
  %108 = select i1 %97, i32 %106, i32 %107
  %109 = add nuw nsw i32 %108, 8
  %110 = select i1 %100, i32 %108, i32 %109
  %111 = add nuw nsw i32 %110, 16
  %112 = select i1 %103, i32 %110, i32 %111
  %113 = add i32 %76, %86
  %114 = add i32 %113, %80
  %115 = add i32 %114, %84
  %116 = mul i32 %115, -3
  %117 = add i32 %116, %62
  %118 = sub i32 %117, %112
  %119 = load i32, ptr %8, align 4, !tbaa !64
  %120 = icmp eq i32 %119, 0
  br label %121

121:                                              ; preds = %31, %16
  %122 = phi i1 [ %120, %31 ], [ false, %16 ]
  %123 = phi i32 [ %118, %31 ], [ 0, %16 ]
  br i1 %122, label %198, label %124, !prof !146

124:                                              ; preds = %121
  %125 = sext i32 %7 to i64
  %126 = getelementptr inbounds [64 x i64], ptr @KingPressureMask, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !75
  %128 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %129 = load i64, ptr %128, align 8, !tbaa !75
  %130 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %131 = load i64, ptr %130, align 8, !tbaa !75
  %132 = or i64 %131, %129
  %133 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %134 = load i64, ptr %133, align 8, !tbaa !75
  %135 = or i64 %132, %134
  %136 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %137 = load i64, ptr %136, align 8, !tbaa !75
  %138 = or i64 %135, %137
  %139 = and i64 %138, %127
  %140 = tail call noundef i32 @_Z8PopCounty(i64 noundef %139) #9
  %141 = mul nsw i32 %140, 22
  %142 = load i64, ptr %1, align 8, !tbaa !76
  %143 = and i64 %142, %127
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load i64, ptr %19, align 8, !tbaa !81
  %147 = and i64 %146, %127
  %148 = icmp eq i64 %147, 0
  %149 = select i1 %144, i32 2, i32 1
  %150 = select i1 %148, i32 %145, i32 %149, !prof !147
  %151 = load i64, ptr %22, align 8, !tbaa !114
  %152 = and i64 %151, %127
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = add nuw nsw i32 %150, %154
  %156 = load i64, ptr %25, align 8, !tbaa !89
  %157 = and i64 %156, %127
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = load i64, ptr %28, align 8, !tbaa !104
  %161 = and i64 %160, %127
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = and i64 %127, %30
  %165 = tail call noundef i32 @_Z13ThickPopCounty(i64 noundef %164) #9
  %166 = getelementptr inbounds [64 x i64], ptr @KingPressureMask1, i64 0, i64 %125
  %167 = load i64, ptr %166, align 8, !tbaa !75
  %168 = load i64, ptr %1, align 8, !tbaa !76
  %169 = and i64 %168, %167
  %170 = icmp eq i64 %169, 0
  %171 = load i64, ptr %19, align 8, !tbaa !81
  %172 = and i64 %171, %167
  %173 = icmp eq i64 %172, 0
  %174 = load i64, ptr %22, align 8, !tbaa !114
  %175 = and i64 %174, %167
  %176 = icmp eq i64 %175, 0
  %177 = load i64, ptr %25, align 8, !tbaa !89
  %178 = and i64 %177, %167
  %179 = icmp eq i64 %178, 0
  %180 = load i64, ptr %28, align 8, !tbaa !104
  %181 = and i64 %180, %167
  %182 = icmp eq i64 %181, 0
  %183 = select i1 %170, i32 0, i32 2
  %184 = or disjoint i32 %183, 4
  %185 = select i1 %173, i32 %183, i32 %184
  %186 = add nuw nsw i32 %185, 4
  %187 = select i1 %176, i32 %185, i32 %186
  %188 = add nuw nsw i32 %187, 8
  %189 = select i1 %179, i32 %187, i32 %188
  %190 = add nuw nsw i32 %189, 16
  %191 = select i1 %182, i32 %189, i32 %190
  %192 = add i32 %155, %165
  %193 = add i32 %192, %159
  %194 = add i32 %193, %163
  %195 = mul i32 %194, 3
  %196 = add i32 %195, %141
  %197 = add i32 %196, %191
  br label %198

198:                                              ; preds = %124, %121
  %199 = phi i32 [ %197, %124 ], [ 0, %121 ]
  %200 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 8
  %201 = load i32, ptr %200, align 4, !tbaa !139
  %202 = add nsw i32 %201, %123
  store i32 %202, ptr %200, align 4, !tbaa !139
  %203 = getelementptr inbounds %struct.t_eval_comps, ptr %2, i64 0, i32 9
  %204 = load i32, ptr %203, align 4, !tbaa !140
  %205 = add nsw i32 %204, %199
  store i32 %205, ptr %203, align 4, !tbaa !140
  br label %206

206:                                              ; preds = %3, %198
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !63 !PGOFuncName !148 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %10 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !149
  store i64 %11, ptr %5, align 8, !tbaa !75
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %149, label %13, !prof !150

13:                                               ; preds = %4
  %14 = icmp slt i32 %2, 384
  %15 = ashr i32 %7, 3
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  br label %18

18:                                               ; preds = %13, %145
  %19 = phi i32 [ 0, %13 ], [ %146, %145 ]
  %20 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #9
  %21 = ashr i32 %20, 3
  %22 = and i32 %20, 7
  %23 = add nsw i32 %21, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i32], ptr @_ZL8w_passer, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !64
  %27 = add nsw i32 %26, %19
  %28 = add nsw i32 %20, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !64
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %45, label %33, !prof !151

33:                                               ; preds = %18
  %34 = add nsw i32 %20, 9
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !64
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %45, label %39, !prof !152

39:                                               ; preds = %33
  %40 = add nsw i32 %20, 7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !64
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %49, !prof !153

45:                                               ; preds = %39, %33, %18
  %46 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_pawn_supported, i64 0, i64 %24
  %47 = load i32, ptr %46, align 4, !tbaa !64
  %48 = add nsw i32 %47, %27
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i32 [ %48, %45 ], [ %27, %39 ]
  br i1 %14, label %51, label %82, !prof !154

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %53 = icmp eq i32 %2, 0
  %54 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %22, i32 noundef %20) #9
  %55 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %22, i32 noundef %9) #9
  %56 = load i32, ptr %52, align 4, !tbaa !155
  %57 = icmp eq i32 %56, 0
  %58 = sext i1 %57 to i32
  %59 = add nsw i32 %55, %58
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %68, !prof !156

61:                                               ; preds = %51
  %62 = sub nsw i32 1024, %2
  %63 = mul nsw i32 %62, 20
  %64 = sdiv i32 %63, 1024
  %65 = add nsw i32 %50, %64
  br i1 %53, label %66, label %82, !prof !157

66:                                               ; preds = %61
  %67 = add nsw i32 %65, 500
  br label %69

68:                                               ; preds = %51
  br i1 %53, label %69, label %82, !prof !158

69:                                               ; preds = %66, %68
  %70 = phi i32 [ %67, %66 ], [ %50, %68 ]
  %71 = icmp sle i32 %15, %21
  %72 = icmp slt i32 %21, 2
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %80, !prof !159

74:                                               ; preds = %69
  switch i32 %22, label %78 [
    i32 7, label %75
    i32 0, label %75
  ]

75:                                               ; preds = %74, %74
  %76 = and i32 %7, 7
  %77 = icmp eq i32 %76, %22
  br i1 %77, label %82, label %78

78:                                               ; preds = %74, %75
  %79 = add nsw i32 %70, 25
  br label %82

80:                                               ; preds = %69
  %81 = add nsw i32 %70, -25
  br label %82

82:                                               ; preds = %61, %68, %75, %78, %80, %49
  %83 = phi i32 [ %79, %78 ], [ %70, %75 ], [ %81, %80 ], [ %50, %68 ], [ %50, %49 ], [ %65, %61 ]
  %84 = icmp sgt i32 %15, %21
  br i1 %84, label %94, label %85, !prof !160

85:                                               ; preds = %82
  %86 = and i32 %7, 7
  %87 = sub nsw i32 %86, %22
  %88 = call i32 @llvm.abs.i32(i32 %87, i1 true)
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94, !prof !161

90:                                               ; preds = %85
  %91 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_king_supported, i64 0, i64 %24
  %92 = load i32, ptr %91, align 4, !tbaa !64
  %93 = add nsw i32 %92, %83
  br label %94

94:                                               ; preds = %85, %90, %82
  %95 = phi i32 [ %93, %90 ], [ %83, %85 ], [ %83, %82 ]
  %96 = add nsw i32 %20, -8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !75
  %100 = load i64, ptr %16, align 8, !tbaa !80
  %101 = and i64 %100, %99
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %122, !prof !162

103:                                              ; preds = %94
  %104 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %20, i32 noundef %96, i32 noundef 0) #9
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %128, !prof !163

106:                                              ; preds = %103
  %107 = getelementptr inbounds [6 x i32], ptr @_ZL13w_passer_free, i64 0, i64 %24
  %108 = load i32, ptr %107, align 4, !tbaa !64
  %109 = add nsw i32 %108, %95
  %110 = icmp sgt i32 %21, 1
  br i1 %110, label %111, label %128, !prof !164

111:                                              ; preds = %106
  %112 = add nsw i32 %20, -16
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !75
  %116 = load i64, ptr %16, align 8, !tbaa !80
  %117 = and i64 %116, %115
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %128, !prof !165

119:                                              ; preds = %111
  %120 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %20, i32 noundef %112, i32 noundef 0) #9
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %122, label %128, !prof !166

122:                                              ; preds = %94, %119
  %123 = phi ptr [ @_ZL18w_passer_very_free, %119 ], [ @_ZL16w_passer_blocked, %94 ]
  %124 = phi i32 [ %109, %119 ], [ %95, %94 ]
  %125 = getelementptr inbounds [6 x i32], ptr %123, i64 0, i64 %24
  %126 = load i32, ptr %125, align 4, !tbaa !64
  %127 = add nsw i32 %126, %124
  br label %128

128:                                              ; preds = %122, %103, %119, %111, %106
  %129 = phi i32 [ %109, %111 ], [ %109, %119 ], [ %109, %106 ], [ %95, %103 ], [ %127, %122 ]
  %130 = sub nsw i32 7, %21
  %131 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %9, i32 noundef %96) #9
  %132 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %7, i32 noundef %96) #9
  %133 = mul i32 %132, -3
  %134 = add i32 %133, %131
  %135 = mul i32 %134, %130
  %136 = add i32 %135, %129
  %137 = sext i32 %20 to i64
  %138 = getelementptr inbounds [64 x i64], ptr @FileDownMask, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !75
  %140 = load i64, ptr %17, align 8, !tbaa !75
  %141 = and i64 %140, %139
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %145, label %143, !prof !167

143:                                              ; preds = %128
  %144 = add nsw i32 %136, -8
  br label %145

145:                                              ; preds = %143, %128
  %146 = phi i32 [ %144, %143 ], [ %136, %128 ]
  %147 = load i64, ptr %5, align 8, !tbaa !75
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %18, !prof !168, !llvm.loop !169

149:                                              ; preds = %145, %4
  %150 = phi i32 [ 0, %4 ], [ %146, %145 ]
  %151 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 5
  %152 = load i64, ptr %151, align 8, !tbaa !170
  store i64 %152, ptr %5, align 8, !tbaa !75
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %289, label %154, !prof !171

154:                                              ; preds = %149
  %155 = icmp slt i32 %2, 384
  %156 = ashr i32 %9, 3
  %157 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %158 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  br label %159

159:                                              ; preds = %154, %270
  %160 = phi i32 [ 0, %154 ], [ %286, %270 ]
  %161 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %5) #9
  %162 = ashr i32 %161, 3
  %163 = and i32 %161, 7
  %164 = sub nsw i32 6, %162
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [6 x i32], ptr @_ZL8w_passer, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !64
  %168 = sub nsw i32 %160, %167
  %169 = add nsw i32 %161, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !64
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %186, label %174, !prof !172

174:                                              ; preds = %159
  %175 = add nsw i32 %161, -9
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !64
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %186, label %180, !prof !173

180:                                              ; preds = %174
  %181 = add nsw i32 %161, -7
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !64
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %186, label %190, !prof !174

186:                                              ; preds = %180, %174, %159
  %187 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_pawn_supported, i64 0, i64 %165
  %188 = load i32, ptr %187, align 4, !tbaa !64
  %189 = sub nsw i32 %168, %188
  br label %190

190:                                              ; preds = %186, %180
  %191 = phi i32 [ %189, %186 ], [ %168, %180 ]
  br i1 %155, label %192, label %224, !prof !175

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %194 = icmp eq i32 %2, 0
  %195 = or disjoint i32 %163, 56
  %196 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %195, i32 noundef %161) #9
  %197 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %195, i32 noundef %7) #9
  %198 = load i32, ptr %193, align 4, !tbaa !155
  %199 = icmp ne i32 %198, 0
  %200 = sext i1 %199 to i32
  %201 = add nsw i32 %197, %200
  %202 = icmp slt i32 %196, %201
  br i1 %202, label %203, label %210, !prof !176

203:                                              ; preds = %192
  %204 = sub nsw i32 1024, %2
  %205 = mul nsw i32 %204, 20
  %206 = sdiv i32 %205, -1024
  %207 = add i32 %191, %206
  br i1 %194, label %208, label %224, !prof !177

208:                                              ; preds = %203
  %209 = add nsw i32 %207, -500
  br label %211

210:                                              ; preds = %192
  br i1 %194, label %211, label %224, !prof !178

211:                                              ; preds = %208, %210
  %212 = phi i32 [ %209, %208 ], [ %191, %210 ]
  %213 = icmp sge i32 %156, %162
  %214 = icmp sgt i32 %162, 5
  %215 = and i1 %213, %214
  br i1 %215, label %216, label %222, !prof !179

216:                                              ; preds = %211
  switch i32 %163, label %220 [
    i32 7, label %217
    i32 0, label %217
  ]

217:                                              ; preds = %216, %216
  %218 = and i32 %9, 7
  %219 = icmp eq i32 %218, %163
  br i1 %219, label %224, label %220

220:                                              ; preds = %216, %217
  %221 = add nsw i32 %212, -25
  br label %224

222:                                              ; preds = %211
  %223 = add nsw i32 %212, 25
  br label %224

224:                                              ; preds = %203, %210, %217, %220, %222, %190
  %225 = phi i32 [ %221, %220 ], [ %212, %217 ], [ %223, %222 ], [ %191, %210 ], [ %191, %190 ], [ %207, %203 ]
  %226 = icmp slt i32 %156, %162
  br i1 %226, label %236, label %227, !prof !180

227:                                              ; preds = %224
  %228 = and i32 %9, 7
  %229 = sub nsw i32 %228, %163
  %230 = call i32 @llvm.abs.i32(i32 %229, i1 true)
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %236, !prof !181

232:                                              ; preds = %227
  %233 = getelementptr inbounds [6 x i32], ptr @_ZL23w_passer_king_supported, i64 0, i64 %165
  %234 = load i32, ptr %233, align 4, !tbaa !64
  %235 = sub nsw i32 %225, %234
  br label %236

236:                                              ; preds = %227, %232, %224
  %237 = phi i32 [ %235, %232 ], [ %225, %227 ], [ %225, %224 ]
  %238 = add nsw i32 %161, 8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !75
  %242 = load i64, ptr %157, align 8, !tbaa !80
  %243 = and i64 %242, %241
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %264, !prof !182

245:                                              ; preds = %236
  %246 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %161, i32 noundef %238, i32 noundef 0) #9
  %247 = icmp sgt i32 %246, -1
  br i1 %247, label %248, label %270, !prof !183

248:                                              ; preds = %245
  %249 = getelementptr inbounds [6 x i32], ptr @_ZL13w_passer_free, i64 0, i64 %165
  %250 = load i32, ptr %249, align 4, !tbaa !64
  %251 = sub nsw i32 %237, %250
  %252 = icmp slt i32 %162, 6
  br i1 %252, label %253, label %270, !prof !184

253:                                              ; preds = %248
  %254 = add nsw i32 %161, 16
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !75
  %258 = load i64, ptr %157, align 8, !tbaa !80
  %259 = and i64 %258, %257
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %270, !prof !185

261:                                              ; preds = %253
  %262 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %161, i32 noundef %254, i32 noundef 0) #9
  %263 = icmp sgt i32 %262, -1
  br i1 %263, label %264, label %270, !prof !186

264:                                              ; preds = %236, %261
  %265 = phi ptr [ @_ZL18w_passer_very_free, %261 ], [ @_ZL16w_passer_blocked, %236 ]
  %266 = phi i32 [ %251, %261 ], [ %237, %236 ]
  %267 = getelementptr inbounds [6 x i32], ptr %265, i64 0, i64 %165
  %268 = load i32, ptr %267, align 4, !tbaa !64
  %269 = sub nsw i32 %266, %268
  br label %270

270:                                              ; preds = %264, %245, %261, %253, %248
  %271 = phi i32 [ %251, %253 ], [ %251, %261 ], [ %251, %248 ], [ %237, %245 ], [ %269, %264 ]
  %272 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %7, i32 noundef %238) #9
  %273 = mul nsw i32 %272, %162
  %274 = sub nsw i32 %271, %273
  %275 = mul nsw i32 %162, 3
  %276 = call noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %9, i32 noundef %238) #9
  %277 = mul i32 %275, %276
  %278 = add i32 %277, %274
  %279 = sext i32 %161 to i64
  %280 = getelementptr inbounds [64 x i64], ptr @FileUpMask, i64 0, i64 %279
  %281 = load i64, ptr %280, align 8, !tbaa !75
  %282 = load i64, ptr %158, align 8, !tbaa !75
  %283 = and i64 %282, %281
  %284 = icmp eq i64 %283, 0
  %285 = add nsw i32 %278, 8
  %286 = select i1 %284, i32 %278, i32 %285, !prof !187
  %287 = load i64, ptr %5, align 8, !tbaa !75
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %159, !prof !188, !llvm.loop !189

289:                                              ; preds = %270, %149
  %290 = phi i32 [ 0, %149 ], [ %286, %270 ]
  %291 = getelementptr inbounds %struct.t_eval_comps, ptr %3, i64 0, i32 4
  store i32 %150, ptr %291, align 4, !tbaa !190
  %292 = getelementptr inbounds %struct.t_eval_comps, ptr %3, i64 0, i32 5
  store i32 %290, ptr %292, align 4, !tbaa !191
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare void @_Z8psq_evalP7state_tP12t_eval_comps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !63 !PGOFuncName !192 {
  %4 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 6
  %5 = load i64, ptr %4, align 8, !tbaa !193
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %7 = load i64, ptr %6, align 8, !tbaa !75
  %8 = and i64 %7, %5
  %9 = tail call noundef i32 @_Z8PopCounty(i64 noundef %8) #9
  %10 = mul nsw i32 %9, 15
  %11 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !194
  %13 = load i64, ptr %6, align 8, !tbaa !75
  %14 = and i64 %13, %12
  %15 = tail call noundef i32 @_Z8PopCounty(i64 noundef %14) #9
  %16 = mul nsw i32 %15, 25
  %17 = add nsw i32 %16, %10
  %18 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !195
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %21 = load i64, ptr %20, align 8, !tbaa !75
  %22 = and i64 %21, %19
  %23 = tail call noundef i32 @_Z8PopCounty(i64 noundef %22) #9
  %24 = mul nsw i32 %23, -15
  %25 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 9
  %26 = load i64, ptr %25, align 8, !tbaa !196
  %27 = load i64, ptr %20, align 8, !tbaa !75
  %28 = and i64 %27, %26
  %29 = tail call noundef i32 @_Z8PopCounty(i64 noundef %28) #9
  %30 = mul i32 %29, -25
  %31 = add i32 %30, %24
  %32 = load i64, ptr @RankMask, align 16, !tbaa !75
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %34 = load i64, ptr %33, align 8, !tbaa !75
  %35 = and i64 %34, %32
  %36 = icmp eq i64 %35, 0
  %37 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 1), align 8, !tbaa !75
  br i1 %36, label %38, label %43, !prof !197

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %40 = load i64, ptr %39, align 8, !tbaa !75
  %41 = and i64 %40, %37
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %55, label %43, !prof !198

43:                                               ; preds = %38, %3
  %44 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %45 = load i64, ptr %44, align 8, !tbaa !75
  %46 = and i64 %45, %37
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %55, label %48, !prof !199

48:                                               ; preds = %43
  %49 = tail call noundef i32 @_Z8PopCounty(i64 noundef %46) #9
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %53, !prof !200

51:                                               ; preds = %48
  %52 = add nsw i32 %17, 40
  br label %55

53:                                               ; preds = %48
  %54 = add nsw i32 %17, 3
  br label %55

55:                                               ; preds = %43, %53, %51, %38
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ], [ %17, %43 ], [ %17, %38 ]
  %57 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 7), align 8, !tbaa !75
  %58 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %59 = load i64, ptr %58, align 8, !tbaa !75
  %60 = and i64 %59, %57
  %61 = icmp eq i64 %60, 0
  %62 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RankMask, i64 0, i64 6), align 16, !tbaa !75
  br i1 %61, label %63, label %68, !prof !201

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %65 = load i64, ptr %64, align 8, !tbaa !75
  %66 = and i64 %65, %62
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %80, label %68, !prof !202

68:                                               ; preds = %63, %55
  %69 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %70 = load i64, ptr %69, align 8, !tbaa !75
  %71 = and i64 %70, %62
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %80, label %73, !prof !203

73:                                               ; preds = %68
  %74 = tail call noundef i32 @_Z8PopCounty(i64 noundef %71) #9
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %78, !prof !204

76:                                               ; preds = %73
  %77 = add nsw i32 %31, -40
  br label %80

78:                                               ; preds = %73
  %79 = add nsw i32 %31, -3
  br label %80

80:                                               ; preds = %68, %78, %76, %63
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ], [ %31, %68 ], [ %31, %63 ]
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %83 = load i32, ptr %82, align 4, !tbaa !64
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %103, !prof !205

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %87 = load i32, ptr %86, align 4, !tbaa !64
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %103, !prof !206

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %91 = load i64, ptr %90, align 8, !tbaa !75
  %92 = load i64, ptr @WhiteSqMask, align 8, !tbaa !75
  %93 = and i64 %92, %91
  %94 = icmp eq i64 %93, 0
  %95 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %96 = load i64, ptr %95, align 8, !tbaa !75
  %97 = load i64, ptr @BlackSqMask, align 8
  %98 = select i1 %94, i64 %97, i64 %92, !prof !207
  %99 = and i64 %98, %96
  %100 = tail call noundef i32 @_Z8PopCounty(i64 noundef %99) #9
  %101 = mul nsw i32 %100, -3
  %102 = add nsw i32 %101, %56
  br label %103

103:                                              ; preds = %89, %85, %80
  %104 = phi i32 [ %56, %85 ], [ %56, %80 ], [ %102, %89 ]
  %105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %106 = load i32, ptr %105, align 8, !tbaa !64
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %126, !prof !208

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %110 = load i32, ptr %109, align 8, !tbaa !64
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %126, !prof !209

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %114 = load i64, ptr %113, align 8, !tbaa !75
  %115 = load i64, ptr @WhiteSqMask, align 8, !tbaa !75
  %116 = and i64 %115, %114
  %117 = icmp eq i64 %116, 0
  %118 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %119 = load i64, ptr %118, align 8, !tbaa !75
  %120 = load i64, ptr @BlackSqMask, align 8
  %121 = select i1 %117, i64 %120, i64 %115, !prof !210
  %122 = and i64 %121, %119
  %123 = tail call noundef i32 @_Z8PopCounty(i64 noundef %122) #9
  %124 = mul i32 %123, 3
  %125 = add i32 %124, %81
  br label %126

126:                                              ; preds = %112, %108, %103
  %127 = phi i32 [ %81, %108 ], [ %81, %103 ], [ %125, %112 ]
  %128 = insertelement <2 x i32> poison, i32 %104, i64 0
  %129 = insertelement <2 x i32> %128, i32 %127, i64 1
  %130 = add nsw <2 x i32> %129, <i32 30, i32 -30>
  %131 = load <2 x i32>, ptr %82, align 4, !tbaa !64
  %132 = icmp eq <2 x i32> %131, <i32 2, i32 2>
  %133 = select <2 x i1> %132, <2 x i32> %130, <2 x i32> %129
  store <2 x i32> %133, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL12trapped_evalP7state_tP12t_eval_comps(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !63 !PGOFuncName !211 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 48
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = icmp eq i32 %4, 12
  br i1 %5, label %10, label %6, !prof !212

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 57
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %19, !prof !213

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 41
  %12 = load i32, ptr %11, align 4, !tbaa !64
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19, !prof !214

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 50
  %16 = load i32, ptr %15, align 4, !tbaa !64
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %17, i32 90, i32 0, !prof !215
  br label %19

19:                                               ; preds = %14, %10, %6
  %20 = phi i32 [ 0, %10 ], [ 0, %6 ], [ %18, %14 ]
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 55
  %22 = load i32, ptr %21, align 4, !tbaa !64
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %28, label %24, !prof !216

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 62
  %26 = load i32, ptr %25, align 4, !tbaa !64
  %27 = icmp eq i32 %26, 12
  br i1 %27, label %28, label %37, !prof !217

28:                                               ; preds = %24, %19
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 46
  %30 = load i32, ptr %29, align 4, !tbaa !64
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37, !prof !218

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 53
  %34 = load i32, ptr %33, align 4, !tbaa !64
  switch i32 %34, label %37 [
    i32 1, label %35
    i32 5, label %35
  ], !prof !219

35:                                               ; preds = %32, %32
  %36 = add nuw nsw i32 %20, 90
  br label %37

37:                                               ; preds = %32, %35, %28, %24
  %38 = phi i32 [ %36, %35 ], [ %20, %28 ], [ %20, %24 ], [ %20, %32 ]
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa !64
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %46, label %42, !prof !220

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !64
  %45 = icmp eq i32 %44, 11
  br i1 %45, label %46, label %56, !prof !221

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 17
  %48 = load i32, ptr %47, align 4, !tbaa !64
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %56, !prof !222

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 10
  %52 = load i32, ptr %51, align 4, !tbaa !64
  %53 = icmp eq i32 %52, 2
  %54 = add nsw i32 %38, -90
  %55 = select i1 %53, i32 %54, i32 %38, !prof !223
  br label %56

56:                                               ; preds = %50, %46, %42
  %57 = phi i32 [ %38, %46 ], [ %38, %42 ], [ %55, %50 ]
  %58 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 15
  %59 = load i32, ptr %58, align 4, !tbaa !64
  %60 = icmp eq i32 %59, 11
  br i1 %60, label %65, label %61, !prof !224

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 6
  %63 = load i32, ptr %62, align 4, !tbaa !64
  %64 = icmp eq i32 %63, 11
  br i1 %64, label %65, label %74, !prof !225

65:                                               ; preds = %61, %56
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 22
  %67 = load i32, ptr %66, align 4, !tbaa !64
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %74, !prof !226

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 13
  %71 = load i32, ptr %70, align 4, !tbaa !64
  switch i32 %71, label %74 [
    i32 2, label %72
    i32 6, label %72
  ], !prof !227

72:                                               ; preds = %69, %69
  %73 = add nsw i32 %57, -90
  br label %74

74:                                               ; preds = %69, %72, %65, %61
  %75 = phi i32 [ %73, %72 ], [ %57, %65 ], [ %57, %61 ], [ %57, %69 ]
  %76 = icmp eq i32 %59, 3
  br i1 %76, label %77, label %87, !prof !228

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 21
  %79 = load i32, ptr %78, align 4, !tbaa !64
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %87, !prof !229

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 14
  %83 = load i32, ptr %82, align 4, !tbaa !64
  %84 = icmp eq i32 %83, 2
  %85 = add nsw i32 %75, -35
  %86 = select i1 %84, i32 %85, i32 %75, !prof !230
  br label %87

87:                                               ; preds = %81, %77, %74
  %88 = phi i32 [ %75, %77 ], [ %75, %74 ], [ %86, %81 ]
  %89 = icmp eq i32 %22, 4
  br i1 %89, label %90, label %100, !prof !231

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 45
  %92 = load i32, ptr %91, align 4, !tbaa !64
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %100, !prof !232

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 54
  %96 = load i32, ptr %95, align 4, !tbaa !64
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %100, !prof !233

98:                                               ; preds = %94
  %99 = add nsw i32 %88, 35
  br label %100

100:                                              ; preds = %98, %94, %90, %87
  %101 = phi i32 [ %99, %98 ], [ %88, %94 ], [ %88, %90 ], [ %88, %87 ]
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 2
  %103 = load i32, ptr %102, align 4, !tbaa !64
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %109, label %105, !prof !234

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 1
  %107 = load i32, ptr %106, align 4, !tbaa !64
  %108 = icmp eq i32 %107, 6
  br i1 %108, label %109, label %120, !prof !235

109:                                              ; preds = %105, %100
  %110 = load i32, ptr %2, align 4, !tbaa !64
  %111 = icmp eq i32 %110, 8
  %112 = icmp eq i32 %40, 8
  %113 = or i1 %112, %111
  br i1 %113, label %118, label %114, !prof !236

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 1
  %116 = load i32, ptr %115, align 4, !tbaa !64
  %117 = icmp eq i32 %116, 8
  br i1 %117, label %118, label %120, !prof !237

118:                                              ; preds = %114, %109
  %119 = add nsw i32 %101, 25
  br label %120

120:                                              ; preds = %118, %114, %105
  %121 = phi i32 [ %119, %118 ], [ %101, %114 ], [ %101, %105 ]
  %122 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 5
  %123 = load i32, ptr %122, align 4, !tbaa !64
  %124 = icmp eq i32 %123, 6
  br i1 %124, label %129, label %125, !prof !238

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 6
  %127 = load i32, ptr %126, align 4, !tbaa !64
  %128 = icmp eq i32 %127, 6
  br i1 %128, label %129, label %141, !prof !239

129:                                              ; preds = %125, %120
  %130 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 7
  %131 = load i32, ptr %130, align 4, !tbaa !64
  %132 = icmp eq i32 %131, 8
  %133 = icmp eq i32 %59, 8
  %134 = or i1 %133, %132
  br i1 %134, label %139, label %135, !prof !240

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 6
  %137 = load i32, ptr %136, align 4, !tbaa !64
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %139, label %141, !prof !241

139:                                              ; preds = %135, %129
  %140 = add nsw i32 %121, 25
  br label %141

141:                                              ; preds = %139, %135, %125
  %142 = phi i32 [ %140, %139 ], [ %121, %135 ], [ %121, %125 ]
  %143 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 58
  %144 = load i32, ptr %143, align 4, !tbaa !64
  %145 = icmp eq i32 %144, 5
  br i1 %145, label %150, label %146, !prof !242

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 57
  %148 = load i32, ptr %147, align 4, !tbaa !64
  %149 = icmp eq i32 %148, 5
  br i1 %149, label %150, label %162, !prof !243

150:                                              ; preds = %146, %141
  %151 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 56
  %152 = load i32, ptr %151, align 4, !tbaa !64
  %153 = icmp eq i32 %152, 7
  %154 = icmp eq i32 %4, 7
  %155 = or i1 %154, %153
  br i1 %155, label %160, label %156, !prof !244

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 57
  %158 = load i32, ptr %157, align 4, !tbaa !64
  %159 = icmp eq i32 %158, 7
  br i1 %159, label %160, label %162, !prof !245

160:                                              ; preds = %156, %150
  %161 = add nsw i32 %142, -25
  br label %162

162:                                              ; preds = %160, %156, %146
  %163 = phi i32 [ %161, %160 ], [ %142, %156 ], [ %142, %146 ]
  %164 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 61
  %165 = load i32, ptr %164, align 4, !tbaa !64
  %166 = icmp eq i32 %165, 5
  br i1 %166, label %171, label %167, !prof !246

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 62
  %169 = load i32, ptr %168, align 4, !tbaa !64
  %170 = icmp eq i32 %169, 5
  br i1 %170, label %171, label %183, !prof !247

171:                                              ; preds = %167, %162
  %172 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 63
  %173 = load i32, ptr %172, align 4, !tbaa !64
  %174 = icmp eq i32 %173, 7
  %175 = icmp eq i32 %22, 7
  %176 = or i1 %175, %174
  br i1 %176, label %181, label %177, !prof !248

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 62
  %179 = load i32, ptr %178, align 4, !tbaa !64
  %180 = icmp eq i32 %179, 7
  br i1 %180, label %181, label %183, !prof !249

181:                                              ; preds = %177, %171
  %182 = add nsw i32 %163, -25
  br label %183

183:                                              ; preds = %181, %177, %167
  %184 = phi i32 [ %182, %181 ], [ %163, %177 ], [ %163, %167 ]
  ret i32 %184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !250 {
  %5 = alloca %struct.t_eval_comps, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !251
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !252
  %14 = add nsw i32 %13, %11
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %16, label %45, !prof !253

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20, !prof !254

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %22 = load i32, ptr %21, align 8, !tbaa !64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24, !prof !255

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %26 = load i32, ptr %25, align 4, !tbaa !155
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %29 = load i32, ptr %28, align 8, !tbaa !256
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !64
  %34 = add i32 %14, %33
  %35 = sub i32 0, %34
  %36 = add nsw i32 %33, %14
  %37 = select i1 %27, i32 %35, i32 %36, !prof !257
  %38 = sext i32 %29 to i64
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %38
  store i32 %33, ptr %39, align 4, !tbaa !64
  %40 = add nsw i32 %37, 50
  %41 = icmp sgt i32 %40, %1
  br i1 %41, label %42, label %149, !prof !258

42:                                               ; preds = %24
  %43 = add nsw i32 %37, -50
  %44 = icmp slt i32 %43, %2
  br i1 %44, label %45, label %149, !prof !259

45:                                               ; preds = %42, %20, %16, %4
  %46 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %47 = load i32, ptr %46, align 4, !tbaa !64
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %49 = load i32, ptr %48, align 4, !tbaa !64
  %50 = add i32 %49, %47
  %51 = shl i32 %50, 2
  %52 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %53 = load i32, ptr %52, align 4, !tbaa !64
  %54 = mul nsw i32 %53, 6
  %55 = add nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %57 = load i32, ptr %56, align 4, !tbaa !64
  %58 = mul nsw i32 %57, 12
  %59 = add nsw i32 %55, %58
  store i32 %59, ptr %6, align 4, !tbaa !64
  %60 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %61 = load i32, ptr %60, align 8, !tbaa !64
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %63 = load i32, ptr %62, align 8, !tbaa !64
  %64 = add i32 %63, %61
  %65 = shl i32 %64, 2
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %67 = load i32, ptr %66, align 8, !tbaa !64
  %68 = mul nsw i32 %67, 6
  %69 = add nsw i32 %65, %68
  %70 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %71 = load i32, ptr %70, align 8, !tbaa !64
  %72 = mul nsw i32 %71, 12
  %73 = add nsw i32 %69, %72
  store i32 %73, ptr %7, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 40, ptr %8, align 4, !tbaa !64
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %6) #9
  %75 = load i32, ptr %74, align 4, !tbaa !64
  store i32 %75, ptr %6, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 40, ptr %9, align 4, !tbaa !64
  %76 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %7) #9
  %77 = load i32, ptr %76, align 4, !tbaa !64
  store i32 %77, ptr %7, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %78 = load i32, ptr %6, align 4, !tbaa !64
  %79 = add nsw i32 %78, %77
  %80 = shl nsw i32 %79, 10
  %81 = sdiv i32 %80, 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i64 44, i1 false)
  call void @_Z5fevalP7state_tiP12t_eval_comps(ptr noundef nonnull %0, i32 noundef %81, ptr noundef nonnull %5) #9
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %83 = load i32, ptr %82, align 4, !tbaa !155
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 -10, i32 10
  %86 = load i32, ptr %5, align 4, !tbaa !260
  %87 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !261
  %89 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 10
  %90 = load i32, ptr %89, align 4, !tbaa !68
  %91 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !262
  %93 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !263
  %95 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 6
  %96 = load i32, ptr %95, align 4, !tbaa !264
  %97 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 7
  %98 = load i32, ptr %97, align 4, !tbaa !265
  %99 = add nsw i32 %98, %96
  %100 = sub nsw i32 1024, %81
  %101 = mul nsw i32 %99, %100
  %102 = sdiv i32 %101, 1280
  %103 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 4
  %104 = load i32, ptr %103, align 4, !tbaa !190
  %105 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !191
  %107 = add nsw i32 %106, %104
  %108 = sub nsw i32 2048, %81
  %109 = mul nsw i32 %107, %108
  %110 = sdiv i32 %109, 1536
  %111 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 8
  %112 = load i32, ptr %111, align 4, !tbaa !139
  %113 = mul nsw i32 %112, %112
  %114 = lshr i32 %113, 8
  %115 = getelementptr inbounds %struct.t_eval_comps, ptr %5, i64 0, i32 9
  %116 = load i32, ptr %115, align 4, !tbaa !140
  %117 = mul nsw i32 %116, %116
  %118 = lshr i32 %117, 8
  %119 = add i32 %116, %112
  %120 = sub i32 %119, %114
  %121 = add i32 %120, %118
  %122 = add nsw i32 %81, 1024
  %123 = mul nsw i32 %121, %122
  %124 = sdiv i32 %123, 2048
  %125 = add i32 %86, %14
  %126 = add i32 %125, %85
  %127 = add i32 %126, %88
  %128 = add i32 %127, %90
  %129 = add i32 %128, %92
  %130 = add i32 %129, %94
  %131 = add nsw i32 %130, %102
  %132 = add nsw i32 %131, %110
  %133 = add nsw i32 %132, %124
  %134 = load i32, ptr %6, align 4, !tbaa !64
  %135 = load i32, ptr %7, align 4, !tbaa !64
  %136 = call fastcc noundef i32 @_ZL16opposite_bishopsP7state_tiii(ptr noundef nonnull %0, i32 noundef %133, i32 noundef %134, i32 noundef %135) #9
  %137 = load i32, ptr %6, align 4, !tbaa !64
  %138 = load i32, ptr %7, align 4, !tbaa !64
  %139 = call noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef nonnull %0, i32 noundef %136, i32 noundef %137, i32 noundef %138) #9
  %140 = sub nsw i32 %139, %14
  %141 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %142 = load i32, ptr %141, align 8, !tbaa !256
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %143
  store i32 %140, ptr %144, align 4, !tbaa !64
  %145 = load i32, ptr %82, align 4, !tbaa !155
  %146 = icmp eq i32 %145, 0
  %147 = sub nsw i32 0, %139
  %148 = select i1 %146, i32 %147, i32 %139, !prof !266
  br label %149

149:                                              ; preds = %42, %24, %45
  %150 = phi i32 [ %148, %45 ], [ %40, %24 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #8
  ret i32 %150
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat !prof !267 {
  %3 = load i32, ptr %1, align 4, !tbaa !64
  %4 = load i32, ptr %0, align 4, !tbaa !64
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !268
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZL16opposite_bishopsP7state_tiii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !63 !PGOFuncName !269 {
  %5 = icmp slt i32 %2, 11
  %6 = icmp slt i32 %3, 11
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %40, !prof !270

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %12 = load i32, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i32 %10, 1
  %14 = icmp eq i32 %12, 1
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %40, !prof !271

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %18 = load i64, ptr %17, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %20 = load i64, ptr %19, align 8, !tbaa !75
  %21 = or i64 %20, %18
  %22 = load i64, ptr @WhiteSqMask, align 8, !tbaa !75
  %23 = and i64 %21, %22
  %24 = tail call noundef i32 @_Z8PopCounty(i64 noundef %23) #9
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %40, !prof !272

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !251
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = icmp ult i32 %29, 171
  br i1 %30, label %31, label %40, !prof !273

31:                                               ; preds = %26
  %32 = icmp sgt i32 %2, 4
  %33 = icmp sgt i32 %3, 4
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %38, !prof !274

35:                                               ; preds = %31
  %36 = mul nsw i32 %1, 3
  %37 = ashr i32 %36, 2
  br label %40

38:                                               ; preds = %31
  %39 = ashr i32 %1, 1
  br label %40

40:                                               ; preds = %8, %16, %35, %38, %26, %4
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ], [ %1, %26 ], [ %1, %16 ], [ %1, %8 ], [ %1, %4 ]
  ret i32 %41
}

; Function Attrs: optsize
declare noundef i32 @_Z14drawn_endgamesP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z13retrieve_evalP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !275 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !256
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !251
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !252
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !155
  %15 = icmp eq i32 %14, 0
  %16 = sub nsw i32 0, %12
  %17 = select i1 %15, i32 %16, i32 %12, !prof !276
  ret i32 %17
}

; Function Attrs: optsize
declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_Z13ThickPopCounty(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_Z8PopCounty(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_Z8sum_distii(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_Z16taxicab_dist_bitii(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: optsize
declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!62}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!35 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t, i64 288009370}
!36 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z16static_pawn_evalP7state_t, i64 288009370}
!37 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps, i64 288009370}
!38 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps, i64 288009370}
!39 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps, i64 288009370}
!40 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_Z8psq_evalP7state_tP12t_eval_comps, i64 288009370}
!41 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps, i64 288009370}
!42 = !{ptr @_Z5fevalP7state_tiP12t_eval_comps, ptr @_ZL12trapped_evalP7state_tP12t_eval_comps, i64 288009370}
!43 = !{ptr @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t, ptr @_Z15FindFirstRemovePy, i64 2327920855}
!44 = !{ptr @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t, ptr @_Z13BishopAttacksP7state_ti, i64 1022901546}
!45 = !{ptr @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t, ptr @_Z13ThickPopCounty, i64 1499130648}
!46 = !{ptr @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t, ptr @_Z8PopCounty, i64 2287031804}
!47 = !{ptr @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t, ptr @_Z11RookAttacksP7state_ti, i64 1330074714}
!48 = !{ptr @_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t, ptr @_Z8sum_distii, i64 426922806}
!49 = !{ptr @_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps, ptr @_Z8PopCounty, i64 1278317634}
!50 = !{ptr @_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps, ptr @_Z13ThickPopCounty, i64 426005678}
!51 = !{ptr @_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps, ptr @_Z8PopCounty, i64 426306277}
!52 = !{ptr @_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps, ptr @_Z13ThickPopCounty, i64 426306277}
!53 = !{ptr @_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps, ptr @_Z15FindFirstRemovePy, i64 270818986}
!54 = !{ptr @_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps, ptr @_Z16taxicab_dist_bitii, i64 597932242}
!55 = !{ptr @_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps, ptr @_Z3seeP7state_tiiii, i64 359871218}
!56 = !{ptr @_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps, ptr @_Z8PopCounty, i64 1319281377}
!57 = !{ptr @_Z4evalP7state_tiii, ptr @_ZSt3minIiERKT_S2_S2_, i64 576018742}
!58 = !{ptr @_Z4evalP7state_tiii, ptr @_Z5fevalP7state_tiP12t_eval_comps, i64 288009371}
!59 = !{ptr @_Z4evalP7state_tiii, ptr @_ZL16opposite_bishopsP7state_tiii, i64 288009371}
!60 = !{ptr @_Z4evalP7state_tiii, ptr @_Z14drawn_endgamesP7state_tiii, i64 288009371}
!61 = !{ptr @_ZL16opposite_bishopsP7state_tiii, ptr @_Z8PopCounty, i64 1838047}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = !{!"function_entry_count", i64 288009370}
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!69, !65, i64 40}
!69 = !{!"_ZTS12t_eval_comps", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !65, i64 36, !65, i64 40}
!70 = !{!"neval.cpp:_ZL13mobility_evalP7state_tP12t_eval_compsP12attackinfo_t"}
!71 = !{!72, !73, i64 280}
!72 = !{!"_ZTS7state_t", !65, i64 0, !66, i64 4, !73, i64 264, !73, i64 272, !73, i64 280, !66, i64 288, !65, i64 392, !65, i64 396, !66, i64 400, !65, i64 452, !65, i64 456, !65, i64 460, !65, i64 464, !65, i64 468, !65, i64 472, !65, i64 476, !73, i64 480, !73, i64 488, !66, i64 496, !66, i64 2544, !66, i64 2800, !66, i64 3056, !73, i64 4080, !73, i64 4088, !65, i64 4096, !66, i64 4100, !65, i64 4356, !65, i64 4360, !65, i64 4364, !65, i64 4368, !65, i64 4372, !65, i64 4376, !65, i64 4380, !65, i64 4384, !65, i64 4388, !65, i64 4392, !66, i64 4400}
!73 = !{!"long long", !66, i64 0}
!74 = !{!72, !73, i64 272}
!75 = !{!73, !73, i64 0}
!76 = !{!77, !73, i64 0}
!77 = !{!"_ZTS12attackinfo_t", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64, !73, i64 72}
!78 = !{!77, !73, i64 8}
!79 = !{!"branch_weights", i32 1, i32 288009370}
!80 = !{!72, !73, i64 264}
!81 = !{!77, !73, i64 16}
!82 = !{!"branch_weights", i32 288009370, i32 22146750}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"branch_weights", i32 2186749, i32 285822622}
!86 = !{!77, !73, i64 24}
!87 = !{!"branch_weights", i32 285822622, i32 0}
!88 = distinct !{!88, !84}
!89 = !{!77, !73, i64 48}
!90 = !{!"branch_weights", i32 223789728, i32 199987069}
!91 = !{!"branch_weights", i32 162017805, i32 61771924}
!92 = !{!"branch_weights", i32 12893339, i32 149124467}
!93 = !{!"branch_weights", i32 1819207, i32 59952718}
!94 = !{!"branch_weights", i32 288009370, i32 135767426}
!95 = distinct !{!95, !84}
!96 = !{!77, !73, i64 56}
!97 = !{!"branch_weights", i32 162244029, i32 317131087}
!98 = !{!"branch_weights", i32 94652001, i32 67592029}
!99 = !{!"branch_weights", i32 5511747, i32 89140255}
!100 = !{!"branch_weights", i32 3361099, i32 64230931}
!101 = !{!"branch_weights", i32 288009370, i32 191365745}
!102 = distinct !{!102, !84}
!103 = !{!"branch_weights", i32 73547946, i32 214461425}
!104 = !{!77, !73, i64 64}
!105 = !{!72, !65, i64 468}
!106 = !{!"branch_weights", i32 214461425, i32 0}
!107 = distinct !{!107, !84}
!108 = !{!"branch_weights", i32 75547988, i32 212461383}
!109 = !{!77, !73, i64 72}
!110 = !{!72, !65, i64 464}
!111 = !{!"branch_weights", i32 212461383, i32 0}
!112 = distinct !{!112, !84}
!113 = !{!"branch_weights", i32 116155978, i32 171853393}
!114 = !{!77, !73, i64 32}
!115 = !{!"branch_weights", i32 171853393, i32 0}
!116 = distinct !{!116, !84}
!117 = !{!"branch_weights", i32 57995361, i32 230014010}
!118 = !{!77, !73, i64 40}
!119 = !{!"branch_weights", i32 230014010, i32 0}
!120 = distinct !{!120, !84}
!121 = !{!"neval.cpp:_ZL15kingsafety_evalP7state_tP8pawntt_tP12t_eval_comps"}
!122 = !{!"branch_weights", i32 75776346, i32 212233026}
!123 = !{!"branch_weights", i32 1046073379, i32 -524480832}
!124 = !{!72, !65, i64 452}
!125 = !{!"branch_weights", i32 39266668, i32 6826671}
!126 = !{!"branch_weights", i32 42196428, i32 3896911}
!127 = !{!"branch_weights", i32 212214986, i32 18041}
!128 = !{!"branch_weights", i32 20487312, i32 191727675}
!129 = !{!130, !73, i64 16}
!130 = !{!"_ZTS8pawntt_t", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64, !73, i64 72, !65, i64 80, !65, i64 84}
!131 = !{!"branch_weights", i32 -2033115250, i32 19000605, i32 384317464}
!132 = !{!130, !73, i64 24}
!133 = !{!"branch_weights", i32 73936117, i32 214073255}
!134 = !{!"branch_weights", i32 1509485286, i32 -547663023}
!135 = !{!"branch_weights", i32 45827972, i32 15643090}
!136 = !{!"branch_weights", i32 213790697, i32 282559}
!137 = !{!"branch_weights", i32 15736933, i32 198053765}
!138 = !{!"branch_weights", i32 -321698065, i32 10522047, i32 1454301228}
!139 = !{!69, !65, i64 32}
!140 = !{!69, !65, i64 36}
!141 = !{!"neval.cpp:_ZL17kingpressure_evalP7state_tP12attackinfo_tP12t_eval_comps"}
!142 = !{!"branch_weights", i32 -2116416515, i32 359926986}
!143 = !{!"branch_weights", i32 -521338718, i32 583472983}
!144 = !{!"branch_weights", i32 34939926, i32 212233026}
!145 = !{!"branch_weights", i32 137590497, i32 74642530}
!146 = !{!"branch_weights", i32 33099697, i32 214073255}
!147 = !{!"branch_weights", i32 120362171, i32 93711085}
!148 = !{!"neval.cpp:_ZL11passer_evalP7state_tP8pawntt_tiP12t_eval_comps"}
!149 = !{!130, !73, i64 32}
!150 = !{!"branch_weights", i32 153907919, i32 134101452}
!151 = !{!"branch_weights", i32 13031037, i32 121070416}
!152 = !{!"branch_weights", i32 29583451, i32 91486966}
!153 = !{!"branch_weights", i32 28707098, i32 62779869}
!154 = !{!"branch_weights", i32 18632771, i32 115468682}
!155 = !{!72, !65, i64 460}
!156 = !{!"branch_weights", i32 2826158, i32 15806614}
!157 = !{!"branch_weights", i32 1946, i32 2824213}
!158 = !{!"branch_weights", i32 13212772, i32 2134270876}
!159 = !{!"branch_weights", i32 25277, i32 -1787414973}
!160 = !{!"branch_weights", i32 125147788, i32 8953665}
!161 = !{!"branch_weights", i32 4826085, i32 4127581}
!162 = !{!"branch_weights", i32 107514758, i32 26586695}
!163 = !{!"branch_weights", i32 82380837, i32 25133922}
!164 = !{!"branch_weights", i32 80796892, i32 1583946}
!165 = !{!"branch_weights", i32 71812451, i32 8984442}
!166 = !{!"branch_weights", i32 53130193, i32 18682259}
!167 = !{!"branch_weights", i32 133786785, i32 314668}
!168 = !{!"branch_weights", i32 134101452, i32 0}
!169 = distinct !{!169, !84}
!170 = !{!130, !73, i64 40}
!171 = !{!"branch_weights", i32 151291837, i32 136717534}
!172 = !{!"branch_weights", i32 6642308, i32 130075227}
!173 = !{!"branch_weights", i32 7941178, i32 122134050}
!174 = !{!"branch_weights", i32 8219063, i32 113914988}
!175 = !{!"branch_weights", i32 9514364, i32 127203171}
!176 = !{!"branch_weights", i32 3025949, i32 6488416}
!177 = !{!"branch_weights", i32 852, i32 3025098}
!178 = !{!"branch_weights", i32 1707483, i32 2145776165}
!179 = !{!"branch_weights", i32 712, i32 4285844}
!180 = !{!"branch_weights", i32 131663355, i32 5054180}
!181 = !{!"branch_weights", i32 663564, i32 4390617}
!182 = !{!"branch_weights", i32 115673166, i32 21044369}
!183 = !{!"branch_weights", i32 76213602, i32 39459565}
!184 = !{!"branch_weights", i32 75407611, i32 805992}
!185 = !{!"branch_weights", i32 64870851, i32 10536761}
!186 = !{!"branch_weights", i32 46428445, i32 18442407}
!187 = !{!"branch_weights", i32 134547188, i32 2170347}
!188 = !{!"branch_weights", i32 136717534, i32 0}
!189 = distinct !{!189, !84}
!190 = !{!69, !65, i64 16}
!191 = !{!69, !65, i64 20}
!192 = !{!"neval.cpp:_ZL15positional_evalP7state_tP8pawntt_tP12t_eval_comps"}
!193 = !{!130, !73, i64 48}
!194 = !{!130, !73, i64 64}
!195 = !{!130, !73, i64 56}
!196 = !{!130, !73, i64 72}
!197 = !{!"branch_weights", i32 66145678, i32 221863694}
!198 = !{!"branch_weights", i32 5956626, i32 60189053}
!199 = !{!"branch_weights", i32 257595655, i32 24457092}
!200 = !{!"branch_weights", i32 388948, i32 24068145}
!201 = !{!"branch_weights", i32 80877529, i32 207131843}
!202 = !{!"branch_weights", i32 1929749, i32 78947781}
!203 = !{!"branch_weights", i32 279345633, i32 6733991}
!204 = !{!"branch_weights", i32 51779, i32 6682213}
!205 = !{!"branch_weights", i32 131247809, i32 156761563}
!206 = !{!"branch_weights", i32 76595655, i32 54652155}
!207 = !{!"branch_weights", i32 32923181, i32 43672475}
!208 = !{!"branch_weights", i32 129565558, i32 158443814}
!209 = !{!"branch_weights", i32 59457161, i32 70108398}
!210 = !{!"branch_weights", i32 27970034, i32 31487128}
!211 = !{!"neval.cpp:_ZL12trapped_evalP7state_tP12t_eval_comps"}
!212 = !{!"branch_weights", i32 86179, i32 287923193}
!213 = !{!"branch_weights", i32 1569462, i32 286353732}
!214 = !{!"branch_weights", i32 34579, i32 1621062}
!215 = !{!"branch_weights", i32 982, i32 33598}
!216 = !{!"branch_weights", i32 517981, i32 287491391}
!217 = !{!"branch_weights", i32 558933, i32 286932459}
!218 = !{!"branch_weights", i32 6760, i32 1070154}
!219 = !{!"branch_weights", i32 40793744, i32 2359017, i32 70312}
!220 = !{!"branch_weights", i32 196272, i32 287813100}
!221 = !{!"branch_weights", i32 102267, i32 287710834}
!222 = !{!"branch_weights", i32 5288, i32 293251}
!223 = !{!"branch_weights", i32 529, i32 4760}
!224 = !{!"branch_weights", i32 1409120, i32 286600252}
!225 = !{!"branch_weights", i32 264308, i32 286335945}
!226 = !{!"branch_weights", i32 51107, i32 1622321}
!227 = !{!"branch_weights", i32 -2035787828, i32 155184814, i32 32022354}
!228 = !{!"branch_weights", i32 1088146, i32 286921226}
!229 = !{!"branch_weights", i32 33349, i32 1054798}
!230 = !{!"branch_weights", i32 24967, i32 8383}
!231 = !{!"branch_weights", i32 169018, i32 287840354}
!232 = !{!"branch_weights", i32 9918, i32 159101}
!233 = !{!"branch_weights", i32 35, i32 9884}
!234 = !{!"branch_weights", i32 3851638, i32 284157734}
!235 = !{!"branch_weights", i32 613194, i32 283544541}
!236 = !{!"branch_weights", i32 582337142, i32 -680507335}
!237 = !{!"branch_weights", i32 361652, i32 3483653}
!238 = !{!"branch_weights", i32 19413429, i32 268595943}
!239 = !{!"branch_weights", i32 108106446, i32 160489498}
!240 = !{!"branch_weights", i32 306439267, i32 -1056036515}
!241 = !{!"branch_weights", i32 250076, i32 116247793}
!242 = !{!"branch_weights", i32 2129859, i32 285879513}
!243 = !{!"branch_weights", i32 18162865, i32 267716649}
!244 = !{!"branch_weights", i32 31867025, i32 -1215621232}
!245 = !{!"branch_weights", i32 13435, i32 20071440}
!246 = !{!"branch_weights", i32 7539068, i32 280470304}
!247 = !{!"branch_weights", i32 132090999, i32 148379306}
!248 = !{!"branch_weights", i32 9473697, i32 -1989524018}
!249 = !{!"branch_weights", i32 109158, i32 138949481}
!250 = !{!"function_entry_count", i64 411793847}
!251 = !{!72, !65, i64 392}
!252 = !{!72, !65, i64 396}
!253 = !{!"branch_weights", i32 188411069, i32 223382780}
!254 = !{!"branch_weights", i32 10997, i32 188400073}
!255 = !{!"branch_weights", i32 31604, i32 188368470}
!256 = !{!72, !65, i64 472}
!257 = !{!"branch_weights", i32 88921494, i32 99446977}
!258 = !{!"branch_weights", i32 84403293, i32 103965178}
!259 = !{!"branch_weights", i32 64583993, i32 19819301}
!260 = !{!69, !65, i64 0}
!261 = !{!69, !65, i64 4}
!262 = !{!69, !65, i64 8}
!263 = !{!69, !65, i64 12}
!264 = !{!69, !65, i64 24}
!265 = !{!69, !65, i64 28}
!266 = !{!"branch_weights", i32 161233669, i32 126775703}
!267 = !{!"function_entry_count", i64 576019074}
!268 = !{!"branch_weights", i32 547056019, i32 28963057}
!269 = !{!"neval.cpp:_ZL16opposite_bishopsP7state_tiii"}
!270 = !{!"branch_weights", i32 70551351, i32 -1303803616}
!271 = !{!"branch_weights", i32 1448003534, i32 -514674598}
!272 = !{!"branch_weights", i32 668451, i32 1169598}
!273 = !{!"branch_weights", i32 533530, i32 134922}
!274 = !{!"branch_weights", i32 -308470202, i32 585596810}
!275 = !{!"function_entry_count", i64 436909794}
!276 = !{!"branch_weights", i32 222458729, i32 214451067}
