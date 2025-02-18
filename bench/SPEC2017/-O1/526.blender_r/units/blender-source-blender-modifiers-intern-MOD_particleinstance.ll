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
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }

@modifierType_ParticleInstance = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"ParticleInstance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ParticleInstanceModifierData\00\00\00\00", i32 136, i32 2, i32 29, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"particle size array\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Particle Instance Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @applyModifier(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca %struct.ParticleSimulationData, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.ParticleKey, align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #8
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  %13 = load i16, ptr %12, align 4, !tbaa !34
  %14 = sext i16 %13 to i32
  %15 = srem i32 %14, 3
  %16 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %18 = icmp sgt i16 %13, 2
  %19 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store ptr null, ptr %19, align 8, !tbaa !49
  br label %571

23:                                               ; preds = %4
  %24 = icmp eq ptr %20, null
  br i1 %24, label %571, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 109
  %27 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !50
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, -1
  %31 = tail call ptr @BLI_findlink(ptr noundef nonnull %26, i32 noundef %30) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %571, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 26
  %35 = load i32, ptr %34, align 8, !tbaa !51
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %571, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 3
  %39 = load i16, ptr %38, align 2, !tbaa !53
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  %42 = select i1 %41, i32 0, i32 %35
  %43 = and i16 %39, 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = zext i32 %35 to i64
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 28
  %48 = load i32, ptr %47, align 8, !tbaa !54
  %49 = add nsw i32 %48, %42
  %50 = select i1 %41, i64 %46, i64 0
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i64 [ %50, %45 ], [ 0, %37 ]
  %53 = phi i32 [ %49, %45 ], [ %42, %37 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %571, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  store ptr %57, ptr %5, align 8, !tbaa !56
  %58 = load ptr, ptr %19, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !58
  %60 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 2
  store ptr %31, ptr %60, align 8, !tbaa !59
  %61 = tail call ptr @psys_get_modifier(ptr noundef %58, ptr noundef nonnull %31) #8
  %62 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !60
  %63 = load i16, ptr %38, align 2, !tbaa !53
  %64 = and i16 %63, 128
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %111, label %66

66:                                               ; preds = %55
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %68 = sext i32 %53 to i64
  %69 = shl nsw i64 %68, 2
  %70 = tail call ptr %67(i64 noundef %69, ptr noundef nonnull @.str) #8
  %71 = load i16, ptr %38, align 2, !tbaa !53
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %66
  %75 = load i32, ptr %34, align 8, !tbaa !51
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !62
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %87, %80 ], [ %79, %77 ]
  %82 = phi ptr [ %88, %80 ], [ %70, %77 ]
  %83 = phi i32 [ %86, %80 ], [ 0, %77 ]
  %84 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 0, i32 13
  %85 = load float, ptr %84, align 4, !tbaa !63
  store float %85, ptr %82, align 4, !tbaa !66
  %86 = add nuw nsw i32 %83, 1
  %87 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 1
  %88 = getelementptr inbounds float, ptr %82, i64 1
  %89 = icmp eq i32 %86, %75
  br i1 %89, label %90, label %80, !llvm.loop !67

90:                                               ; preds = %80, %74, %66
  %91 = phi ptr [ %70, %66 ], [ %70, %74 ], [ %88, %80 ]
  %92 = and i16 %71, 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 28
  %96 = load i32, ptr %95, align 8, !tbaa !54
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !70
  br label %101

101:                                              ; preds = %98, %101
  %102 = phi ptr [ %107, %101 ], [ %100, %98 ]
  %103 = phi ptr [ %108, %101 ], [ %91, %98 ]
  %104 = phi i32 [ %106, %101 ], [ 0, %98 ]
  %105 = tail call float @psys_get_child_size(ptr noundef nonnull %31, ptr noundef %102, float noundef 0.000000e+00, ptr noundef null) #8
  store float %105, ptr %103, align 4, !tbaa !66
  %106 = add nuw nsw i32 %104, 1
  %107 = getelementptr inbounds %struct.ChildParticle, ptr %102, i64 1
  %108 = getelementptr inbounds float, ptr %103, i64 1
  %109 = load i32, ptr %95, align 8, !tbaa !54
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %101, label %111, !llvm.loop !71

111:                                              ; preds = %101, %94, %90, %55
  %112 = phi ptr [ null, %55 ], [ %70, %90 ], [ %70, %94 ], [ %70, %101 ]
  %113 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %114 = load ptr, ptr %113, align 8, !tbaa !72
  %115 = tail call i32 %114(ptr noundef %2) #8
  %116 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %117 = load ptr, ptr %116, align 8, !tbaa !75
  %118 = tail call i32 %117(ptr noundef %2) #8
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %120 = load ptr, ptr %119, align 8, !tbaa !76
  %121 = tail call i32 %120(ptr noundef %2) #8
  %122 = icmp sgt i32 %53, 0
  br i1 %122, label %123, label %205

123:                                              ; preds = %111
  %124 = load i16, ptr %38, align 2, !tbaa !53
  %125 = and i16 %124, 1
  %126 = icmp eq i16 %125, 0
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 2
  %128 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %129 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 4
  %130 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %131 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 2
  %132 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %133 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 4
  %134 = and i16 %124, 8
  %135 = icmp eq i16 %134, 0
  %136 = and i16 %124, 16
  %137 = icmp eq i16 %136, 0
  %138 = and i16 %124, 32
  %139 = icmp eq i16 %138, 0
  %140 = zext nneg i32 %53 to i64
  br label %141

141:                                              ; preds = %123, %195
  %142 = phi i64 [ 0, %123 ], [ %203, %195 ]
  %143 = phi i32 [ 0, %123 ], [ %202, %195 ]
  %144 = phi i32 [ 0, %123 ], [ %200, %195 ]
  %145 = phi i32 [ 0, %123 ], [ %198, %195 ]
  br i1 %126, label %168, label %146

146:                                              ; preds = %141
  %147 = load i32, ptr %34, align 8, !tbaa !51
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %142, %148
  br i1 %149, label %165, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %127, align 8, !tbaa !77
  %152 = getelementptr inbounds %struct.ParticleSettings, ptr %151, i64 0, i32 19
  %153 = load i16, ptr %152, align 4, !tbaa !78
  %154 = icmp eq i16 %153, 1
  br i1 %154, label %155, label %180

155:                                              ; preds = %150
  %156 = load ptr, ptr %128, align 8, !tbaa !62
  %157 = load ptr, ptr %129, align 8, !tbaa !70
  %158 = getelementptr inbounds %struct.ChildParticle, ptr %157, i64 %142
  %159 = sext i32 %147 to i64
  %160 = sub nsw i64 0, %159
  %161 = getelementptr inbounds %struct.ChildParticle, ptr %158, i64 %160, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !80
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ParticleData, ptr %156, i64 %163
  br label %180

165:                                              ; preds = %146
  %166 = load ptr, ptr %130, align 8, !tbaa !62
  %167 = getelementptr inbounds %struct.ParticleData, ptr %166, i64 %142
  br label %180

168:                                              ; preds = %141
  %169 = load ptr, ptr %131, align 8, !tbaa !77
  %170 = getelementptr inbounds %struct.ParticleSettings, ptr %169, i64 0, i32 19
  %171 = load i16, ptr %170, align 4, !tbaa !78
  %172 = icmp eq i16 %171, 1
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load ptr, ptr %132, align 8, !tbaa !62
  %175 = load ptr, ptr %133, align 8, !tbaa !70
  %176 = getelementptr inbounds %struct.ChildParticle, ptr %175, i64 %142, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !80
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.ParticleData, ptr %174, i64 %178
  br label %180

180:                                              ; preds = %173, %168, %165, %155, %150
  %181 = phi ptr [ %164, %155 ], [ %167, %165 ], [ %179, %173 ], [ null, %150 ], [ null, %168 ]
  %182 = icmp eq ptr %181, null
  br i1 %182, label %194, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.ParticleData, ptr %181, i64 0, i32 18
  %185 = load i16, ptr %184, align 2, !tbaa !82
  %186 = icmp eq i16 %185, 2
  %187 = and i1 %135, %186
  %188 = icmp eq i16 %185, 3
  %189 = and i1 %137, %188
  %190 = or i1 %187, %189
  %191 = icmp eq i16 %185, 1
  %192 = and i1 %139, %191
  %193 = or i1 %190, %192
  br i1 %193, label %195, label %194

194:                                              ; preds = %183, %180
  br label %195

195:                                              ; preds = %183, %194
  %196 = phi i1 [ true, %194 ], [ false, %183 ]
  %197 = select i1 %196, i32 %121, i32 0
  %198 = add nsw i32 %197, %145
  %199 = select i1 %196, i32 %118, i32 0
  %200 = add nsw i32 %199, %144
  %201 = select i1 %196, i32 %115, i32 0
  %202 = add nsw i32 %201, %143
  %203 = add nuw nsw i64 %142, 1
  %204 = icmp eq i64 %203, %140
  br i1 %204, label %205, label %141, !llvm.loop !83

205:                                              ; preds = %195, %111
  %206 = phi i32 [ 0, %111 ], [ %198, %195 ]
  %207 = phi i32 [ 0, %111 ], [ %200, %195 ]
  %208 = phi i32 [ 0, %111 ], [ %202, %195 ]
  %209 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %5) #8
  %210 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 15
  store ptr %209, ptr %210, align 8, !tbaa !84
  %211 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 25
  %212 = load i32, ptr %211, align 4, !tbaa !85
  %213 = and i32 %212, 1536
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 40
  %217 = load ptr, ptr %216, align 8, !tbaa !86
  %218 = getelementptr inbounds %struct.PointCache, ptr %217, i64 0, i32 2
  %219 = load i32, ptr %218, align 8, !tbaa !87
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %215, %205
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %223 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x46293E5940000000, ptr %223, align 4, !tbaa !66
  %224 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0x46293E5940000000, ptr %224, align 4, !tbaa !66
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !66
  %225 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %225, align 4, !tbaa !66
  %226 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %226, align 4, !tbaa !66
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !66
  %227 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 75
  %228 = load ptr, ptr %227, align 8, !tbaa !89
  call void %228(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %229 = sext i32 %15 to i64
  %230 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %229
  %231 = load float, ptr %230, align 4, !tbaa !66
  %232 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %229
  %233 = load float, ptr %232, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  br label %234

234:                                              ; preds = %222, %215
  %235 = phi float [ %233, %222 ], [ 0.000000e+00, %215 ]
  %236 = phi float [ %231, %222 ], [ 0.000000e+00, %215 ]
  %237 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %208, i32 noundef 0, i32 noundef 0, i32 noundef %206, i32 noundef %207) #8
  %238 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 31
  %239 = load ptr, ptr %238, align 8, !tbaa !90
  %240 = call ptr %239(ptr noundef %237) #8
  %241 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %242 = load ptr, ptr %241, align 8, !tbaa !90
  %243 = call ptr %242(ptr noundef %2) #8
  %244 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 35
  %245 = load ptr, ptr %244, align 8, !tbaa !91
  %246 = call ptr %245(ptr noundef %237) #8
  %247 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %248 = load ptr, ptr %247, align 8, !tbaa !91
  %249 = call ptr %248(ptr noundef %2) #8
  %250 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 34
  %251 = load ptr, ptr %250, align 8, !tbaa !92
  %252 = call ptr %251(ptr noundef %237) #8
  %253 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %254 = load ptr, ptr %253, align 8, !tbaa !92
  %255 = call ptr %254(ptr noundef %2) #8
  %256 = icmp sgt i32 %53, 0
  br i1 %256, label %257, label %559

257:                                              ; preds = %234
  %258 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 2
  %259 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %260 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 4
  %261 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %262 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 2
  %263 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %264 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 4
  %265 = icmp sgt i32 %115, 0
  %266 = getelementptr inbounds float, ptr %6, i64 1
  %267 = getelementptr inbounds float, ptr %6, i64 2
  %268 = sext i32 %15 to i64
  %269 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %268
  %270 = sext i16 %17 to i64
  %271 = add nsw i32 %15, 1
  %272 = srem i32 %271, 3
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %273
  %275 = sext i16 %17 to i32
  %276 = add nsw i32 %275, 1
  %277 = srem i32 %276, 3
  %278 = sext i32 %277 to i64
  %279 = add nsw i32 %15, 2
  %280 = urem i32 %279, 3
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %281
  %283 = add nsw i32 %275, 2
  %284 = srem i32 %283, 3
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 40
  %287 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 7
  %288 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 23
  %289 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 6
  %290 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 4
  %291 = fsub float %235, %236
  %292 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 6
  %293 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 4
  %294 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1
  %295 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1, i64 1
  %296 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1, i64 2
  %297 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1, i64 %270
  %298 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %270
  %299 = getelementptr inbounds float, ptr %11, i64 1
  %300 = getelementptr inbounds float, ptr %11, i64 2
  %301 = getelementptr inbounds float, ptr %7, i64 1
  %302 = getelementptr inbounds float, ptr %7, i64 2
  %303 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 2
  %304 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 2
  %305 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 4
  %306 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 2
  %307 = getelementptr inbounds float, ptr %10, i64 1
  %308 = getelementptr inbounds float, ptr %10, i64 2
  %309 = icmp sgt i32 %118, 0
  %310 = zext nneg i32 %53 to i64
  %311 = zext nneg i32 %115 to i64
  %312 = zext nneg i32 %118 to i64
  br label %313

313:                                              ; preds = %257, %555
  %314 = phi i64 [ 0, %257 ], [ %557, %555 ]
  %315 = phi i32 [ 0, %257 ], [ %556, %555 ]
  %316 = load i16, ptr %38, align 2, !tbaa !53
  %317 = and i16 %316, 1
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %341, label %319

319:                                              ; preds = %313
  %320 = load i32, ptr %34, align 8, !tbaa !51
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %314, %321
  br i1 %322, label %338, label %323

323:                                              ; preds = %319
  %324 = load ptr, ptr %258, align 8, !tbaa !77
  %325 = getelementptr inbounds %struct.ParticleSettings, ptr %324, i64 0, i32 19
  %326 = load i16, ptr %325, align 4, !tbaa !78
  %327 = icmp eq i16 %326, 1
  br i1 %327, label %328, label %353

328:                                              ; preds = %323
  %329 = load ptr, ptr %259, align 8, !tbaa !62
  %330 = load ptr, ptr %260, align 8, !tbaa !70
  %331 = getelementptr inbounds %struct.ChildParticle, ptr %330, i64 %314
  %332 = sext i32 %320 to i64
  %333 = sub nsw i64 0, %332
  %334 = getelementptr inbounds %struct.ChildParticle, ptr %331, i64 %333, i32 1
  %335 = load i32, ptr %334, align 4, !tbaa !80
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.ParticleData, ptr %329, i64 %336
  br label %353

338:                                              ; preds = %319
  %339 = load ptr, ptr %261, align 8, !tbaa !62
  %340 = getelementptr inbounds %struct.ParticleData, ptr %339, i64 %314
  br label %353

341:                                              ; preds = %313
  %342 = load ptr, ptr %262, align 8, !tbaa !77
  %343 = getelementptr inbounds %struct.ParticleSettings, ptr %342, i64 0, i32 19
  %344 = load i16, ptr %343, align 4, !tbaa !78
  %345 = icmp eq i16 %344, 1
  br i1 %345, label %346, label %353

346:                                              ; preds = %341
  %347 = load ptr, ptr %263, align 8, !tbaa !62
  %348 = load ptr, ptr %264, align 8, !tbaa !70
  %349 = getelementptr inbounds %struct.ChildParticle, ptr %348, i64 %314, i32 1
  %350 = load i32, ptr %349, align 4, !tbaa !80
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.ParticleData, ptr %347, i64 %351
  br label %353

353:                                              ; preds = %346, %341, %338, %328, %323
  %354 = phi ptr [ %337, %328 ], [ %340, %338 ], [ %352, %346 ], [ null, %323 ], [ null, %341 ]
  %355 = icmp eq ptr %354, null
  br i1 %355, label %373, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.ParticleData, ptr %354, i64 0, i32 18
  %358 = load i16, ptr %357, align 2, !tbaa !82
  %359 = icmp eq i16 %358, 2
  %360 = and i16 %316, 8
  %361 = icmp eq i16 %360, 0
  %362 = and i1 %361, %359
  br i1 %362, label %555, label %363

363:                                              ; preds = %356
  %364 = icmp eq i16 %358, 3
  %365 = and i16 %316, 16
  %366 = icmp eq i16 %365, 0
  %367 = and i1 %366, %364
  br i1 %367, label %555, label %368

368:                                              ; preds = %363
  %369 = icmp eq i16 %358, 1
  %370 = and i16 %316, 32
  %371 = icmp eq i16 %370, 0
  %372 = and i1 %371, %369
  br i1 %372, label %555, label %373

373:                                              ; preds = %368, %353
  br i1 %265, label %374, label %384

374:                                              ; preds = %373
  %375 = mul nsw i32 %315, %115
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.MVert, ptr %240, i64 %376
  %378 = add i64 %314, %52
  %379 = add i64 %314, %52
  %380 = getelementptr inbounds float, ptr %112, i64 %314
  %381 = trunc i64 %314 to i32
  %382 = trunc i64 %378 to i32
  %383 = trunc i64 %379 to i32
  br label %391

384:                                              ; preds = %510, %373
  br i1 %309, label %385, label %553

385:                                              ; preds = %384
  %386 = mul nsw i32 %315, %118
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.MPoly, ptr %246, i64 %387
  %389 = mul nsw i32 %315, %121
  %390 = mul nsw i32 %315, %115
  br label %522

391:                                              ; preds = %374, %510
  %392 = phi i64 [ 0, %374 ], [ %520, %510 ]
  %393 = trunc i64 %392 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #8
  %394 = getelementptr inbounds %struct.MVert, ptr %377, i64 %392
  %395 = getelementptr inbounds %struct.MVert, ptr %243, i64 %392
  %396 = add nsw i32 %375, %393
  %397 = trunc i64 %392 to i32
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %237, i32 noundef %397, i32 noundef %396, i32 noundef 1) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %394, ptr noundef nonnull align 4 dereferenceable(20) %395, i64 20, i1 false), !tbaa.struct !93
  %398 = load float, ptr %394, align 4, !tbaa !66
  store float %398, ptr %6, align 4, !tbaa !66
  %399 = getelementptr inbounds float, ptr %394, i64 1
  %400 = load float, ptr %399, align 4, !tbaa !66
  store float %400, ptr %266, align 4, !tbaa !66
  %401 = getelementptr inbounds float, ptr %394, i64 2
  %402 = load float, ptr %401, align 4, !tbaa !66
  store float %402, ptr %267, align 4, !tbaa !66
  %403 = load float, ptr %269, align 4, !tbaa !66
  %404 = getelementptr inbounds [3 x float], ptr %394, i64 0, i64 %270
  store float %403, ptr %404, align 4, !tbaa !66
  %405 = load float, ptr %274, align 4, !tbaa !66
  %406 = getelementptr inbounds [3 x float], ptr %394, i64 0, i64 %278
  store float %405, ptr %406, align 4, !tbaa !66
  %407 = load float, ptr %282, align 4, !tbaa !66
  %408 = getelementptr inbounds [3 x float], ptr %394, i64 0, i64 %285
  store float %407, ptr %408, align 4, !tbaa !66
  %409 = load i32, ptr %211, align 4, !tbaa !85
  %410 = and i32 %409, 1536
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %391
  %413 = load ptr, ptr %286, align 8, !tbaa !86
  %414 = getelementptr inbounds %struct.PointCache, ptr %413, i64 0, i32 2
  %415 = load i32, ptr %414, align 8, !tbaa !87
  %416 = and i32 %415, 1
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %496, label %418

418:                                              ; preds = %412, %391
  %419 = load i16, ptr %38, align 2, !tbaa !53
  %420 = and i16 %419, 4
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %496, label %422

422:                                              ; preds = %418
  %423 = load float, ptr %287, align 4, !tbaa !95
  %424 = fcmp une float %423, 0.000000e+00
  br i1 %424, label %425, label %430

425:                                              ; preds = %422
  %426 = load i32, ptr %288, align 4, !tbaa !96
  %427 = add nsw i32 %426, %381
  %428 = call float @BLI_hash_frand(i32 noundef %427) #8
  %429 = fmul float %423, %428
  br label %430

430:                                              ; preds = %425, %422
  %431 = phi float [ %429, %425 ], [ 0.000000e+00, %422 ]
  %432 = load i16, ptr %38, align 2, !tbaa !53
  %433 = and i16 %432, 64
  %434 = icmp eq i16 %433, 0
  br i1 %434, label %439, label %435

435:                                              ; preds = %430
  %436 = load float, ptr %289, align 8, !tbaa !97
  %437 = fsub float 1.000000e+00, %431
  %438 = fmul float %437, %436
  store float %438, ptr %290, align 4, !tbaa !98
  br label %449

439:                                              ; preds = %430
  %440 = load float, ptr %404, align 4, !tbaa !66
  %441 = fsub float %440, %236
  %442 = fdiv float %441, %291
  %443 = load float, ptr %292, align 8, !tbaa !97
  %444 = fmul float %443, %442
  %445 = fsub float 1.000000e+00, %431
  %446 = fmul float %445, %444
  %447 = fsub float 1.000000e+00, %446
  %448 = select i1 %18, float %447, float %446
  store float %448, ptr %293, align 4, !tbaa !98
  store float 0.000000e+00, ptr %404, align 4, !tbaa !66
  br label %449

449:                                              ; preds = %439, %435
  call void @psys_get_particle_on_path(ptr noundef nonnull %5, i32 noundef %382, ptr noundef nonnull %10, i8 noundef zeroext 1) #8
  %450 = load float, ptr %294, align 4, !tbaa !66
  %451 = load float, ptr %295, align 4, !tbaa !66
  %452 = fmul float %451, %451
  %453 = call float @llvm.fmuladd.f32(float %450, float %450, float %452)
  %454 = load float, ptr %296, align 4, !tbaa !66
  %455 = call float @llvm.fmuladd.f32(float %454, float %454, float %453)
  %456 = fcmp ogt float %455, 0x38AA95A5C0000000
  br i1 %456, label %457, label %466

457:                                              ; preds = %449
  %458 = call float @sqrtf(float noundef %455) #8
  %459 = fdiv float 1.000000e+00, %458
  %460 = load float, ptr %294, align 4, !tbaa !66
  %461 = fmul float %460, %459
  store float %461, ptr %294, align 4, !tbaa !66
  %462 = load float, ptr %295, align 4, !tbaa !66
  %463 = fmul float %459, %462
  store float %463, ptr %295, align 4, !tbaa !66
  %464 = load float, ptr %296, align 4, !tbaa !66
  %465 = fmul float %459, %464
  br label %467

466:                                              ; preds = %449
  store float 0.000000e+00, ptr %294, align 4, !tbaa !66
  store float 0.000000e+00, ptr %295, align 4, !tbaa !66
  br label %467

467:                                              ; preds = %457, %466
  %468 = phi float [ 0.000000e+00, %466 ], [ %465, %457 ]
  store float %468, ptr %296, align 4, !tbaa !66
  %469 = load float, ptr %297, align 4, !tbaa !66
  %470 = fcmp olt float %469, 0xBFEFFF2E40000000
  %471 = fcmp ogt float %469, 0x3FEFFF2E40000000
  %472 = or i1 %470, %471
  br i1 %472, label %473, label %474

473:                                              ; preds = %467
  call void @unit_qt(ptr noundef nonnull %304) #8
  br label %498

474:                                              ; preds = %467
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %298, align 4, !tbaa !66
  %475 = load float, ptr %299, align 4, !tbaa !66
  %476 = load float, ptr %300, align 4, !tbaa !66
  %477 = load float, ptr %295, align 4, !tbaa !66
  %478 = fneg float %476
  %479 = fmul float %477, %478
  %480 = call float @llvm.fmuladd.f32(float %475, float %468, float %479)
  store float %480, ptr %7, align 4, !tbaa !66
  %481 = load float, ptr %294, align 4, !tbaa !66
  %482 = load float, ptr %11, align 4, !tbaa !66
  %483 = fneg float %482
  %484 = fmul float %468, %483
  %485 = call float @llvm.fmuladd.f32(float %476, float %481, float %484)
  store float %485, ptr %301, align 4, !tbaa !66
  %486 = fneg float %475
  %487 = fmul float %481, %486
  %488 = call float @llvm.fmuladd.f32(float %482, float %477, float %487)
  store float %488, ptr %302, align 4, !tbaa !66
  %489 = fcmp ugt float %469, -1.000000e+00
  br i1 %489, label %490, label %494

490:                                              ; preds = %474
  %491 = fcmp ult float %469, 1.000000e+00
  br i1 %491, label %492, label %494

492:                                              ; preds = %490
  %493 = call float @acosf(float noundef %469) #8
  br label %494

494:                                              ; preds = %474, %490, %492
  %495 = phi float [ %493, %492 ], [ 0x400921FB60000000, %474 ], [ 0.000000e+00, %490 ]
  call void @axis_angle_to_quat(ptr noundef nonnull %303, ptr noundef nonnull %7, float noundef %495) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  br label %498

496:                                              ; preds = %418, %412
  store float -1.000000e+00, ptr %305, align 4, !tbaa !98
  %497 = call i32 @psys_get_particle_state(ptr noundef nonnull %5, i32 noundef %383, ptr noundef nonnull %10, i32 noundef 1) #8
  br label %498

498:                                              ; preds = %473, %494, %496
  call void @mul_qt_v3(ptr noundef nonnull %306, ptr noundef nonnull %394) #8
  %499 = load i16, ptr %38, align 2, !tbaa !53
  %500 = and i16 %499, 128
  %501 = icmp eq i16 %500, 0
  br i1 %501, label %510, label %502

502:                                              ; preds = %498
  %503 = load float, ptr %380, align 4, !tbaa !66
  %504 = load float, ptr %394, align 4, !tbaa !66
  %505 = fmul float %503, %504
  store float %505, ptr %394, align 4, !tbaa !66
  %506 = load float, ptr %399, align 4, !tbaa !66
  %507 = fmul float %503, %506
  store float %507, ptr %399, align 4, !tbaa !66
  %508 = load float, ptr %401, align 4, !tbaa !66
  %509 = fmul float %503, %508
  store float %509, ptr %401, align 4, !tbaa !66
  br label %510

510:                                              ; preds = %502, %498
  %511 = load float, ptr %10, align 4, !tbaa !66
  %512 = load float, ptr %394, align 4, !tbaa !66
  %513 = fadd float %511, %512
  store float %513, ptr %394, align 4, !tbaa !66
  %514 = load float, ptr %307, align 4, !tbaa !66
  %515 = load float, ptr %399, align 4, !tbaa !66
  %516 = fadd float %514, %515
  store float %516, ptr %399, align 4, !tbaa !66
  %517 = load float, ptr %308, align 4, !tbaa !66
  %518 = load float, ptr %401, align 4, !tbaa !66
  %519 = fadd float %517, %518
  store float %519, ptr %401, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  %520 = add nuw nsw i64 %392, 1
  %521 = icmp eq i64 %520, %311
  br i1 %521, label %384, label %391, !llvm.loop !99

522:                                              ; preds = %385, %550
  %523 = phi i64 [ 0, %385 ], [ %551, %550 ]
  %524 = trunc i64 %523 to i32
  %525 = getelementptr inbounds %struct.MPoly, ptr %249, i64 %523
  %526 = getelementptr inbounds %struct.MPoly, ptr %388, i64 %523
  %527 = add nsw i32 %386, %524
  %528 = trunc i64 %523 to i32
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %237, i32 noundef %528, i32 noundef %527, i32 noundef 1) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %526, ptr noundef nonnull align 4 dereferenceable(12) %525, i64 12, i1 false), !tbaa.struct !100
  %529 = load i32, ptr %526, align 4, !tbaa !103
  %530 = add nsw i32 %529, %389
  store i32 %530, ptr %526, align 4, !tbaa !103
  %531 = load i32, ptr %525, align 4, !tbaa !103
  %532 = getelementptr inbounds %struct.MPoly, ptr %388, i64 %523, i32 1
  %533 = load i32, ptr %532, align 4, !tbaa !105
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %237, i32 noundef %531, i32 noundef %530, i32 noundef %533) #8
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %550, label %535

535:                                              ; preds = %522
  %536 = sext i32 %530 to i64
  %537 = getelementptr inbounds %struct.MLoop, ptr %252, i64 %536
  %538 = sext i32 %531 to i64
  %539 = getelementptr inbounds %struct.MLoop, ptr %255, i64 %538
  br label %540

540:                                              ; preds = %535, %540
  %541 = phi i32 [ %546, %540 ], [ %533, %535 ]
  %542 = phi ptr [ %547, %540 ], [ %537, %535 ]
  %543 = phi ptr [ %548, %540 ], [ %539, %535 ]
  %544 = load i32, ptr %543, align 4, !tbaa !106
  %545 = add i32 %544, %390
  store i32 %545, ptr %542, align 4, !tbaa !106
  %546 = add nsw i32 %541, -1
  %547 = getelementptr inbounds %struct.MLoop, ptr %542, i64 1
  %548 = getelementptr inbounds %struct.MLoop, ptr %543, i64 1
  %549 = icmp eq i32 %546, 0
  br i1 %549, label %550, label %540, !llvm.loop !108

550:                                              ; preds = %540, %522
  %551 = add nuw nsw i64 %523, 1
  %552 = icmp eq i64 %551, %312
  br i1 %552, label %553, label %522, !llvm.loop !109

553:                                              ; preds = %550, %384
  %554 = add nsw i32 %315, 1
  br label %555

555:                                              ; preds = %368, %363, %356, %553
  %556 = phi i32 [ %554, %553 ], [ %315, %356 ], [ %315, %363 ], [ %315, %368 ]
  %557 = add nuw nsw i64 %314, 1
  %558 = icmp eq i64 %557, %310
  br i1 %558, label %559, label %313, !llvm.loop !110

559:                                              ; preds = %555, %234
  call void @CDDM_calc_edges(ptr noundef %237) #8
  %560 = load ptr, ptr %210, align 8, !tbaa !84
  %561 = icmp eq ptr %560, null
  br i1 %561, label %563, label %562

562:                                              ; preds = %559
  call void @end_latt_deform(ptr noundef nonnull %560) #8
  store ptr null, ptr %210, align 8, !tbaa !84
  br label %563

563:                                              ; preds = %562, %559
  %564 = icmp eq ptr %112, null
  br i1 %564, label %567, label %565

565:                                              ; preds = %563
  %566 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %566(ptr noundef nonnull %112) #8
  br label %567

567:                                              ; preds = %565, %563
  %568 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 16
  %569 = load i32, ptr %568, align 8, !tbaa !111
  %570 = or i32 %569, 4
  store i32 %570, ptr %568, align 8, !tbaa !111
  br label %571

571:                                              ; preds = %51, %23, %25, %33, %567, %22
  %572 = phi ptr [ %2, %22 ], [ %237, %567 ], [ %2, %33 ], [ %2, %25 ], [ %2, %23 ], [ %2, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #8
  ret ptr %572
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 3
  store i16 57, ptr %2, align 2, !tbaa !53
  %3 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 2
  store i16 1, ptr %3, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 4
  store i16 2, ptr %5, align 4, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 109
  %8 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = sext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %14
  %20 = icmp eq i32 %1, 0
  %21 = select i1 %20, i32 1, i32 2
  %22 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  br label %23

23:                                               ; preds = %19, %39
  %24 = phi ptr [ %17, %19 ], [ %40, %39 ]
  %25 = getelementptr inbounds %struct.ModifierData, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !112
  %27 = icmp eq i32 %26, 19
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !113
  %31 = icmp eq ptr %30, %12
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr %22, align 8, !tbaa !55
  %34 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %33, ptr noundef nonnull %24, i32 noundef %21) #8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 1, i32 2
  br label %37

37:                                               ; preds = %28, %32
  %38 = phi i32 [ %36, %32 ], [ 0, %28 ]
  switch i32 %38, label %43 [
    i32 0, label %39
    i32 2, label %42
  ]

39:                                               ; preds = %23, %37
  %40 = load ptr, ptr %24, align 8, !tbaa !61
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %23, !llvm.loop !115

42:                                               ; preds = %39, %37
  br label %43

43:                                               ; preds = %37, %42, %14, %6, %2
  %44 = phi i8 [ 1, %2 ], [ 1, %6 ], [ 0, %14 ], [ 0, %42 ], [ 1, %37 ]
  ret i8 %44
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #8
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #8
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #8
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @psys_get_child_size(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare float @BLI_hash_frand(i32 noundef) local_unnamed_addr #2

declare void @psys_get_particle_on_path(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CDDM_calc_edges(ptr noundef) local_unnamed_addr #2

declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #6

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!34 = !{!35, !40, i64 956}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !40, i64 124}
!47 = !{!"ParticleInstanceModifierData", !48, i64 0, !37, i64 112, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !44, i64 128, !44, i64 132}
!48 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!49 = !{!47, !37, i64 112}
!50 = !{!47, !40, i64 120}
!51 = !{!52, !41, i64 320}
!52 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!53 = !{!47, !40, i64 122}
!54 = !{!52, !41, i64 328}
!55 = !{!48, !37, i64 96}
!56 = !{!57, !37, i64 0}
!57 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !44, i64 40}
!58 = !{!57, !37, i64 8}
!59 = !{!57, !37, i64 16}
!60 = !{!57, !37, i64 24}
!61 = !{!37, !37, i64 0}
!62 = !{!52, !37, i64 24}
!63 = !{!64, !44, i64 180}
!64 = !{!"ParticleData", !65, i64 0, !65, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !41, i64 152, !41, i64 156, !38, i64 160, !44, i64 176, !44, i64 180, !44, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!65 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !44, i64 52}
!66 = !{!44, !44, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!52, !37, i64 32}
!71 = distinct !{!71, !68, !69}
!72 = !{!73, !37, i64 1104}
!73 = !{!"DerivedMesh", !74, i64 0, !74, i64 200, !74, i64 400, !74, i64 600, !74, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!74 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!75 = !{!73, !37, i64 1136}
!76 = !{!73, !37, i64 1128}
!77 = !{!52, !37, i64 16}
!78 = !{!79, !40, i64 188}
!79 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !44, i64 232, !44, i64 236, !38, i64 240, !38, i64 248, !44, i64 256, !44, i64 260, !44, i64 264, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !38, i64 376, !44, i64 388, !44, i64 392, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !44, i64 412, !38, i64 416, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !41, i64 444, !41, i64 448, !44, i64 452, !44, i64 456, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !44, i64 480, !44, i64 484, !44, i64 488, !44, i64 492, !44, i64 496, !44, i64 500, !44, i64 504, !44, i64 508, !44, i64 512, !44, i64 516, !44, i64 520, !44, i64 524, !44, i64 528, !44, i64 532, !44, i64 536, !44, i64 540, !44, i64 544, !44, i64 548, !38, i64 552, !44, i64 560, !44, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !43, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!80 = !{!81, !41, i64 4}
!81 = !{!"ChildParticle", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 24, !38, i64 40, !44, i64 56, !44, i64 60}
!82 = !{!64, !40, i64 198}
!83 = distinct !{!83, !68, !69}
!84 = !{!52, !37, i64 136}
!85 = !{!52, !41, i64 316}
!86 = !{!52, !37, i64 576}
!87 = !{!88, !41, i64 16}
!88 = !{!"PointCache", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !40, i64 60, !40, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !43, i64 1288, !37, i64 1304, !37, i64 1312}
!89 = !{!73, !37, i64 1520}
!90 = !{!73, !37, i64 1168}
!91 = !{!73, !37, i64 1200}
!92 = !{!73, !37, i64 1192}
!93 = !{i64 0, i64 12, !94, i64 12, i64 6, !94, i64 18, i64 1, !94, i64 19, i64 1, !94}
!94 = !{!38, !38, i64 0}
!95 = !{!47, !44, i64 132}
!96 = !{!52, !41, i64 308}
!97 = !{!47, !44, i64 128}
!98 = !{!65, !44, i64 52}
!99 = distinct !{!99, !68, !69}
!100 = !{i64 0, i64 4, !101, i64 4, i64 4, !101, i64 8, i64 2, !102, i64 10, i64 1, !94, i64 11, i64 1, !94}
!101 = !{!41, !41, i64 0}
!102 = !{!40, !40, i64 0}
!103 = !{!104, !41, i64 0}
!104 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!105 = !{!104, !41, i64 4}
!106 = !{!107, !41, i64 0}
!107 = !{!"MLoop", !41, i64 0, !41, i64 4}
!108 = distinct !{!108, !68, !69}
!109 = distinct !{!109, !68, !69}
!110 = distinct !{!110, !68, !69}
!111 = !{!73, !41, i64 1056}
!112 = !{!48, !41, i64 16}
!113 = !{!114, !37, i64 112}
!114 = !{!"ParticleSystemModifierData", !48, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!115 = distinct !{!115, !68, !69}
