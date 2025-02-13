; ModuleID = 'pawn.cpp'
source_filename = "pawn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pawntt_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@_ZL6PawnTT = internal global [8 x [16384 x %struct.pawntt_t]] zeroinitializer, align 16
@__const._Z5scaleiii.scf = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 5, i32 10, i32 20, i32 32, i32 0], align 16
@FileMask = external local_unnamed_addr global [8 x i64], align 16
@FileUpMask = external local_unnamed_addr global [64 x i64], align 16
@AboveMask = external local_unnamed_addr global [8 x i64], align 16
@BelowMask = external local_unnamed_addr global [8 x i64], align 16
@RankMask = external local_unnamed_addr global [8 x i64], align 16
@Mask = external local_unnamed_addr global [64 x i64], align 16
@_ZL11w_candidate = internal unnamed_addr constant [6 x i32] [i32 0, i32 44, i32 12, i32 10, i32 3, i32 3], align 16
@FileDownMask = external local_unnamed_addr global [64 x i64], align 16
@WhiteStrongSquareMask = external local_unnamed_addr global i64, align 8
@BlackStrongSquareMask = external local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z13clear_pawn_ttv() local_unnamed_addr #0 !prof !39 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11534336) @_ZL6PawnTT, i8 0, i64 11534336, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5scaleiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = sub nsw i32 %2, %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [8 x i32], ptr @__const._Z5scaleiii.scf, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = mul nsw i32 %7, %4
  %9 = add nsw i32 %8, 16
  %10 = sdiv i32 %9, 32
  %11 = add nsw i32 %10, %1
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_Z16static_pawn_evalP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  %3 = load i64, ptr %2, align 8, !tbaa !46
  %4 = and i64 %3, 16383
  %5 = load i32, ptr %0, align 8, !tbaa !49
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %6, i64 %4
  %8 = load i64, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %12, label %10, !prof !52

10:                                               ; preds = %1
  tail call fastcc void @_ZL14full_pawn_evalP7state_tP8pawntt_t(ptr noundef nonnull %0, ptr noundef nonnull %7) #6
  %11 = load i64, ptr %2, align 8, !tbaa !46
  store i64 %11, ptr %7, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %10, %1
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL14full_pawn_evalP7state_tP8pawntt_t(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !53 !PGOFuncName !54 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false)
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %6 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %2, %38
  %10 = phi i64 [ 0, %2 ], [ %39, %38 ]
  %11 = phi i64 [ 0, %2 ], [ %31, %38 ]
  %12 = phi i64 [ 0, %2 ], [ %22, %38 ]
  %13 = phi i64 [ 0, %2 ], [ %40, %38 ]
  %14 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !55
  %16 = load i64, ptr %4, align 8, !tbaa !55
  %17 = and i64 %16, %15
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21, !prof !56

19:                                               ; preds = %9
  %20 = or i64 %12, %15
  store i64 %20, ptr %6, align 8, !tbaa !57
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i64 [ %20, %19 ], [ %12, %9 ]
  %23 = load i64, ptr %5, align 8, !tbaa !55
  %24 = and i64 %23, %15
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29, !prof !58

26:                                               ; preds = %21
  %27 = or i64 %11, %15
  store i64 %27, ptr %7, align 8, !tbaa !59
  %28 = load i64, ptr %5, align 8, !tbaa !55
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i64 [ %28, %26 ], [ %23, %21 ]
  %31 = phi i64 [ %27, %26 ], [ %11, %21 ]
  %32 = load i64, ptr %4, align 8, !tbaa !55
  %33 = or i64 %30, %32
  %34 = and i64 %33, %15
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38, !prof !60

36:                                               ; preds = %29
  %37 = or i64 %10, %15
  store i64 %37, ptr %8, align 8, !tbaa !61
  br label %38

38:                                               ; preds = %29, %36
  %39 = phi i64 [ %10, %29 ], [ %37, %36 ]
  %40 = add nuw nsw i64 %13, 1
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %9, !prof !62, !llvm.loop !63

42:                                               ; preds = %38
  %43 = load i64, ptr %4, align 8, !tbaa !55
  store i64 %43, ptr %3, align 8, !tbaa !55
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %364, label %45, !prof !65

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 10
  %47 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 6
  br label %48

48:                                               ; preds = %45, %361
  %49 = phi i64 [ undef, %45 ], [ %154, %361 ]
  %50 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #6
  %51 = and i32 %50, 7
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !55
  %55 = load i64, ptr %4, align 8, !tbaa !55
  %56 = and i64 %55, %54
  switch i32 %51, label %61 [
    i32 0, label %57
    i32 7, label %59
  ], !prof !66

57:                                               ; preds = %48
  %58 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !55
  br label %71

59:                                               ; preds = %48
  %60 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !55
  br label %71

61:                                               ; preds = %48
  %62 = add nsw i32 %51, -1
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !55
  %66 = add nuw nsw i32 %51, 1
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !55
  %70 = or i64 %69, %65
  br label %71

71:                                               ; preds = %59, %61, %57
  %72 = phi i64 [ %58, %57 ], [ %60, %59 ], [ %70, %61 ]
  %73 = sext i32 %50 to i64
  %74 = getelementptr inbounds [64 x i64], ptr @FileUpMask, i64 0, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = load i64, ptr %5, align 8, !tbaa !55
  %77 = and i64 %76, %75
  %78 = icmp eq i64 %77, 0
  %79 = call noundef i32 @_Z8PopCounty(i64 noundef %56) #6
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %88, label %81, !prof !67

81:                                               ; preds = %71
  %82 = ashr i32 %50, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !55
  %86 = and i64 %85, %56
  %87 = icmp eq i64 %86, 0
  br label %88

88:                                               ; preds = %81, %71
  %89 = phi i1 [ true, %71 ], [ %87, %81 ]
  %90 = load i64, ptr %4, align 8, !tbaa !55
  %91 = and i64 %90, %72
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %153, label %93, !prof !68

93:                                               ; preds = %88
  %94 = ashr i32 %50, 3
  %95 = add nsw i32 %94, -1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !55
  %99 = and i64 %98, %91
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %153, !prof !69

101:                                              ; preds = %93
  %102 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %96
  %103 = load i64, ptr %102, align 8, !tbaa !55
  %104 = icmp sgt i32 %94, 1
  br i1 %104, label %105, label %122, !prof !70

105:                                              ; preds = %101
  %106 = add nsw i32 %94, -2
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !55
  %110 = or i64 %109, %103
  %111 = icmp eq i32 %94, 2
  br i1 %111, label %118, label %112, !prof !71

112:                                              ; preds = %105
  %113 = add nsw i32 %94, -3
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !55
  %117 = or i64 %116, %110
  br label %118

118:                                              ; preds = %112, %105
  %119 = phi i64 [ %117, %112 ], [ %49, %105 ]
  %120 = and i64 %103, %91
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %137, label %125, !prof !72

122:                                              ; preds = %101
  %123 = and i64 %103, %91
  %124 = icmp eq i64 %123, 0
  br label %153

125:                                              ; preds = %118
  br i1 %104, label %126, label %153, !prof !73

126:                                              ; preds = %125
  %127 = load i64, ptr %53, align 8, !tbaa !55
  %128 = load i64, ptr %5, align 8, !tbaa !55
  %129 = or i64 %128, %90
  %130 = and i64 %127, %129
  %131 = and i64 %130, %103
  %132 = icmp eq i64 %131, 0
  %133 = and i64 %110, %72
  %134 = and i64 %133, %128
  %135 = icmp ne i64 %134, 0
  %136 = select i1 %135, i1 %132, i1 false
  br label %153

137:                                              ; preds = %118
  %138 = icmp ne i32 %94, 6
  %139 = and i64 %110, %91
  %140 = icmp eq i64 %139, 0
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %153, label %142, !prof !74

142:                                              ; preds = %137
  %143 = load i64, ptr %53, align 8, !tbaa !55
  %144 = load i64, ptr %5, align 8, !tbaa !55
  %145 = or i64 %144, %90
  %146 = and i64 %143, %145
  %147 = and i64 %146, %110
  %148 = icmp eq i64 %147, 0
  %149 = and i64 %119, %72
  %150 = and i64 %149, %144
  %151 = icmp ne i64 %150, 0
  %152 = select i1 %151, i1 %148, i1 false
  br label %153

153:                                              ; preds = %122, %142, %126, %125, %88, %93, %137
  %154 = phi i64 [ %49, %93 ], [ %119, %137 ], [ %49, %88 ], [ %119, %126 ], [ %119, %125 ], [ %119, %142 ], [ %49, %122 ]
  %155 = phi i1 [ false, %93 ], [ true, %137 ], [ false, %88 ], [ %136, %126 ], [ false, %125 ], [ %152, %142 ], [ %124, %122 ]
  br i1 %78, label %156, label %210, !prof !75

156:                                              ; preds = %153
  %157 = ashr i32 %50, 3
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !55
  %161 = load i64, ptr %5, align 8, !tbaa !55
  %162 = and i64 %160, %161
  %163 = and i64 %162, %72
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %171, !prof !76

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 4
  %167 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %73
  %168 = load i64, ptr %167, align 8, !tbaa !55
  %169 = load i64, ptr %166, align 8, !tbaa !77
  %170 = or i64 %169, %168
  store i64 %170, ptr %166, align 8, !tbaa !77
  br label %208

171:                                              ; preds = %156
  %172 = add nsw i32 %157, -1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %173
  %175 = load i64, ptr %174, align 8, !tbaa !55
  %176 = and i64 %72, %175
  %177 = and i64 %176, %90
  %178 = call noundef i32 @_Z8PopCounty(i64 noundef %177) #6
  %179 = load i64, ptr %5, align 8, !tbaa !55
  %180 = load i64, ptr %159, align 8, !tbaa !55
  %181 = and i64 %179, %180
  %182 = and i64 %181, %72
  %183 = call noundef i32 @_Z8PopCounty(i64 noundef %182) #6
  %184 = load i64, ptr %5, align 8, !tbaa !55
  %185 = load i64, ptr %174, align 8, !tbaa !55
  %186 = and i64 %184, %185
  %187 = and i64 %186, %72
  %188 = call noundef i32 @_Z8PopCounty(i64 noundef %187) #6
  %189 = add i32 %183, %188
  %190 = sub i32 %178, %189
  %191 = icmp sgt i32 %190, -1
  br i1 %191, label %192, label %208, !prof !78

192:                                              ; preds = %171
  %193 = load i64, ptr %4, align 8, !tbaa !55
  %194 = add nsw i32 %157, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !55
  %198 = and i64 %193, %197
  %199 = and i64 %198, %72
  %200 = call noundef i32 @_Z8PopCounty(i64 noundef %199) #6
  %201 = load i64, ptr %5, align 8, !tbaa !55
  %202 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %173
  %203 = load i64, ptr %202, align 8, !tbaa !55
  %204 = and i64 %201, %203
  %205 = and i64 %204, %72
  %206 = call noundef i32 @_Z8PopCounty(i64 noundef %205) #6
  %207 = icmp slt i32 %200, %206
  br label %208

208:                                              ; preds = %192, %165, %171
  %209 = phi i1 [ true, %171 ], [ true, %165 ], [ %207, %192 ]
  br i1 %80, label %218, label %211, !prof !67

210:                                              ; preds = %153
  br i1 %80, label %217, label %214, !prof !67

211:                                              ; preds = %208
  %212 = load i32, ptr %46, align 8, !tbaa !79
  %213 = add nsw i32 %212, -10
  store i32 %213, ptr %46, align 8, !tbaa !79
  br i1 %92, label %226, label %235, !prof !68

214:                                              ; preds = %210
  %215 = load i32, ptr %46, align 8, !tbaa !79
  %216 = add nsw i32 %215, -5
  store i32 %216, ptr %46, align 8, !tbaa !79
  br label %217

217:                                              ; preds = %210, %214
  br i1 %92, label %222, label %230, !prof !68

218:                                              ; preds = %208
  br i1 %92, label %219, label %231, !prof !68

219:                                              ; preds = %218
  %220 = load i32, ptr %46, align 8, !tbaa !79
  %221 = add nsw i32 %220, -20
  store i32 %221, ptr %46, align 8, !tbaa !79
  br i1 %209, label %260, label %245, !prof !80

222:                                              ; preds = %217
  %223 = load i32, ptr %46, align 8, !tbaa !79
  br i1 %78, label %224, label %228, !prof !81

224:                                              ; preds = %222
  %225 = add nsw i32 %223, -20
  br label %258

226:                                              ; preds = %211
  %227 = add nsw i32 %212, -30
  store i32 %227, ptr %46, align 8, !tbaa !79
  br i1 %209, label %260, label %245, !prof !80

228:                                              ; preds = %222
  %229 = add nsw i32 %223, -8
  br label %258

230:                                              ; preds = %217
  br i1 %155, label %236, label %260, !prof !82

231:                                              ; preds = %218
  br i1 %155, label %232, label %244, !prof !82

232:                                              ; preds = %231
  %233 = load i32, ptr %46, align 8, !tbaa !79
  %234 = add nsw i32 %233, -16
  store i32 %234, ptr %46, align 8, !tbaa !79
  br i1 %209, label %260, label %245, !prof !83

235:                                              ; preds = %211
  br i1 %155, label %240, label %244, !prof !82

236:                                              ; preds = %230
  %237 = load i32, ptr %46, align 8, !tbaa !79
  br i1 %78, label %238, label %242, !prof !84

238:                                              ; preds = %236
  %239 = add nsw i32 %237, -16
  br label %258

240:                                              ; preds = %235
  %241 = add nsw i32 %212, -26
  store i32 %241, ptr %46, align 8, !tbaa !79
  br i1 %209, label %260, label %245, !prof !83

242:                                              ; preds = %236
  %243 = add nsw i32 %237, -6
  br label %258

244:                                              ; preds = %231, %235
  br i1 %209, label %260, label %245, !prof !85

245:                                              ; preds = %232, %219, %226, %240, %244
  %246 = ashr i32 %50, 3
  %247 = add nsw i32 %246, -1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [6 x i32], ptr @_ZL11w_candidate, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !41
  br i1 %89, label %251, label %255, !prof !86

251:                                              ; preds = %245
  %252 = shl nsw i32 %250, 1
  %253 = load i32, ptr %46, align 8, !tbaa !79
  %254 = add nsw i32 %253, %252
  br label %258

255:                                              ; preds = %245
  %256 = load i32, ptr %46, align 8, !tbaa !79
  %257 = add nsw i32 %256, %250
  br label %258

258:                                              ; preds = %255, %251, %224, %228, %238, %242
  %259 = phi i32 [ %243, %242 ], [ %239, %238 ], [ %229, %228 ], [ %225, %224 ], [ %254, %251 ], [ %257, %255 ]
  store i32 %259, ptr %46, align 8, !tbaa !79
  br label %260

260:                                              ; preds = %258, %230, %232, %219, %226, %240, %244
  %261 = icmp sgt i32 %50, 15
  br i1 %261, label %262, label %361, !prof !87

262:                                              ; preds = %260
  %263 = icmp eq i32 %51, 0
  %264 = load i64, ptr %4, align 8, !tbaa !55
  %265 = load i64, ptr %5, align 8, !tbaa !55
  br i1 %263, label %315, label %266, !prof !88

266:                                              ; preds = %262
  %267 = add nsw i32 %50, -9
  %268 = and i32 %267, 7
  %269 = zext nneg i32 %267 to i64
  %270 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %269
  %271 = load i64, ptr %270, align 8, !tbaa !55
  %272 = or i64 %265, %264
  %273 = and i64 %272, %271
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %310, !prof !89

275:                                              ; preds = %266
  switch i32 %268, label %280 [
    i32 0, label %276
    i32 7, label %278
  ], !prof !90

276:                                              ; preds = %275
  %277 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !55
  br label %290

278:                                              ; preds = %275
  %279 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !55
  br label %290

280:                                              ; preds = %275
  %281 = add nsw i32 %268, -1
  %282 = zext nneg i32 %281 to i64
  %283 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %282
  %284 = load i64, ptr %283, align 8, !tbaa !55
  %285 = add nuw nsw i32 %268, 1
  %286 = zext nneg i32 %285 to i64
  %287 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !55
  %289 = or i64 %288, %284
  br label %290

290:                                              ; preds = %278, %280, %276
  %291 = phi i64 [ %277, %276 ], [ %279, %278 ], [ %289, %280 ]
  %292 = lshr i32 %267, 3
  %293 = zext nneg i32 %292 to i64
  %294 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %293
  %295 = load i64, ptr %294, align 8, !tbaa !55
  %296 = and i64 %291, %295
  %297 = and i64 %296, %265
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %310, !prof !91

299:                                              ; preds = %290
  %300 = load i64, ptr %47, align 8, !tbaa !92
  %301 = and i64 %300, %271
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %306, label %303, !prof !93

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 8
  %305 = load i64, ptr %304, align 8, !tbaa !94
  br label %306

306:                                              ; preds = %299, %303
  %307 = phi i64 [ %305, %303 ], [ %300, %299 ]
  %308 = phi ptr [ %304, %303 ], [ %47, %299 ]
  %309 = or i64 %307, %271
  store i64 %309, ptr %308, align 8, !tbaa !55
  br label %310

310:                                              ; preds = %306, %266, %290
  %311 = icmp eq i32 %51, 7
  br i1 %311, label %361, label %312, !prof !95

312:                                              ; preds = %310
  %313 = load i64, ptr %4, align 8, !tbaa !55
  %314 = load i64, ptr %5, align 8, !tbaa !55
  br label %315

315:                                              ; preds = %312, %262
  %316 = phi i64 [ %314, %312 ], [ %265, %262 ]
  %317 = phi i64 [ %313, %312 ], [ %264, %262 ]
  %318 = add nsw i32 %50, -7
  %319 = and i32 %318, 7
  %320 = zext nneg i32 %318 to i64
  %321 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %320
  %322 = load i64, ptr %321, align 8, !tbaa !55
  %323 = or i64 %316, %317
  %324 = and i64 %323, %322
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %361, !prof !96

326:                                              ; preds = %315
  switch i32 %319, label %331 [
    i32 0, label %327
    i32 7, label %329
  ], !prof !97

327:                                              ; preds = %326
  %328 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !55
  br label %341

329:                                              ; preds = %326
  %330 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !55
  br label %341

331:                                              ; preds = %326
  %332 = add nsw i32 %319, -1
  %333 = zext nneg i32 %332 to i64
  %334 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !55
  %336 = add nuw nsw i32 %319, 1
  %337 = zext nneg i32 %336 to i64
  %338 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %337
  %339 = load i64, ptr %338, align 8, !tbaa !55
  %340 = or i64 %339, %335
  br label %341

341:                                              ; preds = %329, %331, %327
  %342 = phi i64 [ %328, %327 ], [ %330, %329 ], [ %340, %331 ]
  %343 = lshr i32 %318, 3
  %344 = zext nneg i32 %343 to i64
  %345 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %344
  %346 = load i64, ptr %345, align 8, !tbaa !55
  %347 = and i64 %342, %346
  %348 = and i64 %347, %316
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %361, !prof !98

350:                                              ; preds = %341
  %351 = load i64, ptr %47, align 8, !tbaa !92
  %352 = and i64 %351, %322
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %357, label %354, !prof !99

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 8
  %356 = load i64, ptr %355, align 8, !tbaa !94
  br label %357

357:                                              ; preds = %350, %354
  %358 = phi i64 [ %356, %354 ], [ %351, %350 ]
  %359 = phi ptr [ %355, %354 ], [ %47, %350 ]
  %360 = or i64 %358, %322
  store i64 %360, ptr %359, align 8, !tbaa !55
  br label %361

361:                                              ; preds = %357, %310, %341, %315, %260
  %362 = load i64, ptr %3, align 8, !tbaa !55
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %48, !prof !100, !llvm.loop !101

364:                                              ; preds = %361, %42
  %365 = phi i64 [ undef, %42 ], [ %154, %361 ]
  %366 = load i64, ptr %5, align 8, !tbaa !55
  store i64 %366, ptr %3, align 8, !tbaa !55
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %686, label %368, !prof !65

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 11
  %370 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 7
  br label %371

371:                                              ; preds = %368, %683
  %372 = phi i64 [ %365, %368 ], [ %476, %683 ]
  %373 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #6
  %374 = and i32 %373, 7
  %375 = zext nneg i32 %374 to i64
  %376 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !55
  %378 = load i64, ptr %5, align 8, !tbaa !55
  %379 = and i64 %378, %377
  switch i32 %374, label %384 [
    i32 0, label %380
    i32 7, label %382
  ], !prof !102

380:                                              ; preds = %371
  %381 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !55
  br label %394

382:                                              ; preds = %371
  %383 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !55
  br label %394

384:                                              ; preds = %371
  %385 = add nsw i32 %374, -1
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %386
  %388 = load i64, ptr %387, align 8, !tbaa !55
  %389 = add nuw nsw i32 %374, 1
  %390 = zext nneg i32 %389 to i64
  %391 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %390
  %392 = load i64, ptr %391, align 8, !tbaa !55
  %393 = or i64 %392, %388
  br label %394

394:                                              ; preds = %382, %384, %380
  %395 = phi i64 [ %381, %380 ], [ %383, %382 ], [ %393, %384 ]
  %396 = sext i32 %373 to i64
  %397 = getelementptr inbounds [64 x i64], ptr @FileDownMask, i64 0, i64 %396
  %398 = load i64, ptr %397, align 8, !tbaa !55
  %399 = load i64, ptr %4, align 8, !tbaa !55
  %400 = and i64 %399, %398
  %401 = icmp eq i64 %400, 0
  %402 = call noundef i32 @_Z8PopCounty(i64 noundef %379) #6
  %403 = icmp slt i32 %402, 2
  br i1 %403, label %411, label %404, !prof !103

404:                                              ; preds = %394
  %405 = ashr i32 %373, 3
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %406
  %408 = load i64, ptr %407, align 8, !tbaa !55
  %409 = and i64 %408, %379
  %410 = icmp eq i64 %409, 0
  br label %411

411:                                              ; preds = %404, %394
  %412 = phi i1 [ true, %394 ], [ %410, %404 ]
  %413 = load i64, ptr %5, align 8, !tbaa !55
  %414 = and i64 %413, %395
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %475, label %416, !prof !104

416:                                              ; preds = %411
  %417 = ashr i32 %373, 3
  %418 = add nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %419
  %421 = load i64, ptr %420, align 8, !tbaa !55
  %422 = and i64 %421, %414
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %475, !prof !105

424:                                              ; preds = %416
  %425 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %419
  %426 = load i64, ptr %425, align 8, !tbaa !55
  %427 = icmp slt i32 %417, 6
  br i1 %427, label %428, label %445, !prof !106

428:                                              ; preds = %424
  %429 = add nsw i32 %417, 2
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %430
  %432 = load i64, ptr %431, align 8, !tbaa !55
  %433 = or i64 %432, %426
  %434 = icmp eq i32 %417, 5
  br i1 %434, label %441, label %435, !prof !107

435:                                              ; preds = %428
  %436 = add nsw i32 %417, 3
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %437
  %439 = load i64, ptr %438, align 8, !tbaa !55
  %440 = or i64 %439, %433
  br label %441

441:                                              ; preds = %435, %428
  %442 = phi i64 [ %440, %435 ], [ %372, %428 ]
  %443 = and i64 %426, %414
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %460, label %448, !prof !108

445:                                              ; preds = %424
  %446 = and i64 %426, %414
  %447 = icmp eq i64 %446, 0
  br label %475

448:                                              ; preds = %441
  br i1 %427, label %449, label %475, !prof !109

449:                                              ; preds = %448
  %450 = load i64, ptr %376, align 8, !tbaa !55
  %451 = load i64, ptr %4, align 8, !tbaa !55
  %452 = or i64 %451, %413
  %453 = and i64 %450, %452
  %454 = and i64 %453, %426
  %455 = icmp eq i64 %454, 0
  %456 = and i64 %433, %395
  %457 = and i64 %456, %451
  %458 = icmp ne i64 %457, 0
  %459 = select i1 %458, i1 %455, i1 false
  br label %475

460:                                              ; preds = %441
  %461 = icmp ne i32 %417, 1
  %462 = and i64 %433, %414
  %463 = icmp eq i64 %462, 0
  %464 = select i1 %461, i1 true, i1 %463
  br i1 %464, label %475, label %465, !prof !110

465:                                              ; preds = %460
  %466 = load i64, ptr %376, align 8, !tbaa !55
  %467 = load i64, ptr %4, align 8, !tbaa !55
  %468 = or i64 %467, %413
  %469 = and i64 %466, %468
  %470 = and i64 %469, %433
  %471 = icmp eq i64 %470, 0
  %472 = and i64 %414, %442
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %475, !prof !111

474:                                              ; preds = %465
  br label %475

475:                                              ; preds = %445, %449, %448, %411, %416, %460, %474, %465
  %476 = phi i64 [ %372, %416 ], [ %442, %465 ], [ %442, %474 ], [ %442, %460 ], [ %372, %411 ], [ %442, %449 ], [ %442, %448 ], [ %372, %445 ]
  %477 = phi i1 [ false, %416 ], [ %471, %465 ], [ false, %474 ], [ true, %460 ], [ false, %411 ], [ %459, %449 ], [ false, %448 ], [ %447, %445 ]
  br i1 %401, label %478, label %532, !prof !112

478:                                              ; preds = %475
  %479 = ashr i32 %373, 3
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %480
  %482 = load i64, ptr %481, align 8, !tbaa !55
  %483 = load i64, ptr %4, align 8, !tbaa !55
  %484 = and i64 %482, %483
  %485 = and i64 %484, %395
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %493, !prof !113

487:                                              ; preds = %478
  %488 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 5
  %489 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %396
  %490 = load i64, ptr %489, align 8, !tbaa !55
  %491 = load i64, ptr %488, align 8, !tbaa !114
  %492 = or i64 %491, %490
  store i64 %492, ptr %488, align 8, !tbaa !114
  br label %530

493:                                              ; preds = %478
  %494 = add nsw i32 %479, 1
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !55
  %498 = and i64 %395, %497
  %499 = and i64 %498, %413
  %500 = call noundef i32 @_Z8PopCounty(i64 noundef %499) #6
  %501 = load i64, ptr %4, align 8, !tbaa !55
  %502 = load i64, ptr %481, align 8, !tbaa !55
  %503 = and i64 %501, %502
  %504 = and i64 %503, %395
  %505 = call noundef i32 @_Z8PopCounty(i64 noundef %504) #6
  %506 = load i64, ptr %4, align 8, !tbaa !55
  %507 = load i64, ptr %496, align 8, !tbaa !55
  %508 = and i64 %506, %507
  %509 = and i64 %508, %395
  %510 = call noundef i32 @_Z8PopCounty(i64 noundef %509) #6
  %511 = add i32 %505, %510
  %512 = sub i32 %500, %511
  %513 = icmp sgt i32 %512, -1
  br i1 %513, label %514, label %530, !prof !115

514:                                              ; preds = %493
  %515 = load i64, ptr %5, align 8, !tbaa !55
  %516 = add nsw i32 %479, -1
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %517
  %519 = load i64, ptr %518, align 8, !tbaa !55
  %520 = and i64 %515, %519
  %521 = and i64 %520, %395
  %522 = call noundef i32 @_Z8PopCounty(i64 noundef %521) #6
  %523 = load i64, ptr %4, align 8, !tbaa !55
  %524 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %495
  %525 = load i64, ptr %524, align 8, !tbaa !55
  %526 = and i64 %523, %525
  %527 = and i64 %526, %395
  %528 = call noundef i32 @_Z8PopCounty(i64 noundef %527) #6
  %529 = icmp slt i32 %522, %528
  br label %530

530:                                              ; preds = %514, %487, %493
  %531 = phi i1 [ true, %493 ], [ true, %487 ], [ %529, %514 ]
  br i1 %403, label %540, label %533, !prof !103

532:                                              ; preds = %475
  br i1 %403, label %539, label %536, !prof !103

533:                                              ; preds = %530
  %534 = load i32, ptr %369, align 4, !tbaa !116
  %535 = add nsw i32 %534, 10
  store i32 %535, ptr %369, align 4, !tbaa !116
  br i1 %415, label %548, label %557, !prof !104

536:                                              ; preds = %532
  %537 = load i32, ptr %369, align 4, !tbaa !116
  %538 = add nsw i32 %537, 5
  store i32 %538, ptr %369, align 4, !tbaa !116
  br label %539

539:                                              ; preds = %532, %536
  br i1 %415, label %544, label %552, !prof !104

540:                                              ; preds = %530
  br i1 %415, label %541, label %553, !prof !104

541:                                              ; preds = %540
  %542 = load i32, ptr %369, align 4, !tbaa !116
  %543 = add nsw i32 %542, 20
  store i32 %543, ptr %369, align 4, !tbaa !116
  br i1 %531, label %582, label %567, !prof !117

544:                                              ; preds = %539
  %545 = load i32, ptr %369, align 4, !tbaa !116
  br i1 %401, label %546, label %550, !prof !118

546:                                              ; preds = %544
  %547 = add nsw i32 %545, 20
  br label %580

548:                                              ; preds = %533
  %549 = add nsw i32 %534, 30
  store i32 %549, ptr %369, align 4, !tbaa !116
  br i1 %531, label %582, label %567, !prof !117

550:                                              ; preds = %544
  %551 = add nsw i32 %545, 8
  br label %580

552:                                              ; preds = %539
  br i1 %477, label %558, label %582, !prof !119

553:                                              ; preds = %540
  br i1 %477, label %554, label %566, !prof !119

554:                                              ; preds = %553
  %555 = load i32, ptr %369, align 4, !tbaa !116
  %556 = add nsw i32 %555, 16
  store i32 %556, ptr %369, align 4, !tbaa !116
  br i1 %531, label %582, label %567, !prof !120

557:                                              ; preds = %533
  br i1 %477, label %562, label %566, !prof !119

558:                                              ; preds = %552
  %559 = load i32, ptr %369, align 4, !tbaa !116
  br i1 %401, label %560, label %564, !prof !121

560:                                              ; preds = %558
  %561 = add nsw i32 %559, 16
  br label %580

562:                                              ; preds = %557
  %563 = add nsw i32 %534, 26
  store i32 %563, ptr %369, align 4, !tbaa !116
  br i1 %531, label %582, label %567, !prof !120

564:                                              ; preds = %558
  %565 = add nsw i32 %559, 6
  br label %580

566:                                              ; preds = %553, %557
  br i1 %531, label %582, label %567, !prof !85

567:                                              ; preds = %554, %541, %548, %562, %566
  %568 = ashr i32 %373, 3
  %569 = sub nsw i32 6, %568
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [6 x i32], ptr @_ZL11w_candidate, i64 0, i64 %570
  %572 = load i32, ptr %571, align 4, !tbaa !41
  br i1 %412, label %573, label %577, !prof !122

573:                                              ; preds = %567
  %574 = shl nsw i32 %572, 1
  %575 = load i32, ptr %369, align 4, !tbaa !116
  %576 = sub nsw i32 %575, %574
  br label %580

577:                                              ; preds = %567
  %578 = load i32, ptr %369, align 4, !tbaa !116
  %579 = sub nsw i32 %578, %572
  br label %580

580:                                              ; preds = %577, %573, %546, %550, %560, %564
  %581 = phi i32 [ %565, %564 ], [ %561, %560 ], [ %551, %550 ], [ %547, %546 ], [ %576, %573 ], [ %579, %577 ]
  store i32 %581, ptr %369, align 4, !tbaa !116
  br label %582

582:                                              ; preds = %580, %552, %554, %541, %548, %562, %566
  %583 = icmp slt i32 %373, 48
  br i1 %583, label %584, label %683, !prof !123

584:                                              ; preds = %582
  %585 = icmp eq i32 %374, 0
  %586 = load i64, ptr %4, align 8, !tbaa !55
  %587 = load i64, ptr %5, align 8, !tbaa !55
  br i1 %585, label %637, label %588, !prof !124

588:                                              ; preds = %584
  %589 = add nsw i32 %373, 7
  %590 = and i32 %589, 7
  %591 = sext i32 %589 to i64
  %592 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %591
  %593 = load i64, ptr %592, align 8, !tbaa !55
  %594 = or i64 %587, %586
  %595 = and i64 %594, %593
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %597, label %632, !prof !125

597:                                              ; preds = %588
  switch i32 %590, label %602 [
    i32 0, label %598
    i32 7, label %600
  ], !prof !126

598:                                              ; preds = %597
  %599 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !55
  br label %612

600:                                              ; preds = %597
  %601 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !55
  br label %612

602:                                              ; preds = %597
  %603 = add nsw i32 %590, -1
  %604 = zext nneg i32 %603 to i64
  %605 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %604
  %606 = load i64, ptr %605, align 8, !tbaa !55
  %607 = add nuw nsw i32 %590, 1
  %608 = zext nneg i32 %607 to i64
  %609 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %608
  %610 = load i64, ptr %609, align 8, !tbaa !55
  %611 = or i64 %610, %606
  br label %612

612:                                              ; preds = %600, %602, %598
  %613 = phi i64 [ %599, %598 ], [ %601, %600 ], [ %611, %602 ]
  %614 = ashr i32 %589, 3
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %615
  %617 = load i64, ptr %616, align 8, !tbaa !55
  %618 = and i64 %613, %617
  %619 = and i64 %618, %586
  %620 = icmp eq i64 %619, 0
  br i1 %620, label %621, label %632, !prof !127

621:                                              ; preds = %612
  %622 = load i64, ptr %370, align 8, !tbaa !128
  %623 = and i64 %622, %593
  %624 = icmp eq i64 %623, 0
  br i1 %624, label %628, label %625, !prof !129

625:                                              ; preds = %621
  %626 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 9
  %627 = load i64, ptr %626, align 8, !tbaa !130
  br label %628

628:                                              ; preds = %621, %625
  %629 = phi i64 [ %627, %625 ], [ %622, %621 ]
  %630 = phi ptr [ %626, %625 ], [ %370, %621 ]
  %631 = or i64 %629, %593
  store i64 %631, ptr %630, align 8, !tbaa !55
  br label %632

632:                                              ; preds = %628, %588, %612
  %633 = icmp eq i32 %374, 7
  br i1 %633, label %683, label %634, !prof !131

634:                                              ; preds = %632
  %635 = load i64, ptr %4, align 8, !tbaa !55
  %636 = load i64, ptr %5, align 8, !tbaa !55
  br label %637

637:                                              ; preds = %634, %584
  %638 = phi i64 [ %636, %634 ], [ %587, %584 ]
  %639 = phi i64 [ %635, %634 ], [ %586, %584 ]
  %640 = add nsw i32 %373, 9
  %641 = and i32 %640, 7
  %642 = sext i32 %640 to i64
  %643 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %642
  %644 = load i64, ptr %643, align 8, !tbaa !55
  %645 = or i64 %638, %639
  %646 = and i64 %645, %644
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %648, label %683, !prof !132

648:                                              ; preds = %637
  switch i32 %641, label %653 [
    i32 0, label %649
    i32 7, label %651
  ], !prof !133

649:                                              ; preds = %648
  %650 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !55
  br label %663

651:                                              ; preds = %648
  %652 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !55
  br label %663

653:                                              ; preds = %648
  %654 = add nsw i32 %641, -1
  %655 = zext nneg i32 %654 to i64
  %656 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %655
  %657 = load i64, ptr %656, align 8, !tbaa !55
  %658 = add nuw nsw i32 %641, 1
  %659 = zext nneg i32 %658 to i64
  %660 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %659
  %661 = load i64, ptr %660, align 8, !tbaa !55
  %662 = or i64 %661, %657
  br label %663

663:                                              ; preds = %651, %653, %649
  %664 = phi i64 [ %650, %649 ], [ %652, %651 ], [ %662, %653 ]
  %665 = ashr i32 %640, 3
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %666
  %668 = load i64, ptr %667, align 8, !tbaa !55
  %669 = and i64 %664, %668
  %670 = and i64 %669, %639
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %672, label %683, !prof !134

672:                                              ; preds = %663
  %673 = load i64, ptr %370, align 8, !tbaa !128
  %674 = and i64 %673, %644
  %675 = icmp eq i64 %674, 0
  br i1 %675, label %679, label %676, !prof !135

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 9
  %678 = load i64, ptr %677, align 8, !tbaa !130
  br label %679

679:                                              ; preds = %672, %676
  %680 = phi i64 [ %678, %676 ], [ %673, %672 ]
  %681 = phi ptr [ %677, %676 ], [ %370, %672 ]
  %682 = or i64 %680, %644
  store i64 %682, ptr %681, align 8, !tbaa !55
  br label %683

683:                                              ; preds = %679, %632, %663, %637, %582
  %684 = load i64, ptr %3, align 8, !tbaa !55
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %686, label %371, !prof !136, !llvm.loop !137

686:                                              ; preds = %683, %364
  %687 = load i64, ptr @WhiteStrongSquareMask, align 8, !tbaa !55
  %688 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 6
  %689 = load i64, ptr %688, align 8, !tbaa !92
  %690 = load i64, ptr @BlackStrongSquareMask, align 8, !tbaa !55
  %691 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 7
  %692 = load i64, ptr %691, align 8, !tbaa !128
  %693 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 8
  %694 = load i64, ptr %693, align 8, !tbaa !94
  %695 = and i64 %694, %687
  store i64 %695, ptr %693, align 8, !tbaa !94
  %696 = getelementptr inbounds %struct.pawntt_t, ptr %1, i64 0, i32 9
  %697 = load i64, ptr %696, align 8, !tbaa !130
  %698 = and i64 %697, %690
  store i64 %698, ptr %696, align 8, !tbaa !130
  %699 = xor i64 %694, %689
  %700 = and i64 %699, %687
  store i64 %700, ptr %688, align 8, !tbaa !92
  %701 = xor i64 %697, %692
  %702 = and i64 %701, %690
  store i64 %702, ptr %691, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_Z8PopCounty(i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_Z16static_pawn_evalP7state_t, ptr @_ZL14full_pawn_evalP7state_tP8pawntt_t, i64 4158023}
!36 = !{ptr @_ZL14full_pawn_evalP7state_tP8pawntt_t, ptr @_Z15FindFirstRemovePy, i64 43240556}
!37 = !{ptr @_ZL14full_pawn_evalP7state_tP8pawntt_t, ptr @_Z8PopCounty, i64 81033505}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 1}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"function_entry_count", i64 288009370}
!46 = !{!47, !48, i64 488}
!47 = !{!"_ZTS7state_t", !42, i64 0, !43, i64 4, !48, i64 264, !48, i64 272, !48, i64 280, !43, i64 288, !42, i64 392, !42, i64 396, !43, i64 400, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !48, i64 480, !48, i64 488, !43, i64 496, !43, i64 2544, !43, i64 2800, !43, i64 3056, !48, i64 4080, !48, i64 4088, !42, i64 4096, !43, i64 4100, !42, i64 4356, !42, i64 4360, !42, i64 4364, !42, i64 4368, !42, i64 4372, !42, i64 4376, !42, i64 4380, !42, i64 4384, !42, i64 4388, !42, i64 4392, !43, i64 4400}
!48 = !{!"long long", !43, i64 0}
!49 = !{!47, !42, i64 0}
!50 = !{!51, !48, i64 0}
!51 = !{!"_ZTS8pawntt_t", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !42, i64 80, !42, i64 84}
!52 = !{!"branch_weights", i32 283851349, i32 4158023}
!53 = !{!"function_entry_count", i64 4158022}
!54 = !{!"pawn.cpp:_ZL14full_pawn_evalP7state_tP8pawntt_t"}
!55 = !{!48, !48, i64 0}
!56 = !{!"branch_weights", i32 12786182, i32 20477996}
!57 = !{!51, !48, i64 16}
!58 = !{!"branch_weights", i32 12575818, i32 20688360}
!59 = !{!51, !48, i64 24}
!60 = !{!"branch_weights", i32 5851728, i32 27412450}
!61 = !{!51, !48, i64 8}
!62 = !{!"branch_weights", i32 4158023, i32 29106154}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"branch_weights", i32 1, i32 4158022}
!66 = !{!"branch_weights", i32 -99495973, i32 874757330, i32 964333193}
!67 = !{!"branch_weights", i32 19458095, i32 2048372}
!68 = !{!"branch_weights", i32 5336368, i32 16170099}
!69 = !{!"branch_weights", i32 4954428, i32 11215672}
!70 = !{!"branch_weights", i32 4954428, i32 1}
!71 = !{!"branch_weights", i32 2763661, i32 2144719987}
!72 = !{!"branch_weights", i32 1187545, i32 3766884}
!73 = !{!"branch_weights", i32 2147483511, i32 137}
!74 = !{!"branch_weights", i32 1137799749, i32 1009683899}
!75 = !{!"branch_weights", i32 7451614, i32 14054853}
!76 = !{!"branch_weights", i32 2385483, i32 5066132}
!77 = !{!51, !48, i64 32}
!78 = !{!"branch_weights", i32 1280546, i32 3785587}
!79 = !{!51, !42, i64 80}
!80 = !{!"branch_weights", i32 2012794699, i32 134688949}
!81 = !{!"branch_weights", i32 199633274, i32 1947850374}
!82 = !{!"branch_weights", i32 1075118, i32 15094982}
!83 = !{!"branch_weights", i32 2005561413, i32 141922235}
!84 = !{!"branch_weights", i32 271498837, i32 1875984811}
!85 = !{!"branch_weights", i32 0, i32 -2147483648}
!86 = !{!"branch_weights", i32 1112111, i32 35536}
!87 = !{!"branch_weights", i32 21249986, i32 256481}
!88 = !{!"branch_weights", i32 3116177, i32 18133810}
!89 = !{!"branch_weights", i32 15472828, i32 2660983}
!90 = !{!"branch_weights", i32 -1646943440, i32 462193296, i32 201}
!91 = !{!"branch_weights", i32 4059713, i32 11413116}
!92 = !{!51, !48, i64 48}
!93 = !{!"branch_weights", i32 3754600, i32 305114}
!94 = !{!51, !48, i64 64}
!95 = !{!"branch_weights", i32 3432498, i32 17817489}
!96 = !{!"branch_weights", i32 14030341, i32 3787149}
!97 = !{!"branch_weights", i32 -1839689734, i32 214, i32 548422428}
!98 = !{!"branch_weights", i32 3716819, i32 10313523}
!99 = !{!"branch_weights", i32 3716819, i32 1}
!100 = !{!"branch_weights", i32 4158022, i32 17348444}
!101 = distinct !{!101, !64}
!102 = !{!"branch_weights", i32 -206624902, i32 1002680453, i32 913092860}
!103 = !{!"branch_weights", i32 19661104, i32 2072997}
!104 = !{!"branch_weights", i32 4094651, i32 17639450}
!105 = !{!"branch_weights", i32 4237612, i32 13401839}
!106 = !{!"branch_weights", i32 4237612, i32 1}
!107 = !{!"branch_weights", i32 1538039, i32 2145945609}
!108 = !{!"branch_weights", i32 1069585, i32 3168028}
!109 = !{!"branch_weights", i32 2147483477, i32 171}
!110 = !{!"branch_weights", i32 973603681, i32 1173879967}
!111 = !{!"branch_weights", i32 1, i32 584669}
!112 = !{!"branch_weights", i32 7744899, i32 13989202}
!113 = !{!"branch_weights", i32 2052043, i32 5692857}
!114 = !{!51, !48, i64 40}
!115 = !{!"branch_weights", i32 1477453, i32 4215405}
!116 = !{!51, !42, i64 84}
!117 = !{!"branch_weights", i32 1961750231, i32 185733417}
!118 = !{!"branch_weights", i32 438889535, i32 1708594113}
!119 = !{!"branch_weights", i32 1482787, i32 16156664}
!120 = !{!"branch_weights", i32 1972895803, i32 174587845}
!121 = !{!"branch_weights", i32 341207216, i32 1806276432}
!122 = !{!"branch_weights", i32 1338662, i32 34277}
!123 = !{!"branch_weights", i32 21618474, i32 115627}
!124 = !{!"branch_weights", i32 3622098, i32 17996377}
!125 = !{!"branch_weights", i32 14444127, i32 3552251}
!126 = !{!"branch_weights", i32 -2023404195, i32 417579119, i32 186}
!127 = !{!"branch_weights", i32 4678170, i32 9765958}
!128 = !{!51, !48, i64 56}
!129 = !{!"branch_weights", i32 4090889, i32 587282}
!130 = !{!51, !48, i64 72}
!131 = !{!"branch_weights", i32 3304633, i32 18313842}
!132 = !{!"branch_weights", i32 15829250, i32 2484593}
!133 = !{!"branch_weights", i32 -1025153065, i32 241, i32 553506864}
!134 = !{!"branch_weights", i32 4301426, i32 11527825}
!135 = !{!"branch_weights", i32 4301426, i32 1}
!136 = !{!"branch_weights", i32 4158022, i32 17576078}
!137 = distinct !{!137, !64}
