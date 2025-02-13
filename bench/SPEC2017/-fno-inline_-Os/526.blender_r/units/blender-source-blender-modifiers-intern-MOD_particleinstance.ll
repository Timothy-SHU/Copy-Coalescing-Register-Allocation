; ModuleID = 'blender/source/blender/modifiers/intern/MOD_particleinstance.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_particleinstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ParticleInstanceModifierData = type { %struct.ModifierData, ptr, i16, i16, i16, i16, float, float }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }

@modifierType_ParticleInstance = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"ParticleInstance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ParticleInstanceModifierData\00\00\00\00", i32 136, i32 2, i32 29, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"particle size array\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Particle Instance Modifier\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @applyModifier(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = alloca %struct.ParticleSimulationData, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca %struct.ParticleKey, align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  %13 = load i16, ptr %12, align 4, !tbaa !36
  %14 = srem i16 %13, 3
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %18 = icmp sgt i16 %13, 2
  %19 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store ptr null, ptr %19, align 8, !tbaa !51
  br label %363

23:                                               ; preds = %4
  %24 = icmp eq ptr %20, null
  br i1 %24, label %363, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 109
  %27 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !52
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, -1
  %31 = tail call ptr @BLI_findlink(ptr noundef nonnull %26, i32 noundef %30) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %363, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 26
  %35 = load i32, ptr %34, align 8, !tbaa !53
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %363, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 3
  %39 = load i16, ptr %38, align 2, !tbaa !55
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  %42 = select i1 %41, i32 0, i32 %35
  %43 = and i16 %39, 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = zext i32 %35 to i64
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 28
  %48 = load i32, ptr %47, align 8, !tbaa !56
  %49 = add nsw i32 %48, %42
  %50 = select i1 %41, i64 %46, i64 0
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i64 [ %50, %45 ], [ 0, %37 ]
  %53 = phi i32 [ %49, %45 ], [ %42, %37 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %363, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  store ptr %57, ptr %5, align 8, !tbaa !58
  %58 = load ptr, ptr %19, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !60
  %60 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 2
  store ptr %31, ptr %60, align 8, !tbaa !61
  %61 = tail call ptr @psys_get_modifier(ptr noundef %58, ptr noundef nonnull %31) #13
  %62 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !62
  %63 = load i16, ptr %38, align 2, !tbaa !55
  %64 = and i16 %63, 128
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %111, label %66

66:                                               ; preds = %55
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %68 = sext i32 %53 to i64
  %69 = shl nsw i64 %68, 2
  %70 = tail call ptr %67(i64 noundef %69, ptr noundef nonnull @.str) #13
  %71 = load i16, ptr %38, align 2, !tbaa !55
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %66
  %75 = load i32, ptr %34, align 8, !tbaa !53
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !64
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %87, %80 ], [ %79, %77 ]
  %82 = phi ptr [ %88, %80 ], [ %70, %77 ]
  %83 = phi i32 [ %86, %80 ], [ 0, %77 ]
  %84 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 0, i32 13
  %85 = load float, ptr %84, align 4, !tbaa !65
  store float %85, ptr %82, align 4, !tbaa !68
  %86 = add nuw nsw i32 %83, 1
  %87 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 1
  %88 = getelementptr inbounds float, ptr %82, i64 1
  %89 = icmp eq i32 %86, %75
  br i1 %89, label %90, label %80, !llvm.loop !69

90:                                               ; preds = %80, %74, %66
  %91 = phi ptr [ %70, %66 ], [ %70, %74 ], [ %88, %80 ]
  %92 = and i16 %71, 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 28
  %96 = load i32, ptr %95, align 8, !tbaa !56
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !71
  br label %101

101:                                              ; preds = %98, %101
  %102 = phi ptr [ %107, %101 ], [ %100, %98 ]
  %103 = phi ptr [ %108, %101 ], [ %91, %98 ]
  %104 = phi i32 [ %106, %101 ], [ 0, %98 ]
  %105 = tail call float @psys_get_child_size(ptr noundef nonnull %31, ptr noundef %102, float noundef 0.000000e+00, ptr noundef null) #13
  store float %105, ptr %103, align 4, !tbaa !68
  %106 = add nuw nsw i32 %104, 1
  %107 = getelementptr inbounds %struct.ChildParticle, ptr %102, i64 1
  %108 = getelementptr inbounds float, ptr %103, i64 1
  %109 = load i32, ptr %95, align 8, !tbaa !56
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %101, label %111, !llvm.loop !72

111:                                              ; preds = %101, %94, %90, %55
  %112 = phi ptr [ null, %55 ], [ %70, %90 ], [ %70, %94 ], [ %70, %101 ]
  %113 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %114 = load ptr, ptr %113, align 8, !tbaa !73
  %115 = tail call i32 %114(ptr noundef %2) #13
  %116 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %117 = load ptr, ptr %116, align 8, !tbaa !76
  %118 = tail call i32 %117(ptr noundef %2) #13
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %120 = load ptr, ptr %119, align 8, !tbaa !77
  %121 = tail call i32 %120(ptr noundef %2) #13
  %122 = icmp sgt i32 %53, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %111, %123
  %124 = phi i32 [ %135, %123 ], [ 0, %111 ]
  %125 = phi i32 [ %133, %123 ], [ 0, %111 ]
  %126 = phi i32 [ %131, %123 ], [ 0, %111 ]
  %127 = phi i32 [ %136, %123 ], [ 0, %111 ]
  %128 = tail call fastcc i32 @particle_skip(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %127) #15, !range !78
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 %121, i32 0
  %131 = add nsw i32 %130, %126
  %132 = select i1 %129, i32 %118, i32 0
  %133 = add nsw i32 %132, %125
  %134 = select i1 %129, i32 %115, i32 0
  %135 = add nsw i32 %134, %124
  %136 = add nuw nsw i32 %127, 1
  %137 = icmp eq i32 %136, %53
  br i1 %137, label %138, label %123, !llvm.loop !79

138:                                              ; preds = %123, %111
  %139 = phi i32 [ 0, %111 ], [ %131, %123 ]
  %140 = phi i32 [ 0, %111 ], [ %133, %123 ]
  %141 = phi i32 [ 0, %111 ], [ %135, %123 ]
  %142 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %5) #13
  %143 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 15
  store ptr %142, ptr %143, align 8, !tbaa !80
  %144 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 25
  %145 = load i32, ptr %144, align 4, !tbaa !81
  %146 = and i32 %145, 1536
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 40
  %150 = load ptr, ptr %149, align 8, !tbaa !82
  %151 = getelementptr inbounds %struct.PointCache, ptr %150, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !83
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %148, %138
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %156 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x46293E5940000000, ptr %156, align 8, !tbaa !68
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %8, align 8, !tbaa !68
  %157 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %157, align 8, !tbaa !68
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %9, align 8, !tbaa !68
  %158 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 75
  %159 = load ptr, ptr %158, align 8, !tbaa !85
  call void %159(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %160 = sext i16 %14 to i64
  %161 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %160
  %162 = load float, ptr %161, align 4, !tbaa !68
  %163 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %160
  %164 = load float, ptr %163, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  br label %165

165:                                              ; preds = %155, %148
  %166 = phi float [ %164, %155 ], [ 0.000000e+00, %148 ]
  %167 = phi float [ %162, %155 ], [ 0.000000e+00, %148 ]
  %168 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %141, i32 noundef 0, i32 noundef 0, i32 noundef %139, i32 noundef %140) #13
  %169 = getelementptr inbounds %struct.DerivedMesh, ptr %168, i64 0, i32 31
  %170 = load ptr, ptr %169, align 8, !tbaa !86
  %171 = call ptr %170(ptr noundef %168) #13
  %172 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %173 = load ptr, ptr %172, align 8, !tbaa !86
  %174 = call ptr %173(ptr noundef %2) #13
  %175 = getelementptr inbounds %struct.DerivedMesh, ptr %168, i64 0, i32 35
  %176 = load ptr, ptr %175, align 8, !tbaa !87
  %177 = call ptr %176(ptr noundef %168) #13
  %178 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %179 = load ptr, ptr %178, align 8, !tbaa !87
  %180 = call ptr %179(ptr noundef %2) #13
  %181 = getelementptr inbounds %struct.DerivedMesh, ptr %168, i64 0, i32 34
  %182 = load ptr, ptr %181, align 8, !tbaa !88
  %183 = call ptr %182(ptr noundef %168) #13
  %184 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %185 = load ptr, ptr %184, align 8, !tbaa !88
  %186 = call ptr %185(ptr noundef %2) #13
  br i1 %122, label %187, label %351

187:                                              ; preds = %165
  %188 = icmp sgt i32 %115, 0
  %189 = sext i16 %14 to i64
  %190 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %189
  %191 = sext i16 %17 to i64
  %192 = add nsw i32 %15, 1
  %193 = srem i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %194
  %196 = sext i16 %17 to i32
  %197 = add nsw i32 %196, 1
  %198 = srem i32 %197, 3
  %199 = sext i32 %198 to i64
  %200 = add nsw i32 %15, 2
  %201 = urem i32 %200, 3
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %202
  %204 = add nsw i32 %196, 2
  %205 = srem i32 %204, 3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 40
  %208 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 7
  %209 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 23
  %210 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 6
  %211 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 4
  %212 = fsub float %166, %167
  %213 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1
  %214 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1, i64 %191
  %215 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %191
  %216 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 2
  %217 = icmp sgt i32 %118, 0
  %218 = zext nneg i32 %53 to i64
  %219 = zext nneg i32 %115 to i64
  %220 = zext nneg i32 %118 to i64
  br label %221

221:                                              ; preds = %187, %347
  %222 = phi i64 [ 0, %187 ], [ %349, %347 ]
  %223 = phi i32 [ 0, %187 ], [ %348, %347 ]
  %224 = trunc i64 %222 to i32
  %225 = call fastcc i32 @particle_skip(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %224) #15, !range !78
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %347

227:                                              ; preds = %221
  br i1 %188, label %228, label %236

228:                                              ; preds = %227
  %229 = mul nsw i32 %223, %115
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.MVert, ptr %171, i64 %230
  %232 = add i64 %222, %52
  %233 = getelementptr inbounds float, ptr %112, i64 %222
  %234 = trunc i64 %232 to i32
  %235 = trunc i64 %232 to i32
  br label %243

236:                                              ; preds = %312, %227
  br i1 %217, label %237, label %345

237:                                              ; preds = %236
  %238 = mul nsw i32 %223, %118
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.MPoly, ptr %177, i64 %239
  %241 = mul nsw i32 %223, %121
  %242 = mul nsw i32 %223, %115
  br label %315

243:                                              ; preds = %228, %312
  %244 = phi i64 [ 0, %228 ], [ %313, %312 ]
  %245 = trunc i64 %244 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  %246 = getelementptr inbounds %struct.MVert, ptr %231, i64 %244
  %247 = getelementptr inbounds %struct.MVert, ptr %174, i64 %244
  %248 = add nsw i32 %229, %245
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %168, i32 noundef %245, i32 noundef %248, i32 noundef 1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %246, ptr noundef nonnull align 4 dereferenceable(20) %247, i64 20, i1 false), !tbaa.struct !89
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %246) #15
  %249 = load float, ptr %190, align 4, !tbaa !68
  %250 = getelementptr inbounds [3 x float], ptr %246, i64 0, i64 %191
  store float %249, ptr %250, align 4, !tbaa !68
  %251 = load float, ptr %195, align 4, !tbaa !68
  %252 = getelementptr inbounds [3 x float], ptr %246, i64 0, i64 %199
  store float %251, ptr %252, align 4, !tbaa !68
  %253 = load float, ptr %203, align 4, !tbaa !68
  %254 = getelementptr inbounds [3 x float], ptr %246, i64 0, i64 %206
  store float %253, ptr %254, align 4, !tbaa !68
  %255 = load i32, ptr %144, align 4, !tbaa !81
  %256 = and i32 %255, 1536
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %243
  %259 = load ptr, ptr %207, align 8, !tbaa !82
  %260 = getelementptr inbounds %struct.PointCache, ptr %259, i64 0, i32 2
  %261 = load i32, ptr %260, align 8, !tbaa !83
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %304, label %264

264:                                              ; preds = %258, %243
  %265 = load i16, ptr %38, align 2, !tbaa !55
  %266 = and i16 %265, 4
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %304, label %268

268:                                              ; preds = %264
  %269 = load float, ptr %208, align 4, !tbaa !91
  %270 = fcmp une float %269, 0.000000e+00
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = load i32, ptr %209, align 4, !tbaa !92
  %273 = add nsw i32 %272, %224
  %274 = call float @BLI_hash_frand(i32 noundef %273) #13
  %275 = fmul float %269, %274
  %276 = load i16, ptr %38, align 2, !tbaa !55
  br label %277

277:                                              ; preds = %271, %268
  %278 = phi i16 [ %276, %271 ], [ %265, %268 ]
  %279 = phi float [ %275, %271 ], [ 0.000000e+00, %268 ]
  %280 = and i16 %278, 64
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %277
  %283 = load float, ptr %210, align 8, !tbaa !93
  %284 = fsub float 1.000000e+00, %279
  %285 = fmul float %284, %283
  store float %285, ptr %211, align 4, !tbaa !94
  br label %296

286:                                              ; preds = %277
  %287 = load float, ptr %250, align 4, !tbaa !68
  %288 = fsub float %287, %167
  %289 = fdiv float %288, %212
  %290 = load float, ptr %210, align 8, !tbaa !93
  %291 = fmul float %290, %289
  %292 = fsub float 1.000000e+00, %279
  %293 = fmul float %292, %291
  %294 = fsub float 1.000000e+00, %293
  %295 = select i1 %18, float %294, float %293
  store float %295, ptr %211, align 4, !tbaa !94
  store float 0.000000e+00, ptr %250, align 4, !tbaa !68
  br label %296

296:                                              ; preds = %286, %282
  call void @psys_get_particle_on_path(ptr noundef nonnull %5, i32 noundef %234, ptr noundef nonnull %10, i8 noundef zeroext 1) #13
  call fastcc void @normalize_v3(ptr noundef nonnull %213) #15
  %297 = load float, ptr %214, align 4, !tbaa !68
  %298 = fcmp olt float %297, 0xBFEFFF2E40000000
  %299 = fcmp ogt float %297, 0x3FEFFF2E40000000
  %300 = or i1 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  call void @unit_qt(ptr noundef nonnull %216) #13
  br label %306

302:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %215, align 4, !tbaa !68
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %213) #15
  %303 = call fastcc float @saacos(float noundef %297) #15
  call void @axis_angle_to_quat(ptr noundef nonnull %216, ptr noundef nonnull %7, float noundef %303) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  br label %306

304:                                              ; preds = %264, %258
  store float -1.000000e+00, ptr %211, align 4, !tbaa !94
  %305 = call i32 @psys_get_particle_state(ptr noundef nonnull %5, i32 noundef %235, ptr noundef nonnull %10, i32 noundef 1) #13
  br label %306

306:                                              ; preds = %301, %302, %304
  call void @mul_qt_v3(ptr noundef nonnull %216, ptr noundef nonnull %246) #13
  %307 = load i16, ptr %38, align 2, !tbaa !55
  %308 = and i16 %307, 128
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = load float, ptr %233, align 4, !tbaa !68
  call fastcc void @mul_v3_fl(ptr noundef nonnull %246, float noundef %311) #15
  br label %312

312:                                              ; preds = %310, %306
  call fastcc void @add_v3_v3(ptr noundef nonnull %246, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  %313 = add nuw nsw i64 %244, 1
  %314 = icmp eq i64 %313, %219
  br i1 %314, label %236, label %243, !llvm.loop !95

315:                                              ; preds = %237, %342
  %316 = phi i64 [ 0, %237 ], [ %343, %342 ]
  %317 = trunc i64 %316 to i32
  %318 = getelementptr inbounds %struct.MPoly, ptr %180, i64 %316
  %319 = getelementptr inbounds %struct.MPoly, ptr %240, i64 %316
  %320 = add nsw i32 %238, %317
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %168, i32 noundef %317, i32 noundef %320, i32 noundef 1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %319, ptr noundef nonnull align 4 dereferenceable(12) %318, i64 12, i1 false), !tbaa.struct !96
  %321 = load i32, ptr %319, align 4, !tbaa !99
  %322 = add nsw i32 %321, %241
  store i32 %322, ptr %319, align 4, !tbaa !99
  %323 = load i32, ptr %318, align 4, !tbaa !99
  %324 = getelementptr inbounds %struct.MPoly, ptr %240, i64 %316, i32 1
  %325 = load i32, ptr %324, align 4, !tbaa !101
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %168, i32 noundef %323, i32 noundef %322, i32 noundef %325) #13
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %342, label %327

327:                                              ; preds = %315
  %328 = sext i32 %322 to i64
  %329 = getelementptr inbounds %struct.MLoop, ptr %183, i64 %328
  %330 = sext i32 %323 to i64
  %331 = getelementptr inbounds %struct.MLoop, ptr %186, i64 %330
  br label %332

332:                                              ; preds = %327, %332
  %333 = phi i32 [ %338, %332 ], [ %325, %327 ]
  %334 = phi ptr [ %339, %332 ], [ %329, %327 ]
  %335 = phi ptr [ %340, %332 ], [ %331, %327 ]
  %336 = load i32, ptr %335, align 4, !tbaa !102
  %337 = add i32 %336, %242
  store i32 %337, ptr %334, align 4, !tbaa !102
  %338 = add nsw i32 %333, -1
  %339 = getelementptr inbounds %struct.MLoop, ptr %334, i64 1
  %340 = getelementptr inbounds %struct.MLoop, ptr %335, i64 1
  %341 = icmp eq i32 %338, 0
  br i1 %341, label %342, label %332, !llvm.loop !104

342:                                              ; preds = %332, %315
  %343 = add nuw nsw i64 %316, 1
  %344 = icmp eq i64 %343, %220
  br i1 %344, label %345, label %315, !llvm.loop !105

345:                                              ; preds = %342, %236
  %346 = add nsw i32 %223, 1
  br label %347

347:                                              ; preds = %221, %345
  %348 = phi i32 [ %223, %221 ], [ %346, %345 ]
  %349 = add nuw nsw i64 %222, 1
  %350 = icmp eq i64 %349, %218
  br i1 %350, label %351, label %221, !llvm.loop !106

351:                                              ; preds = %347, %165
  call void @CDDM_calc_edges(ptr noundef %168) #13
  %352 = load ptr, ptr %143, align 8, !tbaa !80
  %353 = icmp eq ptr %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %351
  call void @end_latt_deform(ptr noundef nonnull %352) #13
  store ptr null, ptr %143, align 8, !tbaa !80
  br label %355

355:                                              ; preds = %354, %351
  %356 = icmp eq ptr %112, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %355
  %358 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %358(ptr noundef nonnull %112) #13
  br label %359

359:                                              ; preds = %357, %355
  %360 = getelementptr inbounds %struct.DerivedMesh, ptr %168, i64 0, i32 16
  %361 = load i32, ptr %360, align 8, !tbaa !107
  %362 = or i32 %361, 4
  store i32 %362, ptr %360, align 8, !tbaa !107
  br label %363

363:                                              ; preds = %51, %23, %25, %33, %359, %22
  %364 = phi ptr [ %2, %22 ], [ %168, %359 ], [ %2, %33 ], [ %2, %25 ], [ %2, %23 ], [ %2, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  ret ptr %364
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 3
  store i16 57, ptr %2, align 2, !tbaa !55
  %3 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 2
  store i16 1, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 4
  store i16 2, ptr %5, align 4, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 109
  %8 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !52
  %10 = sext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %14, %36
  %20 = phi ptr [ %37, %36 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !110
  %23 = icmp eq i32 %22, 19
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !111
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = icmp eq i32 %1, 0
  %30 = select i1 %29, i32 1, i32 2
  %31 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %32, ptr noundef nonnull %20, i32 noundef %30) #13
  %34 = icmp eq i8 %33, 0
  %35 = zext i1 %34 to i8
  br label %39

36:                                               ; preds = %24, %19
  %37 = load ptr, ptr %20, align 8, !tbaa !63
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %19, !llvm.loop !113

39:                                               ; preds = %36, %14, %28, %6, %2
  %40 = phi i8 [ 1, %2 ], [ 1, %6 ], [ %35, %28 ], [ 0, %14 ], [ 0, %36 ]
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !114 {
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #13
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #13
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !115 {
  %5 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @psys_get_child_size(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @particle_skip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !116 {
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = icmp sgt i32 %10, %2
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 19
  %16 = load i16, ptr %15, align 4, !tbaa !118
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds %struct.ChildParticle, ptr %20, i64 %21
  %23 = sext i32 %10 to i64
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds %struct.ChildParticle, ptr %22, i64 %24, i32 1
  br label %37

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 19
  %30 = load i16, ptr %29, align 4, !tbaa !118
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = sext i32 %2 to i64
  %36 = getelementptr inbounds %struct.ChildParticle, ptr %34, i64 %35, i32 1
  br label %37

37:                                               ; preds = %18, %32
  %38 = phi ptr [ %36, %32 ], [ %25, %18 ]
  %39 = load i32, ptr %38, align 4, !tbaa !120
  br label %40

40:                                               ; preds = %37, %8
  %41 = phi i32 [ %2, %8 ], [ %39, %37 ]
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !64
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %40
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds %struct.ParticleData, ptr %43, i64 %46, i32 18
  %48 = load i16, ptr %47, align 2, !tbaa !122
  switch i16 %48, label %58 [
    i16 2, label %49
    i16 3, label %52
    i16 1, label %55
  ]

49:                                               ; preds = %45
  %50 = and i16 %5, 8
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %59, label %58

52:                                               ; preds = %45
  %53 = and i16 %5, 16
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %58

55:                                               ; preds = %45
  %56 = and i16 %5, 32
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %45, %49, %52, %26, %12, %55, %40
  br label %59

59:                                               ; preds = %55, %52, %49, %58
  %60 = phi i32 [ 0, %58 ], [ 1, %49 ], [ 1, %52 ], [ 1, %55 ]
  ret i32 %60
}

; Function Attrs: optsize
declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !123 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  store float %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare float @BLI_hash_frand(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_get_particle_on_path(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !124 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !125 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !68
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !68
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !68
  %15 = load float, ptr %8, align 4, !tbaa !68
  %16 = load float, ptr %2, align 4, !tbaa !68
  %17 = load float, ptr %1, align 4, !tbaa !68
  %18 = load float, ptr %6, align 4, !tbaa !68
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !68
  %23 = load float, ptr %1, align 4, !tbaa !68
  %24 = load float, ptr %10, align 4, !tbaa !68
  %25 = load float, ptr %4, align 4, !tbaa !68
  %26 = load float, ptr %2, align 4, !tbaa !68
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #9 !PGOFuncName !126 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #13
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !127 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !68
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !128 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  %4 = load float, ptr %0, align 4, !tbaa !68
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !68
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !68
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !68
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !68
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !68
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CDDM_calc_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !129 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !130 {
  %3 = load float, ptr %0, align 4, !tbaa !68
  %4 = load float, ptr %1, align 4, !tbaa !68
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !68
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !68
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !131 {
  %4 = load float, ptr %1, align 4, !tbaa !68
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !68
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #1 !PGOFuncName !132 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !68
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }

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
!34 = !{!"MOD_particleinstance.c:copyData"}
!35 = !{!"MOD_particleinstance.c:applyModifier"}
!36 = !{!37, !42, i64 956}
!37 = !{!"Object", !38, i64 0, !39, i64 120, !39, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !40, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !44, i64 312, !39, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !43, i64 432, !43, i64 436, !39, i64 440, !39, i64 448, !43, i64 456, !43, i64 460, !40, i64 464, !40, i64 476, !40, i64 488, !40, i64 500, !40, i64 512, !40, i64 524, !40, i64 536, !40, i64 548, !40, i64 560, !40, i64 576, !40, i64 592, !40, i64 604, !46, i64 616, !46, i64 620, !40, i64 624, !40, i64 688, !40, i64 752, !40, i64 816, !40, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !40, i64 966, !40, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !40, i64 1042, !40, i64 1043, !42, i64 1044, !40, i64 1046, !40, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !42, i64 1124, !42, i64 1126, !40, i64 1128, !43, i64 1144, !43, i64 1148, !39, i64 1152, !40, i64 1160, !40, i64 1161, !42, i64 1162, !40, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !40, i64 1264, !40, i64 1265, !42, i64 1266, !46, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !47, i64 1304, !47, i64 1312, !43, i64 1320, !43, i64 1324, !45, i64 1328, !45, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !40, i64 1384, !39, i64 1392, !45, i64 1400, !39, i64 1416}
!38 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !39, i64 112}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"short", !40, i64 0}
!43 = !{!"int", !40, i64 0}
!44 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!45 = !{!"ListBase", !39, i64 0, !39, i64 8}
!46 = !{!"float", !40, i64 0}
!47 = !{!"long", !40, i64 0}
!48 = !{!49, !42, i64 124}
!49 = !{!"ParticleInstanceModifierData", !50, i64 0, !39, i64 112, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !46, i64 128, !46, i64 132}
!50 = !{!"ModifierData", !39, i64 0, !39, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!51 = !{!49, !39, i64 112}
!52 = !{!49, !42, i64 120}
!53 = !{!54, !43, i64 320}
!54 = !{!"ParticleSystem", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !45, i64 72, !45, i64 88, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !45, i64 152, !40, i64 168, !40, i64 232, !46, i64 296, !46, i64 300, !46, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !40, i64 348, !40, i64 540, !42, i64 564, !42, i64 566, !39, i64 568, !39, i64 576, !45, i64 584, !39, i64 600, !39, i64 608, !43, i64 616, !43, i64 620, !39, i64 624, !39, i64 632, !39, i64 640, !46, i64 648, !46, i64 652}
!55 = !{!49, !42, i64 122}
!56 = !{!54, !43, i64 328}
!57 = !{!50, !39, i64 96}
!58 = !{!59, !39, i64 0}
!59 = !{!"ParticleSimulationData", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !46, i64 40}
!60 = !{!59, !39, i64 8}
!61 = !{!59, !39, i64 16}
!62 = !{!59, !39, i64 24}
!63 = !{!39, !39, i64 0}
!64 = !{!54, !39, i64 24}
!65 = !{!66, !46, i64 180}
!66 = !{!"ParticleData", !67, i64 0, !67, i64 56, !39, i64 112, !39, i64 120, !39, i64 128, !43, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !43, i64 152, !43, i64 156, !40, i64 160, !46, i64 176, !46, i64 180, !46, i64 184, !43, i64 188, !43, i64 192, !42, i64 196, !42, i64 198}
!67 = !{!"ParticleKey", !40, i64 0, !40, i64 12, !40, i64 24, !40, i64 40, !46, i64 52}
!68 = !{!46, !46, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!54, !39, i64 32}
!72 = distinct !{!72, !70}
!73 = !{!74, !39, i64 1104}
!74 = !{!"DerivedMesh", !75, i64 0, !75, i64 200, !75, i64 400, !75, i64 600, !75, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !39, i64 1032, !39, i64 1040, !43, i64 1048, !46, i64 1052, !43, i64 1056, !43, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!75 = !{!"CustomData", !39, i64 0, !40, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !39, i64 184, !39, i64 192}
!76 = !{!74, !39, i64 1136}
!77 = !{!74, !39, i64 1128}
!78 = !{i32 0, i32 2}
!79 = distinct !{!79, !70}
!80 = !{!54, !39, i64 136}
!81 = !{!54, !43, i64 316}
!82 = !{!54, !39, i64 576}
!83 = !{!84, !43, i64 16}
!84 = !{!"PointCache", !39, i64 0, !39, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !42, i64 60, !42, i64 62, !40, i64 64, !40, i64 128, !40, i64 192, !40, i64 256, !39, i64 1280, !45, i64 1288, !39, i64 1304, !39, i64 1312}
!85 = !{!74, !39, i64 1520}
!86 = !{!74, !39, i64 1168}
!87 = !{!74, !39, i64 1200}
!88 = !{!74, !39, i64 1192}
!89 = !{i64 0, i64 12, !90, i64 12, i64 6, !90, i64 18, i64 1, !90, i64 19, i64 1, !90}
!90 = !{!40, !40, i64 0}
!91 = !{!49, !46, i64 132}
!92 = !{!54, !43, i64 308}
!93 = !{!49, !46, i64 128}
!94 = !{!67, !46, i64 52}
!95 = distinct !{!95, !70}
!96 = !{i64 0, i64 4, !97, i64 4, i64 4, !97, i64 8, i64 2, !98, i64 10, i64 1, !90, i64 11, i64 1, !90}
!97 = !{!43, !43, i64 0}
!98 = !{!42, !42, i64 0}
!99 = !{!100, !43, i64 0}
!100 = !{!"MPoly", !43, i64 0, !43, i64 4, !42, i64 8, !40, i64 10, !40, i64 11}
!101 = !{!100, !43, i64 4}
!102 = !{!103, !43, i64 0}
!103 = !{!"MLoop", !43, i64 0, !43, i64 4}
!104 = distinct !{!104, !70}
!105 = distinct !{!105, !70}
!106 = distinct !{!106, !70}
!107 = !{!74, !43, i64 1056}
!108 = !{!"MOD_particleinstance.c:initData"}
!109 = !{!"MOD_particleinstance.c:isDisabled"}
!110 = !{!50, !43, i64 16}
!111 = !{!112, !39, i64 112}
!112 = !{!"ParticleSystemModifierData", !50, i64 0, !39, i64 112, !39, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !42, i64 140, !42, i64 142}
!113 = distinct !{!113, !70}
!114 = !{!"MOD_particleinstance.c:updateDepgraph"}
!115 = !{!"MOD_particleinstance.c:foreachObjectLink"}
!116 = !{!"MOD_particleinstance.c:particle_skip"}
!117 = !{!54, !39, i64 16}
!118 = !{!119, !42, i64 188}
!119 = !{!"ParticleSettings", !38, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !43, i64 152, !43, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !43, i64 176, !43, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !46, i64 232, !46, i64 236, !40, i64 240, !40, i64 248, !46, i64 256, !46, i64 260, !46, i64 264, !42, i64 268, !42, i64 270, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !40, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !40, i64 342, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !46, i64 368, !46, i64 372, !40, i64 376, !46, i64 388, !46, i64 392, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !46, i64 412, !40, i64 416, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !43, i64 444, !43, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !46, i64 464, !46, i64 468, !46, i64 472, !46, i64 476, !46, i64 480, !46, i64 484, !46, i64 488, !46, i64 492, !46, i64 496, !46, i64 500, !46, i64 504, !46, i64 508, !46, i64 512, !46, i64 516, !46, i64 520, !46, i64 524, !46, i64 528, !46, i64 532, !46, i64 536, !46, i64 540, !46, i64 544, !46, i64 548, !40, i64 552, !46, i64 560, !46, i64 564, !43, i64 568, !43, i64 572, !40, i64 576, !39, i64 720, !45, i64 728, !39, i64 744, !39, i64 752, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !42, i64 792, !40, i64 794}
!120 = !{!121, !43, i64 4}
!121 = !{!"ChildParticle", !43, i64 0, !43, i64 4, !40, i64 8, !40, i64 24, !40, i64 40, !46, i64 56, !46, i64 60}
!122 = !{!66, !42, i64 198}
!123 = !{!"MOD_particleinstance.c:copy_v3_v3"}
!124 = !{!"MOD_particleinstance.c:normalize_v3"}
!125 = !{!"MOD_particleinstance.c:cross_v3_v3v3"}
!126 = !{!"MOD_particleinstance.c:saacos"}
!127 = !{!"MOD_particleinstance.c:mul_v3_fl"}
!128 = !{!"MOD_particleinstance.c:add_v3_v3"}
!129 = !{!"MOD_particleinstance.c:normalize_v3_v3"}
!130 = !{!"MOD_particleinstance.c:dot_v3v3"}
!131 = !{!"MOD_particleinstance.c:mul_v3_v3fl"}
!132 = !{!"MOD_particleinstance.c:zero_v3"}
