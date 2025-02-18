; ModuleID = 'blender/source/blender/modifiers/intern/MOD_skin.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_skin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.1 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.1 = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.SkinOutput = type { ptr, ptr, i32 }
%struct.EdgeStackElem = type { [3 x [3 x float]], i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MVertSkin = type { [3 x float], i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.anon = type { i32, float, float }
%struct.MeshElemMap = type { ptr, i32 }
%struct.EMat = type { [3 x [3 x float]], i32 }
%struct.SkinNode = type { [2 x %struct.Frame], i32, i32, [2 x i32] }
%struct.Frame = type { [4 x ptr], [4 x [3 x float]], [4 x %struct.anon.0], [4 x i8], i8 }
%struct.anon.0 = type { ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.SkinModifierData = type { %struct.ModifierData, float, i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }

@modifierType_Skin = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Skin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SkinModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120, i32 2, i32 9, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"degree\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"edge_subd\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"vgroup\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"build_edge_mats.stack\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"build_edge_mats.visited_e\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"build_edge_mats.emat\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"build_frames.skin_nodes\00", align 1
@bm_mesh_allocsize_default = external constant %struct.BMAllocTemplate, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Hull error\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"hull_from_frames.hull_frames\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"extrude_discrete_faces faces=%hf\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"subdivide_edges edges=%he cuts=%i quad_corner_type=%i\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"BLI_array.vert_buf\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca [8 x [4 x i32]], align 16
  %6 = alloca [4 x ptr], align 16
  %7 = alloca [4 x ptr], align 16
  %8 = alloca [4 x ptr], align 16
  %9 = alloca [8 x [4 x i32]], align 16
  %10 = alloca [8 x [4 x i32]], align 16
  %11 = alloca [4 x ptr], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x ptr], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.BMOperator, align 8
  %19 = alloca %struct.BMIter, align 8
  %20 = alloca [4 x ptr], align 16
  %21 = alloca ptr, align 8
  %22 = alloca %struct.BMOIter, align 8
  %23 = alloca %struct.BMOperator, align 8
  %24 = alloca [4 x i32], align 16
  %25 = alloca %struct.BMIter, align 8
  %26 = alloca float, align 4
  %27 = alloca %struct.BMIter, align 8
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [4 x i32], align 16
  %32 = alloca [3 x float], align 4
  %33 = alloca %struct.SkinOutput, align 8
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x [3 x float]], align 16
  %36 = alloca [3 x [3 x float]], align 16
  %37 = alloca [3 x [3 x float]], align 16
  %38 = alloca [3 x [3 x float]], align 16
  %39 = alloca %struct.EdgeStackElem, align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca %struct.EdgeStackElem, align 4
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 36) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %2010, label %46

46:                                               ; preds = %4
  %47 = tail call ptr @CustomData_get_layer(ptr noundef %2, i32 noundef 36) #12
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = tail call ptr %49(ptr noundef %2) #12
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = tail call ptr %52(ptr noundef %2) #12
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = tail call ptr %55(ptr noundef %2, i32 noundef 2) #12
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = tail call i32 %58(ptr noundef %2) #12
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = tail call i32 %61(ptr noundef %2) #12
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %64 = sext i32 %59 to i64
  %65 = shl nsw i64 %64, 2
  %66 = tail call ptr %63(i64 noundef %65, ptr noundef nonnull @.str) #12
  %67 = icmp sgt i32 %62, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %46
  %69 = zext nneg i32 %62 to i64
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i64 [ 0, %68 ], [ %84, %70 ]
  %72 = getelementptr inbounds %struct.MEdge, ptr %53, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !47
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %66, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %75, align 4, !tbaa !50
  %78 = getelementptr inbounds %struct.MEdge, ptr %53, i64 %71, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !51
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %66, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !50
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !50
  %84 = add nuw nsw i64 %71, 1
  %85 = icmp eq i64 %84, %69
  br i1 %85, label %86, label %70, !llvm.loop !52

86:                                               ; preds = %70, %46
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %88 = sext i32 %62 to i64
  %89 = shl nsw i64 %88, 2
  %90 = tail call ptr %87(i64 noundef %89, ptr noundef nonnull @.str.1) #12
  %91 = icmp sgt i32 %62, 0
  br i1 %91, label %92, label %174

92:                                               ; preds = %86
  %93 = zext nneg i32 %62 to i64
  br label %94

94:                                               ; preds = %92, %163
  %95 = phi i64 [ 0, %92 ], [ %172, %163 ]
  %96 = phi i32 [ 0, %92 ], [ %171, %163 ]
  %97 = getelementptr inbounds %struct.MEdge, ptr %53, i64 %95
  %98 = load i32, ptr %97, align 4, !tbaa !47
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.MVertSkin, ptr %47, i64 %99
  %101 = getelementptr inbounds %struct.MEdge, ptr %53, i64 %95, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !51
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.MVertSkin, ptr %47, i64 %103
  %105 = getelementptr inbounds i32, ptr %66, i64 %99
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = icmp sgt i32 %106, 2
  %108 = getelementptr inbounds i32, ptr %66, i64 %103
  %109 = load i32, ptr %108, align 4, !tbaa !50
  %110 = icmp sgt i32 %109, 2
  br i1 %107, label %111, label %116

111:                                              ; preds = %94
  %112 = getelementptr inbounds %struct.MVertSkin, ptr %47, i64 %99, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !55
  %114 = and i32 %113, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %111, %94
  br i1 %110, label %117, label %122

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.MVertSkin, ptr %47, i64 %103, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !55
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %163

122:                                              ; preds = %117, %116
  %123 = load float, ptr %100, align 4, !tbaa !57
  %124 = getelementptr inbounds float, ptr %100, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !57
  %126 = fadd float %123, %125
  %127 = fmul float %126, 5.000000e-01
  %128 = load float, ptr %104, align 4, !tbaa !57
  %129 = getelementptr inbounds float, ptr %104, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !57
  %131 = fadd float %128, %130
  %132 = fmul float %131, 5.000000e-01
  %133 = fadd float %127, %132
  %134 = fcmp une float %133, 0.000000e+00
  br i1 %134, label %135, label %159

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.MVert, ptr %50, i64 %99
  %137 = getelementptr inbounds %struct.MVert, ptr %50, i64 %103
  %138 = load float, ptr %137, align 4, !tbaa !57
  %139 = load float, ptr %136, align 4, !tbaa !57
  %140 = fsub float %138, %139
  %141 = getelementptr inbounds float, ptr %137, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !57
  %143 = getelementptr inbounds float, ptr %136, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !57
  %145 = fsub float %142, %144
  %146 = getelementptr inbounds float, ptr %137, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !57
  %148 = getelementptr inbounds float, ptr %136, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !57
  %150 = fsub float %147, %149
  %151 = fmul float %145, %145
  %152 = tail call float @llvm.fmuladd.f32(float %140, float %140, float %151)
  %153 = tail call float @llvm.fmuladd.f32(float %150, float %150, float %152)
  %154 = tail call float @sqrtf(float noundef %153) #12
  %155 = fdiv float %154, %133
  %156 = fcmp olt float %155, 1.280000e+02
  %157 = select i1 %156, float %155, float 1.280000e+02
  %158 = fptosi float %157 to i32
  br label %159

159:                                              ; preds = %135, %122
  %160 = phi i32 [ %158, %135 ], [ 0, %122 ]
  %161 = icmp slt i32 %160, 2
  %162 = and i1 %107, %161
  br label %163

163:                                              ; preds = %111, %117, %159
  %164 = phi i1 [ %162, %159 ], [ %107, %117 ], [ %107, %111 ]
  %165 = phi i32 [ %160, %159 ], [ 0, %117 ], [ 0, %111 ]
  %166 = select i1 %164, i1 %110, i1 false
  %167 = select i1 %166, i32 2, i32 %165
  %168 = getelementptr inbounds i32, ptr %90, i64 %95
  %169 = load i32, ptr %168, align 4, !tbaa !50
  %170 = add nsw i32 %169, %167
  store i32 %170, ptr %168, align 4, !tbaa !50
  %171 = add nsw i32 %170, %96
  %172 = add nuw nsw i64 %95, 1
  %173 = icmp eq i64 %172, %93
  br i1 %173, label %174, label %94, !llvm.loop !58

174:                                              ; preds = %163, %86
  %175 = phi i32 [ 0, %86 ], [ %171, %163 ]
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %176(ptr noundef %66) #12
  %177 = add nsw i32 %175, %59
  %178 = add nsw i32 %175, %62
  %179 = tail call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %177, i32 noundef %178, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %180 = getelementptr inbounds %struct.DerivedMesh, ptr %179, i64 0, i32 31
  %181 = load ptr, ptr %180, align 8, !tbaa !34
  %182 = tail call ptr %181(ptr noundef %179) #12
  %183 = getelementptr inbounds %struct.DerivedMesh, ptr %179, i64 0, i32 32
  %184 = load ptr, ptr %183, align 8, !tbaa !42
  %185 = tail call ptr %184(ptr noundef %179) #12
  %186 = tail call ptr @CustomData_get_layer(ptr noundef %179, i32 noundef 36) #12
  %187 = tail call ptr @CustomData_get_layer(ptr noundef %179, i32 noundef 2) #12
  tail call void @CustomData_copy_data(ptr noundef %2, ptr noundef %179, i32 noundef 0, i32 noundef 0, i32 noundef %59) #12
  %188 = icmp sgt i32 %62, 0
  br i1 %188, label %189, label %358

189:                                              ; preds = %174
  %190 = icmp eq ptr %56, null
  %191 = zext nneg i32 %62 to i64
  br label %192

192:                                              ; preds = %189, %352
  %193 = phi i64 [ 0, %189 ], [ %356, %352 ]
  %194 = phi ptr [ %185, %189 ], [ %355, %352 ]
  %195 = phi i32 [ %59, %189 ], [ %347, %352 ]
  %196 = getelementptr inbounds %struct.MEdge, ptr %53, i64 %193
  br i1 %190, label %260, label %197

197:                                              ; preds = %192
  %198 = load i32, ptr %196, align 4, !tbaa !47
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.MDeformVert, ptr %56, i64 %199
  %201 = getelementptr inbounds %struct.MEdge, ptr %53, i64 %193, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !51
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.MDeformVert, ptr %56, i64 %203
  %205 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %206 = getelementptr inbounds %struct.MDeformVert, ptr %56, i64 %199, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !59
  %208 = sext i32 %207 to i64
  %209 = mul nsw i64 %208, 12
  %210 = tail call ptr %205(i64 noundef %209, ptr noundef nonnull @.str.2) #12
  %211 = load i32, ptr %206, align 8, !tbaa !59
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %260

213:                                              ; preds = %197
  %214 = getelementptr inbounds %struct.MDeformVert, ptr %56, i64 %203, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !59
  %216 = icmp sgt i32 %215, 0
  %217 = zext nneg i32 %211 to i64
  %218 = zext nneg i32 %215 to i64
  br label %219

219:                                              ; preds = %213, %257
  %220 = phi i64 [ 0, %213 ], [ %258, %257 ]
  %221 = phi i32 [ 0, %213 ], [ %243, %257 ]
  br i1 %216, label %222, label %240

222:                                              ; preds = %219
  %223 = load ptr, ptr %200, align 8, !tbaa !61
  %224 = getelementptr inbounds %struct.MDeformWeight, ptr %223, i64 %220
  %225 = load i32, ptr %224, align 4, !tbaa !62
  %226 = load ptr, ptr %204, align 8, !tbaa !61
  br label %227

227:                                              ; preds = %222, %237
  %228 = phi i64 [ 0, %222 ], [ %238, %237 ]
  %229 = getelementptr inbounds %struct.MDeformWeight, ptr %226, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !62
  %231 = icmp eq i32 %225, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = trunc i64 %228 to i32
  %234 = sext i32 %221 to i64
  %235 = getelementptr inbounds %struct.anon, ptr %210, i64 %234
  %236 = add nsw i32 %221, 1
  br label %240

237:                                              ; preds = %227
  %238 = add nuw nsw i64 %228, 1
  %239 = icmp eq i64 %238, %218
  br i1 %239, label %240, label %227, !llvm.loop !64

240:                                              ; preds = %237, %219, %232
  %241 = phi i32 [ %233, %232 ], [ 0, %219 ], [ %215, %237 ]
  %242 = phi ptr [ %235, %232 ], [ null, %219 ], [ null, %237 ]
  %243 = phi i32 [ %236, %232 ], [ %221, %219 ], [ %221, %237 ]
  %244 = icmp eq ptr %242, null
  br i1 %244, label %257, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr %200, align 8, !tbaa !61
  %247 = getelementptr inbounds %struct.MDeformWeight, ptr %246, i64 %220
  %248 = load i32, ptr %247, align 4, !tbaa !62
  store i32 %248, ptr %242, align 4, !tbaa !65
  %249 = getelementptr inbounds %struct.MDeformWeight, ptr %246, i64 %220, i32 1
  %250 = load float, ptr %249, align 4, !tbaa !67
  %251 = getelementptr inbounds %struct.anon, ptr %242, i64 0, i32 1
  store float %250, ptr %251, align 4, !tbaa !68
  %252 = load ptr, ptr %204, align 8, !tbaa !61
  %253 = zext nneg i32 %241 to i64
  %254 = getelementptr inbounds %struct.MDeformWeight, ptr %252, i64 %253, i32 1
  %255 = load float, ptr %254, align 4, !tbaa !67
  %256 = getelementptr inbounds %struct.anon, ptr %242, i64 0, i32 2
  store float %255, ptr %256, align 4, !tbaa !69
  br label %257

257:                                              ; preds = %245, %240
  %258 = add nuw nsw i64 %220, 1
  %259 = icmp eq i64 %258, %217
  br i1 %259, label %260, label %219, !llvm.loop !70

260:                                              ; preds = %257, %197, %192
  %261 = phi ptr [ null, %192 ], [ %210, %197 ], [ %210, %257 ]
  %262 = phi i32 [ 0, %192 ], [ 0, %197 ], [ %243, %257 ]
  %263 = load i32, ptr %196, align 4, !tbaa !47
  %264 = getelementptr inbounds %struct.MEdge, ptr %53, i64 %193, i32 1
  %265 = load i32, ptr %264, align 4, !tbaa !51
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.MVertSkin, ptr %186, i64 %266
  %268 = load float, ptr %267, align 4, !tbaa !57
  %269 = getelementptr inbounds float, ptr %267, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !57
  %271 = fadd float %268, %270
  %272 = fmul float %271, 5.000000e-01
  %273 = zext i32 %263 to i64
  %274 = getelementptr inbounds %struct.MVertSkin, ptr %186, i64 %273
  %275 = load float, ptr %274, align 4, !tbaa !57
  %276 = getelementptr inbounds float, ptr %274, i64 1
  %277 = load float, ptr %276, align 4, !tbaa !57
  %278 = fadd float %275, %277
  %279 = fmul float %278, 5.000000e-01
  %280 = fdiv float %272, %279
  %281 = fadd float %280, 1.000000e+00
  %282 = fmul float %281, 5.000000e-01
  %283 = getelementptr inbounds i32, ptr %90, i64 %193
  %284 = load i32, ptr %283, align 4, !tbaa !50
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %345

286:                                              ; preds = %260
  %287 = icmp sgt i32 %262, 0
  %288 = sext i32 %195 to i64
  %289 = zext nneg i32 %262 to i64
  br label %290

290:                                              ; preds = %286, %334
  %291 = phi i64 [ %288, %286 ], [ %337, %334 ]
  %292 = phi i32 [ %284, %286 ], [ %339, %334 ]
  %293 = phi ptr [ %194, %286 ], [ %338, %334 ]
  %294 = phi i32 [ 0, %286 ], [ %296, %334 ]
  %295 = phi i32 [ %263, %286 ], [ %341, %334 ]
  %296 = add nuw nsw i32 %294, 1
  %297 = sitofp i32 %296 to float
  %298 = add nsw i32 %292, 1
  %299 = sitofp i32 %298 to float
  %300 = fdiv float %297, %299
  %301 = tail call float @powf(float noundef %300, float noundef %282) #12
  %302 = getelementptr inbounds %struct.MVert, ptr %182, i64 %291
  %303 = load i32, ptr %196, align 4, !tbaa !47
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.MVert, ptr %182, i64 %304
  %306 = load i32, ptr %264, align 4, !tbaa !51
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.MVert, ptr %182, i64 %307
  tail call void @interp_v3_v3v3(ptr noundef %302, ptr noundef %305, ptr noundef %308, float noundef %301) #12
  %309 = getelementptr inbounds %struct.MVertSkin, ptr %186, i64 %291
  %310 = load i32, ptr %196, align 4, !tbaa !47
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.MVertSkin, ptr %47, i64 %311
  %313 = load i32, ptr %264, align 4, !tbaa !51
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.MVertSkin, ptr %47, i64 %314
  tail call void @interp_v3_v3v3(ptr noundef %309, ptr noundef %312, ptr noundef %315, float noundef %301) #12
  br i1 %287, label %316, label %334

316:                                              ; preds = %290
  %317 = fsub float 1.000000e+00, %301
  %318 = getelementptr inbounds %struct.MDeformVert, ptr %187, i64 %291
  br label %319

319:                                              ; preds = %316, %331
  %320 = phi i64 [ 0, %316 ], [ %332, %331 ]
  %321 = getelementptr inbounds %struct.anon, ptr %261, i64 %320, i32 2
  %322 = load float, ptr %321, align 4, !tbaa !69
  %323 = getelementptr inbounds %struct.anon, ptr %261, i64 %320, i32 1
  %324 = load float, ptr %323, align 4, !tbaa !68
  %325 = fmul float %317, %324
  %326 = tail call float @llvm.fmuladd.f32(float %301, float %322, float %325)
  %327 = fcmp ogt float %326, 0.000000e+00
  br i1 %327, label %328, label %331

328:                                              ; preds = %319
  %329 = getelementptr inbounds %struct.anon, ptr %261, i64 %320
  %330 = load i32, ptr %329, align 4, !tbaa !65
  tail call void @defvert_add_index_notest(ptr noundef %318, i32 noundef %330, float noundef %326) #12
  br label %331

331:                                              ; preds = %328, %319
  %332 = add nuw nsw i64 %320, 1
  %333 = icmp eq i64 %332, %289
  br i1 %333, label %334, label %319, !llvm.loop !71

334:                                              ; preds = %331, %290
  store i32 %295, ptr %293, align 4, !tbaa !47
  %335 = getelementptr inbounds %struct.MEdge, ptr %293, i64 0, i32 1
  %336 = trunc i64 %291 to i32
  store i32 %336, ptr %335, align 4, !tbaa !51
  %337 = add nsw i64 %291, 1
  %338 = getelementptr inbounds %struct.MEdge, ptr %293, i64 1
  %339 = load i32, ptr %283, align 4, !tbaa !50
  %340 = icmp slt i32 %296, %339
  %341 = trunc i64 %291 to i32
  br i1 %340, label %290, label %342, !llvm.loop !72

342:                                              ; preds = %334
  %343 = trunc i64 %291 to i32
  %344 = trunc i64 %337 to i32
  br label %345

345:                                              ; preds = %342, %260
  %346 = phi i32 [ %263, %260 ], [ %343, %342 ]
  %347 = phi i32 [ %195, %260 ], [ %344, %342 ]
  %348 = phi ptr [ %194, %260 ], [ %338, %342 ]
  %349 = icmp eq ptr %261, null
  br i1 %349, label %352, label %350

350:                                              ; preds = %345
  %351 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %351(ptr noundef nonnull %261) #12
  br label %352

352:                                              ; preds = %350, %345
  store i32 %346, ptr %348, align 4, !tbaa !47
  %353 = load i32, ptr %264, align 4, !tbaa !51
  %354 = getelementptr inbounds %struct.MEdge, ptr %348, i64 0, i32 1
  store i32 %353, ptr %354, align 4, !tbaa !51
  %355 = getelementptr inbounds %struct.MEdge, ptr %348, i64 1
  %356 = add nuw nsw i64 %193, 1
  %357 = icmp eq i64 %356, %191
  br i1 %357, label %358, label %192, !llvm.loop !73

358:                                              ; preds = %352, %174
  %359 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %359(ptr noundef %90) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #12
  %360 = tail call ptr @CustomData_get_layer(ptr noundef %179, i32 noundef 36) #12
  %361 = load ptr, ptr %180, align 8, !tbaa !34
  %362 = tail call ptr %361(ptr noundef %179) #12
  %363 = getelementptr inbounds %struct.DerivedMesh, ptr %179, i64 0, i32 50
  %364 = load ptr, ptr %363, align 8, !tbaa !43
  %365 = tail call ptr %364(ptr noundef %179, i32 noundef 2) #12
  %366 = load ptr, ptr %183, align 8, !tbaa !42
  %367 = tail call ptr %366(ptr noundef %179) #12
  %368 = getelementptr inbounds %struct.DerivedMesh, ptr %179, i64 0, i32 23
  %369 = load ptr, ptr %368, align 8, !tbaa !44
  %370 = tail call i32 %369(ptr noundef %179) #12
  %371 = getelementptr inbounds %struct.DerivedMesh, ptr %179, i64 0, i32 24
  %372 = load ptr, ptr %371, align 8, !tbaa !45
  %373 = tail call i32 %372(ptr noundef %179) #12
  call void @BKE_mesh_vert_edge_map_create(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef %367, i32 noundef %370, i32 noundef %373) #12
  %374 = load ptr, ptr %42, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %41) #12
  %375 = call ptr @BLI_stack_new(i64 noundef 44, ptr noundef nonnull @.str.3) #12
  %376 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %377 = ashr i32 %373, 5
  %378 = add nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = shl nsw i64 %379, 2
  %381 = call ptr %376(i64 noundef %380, ptr noundef nonnull @.str.4) #12
  %382 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %383 = sext i32 %373 to i64
  %384 = mul nsw i64 %383, 40
  %385 = call ptr %382(i64 noundef %384, ptr noundef nonnull @.str.5) #12
  %386 = icmp sgt i32 %370, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %358
  %388 = getelementptr inbounds %struct.EdgeStackElem, ptr %41, i64 0, i32 1
  %389 = getelementptr inbounds %struct.EdgeStackElem, ptr %41, i64 0, i32 2
  %390 = zext nneg i32 %370 to i64
  br label %403

391:                                              ; preds = %436, %358
  %392 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %375) #12
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %563

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.EdgeStackElem, ptr %39, i64 0, i32 1
  %396 = getelementptr inbounds %struct.EdgeStackElem, ptr %39, i64 0, i32 2
  %397 = getelementptr inbounds float, ptr %39, i64 1
  %398 = getelementptr inbounds float, ptr %39, i64 2
  %399 = getelementptr inbounds float, ptr %40, i64 1
  %400 = getelementptr inbounds float, ptr %40, i64 2
  %401 = getelementptr inbounds [3 x [3 x float]], ptr %39, i64 0, i64 1
  %402 = getelementptr inbounds [3 x [3 x float]], ptr %39, i64 0, i64 2
  br label %439

403:                                              ; preds = %387, %436
  %404 = phi i64 [ 0, %387 ], [ %437, %436 ]
  %405 = getelementptr inbounds %struct.MVertSkin, ptr %360, i64 %404, i32 1
  %406 = load i32, ptr %405, align 4, !tbaa !55
  %407 = and i32 %406, 1
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %436, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.MeshElemMap, ptr %374, i64 %404
  %411 = getelementptr inbounds %struct.MeshElemMap, ptr %374, i64 %404, i32 1
  %412 = load i32, ptr %411, align 8, !tbaa !74
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %436

414:                                              ; preds = %409
  %415 = load ptr, ptr %410, align 8, !tbaa !76
  %416 = load i32, ptr %415, align 4, !tbaa !50
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %417
  %419 = getelementptr inbounds %struct.MVert, ptr %362, i64 %404
  %420 = trunc i64 %404 to i32
  %421 = call i32 @BKE_mesh_edge_other_vert(ptr noundef %418, i32 noundef %420) #12
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.MVert, ptr %362, i64 %422
  call fastcc void @calc_edge_mat(ptr noundef nonnull %41, ptr noundef %419, ptr noundef %423)
  %424 = trunc i64 %404 to i32
  store i32 %424, ptr %388, align 4, !tbaa !77
  %425 = load i32, ptr %411, align 8, !tbaa !74
  %426 = icmp sgt i32 %425, 0
  br i1 %426, label %427, label %436

427:                                              ; preds = %414, %427
  %428 = phi i64 [ %432, %427 ], [ 0, %414 ]
  %429 = load ptr, ptr %410, align 8, !tbaa !76
  %430 = getelementptr inbounds i32, ptr %429, i64 %428
  %431 = load i32, ptr %430, align 4, !tbaa !50
  store i32 %431, ptr %389, align 4, !tbaa !79
  call void @BLI_stack_push(ptr noundef %375, ptr noundef nonnull %41) #12
  %432 = add nuw nsw i64 %428, 1
  %433 = load i32, ptr %411, align 8, !tbaa !74
  %434 = sext i32 %433 to i64
  %435 = icmp slt i64 %432, %434
  br i1 %435, label %427, label %436, !llvm.loop !80

436:                                              ; preds = %427, %414, %409, %403
  %437 = add nuw nsw i64 %404, 1
  %438 = icmp eq i64 %437, %390
  br i1 %438, label %391, label %403, !llvm.loop !81

439:                                              ; preds = %394, %560
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %39) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #12
  call void @BLI_stack_pop(ptr noundef %375, ptr noundef nonnull %39) #12
  %440 = load i32, ptr %395, align 4, !tbaa !77
  %441 = load i32, ptr %396, align 4, !tbaa !79
  %442 = ashr i32 %441, 5
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, ptr %381, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !50
  %446 = and i32 %441, 31
  %447 = shl nuw i32 1, %446
  %448 = and i32 %447, %445
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %560

450:                                              ; preds = %439
  %451 = or i32 %447, %445
  store i32 %451, ptr %444, align 4, !tbaa !50
  %452 = sext i32 %440 to i64
  %453 = getelementptr inbounds %struct.MeshElemMap, ptr %374, i64 %452, i32 1
  %454 = load i32, ptr %453, align 8, !tbaa !74
  %455 = icmp sgt i32 %454, 2
  br i1 %455, label %461, label %456

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.MVertSkin, ptr %360, i64 %452, i32 1
  %458 = load i32, ptr %457, align 4, !tbaa !55
  %459 = and i32 %458, 1
  %460 = icmp ne i32 %459, 0
  br label %461

461:                                              ; preds = %456, %450
  %462 = phi i1 [ true, %450 ], [ %460, %456 ]
  %463 = sext i32 %441 to i64
  %464 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %463
  %465 = call i32 @BKE_mesh_edge_other_vert(ptr noundef %464, i32 noundef %440) #12
  %466 = getelementptr inbounds %struct.EMat, ptr %385, i64 %463
  %467 = getelementptr inbounds %struct.EMat, ptr %385, i64 %463, i32 1
  store i32 %440, ptr %467, align 4, !tbaa !82
  br i1 %462, label %468, label %472

468:                                              ; preds = %461
  %469 = getelementptr inbounds %struct.MVert, ptr %362, i64 %452
  %470 = sext i32 %465 to i64
  %471 = getelementptr inbounds %struct.MVert, ptr %362, i64 %470
  call fastcc void @calc_edge_mat(ptr noundef %466, ptr noundef %469, ptr noundef %471)
  br label %544

472:                                              ; preds = %461
  %473 = sext i32 %465 to i64
  %474 = getelementptr inbounds %struct.MVert, ptr %362, i64 %473
  %475 = getelementptr inbounds %struct.MVert, ptr %362, i64 %452
  %476 = load float, ptr %474, align 4, !tbaa !57
  %477 = load float, ptr %475, align 4, !tbaa !57
  %478 = fsub float %476, %477
  store float %478, ptr %466, align 4, !tbaa !57
  %479 = getelementptr inbounds float, ptr %474, i64 1
  %480 = load float, ptr %479, align 4, !tbaa !57
  %481 = getelementptr inbounds float, ptr %475, i64 1
  %482 = load float, ptr %481, align 4, !tbaa !57
  %483 = fsub float %480, %482
  %484 = getelementptr inbounds float, ptr %466, i64 1
  store float %483, ptr %484, align 4, !tbaa !57
  %485 = getelementptr inbounds float, ptr %474, i64 2
  %486 = load float, ptr %485, align 4, !tbaa !57
  %487 = getelementptr inbounds float, ptr %475, i64 2
  %488 = load float, ptr %487, align 4, !tbaa !57
  %489 = fsub float %486, %488
  %490 = getelementptr inbounds float, ptr %466, i64 2
  store float %489, ptr %490, align 4, !tbaa !57
  %491 = fmul float %483, %483
  %492 = call float @llvm.fmuladd.f32(float %478, float %478, float %491)
  %493 = call float @llvm.fmuladd.f32(float %489, float %489, float %492)
  %494 = fcmp ogt float %493, 0x38AA95A5C0000000
  br i1 %494, label %495, label %504

495:                                              ; preds = %472
  %496 = call float @sqrtf(float noundef %493) #12
  %497 = fdiv float 1.000000e+00, %496
  %498 = load float, ptr %466, align 4, !tbaa !57
  %499 = fmul float %498, %497
  store float %499, ptr %466, align 4, !tbaa !57
  %500 = load float, ptr %484, align 4, !tbaa !57
  %501 = fmul float %497, %500
  store float %501, ptr %484, align 4, !tbaa !57
  %502 = load float, ptr %490, align 4, !tbaa !57
  %503 = fmul float %497, %502
  br label %505

504:                                              ; preds = %472
  store float 0.000000e+00, ptr %466, align 4, !tbaa !57
  store float 0.000000e+00, ptr %484, align 4, !tbaa !57
  br label %505

505:                                              ; preds = %504, %495
  %506 = phi float [ 0.000000e+00, %504 ], [ %503, %495 ]
  store float %506, ptr %490, align 4, !tbaa !57
  %507 = call float @angle_normalized_v3v3(ptr noundef nonnull %39, ptr noundef nonnull %466) #12
  %508 = load float, ptr %397, align 4, !tbaa !57
  %509 = load float, ptr %490, align 4, !tbaa !57
  %510 = load float, ptr %398, align 4, !tbaa !57
  %511 = load float, ptr %484, align 4, !tbaa !57
  %512 = fneg float %510
  %513 = fmul float %511, %512
  %514 = call float @llvm.fmuladd.f32(float %508, float %509, float %513)
  store float %514, ptr %40, align 4, !tbaa !57
  %515 = load float, ptr %466, align 4, !tbaa !57
  %516 = load float, ptr %39, align 4, !tbaa !57
  %517 = load float, ptr %490, align 4, !tbaa !57
  %518 = fneg float %516
  %519 = fmul float %517, %518
  %520 = call float @llvm.fmuladd.f32(float %510, float %515, float %519)
  store float %520, ptr %399, align 4, !tbaa !57
  %521 = load float, ptr %484, align 4, !tbaa !57
  %522 = load float, ptr %466, align 4, !tbaa !57
  %523 = fneg float %508
  %524 = fmul float %522, %523
  %525 = call float @llvm.fmuladd.f32(float %516, float %521, float %524)
  store float %525, ptr %400, align 4, !tbaa !57
  %526 = fmul float %520, %520
  %527 = call float @llvm.fmuladd.f32(float %514, float %514, float %526)
  %528 = call float @llvm.fmuladd.f32(float %525, float %525, float %527)
  %529 = fcmp ogt float %528, 0x38AA95A5C0000000
  br i1 %529, label %530, label %539

530:                                              ; preds = %505
  %531 = call float @sqrtf(float noundef %528) #12
  %532 = fdiv float 1.000000e+00, %531
  %533 = load float, ptr %40, align 4, !tbaa !57
  %534 = fmul float %533, %532
  store float %534, ptr %40, align 4, !tbaa !57
  %535 = load float, ptr %399, align 4, !tbaa !57
  %536 = fmul float %532, %535
  store float %536, ptr %399, align 4, !tbaa !57
  %537 = load float, ptr %400, align 4, !tbaa !57
  %538 = fmul float %532, %537
  br label %540

539:                                              ; preds = %505
  store float 0.000000e+00, ptr %40, align 4, !tbaa !57
  store float 0.000000e+00, ptr %399, align 4, !tbaa !57
  br label %540

540:                                              ; preds = %539, %530
  %541 = phi float [ 0.000000e+00, %539 ], [ %538, %530 ]
  store float %541, ptr %400, align 4, !tbaa !57
  %542 = getelementptr inbounds [3 x [3 x float]], ptr %466, i64 0, i64 1
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %542, ptr noundef nonnull %401, ptr noundef nonnull %40, float noundef %507) #12
  %543 = getelementptr inbounds [3 x [3 x float]], ptr %466, i64 0, i64 2
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %543, ptr noundef nonnull %402, ptr noundef nonnull %40, float noundef %507) #12
  br label %544

544:                                              ; preds = %540, %468
  %545 = sext i32 %465 to i64
  %546 = getelementptr inbounds %struct.MeshElemMap, ptr %374, i64 %545, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !74
  %548 = icmp sgt i32 %547, 0
  br i1 %548, label %549, label %560

549:                                              ; preds = %544
  %550 = getelementptr inbounds %struct.MeshElemMap, ptr %374, i64 %545
  br label %551

551:                                              ; preds = %549, %551
  %552 = phi i64 [ 0, %549 ], [ %556, %551 ]
  call void @copy_m3_m3(ptr noundef nonnull %39, ptr noundef %466) #12
  %553 = load ptr, ptr %550, align 8, !tbaa !76
  %554 = getelementptr inbounds i32, ptr %553, i64 %552
  %555 = load i32, ptr %554, align 4, !tbaa !50
  store i32 %555, ptr %396, align 4, !tbaa !79
  store i32 %465, ptr %395, align 4, !tbaa !77
  call void @BLI_stack_push(ptr noundef %375, ptr noundef nonnull %39) #12
  %556 = add nuw nsw i64 %552, 1
  %557 = load i32, ptr %546, align 8, !tbaa !74
  %558 = sext i32 %557 to i64
  %559 = icmp slt i64 %556, %558
  br i1 %559, label %551, label %560, !llvm.loop !84

560:                                              ; preds = %551, %544, %439
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %39) #12
  %561 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %375) #12
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %439, label %563, !llvm.loop !85

563:                                              ; preds = %560, %391
  %564 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %564(ptr noundef %381) #12
  call void @BLI_stack_free(ptr noundef %375) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %41) #12
  %565 = load ptr, ptr %42, align 8, !tbaa !46
  %566 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %567 = sext i32 %370 to i64
  %568 = mul nsw i64 %567, 320
  %569 = call ptr %566(i64 noundef %568, ptr noundef nonnull @.str.6) #12
  %570 = icmp sgt i32 %370, 0
  br i1 %570, label %571, label %789

571:                                              ; preds = %563
  %572 = getelementptr inbounds float, ptr %35, i64 1
  %573 = getelementptr inbounds float, ptr %36, i64 2
  %574 = getelementptr inbounds float, ptr %35, i64 2
  %575 = getelementptr inbounds float, ptr %36, i64 1
  %576 = getelementptr inbounds float, ptr %34, i64 1
  %577 = getelementptr inbounds float, ptr %34, i64 2
  %578 = getelementptr inbounds float, ptr %37, i64 1
  %579 = getelementptr inbounds float, ptr %37, i64 2
  %580 = getelementptr inbounds [3 x float], ptr %37, i64 1
  %581 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 1
  %582 = getelementptr inbounds [3 x float], ptr %37, i64 2
  %583 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 2
  %584 = getelementptr inbounds float, ptr %37, i64 1
  %585 = getelementptr inbounds float, ptr %37, i64 2
  %586 = getelementptr inbounds float, ptr %37, i64 1
  %587 = getelementptr inbounds float, ptr %37, i64 2
  %588 = getelementptr inbounds float, ptr %38, i64 1
  %589 = getelementptr inbounds float, ptr %38, i64 2
  %590 = getelementptr inbounds [3 x [3 x float]], ptr %38, i64 0, i64 2, i64 1
  %591 = getelementptr inbounds [3 x [3 x float]], ptr %38, i64 0, i64 1
  %592 = getelementptr inbounds [3 x float], ptr %38, i64 0, i64 2
  %593 = zext nneg i32 %370 to i64
  %594 = getelementptr i8, ptr %569, i64 312
  %595 = getelementptr i8, ptr %569, i64 312
  %596 = getelementptr i8, ptr %569, i64 312
  %597 = getelementptr i8, ptr %569, i64 312
  br label %598

598:                                              ; preds = %571, %786
  %599 = phi i64 [ 0, %571 ], [ %787, %786 ]
  %600 = mul nuw nsw i64 %599, 320
  %601 = getelementptr i8, ptr %594, i64 %600
  %602 = mul nuw nsw i64 %599, 320
  %603 = getelementptr i8, ptr %595, i64 %602
  %604 = mul nuw nsw i64 %599, 320
  %605 = getelementptr i8, ptr %596, i64 %604
  %606 = mul nuw nsw i64 %599, 320
  %607 = getelementptr i8, ptr %597, i64 %606
  %608 = getelementptr inbounds %struct.MeshElemMap, ptr %565, i64 %599, i32 1
  %609 = load i32, ptr %608, align 8, !tbaa !74
  %610 = icmp slt i32 %609, 2
  br i1 %610, label %611, label %662

611:                                              ; preds = %598
  %612 = getelementptr inbounds %struct.MVertSkin, ptr %360, i64 %599
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %38) #12
  %613 = load i32, ptr %608, align 8, !tbaa !74
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %627

615:                                              ; preds = %611
  %616 = load float, ptr %612, align 4, !tbaa !57
  %617 = getelementptr inbounds float, ptr %612, i64 1
  %618 = load float, ptr %617, align 4, !tbaa !57
  %619 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599
  %620 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 1
  store i32 2, ptr %620, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %619, i8 0, i64 304, i1 false)
  %621 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 2
  store i32 0, ptr %621, align 4, !tbaa !88
  store i64 -1, ptr %601, align 4
  %622 = fadd float %616, %618
  %623 = fmul float %622, 5.000000e-01
  store i32 3, ptr %621, align 4, !tbaa !88
  call void @zero_m3(ptr noundef nonnull %38) #12
  store float 1.000000e+00, ptr %590, align 4, !tbaa !57
  store float 1.000000e+00, ptr %591, align 4, !tbaa !57
  store float 1.000000e+00, ptr %592, align 8, !tbaa !57
  %624 = getelementptr inbounds %struct.MVert, ptr %362, i64 %599
  call fastcc void @create_frame(ptr noundef %619, ptr noundef %624, ptr noundef nonnull %612, ptr noundef nonnull %38, float noundef %623)
  %625 = getelementptr inbounds [2 x %struct.Frame], ptr %619, i64 0, i64 1
  %626 = fneg float %623
  call fastcc void @create_frame(ptr noundef nonnull %625, ptr noundef %624, ptr noundef nonnull %612, ptr noundef nonnull %38, float noundef %626)
  br label %652

627:                                              ; preds = %611
  %628 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599
  %629 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 1
  store i32 1, ptr %629, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %628, i8 0, i64 304, i1 false)
  %630 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 2
  store i32 0, ptr %630, align 4, !tbaa !88
  store i64 -1, ptr %603, align 4
  %631 = getelementptr inbounds %struct.MeshElemMap, ptr %565, i64 %599
  store i32 1, ptr %630, align 4, !tbaa !88
  %632 = load ptr, ptr %631, align 8, !tbaa !76
  %633 = load i32, ptr %632, align 4, !tbaa !50
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.EMat, ptr %385, i64 %634
  call void @copy_m3_m3(ptr noundef nonnull %38, ptr noundef %635) #12
  %636 = load ptr, ptr %631, align 8, !tbaa !76
  %637 = load i32, ptr %636, align 4, !tbaa !50
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.EMat, ptr %385, i64 %638, i32 1
  %640 = load i32, ptr %639, align 4, !tbaa !82
  %641 = zext i32 %640 to i64
  %642 = icmp eq i64 %599, %641
  br i1 %642, label %650, label %643

643:                                              ; preds = %627
  %644 = load float, ptr %38, align 16, !tbaa !57
  %645 = fneg float %644
  store float %645, ptr %38, align 16, !tbaa !57
  %646 = load float, ptr %588, align 4, !tbaa !57
  %647 = fneg float %646
  store float %647, ptr %588, align 4, !tbaa !57
  %648 = load float, ptr %589, align 8, !tbaa !57
  %649 = fneg float %648
  store float %649, ptr %589, align 8, !tbaa !57
  br label %650

650:                                              ; preds = %643, %627
  %651 = getelementptr inbounds %struct.MVert, ptr %362, i64 %599
  call fastcc void @create_frame(ptr noundef %628, ptr noundef %651, ptr noundef %612, ptr noundef nonnull %38, float noundef 0.000000e+00)
  br label %652

652:                                              ; preds = %650, %615
  %653 = getelementptr inbounds %struct.MVertSkin, ptr %360, i64 %599, i32 1
  %654 = load i32, ptr %653, align 4, !tbaa !55
  %655 = and i32 %654, 1
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %661, label %657

657:                                              ; preds = %652
  %658 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 2
  %659 = load i32, ptr %658, align 4, !tbaa !88
  %660 = or i32 %659, 8
  store i32 %660, ptr %658, align 4, !tbaa !88
  br label %661

661:                                              ; preds = %657, %652
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %38) #12
  br label %786

662:                                              ; preds = %598
  %663 = icmp eq i32 %609, 2
  br i1 %663, label %664, label %786

664:                                              ; preds = %662
  %665 = getelementptr inbounds %struct.MVertSkin, ptr %360, i64 %599
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %37) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %35) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %36) #12
  %666 = getelementptr inbounds %struct.MeshElemMap, ptr %565, i64 %599
  %667 = load ptr, ptr %666, align 8, !tbaa !76
  %668 = load i32, ptr %667, align 4, !tbaa !50
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.EMat, ptr %385, i64 %669
  %671 = getelementptr inbounds i32, ptr %667, i64 1
  %672 = load i32, ptr %671, align 4, !tbaa !50
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.EMat, ptr %385, i64 %673
  %675 = getelementptr inbounds %struct.EMat, ptr %385, i64 %669, i32 1
  %676 = load i32, ptr %675, align 4, !tbaa !82
  %677 = zext i32 %676 to i64
  %678 = icmp eq i64 %599, %677
  br i1 %678, label %685, label %679

679:                                              ; preds = %664
  %680 = getelementptr inbounds %struct.EMat, ptr %385, i64 %673, i32 1
  %681 = load i32, ptr %680, align 4, !tbaa !82
  %682 = zext i32 %681 to i64
  %683 = icmp eq i64 %599, %682
  br i1 %683, label %690, label %684

684:                                              ; preds = %679
  br i1 %678, label %685, label %733

685:                                              ; preds = %664, %684
  %686 = getelementptr inbounds %struct.EMat, ptr %385, i64 %673, i32 1
  %687 = load i32, ptr %686, align 4, !tbaa !82
  %688 = zext i32 %687 to i64
  %689 = icmp eq i64 %599, %688
  br i1 %689, label %733, label %690

690:                                              ; preds = %685, %679
  %691 = phi ptr [ %670, %679 ], [ %674, %685 ]
  %692 = phi ptr [ %674, %679 ], [ %670, %685 ]
  call void @copy_m3_m3(ptr noundef nonnull %35, ptr noundef %691) #12
  call void @copy_m3_m3(ptr noundef nonnull %36, ptr noundef %692) #12
  %693 = call float @angle_normalized_v3v3(ptr noundef nonnull %35, ptr noundef nonnull %36) #12
  %694 = fmul float %693, 5.000000e-01
  %695 = load float, ptr %572, align 4, !tbaa !57
  %696 = load float, ptr %573, align 8, !tbaa !57
  %697 = load float, ptr %574, align 8, !tbaa !57
  %698 = load float, ptr %575, align 4, !tbaa !57
  %699 = fneg float %697
  %700 = fmul float %698, %699
  %701 = call float @llvm.fmuladd.f32(float %695, float %696, float %700)
  store float %701, ptr %34, align 4, !tbaa !57
  %702 = load float, ptr %36, align 16, !tbaa !57
  %703 = load float, ptr %35, align 16, !tbaa !57
  %704 = fneg float %703
  %705 = fmul float %696, %704
  %706 = call float @llvm.fmuladd.f32(float %697, float %702, float %705)
  store float %706, ptr %576, align 4, !tbaa !57
  %707 = fneg float %695
  %708 = fmul float %702, %707
  %709 = call float @llvm.fmuladd.f32(float %703, float %698, float %708)
  store float %709, ptr %577, align 4, !tbaa !57
  %710 = fmul float %706, %706
  %711 = call float @llvm.fmuladd.f32(float %701, float %701, float %710)
  %712 = call float @llvm.fmuladd.f32(float %709, float %709, float %711)
  %713 = fcmp ogt float %712, 0x38AA95A5C0000000
  br i1 %713, label %714, label %723

714:                                              ; preds = %690
  %715 = call float @sqrtf(float noundef %712) #12
  %716 = fdiv float 1.000000e+00, %715
  %717 = load float, ptr %34, align 4, !tbaa !57
  %718 = fmul float %717, %716
  store float %718, ptr %34, align 4, !tbaa !57
  %719 = load float, ptr %576, align 4, !tbaa !57
  %720 = fmul float %716, %719
  store float %720, ptr %576, align 4, !tbaa !57
  %721 = load float, ptr %577, align 4, !tbaa !57
  %722 = fmul float %716, %721
  br label %724

723:                                              ; preds = %690
  store float 0.000000e+00, ptr %34, align 4, !tbaa !57
  store float 0.000000e+00, ptr %576, align 4, !tbaa !57
  br label %724

724:                                              ; preds = %723, %714
  %725 = phi float [ 0.000000e+00, %723 ], [ %722, %714 ]
  store float %725, ptr %577, align 4, !tbaa !57
  %726 = load float, ptr %35, align 16, !tbaa !57
  store float %726, ptr %37, align 16, !tbaa !57
  %727 = load float, ptr %572, align 4, !tbaa !57
  store float %727, ptr %578, align 4, !tbaa !57
  %728 = load float, ptr %574, align 8, !tbaa !57
  store float %728, ptr %579, align 8, !tbaa !57
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %580, ptr noundef nonnull %581, ptr noundef nonnull %34, float noundef %694) #12
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %582, ptr noundef nonnull %583, ptr noundef nonnull %34, float noundef %694) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %36) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %35) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #12
  %729 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599
  %730 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 1
  store i32 1, ptr %730, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %729, i8 0, i64 304, i1 false)
  %731 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 2
  store i32 0, ptr %731, align 4, !tbaa !88
  store i64 -1, ptr %607, align 4
  %732 = getelementptr inbounds %struct.MVert, ptr %362, i64 %599
  call fastcc void @create_frame(ptr noundef %729, ptr noundef %732, ptr noundef %665, ptr noundef nonnull %37, float noundef 0.000000e+00)
  br label %785

733:                                              ; preds = %685, %684
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %36) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %35) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #12
  %734 = load float, ptr %665, align 4, !tbaa !57
  %735 = getelementptr inbounds float, ptr %665, i64 1
  %736 = load float, ptr %735, align 4, !tbaa !57
  %737 = load ptr, ptr %666, align 8, !tbaa !76
  %738 = load i32, ptr %737, align 4, !tbaa !50
  %739 = getelementptr inbounds i32, ptr %737, i64 1
  %740 = load i32, ptr %739, align 4, !tbaa !50
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599
  %743 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 1
  store i32 2, ptr %743, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %742, i8 0, i64 304, i1 false)
  %744 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 2
  store i32 0, ptr %744, align 4, !tbaa !88
  store i64 -1, ptr %605, align 4
  %745 = sext i32 %738 to i64
  %746 = fadd float %734, %736
  %747 = fmul float %746, 5.000000e-01
  %748 = getelementptr inbounds %struct.EMat, ptr %385, i64 %745
  %749 = getelementptr inbounds %struct.EMat, ptr %385, i64 %741
  %750 = load i32, ptr %744, align 4, !tbaa !88
  %751 = or i32 %750, 4
  store i32 %751, ptr %744, align 4, !tbaa !88
  call void @copy_m3_m3(ptr noundef nonnull %37, ptr noundef %748) #12
  %752 = getelementptr inbounds %struct.EMat, ptr %385, i64 %745, i32 1
  %753 = load i32, ptr %752, align 4, !tbaa !82
  %754 = zext i32 %753 to i64
  %755 = icmp eq i64 %599, %754
  br i1 %755, label %763, label %756

756:                                              ; preds = %733
  %757 = load float, ptr %37, align 16, !tbaa !57
  %758 = fneg float %757
  store float %758, ptr %37, align 16, !tbaa !57
  %759 = load float, ptr %584, align 4, !tbaa !57
  %760 = fneg float %759
  store float %760, ptr %584, align 4, !tbaa !57
  %761 = load float, ptr %585, align 8, !tbaa !57
  %762 = fneg float %761
  store float %762, ptr %585, align 8, !tbaa !57
  br label %763

763:                                              ; preds = %756, %733
  %764 = getelementptr inbounds %struct.MVert, ptr %362, i64 %599
  call fastcc void @create_frame(ptr noundef %742, ptr noundef %764, ptr noundef nonnull %665, ptr noundef nonnull %37, float noundef %747)
  %765 = load ptr, ptr %666, align 8, !tbaa !76
  %766 = load i32, ptr %765, align 4, !tbaa !50
  %767 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 3
  store i32 %766, ptr %767, align 8, !tbaa !50
  call void @copy_m3_m3(ptr noundef nonnull %37, ptr noundef %749) #12
  %768 = getelementptr inbounds %struct.EMat, ptr %385, i64 %741, i32 1
  %769 = load i32, ptr %768, align 4, !tbaa !82
  %770 = zext i32 %769 to i64
  %771 = icmp eq i64 %599, %770
  br i1 %771, label %779, label %772

772:                                              ; preds = %763
  %773 = load float, ptr %37, align 16, !tbaa !57
  %774 = fneg float %773
  store float %774, ptr %37, align 16, !tbaa !57
  %775 = load float, ptr %586, align 4, !tbaa !57
  %776 = fneg float %775
  store float %776, ptr %586, align 4, !tbaa !57
  %777 = load float, ptr %587, align 8, !tbaa !57
  %778 = fneg float %777
  store float %778, ptr %587, align 8, !tbaa !57
  br label %779

779:                                              ; preds = %772, %763
  %780 = getelementptr inbounds [2 x %struct.Frame], ptr %742, i64 0, i64 1
  call fastcc void @create_frame(ptr noundef nonnull %780, ptr noundef %764, ptr noundef nonnull %665, ptr noundef nonnull %37, float noundef %747)
  %781 = load ptr, ptr %666, align 8, !tbaa !76
  %782 = getelementptr inbounds i32, ptr %781, i64 1
  %783 = load i32, ptr %782, align 4, !tbaa !50
  %784 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %599, i32 3, i64 1
  store i32 %783, ptr %784, align 4, !tbaa !50
  br label %785

785:                                              ; preds = %724, %779
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %37) #12
  br label %786

786:                                              ; preds = %785, %662, %661
  %787 = add nuw nsw i64 %599, 1
  %788 = icmp eq i64 %787, %593
  br i1 %788, label %789, label %598, !llvm.loop !89

789:                                              ; preds = %786, %563
  %790 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %790(ptr noundef %385) #12
  %791 = load ptr, ptr %42, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #12
  %792 = getelementptr inbounds %struct.SkinOutput, ptr %33, i64 0, i32 1
  store ptr %0, ptr %792, align 8, !tbaa !90
  %793 = call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #12
  store ptr %793, ptr %33, align 8, !tbaa !92
  %794 = getelementptr inbounds %struct.SkinOutput, ptr %33, i64 0, i32 2
  store i32 0, ptr %794, align 8, !tbaa !93
  call void @BM_mesh_elem_toolflags_ensure(ptr noundef %793) #12
  call void @BMO_push(ptr noundef %793, ptr noundef null) #12
  call void @bmesh_edit_begin(ptr noundef %793, i32 noundef 0) #12
  %795 = icmp eq ptr %365, null
  br i1 %795, label %798, label %796

796:                                              ; preds = %789
  %797 = getelementptr inbounds %struct.BMesh, ptr %793, i64 0, i32 24
  call void @BM_data_layer_add(ptr noundef %793, ptr noundef nonnull %797, i32 noundef 2) #12
  br label %798

798:                                              ; preds = %796, %789
  %799 = icmp sgt i32 %370, 0
  br i1 %799, label %800, label %804

800:                                              ; preds = %798
  %801 = getelementptr inbounds float, ptr %32, i64 1
  %802 = getelementptr inbounds float, ptr %32, i64 2
  %803 = zext nneg i32 %370 to i64
  br label %809

804:                                              ; preds = %1022, %798
  %805 = icmp sgt i32 %370, 0
  br i1 %805, label %806, label %1025

806:                                              ; preds = %804
  %807 = getelementptr inbounds %struct.BMesh, ptr %793, i64 0, i32 24
  %808 = zext nneg i32 %370 to i64
  br label %1029

809:                                              ; preds = %800, %1022
  %810 = phi i64 [ 0, %800 ], [ %1023, %1022 ]
  %811 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %810, i32 1
  %812 = load i32, ptr %811, align 8, !tbaa !86
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %1022

814:                                              ; preds = %809
  %815 = getelementptr inbounds %struct.MeshElemMap, ptr %791, i64 %810
  %816 = getelementptr inbounds %struct.MeshElemMap, ptr %791, i64 %810, i32 1
  %817 = load i32, ptr %816, align 8, !tbaa !74
  %818 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %819 = sext i32 %817 to i64
  %820 = shl nsw i64 %819, 3
  %821 = call ptr %818(i64 noundef %820, ptr noundef nonnull @.str.8) #12
  %822 = load i32, ptr %816, align 8, !tbaa !74
  %823 = icmp sgt i32 %822, 0
  br i1 %823, label %824, label %854

824:                                              ; preds = %814
  %825 = trunc i64 %810 to i32
  br label %826

826:                                              ; preds = %824, %847
  %827 = phi i32 [ %848, %847 ], [ %817, %824 ]
  %828 = phi i64 [ %850, %847 ], [ 0, %824 ]
  %829 = phi i32 [ %849, %847 ], [ 0, %824 ]
  %830 = load ptr, ptr %815, align 8, !tbaa !76
  %831 = getelementptr inbounds i32, ptr %830, i64 %828
  %832 = load i32, ptr %831, align 4, !tbaa !50
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %833
  %835 = call i32 @BKE_mesh_edge_other_vert(ptr noundef %834, i32 noundef %825) #12
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %836, i32 1
  %838 = load i32, ptr %837, align 8, !tbaa !86
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %845, label %840

840:                                              ; preds = %826
  %841 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %836
  %842 = add nsw i32 %829, 1
  %843 = sext i32 %829 to i64
  %844 = getelementptr inbounds ptr, ptr %821, i64 %843
  store ptr %841, ptr %844, align 8, !tbaa !46
  br label %847

845:                                              ; preds = %826
  %846 = add nsw i32 %827, -1
  br label %847

847:                                              ; preds = %845, %840
  %848 = phi i32 [ %846, %845 ], [ %827, %840 ]
  %849 = phi i32 [ %829, %845 ], [ %842, %840 ]
  %850 = add nuw nsw i64 %828, 1
  %851 = load i32, ptr %816, align 8, !tbaa !74
  %852 = sext i32 %851 to i64
  %853 = icmp slt i64 %850, %852
  br i1 %853, label %826, label %854, !llvm.loop !94

854:                                              ; preds = %847, %814
  %855 = phi i32 [ %817, %814 ], [ %848, %847 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #12
  %856 = icmp sgt i32 %855, 0
  br i1 %856, label %857, label %1020

857:                                              ; preds = %854
  %858 = zext nneg i32 %855 to i64
  %859 = zext nneg i32 %855 to i64
  %860 = zext nneg i32 %855 to i64
  br label %861

861:                                              ; preds = %857, %1017
  %862 = phi i64 [ 0, %857 ], [ %903, %1017 ]
  %863 = phi i64 [ 1, %857 ], [ %1018, %1017 ]
  %864 = getelementptr inbounds ptr, ptr %821, i64 %862
  %865 = load ptr, ptr %864, align 8, !tbaa !46
  %866 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1
  %867 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 1
  %868 = load float, ptr %867, align 4, !tbaa !57
  %869 = load float, ptr %866, align 4, !tbaa !57
  %870 = fsub float %868, %869
  %871 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 1, i64 1
  %872 = load float, ptr %871, align 4, !tbaa !57
  %873 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 0, i64 1
  %874 = load float, ptr %873, align 4, !tbaa !57
  %875 = fsub float %872, %874
  %876 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 1, i64 2
  %877 = load float, ptr %876, align 4, !tbaa !57
  %878 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 0, i64 2
  %879 = load float, ptr %878, align 4, !tbaa !57
  %880 = fsub float %877, %879
  %881 = fmul float %875, %875
  %882 = call float @llvm.fmuladd.f32(float %870, float %870, float %881)
  %883 = call float @llvm.fmuladd.f32(float %880, float %880, float %882)
  %884 = call float @sqrtf(float noundef %883) #12
  %885 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 2
  %886 = load float, ptr %885, align 4, !tbaa !57
  %887 = load float, ptr %867, align 4, !tbaa !57
  %888 = fsub float %886, %887
  %889 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 2, i64 1
  %890 = load float, ptr %889, align 4, !tbaa !57
  %891 = load float, ptr %871, align 4, !tbaa !57
  %892 = fsub float %890, %891
  %893 = getelementptr inbounds %struct.Frame, ptr %865, i64 0, i32 1, i64 2, i64 2
  %894 = load float, ptr %893, align 4, !tbaa !57
  %895 = load float, ptr %876, align 4, !tbaa !57
  %896 = fsub float %894, %895
  %897 = fmul float %892, %892
  %898 = call float @llvm.fmuladd.f32(float %888, float %888, float %897)
  %899 = call float @llvm.fmuladd.f32(float %896, float %896, float %898)
  %900 = call float @sqrtf(float noundef %899) #12
  %901 = fadd float %884, %900
  %902 = fmul float %901, 5.000000e-01
  %903 = add nuw nsw i64 %862, 1
  %904 = icmp uge i64 %903, %858
  br label %905

905:                                              ; preds = %861, %1014
  %906 = phi i64 [ 0, %861 ], [ %1015, %1014 ]
  %907 = load ptr, ptr %864, align 8, !tbaa !46
  %908 = getelementptr inbounds %struct.Frame, ptr %907, i64 0, i32 2, i64 %906
  %909 = load ptr, ptr %908, align 8, !tbaa !95
  %910 = icmp ne ptr %909, null
  %911 = select i1 %910, i1 true, i1 %904
  br i1 %911, label %1014, label %912

912:                                              ; preds = %905
  %913 = trunc i64 %906 to i32
  br label %914

914:                                              ; preds = %912, %1011
  %915 = phi i64 [ %863, %912 ], [ %1012, %1011 ]
  %916 = getelementptr inbounds ptr, ptr %821, i64 %915
  %917 = load ptr, ptr %916, align 8, !tbaa !46
  %918 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1
  %919 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 1
  %920 = load float, ptr %919, align 4, !tbaa !57
  %921 = load float, ptr %918, align 4, !tbaa !57
  %922 = fsub float %920, %921
  %923 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 1, i64 1
  %924 = load float, ptr %923, align 4, !tbaa !57
  %925 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 0, i64 1
  %926 = load float, ptr %925, align 4, !tbaa !57
  %927 = fsub float %924, %926
  %928 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 1, i64 2
  %929 = load float, ptr %928, align 4, !tbaa !57
  %930 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 0, i64 2
  %931 = load float, ptr %930, align 4, !tbaa !57
  %932 = fsub float %929, %931
  %933 = fmul float %927, %927
  %934 = call float @llvm.fmuladd.f32(float %922, float %922, float %933)
  %935 = call float @llvm.fmuladd.f32(float %932, float %932, float %934)
  %936 = call float @sqrtf(float noundef %935) #12
  %937 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 2
  %938 = load float, ptr %937, align 4, !tbaa !57
  %939 = load float, ptr %919, align 4, !tbaa !57
  %940 = fsub float %938, %939
  %941 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 2, i64 1
  %942 = load float, ptr %941, align 4, !tbaa !57
  %943 = load float, ptr %923, align 4, !tbaa !57
  %944 = fsub float %942, %943
  %945 = getelementptr inbounds %struct.Frame, ptr %917, i64 0, i32 1, i64 2, i64 2
  %946 = load float, ptr %945, align 4, !tbaa !57
  %947 = load float, ptr %928, align 4, !tbaa !57
  %948 = fsub float %946, %947
  %949 = fmul float %944, %944
  %950 = call float @llvm.fmuladd.f32(float %940, float %940, float %949)
  %951 = call float @llvm.fmuladd.f32(float %948, float %948, float %950)
  %952 = call float @sqrtf(float noundef %951) #12
  %953 = fadd float %936, %952
  %954 = fmul float %953, 5.000000e-01
  %955 = fcmp olt float %902, %954
  %956 = select i1 %955, float %902, float %954
  %957 = fmul float %956, 5.000000e-01
  br label %958

958:                                              ; preds = %914, %1008
  %959 = phi i64 [ 0, %914 ], [ %1009, %1008 ]
  %960 = load ptr, ptr %916, align 8, !tbaa !46
  %961 = getelementptr inbounds %struct.Frame, ptr %960, i64 0, i32 2, i64 %959
  %962 = load ptr, ptr %961, align 8, !tbaa !95
  %963 = icmp eq ptr %962, null
  br i1 %963, label %964, label %1008

964:                                              ; preds = %958
  %965 = load ptr, ptr %864, align 8, !tbaa !46
  %966 = getelementptr inbounds %struct.Frame, ptr %965, i64 0, i32 1, i64 %906
  %967 = getelementptr inbounds %struct.Frame, ptr %960, i64 0, i32 1, i64 %959
  %968 = load float, ptr %967, align 4, !tbaa !57
  %969 = load float, ptr %966, align 4, !tbaa !57
  %970 = fsub float %968, %969
  %971 = getelementptr inbounds float, ptr %967, i64 1
  %972 = load float, ptr %971, align 4, !tbaa !57
  %973 = getelementptr inbounds float, ptr %966, i64 1
  %974 = load float, ptr %973, align 4, !tbaa !57
  %975 = fsub float %972, %974
  %976 = getelementptr inbounds float, ptr %967, i64 2
  %977 = load float, ptr %976, align 4, !tbaa !57
  %978 = getelementptr inbounds float, ptr %966, i64 2
  %979 = load float, ptr %978, align 4, !tbaa !57
  %980 = fsub float %977, %979
  %981 = fmul float %975, %975
  %982 = call float @llvm.fmuladd.f32(float %970, float %970, float %981)
  %983 = call float @llvm.fmuladd.f32(float %980, float %980, float %982)
  %984 = call float @sqrtf(float noundef %983) #12
  %985 = fcmp olt float %984, %957
  br i1 %985, label %986, label %1008

986:                                              ; preds = %964
  %987 = load ptr, ptr %864, align 8, !tbaa !46
  %988 = getelementptr inbounds %struct.Frame, ptr %987, i64 0, i32 1, i64 %906
  %989 = load ptr, ptr %916, align 8, !tbaa !46
  %990 = getelementptr inbounds %struct.Frame, ptr %989, i64 0, i32 1, i64 %959
  call void @mid_v3_v3v3(ptr noundef nonnull %32, ptr noundef nonnull %988, ptr noundef nonnull %990) #12
  %991 = load ptr, ptr %864, align 8, !tbaa !46
  %992 = getelementptr inbounds %struct.Frame, ptr %991, i64 0, i32 1, i64 %906
  %993 = load float, ptr %32, align 4, !tbaa !57
  store float %993, ptr %992, align 4, !tbaa !57
  %994 = load float, ptr %801, align 4, !tbaa !57
  %995 = getelementptr inbounds float, ptr %992, i64 1
  store float %994, ptr %995, align 4, !tbaa !57
  %996 = load float, ptr %802, align 4, !tbaa !57
  %997 = getelementptr inbounds float, ptr %992, i64 2
  store float %996, ptr %997, align 4, !tbaa !57
  %998 = load ptr, ptr %916, align 8, !tbaa !46
  %999 = getelementptr inbounds %struct.Frame, ptr %998, i64 0, i32 1, i64 %959
  %1000 = load float, ptr %32, align 4, !tbaa !57
  store float %1000, ptr %999, align 4, !tbaa !57
  %1001 = load float, ptr %801, align 4, !tbaa !57
  %1002 = getelementptr inbounds float, ptr %999, i64 1
  store float %1001, ptr %1002, align 4, !tbaa !57
  %1003 = load float, ptr %802, align 4, !tbaa !57
  %1004 = getelementptr inbounds float, ptr %999, i64 2
  store float %1003, ptr %1004, align 4, !tbaa !57
  %1005 = getelementptr inbounds %struct.Frame, ptr %998, i64 0, i32 2, i64 %959
  store ptr %991, ptr %1005, align 8, !tbaa !95
  %1006 = load ptr, ptr %916, align 8, !tbaa !46
  %1007 = getelementptr inbounds %struct.Frame, ptr %1006, i64 0, i32 2, i64 %959, i32 1
  store i32 %913, ptr %1007, align 8, !tbaa !97
  br label %1011

1008:                                             ; preds = %964, %958
  %1009 = add nuw nsw i64 %959, 1
  %1010 = icmp eq i64 %1009, 4
  br i1 %1010, label %1011, label %958, !llvm.loop !98

1011:                                             ; preds = %1008, %986
  %1012 = add nuw nsw i64 %915, 1
  %1013 = icmp eq i64 %1012, %860
  br i1 %1013, label %1014, label %914, !llvm.loop !99

1014:                                             ; preds = %1011, %905
  %1015 = add nuw nsw i64 %906, 1
  %1016 = icmp eq i64 %1015, 4
  br i1 %1016, label %1017, label %905, !llvm.loop !100

1017:                                             ; preds = %1014
  %1018 = add nuw nsw i64 %863, 1
  %1019 = icmp eq i64 %903, %859
  br i1 %1019, label %1020, label %861, !llvm.loop !101

1020:                                             ; preds = %1017, %854
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #12
  %1021 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %1021(ptr noundef %821) #12
  br label %1022

1022:                                             ; preds = %1020, %809
  %1023 = add nuw nsw i64 %810, 1
  %1024 = icmp eq i64 %1023, %803
  br i1 %1024, label %804, label %809, !llvm.loop !102

1025:                                             ; preds = %1065, %804
  %1026 = icmp sgt i32 %370, 0
  br i1 %1026, label %1027, label %1068

1027:                                             ; preds = %1025
  %1028 = zext nneg i32 %370 to i64
  br label %1072

1029:                                             ; preds = %806, %1065
  %1030 = phi i64 [ 0, %806 ], [ %1066, %1065 ]
  %1031 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1030, i32 1
  %1032 = load i32, ptr %1031, align 8, !tbaa !86
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1065, label %1034

1034:                                             ; preds = %1029
  %1035 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1030
  %1036 = getelementptr inbounds %struct.MDeformVert, ptr %365, i64 %1030
  %1037 = select i1 %795, ptr null, ptr %1036
  %1038 = load i32, ptr %1031, align 8, !tbaa !86
  %1039 = icmp sgt i32 %1038, 0
  br i1 %1039, label %1040, label %1065

1040:                                             ; preds = %1034
  %1041 = icmp eq ptr %1037, null
  br label %1042

1042:                                             ; preds = %1040, %1060
  %1043 = phi i64 [ 0, %1040 ], [ %1061, %1060 ]
  %1044 = getelementptr inbounds [2 x %struct.Frame], ptr %1035, i64 0, i64 %1043
  br label %1045

1045:                                             ; preds = %1042, %1057
  %1046 = phi i64 [ 0, %1042 ], [ %1058, %1057 ]
  %1047 = getelementptr inbounds [2 x %struct.Frame], ptr %1035, i64 0, i64 %1043, i32 2, i64 %1046
  %1048 = load ptr, ptr %1047, align 8, !tbaa !95
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1050, label %1057

1050:                                             ; preds = %1045
  %1051 = getelementptr inbounds [2 x %struct.Frame], ptr %1035, i64 0, i64 %1043, i32 1, i64 %1046
  %1052 = call ptr @BM_vert_create(ptr noundef %793, ptr noundef nonnull %1051, ptr noundef null, i32 noundef 0) #12
  %1053 = getelementptr inbounds [4 x ptr], ptr %1044, i64 0, i64 %1046
  store ptr %1052, ptr %1053, align 8, !tbaa !46
  br i1 %1041, label %1057, label %1054

1054:                                             ; preds = %1050
  %1055 = load ptr, ptr %1052, align 8, !tbaa !103
  %1056 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %807, ptr noundef %1055, i32 noundef 2) #12
  call void @defvert_copy(ptr noundef %1056, ptr noundef nonnull %1037) #12
  br label %1057

1057:                                             ; preds = %1054, %1050, %1045
  %1058 = add nuw nsw i64 %1046, 1
  %1059 = icmp eq i64 %1058, 4
  br i1 %1059, label %1060, label %1045, !llvm.loop !106

1060:                                             ; preds = %1057
  %1061 = add nuw nsw i64 %1043, 1
  %1062 = load i32, ptr %1031, align 8, !tbaa !86
  %1063 = sext i32 %1062 to i64
  %1064 = icmp slt i64 %1061, %1063
  br i1 %1064, label %1042, label %1065, !llvm.loop !107

1065:                                             ; preds = %1060, %1034, %1029
  %1066 = add nuw nsw i64 %1030, 1
  %1067 = icmp eq i64 %1066, %808
  br i1 %1067, label %1025, label %1029, !llvm.loop !108

1068:                                             ; preds = %1101, %1025
  %1069 = icmp sgt i32 %370, 0
  br i1 %1069, label %1070, label %1152

1070:                                             ; preds = %1068
  %1071 = zext nneg i32 %370 to i64
  br label %1104

1072:                                             ; preds = %1027, %1101
  %1073 = phi i64 [ 0, %1027 ], [ %1102, %1101 ]
  %1074 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1073
  %1075 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1073, i32 1
  %1076 = load i32, ptr %1075, align 8, !tbaa !86
  %1077 = icmp sgt i32 %1076, 0
  br i1 %1077, label %1078, label %1101

1078:                                             ; preds = %1072
  %1079 = zext nneg i32 %1076 to i64
  br label %1080

1080:                                             ; preds = %1078, %1098
  %1081 = phi i64 [ 0, %1078 ], [ %1099, %1098 ]
  %1082 = getelementptr inbounds [2 x %struct.Frame], ptr %1074, i64 0, i64 %1081
  br label %1083

1083:                                             ; preds = %1080, %1095
  %1084 = phi i64 [ 0, %1080 ], [ %1096, %1095 ]
  %1085 = getelementptr inbounds [2 x %struct.Frame], ptr %1074, i64 0, i64 %1081, i32 2, i64 %1084
  %1086 = load ptr, ptr %1085, align 8, !tbaa !95
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1095, label %1088

1088:                                             ; preds = %1083
  %1089 = getelementptr inbounds [2 x %struct.Frame], ptr %1074, i64 0, i64 %1081, i32 2, i64 %1084, i32 1
  %1090 = load i32, ptr %1089, align 8, !tbaa !97
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [4 x ptr], ptr %1086, i64 0, i64 %1091
  %1093 = load ptr, ptr %1092, align 8, !tbaa !46
  %1094 = getelementptr inbounds [4 x ptr], ptr %1082, i64 0, i64 %1084
  store ptr %1093, ptr %1094, align 8, !tbaa !46
  br label %1095

1095:                                             ; preds = %1088, %1083
  %1096 = add nuw nsw i64 %1084, 1
  %1097 = icmp eq i64 %1096, 4
  br i1 %1097, label %1098, label %1083, !llvm.loop !109

1098:                                             ; preds = %1095
  %1099 = add nuw nsw i64 %1081, 1
  %1100 = icmp eq i64 %1099, %1079
  br i1 %1100, label %1101, label %1080, !llvm.loop !110

1101:                                             ; preds = %1098, %1072
  %1102 = add nuw nsw i64 %1073, 1
  %1103 = icmp eq i64 %1102, %1028
  br i1 %1103, label %1068, label %1072, !llvm.loop !111

1104:                                             ; preds = %1070, %1148
  %1105 = phi i64 [ 0, %1070 ], [ %1150, %1148 ]
  %1106 = phi i8 [ 1, %1070 ], [ %1149, %1148 ]
  %1107 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1105, i32 1
  %1108 = load i32, ptr %1107, align 8, !tbaa !86
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1110, label %1148

1110:                                             ; preds = %1104
  %1111 = getelementptr inbounds %struct.MeshElemMap, ptr %791, i64 %1105
  %1112 = getelementptr inbounds %struct.MeshElemMap, ptr %791, i64 %1105, i32 1
  %1113 = load i32, ptr %1112, align 8, !tbaa !74
  %1114 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %1115 = sext i32 %1113 to i64
  %1116 = shl nsw i64 %1115, 3
  %1117 = call ptr %1114(i64 noundef %1116, ptr noundef nonnull @.str.8) #12
  %1118 = load i32, ptr %1112, align 8, !tbaa !74
  %1119 = icmp sgt i32 %1118, 0
  br i1 %1119, label %1120, label %1146

1120:                                             ; preds = %1110
  %1121 = trunc i64 %1105 to i32
  br label %1122

1122:                                             ; preds = %1120, %1140
  %1123 = phi i64 [ %1142, %1140 ], [ 0, %1120 ]
  %1124 = phi i32 [ %1141, %1140 ], [ 0, %1120 ]
  %1125 = load ptr, ptr %1111, align 8, !tbaa !76
  %1126 = getelementptr inbounds i32, ptr %1125, i64 %1123
  %1127 = load i32, ptr %1126, align 4, !tbaa !50
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %1128
  %1130 = call i32 @BKE_mesh_edge_other_vert(ptr noundef %1129, i32 noundef %1121) #12
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1131, i32 1
  %1133 = load i32, ptr %1132, align 8, !tbaa !86
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1140, label %1135

1135:                                             ; preds = %1122
  %1136 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1131
  %1137 = add nsw i32 %1124, 1
  %1138 = sext i32 %1124 to i64
  %1139 = getelementptr inbounds ptr, ptr %1117, i64 %1138
  store ptr %1136, ptr %1139, align 8, !tbaa !46
  br label %1140

1140:                                             ; preds = %1122, %1135
  %1141 = phi i32 [ %1137, %1135 ], [ %1124, %1122 ]
  %1142 = add nuw nsw i64 %1123, 1
  %1143 = load i32, ptr %1112, align 8, !tbaa !74
  %1144 = sext i32 %1143 to i64
  %1145 = icmp slt i64 %1142, %1144
  br i1 %1145, label %1122, label %1146, !llvm.loop !94

1146:                                             ; preds = %1140, %1110
  %1147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %1147(ptr noundef %1117) #12
  br label %1148

1148:                                             ; preds = %1146, %1104
  %1149 = phi i8 [ %1106, %1104 ], [ 0, %1146 ]
  %1150 = add nuw nsw i64 %1105, 1
  %1151 = icmp eq i64 %1150, %1071
  br i1 %1151, label %1152, label %1104, !llvm.loop !112

1152:                                             ; preds = %1148, %1068
  %1153 = phi i8 [ 1, %1068 ], [ %1149, %1148 ]
  %1154 = icmp eq i8 %1153, 0
  br i1 %1154, label %1155, label %1156

1155:                                             ; preds = %1152
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.7) #12
  br label %1156

1156:                                             ; preds = %1155, %1152
  call fastcc void @hull_merge_triangles(ptr noundef nonnull %33, ptr noundef %0)
  %1157 = icmp sgt i32 %370, 0
  br i1 %1157, label %1158, label %1534

1158:                                             ; preds = %1156
  %1159 = getelementptr inbounds float, ptr %28, i64 1
  %1160 = getelementptr inbounds float, ptr %28, i64 2
  %1161 = getelementptr inbounds %struct.BMIter, ptr %27, i64 0, i32 4
  %1162 = getelementptr inbounds %struct.BMIter, ptr %27, i64 0, i32 1
  %1163 = getelementptr inbounds %struct.BMIter, ptr %27, i64 0, i32 2
  %1164 = getelementptr inbounds %struct.BMesh, ptr %793, i64 0, i32 12
  %1165 = getelementptr inbounds %struct.BMIter, ptr %25, i64 0, i32 4
  %1166 = getelementptr inbounds %struct.BMIter, ptr %25, i64 0, i32 1
  %1167 = getelementptr inbounds %struct.BMIter, ptr %25, i64 0, i32 2
  %1168 = getelementptr inbounds float, ptr %30, i64 1
  %1169 = getelementptr inbounds float, ptr %30, i64 2
  %1170 = getelementptr inbounds %struct.BMOperator, ptr %23, i64 0, i32 1
  %1171 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 4
  %1172 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 1
  %1173 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 2
  %1174 = zext nneg i32 %370 to i64
  br label %1175

1175:                                             ; preds = %1158, %1531
  %1176 = phi i64 [ 0, %1158 ], [ %1532, %1531 ]
  %1177 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1176
  %1178 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1176, i32 1
  %1179 = load i32, ptr %1178, align 8, !tbaa !86
  %1180 = icmp sgt i32 %1179, 0
  br i1 %1180, label %1181, label %1531

1181:                                             ; preds = %1175, %1526
  %1182 = phi i64 [ %1527, %1526 ], [ 0, %1175 ]
  %1183 = getelementptr inbounds [2 x %struct.Frame], ptr %1177, i64 0, i64 %1182
  %1184 = getelementptr inbounds [2 x %struct.Frame], ptr %1177, i64 0, i64 %1182, i32 4
  %1185 = load i8, ptr %1184, align 4, !tbaa !113
  %1186 = icmp eq i8 %1185, 0
  br i1 %1186, label %1526, label %1187

1187:                                             ; preds = %1181
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #12
  br label %1192

1188:                                             ; preds = %1203
  %1189 = icmp sgt i32 %1204, 0
  br i1 %1189, label %1190, label %1218

1190:                                             ; preds = %1188
  %1191 = zext nneg i32 %1204 to i64
  br label %1207

1192:                                             ; preds = %1187, %1203
  %1193 = phi i64 [ 0, %1187 ], [ %1205, %1203 ]
  %1194 = phi i32 [ 0, %1187 ], [ %1204, %1203 ]
  %1195 = getelementptr inbounds [2 x %struct.Frame], ptr %1177, i64 0, i64 %1182, i32 3, i64 %1193
  %1196 = load i8, ptr %1195, align 1, !tbaa !115
  %1197 = icmp eq i8 %1196, 0
  br i1 %1197, label %1198, label %1203

1198:                                             ; preds = %1192
  %1199 = add nsw i32 %1194, 1
  %1200 = sext i32 %1194 to i64
  %1201 = getelementptr inbounds [4 x i32], ptr %31, i64 0, i64 %1200
  %1202 = trunc i64 %1193 to i32
  store i32 %1202, ptr %1201, align 4, !tbaa !50
  br label %1203

1203:                                             ; preds = %1198, %1192
  %1204 = phi i32 [ %1194, %1192 ], [ %1199, %1198 ]
  %1205 = add nuw nsw i64 %1193, 1
  %1206 = icmp eq i64 %1205, 4
  br i1 %1206, label %1188, label %1192, !llvm.loop !116

1207:                                             ; preds = %1190, %1207
  %1208 = phi i64 [ 0, %1190 ], [ %1216, %1207 ]
  %1209 = getelementptr inbounds [4 x i32], ptr %31, i64 0, i64 %1208
  %1210 = load i32, ptr %1209, align 4, !tbaa !50
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds [4 x ptr], ptr %1183, i64 0, i64 %1211
  %1213 = load ptr, ptr %1212, align 8, !tbaa !46
  %1214 = getelementptr inbounds %struct.BMVert, ptr %1213, i64 0, i32 2
  %1215 = call ptr @BM_vert_create(ptr noundef %793, ptr noundef nonnull %1214, ptr noundef %1213, i32 noundef 0) #12
  store ptr %1215, ptr %1212, align 8, !tbaa !46
  %1216 = add nuw nsw i64 %1208, 1
  %1217 = icmp eq i64 %1216, %1191
  br i1 %1217, label %1218, label %1207, !llvm.loop !117

1218:                                             ; preds = %1207, %1188
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #12
  %1219 = load ptr, ptr %1183, align 8, !tbaa !46
  %1220 = getelementptr inbounds %struct.BMVert, ptr %1219, i64 0, i32 2
  %1221 = getelementptr inbounds [4 x ptr], ptr %1183, i64 0, i64 1
  %1222 = load ptr, ptr %1221, align 8, !tbaa !46
  %1223 = getelementptr inbounds %struct.BMVert, ptr %1222, i64 0, i32 2
  %1224 = load float, ptr %1220, align 4, !tbaa !57
  %1225 = load float, ptr %1223, align 4, !tbaa !57
  %1226 = fadd float %1224, %1225
  store float %1226, ptr %28, align 4, !tbaa !57
  %1227 = getelementptr inbounds %struct.BMVert, ptr %1219, i64 0, i32 2, i64 1
  %1228 = load float, ptr %1227, align 4, !tbaa !57
  %1229 = getelementptr inbounds %struct.BMVert, ptr %1222, i64 0, i32 2, i64 1
  %1230 = load float, ptr %1229, align 4, !tbaa !57
  %1231 = fadd float %1228, %1230
  store float %1231, ptr %1159, align 4, !tbaa !57
  %1232 = getelementptr inbounds %struct.BMVert, ptr %1219, i64 0, i32 2, i64 2
  %1233 = load float, ptr %1232, align 4, !tbaa !57
  %1234 = getelementptr inbounds %struct.BMVert, ptr %1222, i64 0, i32 2, i64 2
  %1235 = load float, ptr %1234, align 4, !tbaa !57
  %1236 = fadd float %1233, %1235
  store float %1236, ptr %1160, align 4, !tbaa !57
  %1237 = getelementptr inbounds [4 x ptr], ptr %1183, i64 0, i64 2
  %1238 = load ptr, ptr %1237, align 8, !tbaa !46
  %1239 = getelementptr inbounds %struct.BMVert, ptr %1238, i64 0, i32 2
  %1240 = load float, ptr %1239, align 4, !tbaa !57
  %1241 = fadd float %1226, %1240
  store float %1241, ptr %28, align 4, !tbaa !57
  %1242 = getelementptr inbounds %struct.BMVert, ptr %1238, i64 0, i32 2, i64 1
  %1243 = load float, ptr %1242, align 4, !tbaa !57
  %1244 = fadd float %1231, %1243
  store float %1244, ptr %1159, align 4, !tbaa !57
  %1245 = getelementptr inbounds %struct.BMVert, ptr %1238, i64 0, i32 2, i64 2
  %1246 = load float, ptr %1245, align 4, !tbaa !57
  %1247 = fadd float %1236, %1246
  store float %1247, ptr %1160, align 4, !tbaa !57
  %1248 = getelementptr inbounds [4 x ptr], ptr %1183, i64 0, i64 3
  %1249 = load ptr, ptr %1248, align 8, !tbaa !46
  %1250 = getelementptr inbounds %struct.BMVert, ptr %1249, i64 0, i32 2
  %1251 = load float, ptr %1250, align 4, !tbaa !57
  %1252 = fadd float %1241, %1251
  store float %1252, ptr %28, align 4, !tbaa !57
  %1253 = getelementptr inbounds %struct.BMVert, ptr %1249, i64 0, i32 2, i64 1
  %1254 = load float, ptr %1253, align 4, !tbaa !57
  %1255 = fadd float %1244, %1254
  store float %1255, ptr %1159, align 4, !tbaa !57
  %1256 = getelementptr inbounds %struct.BMVert, ptr %1249, i64 0, i32 2, i64 2
  %1257 = load float, ptr %1256, align 4, !tbaa !57
  %1258 = fadd float %1247, %1257
  store float %1258, ptr %1160, align 4, !tbaa !57
  %1259 = fmul float %1252, 2.500000e-01
  store float %1259, ptr %28, align 4, !tbaa !57
  %1260 = fmul float %1255, 2.500000e-01
  store float %1260, ptr %1159, align 4, !tbaa !57
  %1261 = fmul float %1258, 2.500000e-01
  store float %1261, ptr %1160, align 4, !tbaa !57
  %1262 = call float @normal_quad_v3(ptr noundef nonnull %29, ptr noundef nonnull %1250, ptr noundef nonnull %1239, ptr noundef nonnull %1223, ptr noundef nonnull %1220) #12
  store i8 3, ptr %1161, align 4, !tbaa !118
  store ptr @bmiter__elem_of_mesh_begin, ptr %1162, align 8, !tbaa !120
  store ptr @bmiter__elem_of_mesh_step, ptr %1163, align 8, !tbaa !121
  %1263 = load ptr, ptr %1164, align 8, !tbaa !122
  store ptr %1263, ptr %27, align 8, !tbaa !115
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %27) #12
  %1264 = load ptr, ptr %1163, align 8, !tbaa !121
  %1265 = call ptr %1264(ptr noundef nonnull %27) #12
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1332, label %1267

1267:                                             ; preds = %1218, %1305
  %1268 = phi ptr [ %1330, %1305 ], [ %1265, %1218 ]
  %1269 = phi float [ %1328, %1305 ], [ 0x47EFFFFFE0000000, %1218 ]
  %1270 = phi float [ %1312, %1305 ], [ 0x47EFFFFFE0000000, %1218 ]
  %1271 = phi ptr [ %1327, %1305 ], [ null, %1218 ]
  %1272 = phi ptr [ %1311, %1305 ], [ null, %1218 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %25) #12
  store i8 9, ptr %1165, align 4, !tbaa !118
  store ptr @bmiter__vert_of_face_begin, ptr %1166, align 8, !tbaa !120
  store ptr @bmiter__vert_of_face_step, ptr %1167, align 8, !tbaa !121
  store ptr %1268, ptr %25, align 8, !tbaa !115
  call void @bmiter__vert_of_face_begin(ptr noundef nonnull %25) #12
  %1273 = load ptr, ptr %1167, align 8, !tbaa !121
  %1274 = call ptr %1273(ptr noundef nonnull %25) #12
  %1275 = icmp eq ptr %1274, null
  br i1 %1275, label %1305, label %1276

1276:                                             ; preds = %1267, %1298
  %1277 = phi ptr [ %1303, %1298 ], [ %1274, %1267 ]
  %1278 = phi i8 [ %1301, %1298 ], [ 0, %1267 ]
  %1279 = phi float [ %1300, %1298 ], [ 0x47EFFFFFE0000000, %1267 ]
  %1280 = phi ptr [ %1277, %1298 ], [ null, %1267 ]
  %1281 = phi ptr [ %1299, %1298 ], [ null, %1267 ]
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1298, label %1283

1283:                                             ; preds = %1276
  %1284 = icmp eq ptr %1280, %1281
  br i1 %1284, label %1298, label %1285

1285:                                             ; preds = %1283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #12
  %1286 = getelementptr inbounds %struct.BMVert, ptr %1281, i64 0, i32 2
  %1287 = getelementptr inbounds %struct.BMVert, ptr %1280, i64 0, i32 2
  %1288 = getelementptr inbounds %struct.BMVert, ptr %1277, i64 0, i32 2
  %1289 = call zeroext i8 @isect_ray_tri_v3(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %1286, ptr noundef nonnull %1287, ptr noundef nonnull %1288, ptr noundef nonnull %26, ptr noundef null) #12
  %1290 = icmp eq i8 %1289, 0
  br i1 %1290, label %1295, label %1291

1291:                                             ; preds = %1285
  %1292 = load float, ptr %26, align 4, !tbaa !57
  %1293 = fcmp olt float %1292, %1279
  br i1 %1293, label %1294, label %1295

1294:                                             ; preds = %1291
  br label %1295

1295:                                             ; preds = %1294, %1291, %1285
  %1296 = phi float [ %1292, %1294 ], [ %1279, %1291 ], [ %1279, %1285 ]
  %1297 = phi i8 [ 1, %1294 ], [ %1278, %1291 ], [ %1278, %1285 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #12
  br label %1298

1298:                                             ; preds = %1295, %1283, %1276
  %1299 = phi ptr [ %1281, %1295 ], [ %1281, %1283 ], [ %1277, %1276 ]
  %1300 = phi float [ %1296, %1295 ], [ %1279, %1283 ], [ %1279, %1276 ]
  %1301 = phi i8 [ %1297, %1295 ], [ %1278, %1283 ], [ %1278, %1276 ]
  %1302 = load ptr, ptr %1167, align 8, !tbaa !121
  %1303 = call ptr %1302(ptr noundef nonnull %25) #12
  %1304 = icmp eq ptr %1303, null
  br i1 %1304, label %1305, label %1276, !llvm.loop !125

1305:                                             ; preds = %1298, %1267
  %1306 = phi float [ 0x47EFFFFFE0000000, %1267 ], [ %1300, %1298 ]
  %1307 = phi i8 [ 0, %1267 ], [ %1301, %1298 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #12
  %1308 = icmp ne i8 %1307, 0
  %1309 = fcmp olt float %1306, %1270
  %1310 = select i1 %1308, i1 %1309, i1 false
  %1311 = select i1 %1310, ptr %1268, ptr %1272
  %1312 = select i1 %1310, float %1306, float %1270
  call void @BM_face_calc_center_mean(ptr noundef nonnull %1268, ptr noundef nonnull %30) #12
  %1313 = load float, ptr %30, align 4, !tbaa !57
  %1314 = load float, ptr %28, align 4, !tbaa !57
  %1315 = fsub float %1313, %1314
  %1316 = load float, ptr %1168, align 4, !tbaa !57
  %1317 = load float, ptr %1159, align 4, !tbaa !57
  %1318 = fsub float %1316, %1317
  %1319 = load float, ptr %1169, align 4, !tbaa !57
  %1320 = load float, ptr %1160, align 4, !tbaa !57
  %1321 = fsub float %1319, %1320
  %1322 = fmul float %1318, %1318
  %1323 = call float @llvm.fmuladd.f32(float %1315, float %1315, float %1322)
  %1324 = call float @llvm.fmuladd.f32(float %1321, float %1321, float %1323)
  %1325 = call float @sqrtf(float noundef %1324) #12
  %1326 = fcmp olt float %1325, %1269
  %1327 = select i1 %1326, ptr %1268, ptr %1271
  %1328 = select i1 %1326, float %1325, float %1269
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #12
  %1329 = load ptr, ptr %1163, align 8, !tbaa !121
  %1330 = call ptr %1329(ptr noundef nonnull %27) #12
  %1331 = icmp eq ptr %1330, null
  br i1 %1331, label %1332, label %1267, !llvm.loop !126

1332:                                             ; preds = %1305, %1218
  %1333 = phi ptr [ null, %1218 ], [ %1311, %1305 ]
  %1334 = phi ptr [ null, %1218 ], [ %1327, %1305 ]
  %1335 = phi float [ 0x47EFFFFFE0000000, %1218 ], [ %1312, %1305 ]
  %1336 = phi float [ 0x47EFFFFFE0000000, %1218 ], [ %1328, %1305 ]
  %1337 = icmp eq ptr %1333, null
  %1338 = fmul float %1335, 5.000000e-01
  %1339 = fcmp olt float %1336, %1338
  %1340 = select i1 %1337, i1 true, i1 %1339
  %1341 = select i1 %1340, ptr %1334, ptr %1333
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #12
  %1342 = icmp eq ptr %1341, null
  br i1 %1342, label %1526, label %1343

1343:                                             ; preds = %1332
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #12
  store ptr null, ptr %21, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %22) #12
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %23) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #12
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %793, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #12
  %1344 = getelementptr inbounds %struct.BMHeader, ptr %1341, i64 0, i32 3
  %1345 = load i8, ptr %1344, align 1, !tbaa !127
  %1346 = or i8 %1345, 16
  store i8 %1346, ptr %1344, align 1, !tbaa !127
  %1347 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %793, ptr noundef nonnull %23, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 16) #12
  call void @BMO_op_exec(ptr noundef %793, ptr noundef nonnull %23) #12
  %1348 = call ptr @BMO_iter_new(ptr noundef nonnull %22, ptr noundef nonnull %1170, ptr noundef nonnull @.str.10, i8 noundef zeroext 8) #12
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1354, label %1350

1350:                                             ; preds = %1343, %1350
  %1351 = phi ptr [ %1352, %1350 ], [ %1348, %1343 ]
  %1352 = call ptr @BMO_iter_step(ptr noundef nonnull %22) #12
  %1353 = icmp eq ptr %1352, null
  br i1 %1353, label %1354, label %1350, !llvm.loop !128

1354:                                             ; preds = %1350, %1343
  %1355 = phi ptr [ null, %1343 ], [ %1351, %1350 ]
  call void @BMO_op_finish(ptr noundef %793, ptr noundef nonnull %23) #12
  %1356 = getelementptr inbounds %struct.BMFace, ptr %1355, i64 0, i32 3
  %1357 = load i32, ptr %1356, align 8, !tbaa !129
  %1358 = icmp eq i32 %1357, 3
  br i1 %1358, label %1359, label %1367

1359:                                             ; preds = %1354
  %1360 = call ptr @BM_face_find_longest_loop(ptr noundef %1355) #12
  %1361 = getelementptr inbounds %struct.BMLoop, ptr %1360, i64 0, i32 2
  %1362 = load ptr, ptr %1361, align 8, !tbaa !131
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %793, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #12
  %1363 = getelementptr inbounds %struct.BMHeader, ptr %1362, i64 0, i32 3
  %1364 = load i8, ptr %1363, align 1, !tbaa !127
  %1365 = or i8 %1364, 16
  store i8 %1365, ptr %1363, align 1, !tbaa !127
  %1366 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %793, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 16, i32 noundef 1, i32 noundef 3) #12
  br label %1442

1367:                                             ; preds = %1354
  %1368 = icmp sgt i32 %1357, 4
  br i1 %1368, label %1369, label %1442

1369:                                             ; preds = %1367
  %1370 = load ptr, ptr %21, align 8
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1376, label %1372

1372:                                             ; preds = %1369
  %1373 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !46
  %1374 = call i64 %1373(ptr noundef nonnull %1370) #12
  %1375 = lshr i64 %1374, 3
  br label %1376

1376:                                             ; preds = %1372, %1369
  %1377 = phi i64 [ %1375, %1372 ], [ 0, %1369 ]
  %1378 = load i32, ptr %1356, align 8, !tbaa !129
  %1379 = sext i32 %1378 to i64
  %1380 = icmp ult i64 %1377, %1379
  br i1 %1380, label %1381, label %1382

1381:                                             ; preds = %1376
  call void @_bli_array_grow_func(ptr noundef nonnull %21, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %1378, ptr noundef nonnull @.str.12) #12
  br label %1382

1382:                                             ; preds = %1381, %1376
  %1383 = load ptr, ptr %21, align 8, !tbaa !46
  %1384 = load i32, ptr %1356, align 8, !tbaa !129
  %1385 = call i32 @BM_iter_as_array(ptr noundef %793, i8 noundef zeroext 9, ptr noundef %1355, ptr noundef %1383, i32 noundef %1384) #12
  %1386 = load ptr, ptr %21, align 8, !tbaa !46
  %1387 = load i32, ptr %1356, align 8, !tbaa !129
  %1388 = icmp slt i32 %1387, 5
  br i1 %1388, label %1442, label %1389

1389:                                             ; preds = %1382
  %1390 = getelementptr inbounds %struct.BMFace, ptr %1355, i64 0, i32 3
  %1391 = load i32, ptr %1390, align 8, !tbaa !129
  %1392 = icmp sgt i32 %1391, 4
  br i1 %1392, label %1393, label %1442

1393:                                             ; preds = %1389
  %1394 = zext nneg i32 %1387 to i64
  %1395 = zext nneg i32 %1387 to i64
  br label %1396

1396:                                             ; preds = %1393, %1438
  %1397 = phi ptr [ %1355, %1393 ], [ %1433, %1438 ]
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #12
  %1398 = call ptr @BM_face_find_shortest_loop(ptr noundef %1397) #12
  %1399 = getelementptr inbounds %struct.BMLoop, ptr %1398, i64 0, i32 2
  %1400 = load ptr, ptr %1399, align 8, !tbaa !131
  %1401 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %793, ptr noundef nonnull %18, i32 noundef 0, ptr noundef nonnull @.str.13) #12
  %1402 = call ptr @BMO_slot_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.14) #12
  %1403 = getelementptr inbounds %struct.BMEdge, ptr %1400, i64 0, i32 2
  %1404 = load ptr, ptr %1403, align 8, !tbaa !133
  %1405 = getelementptr inbounds %struct.BMEdge, ptr %1400, i64 0, i32 3
  %1406 = load ptr, ptr %1405, align 8, !tbaa !136
  %1407 = getelementptr inbounds %struct.BMVert, ptr %1404, i64 0, i32 2
  %1408 = getelementptr inbounds %struct.BMVert, ptr %1406, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %1407, ptr noundef nonnull %1407, ptr noundef nonnull %1408) #12
  call void @BMO_slot_map_insert(ptr noundef nonnull %18, ptr noundef %1402, ptr noundef %1406, ptr noundef %1404) #12
  call void @BMO_op_exec(ptr noundef %793, ptr noundef nonnull %18) #12
  call void @BMO_op_finish(ptr noundef %793, ptr noundef nonnull %18) #12
  store i8 5, ptr %1171, align 4, !tbaa !118
  store ptr @bmiter__face_of_vert_begin, ptr %1172, align 8, !tbaa !120
  store ptr @bmiter__face_of_vert_step, ptr %1173, align 8, !tbaa !121
  store ptr %1404, ptr %19, align 8, !tbaa !115
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %19) #12
  %1409 = load ptr, ptr %1173, align 8, !tbaa !121
  %1410 = call ptr %1409(ptr noundef nonnull %19) #12
  %1411 = icmp ne ptr %1410, null
  call void @llvm.assume(i1 %1411)
  br label %1412

1412:                                             ; preds = %1396, %1434
  %1413 = phi ptr [ %1433, %1434 ], [ null, %1396 ]
  %1414 = phi ptr [ %1436, %1434 ], [ %1410, %1396 ]
  br label %1415

1415:                                             ; preds = %1412, %1427
  %1416 = phi i64 [ 0, %1412 ], [ %1428, %1427 ]
  %1417 = phi i1 [ true, %1412 ], [ %1429, %1427 ]
  %1418 = getelementptr inbounds ptr, ptr %1386, i64 %1416
  %1419 = load ptr, ptr %1418, align 8, !tbaa !46
  %1420 = icmp eq ptr %1419, %1406
  br i1 %1420, label %1421, label %1422

1421:                                             ; preds = %1415
  store ptr null, ptr %1418, align 8, !tbaa !46
  br label %1427

1422:                                             ; preds = %1415
  %1423 = icmp eq ptr %1419, null
  br i1 %1423, label %1427, label %1424

1424:                                             ; preds = %1422
  %1425 = call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %1414, ptr noundef nonnull %1419) #12
  %1426 = icmp eq i8 %1425, 0
  br i1 %1426, label %1431, label %1427

1427:                                             ; preds = %1424, %1422, %1421
  %1428 = add nuw nsw i64 %1416, 1
  %1429 = icmp ult i64 %1428, %1394
  %1430 = icmp eq i64 %1428, %1395
  br i1 %1430, label %1431, label %1415, !llvm.loop !137

1431:                                             ; preds = %1427, %1424
  %1432 = phi i1 [ %1429, %1427 ], [ %1417, %1424 ]
  %1433 = phi ptr [ %1414, %1427 ], [ %1413, %1424 ]
  br i1 %1432, label %1434, label %1438

1434:                                             ; preds = %1431
  %1435 = load ptr, ptr %1173, align 8, !tbaa !121
  %1436 = call ptr %1435(ptr noundef nonnull %19) #12
  %1437 = icmp eq ptr %1436, null
  br i1 %1437, label %1438, label %1412, !llvm.loop !138

1438:                                             ; preds = %1434, %1431
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %18) #12
  %1439 = getelementptr inbounds %struct.BMFace, ptr %1433, i64 0, i32 3
  %1440 = load i32, ptr %1439, align 8, !tbaa !129
  %1441 = icmp sgt i32 %1440, 4
  br i1 %1441, label %1396, label %1442, !llvm.loop !139

1442:                                             ; preds = %1438, %1389, %1382, %1367, %1359
  %1443 = phi ptr [ %1355, %1359 ], [ %1355, %1367 ], [ %1355, %1382 ], [ %1355, %1389 ], [ %1433, %1438 ]
  %1444 = load ptr, ptr %21, align 8, !tbaa !46
  %1445 = icmp eq ptr %1444, null
  br i1 %1445, label %1448, label %1446

1446:                                             ; preds = %1442
  %1447 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %1447(ptr noundef nonnull %1444) #12
  br label %1448

1448:                                             ; preds = %1446, %1442
  %1449 = getelementptr inbounds %struct.BMFace, ptr %1443, i64 0, i32 3
  %1450 = load i32, ptr %1449, align 8, !tbaa !129
  %1451 = icmp eq i32 %1450, 4
  br i1 %1451, label %1452, label %1525

1452:                                             ; preds = %1448
  call void @BM_face_as_array_vert_quad(ptr noundef %1443, ptr noundef nonnull %20) #12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #12
  br label %1453

1453:                                             ; preds = %1466, %1452
  %1454 = phi i64 [ 0, %1452 ], [ %1467, %1466 ]
  %1455 = or disjoint i64 %1454, 4
  br label %1456

1456:                                             ; preds = %1456, %1453
  %1457 = phi i64 [ 0, %1453 ], [ %1464, %1456 ]
  %1458 = add nuw nsw i64 %1457, %1454
  %1459 = trunc i64 %1458 to i32
  %1460 = and i32 %1459, 3
  %1461 = getelementptr inbounds [8 x [4 x i32]], ptr %10, i64 0, i64 %1454, i64 %1457
  store i32 %1460, ptr %1461, align 4, !tbaa !50
  %1462 = xor i32 %1460, 3
  %1463 = getelementptr inbounds [8 x [4 x i32]], ptr %10, i64 0, i64 %1455, i64 %1457
  store i32 %1462, ptr %1463, align 4, !tbaa !50
  %1464 = add nuw nsw i64 %1457, 1
  %1465 = icmp eq i64 %1464, 4
  br i1 %1465, label %1466, label %1456, !llvm.loop !140

1466:                                             ; preds = %1456
  %1467 = add nuw nsw i64 %1454, 1
  %1468 = icmp eq i64 %1467, 4
  br i1 %1468, label %1469, label %1453, !llvm.loop !141

1469:                                             ; preds = %1466, %1507
  %1470 = phi i64 [ %1509, %1507 ], [ 0, %1466 ]
  %1471 = phi float [ %1508, %1507 ], [ 0x47EFFFFFE0000000, %1466 ]
  br label %1472

1472:                                             ; preds = %1472, %1469
  %1473 = phi i64 [ 0, %1469 ], [ %1501, %1472 ]
  %1474 = phi float [ 0.000000e+00, %1469 ], [ %1500, %1472 ]
  %1475 = getelementptr inbounds ptr, ptr %20, i64 %1473
  %1476 = load ptr, ptr %1475, align 8, !tbaa !46
  %1477 = getelementptr inbounds %struct.BMVert, ptr %1476, i64 0, i32 2
  %1478 = getelementptr inbounds [8 x [4 x i32]], ptr %10, i64 0, i64 %1470, i64 %1473
  %1479 = load i32, ptr %1478, align 4, !tbaa !50
  %1480 = sext i32 %1479 to i64
  %1481 = getelementptr inbounds ptr, ptr %1183, i64 %1480
  %1482 = load ptr, ptr %1481, align 8, !tbaa !46
  %1483 = getelementptr inbounds %struct.BMVert, ptr %1482, i64 0, i32 2
  %1484 = load float, ptr %1483, align 4, !tbaa !57
  %1485 = load float, ptr %1477, align 4, !tbaa !57
  %1486 = fsub float %1484, %1485
  %1487 = getelementptr inbounds %struct.BMVert, ptr %1482, i64 0, i32 2, i64 1
  %1488 = load float, ptr %1487, align 4, !tbaa !57
  %1489 = getelementptr inbounds %struct.BMVert, ptr %1476, i64 0, i32 2, i64 1
  %1490 = load float, ptr %1489, align 4, !tbaa !57
  %1491 = fsub float %1488, %1490
  %1492 = getelementptr inbounds %struct.BMVert, ptr %1482, i64 0, i32 2, i64 2
  %1493 = load float, ptr %1492, align 4, !tbaa !57
  %1494 = getelementptr inbounds %struct.BMVert, ptr %1476, i64 0, i32 2, i64 2
  %1495 = load float, ptr %1494, align 4, !tbaa !57
  %1496 = fsub float %1493, %1495
  %1497 = fmul float %1491, %1491
  %1498 = call float @llvm.fmuladd.f32(float %1486, float %1486, float %1497)
  %1499 = call float @llvm.fmuladd.f32(float %1496, float %1496, float %1498)
  %1500 = fadd float %1474, %1499
  %1501 = add nuw nsw i64 %1473, 1
  %1502 = icmp eq i64 %1501, 4
  br i1 %1502, label %1503, label %1472, !llvm.loop !142

1503:                                             ; preds = %1472
  %1504 = fcmp olt float %1500, %1471
  br i1 %1504, label %1505, label %1507

1505:                                             ; preds = %1503
  %1506 = getelementptr inbounds [8 x [4 x i32]], ptr %10, i64 0, i64 %1470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %1506, i64 16, i1 false)
  br label %1507

1507:                                             ; preds = %1505, %1503
  %1508 = phi float [ %1500, %1505 ], [ %1471, %1503 ]
  %1509 = add nuw nsw i64 %1470, 1
  %1510 = icmp eq i64 %1509, 8
  br i1 %1510, label %1511, label %1469, !llvm.loop !143

1511:                                             ; preds = %1507
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #12
  call void @BM_face_kill(ptr noundef %793, ptr noundef %1443) #12
  call void @BMO_op_init(ptr noundef %793, ptr noundef nonnull %23, i32 noundef 0, ptr noundef nonnull @.str.13) #12
  %1512 = call ptr @BMO_slot_get(ptr noundef nonnull %23, ptr noundef nonnull @.str.14) #12
  br label %1513

1513:                                             ; preds = %1511, %1513
  %1514 = phi i64 [ 0, %1511 ], [ %1522, %1513 ]
  %1515 = getelementptr inbounds [4 x ptr], ptr %20, i64 0, i64 %1514
  %1516 = load ptr, ptr %1515, align 8, !tbaa !46
  %1517 = getelementptr inbounds [4 x i32], ptr %24, i64 0, i64 %1514
  %1518 = load i32, ptr %1517, align 4, !tbaa !50
  %1519 = sext i32 %1518 to i64
  %1520 = getelementptr inbounds [4 x ptr], ptr %1183, i64 0, i64 %1519
  %1521 = load ptr, ptr %1520, align 8, !tbaa !46
  call void @BMO_slot_map_insert(ptr noundef nonnull %23, ptr noundef %1512, ptr noundef %1516, ptr noundef %1521) #12
  %1522 = add nuw nsw i64 %1514, 1
  %1523 = icmp eq i64 %1522, 4
  br i1 %1523, label %1524, label %1513, !llvm.loop !144

1524:                                             ; preds = %1513
  call void @BMO_op_exec(ptr noundef %793, ptr noundef nonnull %23) #12
  call void @BMO_op_finish(ptr noundef %793, ptr noundef nonnull %23) #12
  br label %1525

1525:                                             ; preds = %1524, %1448
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #12
  br label %1526

1526:                                             ; preds = %1525, %1332, %1181
  %1527 = add nuw nsw i64 %1182, 1
  %1528 = load i32, ptr %1178, align 8, !tbaa !86
  %1529 = sext i32 %1528 to i64
  %1530 = icmp slt i64 %1527, %1529
  br i1 %1530, label %1181, label %1531, !llvm.loop !145

1531:                                             ; preds = %1526, %1175
  %1532 = add nuw nsw i64 %1176, 1
  %1533 = icmp eq i64 %1532, %1174
  br i1 %1533, label %1534, label %1175, !llvm.loop !146

1534:                                             ; preds = %1531, %1156
  %1535 = load ptr, ptr %33, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #12
  %1536 = getelementptr inbounds %struct.SkinModifierData, ptr %0, i64 0, i32 1
  %1537 = load float, ptr %1536, align 8, !tbaa !147
  %1538 = fcmp oeq float %1537, 0.000000e+00
  br i1 %1538, label %1670, label %1539

1539:                                             ; preds = %1534
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %1535, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #12
  %1540 = icmp sgt i32 %370, 0
  br i1 %1540, label %1541, label %1569

1541:                                             ; preds = %1539
  %1542 = zext nneg i32 %370 to i64
  br label %1543

1543:                                             ; preds = %1541, %1566
  %1544 = phi i64 [ 0, %1541 ], [ %1567, %1566 ]
  %1545 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1544, i32 1
  %1546 = load i32, ptr %1545, align 8, !tbaa !86
  %1547 = icmp sgt i32 %1546, 0
  br i1 %1547, label %1548, label %1566

1548:                                             ; preds = %1543
  %1549 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1544
  %1550 = zext nneg i32 %1546 to i64
  br label %1551

1551:                                             ; preds = %1548, %1563
  %1552 = phi i64 [ 0, %1548 ], [ %1564, %1563 ]
  %1553 = getelementptr inbounds [2 x %struct.Frame], ptr %1549, i64 0, i64 %1552
  br label %1554

1554:                                             ; preds = %1551, %1554
  %1555 = phi i64 [ 0, %1551 ], [ %1561, %1554 ]
  %1556 = getelementptr inbounds [4 x ptr], ptr %1553, i64 0, i64 %1555
  %1557 = load ptr, ptr %1556, align 8, !tbaa !46
  %1558 = getelementptr inbounds %struct.BMHeader, ptr %1557, i64 0, i32 3
  %1559 = load i8, ptr %1558, align 1, !tbaa !127
  %1560 = or i8 %1559, 16
  store i8 %1560, ptr %1558, align 1, !tbaa !127
  %1561 = add nuw nsw i64 %1555, 1
  %1562 = icmp eq i64 %1561, 4
  br i1 %1562, label %1563, label %1554, !llvm.loop !150

1563:                                             ; preds = %1554
  %1564 = add nuw nsw i64 %1552, 1
  %1565 = icmp eq i64 %1564, %1550
  br i1 %1565, label %1566, label %1551, !llvm.loop !151

1566:                                             ; preds = %1563, %1543
  %1567 = add nuw nsw i64 %1544, 1
  %1568 = icmp eq i64 %1567, %1542
  br i1 %1568, label %1569, label %1543, !llvm.loop !152

1569:                                             ; preds = %1566, %1539
  %1570 = getelementptr inbounds %struct.BMesh, ptr %1535, i64 0, i32 24
  call void @BM_data_layer_add(ptr noundef %1535, ptr noundef nonnull %1570, i32 noundef 28) #12
  %1571 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %1570, i32 noundef 28) #12
  %1572 = add nsw i32 %1571, -1
  %1573 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 1, ptr %1573, align 4, !tbaa !118
  %1574 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1574, align 8, !tbaa !120
  %1575 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1575, align 8, !tbaa !121
  %1576 = getelementptr inbounds %struct.BMesh, ptr %1535, i64 0, i32 9
  %1577 = load ptr, ptr %1576, align 8, !tbaa !153
  store ptr %1577, ptr %15, align 8, !tbaa !115
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #12
  %1578 = load ptr, ptr %1575, align 8, !tbaa !121
  %1579 = call ptr %1578(ptr noundef nonnull %15) #12
  %1580 = icmp eq ptr %1579, null
  br i1 %1580, label %1596, label %1581

1581:                                             ; preds = %1569, %1581
  %1582 = phi ptr [ %1594, %1581 ], [ %1579, %1569 ]
  %1583 = load ptr, ptr %1582, align 8, !tbaa !103
  %1584 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %1570, ptr noundef %1583, i32 noundef 28, i32 noundef %1572) #12
  %1585 = getelementptr inbounds %struct.BMVert, ptr %1582, i64 0, i32 2
  %1586 = load float, ptr %1585, align 4, !tbaa !57
  store float %1586, ptr %1584, align 4, !tbaa !57
  %1587 = getelementptr inbounds %struct.BMVert, ptr %1582, i64 0, i32 2, i64 1
  %1588 = load float, ptr %1587, align 4, !tbaa !57
  %1589 = getelementptr inbounds float, ptr %1584, i64 1
  store float %1588, ptr %1589, align 4, !tbaa !57
  %1590 = getelementptr inbounds %struct.BMVert, ptr %1582, i64 0, i32 2, i64 2
  %1591 = load float, ptr %1590, align 4, !tbaa !57
  %1592 = getelementptr inbounds float, ptr %1584, i64 2
  store float %1591, ptr %1592, align 4, !tbaa !57
  %1593 = load ptr, ptr %1575, align 8, !tbaa !121
  %1594 = call ptr %1593(ptr noundef nonnull %15) #12
  %1595 = icmp eq ptr %1594, null
  br i1 %1595, label %1596, label %1581, !llvm.loop !154

1596:                                             ; preds = %1581, %1569
  store i8 1, ptr %1573, align 4, !tbaa !118
  store ptr @bmiter__elem_of_mesh_begin, ptr %1574, align 8, !tbaa !120
  store ptr @bmiter__elem_of_mesh_step, ptr %1575, align 8, !tbaa !121
  %1597 = load ptr, ptr %1576, align 8, !tbaa !153
  store ptr %1597, ptr %15, align 8, !tbaa !115
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #12
  %1598 = load ptr, ptr %1575, align 8, !tbaa !121
  %1599 = call ptr %1598(ptr noundef nonnull %15) #12
  %1600 = icmp eq ptr %1599, null
  br i1 %1600, label %1669, label %1601

1601:                                             ; preds = %1596
  %1602 = getelementptr inbounds float, ptr %17, i64 1
  %1603 = getelementptr inbounds float, ptr %17, i64 2
  %1604 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  %1605 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  %1606 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  br label %1607

1607:                                             ; preds = %1601, %1665
  %1608 = phi ptr [ %1599, %1601 ], [ %1667, %1665 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %1609 = load float, ptr %1536, align 8, !tbaa !147
  %1610 = getelementptr inbounds %struct.BMHeader, ptr %1608, i64 0, i32 3
  %1611 = load i8, ptr %1610, align 1, !tbaa !127
  %1612 = and i8 %1611, 16
  %1613 = icmp eq i8 %1612, 0
  %1614 = fmul float %1609, 5.000000e-01
  %1615 = select i1 %1613, float %1609, float %1614
  %1616 = getelementptr inbounds %struct.BMVert, ptr %1608, i64 0, i32 2
  %1617 = load float, ptr %1616, align 4, !tbaa !57
  store float %1617, ptr %17, align 4, !tbaa !57
  %1618 = getelementptr inbounds %struct.BMVert, ptr %1608, i64 0, i32 2, i64 1
  %1619 = load float, ptr %1618, align 4, !tbaa !57
  store float %1619, ptr %1602, align 4, !tbaa !57
  %1620 = getelementptr inbounds %struct.BMVert, ptr %1608, i64 0, i32 2, i64 2
  %1621 = load float, ptr %1620, align 4, !tbaa !57
  store float %1621, ptr %1603, align 4, !tbaa !57
  store i8 4, ptr %1604, align 4, !tbaa !118
  store ptr @bmiter__edge_of_vert_begin, ptr %1605, align 8, !tbaa !120
  store ptr @bmiter__edge_of_vert_step, ptr %1606, align 8, !tbaa !121
  store ptr %1608, ptr %16, align 8, !tbaa !115
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %16) #12
  %1622 = load ptr, ptr %1606, align 8, !tbaa !121
  %1623 = call ptr %1622(ptr noundef nonnull %16) #12
  %1624 = icmp eq ptr %1623, null
  br i1 %1624, label %1653, label %1625

1625:                                             ; preds = %1607, %1625
  %1626 = phi i32 [ %1649, %1625 ], [ 1, %1607 ]
  %1627 = phi ptr [ %1651, %1625 ], [ %1623, %1607 ]
  %1628 = getelementptr inbounds %struct.BMEdge, ptr %1627, i64 0, i32 2
  %1629 = load ptr, ptr %1628, align 8, !tbaa !133
  %1630 = icmp eq ptr %1629, %1608
  %1631 = getelementptr inbounds %struct.BMEdge, ptr %1627, i64 0, i32 3
  %1632 = load ptr, ptr %1631, align 8, !tbaa !136
  %1633 = icmp eq ptr %1632, %1608
  %1634 = select i1 %1633, ptr %1629, ptr null
  %1635 = select i1 %1630, ptr %1632, ptr %1634
  %1636 = load ptr, ptr %1635, align 8, !tbaa !103
  %1637 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %1570, ptr noundef %1636, i32 noundef 28, i32 noundef %1572) #12
  %1638 = load float, ptr %1637, align 4, !tbaa !57
  %1639 = load float, ptr %17, align 4, !tbaa !57
  %1640 = fadd float %1638, %1639
  store float %1640, ptr %17, align 4, !tbaa !57
  %1641 = getelementptr inbounds float, ptr %1637, i64 1
  %1642 = load float, ptr %1641, align 4, !tbaa !57
  %1643 = load float, ptr %1602, align 4, !tbaa !57
  %1644 = fadd float %1642, %1643
  store float %1644, ptr %1602, align 4, !tbaa !57
  %1645 = getelementptr inbounds float, ptr %1637, i64 2
  %1646 = load float, ptr %1645, align 4, !tbaa !57
  %1647 = load float, ptr %1603, align 4, !tbaa !57
  %1648 = fadd float %1646, %1647
  store float %1648, ptr %1603, align 4, !tbaa !57
  %1649 = add nuw nsw i32 %1626, 1
  %1650 = load ptr, ptr %1606, align 8, !tbaa !121
  %1651 = call ptr %1650(ptr noundef nonnull %16) #12
  %1652 = icmp eq ptr %1651, null
  br i1 %1652, label %1653, label %1625, !llvm.loop !155

1653:                                             ; preds = %1625, %1607
  %1654 = phi i32 [ 1, %1607 ], [ %1649, %1625 ]
  %1655 = icmp ugt i32 %1654, 1
  br i1 %1655, label %1656, label %1665

1656:                                             ; preds = %1653
  %1657 = sitofp i32 %1654 to float
  %1658 = fdiv float 1.000000e+00, %1657
  %1659 = load float, ptr %17, align 4, !tbaa !57
  %1660 = fmul float %1658, %1659
  store float %1660, ptr %17, align 4, !tbaa !57
  %1661 = load float, ptr %1602, align 4, !tbaa !57
  %1662 = fmul float %1658, %1661
  store float %1662, ptr %1602, align 4, !tbaa !57
  %1663 = load float, ptr %1603, align 4, !tbaa !57
  %1664 = fmul float %1658, %1663
  store float %1664, ptr %1603, align 4, !tbaa !57
  call void @interp_v3_v3v3(ptr noundef nonnull %1616, ptr noundef nonnull %1616, ptr noundef nonnull %17, float noundef %1615) #12
  br label %1665

1665:                                             ; preds = %1656, %1653
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  %1666 = load ptr, ptr %1575, align 8, !tbaa !121
  %1667 = call ptr %1666(ptr noundef nonnull %15) #12
  %1668 = icmp eq ptr %1667, null
  br i1 %1668, label %1669, label %1607, !llvm.loop !156

1669:                                             ; preds = %1665, %1596
  call void @BM_data_layer_free_n(ptr noundef %1535, ptr noundef nonnull %1570, i32 noundef 28, i32 noundef %1572) #12
  br label %1670

1670:                                             ; preds = %1669, %1534
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #12
  %1671 = icmp sgt i32 %370, 0
  br i1 %1671, label %1672, label %1698

1672:                                             ; preds = %1670
  %1673 = getelementptr inbounds ptr, ptr %8, i64 1
  %1674 = getelementptr inbounds ptr, ptr %8, i64 2
  %1675 = getelementptr inbounds ptr, ptr %8, i64 3
  %1676 = load ptr, ptr %33, align 8
  %1677 = load ptr, ptr %792, align 8
  %1678 = getelementptr inbounds %struct.SkinModifierData, ptr %1677, i64 0, i32 2
  %1679 = load i32, ptr %794, align 8
  %1680 = trunc i32 %1679 to i16
  %1681 = getelementptr inbounds ptr, ptr %7, i64 1
  %1682 = getelementptr inbounds ptr, ptr %7, i64 2
  %1683 = getelementptr inbounds ptr, ptr %7, i64 3
  %1684 = load ptr, ptr %33, align 8
  %1685 = load ptr, ptr %792, align 8
  %1686 = getelementptr inbounds %struct.SkinModifierData, ptr %1685, i64 0, i32 2
  %1687 = load i32, ptr %794, align 8
  %1688 = trunc i32 %1687 to i16
  %1689 = getelementptr inbounds ptr, ptr %6, i64 1
  %1690 = getelementptr inbounds ptr, ptr %6, i64 2
  %1691 = getelementptr inbounds ptr, ptr %6, i64 3
  %1692 = load ptr, ptr %33, align 8
  %1693 = load ptr, ptr %792, align 8
  %1694 = getelementptr inbounds %struct.SkinModifierData, ptr %1693, i64 0, i32 2
  %1695 = load i32, ptr %794, align 8
  %1696 = trunc i32 %1695 to i16
  %1697 = zext nneg i32 %370 to i64
  br label %1702

1698:                                             ; preds = %1860, %1670
  %1699 = icmp sgt i32 %373, 0
  br i1 %1699, label %1700, label %1988

1700:                                             ; preds = %1698
  %1701 = zext nneg i32 %373 to i64
  br label %1863

1702:                                             ; preds = %1672, %1860
  %1703 = phi i64 [ 0, %1672 ], [ %1861, %1860 ]
  %1704 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1703
  %1705 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1703, i32 2
  %1706 = load i32, ptr %1705, align 4, !tbaa !88
  %1707 = and i32 %1706, 4
  %1708 = icmp eq i32 %1707, 0
  br i1 %1708, label %1782, label %1709

1709:                                             ; preds = %1702
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #12
  br label %1710

1710:                                             ; preds = %1723, %1709
  %1711 = phi i64 [ 0, %1709 ], [ %1724, %1723 ]
  %1712 = or disjoint i64 %1711, 4
  br label %1713

1713:                                             ; preds = %1713, %1710
  %1714 = phi i64 [ 0, %1710 ], [ %1721, %1713 ]
  %1715 = add nuw nsw i64 %1714, %1711
  %1716 = trunc i64 %1715 to i32
  %1717 = and i32 %1716, 3
  %1718 = getelementptr inbounds [8 x [4 x i32]], ptr %9, i64 0, i64 %1711, i64 %1714
  store i32 %1717, ptr %1718, align 4, !tbaa !50
  %1719 = xor i32 %1717, 3
  %1720 = getelementptr inbounds [8 x [4 x i32]], ptr %9, i64 0, i64 %1712, i64 %1714
  store i32 %1719, ptr %1720, align 4, !tbaa !50
  %1721 = add nuw nsw i64 %1714, 1
  %1722 = icmp eq i64 %1721, 4
  br i1 %1722, label %1723, label %1713, !llvm.loop !140

1723:                                             ; preds = %1713
  %1724 = add nuw nsw i64 %1711, 1
  %1725 = icmp eq i64 %1724, 4
  br i1 %1725, label %1726, label %1710, !llvm.loop !141

1726:                                             ; preds = %1723
  %1727 = getelementptr inbounds [2 x %struct.Frame], ptr %1704, i64 0, i64 1
  br label %1728

1728:                                             ; preds = %1726, %1766
  %1729 = phi i64 [ %1768, %1766 ], [ 0, %1726 ]
  %1730 = phi float [ %1767, %1766 ], [ 0x47EFFFFFE0000000, %1726 ]
  br label %1731

1731:                                             ; preds = %1731, %1728
  %1732 = phi i64 [ 0, %1728 ], [ %1760, %1731 ]
  %1733 = phi float [ 0.000000e+00, %1728 ], [ %1759, %1731 ]
  %1734 = getelementptr inbounds ptr, ptr %1704, i64 %1732
  %1735 = load ptr, ptr %1734, align 8, !tbaa !46
  %1736 = getelementptr inbounds %struct.BMVert, ptr %1735, i64 0, i32 2
  %1737 = getelementptr inbounds [8 x [4 x i32]], ptr %9, i64 0, i64 %1729, i64 %1732
  %1738 = load i32, ptr %1737, align 4, !tbaa !50
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds ptr, ptr %1727, i64 %1739
  %1741 = load ptr, ptr %1740, align 8, !tbaa !46
  %1742 = getelementptr inbounds %struct.BMVert, ptr %1741, i64 0, i32 2
  %1743 = load float, ptr %1742, align 4, !tbaa !57
  %1744 = load float, ptr %1736, align 4, !tbaa !57
  %1745 = fsub float %1743, %1744
  %1746 = getelementptr inbounds %struct.BMVert, ptr %1741, i64 0, i32 2, i64 1
  %1747 = load float, ptr %1746, align 4, !tbaa !57
  %1748 = getelementptr inbounds %struct.BMVert, ptr %1735, i64 0, i32 2, i64 1
  %1749 = load float, ptr %1748, align 4, !tbaa !57
  %1750 = fsub float %1747, %1749
  %1751 = getelementptr inbounds %struct.BMVert, ptr %1741, i64 0, i32 2, i64 2
  %1752 = load float, ptr %1751, align 4, !tbaa !57
  %1753 = getelementptr inbounds %struct.BMVert, ptr %1735, i64 0, i32 2, i64 2
  %1754 = load float, ptr %1753, align 4, !tbaa !57
  %1755 = fsub float %1752, %1754
  %1756 = fmul float %1750, %1750
  %1757 = call float @llvm.fmuladd.f32(float %1745, float %1745, float %1756)
  %1758 = call float @llvm.fmuladd.f32(float %1755, float %1755, float %1757)
  %1759 = fadd float %1733, %1758
  %1760 = add nuw nsw i64 %1732, 1
  %1761 = icmp eq i64 %1760, 4
  br i1 %1761, label %1762, label %1731, !llvm.loop !142

1762:                                             ; preds = %1731
  %1763 = fcmp olt float %1759, %1730
  br i1 %1763, label %1764, label %1766

1764:                                             ; preds = %1762
  %1765 = getelementptr inbounds [8 x [4 x i32]], ptr %9, i64 0, i64 %1729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %1765, i64 16, i1 false)
  br label %1766

1766:                                             ; preds = %1764, %1762
  %1767 = phi float [ %1759, %1764 ], [ %1730, %1762 ]
  %1768 = add nuw nsw i64 %1729, 1
  %1769 = icmp eq i64 %1768, 8
  br i1 %1769, label %1770, label %1728, !llvm.loop !143

1770:                                             ; preds = %1766
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #12
  br label %1771

1771:                                             ; preds = %1770, %1771
  %1772 = phi i64 [ 0, %1770 ], [ %1779, %1771 ]
  %1773 = getelementptr inbounds [4 x i32], ptr %14, i64 0, i64 %1772
  %1774 = load i32, ptr %1773, align 4, !tbaa !50
  %1775 = sext i32 %1774 to i64
  %1776 = getelementptr inbounds [4 x ptr], ptr %1727, i64 0, i64 %1775
  %1777 = load ptr, ptr %1776, align 8, !tbaa !46
  %1778 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %1772
  store ptr %1777, ptr %1778, align 8, !tbaa !46
  %1779 = add nuw nsw i64 %1772, 1
  %1780 = icmp eq i64 %1779, 4
  br i1 %1780, label %1781, label %1771, !llvm.loop !157

1781:                                             ; preds = %1771
  call fastcc void @connect_frames(ptr noundef nonnull %33, ptr noundef %1704, ptr noundef nonnull %13)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #12
  br label %1788

1782:                                             ; preds = %1702
  %1783 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1703, i32 1
  %1784 = load i32, ptr %1783, align 8, !tbaa !86
  %1785 = icmp eq i32 %1784, 2
  br i1 %1785, label %1786, label %1788

1786:                                             ; preds = %1782
  %1787 = getelementptr inbounds [2 x %struct.Frame], ptr %1704, i64 0, i64 1
  call fastcc void @connect_frames(ptr noundef nonnull %33, ptr noundef %1704, ptr noundef nonnull %1787)
  br label %1788

1788:                                             ; preds = %1786, %1782, %1781
  %1789 = load i32, ptr %1705, align 4, !tbaa !88
  %1790 = and i32 %1789, 1
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1835, label %1792

1792:                                             ; preds = %1788
  %1793 = and i32 %1789, 8
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1815, label %1795

1795:                                             ; preds = %1792
  %1796 = load ptr, ptr %1704, align 8, !tbaa !46
  %1797 = getelementptr inbounds [4 x ptr], ptr %1704, i64 0, i64 1
  %1798 = load ptr, ptr %1797, align 8, !tbaa !46
  %1799 = getelementptr inbounds [4 x ptr], ptr %1704, i64 0, i64 2
  %1800 = load ptr, ptr %1799, align 8, !tbaa !46
  %1801 = getelementptr inbounds [4 x ptr], ptr %1704, i64 0, i64 3
  %1802 = load ptr, ptr %1801, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  store ptr %1796, ptr %8, align 16, !tbaa !46
  store ptr %1798, ptr %1673, align 8, !tbaa !46
  store ptr %1800, ptr %1674, align 16, !tbaa !46
  store ptr %1802, ptr %1675, align 8, !tbaa !46
  %1803 = icmp eq ptr %1802, null
  %1804 = select i1 %1803, i32 3, i32 4
  %1805 = call ptr @BM_face_create_verts(ptr noundef %1676, ptr noundef nonnull %8, i32 noundef %1804, ptr noundef null, i32 noundef 2, i8 noundef zeroext 1) #12
  %1806 = load i8, ptr %1678, align 4, !tbaa !158
  %1807 = and i8 %1806, 1
  %1808 = icmp eq i8 %1807, 0
  br i1 %1808, label %1813, label %1809

1809:                                             ; preds = %1795
  %1810 = getelementptr inbounds %struct.BMHeader, ptr %1805, i64 0, i32 3
  %1811 = load i8, ptr %1810, align 1, !tbaa !127
  %1812 = or i8 %1811, 8
  store i8 %1812, ptr %1810, align 1, !tbaa !127
  br label %1813

1813:                                             ; preds = %1795, %1809
  %1814 = getelementptr inbounds %struct.BMFace, ptr %1805, i64 0, i32 5
  store i16 %1680, ptr %1814, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  br label %1835

1815:                                             ; preds = %1792
  %1816 = getelementptr inbounds [4 x ptr], ptr %1704, i64 0, i64 3
  %1817 = load ptr, ptr %1816, align 8, !tbaa !46
  %1818 = getelementptr inbounds [4 x ptr], ptr %1704, i64 0, i64 2
  %1819 = load ptr, ptr %1818, align 8, !tbaa !46
  %1820 = getelementptr inbounds [4 x ptr], ptr %1704, i64 0, i64 1
  %1821 = load ptr, ptr %1820, align 8, !tbaa !46
  %1822 = load ptr, ptr %1704, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  store ptr %1817, ptr %7, align 16, !tbaa !46
  store ptr %1819, ptr %1681, align 8, !tbaa !46
  store ptr %1821, ptr %1682, align 16, !tbaa !46
  store ptr %1822, ptr %1683, align 8, !tbaa !46
  %1823 = icmp eq ptr %1822, null
  %1824 = select i1 %1823, i32 3, i32 4
  %1825 = call ptr @BM_face_create_verts(ptr noundef %1684, ptr noundef nonnull %7, i32 noundef %1824, ptr noundef null, i32 noundef 2, i8 noundef zeroext 1) #12
  %1826 = load i8, ptr %1686, align 4, !tbaa !158
  %1827 = and i8 %1826, 1
  %1828 = icmp eq i8 %1827, 0
  br i1 %1828, label %1833, label %1829

1829:                                             ; preds = %1815
  %1830 = getelementptr inbounds %struct.BMHeader, ptr %1825, i64 0, i32 3
  %1831 = load i8, ptr %1830, align 1, !tbaa !127
  %1832 = or i8 %1831, 8
  store i8 %1832, ptr %1830, align 1, !tbaa !127
  br label %1833

1833:                                             ; preds = %1815, %1829
  %1834 = getelementptr inbounds %struct.BMFace, ptr %1825, i64 0, i32 5
  store i16 %1688, ptr %1834, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  br label %1835

1835:                                             ; preds = %1833, %1813, %1788
  %1836 = load i32, ptr %1705, align 4, !tbaa !88
  %1837 = and i32 %1836, 2
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1860, label %1839

1839:                                             ; preds = %1835
  %1840 = getelementptr inbounds [2 x %struct.Frame], ptr %1704, i64 0, i64 1
  %1841 = load ptr, ptr %1840, align 8, !tbaa !46
  %1842 = getelementptr inbounds [2 x %struct.Frame], ptr %1704, i64 0, i64 1, i32 0, i64 1
  %1843 = load ptr, ptr %1842, align 8, !tbaa !46
  %1844 = getelementptr inbounds [2 x %struct.Frame], ptr %1704, i64 0, i64 1, i32 0, i64 2
  %1845 = load ptr, ptr %1844, align 8, !tbaa !46
  %1846 = getelementptr inbounds [2 x %struct.Frame], ptr %1704, i64 0, i64 1, i32 0, i64 3
  %1847 = load ptr, ptr %1846, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  store ptr %1841, ptr %6, align 16, !tbaa !46
  store ptr %1843, ptr %1689, align 8, !tbaa !46
  store ptr %1845, ptr %1690, align 16, !tbaa !46
  store ptr %1847, ptr %1691, align 8, !tbaa !46
  %1848 = icmp eq ptr %1847, null
  %1849 = select i1 %1848, i32 3, i32 4
  %1850 = call ptr @BM_face_create_verts(ptr noundef %1692, ptr noundef nonnull %6, i32 noundef %1849, ptr noundef null, i32 noundef 2, i8 noundef zeroext 1) #12
  %1851 = load i8, ptr %1694, align 4, !tbaa !158
  %1852 = and i8 %1851, 1
  %1853 = icmp eq i8 %1852, 0
  br i1 %1853, label %1858, label %1854

1854:                                             ; preds = %1839
  %1855 = getelementptr inbounds %struct.BMHeader, ptr %1850, i64 0, i32 3
  %1856 = load i8, ptr %1855, align 1, !tbaa !127
  %1857 = or i8 %1856, 8
  store i8 %1857, ptr %1855, align 1, !tbaa !127
  br label %1858

1858:                                             ; preds = %1839, %1854
  %1859 = getelementptr inbounds %struct.BMFace, ptr %1850, i64 0, i32 5
  store i16 %1696, ptr %1859, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  br label %1860

1860:                                             ; preds = %1858, %1835
  %1861 = add nuw nsw i64 %1703, 1
  %1862 = icmp eq i64 %1861, %1697
  br i1 %1862, label %1698, label %1702, !llvm.loop !160

1863:                                             ; preds = %1700, %1985
  %1864 = phi i64 [ 0, %1700 ], [ %1986, %1985 ]
  %1865 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %1864
  %1866 = load i32, ptr %1865, align 4, !tbaa !47
  %1867 = zext i32 %1866 to i64
  %1868 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1867
  %1869 = getelementptr inbounds %struct.MEdge, ptr %367, i64 %1864, i32 1
  %1870 = load i32, ptr %1869, align 4, !tbaa !51
  %1871 = zext i32 %1870 to i64
  %1872 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1871
  %1873 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1867, i32 1
  %1874 = load i32, ptr %1873, align 8, !tbaa !86
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1985, label %1876

1876:                                             ; preds = %1863
  %1877 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1871, i32 1
  %1878 = load i32, ptr %1877, align 8, !tbaa !86
  %1879 = icmp eq i32 %1878, 0
  br i1 %1879, label %1985, label %1880

1880:                                             ; preds = %1876
  %1881 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1867, i32 2
  %1882 = load i32, ptr %1881, align 4, !tbaa !88
  %1883 = and i32 %1882, 4
  %1884 = icmp eq i32 %1883, 0
  br i1 %1884, label %1885, label %1891

1885:                                             ; preds = %1880
  %1886 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1871, i32 2
  %1887 = load i32, ptr %1886, align 4, !tbaa !88
  %1888 = and i32 %1887, 4
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1984, label %1890

1890:                                             ; preds = %1885
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  br i1 %1884, label %1899, label %1892

1891:                                             ; preds = %1880
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  br label %1892

1892:                                             ; preds = %1891, %1890
  %1893 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1867, i32 3
  %1894 = load i32, ptr %1893, align 8, !tbaa !50
  %1895 = zext i32 %1894 to i64
  %1896 = icmp ne i64 %1864, %1895
  %1897 = zext i1 %1896 to i64
  %1898 = getelementptr inbounds %struct.Frame, ptr %1868, i64 %1897
  br label %1899

1899:                                             ; preds = %1892, %1890
  %1900 = phi ptr [ %1868, %1890 ], [ %1898, %1892 ]
  %1901 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1871, i32 2
  %1902 = load i32, ptr %1901, align 4, !tbaa !88
  %1903 = and i32 %1902, 4
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1912, label %1905

1905:                                             ; preds = %1899
  %1906 = getelementptr inbounds %struct.SkinNode, ptr %569, i64 %1871, i32 3
  %1907 = load i32, ptr %1906, align 8, !tbaa !50
  %1908 = zext i32 %1907 to i64
  %1909 = icmp ne i64 %1864, %1908
  %1910 = zext i1 %1909 to i64
  %1911 = getelementptr inbounds %struct.Frame, ptr %1872, i64 %1910
  br label %1912

1912:                                             ; preds = %1905, %1899
  %1913 = phi ptr [ %1872, %1899 ], [ %1911, %1905 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #12
  br label %1914

1914:                                             ; preds = %1927, %1912
  %1915 = phi i64 [ 0, %1912 ], [ %1928, %1927 ]
  %1916 = or disjoint i64 %1915, 4
  br label %1917

1917:                                             ; preds = %1917, %1914
  %1918 = phi i64 [ 0, %1914 ], [ %1925, %1917 ]
  %1919 = add nuw nsw i64 %1918, %1915
  %1920 = trunc i64 %1919 to i32
  %1921 = and i32 %1920, 3
  %1922 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %1915, i64 %1918
  store i32 %1921, ptr %1922, align 4, !tbaa !50
  %1923 = xor i32 %1921, 3
  %1924 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %1916, i64 %1918
  store i32 %1923, ptr %1924, align 4, !tbaa !50
  %1925 = add nuw nsw i64 %1918, 1
  %1926 = icmp eq i64 %1925, 4
  br i1 %1926, label %1927, label %1917, !llvm.loop !140

1927:                                             ; preds = %1917
  %1928 = add nuw nsw i64 %1915, 1
  %1929 = icmp eq i64 %1928, 4
  br i1 %1929, label %1930, label %1914, !llvm.loop !141

1930:                                             ; preds = %1927, %1968
  %1931 = phi i64 [ %1970, %1968 ], [ 0, %1927 ]
  %1932 = phi float [ %1969, %1968 ], [ 0x47EFFFFFE0000000, %1927 ]
  br label %1933

1933:                                             ; preds = %1933, %1930
  %1934 = phi i64 [ 0, %1930 ], [ %1962, %1933 ]
  %1935 = phi float [ 0.000000e+00, %1930 ], [ %1961, %1933 ]
  %1936 = getelementptr inbounds ptr, ptr %1900, i64 %1934
  %1937 = load ptr, ptr %1936, align 8, !tbaa !46
  %1938 = getelementptr inbounds %struct.BMVert, ptr %1937, i64 0, i32 2
  %1939 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %1931, i64 %1934
  %1940 = load i32, ptr %1939, align 4, !tbaa !50
  %1941 = sext i32 %1940 to i64
  %1942 = getelementptr inbounds ptr, ptr %1913, i64 %1941
  %1943 = load ptr, ptr %1942, align 8, !tbaa !46
  %1944 = getelementptr inbounds %struct.BMVert, ptr %1943, i64 0, i32 2
  %1945 = load float, ptr %1944, align 4, !tbaa !57
  %1946 = load float, ptr %1938, align 4, !tbaa !57
  %1947 = fsub float %1945, %1946
  %1948 = getelementptr inbounds %struct.BMVert, ptr %1943, i64 0, i32 2, i64 1
  %1949 = load float, ptr %1948, align 4, !tbaa !57
  %1950 = getelementptr inbounds %struct.BMVert, ptr %1937, i64 0, i32 2, i64 1
  %1951 = load float, ptr %1950, align 4, !tbaa !57
  %1952 = fsub float %1949, %1951
  %1953 = getelementptr inbounds %struct.BMVert, ptr %1943, i64 0, i32 2, i64 2
  %1954 = load float, ptr %1953, align 4, !tbaa !57
  %1955 = getelementptr inbounds %struct.BMVert, ptr %1937, i64 0, i32 2, i64 2
  %1956 = load float, ptr %1955, align 4, !tbaa !57
  %1957 = fsub float %1954, %1956
  %1958 = fmul float %1952, %1952
  %1959 = call float @llvm.fmuladd.f32(float %1947, float %1947, float %1958)
  %1960 = call float @llvm.fmuladd.f32(float %1957, float %1957, float %1959)
  %1961 = fadd float %1935, %1960
  %1962 = add nuw nsw i64 %1934, 1
  %1963 = icmp eq i64 %1962, 4
  br i1 %1963, label %1964, label %1933, !llvm.loop !142

1964:                                             ; preds = %1933
  %1965 = fcmp olt float %1961, %1932
  br i1 %1965, label %1966, label %1968

1966:                                             ; preds = %1964
  %1967 = getelementptr inbounds [8 x [4 x i32]], ptr %5, i64 0, i64 %1931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %1967, i64 16, i1 false)
  br label %1968

1968:                                             ; preds = %1966, %1964
  %1969 = phi float [ %1961, %1966 ], [ %1932, %1964 ]
  %1970 = add nuw nsw i64 %1931, 1
  %1971 = icmp eq i64 %1970, 8
  br i1 %1971, label %1972, label %1930, !llvm.loop !143

1972:                                             ; preds = %1968
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #12
  br label %1973

1973:                                             ; preds = %1972, %1973
  %1974 = phi i64 [ 0, %1972 ], [ %1981, %1973 ]
  %1975 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 %1974
  %1976 = load i32, ptr %1975, align 4, !tbaa !50
  %1977 = sext i32 %1976 to i64
  %1978 = getelementptr inbounds [4 x ptr], ptr %1913, i64 0, i64 %1977
  %1979 = load ptr, ptr %1978, align 8, !tbaa !46
  %1980 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 %1974
  store ptr %1979, ptr %1980, align 8, !tbaa !46
  %1981 = add nuw nsw i64 %1974, 1
  %1982 = icmp eq i64 %1981, 4
  br i1 %1982, label %1983, label %1973, !llvm.loop !161

1983:                                             ; preds = %1973
  call fastcc void @connect_frames(ptr noundef nonnull %33, ptr noundef %1900, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #12
  br label %1985

1984:                                             ; preds = %1885
  call fastcc void @connect_frames(ptr noundef nonnull %33, ptr noundef %1868, ptr noundef %1872)
  br label %1985

1985:                                             ; preds = %1984, %1983, %1876, %1863
  %1986 = add nuw nsw i64 %1864, 1
  %1987 = icmp eq i64 %1986, %1701
  br i1 %1987, label %1988, label %1863, !llvm.loop !162

1988:                                             ; preds = %1985, %1698
  call fastcc void @hull_merge_triangles(ptr noundef nonnull %33, ptr noundef %0)
  %1989 = load ptr, ptr %33, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #12
  %1990 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %1990(ptr noundef %569) #12
  %1991 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %1992 = load ptr, ptr %42, align 8, !tbaa !46
  call void %1991(ptr noundef %1992) #12
  %1993 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %1994 = load ptr, ptr %43, align 8, !tbaa !46
  call void %1993(ptr noundef %1994) #12
  %1995 = icmp eq ptr %1989, null
  br i1 %1995, label %2006, label %1996

1996:                                             ; preds = %1988
  %1997 = call ptr @CDDM_from_bmesh(ptr noundef nonnull %1989, i8 noundef zeroext 0) #12
  call void @BM_mesh_free(ptr noundef nonnull %1989) #12
  call void @CDDM_calc_edges(ptr noundef %1997) #12
  %1998 = getelementptr inbounds %struct.DerivedMesh, ptr %1997, i64 0, i32 16
  %1999 = load i32, ptr %1998, align 8, !tbaa !163
  %2000 = or i32 %1999, 4
  store i32 %2000, ptr %1998, align 8, !tbaa !163
  %2001 = getelementptr inbounds %struct.DerivedMesh, ptr %1997, i64 0, i32 27
  %2002 = load ptr, ptr %2001, align 8, !tbaa !164
  %2003 = call i32 %2002(ptr noundef %1997) #12
  %2004 = getelementptr inbounds %struct.DerivedMesh, ptr %1997, i64 0, i32 4
  %2005 = call ptr @CustomData_add_layer(ptr noundef nonnull %2004, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %2003) #12
  call void @fill_vn_i(ptr noundef %2005, i32 noundef %2003, i32 noundef -1) #12
  br label %2006

2006:                                             ; preds = %1996, %1988
  %2007 = phi ptr [ %1997, %1996 ], [ null, %1988 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #12
  %2008 = getelementptr inbounds %struct.DerivedMesh, ptr %179, i64 0, i32 95
  %2009 = load ptr, ptr %2008, align 8, !tbaa !165
  call void %2009(ptr noundef %179) #12
  br label %2010

2010:                                             ; preds = %4, %2006
  %2011 = phi ptr [ %2007, %2006 ], [ %2, %4 ]
  %2012 = icmp eq ptr %2011, null
  %2013 = select i1 %2012, ptr %2, ptr %2011
  ret ptr %2013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !166
  %4 = or i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !166
  %5 = getelementptr inbounds %struct.SkinModifierData, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.SkinModifierData, ptr %0, i64 0, i32 2
  store i8 0, ptr %6, align 4, !tbaa !158
  %7 = getelementptr inbounds %struct.SkinModifierData, ptr %0, i64 0, i32 3
  store i8 1, ptr %7, align 1, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i64 68719476740
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #5

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @defvert_add_index_notest(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @BKE_mesh_vert_edge_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #3

declare void @CDDM_calc_edges(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @calc_edge_mat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = load float, ptr %2, align 4, !tbaa !57
  %5 = load float, ptr %1, align 4, !tbaa !57
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !57
  %19 = fmul float %11, %11
  %20 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %20)
  %22 = fcmp ogt float %21, 0x38AA95A5C0000000
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = tail call float @sqrtf(float noundef %21) #12
  %25 = fdiv float 1.000000e+00, %24
  %26 = load float, ptr %0, align 4, !tbaa !57
  %27 = fmul float %26, %25
  store float %27, ptr %0, align 4, !tbaa !57
  %28 = load float, ptr %12, align 4, !tbaa !57
  %29 = fmul float %25, %28
  store float %29, ptr %12, align 4, !tbaa !57
  %30 = load float, ptr %18, align 4, !tbaa !57
  %31 = fmul float %25, %30
  br label %33

32:                                               ; preds = %3
  store float 0.000000e+00, ptr %0, align 4, !tbaa !57
  store float 0.000000e+00, ptr %12, align 4, !tbaa !57
  br label %33

33:                                               ; preds = %23, %32
  %34 = phi float [ 0.000000e+00, %32 ], [ %31, %23 ]
  store float %34, ptr %18, align 4, !tbaa !57
  %35 = load float, ptr %0, align 4, !tbaa !57
  %36 = load float, ptr %12, align 4, !tbaa !57
  %37 = fmul float %36, 0.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %35, float 0.000000e+00, float %37)
  %39 = fadd float %34, %38
  %40 = fcmp ogt float %39, 0xBFEFFFFFC0000000
  %41 = fcmp olt float %39, 0x3FEFFFFFC0000000
  %42 = and i1 %40, %41
  %43 = getelementptr inbounds [3 x float], ptr %0, i64 1
  br i1 %42, label %44, label %102

44:                                               ; preds = %33
  %45 = fneg float %36
  %46 = tail call float @llvm.fmuladd.f32(float %34, float 0.000000e+00, float %45)
  store float %46, ptr %43, align 4, !tbaa !57
  %47 = fmul float %34, 0.000000e+00
  %48 = fsub float %35, %47
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %48, ptr %49, align 4, !tbaa !57
  %50 = fmul float %35, -0.000000e+00
  %51 = tail call float @llvm.fmuladd.f32(float %36, float 0.000000e+00, float %50)
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %51, ptr %52, align 4, !tbaa !57
  %53 = fmul float %48, %48
  %54 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %54)
  %56 = fcmp ogt float %55, 0x38AA95A5C0000000
  br i1 %56, label %57, label %66

57:                                               ; preds = %44
  %58 = tail call float @sqrtf(float noundef %55) #12
  %59 = fdiv float 1.000000e+00, %58
  %60 = load float, ptr %43, align 4, !tbaa !57
  %61 = fmul float %60, %59
  store float %61, ptr %43, align 4, !tbaa !57
  %62 = load float, ptr %49, align 4, !tbaa !57
  %63 = fmul float %59, %62
  store float %63, ptr %49, align 4, !tbaa !57
  %64 = load float, ptr %52, align 4, !tbaa !57
  %65 = fmul float %59, %64
  br label %67

66:                                               ; preds = %44
  store float 0.000000e+00, ptr %43, align 4, !tbaa !57
  store float 0.000000e+00, ptr %49, align 4, !tbaa !57
  br label %67

67:                                               ; preds = %57, %66
  %68 = phi float [ 0.000000e+00, %66 ], [ %65, %57 ]
  store float %68, ptr %52, align 4, !tbaa !57
  %69 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %70 = load float, ptr %12, align 4, !tbaa !57
  %71 = load float, ptr %18, align 4, !tbaa !57
  %72 = load float, ptr %49, align 4, !tbaa !57
  %73 = fneg float %71
  %74 = fmul float %72, %73
  %75 = tail call float @llvm.fmuladd.f32(float %70, float %68, float %74)
  store float %75, ptr %69, align 4, !tbaa !57
  %76 = load float, ptr %43, align 4, !tbaa !57
  %77 = load float, ptr %0, align 4, !tbaa !57
  %78 = fneg float %77
  %79 = fmul float %68, %78
  %80 = tail call float @llvm.fmuladd.f32(float %71, float %76, float %79)
  %81 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %80, ptr %81, align 4, !tbaa !57
  %82 = fneg float %70
  %83 = fmul float %76, %82
  %84 = tail call float @llvm.fmuladd.f32(float %77, float %72, float %83)
  %85 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %84, ptr %85, align 4, !tbaa !57
  %86 = fmul float %80, %80
  %87 = tail call float @llvm.fmuladd.f32(float %75, float %75, float %86)
  %88 = tail call float @llvm.fmuladd.f32(float %84, float %84, float %87)
  %89 = fcmp ogt float %88, 0x38AA95A5C0000000
  br i1 %89, label %90, label %99

90:                                               ; preds = %67
  %91 = tail call float @sqrtf(float noundef %88) #12
  %92 = fdiv float 1.000000e+00, %91
  %93 = load float, ptr %69, align 4, !tbaa !57
  %94 = fmul float %93, %92
  store float %94, ptr %69, align 4, !tbaa !57
  %95 = load float, ptr %81, align 4, !tbaa !57
  %96 = fmul float %92, %95
  store float %96, ptr %81, align 4, !tbaa !57
  %97 = load float, ptr %85, align 4, !tbaa !57
  %98 = fmul float %92, %97
  br label %100

99:                                               ; preds = %67
  store float 0.000000e+00, ptr %69, align 4, !tbaa !57
  store float 0.000000e+00, ptr %81, align 4, !tbaa !57
  br label %100

100:                                              ; preds = %90, %99
  %101 = phi float [ 0.000000e+00, %99 ], [ %98, %90 ]
  store float %101, ptr %85, align 4, !tbaa !57
  br label %108

102:                                              ; preds = %33
  store float 1.000000e+00, ptr %43, align 4, !tbaa !57
  %103 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float 0.000000e+00, ptr %103, align 4, !tbaa !57
  %104 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %104, align 4, !tbaa !57
  %105 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float 0.000000e+00, ptr %105, align 4, !tbaa !57
  %106 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float 1.000000e+00, ptr %106, align 4, !tbaa !57
  %107 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float 0.000000e+00, ptr %107, align 4, !tbaa !57
  br label %108

108:                                              ; preds = %102, %100
  ret void
}

declare i32 @BKE_mesh_edge_other_vert(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #3

declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @BLI_stack_pop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rotate_normalized_v3_v3v3fl(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zero_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @create_frame(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #9 {
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 1
  %7 = load float, ptr %2, align 4, !tbaa !57
  %8 = load float, ptr %6, align 4, !tbaa !57
  %9 = fmul float %7, %8
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !57
  %12 = fmul float %7, %11
  %13 = getelementptr inbounds [3 x float], ptr %3, i64 1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = fmul float %7, %14
  %16 = getelementptr inbounds [3 x float], ptr %3, i64 2
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !57
  %19 = load float, ptr %16, align 4, !tbaa !57
  %20 = fmul float %18, %19
  %21 = getelementptr inbounds [3 x float], ptr %3, i64 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !57
  %23 = fmul float %18, %22
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !57
  %26 = fmul float %18, %25
  %27 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 3
  %29 = load float, ptr %1, align 4, !tbaa !57
  %30 = fadd float %9, %29
  store float %30, ptr %28, align 4, !tbaa !57
  %31 = getelementptr inbounds float, ptr %1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !57
  %33 = fadd float %12, %32
  %34 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 3, i64 1
  store float %33, ptr %34, align 4, !tbaa !57
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !57
  %37 = fadd float %15, %36
  %38 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 3, i64 2
  store float %37, ptr %38, align 4, !tbaa !57
  %39 = fadd float %20, %30
  store float %39, ptr %28, align 4, !tbaa !57
  %40 = fadd float %23, %33
  store float %40, ptr %34, align 4, !tbaa !57
  %41 = fadd float %26, %37
  store float %41, ptr %38, align 4, !tbaa !57
  %42 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 2
  %43 = load float, ptr %1, align 4, !tbaa !57
  %44 = fsub float %43, %9
  store float %44, ptr %42, align 4, !tbaa !57
  %45 = load float, ptr %31, align 4, !tbaa !57
  %46 = fsub float %45, %12
  %47 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 2, i64 1
  store float %46, ptr %47, align 4, !tbaa !57
  %48 = load float, ptr %35, align 4, !tbaa !57
  %49 = fsub float %48, %15
  %50 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 2, i64 2
  store float %49, ptr %50, align 4, !tbaa !57
  %51 = fadd float %20, %44
  store float %51, ptr %42, align 4, !tbaa !57
  %52 = fadd float %23, %46
  store float %52, ptr %47, align 4, !tbaa !57
  %53 = fadd float %26, %49
  store float %53, ptr %50, align 4, !tbaa !57
  %54 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 1
  %55 = load float, ptr %1, align 4, !tbaa !57
  %56 = fsub float %55, %9
  store float %56, ptr %54, align 4, !tbaa !57
  %57 = load float, ptr %31, align 4, !tbaa !57
  %58 = fsub float %57, %12
  %59 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 1, i64 1
  store float %58, ptr %59, align 4, !tbaa !57
  %60 = load float, ptr %35, align 4, !tbaa !57
  %61 = fsub float %60, %15
  %62 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 1, i64 2
  store float %61, ptr %62, align 4, !tbaa !57
  %63 = fsub float %56, %20
  store float %63, ptr %54, align 4, !tbaa !57
  %64 = fsub float %58, %23
  store float %64, ptr %59, align 4, !tbaa !57
  %65 = fsub float %61, %26
  store float %65, ptr %62, align 4, !tbaa !57
  %66 = load float, ptr %1, align 4, !tbaa !57
  %67 = fadd float %9, %66
  store float %67, ptr %27, align 4, !tbaa !57
  %68 = load float, ptr %31, align 4, !tbaa !57
  %69 = fadd float %12, %68
  %70 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 0, i64 1
  store float %69, ptr %70, align 4, !tbaa !57
  %71 = load float, ptr %35, align 4, !tbaa !57
  %72 = fadd float %15, %71
  %73 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 0, i64 2
  store float %72, ptr %73, align 4, !tbaa !57
  %74 = fsub float %67, %20
  store float %74, ptr %27, align 4, !tbaa !57
  %75 = fsub float %69, %23
  store float %75, ptr %70, align 4, !tbaa !57
  %76 = fsub float %72, %26
  store float %76, ptr %73, align 4, !tbaa !57
  %77 = load float, ptr %3, align 4, !tbaa !57
  %78 = fmul float %77, %4
  %79 = getelementptr inbounds float, ptr %3, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !57
  %81 = fmul float %80, %4
  %82 = getelementptr inbounds float, ptr %3, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !57
  %84 = fmul float %83, %4
  br label %85

85:                                               ; preds = %5, %85
  %86 = phi i64 [ 0, %5 ], [ %96, %85 ]
  %87 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 %86
  %88 = load float, ptr %87, align 4, !tbaa !57
  %89 = fadd float %78, %88
  store float %89, ptr %87, align 4, !tbaa !57
  %90 = getelementptr inbounds float, ptr %87, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !57
  %92 = fadd float %81, %91
  store float %92, ptr %90, align 4, !tbaa !57
  %93 = getelementptr inbounds float, ptr %87, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !57
  %95 = fadd float %84, %94
  store float %95, ptr %93, align 4, !tbaa !57
  %96 = add nuw nsw i64 %86, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %98, label %85, !llvm.loop !168

98:                                               ; preds = %85
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #3

declare void @BMO_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bmesh_edit_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @hull_merge_triangles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [4 x ptr], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x ptr], align 16
  %8 = alloca [4 x ptr], align 16
  %9 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %10 = tail call ptr @BLI_heap_new() #12
  %11 = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %11, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %13, align 4, !tbaa !118
  %14 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %14, align 8, !tbaa !120
  %15 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %15, align 8, !tbaa !121
  %16 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !169
  store ptr %17, ptr %6, align 8, !tbaa !115
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #12
  %18 = load ptr, ptr %15, align 8, !tbaa !121
  %19 = call ptr %18(ptr noundef nonnull %6) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %23 = getelementptr inbounds %struct.SkinModifierData, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct.SkinModifierData, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds float, ptr %5, i64 1
  %26 = getelementptr inbounds float, ptr %5, i64 2
  %27 = getelementptr inbounds ptr, ptr %8, i64 1
  %28 = getelementptr inbounds ptr, ptr %8, i64 3
  %29 = getelementptr inbounds ptr, ptr %8, i64 2
  %30 = getelementptr inbounds ptr, ptr %8, i64 3
  %31 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  %32 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  %33 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 3
  br label %47

34:                                               ; preds = %243, %2
  %35 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %10) #12
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %302

37:                                               ; preds = %34
  %38 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  %39 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 1
  %40 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 2
  %41 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 3
  %42 = getelementptr inbounds ptr, ptr %3, i64 1
  %43 = getelementptr inbounds ptr, ptr %3, i64 2
  %44 = getelementptr inbounds ptr, ptr %3, i64 3
  %45 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 1
  %46 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 2
  br label %247

47:                                               ; preds = %21, %243
  %48 = phi ptr [ %19, %21 ], [ %245, %243 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %49 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %48, ptr noundef nonnull %7, ptr noundef nonnull %22) #12
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %243, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %7, align 16, !tbaa !46
  %53 = getelementptr inbounds %struct.BMFace, ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !129
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %243

56:                                               ; preds = %51
  %57 = load ptr, ptr %22, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.BMFace, ptr %57, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !129
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %243

61:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  call fastcc void @quad_from_tris(ptr noundef nonnull %48, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %62 = load ptr, ptr %7, align 16, !tbaa !46
  %63 = call float @BM_face_calc_area(ptr noundef %62) #12
  %64 = load ptr, ptr %22, align 8, !tbaa !46
  %65 = call float @BM_face_calc_area(ptr noundef %64) #12
  %66 = fadd float %63, %65
  %67 = load ptr, ptr %7, align 16, !tbaa !46
  %68 = getelementptr inbounds %struct.BMFace, ptr %67, i64 0, i32 4
  %69 = load ptr, ptr %22, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.BMFace, ptr %69, i64 0, i32 4
  %71 = load float, ptr %68, align 4, !tbaa !57
  %72 = load float, ptr %70, align 4, !tbaa !57
  %73 = getelementptr inbounds %struct.BMFace, ptr %67, i64 0, i32 4, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !57
  %75 = getelementptr inbounds %struct.BMFace, ptr %69, i64 0, i32 4, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !57
  %77 = fmul float %74, %76
  %78 = call float @llvm.fmuladd.f32(float %71, float %72, float %77)
  %79 = getelementptr inbounds %struct.BMFace, ptr %67, i64 0, i32 4, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !57
  %81 = getelementptr inbounds %struct.BMFace, ptr %69, i64 0, i32 4, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !57
  %83 = call float @llvm.fmuladd.f32(float %80, float %82, float %78)
  %84 = fmul float %66, %83
  %85 = load i8, ptr %23, align 1, !tbaa !167
  %86 = zext i8 %85 to i32
  br label %87

87:                                               ; preds = %61, %115
  %88 = phi i64 [ 0, %61 ], [ %116, %115 ]
  %89 = phi i1 [ false, %61 ], [ %117, %115 ]
  %90 = trunc i64 %88 to i32
  %91 = shl nuw nsw i32 1, %90
  %92 = and i32 %91, %86
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %115, label %97

94:                                               ; preds = %109
  %95 = add nuw nsw i64 %98, 1
  %96 = icmp eq i64 %95, 4
  br i1 %96, label %115, label %97, !llvm.loop !170

97:                                               ; preds = %87, %94
  %98 = phi i64 [ %95, %94 ], [ 0, %87 ]
  %99 = phi i8 [ %111, %94 ], [ 0, %87 ]
  %100 = phi i8 [ %110, %94 ], [ 0, %87 ]
  %101 = getelementptr inbounds ptr, ptr %8, i64 %98
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = getelementptr inbounds %struct.BMVert, ptr %102, i64 0, i32 2, i64 %88
  %104 = load float, ptr %103, align 4, !tbaa !57
  %105 = fcmp olt float %104, 0.000000e+00
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = fcmp ogt float %104, 0.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %106, %97
  %110 = phi i8 [ %100, %108 ], [ %100, %106 ], [ 1, %97 ]
  %111 = phi i8 [ 1, %108 ], [ %99, %106 ], [ %99, %97 ]
  %112 = icmp ne i8 %110, 0
  %113 = icmp ne i8 %111, 0
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %119, label %94

115:                                              ; preds = %94, %87
  %116 = add nuw nsw i64 %88, 1
  %117 = icmp ugt i64 %88, 1
  %118 = icmp eq i64 %116, 3
  br i1 %118, label %227, label %87, !llvm.loop !171

119:                                              ; preds = %109
  br i1 %89, label %227, label %120

120:                                              ; preds = %119
  %121 = load i8, ptr %24, align 1, !tbaa !167
  %122 = zext i8 %121 to i32
  %123 = load ptr, ptr %8, align 16
  %124 = getelementptr inbounds %struct.BMVert, ptr %123, i64 0, i32 2
  %125 = getelementptr inbounds %struct.BMVert, ptr %123, i64 0, i32 2, i64 1
  %126 = getelementptr inbounds %struct.BMVert, ptr %123, i64 0, i32 2, i64 2
  %127 = load ptr, ptr %27, align 8
  %128 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2
  %129 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2, i64 1
  %130 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2, i64 2
  %131 = load ptr, ptr %28, align 8
  %132 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2
  %133 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2, i64 1
  %134 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2, i64 2
  %135 = load ptr, ptr %29, align 16
  %136 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2
  %137 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2, i64 1
  %138 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2, i64 2
  %139 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2
  %140 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2, i64 1
  %141 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2, i64 2
  %142 = load ptr, ptr %30, align 8
  %143 = getelementptr inbounds %struct.BMVert, ptr %142, i64 0, i32 2
  %144 = getelementptr inbounds %struct.BMVert, ptr %142, i64 0, i32 2, i64 1
  %145 = getelementptr inbounds %struct.BMVert, ptr %142, i64 0, i32 2, i64 2
  br label %146

146:                                              ; preds = %120, %221
  %147 = phi i64 [ 0, %120 ], [ %222, %221 ]
  %148 = phi i1 [ false, %120 ], [ %223, %221 ]
  %149 = trunc i64 %147 to i32
  %150 = shl nuw nsw i32 1, %149
  %151 = and i32 %150, %122
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %221, label %153

153:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %154 = load float, ptr %124, align 4, !tbaa !57
  store float %154, ptr %5, align 4, !tbaa !57
  %155 = load float, ptr %125, align 4, !tbaa !57
  store float %155, ptr %25, align 4, !tbaa !57
  %156 = load float, ptr %126, align 4, !tbaa !57
  store float %156, ptr %26, align 4, !tbaa !57
  %157 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %147
  %158 = load float, ptr %157, align 4, !tbaa !57
  %159 = fneg float %158
  store float %159, ptr %157, align 4, !tbaa !57
  %160 = load float, ptr %128, align 4, !tbaa !57
  %161 = load float, ptr %5, align 4, !tbaa !57
  %162 = fsub float %160, %161
  %163 = load float, ptr %129, align 4, !tbaa !57
  %164 = load float, ptr %25, align 4, !tbaa !57
  %165 = fsub float %163, %164
  %166 = load float, ptr %130, align 4, !tbaa !57
  %167 = load float, ptr %26, align 4, !tbaa !57
  %168 = fsub float %166, %167
  %169 = fmul float %165, %165
  %170 = call float @llvm.fmuladd.f32(float %162, float %162, float %169)
  %171 = call float @llvm.fmuladd.f32(float %168, float %168, float %170)
  %172 = fcmp olt float %171, 0x3E45798EC0000000
  br i1 %172, label %173, label %192

173:                                              ; preds = %153
  %174 = load float, ptr %139, align 4, !tbaa !57
  store float %174, ptr %5, align 4, !tbaa !57
  %175 = load float, ptr %140, align 4, !tbaa !57
  store float %175, ptr %25, align 4, !tbaa !57
  %176 = load float, ptr %141, align 4, !tbaa !57
  store float %176, ptr %26, align 4, !tbaa !57
  %177 = load float, ptr %157, align 4, !tbaa !57
  %178 = fneg float %177
  store float %178, ptr %157, align 4, !tbaa !57
  %179 = load float, ptr %143, align 4, !tbaa !57
  %180 = load float, ptr %5, align 4, !tbaa !57
  %181 = fsub float %179, %180
  %182 = load float, ptr %144, align 4, !tbaa !57
  %183 = load float, ptr %25, align 4, !tbaa !57
  %184 = fsub float %182, %183
  %185 = load float, ptr %145, align 4, !tbaa !57
  %186 = load float, ptr %26, align 4, !tbaa !57
  %187 = fsub float %185, %186
  %188 = fmul float %184, %184
  %189 = call float @llvm.fmuladd.f32(float %181, float %181, float %188)
  %190 = call float @llvm.fmuladd.f32(float %187, float %187, float %189)
  %191 = fcmp olt float %190, 0x3E45798EC0000000
  br i1 %191, label %220, label %219

192:                                              ; preds = %153
  %193 = load float, ptr %132, align 4, !tbaa !57
  %194 = fsub float %193, %161
  %195 = load float, ptr %133, align 4, !tbaa !57
  %196 = fsub float %195, %164
  %197 = load float, ptr %134, align 4, !tbaa !57
  %198 = fsub float %197, %167
  %199 = fmul float %196, %196
  %200 = call float @llvm.fmuladd.f32(float %194, float %194, float %199)
  %201 = call float @llvm.fmuladd.f32(float %198, float %198, float %200)
  %202 = fcmp olt float %201, 0x3E45798EC0000000
  br i1 %202, label %203, label %219

203:                                              ; preds = %192
  %204 = load float, ptr %136, align 4, !tbaa !57
  store float %204, ptr %5, align 4, !tbaa !57
  %205 = load float, ptr %137, align 4, !tbaa !57
  store float %205, ptr %25, align 4, !tbaa !57
  %206 = load float, ptr %138, align 4, !tbaa !57
  store float %206, ptr %26, align 4, !tbaa !57
  %207 = load float, ptr %157, align 4, !tbaa !57
  %208 = fneg float %207
  store float %208, ptr %157, align 4, !tbaa !57
  %209 = load float, ptr %5, align 4, !tbaa !57
  %210 = fsub float %160, %209
  %211 = load float, ptr %25, align 4, !tbaa !57
  %212 = fsub float %163, %211
  %213 = load float, ptr %26, align 4, !tbaa !57
  %214 = fsub float %166, %213
  %215 = fmul float %212, %212
  %216 = call float @llvm.fmuladd.f32(float %210, float %210, float %215)
  %217 = call float @llvm.fmuladd.f32(float %214, float %214, float %216)
  %218 = fcmp olt float %217, 0x3E45798EC0000000
  br i1 %218, label %220, label %219

219:                                              ; preds = %203, %192, %173
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %221

220:                                              ; preds = %203, %173
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br i1 %148, label %242, label %225

221:                                              ; preds = %219, %146
  %222 = add nuw nsw i64 %147, 1
  %223 = icmp ugt i64 %147, 1
  %224 = icmp eq i64 %222, 3
  br i1 %224, label %242, label %146, !llvm.loop !172

225:                                              ; preds = %220
  %226 = fmul float %84, 1.000000e+01
  br label %227

227:                                              ; preds = %115, %225, %119
  %228 = phi float [ %226, %225 ], [ %84, %119 ], [ %84, %115 ]
  %229 = load ptr, ptr %8, align 16, !tbaa !46
  %230 = getelementptr inbounds %struct.BMVert, ptr %229, i64 0, i32 2
  %231 = load ptr, ptr %31, align 8, !tbaa !46
  %232 = getelementptr inbounds %struct.BMVert, ptr %231, i64 0, i32 2
  %233 = load ptr, ptr %32, align 16, !tbaa !46
  %234 = getelementptr inbounds %struct.BMVert, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %33, align 8, !tbaa !46
  %236 = getelementptr inbounds %struct.BMVert, ptr %235, i64 0, i32 2
  %237 = call zeroext i8 @is_quad_convex_v3(ptr noundef nonnull %230, ptr noundef nonnull %232, ptr noundef nonnull %234, ptr noundef nonnull %236) #12
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %227
  %240 = fneg float %228
  %241 = call ptr @BLI_heap_insert(ptr noundef %10, float noundef %240, ptr noundef nonnull %48) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  br label %243

242:                                              ; preds = %221, %227, %220
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  br label %243

243:                                              ; preds = %47, %56, %51, %239, %242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  %244 = load ptr, ptr %15, align 8, !tbaa !121
  %245 = call ptr %244(ptr noundef nonnull %6) #12
  %246 = icmp eq ptr %245, null
  br i1 %246, label %34, label %47, !llvm.loop !173

247:                                              ; preds = %37, %299
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %248 = call ptr @BLI_heap_popmin(ptr noundef %10) #12
  %249 = call zeroext i8 @BM_edge_face_pair(ptr noundef %248, ptr noundef nonnull %9, ptr noundef nonnull %38) #12
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %299, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %9, align 16, !tbaa !46
  %253 = getelementptr inbounds %struct.BMHeader, ptr %252, i64 0, i32 3
  %254 = load i8, ptr %253, align 1, !tbaa !127
  %255 = and i8 %254, 16
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %299

257:                                              ; preds = %251
  %258 = load ptr, ptr %38, align 8, !tbaa !46
  %259 = getelementptr inbounds %struct.BMHeader, ptr %258, i64 0, i32 3
  %260 = load i8, ptr %259, align 1, !tbaa !127
  %261 = and i8 %260, 16
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %299

263:                                              ; preds = %257
  %264 = call zeroext i8 @BM_face_share_face_check(ptr noundef %252, ptr noundef %258) #12
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %299

266:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call fastcc void @quad_from_tris(ptr noundef %248, ptr noundef nonnull %9, ptr noundef nonnull %4)
  %267 = load ptr, ptr %4, align 16, !tbaa !46
  %268 = load ptr, ptr %39, align 8, !tbaa !46
  %269 = load ptr, ptr %40, align 16, !tbaa !46
  %270 = load ptr, ptr %41, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  store ptr %267, ptr %3, align 16, !tbaa !46
  store ptr %268, ptr %42, align 8, !tbaa !46
  store ptr %269, ptr %43, align 16, !tbaa !46
  store ptr %270, ptr %44, align 8, !tbaa !46
  %271 = load ptr, ptr %0, align 8, !tbaa !92
  %272 = icmp eq ptr %270, null
  %273 = select i1 %272, i32 3, i32 4
  %274 = call ptr @BM_face_create_verts(ptr noundef %271, ptr noundef nonnull %3, i32 noundef %273, ptr noundef null, i32 noundef 2, i8 noundef zeroext 1) #12
  %275 = load ptr, ptr %45, align 8, !tbaa !90
  %276 = getelementptr inbounds %struct.SkinModifierData, ptr %275, i64 0, i32 2
  %277 = load i8, ptr %276, align 4, !tbaa !158
  %278 = and i8 %277, 1
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %266
  %281 = getelementptr inbounds %struct.BMHeader, ptr %274, i64 0, i32 3
  %282 = load i8, ptr %281, align 1, !tbaa !127
  %283 = or i8 %282, 8
  store i8 %283, ptr %281, align 1, !tbaa !127
  br label %284

284:                                              ; preds = %266, %280
  %285 = load i32, ptr %46, align 8, !tbaa !93
  %286 = trunc i32 %285 to i16
  %287 = getelementptr inbounds %struct.BMFace, ptr %274, i64 0, i32 5
  store i16 %286, ptr %287, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  %288 = load ptr, ptr %9, align 16, !tbaa !46
  %289 = getelementptr inbounds %struct.BMHeader, ptr %288, i64 0, i32 3
  %290 = load i8, ptr %289, align 1, !tbaa !127
  %291 = or i8 %290, 16
  store i8 %291, ptr %289, align 1, !tbaa !127
  %292 = load ptr, ptr %38, align 8, !tbaa !46
  %293 = getelementptr inbounds %struct.BMHeader, ptr %292, i64 0, i32 3
  %294 = load i8, ptr %293, align 1, !tbaa !127
  %295 = or i8 %294, 16
  store i8 %295, ptr %293, align 1, !tbaa !127
  %296 = getelementptr inbounds %struct.BMHeader, ptr %248, i64 0, i32 3
  %297 = load i8, ptr %296, align 1, !tbaa !127
  %298 = or i8 %297, 16
  store i8 %298, ptr %296, align 1, !tbaa !127
  br label %299

299:                                              ; preds = %251, %257, %263, %284, %247
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  %300 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %10) #12
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %247, label %302, !llvm.loop !174

302:                                              ; preds = %299, %34
  call void @BLI_heap_free(ptr noundef %10, ptr noundef null) #12
  %303 = load ptr, ptr %0, align 8, !tbaa !92
  call void @BM_mesh_delete_hflag_tagged(ptr noundef %303, i8 noundef zeroext 16, i8 noundef zeroext 10) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  ret void
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @defvert_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_heap_new() local_unnamed_addr #3

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @quad_from_tris(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [2 x [3 x ptr]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  %5 = load ptr, ptr %1, align 8, !tbaa !46
  call void @BM_face_as_array_vert_tri(ptr noundef %5, ptr noundef nonnull %4) #12
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds [2 x [3 x ptr]], ptr %4, i64 0, i64 1
  call void @BM_face_as_array_vert_tri(ptr noundef %7, ptr noundef nonnull %8) #12
  %9 = load ptr, ptr %4, align 16, !tbaa !46
  %10 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  %13 = load ptr, ptr %12, align 16
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %26, label %17, !llvm.loop !175

17:                                               ; preds = %3, %14
  %18 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %19 = getelementptr inbounds [2 x [3 x ptr]], ptr %4, i64 0, i64 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, %9
  %22 = icmp eq ptr %20, %11
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp eq ptr %20, %13
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %14, label %26

26:                                               ; preds = %17, %14
  %27 = phi ptr [ null, %14 ], [ %20, %17 ]
  %28 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  br label %31

31:                                               ; preds = %26, %58
  %32 = phi i64 [ 0, %26 ], [ %60, %58 ]
  %33 = phi i32 [ 0, %26 ], [ %61, %58 ]
  %34 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds ptr, ptr %2, i64 %36
  store ptr %35, ptr %37, align 8, !tbaa !46
  %38 = load ptr, ptr %28, align 8, !tbaa !133
  %39 = icmp eq ptr %35, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %29, align 8, !tbaa !136
  %42 = icmp eq ptr %35, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %40, %31
  %44 = add nuw nsw i64 %32, 1
  %45 = icmp eq i64 %44, 3
  %46 = and i64 %44, 4294967295
  %47 = select i1 %45, i64 0, i64 %46
  %48 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, %38
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %30, align 8, !tbaa !136
  %53 = icmp eq ptr %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %43
  %55 = add nsw i32 %33, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %2, i64 %56
  store ptr %27, ptr %57, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %40, %51, %54
  %59 = phi i32 [ %55, %54 ], [ %33, %51 ], [ %33, %40 ]
  %60 = add nuw nsw i64 %32, 1
  %61 = add nsw i32 %59, 1
  %62 = icmp eq i64 %60, 3
  br i1 %62, label %63, label %31, !llvm.loop !176

63:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  ret void
}

declare float @BM_face_calc_area(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_quad_convex_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_face_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_delete_hflag_tagged(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

declare void @bmiter__edge_of_vert_begin(ptr noundef) #3

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #3

declare void @bmiter__face_of_vert_begin(ptr noundef) #3

declare ptr @bmiter__face_of_vert_step(ptr noundef) #3

declare void @bmiter__vert_of_face_begin(ptr noundef) #3

declare ptr @bmiter__vert_of_face_step(ptr noundef) #3

declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @isect_ray_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_find_longest_loop(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BM_face_as_array_vert_quad(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_find_shortest_loop(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BM_data_layer_free_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @connect_frames(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [4 x ptr], align 16
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [4 x [4 x ptr]], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #12
  %8 = load ptr, ptr %2, align 8, !tbaa !46
  store ptr %8, ptr %6, align 16, !tbaa !46
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = getelementptr inbounds ptr, ptr %2, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  store ptr %11, ptr %9, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %6, i64 2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  store ptr %14, ptr %12, align 16, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %6, i64 3
  %16 = load ptr, ptr %1, align 8, !tbaa !46
  store ptr %16, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds [4 x ptr], ptr %6, i64 1
  store ptr %11, ptr %17, align 16, !tbaa !46
  %18 = getelementptr inbounds [4 x ptr], ptr %6, i64 1, i64 1
  %19 = getelementptr inbounds ptr, ptr %2, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  store ptr %20, ptr %18, align 8, !tbaa !46
  %21 = getelementptr inbounds [4 x ptr], ptr %6, i64 1, i64 2
  %22 = getelementptr inbounds ptr, ptr %1, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  store ptr %23, ptr %21, align 16, !tbaa !46
  %24 = getelementptr inbounds [4 x ptr], ptr %6, i64 1, i64 3
  store ptr %14, ptr %24, align 8, !tbaa !46
  %25 = getelementptr inbounds [4 x ptr], ptr %6, i64 2
  store ptr %20, ptr %25, align 16, !tbaa !46
  %26 = getelementptr inbounds [4 x ptr], ptr %6, i64 2, i64 1
  %27 = getelementptr inbounds ptr, ptr %2, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  store ptr %28, ptr %26, align 8, !tbaa !46
  %29 = getelementptr inbounds [4 x ptr], ptr %6, i64 2, i64 2
  %30 = getelementptr inbounds ptr, ptr %1, i64 3
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  store ptr %31, ptr %29, align 16, !tbaa !46
  %32 = getelementptr inbounds [4 x ptr], ptr %6, i64 2, i64 3
  store ptr %23, ptr %32, align 8, !tbaa !46
  %33 = getelementptr inbounds [4 x ptr], ptr %6, i64 3
  store ptr %28, ptr %33, align 16, !tbaa !46
  %34 = getelementptr inbounds [4 x ptr], ptr %6, i64 3, i64 1
  store ptr %8, ptr %34, align 8, !tbaa !46
  %35 = getelementptr inbounds [4 x ptr], ptr %6, i64 3, i64 2
  store ptr %16, ptr %35, align 16, !tbaa !46
  %36 = getelementptr inbounds [4 x ptr], ptr %6, i64 3, i64 3
  store ptr %31, ptr %36, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %37 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %39 = load float, ptr %37, align 4, !tbaa !57
  %40 = load float, ptr %38, align 4, !tbaa !57
  %41 = fsub float %39, %40
  %42 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !57
  %44 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !57
  %46 = fsub float %43, %45
  %47 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !57
  %49 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !57
  %51 = fsub float %48, %50
  %52 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  %53 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %54 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %55 = call float @normal_quad_v3(ptr noundef nonnull %7, ptr noundef nonnull %38, ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54) #12
  %56 = load float, ptr %7, align 4, !tbaa !57
  %57 = getelementptr inbounds float, ptr %7, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !57
  %59 = fmul float %46, %58
  %60 = call float @llvm.fmuladd.f32(float %56, float %41, float %59)
  %61 = getelementptr inbounds float, ptr %7, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !57
  %63 = call float @llvm.fmuladd.f32(float %62, float %51, float %60)
  %64 = fcmp ogt float %63, 0.000000e+00
  %65 = getelementptr inbounds ptr, ptr %4, i64 1
  %66 = getelementptr inbounds ptr, ptr %4, i64 2
  %67 = getelementptr inbounds ptr, ptr %4, i64 3
  %68 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 1
  %69 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 2
  %70 = getelementptr inbounds ptr, ptr %5, i64 1
  %71 = getelementptr inbounds ptr, ptr %5, i64 2
  %72 = getelementptr inbounds ptr, ptr %5, i64 3
  %73 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 1
  %74 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 2
  br label %75

75:                                               ; preds = %3, %128
  %76 = phi i64 [ 0, %3 ], [ %129, %128 ]
  %77 = getelementptr inbounds [4 x [4 x ptr]], ptr %6, i64 0, i64 %76
  br i1 %64, label %78, label %103

78:                                               ; preds = %75
  %79 = getelementptr inbounds [4 x [4 x ptr]], ptr %6, i64 0, i64 %76, i64 3
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = getelementptr inbounds [4 x [4 x ptr]], ptr %6, i64 0, i64 %76, i64 2
  %82 = load ptr, ptr %81, align 16, !tbaa !46
  %83 = getelementptr inbounds [4 x [4 x ptr]], ptr %6, i64 0, i64 %76, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = load ptr, ptr %77, align 16, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  store ptr %80, ptr %5, align 16, !tbaa !46
  store ptr %82, ptr %70, align 8, !tbaa !46
  store ptr %84, ptr %71, align 16, !tbaa !46
  store ptr %85, ptr %72, align 8, !tbaa !46
  %86 = load ptr, ptr %0, align 8, !tbaa !92
  %87 = icmp eq ptr %85, null
  %88 = select i1 %87, i32 3, i32 4
  %89 = call ptr @BM_face_create_verts(ptr noundef %86, ptr noundef nonnull %5, i32 noundef %88, ptr noundef null, i32 noundef 2, i8 noundef zeroext 1) #12
  %90 = load ptr, ptr %73, align 8, !tbaa !90
  %91 = getelementptr inbounds %struct.SkinModifierData, ptr %90, i64 0, i32 2
  %92 = load i8, ptr %91, align 4, !tbaa !158
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %97 = load i8, ptr %96, align 1, !tbaa !127
  %98 = or i8 %97, 8
  store i8 %98, ptr %96, align 1, !tbaa !127
  br label %99

99:                                               ; preds = %78, %95
  %100 = load i32, ptr %74, align 8, !tbaa !93
  %101 = trunc i32 %100 to i16
  %102 = getelementptr inbounds %struct.BMFace, ptr %89, i64 0, i32 5
  store i16 %101, ptr %102, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %128

103:                                              ; preds = %75
  %104 = load ptr, ptr %77, align 16, !tbaa !46
  %105 = getelementptr inbounds [4 x [4 x ptr]], ptr %6, i64 0, i64 %76, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  %107 = getelementptr inbounds [4 x [4 x ptr]], ptr %6, i64 0, i64 %76, i64 2
  %108 = load ptr, ptr %107, align 16, !tbaa !46
  %109 = getelementptr inbounds [4 x [4 x ptr]], ptr %6, i64 0, i64 %76, i64 3
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  store ptr %104, ptr %4, align 16, !tbaa !46
  store ptr %106, ptr %65, align 8, !tbaa !46
  store ptr %108, ptr %66, align 16, !tbaa !46
  store ptr %110, ptr %67, align 8, !tbaa !46
  %111 = load ptr, ptr %0, align 8, !tbaa !92
  %112 = icmp eq ptr %110, null
  %113 = select i1 %112, i32 3, i32 4
  %114 = call ptr @BM_face_create_verts(ptr noundef %111, ptr noundef nonnull %4, i32 noundef %113, ptr noundef null, i32 noundef 2, i8 noundef zeroext 1) #12
  %115 = load ptr, ptr %68, align 8, !tbaa !90
  %116 = getelementptr inbounds %struct.SkinModifierData, ptr %115, i64 0, i32 2
  %117 = load i8, ptr %116, align 4, !tbaa !158
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %103
  %121 = getelementptr inbounds %struct.BMHeader, ptr %114, i64 0, i32 3
  %122 = load i8, ptr %121, align 1, !tbaa !127
  %123 = or i8 %122, 8
  store i8 %123, ptr %121, align 1, !tbaa !127
  br label %124

124:                                              ; preds = %103, %120
  %125 = load i32, ptr %69, align 8, !tbaa !93
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds %struct.BMFace, ptr %114, i64 0, i32 5
  store i16 %126, ptr %127, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  br label %128

128:                                              ; preds = %99, %124
  %129 = add nuw nsw i64 %76, 1
  %130 = icmp eq i64 %129, 4
  br i1 %130, label %131, label %75, !llvm.loop !177

131:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #12
  ret void
}

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

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
!34 = !{!35, !37, i64 1168}
!35 = !{!"DerivedMesh", !36, i64 0, !36, i64 200, !36, i64 400, !36, i64 600, !36, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!36 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !37, i64 1176}
!43 = !{!35, !37, i64 1320}
!44 = !{!35, !37, i64 1104}
!45 = !{!35, !37, i64 1112}
!46 = !{!37, !37, i64 0}
!47 = !{!48, !40, i64 0}
!48 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !49, i64 10}
!49 = !{!"short", !38, i64 0}
!50 = !{!40, !40, i64 0}
!51 = !{!48, !40, i64 4}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!56, !40, i64 12}
!56 = !{!"MVertSkin", !38, i64 0, !40, i64 12}
!57 = !{!41, !41, i64 0}
!58 = distinct !{!58, !53, !54}
!59 = !{!60, !40, i64 8}
!60 = !{!"MDeformVert", !37, i64 0, !40, i64 8, !40, i64 12}
!61 = !{!60, !37, i64 0}
!62 = !{!63, !40, i64 0}
!63 = !{!"MDeformWeight", !40, i64 0, !41, i64 4}
!64 = distinct !{!64, !53, !54}
!65 = !{!66, !40, i64 0}
!66 = !{!"", !40, i64 0, !41, i64 4, !41, i64 8}
!67 = !{!63, !41, i64 4}
!68 = !{!66, !41, i64 4}
!69 = !{!66, !41, i64 8}
!70 = distinct !{!70, !53, !54}
!71 = distinct !{!71, !53, !54}
!72 = distinct !{!72, !53, !54}
!73 = distinct !{!73, !53, !54}
!74 = !{!75, !40, i64 8}
!75 = !{!"MeshElemMap", !37, i64 0, !40, i64 8}
!76 = !{!75, !37, i64 0}
!77 = !{!78, !40, i64 36}
!78 = !{!"", !38, i64 0, !40, i64 36, !40, i64 40}
!79 = !{!78, !40, i64 40}
!80 = distinct !{!80, !53, !54}
!81 = distinct !{!81, !53, !54}
!82 = !{!83, !40, i64 36}
!83 = !{!"", !38, i64 0, !40, i64 36}
!84 = distinct !{!84, !53, !54}
!85 = distinct !{!85, !53, !54}
!86 = !{!87, !40, i64 304}
!87 = !{!"", !38, i64 0, !40, i64 304, !40, i64 308, !38, i64 312}
!88 = !{!87, !40, i64 308}
!89 = distinct !{!89, !53, !54}
!90 = !{!91, !37, i64 8}
!91 = !{!"", !37, i64 0, !37, i64 8, !40, i64 16}
!92 = !{!91, !37, i64 0}
!93 = !{!91, !40, i64 16}
!94 = distinct !{!94, !53, !54}
!95 = !{!96, !37, i64 0}
!96 = !{!"", !37, i64 0, !40, i64 8}
!97 = !{!96, !40, i64 8}
!98 = distinct !{!98, !53, !54}
!99 = distinct !{!99, !53, !54}
!100 = distinct !{!100, !53, !54}
!101 = distinct !{!101, !53, !54}
!102 = distinct !{!102, !53, !54}
!103 = !{!104, !37, i64 0}
!104 = !{!"BMVert", !105, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!105 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!106 = distinct !{!106, !53, !54}
!107 = distinct !{!107, !53, !54}
!108 = distinct !{!108, !53, !54}
!109 = distinct !{!109, !53, !54}
!110 = distinct !{!110, !53, !54}
!111 = distinct !{!111, !53, !54}
!112 = distinct !{!112, !53, !54}
!113 = !{!114, !38, i64 148}
!114 = !{!"Frame", !38, i64 0, !38, i64 32, !38, i64 80, !38, i64 144, !38, i64 148}
!115 = !{!38, !38, i64 0}
!116 = distinct !{!116, !53, !54}
!117 = distinct !{!117, !53, !54}
!118 = !{!119, !38, i64 60}
!119 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!120 = !{!119, !37, i64 40}
!121 = !{!119, !37, i64 48}
!122 = !{!123, !37, i64 56}
!123 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !36, i64 144, !36, i64 344, !36, i64 544, !36, i64 744, !49, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !124, i64 960, !37, i64 976, !124, i64 984, !37, i64 1000}
!124 = !{!"ListBase", !37, i64 0, !37, i64 8}
!125 = distinct !{!125, !53, !54}
!126 = distinct !{!126, !53, !54}
!127 = !{!105, !38, i64 13}
!128 = distinct !{!128, !53, !54}
!129 = !{!130, !40, i64 32}
!130 = !{!"BMFace", !105, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !49, i64 48}
!131 = !{!132, !37, i64 24}
!132 = !{!"BMLoop", !105, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!133 = !{!134, !37, i64 24}
!134 = !{!"BMEdge", !105, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !135, i64 48, !135, i64 64}
!135 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!136 = !{!134, !37, i64 32}
!137 = distinct !{!137, !53, !54}
!138 = distinct !{!138, !53, !54}
!139 = distinct !{!139, !53, !54}
!140 = distinct !{!140, !53, !54}
!141 = distinct !{!141, !53, !54}
!142 = distinct !{!142, !53, !54}
!143 = distinct !{!143, !53, !54}
!144 = distinct !{!144, !53, !54}
!145 = distinct !{!145, !53, !54}
!146 = distinct !{!146, !53, !54}
!147 = !{!148, !41, i64 112}
!148 = !{!"SkinModifierData", !149, i64 0, !41, i64 112, !38, i64 116, !38, i64 117, !38, i64 118}
!149 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!150 = distinct !{!150, !53, !54}
!151 = distinct !{!151, !53, !54}
!152 = distinct !{!152, !53, !54}
!153 = !{!123, !37, i64 32}
!154 = distinct !{!154, !53, !54}
!155 = distinct !{!155, !53, !54}
!156 = distinct !{!156, !53, !54}
!157 = distinct !{!157, !53, !54}
!158 = !{!148, !38, i64 116}
!159 = !{!130, !49, i64 48}
!160 = distinct !{!160, !53, !54}
!161 = distinct !{!161, !53, !54}
!162 = distinct !{!162, !53, !54}
!163 = !{!35, !40, i64 1056}
!164 = !{!35, !37, i64 1136}
!165 = !{!35, !37, i64 1680}
!166 = !{!149, !40, i64 20}
!167 = !{!148, !38, i64 117}
!168 = distinct !{!168, !53, !54}
!169 = !{!123, !37, i64 40}
!170 = distinct !{!170, !53, !54}
!171 = distinct !{!171, !53, !54}
!172 = distinct !{!172, !53, !54}
!173 = distinct !{!173, !53, !54}
!174 = distinct !{!174, !53, !54}
!175 = distinct !{!175, !53, !54}
!176 = distinct !{!176, !53, !54}
!177 = distinct !{!177, !53, !54}
