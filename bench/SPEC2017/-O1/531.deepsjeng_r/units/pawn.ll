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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z13clear_pawn_ttv() local_unnamed_addr #0 !prof !38 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11534336) @_ZL6PawnTT, i8 0, i64 11534336, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5scaleiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !39 {
  %4 = sub nsw i32 %2, %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [8 x i32], ptr @__const._Z5scaleiii.scf, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !40
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

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef nonnull ptr @_Z16static_pawn_evalP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = and i64 %4, 16383
  %6 = load i32, ptr %0, align 8, !tbaa !48
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5
  %9 = load i64, ptr %8, align 8, !tbaa !49
  %10 = icmp eq i64 %9, %4
  br i1 %10, label %685, label %11, !prof !51

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, i8 0, i64 88, i1 false)
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %14 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 2
  %15 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 3
  %16 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 1
  br label %17

17:                                               ; preds = %11, %43
  %18 = phi i64 [ 0, %11 ], [ %44, %43 ]
  %19 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !52
  %21 = load i64, ptr %12, align 8, !tbaa !52
  %22 = and i64 %21, %20
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27, !prof !53

24:                                               ; preds = %17
  %25 = load i64, ptr %14, align 8, !tbaa !54
  %26 = or i64 %25, %20
  store i64 %26, ptr %14, align 8, !tbaa !54
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i64, ptr %13, align 8, !tbaa !52
  %29 = and i64 %28, %20
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34, !prof !55

31:                                               ; preds = %27
  %32 = load i64, ptr %15, align 8, !tbaa !56
  %33 = or i64 %32, %20
  store i64 %33, ptr %15, align 8, !tbaa !56
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, ptr %12, align 8, !tbaa !52
  %36 = load i64, ptr %13, align 8, !tbaa !52
  %37 = or i64 %36, %35
  %38 = and i64 %37, %20
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43, !prof !57

40:                                               ; preds = %34
  %41 = load i64, ptr %16, align 8, !tbaa !58
  %42 = or i64 %41, %20
  store i64 %42, ptr %16, align 8, !tbaa !58
  br label %43

43:                                               ; preds = %40, %34
  %44 = add nuw nsw i64 %18, 1
  %45 = icmp eq i64 %44, 8
  br i1 %45, label %46, label %17, !prof !59, !llvm.loop !60

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %48 = load i64, ptr %47, align 8, !tbaa !52
  store i64 %48, ptr %2, align 8, !tbaa !52
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %356, label %50, !prof !63

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %52 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  %53 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  br label %54

54:                                               ; preds = %50, %353
  %55 = phi i64 [ undef, %50 ], [ %161, %353 ]
  %56 = phi i64 [ undef, %50 ], [ %160, %353 ]
  %57 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %2)
  %58 = and i32 %57, 7
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !52
  %62 = load i64, ptr %47, align 8, !tbaa !52
  %63 = and i64 %62, %61
  switch i32 %58, label %68 [
    i32 0, label %64
    i32 7, label %66
  ], !prof !64

64:                                               ; preds = %54
  %65 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !52
  br label %78

66:                                               ; preds = %54
  %67 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !52
  br label %78

68:                                               ; preds = %54
  %69 = add nsw i32 %58, -1
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !52
  %73 = add nuw nsw i32 %58, 1
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !52
  %77 = or i64 %76, %72
  br label %78

78:                                               ; preds = %68, %66, %64
  %79 = phi i64 [ %65, %64 ], [ %67, %66 ], [ %77, %68 ]
  %80 = sext i32 %57 to i64
  %81 = getelementptr inbounds [64 x i64], ptr @FileUpMask, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !52
  %83 = load i64, ptr %51, align 8, !tbaa !52
  %84 = and i64 %83, %82
  %85 = icmp eq i64 %84, 0
  %86 = call noundef i32 @_Z8PopCounty(i64 noundef %63)
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %95, label %88, !prof !65

88:                                               ; preds = %78
  %89 = ashr i32 %57, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !52
  %93 = and i64 %92, %63
  %94 = icmp eq i64 %93, 0
  br label %95

95:                                               ; preds = %88, %78
  %96 = phi i1 [ true, %78 ], [ %94, %88 ]
  %97 = load i64, ptr %47, align 8, !tbaa !52
  %98 = and i64 %97, %79
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %159, label %100, !prof !66

100:                                              ; preds = %95
  %101 = ashr i32 %57, 3
  %102 = add nsw i32 %101, -1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !52
  %106 = and i64 %105, %98
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %159, !prof !67

108:                                              ; preds = %100
  %109 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %103
  %110 = load i64, ptr %109, align 8, !tbaa !52
  %111 = icmp sgt i32 %101, 1
  br i1 %111, label %112, label %118, !prof !68

112:                                              ; preds = %108
  %113 = add nsw i32 %101, -2
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !52
  %117 = or i64 %116, %110
  br label %118

118:                                              ; preds = %112, %108
  %119 = phi i64 [ %117, %112 ], [ %56, %108 ]
  %120 = icmp sgt i32 %101, 2
  br i1 %120, label %121, label %127, !prof !69

121:                                              ; preds = %118
  %122 = add nsw i32 %101, -3
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !52
  %126 = or i64 %125, %119
  br label %127

127:                                              ; preds = %121, %118
  %128 = phi i64 [ %126, %121 ], [ %55, %118 ]
  %129 = and i64 %110, %98
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %143, label %131, !prof !70

131:                                              ; preds = %127
  br i1 %111, label %132, label %159, !prof !71

132:                                              ; preds = %131
  %133 = load i64, ptr %60, align 8, !tbaa !52
  %134 = load i64, ptr %51, align 8, !tbaa !52
  %135 = or i64 %134, %97
  %136 = and i64 %133, %135
  %137 = and i64 %136, %110
  %138 = icmp eq i64 %137, 0
  %139 = and i64 %119, %79
  %140 = and i64 %139, %134
  %141 = icmp ne i64 %140, 0
  %142 = select i1 %141, i1 %138, i1 false, !prof !72
  br label %159

143:                                              ; preds = %127
  %144 = icmp ne i32 %101, 6
  %145 = and i64 %119, %98
  %146 = icmp eq i64 %145, 0
  %147 = select i1 %144, i1 true, i1 %146, !prof !73
  br i1 %147, label %159, label %148, !prof !74

148:                                              ; preds = %143
  %149 = load i64, ptr %60, align 8, !tbaa !52
  %150 = load i64, ptr %51, align 8, !tbaa !52
  %151 = or i64 %150, %97
  %152 = and i64 %149, %151
  %153 = and i64 %152, %119
  %154 = icmp eq i64 %153, 0
  %155 = and i64 %128, %79
  %156 = and i64 %155, %150
  %157 = icmp ne i64 %156, 0
  %158 = select i1 %157, i1 %154, i1 false, !prof !75
  br label %159

159:                                              ; preds = %148, %143, %132, %131, %100, %95
  %160 = phi i64 [ %56, %100 ], [ %119, %143 ], [ %56, %95 ], [ %119, %132 ], [ %119, %131 ], [ %119, %148 ]
  %161 = phi i64 [ %55, %100 ], [ %128, %143 ], [ %55, %95 ], [ %128, %132 ], [ %128, %131 ], [ %128, %148 ]
  %162 = phi i1 [ false, %100 ], [ true, %143 ], [ false, %95 ], [ %142, %132 ], [ false, %131 ], [ %158, %148 ]
  br i1 %85, label %163, label %215, !prof !76

163:                                              ; preds = %159
  %164 = ashr i32 %57, 3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !52
  %168 = load i64, ptr %51, align 8, !tbaa !52
  %169 = and i64 %167, %168
  %170 = and i64 %169, %79
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %178, !prof !77

172:                                              ; preds = %163
  %173 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 4
  %174 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %80
  %175 = load i64, ptr %174, align 8, !tbaa !52
  %176 = load i64, ptr %173, align 8, !tbaa !78
  %177 = or i64 %176, %175
  store i64 %177, ptr %173, align 8, !tbaa !78
  br label %215

178:                                              ; preds = %163
  %179 = add nsw i32 %164, -1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !52
  %183 = and i64 %79, %182
  %184 = and i64 %183, %97
  %185 = call noundef i32 @_Z8PopCounty(i64 noundef %184)
  %186 = load i64, ptr %51, align 8, !tbaa !52
  %187 = load i64, ptr %166, align 8, !tbaa !52
  %188 = and i64 %186, %187
  %189 = and i64 %188, %79
  %190 = call noundef i32 @_Z8PopCounty(i64 noundef %189)
  %191 = load i64, ptr %51, align 8, !tbaa !52
  %192 = load i64, ptr %181, align 8, !tbaa !52
  %193 = and i64 %191, %192
  %194 = and i64 %193, %79
  %195 = call noundef i32 @_Z8PopCounty(i64 noundef %194)
  %196 = add i32 %190, %195
  %197 = sub i32 %185, %196
  %198 = icmp sgt i32 %197, -1
  br i1 %198, label %199, label %215, !prof !79

199:                                              ; preds = %178
  %200 = load i64, ptr %47, align 8, !tbaa !52
  %201 = add nsw i32 %164, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !52
  %205 = and i64 %200, %204
  %206 = and i64 %205, %79
  %207 = call noundef i32 @_Z8PopCounty(i64 noundef %206)
  %208 = load i64, ptr %51, align 8, !tbaa !52
  %209 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %180
  %210 = load i64, ptr %209, align 8, !tbaa !52
  %211 = and i64 %208, %210
  %212 = and i64 %211, %79
  %213 = call noundef i32 @_Z8PopCounty(i64 noundef %212)
  %214 = icmp slt i32 %207, %213
  br label %215

215:                                              ; preds = %199, %178, %172, %159
  %216 = phi i1 [ true, %178 ], [ true, %172 ], [ true, %159 ], [ %214, %199 ]
  br i1 %87, label %224, label %217, !prof !65

217:                                              ; preds = %215
  %218 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  %219 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  %220 = select i1 %85, ptr %219, ptr %218, !prof !80
  %221 = select i1 %85, i32 -10, i32 -5, !prof !80
  %222 = load i32, ptr %220, align 8, !tbaa !81
  %223 = add nsw i32 %222, %221
  store i32 %223, ptr %220, align 8, !tbaa !81
  br label %224

224:                                              ; preds = %217, %215
  br i1 %99, label %225, label %228, !prof !66

225:                                              ; preds = %224
  %226 = select i1 %85, ptr %53, ptr %52, !prof !82
  %227 = select i1 %85, i32 -20, i32 -8, !prof !82
  br label %234

228:                                              ; preds = %224
  br i1 %162, label %229, label %239, !prof !83

229:                                              ; preds = %228
  %230 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  %231 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  %232 = select i1 %85, ptr %231, ptr %230, !prof !84
  %233 = select i1 %85, i32 -16, i32 -6, !prof !84
  br label %234

234:                                              ; preds = %229, %225
  %235 = phi ptr [ %226, %225 ], [ %232, %229 ]
  %236 = phi i32 [ %227, %225 ], [ %233, %229 ]
  %237 = load i32, ptr %235, align 8, !tbaa !81
  %238 = add nsw i32 %237, %236
  store i32 %238, ptr %235, align 8, !tbaa !81
  br label %239

239:                                              ; preds = %234, %228
  br i1 %216, label %253, label %240, !prof !85

240:                                              ; preds = %239
  %241 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  %242 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 10
  %243 = ashr i32 %57, 3
  %244 = add nsw i32 %243, -1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [6 x i32], ptr @_ZL11w_candidate, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !40
  %248 = select i1 %96, ptr %242, ptr %241, !prof !86
  %249 = zext i1 %96 to i32
  %250 = shl nsw i32 %247, %249
  %251 = load i32, ptr %248, align 8, !tbaa !81
  %252 = add nsw i32 %251, %250
  store i32 %252, ptr %248, align 8, !tbaa !81
  br label %253

253:                                              ; preds = %240, %239
  %254 = icmp sgt i32 %57, 15
  br i1 %254, label %255, label %353, !prof !87

255:                                              ; preds = %253
  %256 = icmp eq i32 %58, 0
  br i1 %256, label %306, label %257, !prof !88

257:                                              ; preds = %255
  %258 = add nsw i32 %57, -9
  %259 = and i32 %258, 7
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %260
  %262 = load i64, ptr %261, align 8, !tbaa !52
  %263 = load i64, ptr %47, align 8, !tbaa !52
  %264 = load i64, ptr %51, align 8, !tbaa !52
  %265 = or i64 %264, %263
  %266 = and i64 %265, %262
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %304, !prof !89

268:                                              ; preds = %257
  switch i32 %259, label %273 [
    i32 0, label %269
    i32 7, label %271
  ], !prof !90

269:                                              ; preds = %268
  %270 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !52
  br label %283

271:                                              ; preds = %268
  %272 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !52
  br label %283

273:                                              ; preds = %268
  %274 = add nsw i32 %259, -1
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !52
  %278 = add nuw nsw i32 %259, 1
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %279
  %281 = load i64, ptr %280, align 8, !tbaa !52
  %282 = or i64 %281, %277
  br label %283

283:                                              ; preds = %273, %271, %269
  %284 = phi i64 [ %270, %269 ], [ %272, %271 ], [ %282, %273 ]
  %285 = ashr i32 %258, 3
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !52
  %289 = and i64 %284, %288
  %290 = and i64 %289, %264
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %304, !prof !91

292:                                              ; preds = %283
  %293 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 6
  %294 = load i64, ptr %293, align 8, !tbaa !92
  %295 = and i64 %294, %262
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %300, label %297, !prof !93

297:                                              ; preds = %292
  %298 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 8
  %299 = load i64, ptr %298, align 8, !tbaa !94
  br label %300

300:                                              ; preds = %292, %297
  %301 = phi i64 [ %299, %297 ], [ %294, %292 ]
  %302 = phi ptr [ %298, %297 ], [ %293, %292 ]
  %303 = or i64 %301, %262
  store i64 %303, ptr %302, align 8, !tbaa !52
  br label %304

304:                                              ; preds = %300, %283, %257
  %305 = icmp eq i32 %58, 7
  br i1 %305, label %353, label %306, !prof !95

306:                                              ; preds = %304, %255
  %307 = add nsw i32 %57, -7
  %308 = and i32 %307, 7
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %309
  %311 = load i64, ptr %310, align 8, !tbaa !52
  %312 = load i64, ptr %47, align 8, !tbaa !52
  %313 = load i64, ptr %51, align 8, !tbaa !52
  %314 = or i64 %313, %312
  %315 = and i64 %314, %311
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %353, !prof !96

317:                                              ; preds = %306
  switch i32 %308, label %322 [
    i32 0, label %318
    i32 7, label %320
  ], !prof !97

318:                                              ; preds = %317
  %319 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !52
  br label %332

320:                                              ; preds = %317
  %321 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !52
  br label %332

322:                                              ; preds = %317
  %323 = add nsw i32 %308, -1
  %324 = zext nneg i32 %323 to i64
  %325 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %324
  %326 = load i64, ptr %325, align 8, !tbaa !52
  %327 = add nuw nsw i32 %308, 1
  %328 = zext nneg i32 %327 to i64
  %329 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %328
  %330 = load i64, ptr %329, align 8, !tbaa !52
  %331 = or i64 %330, %326
  br label %332

332:                                              ; preds = %322, %320, %318
  %333 = phi i64 [ %319, %318 ], [ %321, %320 ], [ %331, %322 ]
  %334 = ashr i32 %307, 3
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !52
  %338 = and i64 %333, %337
  %339 = and i64 %338, %313
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %353, !prof !98

341:                                              ; preds = %332
  %342 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 6
  %343 = load i64, ptr %342, align 8, !tbaa !92
  %344 = and i64 %343, %311
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %349, label %346, !prof !99

346:                                              ; preds = %341
  %347 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 8
  %348 = load i64, ptr %347, align 8, !tbaa !94
  br label %349

349:                                              ; preds = %341, %346
  %350 = phi i64 [ %348, %346 ], [ %343, %341 ]
  %351 = phi ptr [ %347, %346 ], [ %342, %341 ]
  %352 = or i64 %350, %311
  store i64 %352, ptr %351, align 8, !tbaa !52
  br label %353

353:                                              ; preds = %349, %332, %306, %304, %253
  %354 = load i64, ptr %2, align 8, !tbaa !52
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %54, !prof !100, !llvm.loop !101

356:                                              ; preds = %353, %46
  %357 = phi i64 [ undef, %46 ], [ %160, %353 ]
  %358 = phi i64 [ undef, %46 ], [ %161, %353 ]
  %359 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %360 = load i64, ptr %359, align 8, !tbaa !52
  store i64 %360, ptr %2, align 8, !tbaa !52
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %667, label %362, !prof !63

362:                                              ; preds = %356
  %363 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 7
  %364 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 7
  br label %365

365:                                              ; preds = %362, %664
  %366 = phi i64 [ %358, %362 ], [ %472, %664 ]
  %367 = phi i64 [ %357, %362 ], [ %471, %664 ]
  %368 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %2)
  %369 = and i32 %368, 7
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %370
  %372 = load i64, ptr %371, align 8, !tbaa !52
  %373 = load i64, ptr %359, align 8, !tbaa !52
  %374 = and i64 %373, %372
  switch i32 %369, label %379 [
    i32 0, label %375
    i32 7, label %377
  ], !prof !102

375:                                              ; preds = %365
  %376 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !52
  br label %389

377:                                              ; preds = %365
  %378 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !52
  br label %389

379:                                              ; preds = %365
  %380 = add nsw i32 %369, -1
  %381 = zext nneg i32 %380 to i64
  %382 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !52
  %384 = add nuw nsw i32 %369, 1
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %385
  %387 = load i64, ptr %386, align 8, !tbaa !52
  %388 = or i64 %387, %383
  br label %389

389:                                              ; preds = %379, %377, %375
  %390 = phi i64 [ %376, %375 ], [ %378, %377 ], [ %388, %379 ]
  %391 = sext i32 %368 to i64
  %392 = getelementptr inbounds [64 x i64], ptr @FileDownMask, i64 0, i64 %391
  %393 = load i64, ptr %392, align 8, !tbaa !52
  %394 = load i64, ptr %47, align 8, !tbaa !52
  %395 = and i64 %394, %393
  %396 = icmp eq i64 %395, 0
  %397 = call noundef i32 @_Z8PopCounty(i64 noundef %374)
  %398 = icmp slt i32 %397, 2
  br i1 %398, label %406, label %399, !prof !103

399:                                              ; preds = %389
  %400 = ashr i32 %368, 3
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !52
  %404 = and i64 %403, %374
  %405 = icmp eq i64 %404, 0
  br label %406

406:                                              ; preds = %399, %389
  %407 = phi i1 [ true, %389 ], [ %405, %399 ]
  %408 = load i64, ptr %359, align 8, !tbaa !52
  %409 = and i64 %408, %390
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %470, label %411, !prof !104

411:                                              ; preds = %406
  %412 = ashr i32 %368, 3
  %413 = add nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %414
  %416 = load i64, ptr %415, align 8, !tbaa !52
  %417 = and i64 %416, %409
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %470, !prof !105

419:                                              ; preds = %411
  %420 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %414
  %421 = load i64, ptr %420, align 8, !tbaa !52
  %422 = icmp slt i32 %412, 6
  br i1 %422, label %423, label %429, !prof !106

423:                                              ; preds = %419
  %424 = add nsw i32 %412, 2
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %425
  %427 = load i64, ptr %426, align 8, !tbaa !52
  %428 = or i64 %427, %421
  br label %429

429:                                              ; preds = %423, %419
  %430 = phi i64 [ %428, %423 ], [ %367, %419 ]
  %431 = icmp slt i32 %412, 5
  br i1 %431, label %432, label %438, !prof !107

432:                                              ; preds = %429
  %433 = add nsw i32 %412, 3
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %434
  %436 = load i64, ptr %435, align 8, !tbaa !52
  %437 = or i64 %436, %430
  br label %438

438:                                              ; preds = %432, %429
  %439 = phi i64 [ %437, %432 ], [ %366, %429 ]
  %440 = and i64 %421, %409
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %454, label %442, !prof !108

442:                                              ; preds = %438
  br i1 %422, label %443, label %470, !prof !109

443:                                              ; preds = %442
  %444 = load i64, ptr %371, align 8, !tbaa !52
  %445 = load i64, ptr %47, align 8, !tbaa !52
  %446 = or i64 %445, %408
  %447 = and i64 %444, %446
  %448 = and i64 %447, %421
  %449 = icmp eq i64 %448, 0
  %450 = and i64 %430, %390
  %451 = and i64 %450, %445
  %452 = icmp ne i64 %451, 0
  %453 = select i1 %452, i1 %449, i1 false, !prof !110
  br label %470

454:                                              ; preds = %438
  %455 = icmp ne i32 %412, 1
  %456 = and i64 %430, %409
  %457 = icmp eq i64 %456, 0
  %458 = select i1 %455, i1 true, i1 %457, !prof !111
  br i1 %458, label %470, label %459, !prof !112

459:                                              ; preds = %454
  %460 = load i64, ptr %371, align 8, !tbaa !52
  %461 = load i64, ptr %47, align 8, !tbaa !52
  %462 = or i64 %461, %408
  %463 = and i64 %460, %462
  %464 = and i64 %463, %430
  %465 = icmp eq i64 %464, 0
  %466 = and i64 %408, %390
  %467 = and i64 %466, %439
  %468 = icmp ne i64 %467, 0
  %469 = select i1 %468, i1 %465, i1 false, !prof !113
  br label %470

470:                                              ; preds = %459, %454, %443, %442, %411, %406
  %471 = phi i64 [ %367, %411 ], [ %430, %454 ], [ %367, %406 ], [ %430, %443 ], [ %430, %442 ], [ %430, %459 ]
  %472 = phi i64 [ %366, %411 ], [ %439, %454 ], [ %366, %406 ], [ %439, %443 ], [ %439, %442 ], [ %439, %459 ]
  %473 = phi i1 [ false, %411 ], [ true, %454 ], [ false, %406 ], [ %453, %443 ], [ false, %442 ], [ %469, %459 ]
  br i1 %396, label %474, label %526, !prof !114

474:                                              ; preds = %470
  %475 = ashr i32 %368, 3
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %476
  %478 = load i64, ptr %477, align 8, !tbaa !52
  %479 = load i64, ptr %47, align 8, !tbaa !52
  %480 = and i64 %478, %479
  %481 = and i64 %480, %390
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %489, !prof !115

483:                                              ; preds = %474
  %484 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 5
  %485 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %391
  %486 = load i64, ptr %485, align 8, !tbaa !52
  %487 = load i64, ptr %484, align 8, !tbaa !116
  %488 = or i64 %487, %486
  store i64 %488, ptr %484, align 8, !tbaa !116
  br label %526

489:                                              ; preds = %474
  %490 = add nsw i32 %475, 1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %491
  %493 = load i64, ptr %492, align 8, !tbaa !52
  %494 = and i64 %390, %493
  %495 = and i64 %494, %408
  %496 = call noundef i32 @_Z8PopCounty(i64 noundef %495)
  %497 = load i64, ptr %47, align 8, !tbaa !52
  %498 = load i64, ptr %477, align 8, !tbaa !52
  %499 = and i64 %497, %498
  %500 = and i64 %499, %390
  %501 = call noundef i32 @_Z8PopCounty(i64 noundef %500)
  %502 = load i64, ptr %47, align 8, !tbaa !52
  %503 = load i64, ptr %492, align 8, !tbaa !52
  %504 = and i64 %502, %503
  %505 = and i64 %504, %390
  %506 = call noundef i32 @_Z8PopCounty(i64 noundef %505)
  %507 = add i32 %501, %506
  %508 = sub i32 %496, %507
  %509 = icmp sgt i32 %508, -1
  br i1 %509, label %510, label %526, !prof !117

510:                                              ; preds = %489
  %511 = load i64, ptr %359, align 8, !tbaa !52
  %512 = add nsw i32 %475, -1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %513
  %515 = load i64, ptr %514, align 8, !tbaa !52
  %516 = and i64 %511, %515
  %517 = and i64 %516, %390
  %518 = call noundef i32 @_Z8PopCounty(i64 noundef %517)
  %519 = load i64, ptr %47, align 8, !tbaa !52
  %520 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %491
  %521 = load i64, ptr %520, align 8, !tbaa !52
  %522 = and i64 %519, %521
  %523 = and i64 %522, %390
  %524 = call noundef i32 @_Z8PopCounty(i64 noundef %523)
  %525 = icmp slt i32 %518, %524
  br label %526

526:                                              ; preds = %510, %489, %483, %470
  %527 = phi i1 [ true, %489 ], [ true, %483 ], [ true, %470 ], [ %525, %510 ]
  br i1 %398, label %535, label %528, !prof !103

528:                                              ; preds = %526
  %529 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %530 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %531 = select i1 %396, ptr %530, ptr %529, !prof !118
  %532 = select i1 %396, i32 10, i32 5, !prof !118
  %533 = load i32, ptr %531, align 4, !tbaa !119
  %534 = add nsw i32 %533, %532
  store i32 %534, ptr %531, align 4, !tbaa !119
  br label %535

535:                                              ; preds = %528, %526
  br i1 %410, label %536, label %541, !prof !104

536:                                              ; preds = %535
  %537 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %538 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %539 = select i1 %396, ptr %538, ptr %537, !prof !120
  %540 = select i1 %396, i32 20, i32 8, !prof !120
  br label %547

541:                                              ; preds = %535
  br i1 %473, label %542, label %552, !prof !121

542:                                              ; preds = %541
  %543 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %544 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %545 = select i1 %396, ptr %544, ptr %543, !prof !122
  %546 = select i1 %396, i32 16, i32 6, !prof !122
  br label %547

547:                                              ; preds = %542, %536
  %548 = phi ptr [ %539, %536 ], [ %545, %542 ]
  %549 = phi i32 [ %540, %536 ], [ %546, %542 ]
  %550 = load i32, ptr %548, align 4, !tbaa !119
  %551 = add nsw i32 %550, %549
  store i32 %551, ptr %548, align 4, !tbaa !119
  br label %552

552:                                              ; preds = %547, %541
  br i1 %527, label %566, label %553, !prof !123

553:                                              ; preds = %552
  %554 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %555 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 11
  %556 = ashr i32 %368, 3
  %557 = sub nsw i32 6, %556
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [6 x i32], ptr @_ZL11w_candidate, i64 0, i64 %558
  %560 = load i32, ptr %559, align 4, !tbaa !40
  %561 = select i1 %407, ptr %555, ptr %554, !prof !124
  %562 = zext i1 %407 to i32
  %563 = shl nsw i32 %560, %562
  %564 = load i32, ptr %561, align 4, !tbaa !119
  %565 = sub nsw i32 %564, %563
  store i32 %565, ptr %561, align 4, !tbaa !119
  br label %566

566:                                              ; preds = %553, %552
  %567 = icmp slt i32 %368, 48
  br i1 %567, label %568, label %664, !prof !125

568:                                              ; preds = %566
  %569 = icmp eq i32 %369, 0
  br i1 %569, label %618, label %570, !prof !126

570:                                              ; preds = %568
  %571 = add nsw i32 %368, 7
  %572 = and i32 %571, 7
  %573 = sext i32 %571 to i64
  %574 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %573
  %575 = load i64, ptr %574, align 8, !tbaa !52
  %576 = load i64, ptr %47, align 8, !tbaa !52
  %577 = load i64, ptr %359, align 8, !tbaa !52
  %578 = or i64 %577, %576
  %579 = and i64 %578, %575
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %616, !prof !127

581:                                              ; preds = %570
  switch i32 %572, label %586 [
    i32 0, label %582
    i32 7, label %584
  ], !prof !128

582:                                              ; preds = %581
  %583 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !52
  br label %596

584:                                              ; preds = %581
  %585 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !52
  br label %596

586:                                              ; preds = %581
  %587 = add nsw i32 %572, -1
  %588 = zext nneg i32 %587 to i64
  %589 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %588
  %590 = load i64, ptr %589, align 8, !tbaa !52
  %591 = add nuw nsw i32 %572, 1
  %592 = zext nneg i32 %591 to i64
  %593 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %592
  %594 = load i64, ptr %593, align 8, !tbaa !52
  %595 = or i64 %594, %590
  br label %596

596:                                              ; preds = %586, %584, %582
  %597 = phi i64 [ %583, %582 ], [ %585, %584 ], [ %595, %586 ]
  %598 = ashr i32 %571, 3
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %599
  %601 = load i64, ptr %600, align 8, !tbaa !52
  %602 = and i64 %597, %601
  %603 = and i64 %602, %576
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %605, label %616, !prof !129

605:                                              ; preds = %596
  %606 = load i64, ptr %363, align 8, !tbaa !130
  %607 = and i64 %606, %575
  %608 = icmp eq i64 %607, 0
  br i1 %608, label %612, label %609, !prof !131

609:                                              ; preds = %605
  %610 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 9
  %611 = load i64, ptr %610, align 8, !tbaa !132
  br label %612

612:                                              ; preds = %605, %609
  %613 = phi i64 [ %611, %609 ], [ %606, %605 ]
  %614 = phi ptr [ %610, %609 ], [ %363, %605 ]
  %615 = or i64 %613, %575
  store i64 %615, ptr %614, align 8, !tbaa !52
  br label %616

616:                                              ; preds = %612, %596, %570
  %617 = icmp eq i32 %369, 7
  br i1 %617, label %664, label %618, !prof !133

618:                                              ; preds = %616, %568
  %619 = add nsw i32 %368, 9
  %620 = and i32 %619, 7
  %621 = sext i32 %619 to i64
  %622 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %621
  %623 = load i64, ptr %622, align 8, !tbaa !52
  %624 = load i64, ptr %47, align 8, !tbaa !52
  %625 = load i64, ptr %359, align 8, !tbaa !52
  %626 = or i64 %625, %624
  %627 = and i64 %626, %623
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %629, label %664, !prof !134

629:                                              ; preds = %618
  switch i32 %620, label %634 [
    i32 0, label %630
    i32 7, label %632
  ], !prof !135

630:                                              ; preds = %629
  %631 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !52
  br label %644

632:                                              ; preds = %629
  %633 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !52
  br label %644

634:                                              ; preds = %629
  %635 = add nsw i32 %620, -1
  %636 = zext nneg i32 %635 to i64
  %637 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %636
  %638 = load i64, ptr %637, align 8, !tbaa !52
  %639 = add nuw nsw i32 %620, 1
  %640 = zext nneg i32 %639 to i64
  %641 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %640
  %642 = load i64, ptr %641, align 8, !tbaa !52
  %643 = or i64 %642, %638
  br label %644

644:                                              ; preds = %634, %632, %630
  %645 = phi i64 [ %631, %630 ], [ %633, %632 ], [ %643, %634 ]
  %646 = ashr i32 %619, 3
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %647
  %649 = load i64, ptr %648, align 8, !tbaa !52
  %650 = and i64 %645, %649
  %651 = and i64 %650, %624
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %653, label %664, !prof !136

653:                                              ; preds = %644
  %654 = load i64, ptr %364, align 8, !tbaa !130
  %655 = and i64 %654, %623
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %660, label %657, !prof !137

657:                                              ; preds = %653
  %658 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 9
  %659 = load i64, ptr %658, align 8, !tbaa !132
  br label %660

660:                                              ; preds = %653, %657
  %661 = phi i64 [ %659, %657 ], [ %654, %653 ]
  %662 = phi ptr [ %658, %657 ], [ %364, %653 ]
  %663 = or i64 %661, %623
  store i64 %663, ptr %662, align 8, !tbaa !52
  br label %664

664:                                              ; preds = %660, %644, %618, %616, %566
  %665 = load i64, ptr %2, align 8, !tbaa !52
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %667, label %365, !prof !138, !llvm.loop !139

667:                                              ; preds = %664, %356
  %668 = load i64, ptr @WhiteStrongSquareMask, align 8, !tbaa !52
  %669 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 6
  %670 = load i64, ptr %669, align 8, !tbaa !92
  %671 = and i64 %670, %668
  store i64 %671, ptr %669, align 8, !tbaa !92
  %672 = load i64, ptr @BlackStrongSquareMask, align 8, !tbaa !52
  %673 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 7
  %674 = load i64, ptr %673, align 8, !tbaa !130
  %675 = and i64 %674, %672
  store i64 %675, ptr %673, align 8, !tbaa !130
  %676 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 8
  %677 = load i64, ptr %676, align 8, !tbaa !94
  %678 = and i64 %677, %668
  store i64 %678, ptr %676, align 8, !tbaa !94
  %679 = getelementptr inbounds [8 x [16384 x %struct.pawntt_t]], ptr @_ZL6PawnTT, i64 0, i64 %7, i64 %5, i32 9
  %680 = load i64, ptr %679, align 8, !tbaa !132
  %681 = and i64 %680, %672
  store i64 %681, ptr %679, align 8, !tbaa !132
  %682 = xor i64 %678, %671
  store i64 %682, ptr %669, align 8, !tbaa !92
  %683 = xor i64 %681, %675
  store i64 %683, ptr %673, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %684 = load i64, ptr %3, align 8, !tbaa !45
  store i64 %684, ptr %8, align 8, !tbaa !49
  br label %685

685:                                              ; preds = %667, %1
  ret ptr %8
}

declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z8PopCounty(i64 noundef) local_unnamed_addr #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_Z16static_pawn_evalP7state_t, ptr @_Z15FindFirstRemovePy, i64 43240564}
!36 = !{ptr @_Z16static_pawn_evalP7state_t, ptr @_Z8PopCounty, i64 81033519}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"function_entry_count", i64 288009370}
!45 = !{!46, !47, i64 488}
!46 = !{!"_ZTS7state_t", !41, i64 0, !42, i64 4, !47, i64 264, !47, i64 272, !47, i64 280, !42, i64 288, !41, i64 392, !41, i64 396, !42, i64 400, !41, i64 452, !41, i64 456, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !47, i64 480, !47, i64 488, !42, i64 496, !42, i64 2544, !42, i64 2800, !42, i64 3056, !47, i64 4080, !47, i64 4088, !41, i64 4096, !42, i64 4100, !41, i64 4356, !41, i64 4360, !41, i64 4364, !41, i64 4368, !41, i64 4372, !41, i64 4376, !41, i64 4380, !41, i64 4384, !41, i64 4388, !41, i64 4392, !42, i64 4400}
!47 = !{!"long long", !42, i64 0}
!48 = !{!46, !41, i64 0}
!49 = !{!50, !47, i64 0}
!50 = !{!"_ZTS8pawntt_t", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !41, i64 80, !41, i64 84}
!51 = !{!"branch_weights", i32 283851348, i32 4158022}
!52 = !{!47, !47, i64 0}
!53 = !{!"branch_weights", i32 12786181, i32 20477995}
!54 = !{!50, !47, i64 16}
!55 = !{!"branch_weights", i32 12575817, i32 20688359}
!56 = !{!50, !47, i64 24}
!57 = !{!"branch_weights", i32 5851727, i32 27412449}
!58 = !{!50, !47, i64 8}
!59 = !{!"branch_weights", i32 4158022, i32 29106154}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"branch_weights", i32 1, i32 4158021}
!64 = !{!"branch_weights", i32 14952165, i32 3117531, i32 3436769}
!65 = !{!"branch_weights", i32 19458094, i32 2048371}
!66 = !{!"branch_weights", i32 5336367, i32 16170098}
!67 = !{!"branch_weights", i32 4954427, i32 11215671}
!68 = !{!"branch_weights", i32 4954427, i32 0}
!69 = !{!"branch_weights", i32 4948051, i32 6376}
!70 = !{!"branch_weights", i32 1187544, i32 3766883}
!71 = !{!"branch_weights", i32 3766883, i32 0}
!72 = !{!"branch_weights", i32 455529, i32 3311354}
!73 = !{!"branch_weights", i32 465767, i32 721777}
!74 = !{!"branch_weights", i32 629195, i32 558349}
!75 = !{!"branch_weights", i32 86744, i32 471605}
!76 = !{!"branch_weights", i32 7451613, i32 14054852}
!77 = !{!"branch_weights", i32 2385482, i32 5066131}
!78 = !{!50, !47, i64 32}
!79 = !{!"branch_weights", i32 1280545, i32 3785586}
!80 = !{!"branch_weights", i32 857749, i32 1190622}
!81 = !{!50, !41, i64 80}
!82 = !{!"branch_weights", i32 2195667, i32 3140700}
!83 = !{!"branch_weights", i32 1075117, i32 15094981}
!84 = !{!"branch_weights", i32 465706, i32 609411}
!85 = !{!"branch_weights", i32 20358820, i32 1147645}
!86 = !{!"branch_weights", i32 1112110, i32 35535}
!87 = !{!"branch_weights", i32 21249985, i32 256480}
!88 = !{!"branch_weights", i32 3116176, i32 18133809}
!89 = !{!"branch_weights", i32 15472827, i32 2660982}
!90 = !{!"branch_weights", i32 13173491, i32 2299336, i32 0}
!91 = !{!"branch_weights", i32 4059712, i32 11413115}
!92 = !{!50, !47, i64 48}
!93 = !{!"branch_weights", i32 3754599, i32 305113}
!94 = !{!50, !47, i64 64}
!95 = !{!"branch_weights", i32 3432497, i32 14701312}
!96 = !{!"branch_weights", i32 14030340, i32 3787148}
!97 = !{!"branch_weights", i32 11468649, i32 0, i32 2561691}
!98 = !{!"branch_weights", i32 3716818, i32 10313522}
!99 = !{!"branch_weights", i32 3716818, i32 0}
!100 = !{!"branch_weights", i32 4158021, i32 17348444}
!101 = distinct !{!101, !61, !62}
!102 = !{!"branch_weights", i32 14799256, i32 3629569, i32 3305274}
!103 = !{!"branch_weights", i32 19661103, i32 2072996}
!104 = !{!"branch_weights", i32 4094650, i32 17639449}
!105 = !{!"branch_weights", i32 4237611, i32 13401838}
!106 = !{!"branch_weights", i32 4237611, i32 0}
!107 = !{!"branch_weights", i32 4234576, i32 3035}
!108 = !{!"branch_weights", i32 1069584, i32 3168027}
!109 = !{!"branch_weights", i32 3168027, i32 0}
!110 = !{!"branch_weights", i32 600853, i32 2567174}
!111 = !{!"branch_weights", i32 385318, i32 684266}
!112 = !{!"branch_weights", i32 484916, i32 584668}
!113 = !{!"branch_weights", i32 584668, i32 0}
!114 = !{!"branch_weights", i32 7744898, i32 13989201}
!115 = !{!"branch_weights", i32 2052042, i32 5692856}
!116 = !{!50, !47, i64 40}
!117 = !{!"branch_weights", i32 1477452, i32 4215404}
!118 = !{!"branch_weights", i32 1018479, i32 1054517}
!119 = !{!50, !41, i64 84}
!120 = !{!"branch_weights", i32 2025695, i32 2068955}
!121 = !{!"branch_weights", i32 1482786, i32 16156663}
!122 = !{!"branch_weights", i32 690726, i32 792060}
!123 = !{!"branch_weights", i32 20361162, i32 1372937}
!124 = !{!"branch_weights", i32 1338661, i32 34276}
!125 = !{!"branch_weights", i32 21618473, i32 115626}
!126 = !{!"branch_weights", i32 3622097, i32 17996376}
!127 = !{!"branch_weights", i32 14444126, i32 3552250}
!128 = !{!"branch_weights", i32 12201194, i32 2242932, i32 0}
!129 = !{!"branch_weights", i32 4678169, i32 9765957}
!130 = !{!50, !47, i64 56}
!131 = !{!"branch_weights", i32 4090888, i32 587281}
!132 = !{!50, !47, i64 72}
!133 = !{!"branch_weights", i32 3304632, i32 14691744}
!134 = !{!"branch_weights", i32 15829249, i32 2484592}
!135 = !{!"branch_weights", i32 13537630, i32 0, i32 2291619}
!136 = !{!"branch_weights", i32 4301425, i32 11527824}
!137 = !{!"branch_weights", i32 4301425, i32 0}
!138 = !{!"branch_weights", i32 4158021, i32 17576078}
!139 = distinct !{!139, !61, !62}
