; ModuleID = 'blender/source/blender/modifiers/intern/MOD_weightvgproximity.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_weightvgproximity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WeightVGProximityModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], float, float, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }

@modifierType_WeightVGProximity = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"VertexWeightProximity\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WeightVGProximityModifierData\00\00\00", i32 360, i32 5, i32 525, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr @foreachObjectLink, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"WeightVGProximity Modifier, tidx\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"WeightVGProximity Modifier, tw\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"WeightVGProximity Modifier, tdw\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"WeightVGProximity Modifier, indices\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"WeightVGProximity Modifier, org_w\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"WeightVGProximity Modifier, dw\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"WeightVGProximity Modifier, new_w\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"WeightVGProximity Modifier, v_cos\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"WeightVGProximity Modifier, tv_cos\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"dists_v\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"dists_e\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"dists_f\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"WeightVGProximity Modifier\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"mask_texture\00", align 1
@str.16 = private unnamed_addr constant [34 x i8] c"WeightVGProximity: Out of memory.\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %4) #13
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 !PGOFuncName !44 {
  %5 = alloca %struct.SpaceTransform, align 4
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call i32 %7(ptr noundef %2) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %281, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #14, !range !48
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %281

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %281, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 1
  %20 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %19) #13
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %281, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef nonnull %2, i32 noundef 2, i32 noundef %8) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %281, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %27 = sext i32 %8 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str) #13
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %31 = tail call ptr %30(i64 noundef %28, ptr noundef nonnull @.str.1) #13
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %33 = shl nsw i64 %27, 3
  %34 = tail call ptr %32(i64 noundef %33, ptr noundef nonnull @.str.2) #13
  %35 = icmp sgt i32 %8, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %25
  %37 = zext nneg i32 %8 to i64
  br label %38

38:                                               ; preds = %36, %53
  %39 = phi i64 [ 0, %36 ], [ %55, %53 ]
  %40 = phi i32 [ 0, %36 ], [ %54, %53 ]
  %41 = getelementptr inbounds %struct.MDeformVert, ptr %23, i64 %39
  %42 = tail call ptr @defvert_find_index(ptr noundef nonnull %41, i32 noundef %20) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds i32, ptr %29, i64 %45
  %47 = trunc i64 %39 to i32
  store i32 %47, ptr %46, align 4, !tbaa !51
  %48 = getelementptr inbounds %struct.MDeformWeight, ptr %42, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !52
  %50 = getelementptr inbounds float, ptr %31, i64 %45
  store float %49, ptr %50, align 4, !tbaa !54
  %51 = add nsw i32 %40, 1
  %52 = getelementptr inbounds ptr, ptr %34, i64 %45
  store ptr %42, ptr %52, align 8, !tbaa !50
  br label %53

53:                                               ; preds = %44, %38
  %54 = phi i32 [ %51, %44 ], [ %40, %38 ]
  %55 = add nuw nsw i64 %39, 1
  %56 = icmp eq i64 %55, %37
  br i1 %56, label %57, label %38, !llvm.loop !55

57:                                               ; preds = %53
  %58 = icmp eq i32 %54, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %25, %57
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %60(ptr noundef %29) #13
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %61(ptr noundef %31) #13
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %62(ptr noundef %34) #13
  br label %281

63:                                               ; preds = %57
  %64 = icmp eq i32 %54, %8
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = sext i32 %54 to i64
  %67 = shl nsw i64 %66, 2
  br label %80

68:                                               ; preds = %63
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %70 = sext i32 %54 to i64
  %71 = shl nsw i64 %70, 2
  %72 = tail call ptr %69(i64 noundef %71, ptr noundef nonnull @.str.3) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 4 %29, i64 %71, i1 false)
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %74 = tail call ptr %73(i64 noundef %71, ptr noundef nonnull @.str.4) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 4 %31, i64 %71, i1 false)
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %76 = shl nsw i64 %70, 3
  %77 = tail call ptr %75(i64 noundef %76, ptr noundef nonnull @.str.5) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %77, ptr align 8 %34, i64 %76, i1 false)
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %78(ptr noundef %31) #13
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %79(ptr noundef %34) #13
  br label %80

80:                                               ; preds = %65, %68
  %81 = phi i64 [ %67, %65 ], [ %71, %68 ]
  %82 = phi i64 [ %66, %65 ], [ %70, %68 ]
  %83 = phi ptr [ null, %65 ], [ %72, %68 ]
  %84 = phi ptr [ %31, %65 ], [ %74, %68 ]
  %85 = phi ptr [ %34, %65 ], [ %77, %68 ]
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %87 = tail call ptr %86(i64 noundef %81, ptr noundef nonnull @.str.6) #13
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %88(ptr noundef %29) #13
  %89 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %90 = mul nsw i64 %82, 12
  %91 = tail call ptr %89(i64 noundef %90, ptr noundef nonnull @.str.7) #13
  br i1 %64, label %112, label %92

92:                                               ; preds = %80
  %93 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %94 = mul nuw nsw i64 %27, 12
  %95 = tail call ptr %93(i64 noundef %94, ptr noundef nonnull @.str.8) #13
  %96 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %97 = load ptr, ptr %96, align 8, !tbaa !57
  tail call void %97(ptr noundef %2, ptr noundef %95) #13
  %98 = icmp sgt i32 %54, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = zext nneg i32 %54 to i64
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi i64 [ 0, %99 ], [ %108, %101 ]
  %103 = getelementptr inbounds [3 x float], ptr %91, i64 %102
  %104 = getelementptr inbounds i32, ptr %83, i64 %102
  %105 = load i32, ptr %104, align 4, !tbaa !51
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x float], ptr %95, i64 %106
  tail call fastcc void @copy_v3_v3(ptr noundef %103, ptr noundef %107) #14
  %108 = add nuw nsw i64 %102, 1
  %109 = icmp eq i64 %108, %100
  br i1 %109, label %110, label %101, !llvm.loop !58

110:                                              ; preds = %101, %92
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %111(ptr noundef %95) #13
  br label %115

112:                                              ; preds = %80
  %113 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  tail call void %114(ptr noundef %2, ptr noundef %91) #13
  br label %115

115:                                              ; preds = %112, %110
  %116 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !59
  switch i32 %117, label %252 [
    i32 1, label %118
    i32 2, label %154
  ]

118:                                              ; preds = %115
  %119 = tail call fastcc float @get_ob2ob_distance(ptr noundef %1, ptr noundef nonnull %16) #14
  %120 = icmp sgt i32 %54, 0
  br i1 %120, label %121, label %252

121:                                              ; preds = %118
  %122 = zext nneg i32 %54 to i64
  %123 = add nuw nsw i64 %122, 3
  %124 = and i64 %123, 4294967292
  %125 = add nsw i64 %122, -1
  %126 = insertelement <4 x i64> poison, i64 %125, i64 0
  %127 = shufflevector <4 x i64> %126, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %128

128:                                              ; preds = %150, %121
  %129 = phi i64 [ 0, %121 ], [ %151, %150 ]
  %130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %121 ], [ %152, %150 ]
  %131 = icmp ule <4 x i64> %130, %127
  %132 = extractelement <4 x i1> %131, i64 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = getelementptr inbounds float, ptr %87, i64 %129
  store float %119, ptr %134, align 4, !tbaa !54
  br label %135

135:                                              ; preds = %133, %128
  %136 = extractelement <4 x i1> %131, i64 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = or disjoint i64 %129, 1
  %139 = getelementptr inbounds float, ptr %87, i64 %138
  store float %119, ptr %139, align 4, !tbaa !54
  br label %140

140:                                              ; preds = %137, %135
  %141 = extractelement <4 x i1> %131, i64 2
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = or disjoint i64 %129, 2
  %144 = getelementptr inbounds float, ptr %87, i64 %143
  store float %119, ptr %144, align 4, !tbaa !54
  br label %145

145:                                              ; preds = %142, %140
  %146 = extractelement <4 x i1> %131, i64 3
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = or disjoint i64 %129, 3
  %149 = getelementptr inbounds float, ptr %87, i64 %148
  store float %119, ptr %149, align 4, !tbaa !54
  br label %150

150:                                              ; preds = %147, %145
  %151 = add i64 %129, 4
  %152 = add <4 x i64> %130, <i64 4, i64 4, i64 4, i64 4>
  %153 = icmp eq i64 %151, %124
  br i1 %153, label %252, label %128, !llvm.loop !60

154:                                              ; preds = %115
  %155 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 3
  %156 = load i32, ptr %155, align 4, !tbaa !63
  %157 = insertelement <4 x i32> poison, i32 %156, i64 0
  %158 = shufflevector <4 x i32> %157, <4 x i32> poison, <4 x i32> zeroinitializer
  %159 = and <4 x i32> %158, <i32 7, i32 4, i32 2, i32 1>
  %160 = icmp eq <4 x i32> %159, zeroinitializer
  %161 = extractelement <4 x i1> %160, i64 0
  br i1 %161, label %251, label %162

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 120
  %164 = load ptr, ptr %163, align 8, !tbaa !64
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 3
  %168 = load i16, ptr %167, align 8, !tbaa !70
  switch i16 %168, label %250 [
    i16 2, label %169
    i16 3, label %169
    i16 4, label %169
    i16 1, label %171
  ]

169:                                              ; preds = %166, %166, %166
  %170 = tail call ptr @CDDM_from_curve(ptr noundef nonnull %16) #13
  br label %181

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %173 = load ptr, ptr %172, align 8, !tbaa !71
  %174 = getelementptr inbounds %struct.Mesh, ptr %173, i64 0, i32 20
  %175 = load ptr, ptr %174, align 8, !tbaa !72
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %171
  %178 = tail call ptr @CDDM_from_editbmesh(ptr noundef nonnull %175, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  br label %181

179:                                              ; preds = %171
  %180 = tail call ptr @CDDM_from_mesh(ptr noundef nonnull %173) #13
  br label %181

181:                                              ; preds = %169, %179, %177
  %182 = phi ptr [ %170, %169 ], [ %178, %177 ], [ %180, %179 ]
  %183 = icmp eq ptr %182, null
  br i1 %183, label %250, label %184

184:                                              ; preds = %162, %181
  %185 = phi ptr [ %182, %181 ], [ %164, %162 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #15
  %186 = extractelement <4 x i1> %160, i64 3
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %189 = tail call ptr %188(i64 noundef %81, ptr noundef nonnull @.str.9) #13
  br label %190

190:                                              ; preds = %184, %187
  %191 = phi ptr [ %189, %187 ], [ null, %184 ]
  %192 = extractelement <4 x i1> %160, i64 2
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %195 = tail call ptr %194(i64 noundef %81, ptr noundef nonnull @.str.10) #13
  br label %196

196:                                              ; preds = %190, %193
  %197 = phi ptr [ %195, %193 ], [ null, %190 ]
  %198 = extractelement <4 x i1> %160, i64 1
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %201 = tail call ptr %200(i64 noundef %81, ptr noundef nonnull @.str.11) #13
  br label %202

202:                                              ; preds = %196, %199
  %203 = phi ptr [ %201, %199 ], [ null, %196 ]
  %204 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %205 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %5, ptr noundef nonnull %204, ptr noundef nonnull %205) #13
  call fastcc void @get_vert2geom_distance(i32 noundef %54, ptr noundef %91, ptr noundef %191, ptr noundef %197, ptr noundef %203, ptr noundef nonnull %185, ptr noundef nonnull %5) #14
  %206 = icmp sgt i32 %54, 0
  br i1 %206, label %207, label %233

207:                                              ; preds = %202
  %208 = icmp eq ptr %191, null
  %209 = icmp eq ptr %197, null
  %210 = icmp eq ptr %203, null
  %211 = zext nneg i32 %54 to i64
  br label %212

212:                                              ; preds = %207, %230
  %213 = phi i64 [ 0, %207 ], [ %231, %230 ]
  br i1 %208, label %217, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds float, ptr %191, i64 %213
  %216 = load float, ptr %215, align 4, !tbaa !54
  br label %217

217:                                              ; preds = %212, %214
  %218 = phi float [ %216, %214 ], [ 0x47EFFFFFE0000000, %212 ]
  %219 = getelementptr inbounds float, ptr %87, i64 %213
  store float %218, ptr %219, align 4, !tbaa !54
  br i1 %209, label %224, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds float, ptr %197, i64 %213
  %222 = load float, ptr %221, align 4, !tbaa !54
  %223 = call fastcc float @min_ff(float noundef %222, float noundef %218) #14
  store float %223, ptr %219, align 4, !tbaa !54
  br label %224

224:                                              ; preds = %220, %217
  %225 = phi float [ %223, %220 ], [ %218, %217 ]
  br i1 %210, label %230, label %226

226:                                              ; preds = %224
  %227 = getelementptr inbounds float, ptr %203, i64 %213
  %228 = load float, ptr %227, align 4, !tbaa !54
  %229 = call fastcc float @min_ff(float noundef %228, float noundef %225) #14
  store float %229, ptr %219, align 4, !tbaa !54
  br label %230

230:                                              ; preds = %224, %226
  %231 = add nuw nsw i64 %213, 1
  %232 = icmp eq i64 %231, %211
  br i1 %232, label %233, label %212, !llvm.loop !74

233:                                              ; preds = %230, %202
  br i1 %165, label %234, label %237

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.DerivedMesh, ptr %185, i64 0, i32 95
  %236 = load ptr, ptr %235, align 8, !tbaa !75
  call void %236(ptr noundef nonnull %185) #13
  br label %237

237:                                              ; preds = %234, %233
  %238 = icmp eq ptr %191, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %237
  %240 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %240(ptr noundef nonnull %191) #13
  br label %241

241:                                              ; preds = %239, %237
  %242 = icmp eq ptr %197, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %241
  %244 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %244(ptr noundef nonnull %197) #13
  br label %245

245:                                              ; preds = %243, %241
  %246 = icmp eq ptr %203, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %245
  %248 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %248(ptr noundef nonnull %203) #13
  br label %249

249:                                              ; preds = %247, %245
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #15
  br label %252

250:                                              ; preds = %166, %181
  tail call fastcc void @get_vert2ob_distance(i32 noundef %54, ptr noundef %91, ptr noundef %87, ptr noundef %1, ptr noundef nonnull %16) #14
  br label %252

251:                                              ; preds = %154
  tail call fastcc void @get_vert2ob_distance(i32 noundef %54, ptr noundef %91, ptr noundef %87, ptr noundef %1, ptr noundef nonnull %16) #14
  br label %252

252:                                              ; preds = %150, %118, %251, %250, %249, %115
  %253 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 12
  %254 = load float, ptr %253, align 4, !tbaa !76
  %255 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 13
  %256 = load float, ptr %255, align 8, !tbaa !77
  %257 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 14
  %258 = load i16, ptr %257, align 4, !tbaa !78
  call fastcc void @do_map(ptr noundef %1, ptr noundef %87, i32 noundef %54, float noundef %254, float noundef %256, i16 noundef signext %258) #14
  %259 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 5
  %260 = load float, ptr %259, align 8, !tbaa !79
  %261 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 6
  %262 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %263 = load ptr, ptr %262, align 8, !tbaa !80
  %264 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  %265 = load ptr, ptr %264, align 8, !tbaa !35
  %266 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 7
  %267 = load i32, ptr %266, align 4, !tbaa !81
  %268 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  %269 = load i32, ptr %268, align 8, !tbaa !82
  %270 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 9
  %271 = load ptr, ptr %270, align 8, !tbaa !83
  %272 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 11
  call void @weightvg_do_mask(i32 noundef %54, ptr noundef %83, ptr noundef %84, ptr noundef %87, ptr noundef %1, ptr noundef %2, float noundef %260, ptr noundef nonnull %261, ptr noundef %263, ptr noundef %265, i32 noundef %267, i32 noundef %269, ptr noundef %271, ptr noundef nonnull %272) #13
  call void @weightvg_update_vg(ptr noundef nonnull %23, i32 noundef %20, ptr noundef %85, i32 noundef %54, ptr noundef %83, ptr noundef %84, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 0, float noundef 0.000000e+00) #13
  %273 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %273(ptr noundef %84) #13
  %274 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %274(ptr noundef %87) #13
  %275 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %275(ptr noundef %85) #13
  %276 = icmp eq ptr %83, null
  br i1 %276, label %279, label %277

277:                                              ; preds = %252
  %278 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %278(ptr noundef nonnull %83) #13
  br label %279

279:                                              ; preds = %277, %252
  %280 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %280(ptr noundef %91) #13
  br label %281

281:                                              ; preds = %22, %18, %14, %4, %10, %279, %59
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 2
  store i32 1, ptr %2, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 3
  store i32 1, ptr %3, align 4, !tbaa !63
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 14
  store i16 0, ptr %4, align 4, !tbaa !78
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 7
  store i32 1, ptr %6, align 4, !tbaa !81
  %7 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  store i32 0, ptr %7, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 13
  store float 1.000000e+00, ptr %8, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !85 {
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %1, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !87 {
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !88
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 1, %2 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !89 {
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #13
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.13) #13
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !82
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #13
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %20, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.13) #13
  br label %21

21:                                               ; preds = %19, %15, %11
  %22 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !82
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %4, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.13) #13
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !91 {
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #13
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 9
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !92 {
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #13
  tail call void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !93 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.14) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !94 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !96 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @get_ob2ob_distance(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !97 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3
  %5 = tail call fastcc float @len_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  ret float %5
}

; Function Attrs: optsize
declare ptr @CDDM_from_curve(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_vert2geom_distance(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !98 {
  %8 = alloca %struct.BVHTreeFromMesh, align 8
  %9 = alloca %struct.BVHTreeFromMesh, align 8
  %10 = alloca %struct.BVHTreeFromMesh, align 8
  %11 = alloca %struct.BVHTreeNearest, align 4
  %12 = alloca %struct.BVHTreeNearest, align 4
  %13 = alloca %struct.BVHTreeNearest, align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #15
  %15 = getelementptr inbounds i8, ptr %11, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %15, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #15
  %16 = getelementptr inbounds i8, ptr %12, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %16, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #15
  %17 = getelementptr inbounds i8, ptr %13, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %17, i8 0, i64 32, i1 false)
  %18 = icmp eq ptr %2, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %7
  %20 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %8, ptr noundef %5, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #13
  %21 = load ptr, ptr %8, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %107

25:                                               ; preds = %19, %7
  %26 = icmp eq ptr %3, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = call ptr @bvhtree_from_mesh_edges(ptr noundef nonnull %9, ptr noundef %5, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #13
  %29 = load ptr, ptr %9, align 8, !tbaa !99
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %107

33:                                               ; preds = %27, %25
  %34 = icmp eq ptr %4, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %33
  %36 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %10, ptr noundef %5, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #13
  %37 = load ptr, ptr %10, align 8, !tbaa !99
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %107

41:                                               ; preds = %35, %33
  store i32 -1, ptr %13, align 4, !tbaa !101
  store i32 -1, ptr %12, align 4, !tbaa !101
  store i32 -1, ptr %11, align 4, !tbaa !101
  %42 = icmp sgt i32 %0, 0
  br i1 %42, label %43, label %101

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 1
  %45 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 3
  %46 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %8, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 1
  %48 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 3
  %49 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  %50 = getelementptr inbounds %struct.BVHTreeNearest, ptr %13, i64 0, i32 1
  %51 = getelementptr inbounds %struct.BVHTreeNearest, ptr %13, i64 0, i32 3
  %52 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %10, i64 0, i32 1
  %53 = zext nneg i32 %0 to i64
  br label %54

54:                                               ; preds = %43, %98
  %55 = phi i64 [ 0, %43 ], [ %99, %98 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  %56 = getelementptr inbounds [3 x float], ptr %1, i64 %55
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %56) #14
  call void @BLI_space_transform_apply(ptr noundef %6, ptr noundef nonnull %14) #13
  br i1 %18, label %70, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %11, align 4, !tbaa !101
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %44) #14
  br label %62

62:                                               ; preds = %57, %60
  %63 = phi float [ %61, %60 ], [ 0x47EFFFFFE0000000, %57 ]
  store float %63, ptr %45, align 4, !tbaa !103
  %64 = load ptr, ptr %8, align 8, !tbaa !99
  %65 = load ptr, ptr %46, align 8, !tbaa !104
  %66 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %64, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef %65, ptr noundef nonnull %8) #13
  %67 = load float, ptr %45, align 4, !tbaa !103
  %68 = call float @sqrtf(float noundef %67) #13
  %69 = getelementptr inbounds float, ptr %2, i64 %55
  store float %68, ptr %69, align 4, !tbaa !54
  br label %70

70:                                               ; preds = %62, %54
  br i1 %26, label %84, label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %12, align 4, !tbaa !101
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %47) #14
  br label %76

76:                                               ; preds = %71, %74
  %77 = phi float [ %75, %74 ], [ 0x47EFFFFFE0000000, %71 ]
  store float %77, ptr %48, align 4, !tbaa !103
  %78 = load ptr, ptr %9, align 8, !tbaa !99
  %79 = load ptr, ptr %49, align 8, !tbaa !104
  %80 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %78, ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef %79, ptr noundef nonnull %9) #13
  %81 = load float, ptr %48, align 4, !tbaa !103
  %82 = call float @sqrtf(float noundef %81) #13
  %83 = getelementptr inbounds float, ptr %3, i64 %55
  store float %82, ptr %83, align 4, !tbaa !54
  br label %84

84:                                               ; preds = %76, %70
  br i1 %34, label %98, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %13, align 4, !tbaa !101
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %50) #14
  br label %90

90:                                               ; preds = %85, %88
  %91 = phi float [ %89, %88 ], [ 0x47EFFFFFE0000000, %85 ]
  store float %91, ptr %51, align 4, !tbaa !103
  %92 = load ptr, ptr %10, align 8, !tbaa !99
  %93 = load ptr, ptr %52, align 8, !tbaa !104
  %94 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %92, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef %93, ptr noundef nonnull %10) #13
  %95 = load float, ptr %51, align 4, !tbaa !103
  %96 = call float @sqrtf(float noundef %95) #13
  %97 = getelementptr inbounds float, ptr %4, i64 %55
  store float %96, ptr %97, align 4, !tbaa !54
  br label %98

98:                                               ; preds = %90, %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  %99 = add nuw nsw i64 %55, 1
  %100 = icmp eq i64 %99, %53
  br i1 %100, label %101, label %54, !llvm.loop !105

101:                                              ; preds = %98, %41
  br i1 %18, label %103, label %102

102:                                              ; preds = %101
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %8) #13
  br label %103

103:                                              ; preds = %102, %101
  br i1 %26, label %105, label %104

104:                                              ; preds = %103
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %9) #13
  br label %105

105:                                              ; preds = %104, %103
  br i1 %34, label %107, label %106

106:                                              ; preds = %105
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %10) #13
  br label %107

107:                                              ; preds = %105, %106, %39, %31, %23
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !106 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_vert2ob_distance(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !107 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47, i64 3
  %11 = zext i32 %0 to i64
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds [3 x float], ptr %1, i64 %14
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %15) #13
  %16 = call fastcc float @len_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #14
  %17 = getelementptr inbounds float, ptr %2, i64 %14
  store float %16, ptr %17, align 4, !tbaa !54
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %12, !llvm.loop !108

19:                                               ; preds = %12, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_map(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i16 noundef signext %5) unnamed_addr #0 !PGOFuncName !109 {
  %7 = fsub float %4, %3
  %8 = fdiv float 1.000000e+00, %7
  %9 = fcmp oeq float %4, %3
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %10
  %13 = zext i32 %2 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %13, %12 ], [ %16, %14 ]
  %16 = add nsw i64 %15, -1
  %17 = getelementptr inbounds float, ptr %1, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !54
  %19 = fcmp oge float %18, %4
  %20 = select i1 %19, float 1.000000e+00, float 0.000000e+00
  store float %20, ptr %17, align 4, !tbaa !54
  %21 = icmp eq i64 %16, 0
  br i1 %21, label %59, label %14, !llvm.loop !110

22:                                               ; preds = %6
  %23 = fcmp ogt float %4, %3
  %24 = icmp eq i32 %2, 0
  br i1 %23, label %28, label %25

25:                                               ; preds = %22
  br i1 %24, label %59, label %26

26:                                               ; preds = %25
  %27 = zext i32 %2 to i64
  br label %45

28:                                               ; preds = %22
  br i1 %24, label %59, label %29

29:                                               ; preds = %28
  %30 = zext i32 %2 to i64
  br label %31

31:                                               ; preds = %29, %42
  %32 = phi i64 [ %30, %29 ], [ %33, %42 ]
  %33 = add nsw i64 %32, -1
  %34 = getelementptr inbounds float, ptr %1, i64 %33
  %35 = load float, ptr %34, align 4, !tbaa !54
  %36 = fcmp ult float %35, %4
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = fcmp ugt float %35, %3
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = fsub float %35, %3
  %41 = fmul float %8, %40
  br label %42

42:                                               ; preds = %37, %31, %39
  %43 = phi float [ %41, %39 ], [ 1.000000e+00, %31 ], [ 0.000000e+00, %37 ]
  store float %43, ptr %34, align 4, !tbaa !54
  %44 = icmp eq i64 %33, 0
  br i1 %44, label %59, label %31, !llvm.loop !111

45:                                               ; preds = %26, %56
  %46 = phi i64 [ %27, %26 ], [ %47, %56 ]
  %47 = add nsw i64 %46, -1
  %48 = getelementptr inbounds float, ptr %1, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !54
  %50 = fcmp ugt float %49, %4
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = fcmp ult float %49, %3
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = fsub float %49, %3
  %55 = fmul float %8, %54
  br label %56

56:                                               ; preds = %51, %45, %53
  %57 = phi float [ %55, %53 ], [ 1.000000e+00, %45 ], [ 0.000000e+00, %51 ]
  store float %57, ptr %48, align 4, !tbaa !54
  %58 = icmp eq i64 %47, 0
  br i1 %58, label %59, label %45, !llvm.loop !112

59:                                               ; preds = %56, %42, %14, %25, %28, %10
  %60 = icmp ult i16 %5, 2
  br i1 %60, label %70, label %61

61:                                               ; preds = %59
  %62 = icmp eq i16 %5, 8
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  tail call void @weightvg_do_map(i32 noundef %2, ptr noundef %1, i16 noundef signext %5, ptr noundef null, ptr noundef null) #13
  br label %70

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %66 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef nonnull %65) #13
  %67 = tail call ptr @BLI_rng_new_srandom(i32 noundef %66) #13
  tail call void @weightvg_do_map(i32 noundef %2, ptr noundef %1, i16 noundef signext 8, ptr noundef null, ptr noundef %67) #13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call void @BLI_rng_free(ptr noundef nonnull %67) #13
  br label %70

70:                                               ; preds = %63, %64, %69, %59
  ret void
}

; Function Attrs: optsize
declare void @weightvg_do_mask(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @weightvg_update_vg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !113 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !114 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !54
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !115 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #14
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !116 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_edges(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !117 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_ghashutil_strhash_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @weightvg_do_map(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

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
!34 = !{!"MOD_weightvgproximity.c:copyData"}
!35 = !{!36, !38, i64 264}
!36 = !{!"WeightVGProximityModifierData", !37, i64 0, !39, i64 112, !41, i64 176, !41, i64 180, !38, i64 184, !42, i64 192, !39, i64 196, !41, i64 260, !38, i64 264, !38, i64 272, !41, i64 280, !39, i64 284, !42, i64 348, !42, i64 352, !43, i64 356, !43, i64 358}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"float", !39, i64 0}
!43 = !{!"short", !39, i64 0}
!44 = !{!"MOD_weightvgproximity.c:applyModifier"}
!45 = !{!46, !38, i64 1104}
!46 = !{!"DerivedMesh", !47, i64 0, !47, i64 200, !47, i64 400, !47, i64 600, !47, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!47 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!48 = !{i8 0, i8 2}
!49 = !{!36, !38, i64 184}
!50 = !{!38, !38, i64 0}
!51 = !{!41, !41, i64 0}
!52 = !{!53, !42, i64 4}
!53 = !{!"MDeformWeight", !41, i64 0, !42, i64 4}
!54 = !{!42, !42, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!46, !38, i64 1536}
!58 = distinct !{!58, !56}
!59 = !{!36, !41, i64 176}
!60 = distinct !{!60, !56, !61, !62}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!36, !41, i64 180}
!64 = !{!65, !38, i64 1296}
!65 = !{!"Object", !66, i64 0, !38, i64 120, !38, i64 128, !43, i64 136, !43, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !67, i64 312, !38, i64 360, !68, i64 368, !68, i64 384, !68, i64 400, !68, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !42, i64 616, !42, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !39, i64 1042, !39, i64 1043, !43, i64 1044, !39, i64 1046, !39, i64 1047, !42, i64 1048, !42, i64 1052, !68, i64 1056, !68, i64 1072, !68, i64 1088, !68, i64 1104, !42, i64 1120, !43, i64 1124, !43, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !43, i64 1162, !39, i64 1164, !68, i64 1176, !68, i64 1192, !68, i64 1208, !68, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !43, i64 1266, !42, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !69, i64 1304, !69, i64 1312, !41, i64 1320, !41, i64 1324, !68, i64 1328, !68, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !68, i64 1400, !38, i64 1416}
!66 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !43, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!67 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!68 = !{!"ListBase", !38, i64 0, !38, i64 8}
!69 = !{!"long", !39, i64 0}
!70 = !{!65, !43, i64 136}
!71 = !{!65, !38, i64 296}
!72 = !{!73, !38, i64 272}
!73 = !{!"Mesh", !66, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !47, i64 280, !47, i64 480, !47, i64 680, !47, i64 880, !47, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !39, i64 1308, !39, i64 1320, !39, i64 1332, !41, i64 1344, !43, i64 1348, !43, i64 1350, !42, i64 1352, !41, i64 1356, !39, i64 1360, !39, i64 1361, !39, i64 1362, !39, i64 1363, !39, i64 1364, !39, i64 1365, !43, i64 1366, !38, i64 1368}
!74 = distinct !{!74, !56}
!75 = !{!46, !38, i64 1680}
!76 = !{!36, !42, i64 348}
!77 = !{!36, !42, i64 352}
!78 = !{!36, !43, i64 356}
!79 = !{!36, !42, i64 192}
!80 = !{!36, !38, i64 96}
!81 = !{!36, !41, i64 260}
!82 = !{!36, !41, i64 280}
!83 = !{!36, !38, i64 272}
!84 = !{!"MOD_weightvgproximity.c:initData"}
!85 = !{!"MOD_weightvgproximity.c:requiredDataMask"}
!86 = !{!"MOD_weightvgproximity.c:freeData"}
!87 = !{!"MOD_weightvgproximity.c:isDisabled"}
!88 = !{!39, !39, i64 0}
!89 = !{!"MOD_weightvgproximity.c:updateDepgraph"}
!90 = !{!"MOD_weightvgproximity.c:dependsOnTime"}
!91 = !{!"MOD_weightvgproximity.c:foreachObjectLink"}
!92 = !{!"MOD_weightvgproximity.c:foreachIDLink"}
!93 = !{!"MOD_weightvgproximity.c:foreachTexLink"}
!94 = !{!"MOD_weightvgproximity.c:BLI_listbase_is_empty"}
!95 = !{!68, !38, i64 0}
!96 = !{!"MOD_weightvgproximity.c:copy_v3_v3"}
!97 = !{!"MOD_weightvgproximity.c:get_ob2ob_distance"}
!98 = !{!"MOD_weightvgproximity.c:get_vert2geom_distance"}
!99 = !{!100, !38, i64 0}
!100 = !{!"BVHTreeFromMesh", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !39, i64 49, !39, i64 50, !42, i64 52, !38, i64 56, !39, i64 64}
!101 = !{!102, !41, i64 0}
!102 = !{!"BVHTreeNearest", !41, i64 0, !39, i64 4, !39, i64 16, !42, i64 28, !41, i64 32}
!103 = !{!102, !42, i64 28}
!104 = !{!100, !38, i64 8}
!105 = distinct !{!105, !56}
!106 = !{!"MOD_weightvgproximity.c:min_ff"}
!107 = !{!"MOD_weightvgproximity.c:get_vert2ob_distance"}
!108 = distinct !{!108, !56}
!109 = !{!"MOD_weightvgproximity.c:do_map"}
!110 = distinct !{!110, !56}
!111 = distinct !{!111, !56}
!112 = distinct !{!112, !56}
!113 = !{!"MOD_weightvgproximity.c:len_v3v3"}
!114 = !{!"MOD_weightvgproximity.c:sub_v3_v3v3"}
!115 = !{!"MOD_weightvgproximity.c:len_v3"}
!116 = !{!"MOD_weightvgproximity.c:dot_v3v3"}
!117 = !{!"MOD_weightvgproximity.c:len_squared_v3v3"}
