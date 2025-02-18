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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca %struct.MVert, align 4
  %6 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str) #6
  %7 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.1) #6
  %8 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str.1) #6
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 %10(ptr noundef %2) #6
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = tail call i32 %13(ptr noundef %2) #6
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = tail call i32 %16(ptr noundef %2) #6
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = tail call ptr %19(ptr noundef %2) #6
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call ptr %22(ptr noundef %2) #6
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call ptr %25(ptr noundef %2) #6
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = tail call ptr %28(ptr noundef %2) #6
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %31 = sext i32 %11 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.2) #6
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %35 = sext i32 %14 to i64
  %36 = shl nsw i64 %35, 2
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @.str.3) #6
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %39 = sext i32 %17 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.4) #6
  tail call void @range_vn_i(ptr noundef %33, i32 noundef %11, i32 noundef 0) #6
  tail call void @range_vn_i(ptr noundef %37, i32 noundef %14, i32 noundef 0) #6
  tail call void @range_vn_i(ptr noundef %41, i32 noundef %17, i32 noundef 0) #6
  %42 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = tail call float @BKE_scene_frame_get(ptr noundef %43) #6
  %45 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 1
  %46 = load float, ptr %45, align 8, !tbaa !51
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 2
  %49 = load float, ptr %48, align 4, !tbaa !54
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
  %58 = load i16, ptr %57, align 8, !tbaa !55
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
  %75 = load i32, ptr %74, align 4, !tbaa !56
  tail call void @BLI_array_randomize(ptr noundef %41, i32 noundef 4, i32 noundef %17, i32 noundef %75) #6
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
  br i1 %82, label %83, label %234

83:                                               ; preds = %80
  %84 = zext nneg i32 %14 to i64
  br label %124

85:                                               ; preds = %78, %119
  %86 = phi i64 [ 0, %78 ], [ %122, %119 ]
  %87 = phi i32 [ 0, %78 ], [ %121, %119 ]
  %88 = getelementptr inbounds i32, ptr %41, i64 %86
  %89 = load i32, ptr %88, align 4, !tbaa !57
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %90, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !58
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %90
  %96 = load i32, ptr %95, align 4, !tbaa !60
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.MLoop, ptr %23, i64 %97
  br label %99

99:                                               ; preds = %94, %114
  %100 = phi i32 [ %115, %114 ], [ 0, %94 ]
  %101 = phi ptr [ %116, %114 ], [ %98, %94 ]
  %102 = load i32, ptr %101, align 4, !tbaa !61
  %103 = zext i32 %102 to i64
  %104 = inttoptr i64 %103 to ptr
  %105 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %104) #6
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i32, ptr %101, align 4, !tbaa !61
  %109 = zext i32 %108 to i64
  %110 = inttoptr i64 %109 to ptr
  %111 = tail call i32 @BLI_ghash_size(ptr noundef %6) #6
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %110, ptr noundef %113) #6
  br label %114

114:                                              ; preds = %99, %107
  %115 = add nuw nsw i32 %100, 1
  %116 = getelementptr inbounds %struct.MLoop, ptr %101, i64 1
  %117 = load i32, ptr %91, align 4, !tbaa !58
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %99, label %119, !llvm.loop !63

119:                                              ; preds = %114, %85
  %120 = phi i32 [ %92, %85 ], [ %117, %114 ]
  %121 = add nsw i32 %120, %87
  %122 = add nuw nsw i64 %86, 1
  %123 = icmp eq i64 %122, %79
  br i1 %123, label %80, label %85, !llvm.loop !66

124:                                              ; preds = %83, %144
  %125 = phi i64 [ 0, %83 ], [ %145, %144 ]
  %126 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !67
  %128 = zext i32 %127 to i64
  %129 = inttoptr i64 %128 to ptr
  %130 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %129) #6
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %125, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !69
  %135 = zext i32 %134 to i64
  %136 = inttoptr i64 %135 to ptr
  %137 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %136) #6
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = tail call i32 @BLI_ghash_size(ptr noundef %7) #6
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to ptr
  %143 = inttoptr i64 %125 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %7, ptr noundef %142, ptr noundef %143) #6
  tail call void @BLI_ghash_insert(ptr noundef %8, ptr noundef %143, ptr noundef %142) #6
  br label %144

144:                                              ; preds = %139, %132, %124
  %145 = add nuw nsw i64 %125, 1
  %146 = icmp eq i64 %145, %84
  br i1 %146, label %234, label %124, !llvm.loop !70

147:                                              ; preds = %55
  %148 = icmp eq i32 %68, 0
  br i1 %148, label %212, label %149

149:                                              ; preds = %147
  %150 = and i16 %58, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !56
  tail call void @BLI_array_randomize(ptr noundef %37, i32 noundef 4, i32 noundef %14, i32 noundef %154) #6
  br label %155

155:                                              ; preds = %152, %149
  %156 = icmp sgt i32 %68, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %155
  %158 = zext nneg i32 %68 to i64
  br label %163

159:                                              ; preds = %195, %155
  %160 = icmp sgt i32 %68, 0
  br i1 %160, label %161, label %234

161:                                              ; preds = %159
  %162 = zext nneg i32 %68 to i64
  br label %198

163:                                              ; preds = %157, %195
  %164 = phi i64 [ 0, %157 ], [ %196, %195 ]
  %165 = getelementptr inbounds i32, ptr %37, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !57
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !67
  %170 = zext i32 %169 to i64
  %171 = inttoptr i64 %170 to ptr
  %172 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %171) #6
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %163
  %175 = load i32, ptr %168, align 4, !tbaa !67
  %176 = zext i32 %175 to i64
  %177 = inttoptr i64 %176 to ptr
  %178 = tail call i32 @BLI_ghash_size(ptr noundef %6) #6
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %177, ptr noundef %180) #6
  br label %181

181:                                              ; preds = %174, %163
  %182 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %167, i32 1
  %183 = load i32, ptr %182, align 4, !tbaa !69
  %184 = zext i32 %183 to i64
  %185 = inttoptr i64 %184 to ptr
  %186 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %6, ptr noundef %185) #6
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load i32, ptr %182, align 4, !tbaa !69
  %190 = zext i32 %189 to i64
  %191 = inttoptr i64 %190 to ptr
  %192 = tail call i32 @BLI_ghash_size(ptr noundef %6) #6
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %191, ptr noundef %194) #6
  br label %195

195:                                              ; preds = %181, %188
  %196 = add nuw nsw i64 %164, 1
  %197 = icmp eq i64 %196, %158
  br i1 %197, label %159, label %163, !llvm.loop !71

198:                                              ; preds = %161, %198
  %199 = phi i64 [ 0, %161 ], [ %210, %198 ]
  %200 = tail call i32 @BLI_ghash_size(ptr noundef %7) #6
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to ptr
  %203 = getelementptr inbounds i32, ptr %37, i64 %199
  %204 = load i32, ptr %203, align 4, !tbaa !57
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %7, ptr noundef %202, ptr noundef %206) #6
  %207 = load i32, ptr %203, align 4, !tbaa !57
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %8, ptr noundef %209, ptr noundef %202) #6
  %210 = add nuw nsw i64 %199, 1
  %211 = icmp eq i64 %210, %162
  br i1 %211, label %234, label %198, !llvm.loop !72

212:                                              ; preds = %147
  %213 = sitofp i32 %11 to float
  %214 = fmul float %62, %213
  %215 = fptosi float %214 to i32
  %216 = and i16 %58, 1
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 5
  %220 = load i32, ptr %219, align 4, !tbaa !56
  tail call void @BLI_array_randomize(ptr noundef %33, i32 noundef 4, i32 noundef %11, i32 noundef %220) #6
  br label %221

221:                                              ; preds = %218, %212
  %222 = icmp sgt i32 %215, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %221
  %224 = zext nneg i32 %215 to i64
  br label %225

225:                                              ; preds = %223, %225
  %226 = phi i64 [ 0, %223 ], [ %232, %225 ]
  %227 = getelementptr inbounds i32, ptr %33, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !57
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to ptr
  %231 = inttoptr i64 %226 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %230, ptr noundef %231) #6
  %232 = add nuw nsw i64 %226, 1
  %233 = icmp eq i64 %232, %224
  br i1 %233, label %234, label %225, !llvm.loop !73

234:                                              ; preds = %144, %198, %225, %80, %159, %221
  %235 = phi i32 [ 0, %221 ], [ 0, %159 ], [ %81, %80 ], [ 0, %225 ], [ 0, %198 ], [ %81, %144 ]
  %236 = tail call i32 @BLI_ghash_size(ptr noundef %6) #6
  %237 = tail call i32 @BLI_ghash_size(ptr noundef %7) #6
  %238 = tail call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %236, i32 noundef %237, i32 noundef 0, i32 noundef %235, i32 noundef %65) #6
  %239 = tail call ptr @BLI_ghashIterator_new(ptr noundef %6) #6
  %240 = getelementptr inbounds %struct.GHashIterator, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !74
  %242 = icmp eq ptr %241, null
  br i1 %242, label %259, label %243

243:                                              ; preds = %234, %243
  %244 = phi ptr [ %257, %243 ], [ %241, %234 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5)
  %245 = getelementptr inbounds %struct._gh_Entry, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !76
  %247 = ptrtoint ptr %246 to i64
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds %struct._gh_Entry, ptr %244, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !78
  %251 = ptrtoint ptr %250 to i64
  %252 = trunc i64 %251 to i32
  %253 = shl i64 %247, 32
  %254 = ashr exact i64 %253, 32
  %255 = getelementptr inbounds %struct.MVert, ptr %29, i64 %254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %255, i64 20, i1 false), !tbaa.struct !79
  %256 = tail call ptr @CDDM_get_vert(ptr noundef %238, i32 noundef %252) #6
  tail call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %238, i32 noundef %248, i32 noundef %252, i32 noundef 1) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %256, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5)
  tail call void @BLI_ghashIterator_step(ptr noundef %239) #6
  %257 = load ptr, ptr %240, align 8, !tbaa !74
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %243, !llvm.loop !81

259:                                              ; preds = %243, %234
  tail call void @BLI_ghashIterator_free(ptr noundef %239) #6
  %260 = tail call i32 @BLI_ghash_size(ptr noundef %7) #6
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %295

262:                                              ; preds = %259, %262
  %263 = phi i64 [ %291, %262 ], [ 0, %259 ]
  %264 = inttoptr i64 %263 to ptr
  %265 = tail call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef %264) #6
  %266 = ptrtoint ptr %265 to i64
  %267 = trunc i64 %266 to i32
  %268 = shl i64 %266, 32
  %269 = ashr exact i64 %268, 32
  %270 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa.struct !82
  %272 = getelementptr inbounds i8, ptr %270, i64 4
  %273 = load i32, ptr %272, align 4, !tbaa.struct !84
  %274 = getelementptr inbounds i8, ptr %270, i64 8
  %275 = load i32, ptr %274, align 4
  %276 = trunc i64 %263 to i32
  %277 = tail call ptr @CDDM_get_edge(ptr noundef %238, i32 noundef %276) #6
  %278 = zext i32 %271 to i64
  %279 = inttoptr i64 %278 to ptr
  %280 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %279) #6
  %281 = ptrtoint ptr %280 to i64
  %282 = trunc i64 %281 to i32
  %283 = zext i32 %273 to i64
  %284 = inttoptr i64 %283 to ptr
  %285 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %284) #6
  %286 = ptrtoint ptr %285 to i64
  %287 = trunc i64 %286 to i32
  %288 = trunc i64 %263 to i32
  tail call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %238, i32 noundef %267, i32 noundef %288, i32 noundef 1) #6
  store i32 %282, ptr %277, align 4, !tbaa.struct !82
  %289 = getelementptr inbounds i8, ptr %277, i64 4
  store i32 %287, ptr %289, align 4, !tbaa.struct !84
  %290 = getelementptr inbounds i8, ptr %277, i64 8
  store i32 %275, ptr %290, align 4
  %291 = add nuw nsw i64 %263, 1
  %292 = tail call i32 @BLI_ghash_size(ptr noundef %7) #6
  %293 = sext i32 %292 to i64
  %294 = icmp slt i64 %291, %293
  br i1 %294, label %262, label %295, !llvm.loop !85

295:                                              ; preds = %262, %259
  %296 = tail call ptr @CDDM_get_polys(ptr noundef %238) #6
  %297 = tail call ptr @CDDM_get_loops(ptr noundef %238) #6
  %298 = icmp sgt i32 %65, 0
  br i1 %298, label %299, label %351

299:                                              ; preds = %295
  %300 = zext nneg i32 %65 to i64
  br label %301

301:                                              ; preds = %299, %346
  %302 = phi i64 [ 0, %299 ], [ %349, %346 ]
  %303 = phi i32 [ 0, %299 ], [ %348, %346 ]
  %304 = phi ptr [ %297, %299 ], [ %347, %346 ]
  %305 = getelementptr inbounds i32, ptr %41, i64 %302
  %306 = load i32, ptr %305, align 4, !tbaa !57
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %307
  %309 = getelementptr inbounds %struct.MPoly, ptr %296, i64 %302
  %310 = trunc i64 %302 to i32
  tail call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %238, i32 noundef %306, i32 noundef %310, i32 noundef 1) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %309, ptr noundef nonnull align 4 dereferenceable(12) %308, i64 12, i1 false), !tbaa.struct !86
  store i32 %303, ptr %309, align 4, !tbaa !60
  %311 = load i32, ptr %308, align 4, !tbaa !60
  %312 = getelementptr inbounds %struct.MPoly, ptr %296, i64 %302, i32 1
  %313 = load i32, ptr %312, align 4, !tbaa !58
  tail call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %238, i32 noundef %311, i32 noundef %303, i32 noundef %313) #6
  %314 = getelementptr inbounds %struct.MPoly, ptr %20, i64 %307, i32 1
  %315 = load i32, ptr %314, align 4, !tbaa !58
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %346

317:                                              ; preds = %301
  %318 = load i32, ptr %308, align 4, !tbaa !60
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.MLoop, ptr %23, i64 %319
  br label %321

321:                                              ; preds = %317, %321
  %322 = phi i32 [ %340, %321 ], [ 0, %317 ]
  %323 = phi i32 [ %341, %321 ], [ %303, %317 ]
  %324 = phi ptr [ %343, %321 ], [ %304, %317 ]
  %325 = phi ptr [ %342, %321 ], [ %320, %317 ]
  %326 = load i32, ptr %325, align 4, !tbaa !61
  %327 = zext i32 %326 to i64
  %328 = inttoptr i64 %327 to ptr
  %329 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %328) #6
  %330 = ptrtoint ptr %329 to i64
  %331 = trunc i64 %330 to i32
  store i32 %331, ptr %324, align 4, !tbaa !61
  %332 = getelementptr inbounds %struct.MLoop, ptr %325, i64 0, i32 1
  %333 = load i32, ptr %332, align 4, !tbaa !87
  %334 = zext i32 %333 to i64
  %335 = inttoptr i64 %334 to ptr
  %336 = tail call ptr @BLI_ghash_lookup(ptr noundef %8, ptr noundef %335) #6
  %337 = ptrtoint ptr %336 to i64
  %338 = trunc i64 %337 to i32
  %339 = getelementptr inbounds %struct.MLoop, ptr %324, i64 0, i32 1
  store i32 %338, ptr %339, align 4, !tbaa !87
  %340 = add nuw nsw i32 %322, 1
  %341 = add nsw i32 %323, 1
  %342 = getelementptr inbounds %struct.MLoop, ptr %325, i64 1
  %343 = getelementptr inbounds %struct.MLoop, ptr %324, i64 1
  %344 = load i32, ptr %314, align 4, !tbaa !58
  %345 = icmp slt i32 %340, %344
  br i1 %345, label %321, label %346, !llvm.loop !88

346:                                              ; preds = %321, %301
  %347 = phi ptr [ %304, %301 ], [ %343, %321 ]
  %348 = phi i32 [ %303, %301 ], [ %341, %321 ]
  %349 = add nuw nsw i64 %302, 1
  %350 = icmp eq i64 %349, %300
  br i1 %350, label %351, label %301, !llvm.loop !89

351:                                              ; preds = %346, %295
  tail call void @BLI_ghash_free(ptr noundef %6, ptr noundef null, ptr noundef null) #6
  tail call void @BLI_ghash_free(ptr noundef %7, ptr noundef null, ptr noundef null) #6
  tail call void @BLI_ghash_free(ptr noundef %8, ptr noundef null, ptr noundef null) #6
  %352 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %352(ptr noundef %33) #6
  %353 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %353(ptr noundef %37) #6
  %354 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %354(ptr noundef %41) #6
  %355 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %356 = load i32, ptr %355, align 8, !tbaa !90
  %357 = and i32 %356, 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %351
  %360 = getelementptr inbounds %struct.DerivedMesh, ptr %238, i64 0, i32 16
  %361 = load i32, ptr %360, align 8, !tbaa !90
  %362 = or i32 %361, 4
  store i32 %362, ptr %360, align 8, !tbaa !90
  br label %363

363:                                              ; preds = %359, %351
  ret ptr %238
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.BuildModifierData, ptr %0, i64 0, i32 2
  store float 1.000000e+02, ptr %3, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #2 {
  ret i8 1
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #3

declare void @range_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

declare void @BLI_array_randomize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_get_edge(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #3

declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 1104}
!35 = !{!"DerivedMesh", !36, i64 0, !36, i64 200, !36, i64 400, !36, i64 600, !36, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!36 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !37, i64 1112}
!43 = !{!35, !37, i64 1136}
!44 = !{!35, !37, i64 1200}
!45 = !{!35, !37, i64 1192}
!46 = !{!35, !37, i64 1176}
!47 = !{!35, !37, i64 1168}
!48 = !{!37, !37, i64 0}
!49 = !{!50, !37, i64 96}
!50 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!51 = !{!52, !41, i64 112}
!52 = !{!"BuildModifierData", !50, i64 0, !41, i64 112, !41, i64 116, !53, i64 120, !53, i64 122, !40, i64 124}
!53 = !{!"short", !38, i64 0}
!54 = !{!52, !41, i64 116}
!55 = !{!52, !53, i64 120}
!56 = !{!52, !40, i64 124}
!57 = !{!40, !40, i64 0}
!58 = !{!59, !40, i64 4}
!59 = !{!"MPoly", !40, i64 0, !40, i64 4, !53, i64 8, !38, i64 10, !38, i64 11}
!60 = !{!59, !40, i64 0}
!61 = !{!62, !40, i64 0}
!62 = !{!"MLoop", !40, i64 0, !40, i64 4}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
!67 = !{!68, !40, i64 0}
!68 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !53, i64 10}
!69 = !{!68, !40, i64 4}
!70 = distinct !{!70, !64, !65}
!71 = distinct !{!71, !64, !65}
!72 = distinct !{!72, !64, !65}
!73 = distinct !{!73, !64, !65}
!74 = !{!75, !37, i64 8}
!75 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !40, i64 16}
!76 = !{!77, !37, i64 8}
!77 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!78 = !{!77, !37, i64 16}
!79 = !{i64 0, i64 12, !80, i64 12, i64 6, !80, i64 18, i64 1, !80, i64 19, i64 1, !80}
!80 = !{!38, !38, i64 0}
!81 = distinct !{!81, !64, !65}
!82 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 1, !80, i64 9, i64 1, !80, i64 10, i64 2, !83}
!83 = !{!53, !53, i64 0}
!84 = !{i64 0, i64 4, !57, i64 4, i64 1, !80, i64 5, i64 1, !80, i64 6, i64 2, !83}
!85 = distinct !{!85, !64, !65}
!86 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 2, !83, i64 10, i64 1, !80, i64 11, i64 1, !80}
!87 = !{!62, !40, i64 4}
!88 = distinct !{!88, !64, !65}
!89 = distinct !{!89, !64, !65}
!90 = !{!35, !40, i64 1056}
