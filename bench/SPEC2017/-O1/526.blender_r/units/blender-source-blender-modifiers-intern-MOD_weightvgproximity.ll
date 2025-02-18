; ModuleID = 'blender/source/blender/modifiers/intern/MOD_weightvgproximity.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_weightvgproximity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WeightVGProximityModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], float, float, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %4) #10
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.BVHTreeFromMesh, align 8
  %8 = alloca %struct.BVHTreeFromMesh, align 8
  %9 = alloca %struct.BVHTreeFromMesh, align 8
  %10 = alloca %struct.BVHTreeNearest, align 4
  %11 = alloca %struct.BVHTreeNearest, align 4
  %12 = alloca %struct.BVHTreeNearest, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca %struct.SpaceTransform, align 4
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = tail call i32 %16(ptr noundef %2) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %533, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %533, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %533, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 1
  %29 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %28) #10
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %533, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %2, i32 noundef 2, i32 noundef %17) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %533, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %36 = sext i32 %17 to i64
  %37 = shl nsw i64 %36, 2
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str) #10
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %40 = tail call ptr %39(i64 noundef %37, ptr noundef nonnull @.str.1) #10
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %42 = shl nsw i64 %36, 3
  %43 = tail call ptr %41(i64 noundef %42, ptr noundef nonnull @.str.2) #10
  %44 = icmp sgt i32 %17, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %34
  %46 = zext nneg i32 %17 to i64
  br label %47

47:                                               ; preds = %45, %62
  %48 = phi i64 [ 0, %45 ], [ %64, %62 ]
  %49 = phi i32 [ 0, %45 ], [ %63, %62 ]
  %50 = getelementptr inbounds %struct.MDeformVert, ptr %32, i64 %48
  %51 = tail call ptr @defvert_find_index(ptr noundef nonnull %50, i32 noundef %29) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = sext i32 %49 to i64
  %55 = getelementptr inbounds i32, ptr %38, i64 %54
  %56 = trunc i64 %48 to i32
  store i32 %56, ptr %55, align 4, !tbaa !50
  %57 = getelementptr inbounds %struct.MDeformWeight, ptr %51, i64 0, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !51
  %59 = getelementptr inbounds float, ptr %40, i64 %54
  store float %58, ptr %59, align 4, !tbaa !53
  %60 = add nsw i32 %49, 1
  %61 = getelementptr inbounds ptr, ptr %43, i64 %54
  store ptr %51, ptr %61, align 8, !tbaa !49
  br label %62

62:                                               ; preds = %53, %47
  %63 = phi i32 [ %60, %53 ], [ %49, %47 ]
  %64 = add nuw nsw i64 %48, 1
  %65 = icmp eq i64 %64, %46
  br i1 %65, label %66, label %47, !llvm.loop !54

66:                                               ; preds = %62, %34
  %67 = phi i32 [ 0, %34 ], [ %63, %62 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %70(ptr noundef %38) #10
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %71(ptr noundef %40) #10
  br label %530

72:                                               ; preds = %66
  %73 = icmp eq i32 %67, %17
  br i1 %73, label %86, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %76 = sext i32 %67 to i64
  %77 = shl nsw i64 %76, 2
  %78 = tail call ptr %75(i64 noundef %77, ptr noundef nonnull @.str.3) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %78, ptr align 4 %38, i64 %77, i1 false)
  %79 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %80 = tail call ptr %79(i64 noundef %77, ptr noundef nonnull @.str.4) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %80, ptr align 4 %40, i64 %77, i1 false)
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %82 = shl nsw i64 %76, 3
  %83 = tail call ptr %81(i64 noundef %82, ptr noundef nonnull @.str.5) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %83, ptr align 8 %43, i64 %82, i1 false)
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %84(ptr noundef %40) #10
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %85(ptr noundef %43) #10
  br label %86

86:                                               ; preds = %72, %74
  %87 = phi ptr [ %78, %74 ], [ null, %72 ]
  %88 = phi ptr [ %80, %74 ], [ %40, %72 ]
  %89 = phi ptr [ %83, %74 ], [ %43, %72 ]
  %90 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %91 = sext i32 %67 to i64
  %92 = shl nsw i64 %91, 2
  %93 = tail call ptr %90(i64 noundef %92, ptr noundef nonnull @.str.6) #10
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %94(ptr noundef %38) #10
  %95 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %96 = mul nsw i64 %91, 12
  %97 = tail call ptr %95(i64 noundef %96, ptr noundef nonnull @.str.7) #10
  br i1 %73, label %125, label %98

98:                                               ; preds = %86
  %99 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %100 = mul nsw i64 %36, 12
  %101 = tail call ptr %99(i64 noundef %100, ptr noundef nonnull @.str.8) #10
  %102 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %103 = load ptr, ptr %102, align 8, !tbaa !57
  tail call void %103(ptr noundef %2, ptr noundef %101) #10
  %104 = icmp sgt i32 %67, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = zext nneg i32 %67 to i64
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ 0, %105 ], [ %121, %107 ]
  %109 = getelementptr inbounds [3 x float], ptr %97, i64 %108
  %110 = getelementptr inbounds i32, ptr %87, i64 %108
  %111 = load i32, ptr %110, align 4, !tbaa !50
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x float], ptr %101, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !53
  store float %114, ptr %109, align 4, !tbaa !53
  %115 = getelementptr inbounds float, ptr %113, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !53
  %117 = getelementptr inbounds float, ptr %109, i64 1
  store float %116, ptr %117, align 4, !tbaa !53
  %118 = getelementptr inbounds float, ptr %113, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !53
  %120 = getelementptr inbounds float, ptr %109, i64 2
  store float %119, ptr %120, align 4, !tbaa !53
  %121 = add nuw nsw i64 %108, 1
  %122 = icmp eq i64 %121, %106
  br i1 %122, label %123, label %107, !llvm.loop !58

123:                                              ; preds = %107, %98
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %124(ptr noundef %101) #10
  br label %128

125:                                              ; preds = %86
  %126 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %127 = load ptr, ptr %126, align 8, !tbaa !57
  tail call void %127(ptr noundef %2, ptr noundef %97) #10
  br label %128

128:                                              ; preds = %125, %123
  %129 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !59
  switch i32 %130, label %446 [
    i32 1, label %131
    i32 2, label %159
  ]

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3
  %133 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3
  %134 = load float, ptr %133, align 4, !tbaa !53
  %135 = load float, ptr %132, align 4, !tbaa !53
  %136 = fsub float %134, %135
  %137 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !53
  %139 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !53
  %141 = fsub float %138, %140
  %142 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !53
  %144 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !53
  %146 = fsub float %143, %145
  %147 = fmul float %141, %141
  %148 = tail call float @llvm.fmuladd.f32(float %136, float %136, float %147)
  %149 = tail call float @llvm.fmuladd.f32(float %146, float %146, float %148)
  %150 = tail call float @sqrtf(float noundef %149) #10
  %151 = icmp sgt i32 %67, 0
  br i1 %151, label %152, label %446

152:                                              ; preds = %131
  %153 = zext nneg i32 %67 to i64
  br label %154

154:                                              ; preds = %152, %154
  %155 = phi i64 [ 0, %152 ], [ %157, %154 ]
  %156 = getelementptr inbounds float, ptr %93, i64 %155
  store float %150, ptr %156, align 4, !tbaa !53
  %157 = add nuw nsw i64 %155, 1
  %158 = icmp eq i64 %157, %153
  br i1 %158, label %446, label %154, !llvm.loop !60

159:                                              ; preds = %128
  %160 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !61
  %162 = and i32 %161, 1
  %163 = and i32 %161, 2
  %164 = and i32 %161, 4
  %165 = icmp eq i32 %162, 0
  %166 = icmp eq i32 %163, 0
  %167 = icmp eq i32 %164, 0
  %168 = and i32 %161, 7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %418, label %170

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 120
  %172 = load ptr, ptr %171, align 8, !tbaa !62
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 3
  %176 = load i16, ptr %175, align 8, !tbaa !67
  switch i16 %176, label %189 [
    i16 2, label %177
    i16 3, label %177
    i16 4, label %177
    i16 1, label %179
  ]

177:                                              ; preds = %174, %174, %174
  %178 = tail call ptr @CDDM_from_curve(ptr noundef nonnull %25) #10
  br label %189

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %181 = load ptr, ptr %180, align 8, !tbaa !68
  %182 = getelementptr inbounds %struct.Mesh, ptr %181, i64 0, i32 20
  %183 = load ptr, ptr %182, align 8, !tbaa !69
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %179
  %186 = tail call ptr @CDDM_from_editbmesh(ptr noundef nonnull %183, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %189

187:                                              ; preds = %179
  %188 = tail call ptr @CDDM_from_mesh(ptr noundef %181) #10
  br label %189

189:                                              ; preds = %177, %174, %187, %185, %170
  %190 = phi ptr [ %172, %170 ], [ %178, %177 ], [ null, %174 ], [ %186, %185 ], [ %188, %187 ]
  %191 = icmp eq ptr %190, null
  br i1 %191, label %390, label %192

192:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #10
  br i1 %165, label %196, label %193

193:                                              ; preds = %192
  %194 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %195 = tail call ptr %194(i64 noundef %92, ptr noundef nonnull @.str.9) #10
  br label %196

196:                                              ; preds = %192, %193
  %197 = phi ptr [ %195, %193 ], [ null, %192 ]
  br i1 %166, label %201, label %198

198:                                              ; preds = %196
  %199 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %200 = tail call ptr %199(i64 noundef %92, ptr noundef nonnull @.str.10) #10
  br label %201

201:                                              ; preds = %196, %198
  %202 = phi ptr [ %200, %198 ], [ null, %196 ]
  br i1 %167, label %206, label %203

203:                                              ; preds = %201
  %204 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %205 = tail call ptr %204(i64 noundef %92, ptr noundef nonnull @.str.11) #10
  br label %206

206:                                              ; preds = %201, %203
  %207 = phi ptr [ %205, %203 ], [ null, %201 ]
  %208 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %209 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %14, ptr noundef nonnull %208, ptr noundef nonnull %209) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %10, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %11, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %12, i8 0, i64 36, i1 false)
  %210 = icmp eq ptr %197, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %206
  %212 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %7, ptr noundef nonnull %190, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #10
  %213 = load ptr, ptr %7, align 8, !tbaa !71
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %345

217:                                              ; preds = %211, %206
  %218 = icmp eq ptr %202, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %217
  %220 = call ptr @bvhtree_from_mesh_edges(ptr noundef nonnull %8, ptr noundef nonnull %190, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #10
  %221 = load ptr, ptr %8, align 8, !tbaa !71
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %345

225:                                              ; preds = %219, %217
  %226 = icmp eq ptr %207, null
  br i1 %226, label %233, label %227

227:                                              ; preds = %225
  %228 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %9, ptr noundef nonnull %190, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #10
  %229 = load ptr, ptr %9, align 8, !tbaa !71
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %345

233:                                              ; preds = %227, %225
  store i32 -1, ptr %12, align 4, !tbaa !73
  store i32 -1, ptr %11, align 4, !tbaa !73
  store i32 -1, ptr %10, align 4, !tbaa !73
  %234 = icmp sgt i32 %67, 0
  br i1 %234, label %235, label %339

235:                                              ; preds = %233
  %236 = getelementptr inbounds float, ptr %13, i64 1
  %237 = getelementptr inbounds float, ptr %13, i64 2
  %238 = getelementptr inbounds %struct.BVHTreeNearest, ptr %10, i64 0, i32 1
  %239 = getelementptr inbounds %struct.BVHTreeNearest, ptr %10, i64 0, i32 1, i64 1
  %240 = getelementptr inbounds %struct.BVHTreeNearest, ptr %10, i64 0, i32 1, i64 2
  %241 = getelementptr inbounds %struct.BVHTreeNearest, ptr %10, i64 0, i32 3
  %242 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %7, i64 0, i32 1
  %243 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 1
  %244 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 1, i64 1
  %245 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 1, i64 2
  %246 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 3
  %247 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %8, i64 0, i32 1
  %248 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 1
  %249 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 1, i64 1
  %250 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 1, i64 2
  %251 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 3
  %252 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  %253 = zext nneg i32 %67 to i64
  br label %254

254:                                              ; preds = %336, %235
  %255 = phi i64 [ 0, %235 ], [ %337, %336 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %256 = getelementptr inbounds [3 x float], ptr %97, i64 %255
  %257 = load float, ptr %256, align 4, !tbaa !53
  store float %257, ptr %13, align 4, !tbaa !53
  %258 = getelementptr inbounds float, ptr %256, i64 1
  %259 = load float, ptr %258, align 4, !tbaa !53
  store float %259, ptr %236, align 4, !tbaa !53
  %260 = getelementptr inbounds float, ptr %256, i64 2
  %261 = load float, ptr %260, align 4, !tbaa !53
  store float %261, ptr %237, align 4, !tbaa !53
  call void @BLI_space_transform_apply(ptr noundef nonnull %14, ptr noundef nonnull %13) #10
  br i1 %210, label %286, label %262

262:                                              ; preds = %254
  %263 = load i32, ptr %10, align 4, !tbaa !73
  %264 = icmp eq i32 %263, -1
  br i1 %264, label %278, label %265

265:                                              ; preds = %262
  %266 = load float, ptr %238, align 4, !tbaa !53
  %267 = load float, ptr %13, align 4, !tbaa !53
  %268 = fsub float %266, %267
  %269 = load float, ptr %239, align 4, !tbaa !53
  %270 = load float, ptr %236, align 4, !tbaa !53
  %271 = fsub float %269, %270
  %272 = load float, ptr %240, align 4, !tbaa !53
  %273 = load float, ptr %237, align 4, !tbaa !53
  %274 = fsub float %272, %273
  %275 = fmul float %271, %271
  %276 = call float @llvm.fmuladd.f32(float %268, float %268, float %275)
  %277 = call float @llvm.fmuladd.f32(float %274, float %274, float %276)
  br label %278

278:                                              ; preds = %265, %262
  %279 = phi float [ %277, %265 ], [ 0x47EFFFFFE0000000, %262 ]
  store float %279, ptr %241, align 4, !tbaa !75
  %280 = load ptr, ptr %7, align 8, !tbaa !71
  %281 = load ptr, ptr %242, align 8, !tbaa !76
  %282 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %280, ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef %281, ptr noundef nonnull %7) #10
  %283 = load float, ptr %241, align 4, !tbaa !75
  %284 = call float @sqrtf(float noundef %283) #10
  %285 = getelementptr inbounds float, ptr %197, i64 %255
  store float %284, ptr %285, align 4, !tbaa !53
  br label %286

286:                                              ; preds = %278, %254
  br i1 %218, label %311, label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %11, align 4, !tbaa !73
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %303, label %290

290:                                              ; preds = %287
  %291 = load float, ptr %243, align 4, !tbaa !53
  %292 = load float, ptr %13, align 4, !tbaa !53
  %293 = fsub float %291, %292
  %294 = load float, ptr %244, align 4, !tbaa !53
  %295 = load float, ptr %236, align 4, !tbaa !53
  %296 = fsub float %294, %295
  %297 = load float, ptr %245, align 4, !tbaa !53
  %298 = load float, ptr %237, align 4, !tbaa !53
  %299 = fsub float %297, %298
  %300 = fmul float %296, %296
  %301 = call float @llvm.fmuladd.f32(float %293, float %293, float %300)
  %302 = call float @llvm.fmuladd.f32(float %299, float %299, float %301)
  br label %303

303:                                              ; preds = %290, %287
  %304 = phi float [ %302, %290 ], [ 0x47EFFFFFE0000000, %287 ]
  store float %304, ptr %246, align 4, !tbaa !75
  %305 = load ptr, ptr %8, align 8, !tbaa !71
  %306 = load ptr, ptr %247, align 8, !tbaa !76
  %307 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %305, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef %306, ptr noundef nonnull %8) #10
  %308 = load float, ptr %246, align 4, !tbaa !75
  %309 = call float @sqrtf(float noundef %308) #10
  %310 = getelementptr inbounds float, ptr %202, i64 %255
  store float %309, ptr %310, align 4, !tbaa !53
  br label %311

311:                                              ; preds = %303, %286
  br i1 %226, label %336, label %312

312:                                              ; preds = %311
  %313 = load i32, ptr %12, align 4, !tbaa !73
  %314 = icmp eq i32 %313, -1
  br i1 %314, label %328, label %315

315:                                              ; preds = %312
  %316 = load float, ptr %248, align 4, !tbaa !53
  %317 = load float, ptr %13, align 4, !tbaa !53
  %318 = fsub float %316, %317
  %319 = load float, ptr %249, align 4, !tbaa !53
  %320 = load float, ptr %236, align 4, !tbaa !53
  %321 = fsub float %319, %320
  %322 = load float, ptr %250, align 4, !tbaa !53
  %323 = load float, ptr %237, align 4, !tbaa !53
  %324 = fsub float %322, %323
  %325 = fmul float %321, %321
  %326 = call float @llvm.fmuladd.f32(float %318, float %318, float %325)
  %327 = call float @llvm.fmuladd.f32(float %324, float %324, float %326)
  br label %328

328:                                              ; preds = %315, %312
  %329 = phi float [ %327, %315 ], [ 0x47EFFFFFE0000000, %312 ]
  store float %329, ptr %251, align 4, !tbaa !75
  %330 = load ptr, ptr %9, align 8, !tbaa !71
  %331 = load ptr, ptr %252, align 8, !tbaa !76
  %332 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %330, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef %331, ptr noundef nonnull %9) #10
  %333 = load float, ptr %251, align 4, !tbaa !75
  %334 = call float @sqrtf(float noundef %333) #10
  %335 = getelementptr inbounds float, ptr %207, i64 %255
  store float %334, ptr %335, align 4, !tbaa !53
  br label %336

336:                                              ; preds = %328, %311
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  %337 = add nuw nsw i64 %255, 1
  %338 = icmp eq i64 %337, %253
  br i1 %338, label %339, label %254, !llvm.loop !77

339:                                              ; preds = %336, %233
  br i1 %210, label %341, label %340

340:                                              ; preds = %339
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %7) #10
  br label %341

341:                                              ; preds = %340, %339
  br i1 %218, label %343, label %342

342:                                              ; preds = %341
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %8) #10
  br label %343

343:                                              ; preds = %342, %341
  br i1 %226, label %345, label %344

344:                                              ; preds = %343
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %9) #10
  br label %345

345:                                              ; preds = %215, %223, %231, %343, %344
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #10
  %346 = icmp sgt i32 %67, 0
  br i1 %346, label %347, label %374

347:                                              ; preds = %345
  %348 = icmp eq ptr %202, null
  %349 = icmp eq ptr %207, null
  %350 = zext nneg i32 %67 to i64
  br label %351

351:                                              ; preds = %347, %371
  %352 = phi i64 [ 0, %347 ], [ %372, %371 ]
  br i1 %210, label %356, label %353

353:                                              ; preds = %351
  %354 = getelementptr inbounds float, ptr %197, i64 %352
  %355 = load float, ptr %354, align 4, !tbaa !53
  br label %356

356:                                              ; preds = %351, %353
  %357 = phi float [ %355, %353 ], [ 0x47EFFFFFE0000000, %351 ]
  %358 = getelementptr inbounds float, ptr %93, i64 %352
  store float %357, ptr %358, align 4, !tbaa !53
  br i1 %348, label %364, label %359

359:                                              ; preds = %356
  %360 = getelementptr inbounds float, ptr %202, i64 %352
  %361 = load float, ptr %360, align 4, !tbaa !53
  %362 = fcmp olt float %361, %357
  %363 = select i1 %362, float %361, float %357
  store float %363, ptr %358, align 4, !tbaa !53
  br label %364

364:                                              ; preds = %359, %356
  br i1 %349, label %371, label %365

365:                                              ; preds = %364
  %366 = getelementptr inbounds float, ptr %207, i64 %352
  %367 = load float, ptr %366, align 4, !tbaa !53
  %368 = load float, ptr %358, align 4, !tbaa !53
  %369 = fcmp olt float %367, %368
  %370 = select i1 %369, float %367, float %368
  store float %370, ptr %358, align 4, !tbaa !53
  br label %371

371:                                              ; preds = %364, %365
  %372 = add nuw nsw i64 %352, 1
  %373 = icmp eq i64 %372, %350
  br i1 %373, label %374, label %351, !llvm.loop !78

374:                                              ; preds = %371, %345
  br i1 %173, label %375, label %378

375:                                              ; preds = %374
  %376 = getelementptr inbounds %struct.DerivedMesh, ptr %190, i64 0, i32 95
  %377 = load ptr, ptr %376, align 8, !tbaa !79
  call void %377(ptr noundef nonnull %190) #10
  br label %378

378:                                              ; preds = %375, %374
  br i1 %210, label %381, label %379

379:                                              ; preds = %378
  %380 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %380(ptr noundef nonnull %197) #10
  br label %381

381:                                              ; preds = %379, %378
  %382 = icmp eq ptr %202, null
  br i1 %382, label %385, label %383

383:                                              ; preds = %381
  %384 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %384(ptr noundef nonnull %202) #10
  br label %385

385:                                              ; preds = %383, %381
  %386 = icmp eq ptr %207, null
  br i1 %386, label %389, label %387

387:                                              ; preds = %385
  %388 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %388(ptr noundef nonnull %207) #10
  br label %389

389:                                              ; preds = %387, %385
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #10
  br label %446

390:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %391 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %392 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3
  %393 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3, i64 1
  %394 = getelementptr inbounds float, ptr %6, i64 1
  %395 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3, i64 2
  %396 = getelementptr inbounds float, ptr %6, i64 2
  %397 = zext i32 %67 to i64
  br label %398

398:                                              ; preds = %398, %390
  %399 = phi i64 [ %397, %390 ], [ %400, %398 ]
  %400 = add nsw i64 %399, -1
  %401 = getelementptr inbounds [3 x float], ptr %97, i64 %400
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %391, ptr noundef %401) #10
  %402 = load float, ptr %392, align 4, !tbaa !53
  %403 = load float, ptr %6, align 4, !tbaa !53
  %404 = fsub float %402, %403
  %405 = load float, ptr %393, align 4, !tbaa !53
  %406 = load float, ptr %394, align 4, !tbaa !53
  %407 = fsub float %405, %406
  %408 = load float, ptr %395, align 4, !tbaa !53
  %409 = load float, ptr %396, align 4, !tbaa !53
  %410 = fsub float %408, %409
  %411 = fmul float %407, %407
  %412 = call float @llvm.fmuladd.f32(float %404, float %404, float %411)
  %413 = call float @llvm.fmuladd.f32(float %410, float %410, float %412)
  %414 = call float @sqrtf(float noundef %413) #10
  %415 = getelementptr inbounds float, ptr %93, i64 %400
  store float %414, ptr %415, align 4, !tbaa !53
  %416 = icmp eq i64 %400, 0
  br i1 %416, label %417, label %398, !llvm.loop !80

417:                                              ; preds = %398
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %446

418:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %419 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %420 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3
  %421 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3, i64 1
  %422 = getelementptr inbounds float, ptr %5, i64 1
  %423 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47, i64 3, i64 2
  %424 = getelementptr inbounds float, ptr %5, i64 2
  %425 = zext i32 %67 to i64
  br label %426

426:                                              ; preds = %426, %418
  %427 = phi i64 [ %425, %418 ], [ %428, %426 ]
  %428 = add nsw i64 %427, -1
  %429 = getelementptr inbounds [3 x float], ptr %97, i64 %428
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %419, ptr noundef %429) #10
  %430 = load float, ptr %420, align 4, !tbaa !53
  %431 = load float, ptr %5, align 4, !tbaa !53
  %432 = fsub float %430, %431
  %433 = load float, ptr %421, align 4, !tbaa !53
  %434 = load float, ptr %422, align 4, !tbaa !53
  %435 = fsub float %433, %434
  %436 = load float, ptr %423, align 4, !tbaa !53
  %437 = load float, ptr %424, align 4, !tbaa !53
  %438 = fsub float %436, %437
  %439 = fmul float %435, %435
  %440 = call float @llvm.fmuladd.f32(float %432, float %432, float %439)
  %441 = call float @llvm.fmuladd.f32(float %438, float %438, float %440)
  %442 = call float @sqrtf(float noundef %441) #10
  %443 = getelementptr inbounds float, ptr %93, i64 %428
  store float %442, ptr %443, align 4, !tbaa !53
  %444 = icmp eq i64 %428, 0
  br i1 %444, label %445, label %426, !llvm.loop !80

445:                                              ; preds = %426
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  br label %446

446:                                              ; preds = %154, %131, %445, %417, %389, %128
  %447 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 12
  %448 = load float, ptr %447, align 4, !tbaa !81
  %449 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 13
  %450 = load float, ptr %449, align 8, !tbaa !82
  %451 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 14
  %452 = load i16, ptr %451, align 4, !tbaa !83
  %453 = fsub float %450, %448
  %454 = fdiv float 1.000000e+00, %453
  %455 = fcmp oeq float %450, %448
  br i1 %455, label %456, label %465

456:                                              ; preds = %446, %456
  %457 = phi i32 [ %458, %456 ], [ %67, %446 ]
  %458 = add i32 %457, -1
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds float, ptr %93, i64 %459
  %461 = load float, ptr %460, align 4, !tbaa !53
  %462 = fcmp oge float %461, %450
  %463 = select i1 %462, float 1.000000e+00, float 0.000000e+00
  store float %463, ptr %460, align 4, !tbaa !53
  %464 = icmp eq i32 %458, 0
  br i1 %464, label %497, label %456, !llvm.loop !84

465:                                              ; preds = %446
  %466 = fcmp ogt float %450, %448
  br i1 %466, label %467, label %482

467:                                              ; preds = %465, %479
  %468 = phi i32 [ %469, %479 ], [ %67, %465 ]
  %469 = add i32 %468, -1
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds float, ptr %93, i64 %470
  %472 = load float, ptr %471, align 4, !tbaa !53
  %473 = fcmp ult float %472, %450
  br i1 %473, label %474, label %479

474:                                              ; preds = %467
  %475 = fcmp ugt float %472, %448
  br i1 %475, label %476, label %479

476:                                              ; preds = %474
  %477 = fsub float %472, %448
  %478 = fmul float %454, %477
  br label %479

479:                                              ; preds = %474, %467, %476
  %480 = phi float [ %478, %476 ], [ 1.000000e+00, %467 ], [ 0.000000e+00, %474 ]
  store float %480, ptr %471, align 4, !tbaa !53
  %481 = icmp eq i32 %469, 0
  br i1 %481, label %497, label %467, !llvm.loop !85

482:                                              ; preds = %465, %494
  %483 = phi i32 [ %484, %494 ], [ %67, %465 ]
  %484 = add i32 %483, -1
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds float, ptr %93, i64 %485
  %487 = load float, ptr %486, align 4, !tbaa !53
  %488 = fcmp ugt float %487, %450
  br i1 %488, label %489, label %494

489:                                              ; preds = %482
  %490 = fcmp ult float %487, %448
  br i1 %490, label %491, label %494

491:                                              ; preds = %489
  %492 = fsub float %487, %448
  %493 = fmul float %454, %492
  br label %494

494:                                              ; preds = %489, %482, %491
  %495 = phi float [ %493, %491 ], [ 1.000000e+00, %482 ], [ 0.000000e+00, %489 ]
  store float %495, ptr %486, align 4, !tbaa !53
  %496 = icmp eq i32 %484, 0
  br i1 %496, label %497, label %482, !llvm.loop !86

497:                                              ; preds = %494, %479, %456
  %498 = icmp ult i16 %452, 2
  br i1 %498, label %509, label %499

499:                                              ; preds = %497
  %500 = icmp eq i16 %452, 8
  br i1 %500, label %501, label %505

501:                                              ; preds = %499
  %502 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %503 = call i32 @BLI_ghashutil_strhash_p(ptr noundef nonnull %502) #10
  %504 = call ptr @BLI_rng_new_srandom(i32 noundef %503) #10
  br label %505

505:                                              ; preds = %501, %499
  %506 = phi ptr [ %504, %501 ], [ null, %499 ]
  call void @weightvg_do_map(i32 noundef %67, ptr noundef %93, i16 noundef signext %452, ptr noundef null, ptr noundef %506) #10
  %507 = icmp eq ptr %506, null
  br i1 %507, label %509, label %508

508:                                              ; preds = %505
  call void @BLI_rng_free(ptr noundef nonnull %506) #10
  br label %509

509:                                              ; preds = %497, %505, %508
  %510 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 5
  %511 = load float, ptr %510, align 8, !tbaa !87
  %512 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 6
  %513 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %514 = load ptr, ptr %513, align 8, !tbaa !88
  %515 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  %516 = load ptr, ptr %515, align 8, !tbaa !34
  %517 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 7
  %518 = load i32, ptr %517, align 4, !tbaa !89
  %519 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  %520 = load i32, ptr %519, align 8, !tbaa !90
  %521 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 9
  %522 = load ptr, ptr %521, align 8, !tbaa !91
  %523 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 11
  call void @weightvg_do_mask(i32 noundef %67, ptr noundef %87, ptr noundef %88, ptr noundef %93, ptr noundef %1, ptr noundef %2, float noundef %511, ptr noundef nonnull %512, ptr noundef %514, ptr noundef %516, i32 noundef %518, i32 noundef %520, ptr noundef %522, ptr noundef nonnull %523) #10
  call void @weightvg_update_vg(ptr noundef nonnull %32, i32 noundef %29, ptr noundef %89, i32 noundef %67, ptr noundef %87, ptr noundef %88, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 0, float noundef 0.000000e+00) #10
  %524 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %524(ptr noundef %88) #10
  %525 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %525(ptr noundef %93) #10
  %526 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %526(ptr noundef %89) #10
  %527 = icmp eq ptr %87, null
  br i1 %527, label %530, label %528

528:                                              ; preds = %509
  %529 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %529(ptr noundef nonnull %87) #10
  br label %530

530:                                              ; preds = %509, %528, %69
  %531 = phi ptr [ %43, %69 ], [ %97, %528 ], [ %97, %509 ]
  %532 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %532(ptr noundef %531) #10
  br label %533

533:                                              ; preds = %530, %31, %27, %23, %4, %19
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 2
  store i32 1, ptr %2, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 3
  store i32 1, ptr %3, align 4, !tbaa !61
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 14
  store i16 0, ptr %4, align 4, !tbaa !83
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 7
  store i32 1, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  store i32 0, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 13
  store float 1.000000e+00, ptr %8, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %1, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !90
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !92
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 1, %2 ]
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.13) #10
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !90
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %20, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.13) #10
  br label %21

21:                                               ; preds = %19, %15, %11
  %22 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !90
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %4, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.13) #10
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #10
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 9
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 8
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #10
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %0, i64 0, i32 9
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.14) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @id_us_plus(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @CDDM_from_curve(ptr noundef) local_unnamed_addr #4

declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #4

declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @weightvg_do_mask(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @weightvg_update_vg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @bvhtree_from_mesh_edges(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #4

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #4

declare i32 @BLI_ghashutil_strhash_p(ptr noundef) local_unnamed_addr #4

declare void @weightvg_do_map(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #4

declare void @id_us_min(ptr noundef) local_unnamed_addr #4

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

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
!34 = !{!35, !37, i64 264}
!35 = !{!"WeightVGProximityModifierData", !36, i64 0, !38, i64 112, !40, i64 176, !40, i64 180, !37, i64 184, !41, i64 192, !38, i64 196, !40, i64 260, !37, i64 264, !37, i64 272, !40, i64 280, !38, i64 284, !41, i64 348, !41, i64 352, !42, i64 356, !42, i64 358}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!44, !37, i64 1104}
!44 = !{!"DerivedMesh", !45, i64 0, !45, i64 200, !45, i64 400, !45, i64 600, !45, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!45 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!46 = !{!47, !37, i64 0}
!47 = !{!"ListBase", !37, i64 0, !37, i64 8}
!48 = !{!35, !37, i64 184}
!49 = !{!37, !37, i64 0}
!50 = !{!40, !40, i64 0}
!51 = !{!52, !41, i64 4}
!52 = !{!"MDeformWeight", !40, i64 0, !41, i64 4}
!53 = !{!41, !41, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!44, !37, i64 1536}
!58 = distinct !{!58, !55, !56}
!59 = !{!35, !40, i64 176}
!60 = distinct !{!60, !55, !56}
!61 = !{!35, !40, i64 180}
!62 = !{!63, !37, i64 1296}
!63 = !{!"Object", !64, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !65, i64 312, !37, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !38, i64 1042, !38, i64 1043, !42, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !42, i64 1162, !38, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !42, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !66, i64 1304, !66, i64 1312, !40, i64 1320, !40, i64 1324, !47, i64 1328, !47, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !47, i64 1400, !37, i64 1416}
!64 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!65 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!66 = !{!"long", !38, i64 0}
!67 = !{!63, !42, i64 136}
!68 = !{!63, !37, i64 296}
!69 = !{!70, !37, i64 272}
!70 = !{!"Mesh", !64, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !45, i64 280, !45, i64 480, !45, i64 680, !45, i64 880, !45, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !40, i64 1344, !42, i64 1348, !42, i64 1350, !41, i64 1352, !40, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !42, i64 1366, !37, i64 1368}
!71 = !{!72, !37, i64 0}
!72 = !{!"BVHTreeFromMesh", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !38, i64 49, !38, i64 50, !41, i64 52, !37, i64 56, !38, i64 64}
!73 = !{!74, !40, i64 0}
!74 = !{!"BVHTreeNearest", !40, i64 0, !38, i64 4, !38, i64 16, !41, i64 28, !40, i64 32}
!75 = !{!74, !41, i64 28}
!76 = !{!72, !37, i64 8}
!77 = distinct !{!77, !55, !56}
!78 = distinct !{!78, !55, !56}
!79 = !{!44, !37, i64 1680}
!80 = distinct !{!80, !55, !56}
!81 = !{!35, !41, i64 348}
!82 = !{!35, !41, i64 352}
!83 = !{!35, !42, i64 356}
!84 = distinct !{!84, !55, !56}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = !{!35, !41, i64 192}
!88 = !{!35, !37, i64 96}
!89 = !{!35, !40, i64 260}
!90 = !{!35, !40, i64 280}
!91 = !{!35, !37, i64 272}
!92 = !{!38, !38, i64 0}
