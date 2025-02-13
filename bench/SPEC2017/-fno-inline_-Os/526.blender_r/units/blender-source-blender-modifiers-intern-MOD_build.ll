; ModuleID = 'blender/source/blender/modifiers/intern/MOD_build.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BuildModifierData = type { %struct.ModifierData, float, float, i16, i16, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@modifierType_Build = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Build\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"BuildModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, i32 3, i32 3, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr null, ptr @dependsOnTime, ptr null, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [18 x i8] c"build ve apply gh\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"build ed apply gh\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"build modifier vertMap\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"build modifier edgeMap\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"build modifier faceMap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = alloca %struct.MVert, align 4
  %6 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str) #8
  %7 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.1) #8
  %8 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.1) #8
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = tail call i32 %10(ptr noundef %2) #8
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = tail call i32 %13(ptr noundef %2) #8
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 %16(ptr noundef %2) #8
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call ptr %19(ptr noundef %2) #8
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = tail call ptr %22(ptr noundef %2) #8
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = tail call ptr %25(ptr noundef %2) #8
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = tail call ptr %28(ptr noundef %2) #8
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %31 = sext i32 %11 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.2) #8
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %35 = sext i32 %14 to i64
  %36 = shl nsw i64 %35, 2
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @.str.3) #8
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %39 = sext i32 %17 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.4) #8
  tail call void @range_vn_i(ptr noundef %33, i32 noundef %11, i32 noundef 0) #8
  tail call void @range_vn_i(ptr noundef %37, i32 noundef %14, i32 noundef 0) #8
  tail call void @range_vn_i(ptr noundef %41, i32 noundef %17, i32 noundef 0) #8
  %42 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = tail call float @BKE_scene_frame_get(ptr noundef %43) #8
  %45 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 1
  %46 = load float, ptr %45, align 8, !tbaa !53
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 2
  %49 = load float, ptr %48, align 4, !tbaa !56
  %50 = fdiv float %47, %49
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %55, label %52

52:                                               ; preds = %4
  %53 = fcmp ogt float %50, 1.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %4, %52, %54
  %56 = phi float [ 1.000000e+00, %54 ], [ %50, %52 ], [ 0.000000e+00, %4 ]
  %57 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 3
  %58 = load i16, ptr %57, align 8, !tbaa !57
  %59 = and i16 %58, 2
  %60 = icmp eq i16 %59, 0
  %61 = fsub float 1.000000e+00, %56
  %62 = select i1 %60, float %56, float %61
  %63 = sitofp i32 %17 to float
  %64 = fmul float %62, %63
  %65 = fptosi float %64 to i32
  %66 = sitofp i32 %14 to float
  %67 = fmul float %62, %66
  %68 = fptosi float %67 to i32
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %147, label %70

70:                                               ; preds = %55
  %71 = and i16 %58, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !58
  tail call void @BLI_array_randomize(ptr noundef %41, i32 noundef 4, i32 noundef %17, i32 noundef %75) #8
  br label %76

76:                                               ; preds = %73, %70
  %77 = icmp sgt i32 %65, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = zext nneg i32 %65 to i64
  br label %85

80:                                               ; preds = %119, %76
  %81 = phi i32 [ 0, %76 ], [ %121, %119 ]
  %82 = icmp sgt i32 %14, 0
  br i1 %82, label %83, label %233

83:                                               ; preds = %80
  %84 = zext nneg i32 %14 to i64
  br label %124

85:                                               ; preds = %78, %119
  %86 = phi i64 [ 0, %78 ], [ %122, %119 ]
  %87 = phi i32 [ 0, %78 ], [ %121, %119 ]
  %88 = getelementptr inbounds i32, ptr %41, i64 %86
  %89 = load i32, ptr %88, align 4, !tbaa !59
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %90, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !60
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %90
  %96 = load i32, ptr %95, align 4, !tbaa !62
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.MLoop, ptr %23, i64 %97
  br label %99

99:                                               ; preds = %94, %114
  %100 = phi i32 [ %115, %114 ], [ 0, %94 ]
  %101 = phi ptr [ %116, %114 ], [ %98, %94 ]
  %102 = load i32, ptr %101, align 4, !tbaa !63
  %103 = zext i32 %102 to i64
  %104 = inttoptr i64 %103 to ptr
  %105 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %104) #8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i32, ptr %101, align 4, !tbaa !63
  %109 = zext i32 %108 to i64
  %110 = inttoptr i64 %109 to ptr
  %111 = tail call i32 @BLI_ghash_size(ptr noundef %6) #8
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %110, ptr noundef %113) #8
  br label %114

114:                                              ; preds = %99, %107
  %115 = add nuw nsw i32 %100, 1
  %116 = getelementptr inbounds %struct.MLoop, ptr %101, i64 1
  %117 = load i32, ptr %91, align 4, !tbaa !60
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %99, label %119, !llvm.loop !65

119:                                              ; preds = %114, %85
  %120 = phi i32 [ %92, %85 ], [ %117, %114 ]
  %121 = add nsw i32 %120, %87
  %122 = add nuw nsw i64 %86, 1
  %123 = icmp eq i64 %122, %79
  br i1 %123, label %80, label %85, !llvm.loop !67

124:                                              ; preds = %83, %144
  %125 = phi i64 [ 0, %83 ], [ %145, %144 ]
  %126 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !68
  %128 = zext i32 %127 to i64
  %129 = inttoptr i64 %128 to ptr
  %130 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %129) #8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %125, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !70
  %135 = zext i32 %134 to i64
  %136 = inttoptr i64 %135 to ptr
  %137 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %136) #8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = tail call i32 @BLI_ghash_size(ptr noundef %7) #8
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to ptr
  %143 = inttoptr i64 %125 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %7, ptr noundef %142, ptr noundef %143) #8
  tail call void @BLI_ghash_insert(ptr noundef %8, ptr noundef %143, ptr noundef %142) #8
  br label %144

144:                                              ; preds = %139, %132, %124
  %145 = add nuw nsw i64 %125, 1
  %146 = icmp eq i64 %145, %84
  br i1 %146, label %233, label %124, !llvm.loop !71

147:                                              ; preds = %55
  %148 = icmp eq i32 %68, 0
  br i1 %148, label %211, label %149

149:                                              ; preds = %147
  %150 = and i16 %58, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !58
  tail call void @BLI_array_randomize(ptr noundef %37, i32 noundef 4, i32 noundef %14, i32 noundef %154) #8
  br label %155

155:                                              ; preds = %152, %149
  %156 = icmp sgt i32 %68, 0
  br i1 %156, label %157, label %233

157:                                              ; preds = %155
  %158 = zext nneg i32 %68 to i64
  br label %162

159:                                              ; preds = %194
  br i1 %156, label %160, label %233

160:                                              ; preds = %159
  %161 = zext nneg i32 %68 to i64
  br label %197

162:                                              ; preds = %157, %194
  %163 = phi i64 [ 0, %157 ], [ %195, %194 ]
  %164 = getelementptr inbounds i32, ptr %37, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !59
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !68
  %169 = zext i32 %168 to i64
  %170 = inttoptr i64 %169 to ptr
  %171 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %170) #8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %162
  %174 = load i32, ptr %167, align 4, !tbaa !68
  %175 = zext i32 %174 to i64
  %176 = inttoptr i64 %175 to ptr
  %177 = tail call i32 @BLI_ghash_size(ptr noundef %6) #8
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %176, ptr noundef %179) #8
  br label %180

180:                                              ; preds = %173, %162
  %181 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %166, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !70
  %183 = zext i32 %182 to i64
  %184 = inttoptr i64 %183 to ptr
  %185 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %184) #8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = load i32, ptr %181, align 4, !tbaa !70
  %189 = zext i32 %188 to i64
  %190 = inttoptr i64 %189 to ptr
  %191 = tail call i32 @BLI_ghash_size(ptr noundef %6) #8
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %190, ptr noundef %193) #8
  br label %194

194:                                              ; preds = %180, %187
  %195 = add nuw nsw i64 %163, 1
  %196 = icmp eq i64 %195, %158
  br i1 %196, label %159, label %162, !llvm.loop !72

197:                                              ; preds = %160, %197
  %198 = phi i64 [ 0, %160 ], [ %209, %197 ]
  %199 = tail call i32 @BLI_ghash_size(ptr noundef %7) #8
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to ptr
  %202 = getelementptr inbounds i32, ptr %37, i64 %198
  %203 = load i32, ptr %202, align 4, !tbaa !59
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %7, ptr noundef %201, ptr noundef %205) #8
  %206 = load i32, ptr %202, align 4, !tbaa !59
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %8, ptr noundef %208, ptr noundef %201) #8
  %209 = add nuw nsw i64 %198, 1
  %210 = icmp eq i64 %209, %161
  br i1 %210, label %233, label %197, !llvm.loop !73

211:                                              ; preds = %147
  %212 = sitofp i32 %11 to float
  %213 = fmul float %62, %212
  %214 = fptosi float %213 to i32
  %215 = and i16 %58, 1
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 5
  %219 = load i32, ptr %218, align 4, !tbaa !58
  tail call void @BLI_array_randomize(ptr noundef %33, i32 noundef 4, i32 noundef %11, i32 noundef %219) #8
  br label %220

220:                                              ; preds = %217, %211
  %221 = icmp sgt i32 %214, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %220
  %223 = zext nneg i32 %214 to i64
  br label %224

224:                                              ; preds = %222, %224
  %225 = phi i64 [ 0, %222 ], [ %231, %224 ]
  %226 = getelementptr inbounds i32, ptr %33, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !59
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to ptr
  %230 = inttoptr i64 %225 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %229, ptr noundef %230) #8
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, %223
  br i1 %232, label %233, label %224, !llvm.loop !74

233:                                              ; preds = %144, %197, %224, %155, %80, %159, %220
  %234 = phi i32 [ 0, %220 ], [ 0, %159 ], [ %81, %80 ], [ 0, %155 ], [ 0, %224 ], [ 0, %197 ], [ %81, %144 ]
  %235 = tail call i32 @BLI_ghash_size(ptr noundef %6) #8
  %236 = tail call i32 @BLI_ghash_size(ptr noundef %7) #8
  %237 = tail call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %235, i32 noundef %236, i32 noundef 0, i32 noundef %234, i32 noundef %65) #8
  %238 = tail call ptr @BLI_ghashIterator_new(ptr noundef %6) #8
  %239 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %238) #9, !range !75
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %233, %241
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5)
  %242 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %238) #9
  %243 = ptrtoint ptr %242 to i64
  %244 = trunc i64 %243 to i32
  %245 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %238) #9
  %246 = ptrtoint ptr %245 to i64
  %247 = trunc i64 %246 to i32
  %248 = shl i64 %243, 32
  %249 = ashr exact i64 %248, 32
  %250 = getelementptr inbounds %struct.MVert, ptr %29, i64 %249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %250, i64 20, i1 false), !tbaa.struct !76
  %251 = tail call ptr @CDDM_get_vert(ptr noundef %237, i32 noundef %247) #8
  tail call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %237, i32 noundef %244, i32 noundef %247, i32 noundef 1) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %251, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5)
  tail call void @BLI_ghashIterator_step(ptr noundef %238) #8
  %252 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %238) #9, !range !75
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %241, label %254, !llvm.loop !78

254:                                              ; preds = %241, %233
  tail call void @BLI_ghashIterator_free(ptr noundef %238) #8
  %255 = tail call i32 @BLI_ghash_size(ptr noundef %7) #8
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %289

257:                                              ; preds = %254, %257
  %258 = phi i64 [ %285, %257 ], [ 0, %254 ]
  %259 = inttoptr i64 %258 to ptr
  %260 = tail call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef %259) #8
  %261 = ptrtoint ptr %260 to i64
  %262 = trunc i64 %261 to i32
  %263 = shl i64 %261, 32
  %264 = ashr exact i64 %263, 32
  %265 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa.struct !79
  %267 = getelementptr inbounds i8, ptr %265, i64 4
  %268 = load i32, ptr %267, align 4, !tbaa.struct !81
  %269 = getelementptr inbounds i8, ptr %265, i64 8
  %270 = load i32, ptr %269, align 4
  %271 = trunc i64 %258 to i32
  %272 = tail call ptr @CDDM_get_edge(ptr noundef %237, i32 noundef %271) #8
  %273 = zext i32 %266 to i64
  %274 = inttoptr i64 %273 to ptr
  %275 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %274) #8
  %276 = ptrtoint ptr %275 to i64
  %277 = trunc i64 %276 to i32
  %278 = zext i32 %268 to i64
  %279 = inttoptr i64 %278 to ptr
  %280 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %279) #8
  %281 = ptrtoint ptr %280 to i64
  %282 = trunc i64 %281 to i32
  tail call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %237, i32 noundef %262, i32 noundef %271, i32 noundef 1) #8
  store i32 %277, ptr %272, align 4, !tbaa.struct !79
  %283 = getelementptr inbounds i8, ptr %272, i64 4
  store i32 %282, ptr %283, align 4, !tbaa.struct !81
  %284 = getelementptr inbounds i8, ptr %272, i64 8
  store i32 %270, ptr %284, align 4
  %285 = add nuw nsw i64 %258, 1
  %286 = tail call i32 @BLI_ghash_size(ptr noundef %7) #8
  %287 = sext i32 %286 to i64
  %288 = icmp slt i64 %285, %287
  br i1 %288, label %257, label %289, !llvm.loop !82

289:                                              ; preds = %257, %254
  %290 = tail call ptr @CDDM_get_polys(ptr noundef %237) #8
  %291 = tail call ptr @CDDM_get_loops(ptr noundef %237) #8
  %292 = icmp sgt i32 %65, 0
  br i1 %292, label %293, label %345

293:                                              ; preds = %289
  %294 = zext nneg i32 %65 to i64
  br label %295

295:                                              ; preds = %293, %340
  %296 = phi i64 [ 0, %293 ], [ %343, %340 ]
  %297 = phi i32 [ 0, %293 ], [ %342, %340 ]
  %298 = phi ptr [ %291, %293 ], [ %341, %340 ]
  %299 = getelementptr inbounds i32, ptr %41, i64 %296
  %300 = load i32, ptr %299, align 4, !tbaa !59
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %301
  %303 = getelementptr inbounds %struct.MPoly, ptr %290, i64 %296
  %304 = trunc i64 %296 to i32
  tail call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %237, i32 noundef %300, i32 noundef %304, i32 noundef 1) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %303, ptr noundef nonnull align 4 dereferenceable(12) %302, i64 12, i1 false), !tbaa.struct !83
  store i32 %297, ptr %303, align 4, !tbaa !62
  %305 = load i32, ptr %302, align 4, !tbaa !62
  %306 = getelementptr inbounds %struct.MPoly, ptr %290, i64 %296, i32 1
  %307 = load i32, ptr %306, align 4, !tbaa !60
  tail call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %237, i32 noundef %305, i32 noundef %297, i32 noundef %307) #8
  %308 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %301, i32 1
  %309 = load i32, ptr %308, align 4, !tbaa !60
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %340

311:                                              ; preds = %295
  %312 = load i32, ptr %302, align 4, !tbaa !62
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.MLoop, ptr %23, i64 %313
  br label %315

315:                                              ; preds = %311, %315
  %316 = phi i32 [ %334, %315 ], [ 0, %311 ]
  %317 = phi i32 [ %335, %315 ], [ %297, %311 ]
  %318 = phi ptr [ %337, %315 ], [ %298, %311 ]
  %319 = phi ptr [ %336, %315 ], [ %314, %311 ]
  %320 = load i32, ptr %319, align 4, !tbaa !63
  %321 = zext i32 %320 to i64
  %322 = inttoptr i64 %321 to ptr
  %323 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %322) #8
  %324 = ptrtoint ptr %323 to i64
  %325 = trunc i64 %324 to i32
  store i32 %325, ptr %318, align 4, !tbaa !63
  %326 = getelementptr inbounds %struct.MLoop, ptr %319, i64 0, i32 1
  %327 = load i32, ptr %326, align 4, !tbaa !84
  %328 = zext i32 %327 to i64
  %329 = inttoptr i64 %328 to ptr
  %330 = tail call ptr @BLI_ghash_lookup(ptr noundef %8, ptr noundef %329) #8
  %331 = ptrtoint ptr %330 to i64
  %332 = trunc i64 %331 to i32
  %333 = getelementptr inbounds %struct.MLoop, ptr %318, i64 0, i32 1
  store i32 %332, ptr %333, align 4, !tbaa !84
  %334 = add nuw nsw i32 %316, 1
  %335 = add nsw i32 %317, 1
  %336 = getelementptr inbounds %struct.MLoop, ptr %319, i64 1
  %337 = getelementptr inbounds %struct.MLoop, ptr %318, i64 1
  %338 = load i32, ptr %308, align 4, !tbaa !60
  %339 = icmp slt i32 %334, %338
  br i1 %339, label %315, label %340, !llvm.loop !85

340:                                              ; preds = %315, %295
  %341 = phi ptr [ %298, %295 ], [ %337, %315 ]
  %342 = phi i32 [ %297, %295 ], [ %335, %315 ]
  %343 = add nuw nsw i64 %296, 1
  %344 = icmp eq i64 %343, %294
  br i1 %344, label %345, label %295, !llvm.loop !86

345:                                              ; preds = %340, %289
  tail call void @BLI_ghash_free(ptr noundef %6, ptr noundef null, ptr noundef null) #8
  tail call void @BLI_ghash_free(ptr noundef %7, ptr noundef null, ptr noundef null) #8
  tail call void @BLI_ghash_free(ptr noundef %8, ptr noundef null, ptr noundef null) #8
  %346 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %346(ptr noundef %33) #8
  %347 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %347(ptr noundef %37) #8
  %348 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %348(ptr noundef %41) #8
  %349 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %350 = load i32, ptr %349, align 8, !tbaa !87
  %351 = and i32 %350, 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 16
  %355 = load i32, ptr %354, align 8, !tbaa !87
  %356 = or i32 %355, 4
  store i32 %356, ptr %354, align 8, !tbaa !87
  br label %357

357:                                              ; preds = %353, %345
  ret ptr %237
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !88 {
  %2 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+02>, ptr %2, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #2 !PGOFuncName !90 {
  ret i8 1
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @range_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_array_randomize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !94 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_get_edge(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"MOD_build.c:copyData"}
!35 = !{!"MOD_build.c:applyModifier"}
!36 = !{!37, !39, i64 1104}
!37 = !{!"DerivedMesh", !38, i64 0, !38, i64 200, !38, i64 400, !38, i64 600, !38, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!38 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!37, !39, i64 1112}
!45 = !{!37, !39, i64 1136}
!46 = !{!37, !39, i64 1200}
!47 = !{!37, !39, i64 1192}
!48 = !{!37, !39, i64 1176}
!49 = !{!37, !39, i64 1168}
!50 = !{!39, !39, i64 0}
!51 = !{!52, !39, i64 96}
!52 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!53 = !{!54, !43, i64 112}
!54 = !{!"BuildModifierData", !52, i64 0, !43, i64 112, !43, i64 116, !55, i64 120, !55, i64 122, !42, i64 124}
!55 = !{!"short", !40, i64 0}
!56 = !{!54, !43, i64 116}
!57 = !{!54, !55, i64 120}
!58 = !{!54, !42, i64 124}
!59 = !{!42, !42, i64 0}
!60 = !{!61, !42, i64 4}
!61 = !{!"MPoly", !42, i64 0, !42, i64 4, !55, i64 8, !40, i64 10, !40, i64 11}
!62 = !{!61, !42, i64 0}
!63 = !{!64, !42, i64 0}
!64 = !{!"MLoop", !42, i64 0, !42, i64 4}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = !{!69, !42, i64 0}
!69 = !{!"MEdge", !42, i64 0, !42, i64 4, !40, i64 8, !40, i64 9, !55, i64 10}
!70 = !{!69, !42, i64 4}
!71 = distinct !{!71, !66}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !66}
!74 = distinct !{!74, !66}
!75 = !{i8 0, i8 2}
!76 = !{i64 0, i64 12, !77, i64 12, i64 6, !77, i64 18, i64 1, !77, i64 19, i64 1, !77}
!77 = !{!40, !40, i64 0}
!78 = distinct !{!78, !66}
!79 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 1, !77, i64 9, i64 1, !77, i64 10, i64 2, !80}
!80 = !{!55, !55, i64 0}
!81 = !{i64 0, i64 4, !59, i64 4, i64 1, !77, i64 5, i64 1, !77, i64 6, i64 2, !80}
!82 = distinct !{!82, !66}
!83 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 2, !80, i64 10, i64 1, !77, i64 11, i64 1, !77}
!84 = !{!64, !42, i64 4}
!85 = distinct !{!85, !66}
!86 = distinct !{!86, !66}
!87 = !{!37, !42, i64 1056}
!88 = !{!"MOD_build.c:initData"}
!89 = !{!43, !43, i64 0}
!90 = !{!"MOD_build.c:dependsOnTime"}
!91 = !{!"MOD_build.c:BLI_ghashIterator_done"}
!92 = !{!93, !39, i64 8}
!93 = !{!"GHashIterator", !39, i64 0, !39, i64 8, !42, i64 16}
!94 = !{!"MOD_build.c:BLI_ghashIterator_getKey"}
!95 = !{!96, !39, i64 8}
!96 = !{!"_gh_Entry", !39, i64 0, !39, i64 8, !39, i64 16}
!97 = !{!"MOD_build.c:BLI_ghashIterator_getValue"}
!98 = !{!96, !39, i64 16}
