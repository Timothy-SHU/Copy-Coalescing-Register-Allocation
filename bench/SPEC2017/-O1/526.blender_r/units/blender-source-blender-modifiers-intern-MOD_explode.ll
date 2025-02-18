; ModuleID = 'blender/source/blender/modifiers/intern/MOD_explode.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_explode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExplodeModifierData = type { %struct.ModifierData, ptr, i16, i16, float, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }

@modifierType_Explode = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Explode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ExplodeModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192, i32 2, i32 1, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr null, ptr @dependsOnTime, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"explode_facepa\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"explode_vertpa\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"explode_facesplit\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"explode_vertpa2\00", align 1
@__func__.cutEdges = private unnamed_addr constant [9 x i8] c"cutEdges\00", align 1
@add_faces = internal unnamed_addr constant [24 x i16] [i16 0, i16 0, i16 0, i16 2, i16 0, i16 1, i16 2, i16 2, i16 0, i16 2, i16 1, i16 2, i16 2, i16 2, i16 2, i16 3, i16 0, i16 0, i16 0, i16 1, i16 0, i16 1, i16 1, i16 2], align 16
@__func__.explodeMesh = private unnamed_addr constant [12 x i8] c"explodeMesh\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.ExplodeModifierData, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca %struct.MVert, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %4 ]
  %13 = phi ptr [ %17, %11 ], [ null, %4 ]
  %14 = getelementptr inbounds %struct.ModifierData, ptr %12, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, 19
  %17 = select i1 %16, ptr %12, ptr %13
  %18 = load ptr, ptr %12, align 8, !tbaa !43
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %11, !llvm.loop !45

20:                                               ; preds = %11, %4
  %21 = phi ptr [ null, %4 ], [ %17, %11 ]
  tail call void @DM_ensure_tessface(ptr noundef %2) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %1258, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %1258, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 26
  %29 = load i32, ptr %28, align 8, !tbaa !50
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %1258, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = icmp eq ptr %33, null
  br i1 %34, label %1258, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = icmp eq ptr %37, null
  br i1 %38, label %1258, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !55
  %42 = icmp eq ptr %41, null
  br i1 %42, label %1258, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 6
  %49 = load i16, ptr %48, align 4, !tbaa !56
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %54 = load i16, ptr %53, align 8, !tbaa !57
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !43
  %59 = tail call i64 %58(ptr noundef nonnull %45) #9
  %60 = lshr i64 %59, 2
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  %63 = tail call i32 %62(ptr noundef %2) #9
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %315, label %66

66:                                               ; preds = %57, %52, %47, %43
  %67 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 6
  %68 = load i16, ptr %67, align 4, !tbaa !56
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = and i16 %68, -2
  store i16 %72, ptr %67, align 4, !tbaa !56
  br label %73

73:                                               ; preds = %71, %66
  %74 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %75 = load i16, ptr %74, align 8, !tbaa !57
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = and i16 %75, -2
  store i16 %79, ptr %74, align 8, !tbaa !57
  br label %80

80:                                               ; preds = %78, %73
  %81 = load ptr, ptr %24, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %83 = load ptr, ptr %82, align 8, !tbaa !61
  %84 = tail call ptr %83(ptr noundef %2) #9
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 33
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  %87 = tail call ptr %86(ptr noundef %2) #9
  %88 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  %90 = tail call i32 %89(ptr noundef %2) #9
  %91 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %92 = load ptr, ptr %91, align 8, !tbaa !63
  %93 = tail call i32 %92(ptr noundef %2) #9
  %94 = load ptr, ptr %24, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %94, i64 0, i32 26
  %96 = load i32, ptr %95, align 8, !tbaa !50
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %81, i64 0, i32 23
  %98 = load i32, ptr %97, align 4, !tbaa !64
  %99 = tail call ptr @BLI_rng_new_srandom(i32 noundef %98) #9
  %100 = load ptr, ptr %44, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %80
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %103(ptr noundef nonnull %100) #9
  br label %104

104:                                              ; preds = %102, %80
  %105 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %106 = sext i32 %90 to i64
  %107 = shl nsw i64 %106, 2
  %108 = tail call ptr %105(i64 noundef %107, ptr noundef nonnull @.str) #9
  store ptr %108, ptr %44, align 8, !tbaa !34
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %110 = sext i32 %93 to i64
  %111 = shl nsw i64 %110, 2
  %112 = tail call ptr %109(i64 noundef %111, ptr noundef nonnull @.str.1) #9
  %113 = icmp sgt i32 %90, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = zext nneg i32 %90 to i64
  br label %120

116:                                              ; preds = %120, %104
  %117 = icmp sgt i32 %93, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %116
  %119 = zext nneg i32 %93 to i64
  br label %125

120:                                              ; preds = %114, %120
  %121 = phi i64 [ 0, %114 ], [ %123, %120 ]
  %122 = getelementptr inbounds i32, ptr %108, i64 %121
  store i32 %96, ptr %122, align 4, !tbaa !65
  %123 = add nuw nsw i64 %121, 1
  %124 = icmp eq i64 %123, %115
  br i1 %124, label %116, label %120, !llvm.loop !66

125:                                              ; preds = %118, %125
  %126 = phi i64 [ 0, %118 ], [ %128, %125 ]
  %127 = getelementptr inbounds i32, ptr %112, i64 %126
  store i32 %96, ptr %127, align 4, !tbaa !65
  %128 = add nuw nsw i64 %126, 1
  %129 = icmp eq i64 %128, %119
  br i1 %129, label %130, label %125, !llvm.loop !67

130:                                              ; preds = %125, %116
  %131 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !68
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %163, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %136 = load ptr, ptr %135, align 8, !tbaa !69
  %137 = tail call ptr %136(ptr noundef %2, i32 noundef 2) #9
  %138 = icmp eq ptr %137, null
  br i1 %138, label %163, label %139

139:                                              ; preds = %134
  %140 = load i16, ptr %131, align 2, !tbaa !68
  %141 = sext i16 %140 to i32
  %142 = add nsw i32 %141, -1
  %143 = icmp sgt i32 %93, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 4
  %146 = zext nneg i32 %93 to i64
  br label %147

147:                                              ; preds = %144, %159
  %148 = phi i64 [ 0, %144 ], [ %160, %159 ]
  %149 = phi ptr [ %137, %144 ], [ %161, %159 ]
  %150 = tail call float @BLI_rng_get_float(ptr noundef %99) #9
  %151 = load float, ptr %145, align 4, !tbaa !70
  %152 = fsub float 1.000000e+00, %151
  %153 = fmul float %151, 5.000000e-01
  %154 = tail call float @llvm.fmuladd.f32(float %152, float %150, float %153)
  %155 = tail call float @defvert_find_weight(ptr noundef nonnull %149, i32 noundef %142) #9
  %156 = fcmp olt float %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = getelementptr inbounds i32, ptr %112, i64 %148
  store i32 -1, ptr %158, align 4, !tbaa !65
  br label %159

159:                                              ; preds = %157, %147
  %160 = add nuw nsw i64 %148, 1
  %161 = getelementptr inbounds %struct.MDeformVert, ptr %149, i64 1
  %162 = icmp eq i64 %160, %146
  br i1 %162, label %163, label %147, !llvm.loop !71

163:                                              ; preds = %159, %139, %134, %130
  %164 = tail call ptr @BLI_kdtree_new(i32 noundef %96) #9
  %165 = icmp sgt i32 %96, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.ParticleSystem, ptr %81, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !54
  %169 = getelementptr inbounds %struct.ParticleSystem, ptr %81, i64 0, i32 2
  br label %170

170:                                              ; preds = %166, %170
  %171 = phi ptr [ %168, %166 ], [ %185, %170 ]
  %172 = phi i32 [ 0, %166 ], [ %184, %170 ]
  %173 = load ptr, ptr %169, align 8, !tbaa !53
  %174 = getelementptr inbounds %struct.ParticleSettings, ptr %173, i64 0, i32 8
  %175 = load i16, ptr %174, align 2, !tbaa !72
  %176 = sext i16 %175 to i32
  %177 = getelementptr inbounds %struct.ParticleData, ptr %171, i64 0, i32 9
  %178 = load i32, ptr %177, align 8, !tbaa !75
  %179 = getelementptr inbounds %struct.ParticleData, ptr %171, i64 0, i32 10
  %180 = load i32, ptr %179, align 4, !tbaa !78
  %181 = getelementptr inbounds %struct.ParticleData, ptr %171, i64 0, i32 11
  %182 = getelementptr inbounds %struct.ParticleData, ptr %171, i64 0, i32 12
  %183 = load float, ptr %182, align 8, !tbaa !79
  call void @psys_particle_on_emitter(ptr noundef nonnull %21, i32 noundef %176, i32 noundef %178, i32 noundef %180, ptr noundef nonnull %181, float noundef %183, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #9
  call void @BLI_kdtree_insert(ptr noundef %164, i32 noundef %172, ptr noundef nonnull %7) #9
  %184 = add nuw nsw i32 %172, 1
  %185 = getelementptr inbounds %struct.ParticleData, ptr %171, i64 1
  %186 = icmp eq i32 %184, %96
  br i1 %186, label %187, label %170, !llvm.loop !80

187:                                              ; preds = %170, %163
  call void @BLI_kdtree_balance(ptr noundef %164) #9
  %188 = icmp sgt i32 %90, 0
  br i1 %188, label %189, label %310

189:                                              ; preds = %187
  %190 = getelementptr inbounds float, ptr %6, i64 1
  %191 = getelementptr inbounds float, ptr %6, i64 2
  %192 = zext nneg i32 %90 to i64
  br label %193

193:                                              ; preds = %189, %306
  %194 = phi i64 [ 0, %189 ], [ %307, %306 ]
  %195 = phi ptr [ %87, %189 ], [ %308, %306 ]
  %196 = phi i32 [ 0, %189 ], [ %272, %306 ]
  %197 = load i32, ptr %195, align 4, !tbaa !81
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.MVert, ptr %84, i64 %198
  %200 = getelementptr inbounds %struct.MFace, ptr %195, i64 0, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !83
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.MVert, ptr %84, i64 %202
  %204 = load float, ptr %199, align 4, !tbaa !84
  %205 = load float, ptr %203, align 4, !tbaa !84
  %206 = fadd float %204, %205
  store float %206, ptr %6, align 4, !tbaa !84
  %207 = getelementptr inbounds float, ptr %199, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !84
  %209 = getelementptr inbounds float, ptr %203, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !84
  %211 = fadd float %208, %210
  store float %211, ptr %190, align 4, !tbaa !84
  %212 = getelementptr inbounds float, ptr %199, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !84
  %214 = getelementptr inbounds float, ptr %203, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !84
  %216 = fadd float %213, %215
  store float %216, ptr %191, align 4, !tbaa !84
  %217 = getelementptr inbounds %struct.MFace, ptr %195, i64 0, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !85
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.MVert, ptr %84, i64 %219
  %221 = load float, ptr %220, align 4, !tbaa !84
  %222 = fadd float %206, %221
  store float %222, ptr %6, align 4, !tbaa !84
  %223 = getelementptr inbounds float, ptr %220, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !84
  %225 = fadd float %211, %224
  store float %225, ptr %190, align 4, !tbaa !84
  %226 = getelementptr inbounds float, ptr %220, i64 2
  %227 = load float, ptr %226, align 4, !tbaa !84
  %228 = fadd float %216, %227
  store float %228, ptr %191, align 4, !tbaa !84
  %229 = getelementptr inbounds %struct.MFace, ptr %195, i64 0, i32 3
  %230 = load i32, ptr %229, align 4, !tbaa !86
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %246, label %232

232:                                              ; preds = %193
  %233 = zext i32 %230 to i64
  %234 = getelementptr inbounds %struct.MVert, ptr %84, i64 %233
  %235 = load float, ptr %234, align 4, !tbaa !84
  %236 = fadd float %222, %235
  store float %236, ptr %6, align 4, !tbaa !84
  %237 = getelementptr inbounds float, ptr %234, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !84
  %239 = fadd float %225, %238
  store float %239, ptr %190, align 4, !tbaa !84
  %240 = getelementptr inbounds float, ptr %234, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !84
  %242 = fadd float %228, %241
  store float %242, ptr %191, align 4, !tbaa !84
  %243 = fmul float %236, 2.500000e-01
  store float %243, ptr %6, align 4, !tbaa !84
  %244 = fmul float %239, 2.500000e-01
  store float %244, ptr %190, align 4, !tbaa !84
  %245 = fmul float %242, 2.500000e-01
  br label %250

246:                                              ; preds = %193
  %247 = fmul float %222, 0x3FD5555560000000
  store float %247, ptr %6, align 4, !tbaa !84
  %248 = fmul float %225, 0x3FD5555560000000
  store float %248, ptr %190, align 4, !tbaa !84
  %249 = fmul float %228, 0x3FD5555560000000
  br label %250

250:                                              ; preds = %246, %232
  %251 = phi float [ %245, %232 ], [ %249, %246 ]
  store float %251, ptr %191, align 4, !tbaa !84
  %252 = call i32 @BLI_kdtree_find_nearest(ptr noundef %164, ptr noundef nonnull %6, ptr noundef null) #9
  %253 = load i32, ptr %195, align 4, !tbaa !81
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, ptr %112, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !65
  %257 = load i32, ptr %200, align 4, !tbaa !83
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32, ptr %112, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !65
  %261 = load i32, ptr %217, align 4, !tbaa !85
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i32, ptr %112, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !65
  %265 = load i32, ptr %229, align 4, !tbaa !86
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %250
  %268 = zext i32 %265 to i64
  %269 = getelementptr inbounds i32, ptr %112, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !65
  br label %271

271:                                              ; preds = %267, %250
  %272 = phi i32 [ %270, %267 ], [ %196, %250 ]
  %273 = icmp sgt i32 %256, -1
  %274 = icmp sgt i32 %260, -1
  %275 = select i1 %273, i1 %274, i1 false
  %276 = icmp sgt i32 %264, -1
  %277 = select i1 %275, i1 %276, i1 false
  %278 = icmp sgt i32 %272, -1
  %279 = select i1 %266, i1 true, i1 %278
  %280 = select i1 %277, i1 %279, i1 false
  br i1 %280, label %281, label %283

281:                                              ; preds = %271
  %282 = getelementptr inbounds i32, ptr %108, i64 %194
  store i32 %252, ptr %282, align 4, !tbaa !65
  br label %283

283:                                              ; preds = %281, %271
  br i1 %273, label %284, label %288

284:                                              ; preds = %283
  %285 = load i32, ptr %195, align 4, !tbaa !81
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, ptr %112, i64 %286
  store i32 %252, ptr %287, align 4, !tbaa !65
  br label %288

288:                                              ; preds = %284, %283
  br i1 %274, label %289, label %293

289:                                              ; preds = %288
  %290 = load i32, ptr %200, align 4, !tbaa !83
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32, ptr %112, i64 %291
  store i32 %252, ptr %292, align 4, !tbaa !65
  br label %293

293:                                              ; preds = %289, %288
  br i1 %276, label %294, label %298

294:                                              ; preds = %293
  %295 = load i32, ptr %217, align 4, !tbaa !85
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, ptr %112, i64 %296
  store i32 %252, ptr %297, align 4, !tbaa !65
  br label %298

298:                                              ; preds = %294, %293
  %299 = load i32, ptr %229, align 4, !tbaa !86
  %300 = icmp ne i32 %299, 0
  %301 = icmp sgt i32 %272, -1
  %302 = select i1 %300, i1 %301, i1 false
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = zext i32 %299 to i64
  %305 = getelementptr inbounds i32, ptr %112, i64 %304
  store i32 %252, ptr %305, align 4, !tbaa !65
  br label %306

306:                                              ; preds = %303, %298
  %307 = add nuw nsw i64 %194, 1
  %308 = getelementptr inbounds %struct.MFace, ptr %195, i64 1
  %309 = icmp eq i64 %307, %192
  br i1 %309, label %310, label %193, !llvm.loop !87

310:                                              ; preds = %306, %187
  %311 = icmp eq ptr %112, null
  br i1 %311, label %314, label %312

312:                                              ; preds = %310
  %313 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %313(ptr noundef nonnull %112) #9
  br label %314

314:                                              ; preds = %310, %312
  call void @BLI_kdtree_free(ptr noundef %164) #9
  call void @BLI_rng_free(ptr noundef %99) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  br label %315

315:                                              ; preds = %314, %57
  %316 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %317 = load i16, ptr %316, align 8, !tbaa !57
  %318 = and i16 %317, 4
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %1254, label %320

320:                                              ; preds = %315
  %321 = load ptr, ptr %44, align 8, !tbaa !34
  %322 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 33
  %323 = load ptr, ptr %322, align 8, !tbaa !62
  %324 = call ptr %323(ptr noundef %2) #9
  %325 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %326 = load ptr, ptr %325, align 8, !tbaa !63
  %327 = call i32 %326(ptr noundef %2) #9
  %328 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %329 = load ptr, ptr %328, align 8, !tbaa !58
  %330 = call i32 %329(ptr noundef %2) #9
  %331 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %332 = sext i32 %330 to i64
  %333 = shl nsw i64 %332, 2
  %334 = call ptr %331(i64 noundef %333, ptr noundef nonnull @.str.2) #9
  %335 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %336 = sext i32 %327 to i64
  %337 = shl nsw i64 %336, 2
  %338 = call ptr %335(i64 noundef %337, ptr noundef nonnull @.str.3) #9
  %339 = load ptr, ptr %44, align 8, !tbaa !34
  %340 = call ptr @BLI_edgehash_new(ptr noundef nonnull @__func__.cutEdges) #9
  %341 = icmp sgt i32 %330, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %320
  %343 = zext nneg i32 %330 to i64
  br label %346

344:                                              ; preds = %371, %320
  %345 = icmp sgt i32 %330, 0
  br i1 %345, label %375, label %450

346:                                              ; preds = %342, %371
  %347 = phi i64 [ 0, %342 ], [ %372, %371 ]
  %348 = phi ptr [ %324, %342 ], [ %373, %371 ]
  %349 = getelementptr inbounds i32, ptr %339, i64 %347
  %350 = load i32, ptr %349, align 4, !tbaa !65
  %351 = load i32, ptr %348, align 4, !tbaa !81
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i32, ptr %338, i64 %352
  store i32 %350, ptr %353, align 4, !tbaa !65
  %354 = load i32, ptr %349, align 4, !tbaa !65
  %355 = getelementptr inbounds %struct.MFace, ptr %348, i64 0, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !83
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds i32, ptr %338, i64 %357
  store i32 %354, ptr %358, align 4, !tbaa !65
  %359 = load i32, ptr %349, align 4, !tbaa !65
  %360 = getelementptr inbounds %struct.MFace, ptr %348, i64 0, i32 2
  %361 = load i32, ptr %360, align 4, !tbaa !85
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i32, ptr %338, i64 %362
  store i32 %359, ptr %363, align 4, !tbaa !65
  %364 = getelementptr inbounds %struct.MFace, ptr %348, i64 0, i32 3
  %365 = load i32, ptr %364, align 4, !tbaa !86
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %371, label %367

367:                                              ; preds = %346
  %368 = load i32, ptr %349, align 4, !tbaa !65
  %369 = zext i32 %365 to i64
  %370 = getelementptr inbounds i32, ptr %338, i64 %369
  store i32 %368, ptr %370, align 4, !tbaa !65
  br label %371

371:                                              ; preds = %367, %346
  %372 = add nuw nsw i64 %347, 1
  %373 = getelementptr inbounds %struct.MFace, ptr %348, i64 1
  %374 = icmp eq i64 %372, %343
  br i1 %374, label %344, label %346, !llvm.loop !88

375:                                              ; preds = %344, %445
  %376 = phi ptr [ %447, %445 ], [ %324, %344 ]
  %377 = phi ptr [ %448, %445 ], [ %334, %344 ]
  %378 = phi i32 [ %446, %445 ], [ 0, %344 ]
  %379 = load i32, ptr %376, align 4, !tbaa !81
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds i32, ptr %338, i64 %380
  %382 = load i32, ptr %381, align 4, !tbaa !65
  %383 = getelementptr inbounds %struct.MFace, ptr %376, i64 0, i32 1
  %384 = load i32, ptr %383, align 4, !tbaa !83
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds i32, ptr %338, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !65
  %388 = getelementptr inbounds %struct.MFace, ptr %376, i64 0, i32 2
  %389 = load i32, ptr %388, align 4, !tbaa !85
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds i32, ptr %338, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !65
  %393 = icmp eq i32 %382, %387
  br i1 %393, label %398, label %394

394:                                              ; preds = %375
  %395 = call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %340, i32 noundef %379, i32 noundef %384, ptr noundef null) #9
  %396 = load i32, ptr %377, align 4, !tbaa !65
  %397 = or i32 %396, 1
  store i32 %397, ptr %377, align 4, !tbaa !65
  br label %398

398:                                              ; preds = %394, %375
  %399 = icmp eq i32 %387, %392
  br i1 %399, label %406, label %400

400:                                              ; preds = %398
  %401 = load i32, ptr %383, align 4, !tbaa !83
  %402 = load i32, ptr %388, align 4, !tbaa !85
  %403 = call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %340, i32 noundef %401, i32 noundef %402, ptr noundef null) #9
  %404 = load i32, ptr %377, align 4, !tbaa !65
  %405 = or i32 %404, 2
  store i32 %405, ptr %377, align 4, !tbaa !65
  br label %406

406:                                              ; preds = %400, %398
  %407 = getelementptr inbounds %struct.MFace, ptr %376, i64 0, i32 3
  %408 = load i32, ptr %407, align 4, !tbaa !86
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %435, label %410

410:                                              ; preds = %406
  %411 = zext i32 %408 to i64
  %412 = getelementptr inbounds i32, ptr %338, i64 %411
  %413 = load i32, ptr %412, align 4, !tbaa !65
  %414 = icmp eq i32 %392, %413
  br i1 %414, label %420, label %415

415:                                              ; preds = %410
  %416 = load i32, ptr %388, align 4, !tbaa !85
  %417 = call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %340, i32 noundef %416, i32 noundef %408, ptr noundef null) #9
  %418 = load i32, ptr %377, align 4, !tbaa !65
  %419 = or i32 %418, 4
  store i32 %419, ptr %377, align 4, !tbaa !65
  br label %420

420:                                              ; preds = %415, %410
  %421 = icmp eq i32 %382, %413
  br i1 %421, label %428, label %422

422:                                              ; preds = %420
  %423 = load i32, ptr %376, align 4, !tbaa !81
  %424 = load i32, ptr %407, align 4, !tbaa !86
  %425 = call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %340, i32 noundef %423, i32 noundef %424, ptr noundef null) #9
  %426 = load i32, ptr %377, align 4, !tbaa !65
  %427 = or i32 %426, 8
  store i32 %427, ptr %377, align 4, !tbaa !65
  br label %428

428:                                              ; preds = %422, %420
  %429 = load i32, ptr %377, align 4, !tbaa !65
  %430 = icmp eq i32 %429, 15
  br i1 %430, label %431, label %445

431:                                              ; preds = %428
  %432 = load i32, ptr %376, align 4, !tbaa !81
  %433 = load i32, ptr %388, align 4, !tbaa !85
  %434 = call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %340, i32 noundef %432, i32 noundef %433, ptr noundef null) #9
  br label %445

435:                                              ; preds = %406
  %436 = load i32, ptr %377, align 4, !tbaa !65
  %437 = or i32 %436, 16
  store i32 %437, ptr %377, align 4, !tbaa !65
  %438 = icmp eq i32 %382, %392
  br i1 %438, label %445, label %439

439:                                              ; preds = %435
  %440 = load i32, ptr %376, align 4, !tbaa !81
  %441 = load i32, ptr %388, align 4, !tbaa !85
  %442 = call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %340, i32 noundef %440, i32 noundef %441, ptr noundef null) #9
  %443 = load i32, ptr %377, align 4, !tbaa !65
  %444 = or i32 %443, 4
  store i32 %444, ptr %377, align 4, !tbaa !65
  br label %445

445:                                              ; preds = %439, %435, %431, %428
  %446 = add nuw nsw i32 %378, 1
  %447 = getelementptr inbounds %struct.MFace, ptr %376, i64 1
  %448 = getelementptr inbounds i32, ptr %377, i64 1
  %449 = icmp eq i32 %446, %330
  br i1 %449, label %450, label %375, !llvm.loop !89

450:                                              ; preds = %445, %344
  %451 = call ptr @BLI_edgehashIterator_new(ptr noundef %340) #9
  %452 = getelementptr inbounds %struct.EdgeHashIterator, ptr %451, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !90
  %454 = icmp eq ptr %453, null
  br i1 %454, label %467, label %455

455:                                              ; preds = %450
  %456 = sext i32 %327 to i64
  br label %457

457:                                              ; preds = %455, %457
  %458 = phi i64 [ %456, %455 ], [ %462, %457 ]
  %459 = phi ptr [ %453, %455 ], [ %463, %457 ]
  %460 = inttoptr i64 %458 to ptr
  %461 = getelementptr inbounds %struct._eh_Entry, ptr %459, i64 0, i32 3
  store ptr %460, ptr %461, align 8, !tbaa !92
  %462 = add i64 %458, 1
  call void @BLI_edgehashIterator_step(ptr noundef %451) #9
  %463 = load ptr, ptr %452, align 8, !tbaa !90
  %464 = icmp eq ptr %463, null
  br i1 %464, label %465, label %457, !llvm.loop !94

465:                                              ; preds = %457
  %466 = trunc i64 %462 to i32
  br label %467

467:                                              ; preds = %465, %450
  %468 = phi i32 [ %327, %450 ], [ %466, %465 ]
  call void @BLI_edgehashIterator_free(ptr noundef %451) #9
  %469 = icmp sgt i32 %330, 0
  br i1 %469, label %470, label %483

470:                                              ; preds = %467, %470
  %471 = phi ptr [ %481, %470 ], [ %334, %467 ]
  %472 = phi i32 [ %479, %470 ], [ 0, %467 ]
  %473 = phi i32 [ %480, %470 ], [ 0, %467 ]
  %474 = load i32, ptr %471, align 4, !tbaa !65
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [24 x i16], ptr @add_faces, i64 0, i64 %475
  %477 = load i16, ptr %476, align 2, !tbaa !95
  %478 = sext i16 %477 to i32
  %479 = add nsw i32 %472, %478
  %480 = add nuw nsw i32 %473, 1
  %481 = getelementptr inbounds i32, ptr %471, i64 1
  %482 = icmp eq i32 %480, %330
  br i1 %482, label %483, label %470, !llvm.loop !96

483:                                              ; preds = %470, %467
  %484 = phi i32 [ 0, %467 ], [ %479, %470 ]
  %485 = add nsw i32 %484, %330
  %486 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %468, i32 noundef 0, i32 noundef %485, i32 noundef 0, i32 noundef 0) #9
  %487 = getelementptr inbounds %struct.DerivedMesh, ptr %486, i64 0, i32 2
  %488 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %487, i32 noundef 5) #9
  %489 = icmp sgt i32 %327, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %483
  %491 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 28
  br label %492

492:                                              ; preds = %490, %492
  %493 = phi i32 [ 0, %490 ], [ %496, %492 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %494 = load ptr, ptr %491, align 8, !tbaa !97
  call void %494(ptr noundef %2, i32 noundef %493, ptr noundef nonnull %5) #9
  %495 = call ptr @CDDM_get_vert(ptr noundef %486, i32 noundef %493) #9
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %486, i32 noundef %493, i32 noundef %493, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %495, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  %496 = add nuw nsw i32 %493, 1
  %497 = icmp eq i32 %496, %327
  br i1 %497, label %498, label %492, !llvm.loop !100

498:                                              ; preds = %492, %483
  %499 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %500 = shl nsw i32 %484, 1
  %501 = add nsw i32 %500, %330
  %502 = sext i32 %501 to i64
  %503 = shl nsw i64 %502, 2
  %504 = call ptr %499(i64 noundef %503, ptr noundef nonnull @.str) #9
  store ptr %504, ptr %44, align 8, !tbaa !34
  %505 = call ptr @BLI_edgehashIterator_new(ptr noundef %340) #9
  %506 = getelementptr inbounds %struct.EdgeHashIterator, ptr %505, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !90
  %508 = icmp eq ptr %507, null
  br i1 %508, label %524, label %509

509:                                              ; preds = %498, %509
  %510 = phi ptr [ %522, %509 ], [ %507, %498 ]
  %511 = getelementptr inbounds %struct._eh_Entry, ptr %510, i64 0, i32 1
  %512 = load i32, ptr %511, align 8, !tbaa !101
  %513 = getelementptr inbounds %struct._eh_Entry, ptr %510, i64 0, i32 2
  %514 = load i32, ptr %513, align 4, !tbaa !102
  %515 = getelementptr inbounds %struct._eh_Entry, ptr %510, i64 0, i32 3
  %516 = load ptr, ptr %515, align 8, !tbaa !92
  %517 = ptrtoint ptr %516 to i64
  %518 = trunc i64 %517 to i32
  %519 = call ptr @CDDM_get_vert(ptr noundef %486, i32 noundef %514) #9
  %520 = call ptr @CDDM_get_vert(ptr noundef %486, i32 noundef %518) #9
  call void @DM_copy_vert_data(ptr noundef %486, ptr noundef %486, i32 noundef %514, i32 noundef %518, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %520, ptr noundef nonnull align 4 dereferenceable(20) %519, i64 20, i1 false), !tbaa.struct !98
  %521 = call ptr @CDDM_get_vert(ptr noundef %486, i32 noundef %512) #9
  call void @mid_v3_v3v3(ptr noundef %520, ptr noundef %520, ptr noundef %521) #9
  call void @BLI_edgehashIterator_step(ptr noundef %505) #9
  %522 = load ptr, ptr %506, align 8, !tbaa !90
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %509, !llvm.loop !103

524:                                              ; preds = %509, %498
  call void @BLI_edgehashIterator_free(ptr noundef %505) #9
  %525 = icmp sgt i32 %330, 0
  br i1 %525, label %526, label %541

526:                                              ; preds = %524
  %527 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 48
  %528 = icmp slt i32 %488, 1
  %529 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %530 = icmp slt i32 %488, 1
  %531 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %532 = icmp slt i32 %488, 1
  %533 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %534 = icmp slt i32 %488, 1
  %535 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %536 = icmp slt i32 %488, 1
  %537 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %538 = icmp slt i32 %488, 1
  %539 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %540 = zext nneg i32 %330 to i64
  br label %544

541:                                              ; preds = %1222, %524
  %542 = phi i32 [ 0, %524 ], [ %1229, %1222 ]
  %543 = icmp sgt i32 %542, 0
  br i1 %543, label %1233, label %1244

544:                                              ; preds = %526, %1222
  %545 = phi i64 [ 0, %526 ], [ %1230, %1222 ]
  %546 = phi i32 [ 0, %526 ], [ %609, %1222 ]
  %547 = phi i32 [ 0, %526 ], [ %608, %1222 ]
  %548 = phi i32 [ 0, %526 ], [ %607, %1222 ]
  %549 = phi i32 [ 0, %526 ], [ %606, %1222 ]
  %550 = phi i32 [ 0, %526 ], [ %605, %1222 ]
  %551 = phi i32 [ 0, %526 ], [ %604, %1222 ]
  %552 = phi i32 [ 0, %526 ], [ %603, %1222 ]
  %553 = phi i32 [ 0, %526 ], [ %602, %1222 ]
  %554 = phi ptr [ %334, %526 ], [ %1231, %1222 ]
  %555 = phi i32 [ 0, %526 ], [ %1229, %1222 ]
  %556 = load ptr, ptr %527, align 8, !tbaa !104
  %557 = trunc i64 %545 to i32
  %558 = call ptr %556(ptr noundef %2, i32 noundef %557, i32 noundef 4) #9
  %559 = load i32, ptr %554, align 4, !tbaa !65
  switch i32 %559, label %601 [
    i32 3, label %560
    i32 10, label %560
    i32 11, label %560
    i32 15, label %560
    i32 5, label %564
    i32 6, label %564
    i32 7, label %564
    i32 9, label %568
    i32 13, label %568
    i32 12, label %572
    i32 14, label %572
    i32 21, label %576
    i32 23, label %576
    i32 19, label %580
    i32 22, label %584
  ]

560:                                              ; preds = %544, %544, %544, %544
  %561 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 1
  %562 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 2
  %563 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 3
  br label %588

564:                                              ; preds = %544, %544, %544
  %565 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 1
  %566 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 2
  %567 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 3
  br label %588

568:                                              ; preds = %544, %544
  %569 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 3
  %570 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 1
  %571 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 2
  br label %588

572:                                              ; preds = %544, %544
  %573 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 2
  %574 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 3
  %575 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 1
  br label %588

576:                                              ; preds = %544, %544
  %577 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 1
  %578 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 2
  %579 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 3
  br label %588

580:                                              ; preds = %544
  %581 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 1
  %582 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 2
  %583 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 3
  br label %588

584:                                              ; preds = %544
  %585 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 2
  %586 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 1
  %587 = getelementptr inbounds %struct.MFace, ptr %558, i64 0, i32 3
  br label %588

588:                                              ; preds = %560, %564, %568, %572, %576, %580, %584
  %589 = phi ptr [ %587, %584 ], [ %583, %580 ], [ %579, %576 ], [ %575, %572 ], [ %571, %568 ], [ %558, %564 ], [ %563, %560 ]
  %590 = phi ptr [ %585, %584 ], [ %581, %580 ], [ %558, %576 ], [ %573, %572 ], [ %569, %568 ], [ %565, %564 ], [ %558, %560 ]
  %591 = phi ptr [ %558, %584 ], [ %582, %580 ], [ %577, %576 ], [ %574, %572 ], [ %558, %568 ], [ %566, %564 ], [ %561, %560 ]
  %592 = phi ptr [ %586, %584 ], [ %558, %580 ], [ %578, %576 ], [ %558, %572 ], [ %570, %568 ], [ %567, %564 ], [ %562, %560 ]
  %593 = phi i32 [ 2, %584 ], [ 1, %580 ], [ 0, %576 ], [ 2, %572 ], [ 3, %568 ], [ 1, %564 ], [ 0, %560 ]
  %594 = phi i32 [ 0, %584 ], [ 2, %580 ], [ 1, %576 ], [ 3, %572 ], [ 0, %568 ], [ 2, %564 ], [ 1, %560 ]
  %595 = phi i32 [ 1, %584 ], [ 0, %580 ], [ 2, %576 ], [ 0, %572 ], [ 1, %568 ], [ 3, %564 ], [ 2, %560 ]
  %596 = phi i32 [ 3, %584 ], [ 3, %580 ], [ 3, %576 ], [ 1, %572 ], [ 2, %568 ], [ 0, %564 ], [ 3, %560 ]
  %597 = load i32, ptr %592, align 4, !tbaa !65
  %598 = load i32, ptr %591, align 4, !tbaa !65
  %599 = load i32, ptr %590, align 4, !tbaa !65
  %600 = load i32, ptr %589, align 4, !tbaa !65
  br label %601

601:                                              ; preds = %588, %544
  %602 = phi i32 [ %553, %544 ], [ %599, %588 ]
  %603 = phi i32 [ %552, %544 ], [ %598, %588 ]
  %604 = phi i32 [ %551, %544 ], [ %597, %588 ]
  %605 = phi i32 [ %550, %544 ], [ %600, %588 ]
  %606 = phi i32 [ %549, %544 ], [ %593, %588 ]
  %607 = phi i32 [ %548, %544 ], [ %594, %588 ]
  %608 = phi i32 [ %547, %544 ], [ %595, %588 ]
  %609 = phi i32 [ %546, %544 ], [ %596, %588 ]
  switch i32 %559, label %1222 [
    i32 3, label %610
    i32 6, label %610
    i32 9, label %610
    i32 12, label %610
    i32 5, label %710
    i32 10, label %710
    i32 15, label %790
    i32 7, label %930
    i32 11, label %930
    i32 13, label %930
    i32 14, label %930
    i32 19, label %1036
    i32 21, label %1036
    i32 22, label %1036
    i32 23, label %1109
    i32 0, label %1205
    i32 16, label %1205
  ]

610:                                              ; preds = %601, %601, %601, %601
  %611 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %555) #9
  %612 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %612, i32 noundef %555, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %611, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %613 = add nsw i32 %555, 1
  %614 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %613) #9
  %615 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %615, i32 noundef %613, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %614, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %616 = add nsw i32 %555, 2
  %617 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %616) #9
  %618 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %618, i32 noundef %616, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %617, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %619 = sext i32 %602 to i64
  %620 = getelementptr inbounds i32, ptr %338, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !65
  %622 = sext i32 %555 to i64
  %623 = getelementptr inbounds i32, ptr %504, i64 %622
  store i32 %621, ptr %623, align 4, !tbaa !65
  store i32 %602, ptr %611, align 4, !tbaa !81
  %624 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %625 = ptrtoint ptr %624 to i64
  %626 = trunc i64 %625 to i32
  %627 = getelementptr inbounds %struct.MFace, ptr %611, i64 0, i32 1
  store i32 %626, ptr %627, align 4, !tbaa !83
  %628 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %629 = ptrtoint ptr %628 to i64
  %630 = trunc i64 %629 to i32
  %631 = getelementptr inbounds %struct.MFace, ptr %611, i64 0, i32 2
  store i32 %630, ptr %631, align 4, !tbaa !85
  %632 = getelementptr inbounds %struct.MFace, ptr %611, i64 0, i32 3
  store i32 %604, ptr %632, align 4, !tbaa !86
  %633 = getelementptr inbounds %struct.MFace, ptr %611, i64 0, i32 6
  %634 = load i8, ptr %633, align 1, !tbaa !106
  %635 = or i8 %634, 2
  store i8 %635, ptr %633, align 1, !tbaa !106
  %636 = sext i32 %603 to i64
  %637 = getelementptr inbounds i32, ptr %338, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !65
  %639 = sext i32 %613 to i64
  %640 = getelementptr inbounds i32, ptr %504, i64 %639
  store i32 %638, ptr %640, align 4, !tbaa !65
  %641 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %642 = ptrtoint ptr %641 to i64
  %643 = trunc i64 %642 to i32
  store i32 %643, ptr %614, align 4, !tbaa !81
  %644 = getelementptr inbounds %struct.MFace, ptr %614, i64 0, i32 1
  store i32 %603, ptr %644, align 4, !tbaa !83
  %645 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %646 = ptrtoint ptr %645 to i64
  %647 = trunc i64 %646 to i32
  %648 = getelementptr inbounds %struct.MFace, ptr %614, i64 0, i32 2
  store i32 %647, ptr %648, align 4, !tbaa !85
  %649 = getelementptr inbounds %struct.MFace, ptr %614, i64 0, i32 3
  store i32 0, ptr %649, align 4, !tbaa !86
  %650 = getelementptr inbounds %struct.MFace, ptr %614, i64 0, i32 6
  %651 = load i8, ptr %650, align 1, !tbaa !106
  %652 = and i8 %651, -3
  store i8 %652, ptr %650, align 1, !tbaa !106
  %653 = load i32, ptr %620, align 4, !tbaa !65
  %654 = sext i32 %616 to i64
  %655 = getelementptr inbounds i32, ptr %504, i64 %654
  store i32 %653, ptr %655, align 4, !tbaa !65
  store i32 %602, ptr %617, align 4, !tbaa !81
  %656 = getelementptr inbounds %struct.MFace, ptr %617, i64 0, i32 1
  store i32 %604, ptr %656, align 4, !tbaa !83
  %657 = getelementptr inbounds %struct.MFace, ptr %617, i64 0, i32 2
  store i32 %605, ptr %657, align 4, !tbaa !85
  %658 = getelementptr inbounds %struct.MFace, ptr %617, i64 0, i32 3
  store i32 0, ptr %658, align 4, !tbaa !86
  %659 = getelementptr inbounds %struct.MFace, ptr %617, i64 0, i32 6
  %660 = load i8, ptr %659, align 1, !tbaa !106
  %661 = and i8 %660, -3
  store i8 %661, ptr %659, align 1, !tbaa !106
  br i1 %538, label %1222, label %662

662:                                              ; preds = %610
  %663 = zext nneg i32 %606 to i64
  %664 = zext nneg i32 %607 to i64
  %665 = zext nneg i32 %608 to i64
  %666 = zext nneg i32 %609 to i64
  br label %667

667:                                              ; preds = %662, %667
  %668 = phi i32 [ 0, %662 ], [ %708, %667 ]
  %669 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %487, i32 noundef 5, i32 noundef %668) #9
  %670 = getelementptr inbounds %struct.MTFace, ptr %669, i64 %622
  %671 = getelementptr inbounds %struct.MTFace, ptr %670, i64 1
  %672 = getelementptr inbounds %struct.MTFace, ptr %670, i64 2
  %673 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %539, i32 noundef 5, i32 noundef %668) #9
  %674 = getelementptr inbounds %struct.MTFace, ptr %673, i64 %545
  %675 = getelementptr inbounds [4 x [2 x float]], ptr %674, i64 0, i64 %663
  %676 = load float, ptr %675, align 4, !tbaa !84
  store float %676, ptr %670, align 4, !tbaa !84
  %677 = getelementptr inbounds float, ptr %675, i64 1
  %678 = load float, ptr %677, align 4, !tbaa !84
  %679 = getelementptr inbounds float, ptr %670, i64 1
  store float %678, ptr %679, align 4, !tbaa !84
  %680 = getelementptr inbounds [4 x [2 x float]], ptr %670, i64 0, i64 1
  %681 = getelementptr inbounds [4 x [2 x float]], ptr %674, i64 0, i64 %664
  call void @mid_v2_v2v2(ptr noundef nonnull %680, ptr noundef nonnull %675, ptr noundef %681) #9
  %682 = getelementptr inbounds [4 x [2 x float]], ptr %670, i64 0, i64 2
  %683 = getelementptr inbounds [4 x [2 x float]], ptr %674, i64 0, i64 %665
  call void @mid_v2_v2v2(ptr noundef nonnull %682, ptr noundef %681, ptr noundef %683) #9
  %684 = getelementptr inbounds [4 x [2 x float]], ptr %670, i64 0, i64 3
  %685 = load float, ptr %683, align 4, !tbaa !84
  store float %685, ptr %684, align 4, !tbaa !84
  %686 = getelementptr inbounds float, ptr %683, i64 1
  %687 = load float, ptr %686, align 4, !tbaa !84
  %688 = getelementptr inbounds [4 x [2 x float]], ptr %670, i64 0, i64 3, i64 1
  store float %687, ptr %688, align 4, !tbaa !84
  call void @mid_v2_v2v2(ptr noundef nonnull %671, ptr noundef nonnull %675, ptr noundef %681) #9
  %689 = getelementptr inbounds %struct.MTFace, ptr %670, i64 1, i32 0, i64 1
  %690 = load float, ptr %681, align 4, !tbaa !84
  store float %690, ptr %689, align 4, !tbaa !84
  %691 = getelementptr inbounds float, ptr %681, i64 1
  %692 = load float, ptr %691, align 4, !tbaa !84
  %693 = getelementptr inbounds %struct.MTFace, ptr %670, i64 1, i32 0, i64 1, i64 1
  store float %692, ptr %693, align 4, !tbaa !84
  %694 = getelementptr inbounds %struct.MTFace, ptr %670, i64 1, i32 0, i64 2
  call void @mid_v2_v2v2(ptr noundef nonnull %694, ptr noundef nonnull %681, ptr noundef nonnull %683) #9
  %695 = load float, ptr %675, align 4, !tbaa !84
  store float %695, ptr %672, align 4, !tbaa !84
  %696 = load float, ptr %677, align 4, !tbaa !84
  %697 = getelementptr inbounds %struct.MTFace, ptr %670, i64 2, i32 0, i64 0, i64 1
  store float %696, ptr %697, align 4, !tbaa !84
  %698 = getelementptr inbounds %struct.MTFace, ptr %670, i64 2, i32 0, i64 1
  %699 = load float, ptr %683, align 4, !tbaa !84
  store float %699, ptr %698, align 4, !tbaa !84
  %700 = load float, ptr %686, align 4, !tbaa !84
  %701 = getelementptr inbounds %struct.MTFace, ptr %670, i64 2, i32 0, i64 1, i64 1
  store float %700, ptr %701, align 4, !tbaa !84
  %702 = getelementptr inbounds %struct.MTFace, ptr %670, i64 2, i32 0, i64 2
  %703 = getelementptr inbounds [4 x [2 x float]], ptr %674, i64 0, i64 %666
  %704 = load float, ptr %703, align 4, !tbaa !84
  store float %704, ptr %702, align 4, !tbaa !84
  %705 = getelementptr inbounds float, ptr %703, i64 1
  %706 = load float, ptr %705, align 4, !tbaa !84
  %707 = getelementptr inbounds %struct.MTFace, ptr %670, i64 2, i32 0, i64 2, i64 1
  store float %706, ptr %707, align 4, !tbaa !84
  %708 = add nuw nsw i32 %668, 1
  %709 = icmp eq i32 %708, %488
  br i1 %709, label %1222, label %667, !llvm.loop !107

710:                                              ; preds = %601, %601
  %711 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %555) #9
  %712 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %712, i32 noundef %555, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %711, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %713 = add nsw i32 %555, 1
  %714 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %713) #9
  %715 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %715, i32 noundef %713, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %714, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %716 = sext i32 %602 to i64
  %717 = getelementptr inbounds i32, ptr %338, i64 %716
  %718 = load i32, ptr %717, align 4, !tbaa !65
  %719 = sext i32 %555 to i64
  %720 = getelementptr inbounds i32, ptr %504, i64 %719
  store i32 %718, ptr %720, align 4, !tbaa !65
  store i32 %602, ptr %711, align 4, !tbaa !81
  %721 = getelementptr inbounds %struct.MFace, ptr %711, i64 0, i32 1
  store i32 %603, ptr %721, align 4, !tbaa !83
  %722 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %723 = ptrtoint ptr %722 to i64
  %724 = trunc i64 %723 to i32
  %725 = getelementptr inbounds %struct.MFace, ptr %711, i64 0, i32 2
  store i32 %724, ptr %725, align 4, !tbaa !85
  %726 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %605) #9
  %727 = ptrtoint ptr %726 to i64
  %728 = trunc i64 %727 to i32
  %729 = getelementptr inbounds %struct.MFace, ptr %711, i64 0, i32 3
  store i32 %728, ptr %729, align 4, !tbaa !86
  %730 = getelementptr inbounds %struct.MFace, ptr %711, i64 0, i32 6
  %731 = load i8, ptr %730, align 1, !tbaa !106
  %732 = or i8 %731, 2
  store i8 %732, ptr %730, align 1, !tbaa !106
  %733 = sext i32 %604 to i64
  %734 = getelementptr inbounds i32, ptr %338, i64 %733
  %735 = load i32, ptr %734, align 4, !tbaa !65
  %736 = sext i32 %713 to i64
  %737 = getelementptr inbounds i32, ptr %504, i64 %736
  store i32 %735, ptr %737, align 4, !tbaa !65
  %738 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %605) #9
  %739 = ptrtoint ptr %738 to i64
  %740 = trunc i64 %739 to i32
  store i32 %740, ptr %714, align 4, !tbaa !81
  %741 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %742 = ptrtoint ptr %741 to i64
  %743 = trunc i64 %742 to i32
  %744 = getelementptr inbounds %struct.MFace, ptr %714, i64 0, i32 1
  store i32 %743, ptr %744, align 4, !tbaa !83
  %745 = getelementptr inbounds %struct.MFace, ptr %714, i64 0, i32 2
  store i32 %604, ptr %745, align 4, !tbaa !85
  %746 = getelementptr inbounds %struct.MFace, ptr %714, i64 0, i32 3
  store i32 %605, ptr %746, align 4, !tbaa !86
  %747 = getelementptr inbounds %struct.MFace, ptr %714, i64 0, i32 6
  %748 = load i8, ptr %747, align 1, !tbaa !106
  %749 = or i8 %748, 2
  store i8 %749, ptr %747, align 1, !tbaa !106
  br i1 %536, label %1222, label %750

750:                                              ; preds = %710
  %751 = zext nneg i32 %606 to i64
  %752 = zext nneg i32 %607 to i64
  %753 = zext nneg i32 %608 to i64
  %754 = zext nneg i32 %609 to i64
  br label %755

755:                                              ; preds = %750, %755
  %756 = phi i32 [ 0, %750 ], [ %788, %755 ]
  %757 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %487, i32 noundef 5, i32 noundef %756) #9
  %758 = getelementptr inbounds %struct.MTFace, ptr %757, i64 %719
  %759 = getelementptr inbounds %struct.MTFace, ptr %758, i64 1
  %760 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %537, i32 noundef 5, i32 noundef %756) #9
  %761 = getelementptr inbounds %struct.MTFace, ptr %760, i64 %545
  %762 = getelementptr inbounds [4 x [2 x float]], ptr %761, i64 0, i64 %751
  %763 = load float, ptr %762, align 4, !tbaa !84
  store float %763, ptr %758, align 4, !tbaa !84
  %764 = getelementptr inbounds float, ptr %762, i64 1
  %765 = load float, ptr %764, align 4, !tbaa !84
  %766 = getelementptr inbounds float, ptr %758, i64 1
  store float %765, ptr %766, align 4, !tbaa !84
  %767 = getelementptr inbounds [4 x [2 x float]], ptr %758, i64 0, i64 1
  %768 = getelementptr inbounds [4 x [2 x float]], ptr %761, i64 0, i64 %752
  %769 = load float, ptr %768, align 4, !tbaa !84
  store float %769, ptr %767, align 4, !tbaa !84
  %770 = getelementptr inbounds float, ptr %768, i64 1
  %771 = load float, ptr %770, align 4, !tbaa !84
  %772 = getelementptr inbounds [4 x [2 x float]], ptr %758, i64 0, i64 1, i64 1
  store float %771, ptr %772, align 4, !tbaa !84
  %773 = getelementptr inbounds [4 x [2 x float]], ptr %758, i64 0, i64 2
  %774 = getelementptr inbounds [4 x [2 x float]], ptr %761, i64 0, i64 %753
  call void @mid_v2_v2v2(ptr noundef nonnull %773, ptr noundef nonnull %768, ptr noundef %774) #9
  %775 = getelementptr inbounds [4 x [2 x float]], ptr %758, i64 0, i64 3
  %776 = getelementptr inbounds [4 x [2 x float]], ptr %761, i64 0, i64 %754
  call void @mid_v2_v2v2(ptr noundef nonnull %775, ptr noundef nonnull %762, ptr noundef %776) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %759, ptr noundef nonnull %762, ptr noundef %776) #9
  %777 = getelementptr inbounds %struct.MTFace, ptr %758, i64 1, i32 0, i64 1
  call void @mid_v2_v2v2(ptr noundef nonnull %777, ptr noundef nonnull %768, ptr noundef %774) #9
  %778 = getelementptr inbounds %struct.MTFace, ptr %758, i64 1, i32 0, i64 2
  %779 = load float, ptr %774, align 4, !tbaa !84
  store float %779, ptr %778, align 4, !tbaa !84
  %780 = getelementptr inbounds float, ptr %774, i64 1
  %781 = load float, ptr %780, align 4, !tbaa !84
  %782 = getelementptr inbounds %struct.MTFace, ptr %758, i64 1, i32 0, i64 2, i64 1
  store float %781, ptr %782, align 4, !tbaa !84
  %783 = getelementptr inbounds %struct.MTFace, ptr %758, i64 1, i32 0, i64 3
  %784 = load float, ptr %776, align 4, !tbaa !84
  store float %784, ptr %783, align 4, !tbaa !84
  %785 = getelementptr inbounds float, ptr %776, i64 1
  %786 = load float, ptr %785, align 4, !tbaa !84
  %787 = getelementptr inbounds %struct.MTFace, ptr %758, i64 1, i32 0, i64 3, i64 1
  store float %786, ptr %787, align 4, !tbaa !84
  %788 = add nuw nsw i32 %756, 1
  %789 = icmp eq i32 %788, %488
  br i1 %789, label %1222, label %755, !llvm.loop !108

790:                                              ; preds = %601
  %791 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %555) #9
  %792 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %792, i32 noundef %555, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %791, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %793 = add nsw i32 %555, 1
  %794 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %793) #9
  %795 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %795, i32 noundef %793, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %794, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %796 = add nsw i32 %555, 2
  %797 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %796) #9
  %798 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %798, i32 noundef %796, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %797, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %799 = add nsw i32 %555, 3
  %800 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %799) #9
  %801 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %801, i32 noundef %799, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %800, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %802 = sext i32 %602 to i64
  %803 = getelementptr inbounds i32, ptr %338, i64 %802
  %804 = load i32, ptr %803, align 4, !tbaa !65
  %805 = sext i32 %555 to i64
  %806 = getelementptr inbounds i32, ptr %504, i64 %805
  store i32 %804, ptr %806, align 4, !tbaa !65
  store i32 %602, ptr %791, align 4, !tbaa !81
  %807 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %808 = ptrtoint ptr %807 to i64
  %809 = trunc i64 %808 to i32
  %810 = getelementptr inbounds %struct.MFace, ptr %791, i64 0, i32 1
  store i32 %809, ptr %810, align 4, !tbaa !83
  %811 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %812 = ptrtoint ptr %811 to i64
  %813 = trunc i64 %812 to i32
  %814 = getelementptr inbounds %struct.MFace, ptr %791, i64 0, i32 2
  store i32 %813, ptr %814, align 4, !tbaa !85
  %815 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %605) #9
  %816 = ptrtoint ptr %815 to i64
  %817 = trunc i64 %816 to i32
  %818 = getelementptr inbounds %struct.MFace, ptr %791, i64 0, i32 3
  store i32 %817, ptr %818, align 4, !tbaa !86
  %819 = getelementptr inbounds %struct.MFace, ptr %791, i64 0, i32 6
  %820 = load i8, ptr %819, align 1, !tbaa !106
  %821 = or i8 %820, 2
  store i8 %821, ptr %819, align 1, !tbaa !106
  %822 = sext i32 %603 to i64
  %823 = getelementptr inbounds i32, ptr %338, i64 %822
  %824 = load i32, ptr %823, align 4, !tbaa !65
  %825 = sext i32 %793 to i64
  %826 = getelementptr inbounds i32, ptr %504, i64 %825
  store i32 %824, ptr %826, align 4, !tbaa !65
  %827 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %828 = ptrtoint ptr %827 to i64
  %829 = trunc i64 %828 to i32
  store i32 %829, ptr %794, align 4, !tbaa !81
  %830 = getelementptr inbounds %struct.MFace, ptr %794, i64 0, i32 1
  store i32 %603, ptr %830, align 4, !tbaa !83
  %831 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %832 = ptrtoint ptr %831 to i64
  %833 = trunc i64 %832 to i32
  %834 = getelementptr inbounds %struct.MFace, ptr %794, i64 0, i32 2
  store i32 %833, ptr %834, align 4, !tbaa !85
  %835 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %836 = ptrtoint ptr %835 to i64
  %837 = trunc i64 %836 to i32
  %838 = getelementptr inbounds %struct.MFace, ptr %794, i64 0, i32 3
  store i32 %837, ptr %838, align 4, !tbaa !86
  %839 = getelementptr inbounds %struct.MFace, ptr %794, i64 0, i32 6
  %840 = load i8, ptr %839, align 1, !tbaa !106
  %841 = or i8 %840, 2
  store i8 %841, ptr %839, align 1, !tbaa !106
  %842 = sext i32 %604 to i64
  %843 = getelementptr inbounds i32, ptr %338, i64 %842
  %844 = load i32, ptr %843, align 4, !tbaa !65
  %845 = sext i32 %796 to i64
  %846 = getelementptr inbounds i32, ptr %504, i64 %845
  store i32 %844, ptr %846, align 4, !tbaa !65
  %847 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %848 = ptrtoint ptr %847 to i64
  %849 = trunc i64 %848 to i32
  store i32 %849, ptr %797, align 4, !tbaa !81
  %850 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %851 = ptrtoint ptr %850 to i64
  %852 = trunc i64 %851 to i32
  %853 = getelementptr inbounds %struct.MFace, ptr %797, i64 0, i32 1
  store i32 %852, ptr %853, align 4, !tbaa !83
  %854 = getelementptr inbounds %struct.MFace, ptr %797, i64 0, i32 2
  store i32 %604, ptr %854, align 4, !tbaa !85
  %855 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %604, i32 noundef %605) #9
  %856 = ptrtoint ptr %855 to i64
  %857 = trunc i64 %856 to i32
  %858 = getelementptr inbounds %struct.MFace, ptr %797, i64 0, i32 3
  store i32 %857, ptr %858, align 4, !tbaa !86
  %859 = getelementptr inbounds %struct.MFace, ptr %797, i64 0, i32 6
  %860 = load i8, ptr %859, align 1, !tbaa !106
  %861 = or i8 %860, 2
  store i8 %861, ptr %859, align 1, !tbaa !106
  %862 = sext i32 %605 to i64
  %863 = getelementptr inbounds i32, ptr %338, i64 %862
  %864 = load i32, ptr %863, align 4, !tbaa !65
  %865 = sext i32 %799 to i64
  %866 = getelementptr inbounds i32, ptr %504, i64 %865
  store i32 %864, ptr %866, align 4, !tbaa !65
  %867 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %605) #9
  %868 = ptrtoint ptr %867 to i64
  %869 = trunc i64 %868 to i32
  store i32 %869, ptr %800, align 4, !tbaa !81
  %870 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %871 = ptrtoint ptr %870 to i64
  %872 = trunc i64 %871 to i32
  %873 = getelementptr inbounds %struct.MFace, ptr %800, i64 0, i32 1
  store i32 %872, ptr %873, align 4, !tbaa !83
  %874 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %604, i32 noundef %605) #9
  %875 = ptrtoint ptr %874 to i64
  %876 = trunc i64 %875 to i32
  %877 = getelementptr inbounds %struct.MFace, ptr %800, i64 0, i32 2
  store i32 %876, ptr %877, align 4, !tbaa !85
  %878 = getelementptr inbounds %struct.MFace, ptr %800, i64 0, i32 3
  store i32 %605, ptr %878, align 4, !tbaa !86
  %879 = getelementptr inbounds %struct.MFace, ptr %800, i64 0, i32 6
  %880 = load i8, ptr %879, align 1, !tbaa !106
  %881 = or i8 %880, 2
  store i8 %881, ptr %879, align 1, !tbaa !106
  br i1 %534, label %1222, label %882

882:                                              ; preds = %790
  %883 = zext nneg i32 %606 to i64
  %884 = zext nneg i32 %607 to i64
  %885 = zext nneg i32 %608 to i64
  %886 = zext nneg i32 %609 to i64
  br label %887

887:                                              ; preds = %882, %887
  %888 = phi i32 [ 0, %882 ], [ %928, %887 ]
  %889 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %487, i32 noundef 5, i32 noundef %888) #9
  %890 = getelementptr inbounds %struct.MTFace, ptr %889, i64 %805
  %891 = getelementptr inbounds %struct.MTFace, ptr %890, i64 1
  %892 = getelementptr inbounds %struct.MTFace, ptr %890, i64 2
  %893 = getelementptr inbounds %struct.MTFace, ptr %890, i64 3
  %894 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %535, i32 noundef 5, i32 noundef %888) #9
  %895 = getelementptr inbounds %struct.MTFace, ptr %894, i64 %545
  %896 = getelementptr inbounds [4 x [2 x float]], ptr %895, i64 0, i64 %883
  %897 = load float, ptr %896, align 4, !tbaa !84
  store float %897, ptr %890, align 4, !tbaa !84
  %898 = getelementptr inbounds float, ptr %896, i64 1
  %899 = load float, ptr %898, align 4, !tbaa !84
  %900 = getelementptr inbounds float, ptr %890, i64 1
  store float %899, ptr %900, align 4, !tbaa !84
  %901 = getelementptr inbounds [4 x [2 x float]], ptr %890, i64 0, i64 1
  %902 = getelementptr inbounds [4 x [2 x float]], ptr %895, i64 0, i64 %884
  call void @mid_v2_v2v2(ptr noundef nonnull %901, ptr noundef nonnull %896, ptr noundef %902) #9
  %903 = getelementptr inbounds [4 x [2 x float]], ptr %890, i64 0, i64 2
  %904 = getelementptr inbounds [4 x [2 x float]], ptr %895, i64 0, i64 %885
  call void @mid_v2_v2v2(ptr noundef nonnull %903, ptr noundef nonnull %896, ptr noundef %904) #9
  %905 = getelementptr inbounds [4 x [2 x float]], ptr %890, i64 0, i64 3
  %906 = getelementptr inbounds [4 x [2 x float]], ptr %895, i64 0, i64 %886
  call void @mid_v2_v2v2(ptr noundef nonnull %905, ptr noundef nonnull %896, ptr noundef %906) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %891, ptr noundef nonnull %896, ptr noundef %902) #9
  %907 = getelementptr inbounds %struct.MTFace, ptr %890, i64 1, i32 0, i64 1
  %908 = load float, ptr %902, align 4, !tbaa !84
  store float %908, ptr %907, align 4, !tbaa !84
  %909 = getelementptr inbounds float, ptr %902, i64 1
  %910 = load float, ptr %909, align 4, !tbaa !84
  %911 = getelementptr inbounds %struct.MTFace, ptr %890, i64 1, i32 0, i64 1, i64 1
  store float %910, ptr %911, align 4, !tbaa !84
  %912 = getelementptr inbounds %struct.MTFace, ptr %890, i64 1, i32 0, i64 2
  call void @mid_v2_v2v2(ptr noundef nonnull %912, ptr noundef nonnull %902, ptr noundef %904) #9
  %913 = getelementptr inbounds %struct.MTFace, ptr %890, i64 1, i32 0, i64 3
  call void @mid_v2_v2v2(ptr noundef nonnull %913, ptr noundef nonnull %896, ptr noundef %904) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %892, ptr noundef nonnull %896, ptr noundef %904) #9
  %914 = getelementptr inbounds %struct.MTFace, ptr %890, i64 2, i32 0, i64 1
  call void @mid_v2_v2v2(ptr noundef nonnull %914, ptr noundef nonnull %902, ptr noundef %904) #9
  %915 = getelementptr inbounds %struct.MTFace, ptr %890, i64 2, i32 0, i64 2
  %916 = load float, ptr %904, align 4, !tbaa !84
  store float %916, ptr %915, align 4, !tbaa !84
  %917 = getelementptr inbounds float, ptr %904, i64 1
  %918 = load float, ptr %917, align 4, !tbaa !84
  %919 = getelementptr inbounds %struct.MTFace, ptr %890, i64 2, i32 0, i64 2, i64 1
  store float %918, ptr %919, align 4, !tbaa !84
  %920 = getelementptr inbounds %struct.MTFace, ptr %890, i64 2, i32 0, i64 3
  call void @mid_v2_v2v2(ptr noundef nonnull %920, ptr noundef nonnull %904, ptr noundef %906) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %893, ptr noundef nonnull %896, ptr noundef %906) #9
  %921 = getelementptr inbounds %struct.MTFace, ptr %890, i64 3, i32 0, i64 1
  call void @mid_v2_v2v2(ptr noundef nonnull %921, ptr noundef nonnull %896, ptr noundef nonnull %904) #9
  %922 = getelementptr inbounds %struct.MTFace, ptr %890, i64 3, i32 0, i64 2
  call void @mid_v2_v2v2(ptr noundef nonnull %922, ptr noundef nonnull %904, ptr noundef %906) #9
  %923 = getelementptr inbounds %struct.MTFace, ptr %890, i64 3, i32 0, i64 3
  %924 = load float, ptr %906, align 4, !tbaa !84
  store float %924, ptr %923, align 4, !tbaa !84
  %925 = getelementptr inbounds float, ptr %906, i64 1
  %926 = load float, ptr %925, align 4, !tbaa !84
  %927 = getelementptr inbounds %struct.MTFace, ptr %890, i64 3, i32 0, i64 3, i64 1
  store float %926, ptr %927, align 4, !tbaa !84
  %928 = add nuw nsw i32 %888, 1
  %929 = icmp eq i32 %928, %488
  br i1 %929, label %1222, label %887, !llvm.loop !109

930:                                              ; preds = %601, %601, %601, %601
  %931 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %555) #9
  %932 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %932, i32 noundef %555, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %931, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %933 = add nsw i32 %555, 1
  %934 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %933) #9
  %935 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %935, i32 noundef %933, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %934, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %936 = add nsw i32 %555, 2
  %937 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %936) #9
  %938 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %938, i32 noundef %936, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %937, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %939 = sext i32 %602 to i64
  %940 = getelementptr inbounds i32, ptr %338, i64 %939
  %941 = load i32, ptr %940, align 4, !tbaa !65
  %942 = sext i32 %555 to i64
  %943 = getelementptr inbounds i32, ptr %504, i64 %942
  store i32 %941, ptr %943, align 4, !tbaa !65
  store i32 %602, ptr %931, align 4, !tbaa !81
  %944 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %945 = ptrtoint ptr %944 to i64
  %946 = trunc i64 %945 to i32
  %947 = getelementptr inbounds %struct.MFace, ptr %931, i64 0, i32 1
  store i32 %946, ptr %947, align 4, !tbaa !83
  %948 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %949 = ptrtoint ptr %948 to i64
  %950 = trunc i64 %949 to i32
  %951 = getelementptr inbounds %struct.MFace, ptr %931, i64 0, i32 2
  store i32 %950, ptr %951, align 4, !tbaa !85
  %952 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %605) #9
  %953 = ptrtoint ptr %952 to i64
  %954 = trunc i64 %953 to i32
  %955 = getelementptr inbounds %struct.MFace, ptr %931, i64 0, i32 3
  store i32 %954, ptr %955, align 4, !tbaa !86
  %956 = getelementptr inbounds %struct.MFace, ptr %931, i64 0, i32 6
  %957 = load i8, ptr %956, align 1, !tbaa !106
  %958 = or i8 %957, 2
  store i8 %958, ptr %956, align 1, !tbaa !106
  %959 = sext i32 %603 to i64
  %960 = getelementptr inbounds i32, ptr %338, i64 %959
  %961 = load i32, ptr %960, align 4, !tbaa !65
  %962 = sext i32 %933 to i64
  %963 = getelementptr inbounds i32, ptr %504, i64 %962
  store i32 %961, ptr %963, align 4, !tbaa !65
  %964 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %965 = ptrtoint ptr %964 to i64
  %966 = trunc i64 %965 to i32
  store i32 %966, ptr %934, align 4, !tbaa !81
  %967 = getelementptr inbounds %struct.MFace, ptr %934, i64 0, i32 1
  store i32 %603, ptr %967, align 4, !tbaa !83
  %968 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %969 = ptrtoint ptr %968 to i64
  %970 = trunc i64 %969 to i32
  %971 = getelementptr inbounds %struct.MFace, ptr %934, i64 0, i32 2
  store i32 %970, ptr %971, align 4, !tbaa !85
  %972 = getelementptr inbounds %struct.MFace, ptr %934, i64 0, i32 3
  store i32 0, ptr %972, align 4, !tbaa !86
  %973 = getelementptr inbounds %struct.MFace, ptr %934, i64 0, i32 6
  %974 = load i8, ptr %973, align 1, !tbaa !106
  %975 = and i8 %974, -3
  store i8 %975, ptr %973, align 1, !tbaa !106
  %976 = sext i32 %605 to i64
  %977 = getelementptr inbounds i32, ptr %338, i64 %976
  %978 = load i32, ptr %977, align 4, !tbaa !65
  %979 = sext i32 %936 to i64
  %980 = getelementptr inbounds i32, ptr %504, i64 %979
  store i32 %978, ptr %980, align 4, !tbaa !65
  %981 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %605) #9
  %982 = ptrtoint ptr %981 to i64
  %983 = trunc i64 %982 to i32
  store i32 %983, ptr %937, align 4, !tbaa !81
  %984 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %985 = ptrtoint ptr %984 to i64
  %986 = trunc i64 %985 to i32
  %987 = getelementptr inbounds %struct.MFace, ptr %937, i64 0, i32 1
  store i32 %986, ptr %987, align 4, !tbaa !83
  %988 = getelementptr inbounds %struct.MFace, ptr %937, i64 0, i32 2
  store i32 %604, ptr %988, align 4, !tbaa !85
  %989 = getelementptr inbounds %struct.MFace, ptr %937, i64 0, i32 3
  store i32 %605, ptr %989, align 4, !tbaa !86
  %990 = getelementptr inbounds %struct.MFace, ptr %937, i64 0, i32 6
  %991 = load i8, ptr %990, align 1, !tbaa !106
  %992 = or i8 %991, 2
  store i8 %992, ptr %990, align 1, !tbaa !106
  br i1 %532, label %1222, label %993

993:                                              ; preds = %930
  %994 = zext nneg i32 %606 to i64
  %995 = zext nneg i32 %607 to i64
  %996 = zext nneg i32 %608 to i64
  %997 = zext nneg i32 %609 to i64
  br label %998

998:                                              ; preds = %993, %998
  %999 = phi i32 [ 0, %993 ], [ %1034, %998 ]
  %1000 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %487, i32 noundef 5, i32 noundef %999) #9
  %1001 = getelementptr inbounds %struct.MTFace, ptr %1000, i64 %942
  %1002 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 1
  %1003 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 2
  %1004 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %533, i32 noundef 5, i32 noundef %999) #9
  %1005 = getelementptr inbounds %struct.MTFace, ptr %1004, i64 %545
  %1006 = getelementptr inbounds [4 x [2 x float]], ptr %1005, i64 0, i64 %994
  %1007 = load float, ptr %1006, align 4, !tbaa !84
  store float %1007, ptr %1001, align 4, !tbaa !84
  %1008 = getelementptr inbounds float, ptr %1006, i64 1
  %1009 = load float, ptr %1008, align 4, !tbaa !84
  %1010 = getelementptr inbounds float, ptr %1001, i64 1
  store float %1009, ptr %1010, align 4, !tbaa !84
  %1011 = getelementptr inbounds [4 x [2 x float]], ptr %1001, i64 0, i64 1
  %1012 = getelementptr inbounds [4 x [2 x float]], ptr %1005, i64 0, i64 %995
  call void @mid_v2_v2v2(ptr noundef nonnull %1011, ptr noundef nonnull %1006, ptr noundef %1012) #9
  %1013 = getelementptr inbounds [4 x [2 x float]], ptr %1001, i64 0, i64 2
  %1014 = getelementptr inbounds [4 x [2 x float]], ptr %1005, i64 0, i64 %996
  call void @mid_v2_v2v2(ptr noundef nonnull %1013, ptr noundef %1012, ptr noundef %1014) #9
  %1015 = getelementptr inbounds [4 x [2 x float]], ptr %1001, i64 0, i64 3
  %1016 = getelementptr inbounds [4 x [2 x float]], ptr %1005, i64 0, i64 %997
  call void @mid_v2_v2v2(ptr noundef nonnull %1015, ptr noundef nonnull %1006, ptr noundef %1016) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %1002, ptr noundef nonnull %1006, ptr noundef %1012) #9
  %1017 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 1, i32 0, i64 1
  %1018 = load float, ptr %1012, align 4, !tbaa !84
  store float %1018, ptr %1017, align 4, !tbaa !84
  %1019 = getelementptr inbounds float, ptr %1012, i64 1
  %1020 = load float, ptr %1019, align 4, !tbaa !84
  %1021 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 1, i32 0, i64 1, i64 1
  store float %1020, ptr %1021, align 4, !tbaa !84
  %1022 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 1, i32 0, i64 2
  call void @mid_v2_v2v2(ptr noundef nonnull %1022, ptr noundef nonnull %1012, ptr noundef %1014) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %1003, ptr noundef nonnull %1006, ptr noundef %1016) #9
  %1023 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 2, i32 0, i64 1
  call void @mid_v2_v2v2(ptr noundef nonnull %1023, ptr noundef nonnull %1012, ptr noundef %1014) #9
  %1024 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 2, i32 0, i64 2
  %1025 = load float, ptr %1014, align 4, !tbaa !84
  store float %1025, ptr %1024, align 4, !tbaa !84
  %1026 = getelementptr inbounds float, ptr %1014, i64 1
  %1027 = load float, ptr %1026, align 4, !tbaa !84
  %1028 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 2, i32 0, i64 2, i64 1
  store float %1027, ptr %1028, align 4, !tbaa !84
  %1029 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 2, i32 0, i64 3
  %1030 = load float, ptr %1016, align 4, !tbaa !84
  store float %1030, ptr %1029, align 4, !tbaa !84
  %1031 = getelementptr inbounds float, ptr %1016, i64 1
  %1032 = load float, ptr %1031, align 4, !tbaa !84
  %1033 = getelementptr inbounds %struct.MTFace, ptr %1001, i64 2, i32 0, i64 3, i64 1
  store float %1032, ptr %1033, align 4, !tbaa !84
  %1034 = add nuw nsw i32 %999, 1
  %1035 = icmp eq i32 %1034, %488
  br i1 %1035, label %1222, label %998, !llvm.loop !110

1036:                                             ; preds = %601, %601, %601
  %1037 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %555) #9
  %1038 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %1038, i32 noundef %555, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1037, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %1039 = add nsw i32 %555, 1
  %1040 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %1039) #9
  %1041 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %1041, i32 noundef %1039, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1040, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %1042 = sext i32 %602 to i64
  %1043 = getelementptr inbounds i32, ptr %338, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !65
  %1045 = sext i32 %555 to i64
  %1046 = getelementptr inbounds i32, ptr %504, i64 %1045
  store i32 %1044, ptr %1046, align 4, !tbaa !65
  store i32 %602, ptr %1037, align 4, !tbaa !81
  %1047 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %1048 = ptrtoint ptr %1047 to i64
  %1049 = trunc i64 %1048 to i32
  %1050 = getelementptr inbounds %struct.MFace, ptr %1037, i64 0, i32 1
  store i32 %1049, ptr %1050, align 4, !tbaa !83
  %1051 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %1052 = ptrtoint ptr %1051 to i64
  %1053 = trunc i64 %1052 to i32
  %1054 = getelementptr inbounds %struct.MFace, ptr %1037, i64 0, i32 2
  store i32 %1053, ptr %1054, align 4, !tbaa !85
  %1055 = getelementptr inbounds %struct.MFace, ptr %1037, i64 0, i32 3
  store i32 0, ptr %1055, align 4, !tbaa !86
  %1056 = getelementptr inbounds %struct.MFace, ptr %1037, i64 0, i32 6
  %1057 = load i8, ptr %1056, align 1, !tbaa !106
  %1058 = and i8 %1057, -3
  store i8 %1058, ptr %1056, align 1, !tbaa !106
  %1059 = sext i32 %603 to i64
  %1060 = getelementptr inbounds i32, ptr %338, i64 %1059
  %1061 = load i32, ptr %1060, align 4, !tbaa !65
  %1062 = sext i32 %1039 to i64
  %1063 = getelementptr inbounds i32, ptr %504, i64 %1062
  store i32 %1061, ptr %1063, align 4, !tbaa !65
  %1064 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %1065 = ptrtoint ptr %1064 to i64
  %1066 = trunc i64 %1065 to i32
  store i32 %1066, ptr %1040, align 4, !tbaa !81
  %1067 = getelementptr inbounds %struct.MFace, ptr %1040, i64 0, i32 1
  store i32 %603, ptr %1067, align 4, !tbaa !83
  %1068 = getelementptr inbounds %struct.MFace, ptr %1040, i64 0, i32 2
  store i32 %604, ptr %1068, align 4, !tbaa !85
  %1069 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %1070 = ptrtoint ptr %1069 to i64
  %1071 = trunc i64 %1070 to i32
  %1072 = getelementptr inbounds %struct.MFace, ptr %1040, i64 0, i32 3
  store i32 %1071, ptr %1072, align 4, !tbaa !86
  %1073 = getelementptr inbounds %struct.MFace, ptr %1040, i64 0, i32 6
  %1074 = load i8, ptr %1073, align 1, !tbaa !106
  %1075 = or i8 %1074, 2
  store i8 %1075, ptr %1073, align 1, !tbaa !106
  br i1 %530, label %1222, label %1076

1076:                                             ; preds = %1036
  %1077 = zext nneg i32 %606 to i64
  %1078 = zext nneg i32 %607 to i64
  %1079 = zext nneg i32 %608 to i64
  br label %1080

1080:                                             ; preds = %1076, %1080
  %1081 = phi i32 [ 0, %1076 ], [ %1107, %1080 ]
  %1082 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %487, i32 noundef 5, i32 noundef %1081) #9
  %1083 = getelementptr inbounds %struct.MTFace, ptr %1082, i64 %1045
  %1084 = getelementptr inbounds %struct.MTFace, ptr %1083, i64 1
  %1085 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %531, i32 noundef 5, i32 noundef %1081) #9
  %1086 = getelementptr inbounds %struct.MTFace, ptr %1085, i64 %545
  %1087 = getelementptr inbounds [4 x [2 x float]], ptr %1086, i64 0, i64 %1077
  %1088 = load float, ptr %1087, align 4, !tbaa !84
  store float %1088, ptr %1083, align 4, !tbaa !84
  %1089 = getelementptr inbounds float, ptr %1087, i64 1
  %1090 = load float, ptr %1089, align 4, !tbaa !84
  %1091 = getelementptr inbounds float, ptr %1083, i64 1
  store float %1090, ptr %1091, align 4, !tbaa !84
  %1092 = getelementptr inbounds [4 x [2 x float]], ptr %1083, i64 0, i64 1
  %1093 = getelementptr inbounds [4 x [2 x float]], ptr %1086, i64 0, i64 %1078
  call void @mid_v2_v2v2(ptr noundef nonnull %1092, ptr noundef nonnull %1087, ptr noundef %1093) #9
  %1094 = getelementptr inbounds [4 x [2 x float]], ptr %1083, i64 0, i64 2
  %1095 = getelementptr inbounds [4 x [2 x float]], ptr %1086, i64 0, i64 %1079
  call void @mid_v2_v2v2(ptr noundef nonnull %1094, ptr noundef nonnull %1087, ptr noundef %1095) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %1084, ptr noundef nonnull %1087, ptr noundef %1093) #9
  %1096 = getelementptr inbounds %struct.MTFace, ptr %1083, i64 1, i32 0, i64 1
  %1097 = load float, ptr %1093, align 4, !tbaa !84
  store float %1097, ptr %1096, align 4, !tbaa !84
  %1098 = getelementptr inbounds float, ptr %1093, i64 1
  %1099 = load float, ptr %1098, align 4, !tbaa !84
  %1100 = getelementptr inbounds %struct.MTFace, ptr %1083, i64 1, i32 0, i64 1, i64 1
  store float %1099, ptr %1100, align 4, !tbaa !84
  %1101 = getelementptr inbounds %struct.MTFace, ptr %1083, i64 1, i32 0, i64 2
  %1102 = load float, ptr %1095, align 4, !tbaa !84
  store float %1102, ptr %1101, align 4, !tbaa !84
  %1103 = getelementptr inbounds float, ptr %1095, i64 1
  %1104 = load float, ptr %1103, align 4, !tbaa !84
  %1105 = getelementptr inbounds %struct.MTFace, ptr %1083, i64 1, i32 0, i64 2, i64 1
  store float %1104, ptr %1105, align 4, !tbaa !84
  %1106 = getelementptr inbounds %struct.MTFace, ptr %1083, i64 1, i32 0, i64 3
  call void @mid_v2_v2v2(ptr noundef nonnull %1106, ptr noundef nonnull %1087, ptr noundef nonnull %1095) #9
  %1107 = add nuw nsw i32 %1081, 1
  %1108 = icmp eq i32 %1107, %488
  br i1 %1108, label %1222, label %1080, !llvm.loop !111

1109:                                             ; preds = %601
  %1110 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %555) #9
  %1111 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %1111, i32 noundef %555, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1110, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %1112 = add nsw i32 %555, 1
  %1113 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %1112) #9
  %1114 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %1114, i32 noundef %1112, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1113, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %1115 = add nsw i32 %555, 2
  %1116 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %1115) #9
  %1117 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %1117, i32 noundef %1115, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1116, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %1118 = sext i32 %602 to i64
  %1119 = getelementptr inbounds i32, ptr %338, i64 %1118
  %1120 = load i32, ptr %1119, align 4, !tbaa !65
  %1121 = sext i32 %555 to i64
  %1122 = getelementptr inbounds i32, ptr %504, i64 %1121
  store i32 %1120, ptr %1122, align 4, !tbaa !65
  store i32 %602, ptr %1110, align 4, !tbaa !81
  %1123 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %1124 = ptrtoint ptr %1123 to i64
  %1125 = trunc i64 %1124 to i32
  %1126 = getelementptr inbounds %struct.MFace, ptr %1110, i64 0, i32 1
  store i32 %1125, ptr %1126, align 4, !tbaa !83
  %1127 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %1128 = ptrtoint ptr %1127 to i64
  %1129 = trunc i64 %1128 to i32
  %1130 = getelementptr inbounds %struct.MFace, ptr %1110, i64 0, i32 2
  store i32 %1129, ptr %1130, align 4, !tbaa !85
  %1131 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %1132 = ptrtoint ptr %1131 to i64
  %1133 = trunc i64 %1132 to i32
  %1134 = getelementptr inbounds %struct.MFace, ptr %1110, i64 0, i32 3
  store i32 %1133, ptr %1134, align 4, !tbaa !86
  %1135 = getelementptr inbounds %struct.MFace, ptr %1110, i64 0, i32 6
  %1136 = load i8, ptr %1135, align 1, !tbaa !106
  %1137 = or i8 %1136, 2
  store i8 %1137, ptr %1135, align 1, !tbaa !106
  %1138 = sext i32 %603 to i64
  %1139 = getelementptr inbounds i32, ptr %338, i64 %1138
  %1140 = load i32, ptr %1139, align 4, !tbaa !65
  %1141 = sext i32 %1112 to i64
  %1142 = getelementptr inbounds i32, ptr %504, i64 %1141
  store i32 %1140, ptr %1142, align 4, !tbaa !65
  %1143 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %603) #9
  %1144 = ptrtoint ptr %1143 to i64
  %1145 = trunc i64 %1144 to i32
  store i32 %1145, ptr %1113, align 4, !tbaa !81
  %1146 = getelementptr inbounds %struct.MFace, ptr %1113, i64 0, i32 1
  store i32 %603, ptr %1146, align 4, !tbaa !83
  %1147 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %1148 = ptrtoint ptr %1147 to i64
  %1149 = trunc i64 %1148 to i32
  %1150 = getelementptr inbounds %struct.MFace, ptr %1113, i64 0, i32 2
  store i32 %1149, ptr %1150, align 4, !tbaa !85
  %1151 = getelementptr inbounds %struct.MFace, ptr %1113, i64 0, i32 3
  store i32 0, ptr %1151, align 4, !tbaa !86
  %1152 = getelementptr inbounds %struct.MFace, ptr %1113, i64 0, i32 6
  %1153 = load i8, ptr %1152, align 1, !tbaa !106
  %1154 = and i8 %1153, -3
  store i8 %1154, ptr %1152, align 1, !tbaa !106
  %1155 = sext i32 %604 to i64
  %1156 = getelementptr inbounds i32, ptr %338, i64 %1155
  %1157 = load i32, ptr %1156, align 4, !tbaa !65
  %1158 = sext i32 %1115 to i64
  %1159 = getelementptr inbounds i32, ptr %504, i64 %1158
  store i32 %1157, ptr %1159, align 4, !tbaa !65
  %1160 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %602, i32 noundef %604) #9
  %1161 = ptrtoint ptr %1160 to i64
  %1162 = trunc i64 %1161 to i32
  store i32 %1162, ptr %1116, align 4, !tbaa !81
  %1163 = call ptr @BLI_edgehash_lookup(ptr noundef %340, i32 noundef %603, i32 noundef %604) #9
  %1164 = ptrtoint ptr %1163 to i64
  %1165 = trunc i64 %1164 to i32
  %1166 = getelementptr inbounds %struct.MFace, ptr %1116, i64 0, i32 1
  store i32 %1165, ptr %1166, align 4, !tbaa !83
  %1167 = getelementptr inbounds %struct.MFace, ptr %1116, i64 0, i32 2
  store i32 %604, ptr %1167, align 4, !tbaa !85
  %1168 = getelementptr inbounds %struct.MFace, ptr %1116, i64 0, i32 3
  store i32 0, ptr %1168, align 4, !tbaa !86
  %1169 = getelementptr inbounds %struct.MFace, ptr %1116, i64 0, i32 6
  %1170 = load i8, ptr %1169, align 1, !tbaa !106
  %1171 = and i8 %1170, -3
  store i8 %1171, ptr %1169, align 1, !tbaa !106
  br i1 %528, label %1222, label %1172

1172:                                             ; preds = %1109
  %1173 = zext nneg i32 %606 to i64
  %1174 = zext nneg i32 %607 to i64
  %1175 = zext nneg i32 %608 to i64
  br label %1176

1176:                                             ; preds = %1172, %1176
  %1177 = phi i32 [ 0, %1172 ], [ %1203, %1176 ]
  %1178 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %487, i32 noundef 5, i32 noundef %1177) #9
  %1179 = getelementptr inbounds %struct.MTFace, ptr %1178, i64 %1121
  %1180 = getelementptr inbounds %struct.MTFace, ptr %1179, i64 1
  %1181 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %529, i32 noundef 5, i32 noundef %1177) #9
  %1182 = getelementptr inbounds %struct.MTFace, ptr %1181, i64 %545
  %1183 = getelementptr inbounds [4 x [2 x float]], ptr %1182, i64 0, i64 %1173
  %1184 = load float, ptr %1183, align 4, !tbaa !84
  store float %1184, ptr %1179, align 4, !tbaa !84
  %1185 = getelementptr inbounds float, ptr %1183, i64 1
  %1186 = load float, ptr %1185, align 4, !tbaa !84
  %1187 = getelementptr inbounds float, ptr %1179, i64 1
  store float %1186, ptr %1187, align 4, !tbaa !84
  %1188 = getelementptr inbounds [4 x [2 x float]], ptr %1179, i64 0, i64 1
  %1189 = getelementptr inbounds [4 x [2 x float]], ptr %1182, i64 0, i64 %1174
  call void @mid_v2_v2v2(ptr noundef nonnull %1188, ptr noundef nonnull %1183, ptr noundef %1189) #9
  %1190 = getelementptr inbounds [4 x [2 x float]], ptr %1179, i64 0, i64 2
  %1191 = getelementptr inbounds [4 x [2 x float]], ptr %1182, i64 0, i64 %1175
  call void @mid_v2_v2v2(ptr noundef nonnull %1190, ptr noundef %1189, ptr noundef %1191) #9
  %1192 = getelementptr inbounds [4 x [2 x float]], ptr %1179, i64 0, i64 3
  call void @mid_v2_v2v2(ptr noundef nonnull %1192, ptr noundef nonnull %1183, ptr noundef %1191) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %1180, ptr noundef nonnull %1183, ptr noundef %1189) #9
  %1193 = getelementptr inbounds %struct.MTFace, ptr %1179, i64 1, i32 0, i64 1
  %1194 = load float, ptr %1189, align 4, !tbaa !84
  store float %1194, ptr %1193, align 4, !tbaa !84
  %1195 = getelementptr inbounds float, ptr %1189, i64 1
  %1196 = load float, ptr %1195, align 4, !tbaa !84
  %1197 = getelementptr inbounds %struct.MTFace, ptr %1179, i64 1, i32 0, i64 1, i64 1
  store float %1196, ptr %1197, align 4, !tbaa !84
  %1198 = getelementptr inbounds %struct.MTFace, ptr %1179, i64 1, i32 0, i64 2
  call void @mid_v2_v2v2(ptr noundef nonnull %1198, ptr noundef nonnull %1189, ptr noundef %1191) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %1180, ptr noundef nonnull %1183, ptr noundef %1191) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %1193, ptr noundef nonnull %1189, ptr noundef %1191) #9
  %1199 = load float, ptr %1191, align 4, !tbaa !84
  store float %1199, ptr %1198, align 4, !tbaa !84
  %1200 = getelementptr inbounds float, ptr %1191, i64 1
  %1201 = load float, ptr %1200, align 4, !tbaa !84
  %1202 = getelementptr inbounds %struct.MTFace, ptr %1179, i64 1, i32 0, i64 2, i64 1
  store float %1201, ptr %1202, align 4, !tbaa !84
  %1203 = add nuw nsw i32 %1177, 1
  %1204 = icmp eq i32 %1203, %488
  br i1 %1204, label %1222, label %1176, !llvm.loop !112

1205:                                             ; preds = %601, %601
  %1206 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %555) #9
  %1207 = trunc i64 %545 to i32
  call void @DM_copy_tessface_data(ptr noundef %2, ptr noundef %486, i32 noundef %1207, i32 noundef %555, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1206, ptr noundef nonnull align 4 dereferenceable(20) %558, i64 20, i1 false), !tbaa.struct !105
  %1208 = load i32, ptr %558, align 4, !tbaa !81
  %1209 = zext i32 %1208 to i64
  %1210 = getelementptr inbounds i32, ptr %338, i64 %1209
  %1211 = load i32, ptr %1210, align 4, !tbaa !65
  %1212 = sext i32 %555 to i64
  %1213 = getelementptr inbounds i32, ptr %504, i64 %1212
  store i32 %1211, ptr %1213, align 4, !tbaa !65
  %1214 = getelementptr inbounds %struct.MFace, ptr %1206, i64 0, i32 3
  %1215 = load i32, ptr %1214, align 4, !tbaa !86
  %1216 = icmp eq i32 %1215, 0
  %1217 = getelementptr inbounds %struct.MFace, ptr %1206, i64 0, i32 6
  %1218 = load i8, ptr %1217, align 1, !tbaa !106
  %1219 = and i8 %1218, -3
  %1220 = select i1 %1216, i8 0, i8 2
  %1221 = or disjoint i8 %1219, %1220
  store i8 %1221, ptr %1217, align 1, !tbaa !106
  br label %1222

1222:                                             ; preds = %1176, %1080, %998, %887, %755, %667, %1205, %1109, %1036, %930, %790, %710, %610, %601
  %1223 = load i32, ptr %554, align 4, !tbaa !65
  %1224 = sext i32 %1223 to i64
  %1225 = getelementptr inbounds [24 x i16], ptr @add_faces, i64 0, i64 %1224
  %1226 = load i16, ptr %1225, align 2, !tbaa !95
  %1227 = sext i16 %1226 to i32
  %1228 = add i32 %555, 1
  %1229 = add i32 %1228, %1227
  %1230 = add nuw nsw i64 %545, 1
  %1231 = getelementptr inbounds i32, ptr %554, i64 1
  %1232 = icmp eq i64 %1230, %540
  br i1 %1232, label %541, label %544, !llvm.loop !113

1233:                                             ; preds = %541, %1233
  %1234 = phi i32 [ %1242, %1233 ], [ 0, %541 ]
  %1235 = call ptr @CDDM_get_tessface(ptr noundef %486, i32 noundef %1234) #9
  %1236 = getelementptr inbounds %struct.MFace, ptr %1235, i64 0, i32 6
  %1237 = load i8, ptr %1236, align 1, !tbaa !106
  %1238 = and i8 %1237, 2
  %1239 = icmp eq i8 %1238, 0
  %1240 = select i1 %1239, i32 3, i32 4
  %1241 = call i32 @test_index_face(ptr noundef %1235, ptr noundef nonnull %487, i32 noundef %1234, i32 noundef %1240) #9
  %1242 = add nuw nsw i32 %1234, 1
  %1243 = icmp eq i32 %1242, %542
  br i1 %1243, label %1244, label %1233, !llvm.loop !114

1244:                                             ; preds = %1233, %541
  call void @BLI_edgehash_free(ptr noundef %340, ptr noundef null) #9
  %1245 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %1245(ptr noundef %334) #9
  %1246 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %1246(ptr noundef %338) #9
  call void @CDDM_calc_edges_tessface(ptr noundef %486) #9
  call void @CDDM_tessfaces_to_faces(ptr noundef %486) #9
  %1247 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %1248 = load ptr, ptr %1247, align 8, !tbaa !115
  %1249 = call fastcc ptr @explodeMesh(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %1248, ptr noundef %1, ptr noundef %486)
  %1250 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %1251 = load ptr, ptr %44, align 8, !tbaa !34
  call void %1250(ptr noundef %1251) #9
  store ptr %321, ptr %44, align 8, !tbaa !34
  %1252 = getelementptr inbounds %struct.DerivedMesh, ptr %486, i64 0, i32 95
  %1253 = load ptr, ptr %1252, align 8, !tbaa !116
  call void %1253(ptr noundef %486) #9
  br label %1258

1254:                                             ; preds = %315
  %1255 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %1256 = load ptr, ptr %1255, align 8, !tbaa !115
  %1257 = call fastcc ptr @explodeMesh(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %1256, ptr noundef %1, ptr noundef %2)
  br label %1258

1258:                                             ; preds = %20, %1244, %1254, %27, %23, %35, %31, %39
  %1259 = phi ptr [ %1249, %1244 ], [ %1257, %1254 ], [ %2, %27 ], [ %2, %23 ], [ %2, %35 ], [ %2, %31 ], [ %2, %39 ], [ %2, %20 ]
  ret ptr %1259
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !57
  %5 = or i16 %4, 56
  store i16 %5, ptr %3, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ExplodeModifierData, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 2, !tbaa !68
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %6(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #3 {
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @explodeMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ParticleSimulationData, align 8
  %7 = alloca %struct.ParticleKey, align 4
  %8 = alloca %struct.ParticleKey, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca %struct.MVert, align 4
  %12 = alloca %struct.MFace, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %13 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %17 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = tail call i32 %20(ptr noundef %4) #9
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = tail call i32 %23(ptr noundef %4) #9
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 33
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = tail call ptr %26(ptr noundef %4) #9
  %28 = load ptr, ptr %13, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %28, i64 0, i32 26
  %30 = load i32, ptr %29, align 8, !tbaa !50
  store ptr %2, ptr %6, align 8, !tbaa !117
  %31 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 1
  store ptr %3, ptr %31, align 8, !tbaa !119
  %32 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 2
  store ptr %28, ptr %32, align 8, !tbaa !120
  %33 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 3
  store ptr %1, ptr %33, align 8, !tbaa !121
  %34 = tail call float @BKE_scene_frame_get(ptr noundef %2) #9
  %35 = tail call ptr @BLI_edgehash_new(ptr noundef nonnull @__func__.explodeMesh) #9
  %36 = icmp sgt i32 %21, 0
  br i1 %36, label %37, label %101

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %39 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %40 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %41 = zext nneg i32 %21 to i64
  br label %42

42:                                               ; preds = %37, %96
  %43 = phi i64 [ 0, %37 ], [ %99, %96 ]
  %44 = phi ptr [ null, %37 ], [ %98, %96 ]
  %45 = phi i32 [ 0, %37 ], [ %97, %96 ]
  %46 = getelementptr inbounds i32, ptr %18, i64 %43
  %47 = load i32, ptr %46, align 4, !tbaa !65
  %48 = icmp eq i32 %47, %30
  br i1 %48, label %71, label %49

49:                                               ; preds = %42
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %50
  %52 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %50, i32 18
  %53 = load i16, ptr %52, align 2, !tbaa !122
  switch i16 %53, label %71 [
    i16 2, label %54
    i16 3, label %59
    i16 1, label %65
  ]

54:                                               ; preds = %49
  %55 = load i16, ptr %38, align 8, !tbaa !57
  %56 = and i16 %55, 8
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  switch i16 %53, label %71 [
    i16 3, label %59
    i16 1, label %65
  ]

59:                                               ; preds = %49, %58
  %60 = load i16, ptr %39, align 8, !tbaa !57
  %61 = and i16 %60, 16
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = icmp eq i16 %53, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %49, %58, %63
  %66 = load i16, ptr %40, align 8, !tbaa !57
  %67 = and i16 %66, 32
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %59, %54
  %70 = add nsw i32 %45, 1
  br label %96

71:                                               ; preds = %49, %58, %63, %65, %42
  %72 = phi ptr [ %51, %65 ], [ %51, %63 ], [ %44, %42 ], [ %51, %58 ], [ %51, %49 ]
  br i1 %48, label %79, label %73

73:                                               ; preds = %71
  %74 = sext i32 %47 to i64
  %75 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %74, i32 6
  %76 = load float, ptr %75, align 4, !tbaa !123
  %77 = fcmp olt float %34, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %71, %73, %78
  %80 = phi i32 [ %47, %78 ], [ %30, %73 ], [ %30, %71 ]
  %81 = add nsw i32 %80, %24
  %82 = getelementptr inbounds %struct.MFace, ptr %27, i64 %43
  %83 = load i32, ptr %82, align 4, !tbaa !81
  %84 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %35, i32 noundef %83, i32 noundef %81, ptr noundef null) #9
  %85 = getelementptr inbounds %struct.MFace, ptr %27, i64 %43, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !83
  %87 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %35, i32 noundef %86, i32 noundef %81, ptr noundef null) #9
  %88 = getelementptr inbounds %struct.MFace, ptr %27, i64 %43, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !85
  %90 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %35, i32 noundef %89, i32 noundef %81, ptr noundef null) #9
  %91 = getelementptr inbounds %struct.MFace, ptr %27, i64 %43, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !86
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %79
  %95 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %35, i32 noundef %92, i32 noundef %81, ptr noundef null) #9
  br label %96

96:                                               ; preds = %79, %94, %69
  %97 = phi i32 [ %70, %69 ], [ %45, %94 ], [ %45, %79 ]
  %98 = phi ptr [ %51, %69 ], [ %72, %94 ], [ %72, %79 ]
  %99 = add nuw nsw i64 %43, 1
  %100 = icmp eq i64 %99, %41
  br i1 %100, label %101, label %42, !llvm.loop !124

101:                                              ; preds = %96, %5
  %102 = phi i32 [ 0, %5 ], [ %97, %96 ]
  %103 = phi ptr [ null, %5 ], [ %98, %96 ]
  %104 = tail call ptr @BLI_edgehashIterator_new(ptr noundef %35) #9
  %105 = getelementptr inbounds %struct.EdgeHashIterator, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !90
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %101, %108
  %109 = phi i64 [ %113, %108 ], [ 0, %101 ]
  %110 = phi ptr [ %114, %108 ], [ %106, %101 ]
  %111 = inttoptr i64 %109 to ptr
  %112 = getelementptr inbounds %struct._eh_Entry, ptr %110, i64 0, i32 3
  store ptr %111, ptr %112, align 8, !tbaa !92
  %113 = add nuw i64 %109, 1
  tail call void @BLI_edgehashIterator_step(ptr noundef %104) #9
  %114 = load ptr, ptr %105, align 8, !tbaa !90
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %108, !llvm.loop !125

116:                                              ; preds = %108
  %117 = trunc i64 %113 to i32
  br label %118

118:                                              ; preds = %116, %101
  %119 = phi i32 [ 0, %101 ], [ %117, %116 ]
  tail call void @BLI_edgehashIterator_free(ptr noundef %104) #9
  %120 = sub nsw i32 %21, %102
  %121 = tail call ptr @CDDM_from_template(ptr noundef %4, i32 noundef %119, i32 noundef 0, i32 noundef %120, i32 noundef 0, i32 noundef 0) #9
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %121, i64 0, i32 2
  %123 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 5
  %124 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %122, i32 noundef 5, ptr noundef nonnull %123) #9
  %125 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %126 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %125) #9
  %127 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %6) #9
  %128 = load ptr, ptr %13, align 8, !tbaa !48
  %129 = getelementptr inbounds %struct.ParticleSystem, ptr %128, i64 0, i32 15
  store ptr %127, ptr %129, align 8, !tbaa !126
  %130 = call ptr @BLI_edgehashIterator_new(ptr noundef %35) #9
  %131 = getelementptr inbounds %struct.EdgeHashIterator, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !90
  %133 = icmp eq ptr %132, null
  br i1 %133, label %201, label %134

134:                                              ; preds = %118
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 28
  %136 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 4
  %137 = getelementptr inbounds float, ptr %8, i64 1
  %138 = getelementptr inbounds float, ptr %8, i64 2
  %139 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 2
  %140 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 2
  %141 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %142 = getelementptr inbounds float, ptr %7, i64 1
  %143 = getelementptr inbounds float, ptr %7, i64 2
  br label %144

144:                                              ; preds = %134, %197
  %145 = phi ptr [ %103, %134 ], [ %198, %197 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #9
  %146 = load ptr, ptr %131, align 8, !tbaa !90
  %147 = getelementptr inbounds %struct._eh_Entry, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !101
  %149 = getelementptr inbounds %struct._eh_Entry, ptr %146, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !102
  %151 = sub i32 %150, %24
  %152 = getelementptr inbounds %struct._eh_Entry, ptr %146, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !92
  %154 = ptrtoint ptr %153 to i64
  %155 = trunc i64 %154 to i32
  %156 = load ptr, ptr %135, align 8, !tbaa !97
  call void %156(ptr noundef %4, i32 noundef %148, ptr noundef nonnull %11) #9
  %157 = call ptr @CDDM_get_vert(ptr noundef %121, i32 noundef %155) #9
  call void @DM_copy_vert_data(ptr noundef %4, ptr noundef %121, i32 noundef %148, i32 noundef %155, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %157, ptr noundef nonnull align 4 dereferenceable(20) %11, i64 20, i1 false), !tbaa.struct !98
  %158 = icmp eq i32 %151, %30
  br i1 %158, label %197, label %159

159:                                              ; preds = %144
  %160 = zext i32 %151 to i64
  %161 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %160
  call void @psys_get_birth_coordinates(ptr noundef nonnull %6, ptr noundef %161, ptr noundef nonnull %8, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  store float %34, ptr %136, align 4, !tbaa !127
  %162 = call i32 @psys_get_particle_state(ptr noundef nonnull %6, i32 noundef %151, ptr noundef nonnull %7, i32 noundef 1) #9
  %163 = call ptr @CDDM_get_vert(ptr noundef %121, i32 noundef %155) #9
  call void @mul_m4_v3(ptr noundef nonnull %125, ptr noundef %163) #9
  %164 = load float, ptr %8, align 4, !tbaa !84
  %165 = load float, ptr %163, align 4, !tbaa !84
  %166 = fsub float %165, %164
  store float %166, ptr %163, align 4, !tbaa !84
  %167 = load float, ptr %137, align 4, !tbaa !84
  %168 = getelementptr inbounds float, ptr %163, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !84
  %170 = fsub float %169, %167
  store float %170, ptr %168, align 4, !tbaa !84
  %171 = load float, ptr %138, align 4, !tbaa !84
  %172 = getelementptr inbounds float, ptr %163, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !84
  %174 = fsub float %173, %171
  store float %174, ptr %172, align 4, !tbaa !84
  call void @sub_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %139, ptr noundef nonnull %140) #9
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %163) #9
  %175 = load i16, ptr %141, align 8, !tbaa !57
  %176 = and i16 %175, 2
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %159
  %179 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %160, i32 13
  %180 = load float, ptr %179, align 4, !tbaa !128
  %181 = load float, ptr %163, align 4, !tbaa !84
  %182 = fmul float %180, %181
  store float %182, ptr %163, align 4, !tbaa !84
  %183 = load float, ptr %168, align 4, !tbaa !84
  %184 = fmul float %180, %183
  store float %184, ptr %168, align 4, !tbaa !84
  %185 = load float, ptr %172, align 4, !tbaa !84
  %186 = fmul float %180, %185
  store float %186, ptr %172, align 4, !tbaa !84
  br label %187

187:                                              ; preds = %178, %159
  %188 = load float, ptr %7, align 4, !tbaa !84
  %189 = load float, ptr %163, align 4, !tbaa !84
  %190 = fadd float %188, %189
  store float %190, ptr %163, align 4, !tbaa !84
  %191 = load float, ptr %142, align 4, !tbaa !84
  %192 = load float, ptr %168, align 4, !tbaa !84
  %193 = fadd float %191, %192
  store float %193, ptr %168, align 4, !tbaa !84
  %194 = load float, ptr %143, align 4, !tbaa !84
  %195 = load float, ptr %172, align 4, !tbaa !84
  %196 = fadd float %194, %195
  store float %196, ptr %172, align 4, !tbaa !84
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %163) #9
  br label %197

197:                                              ; preds = %187, %144
  %198 = phi ptr [ %161, %187 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #9
  call void @BLI_edgehashIterator_step(ptr noundef %130) #9
  %199 = load ptr, ptr %131, align 8, !tbaa !90
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %144, !llvm.loop !129

201:                                              ; preds = %197, %118
  %202 = phi ptr [ %103, %118 ], [ %198, %197 ]
  call void @BLI_edgehashIterator_free(ptr noundef %130) #9
  %203 = icmp sgt i32 %21, 0
  br i1 %203, label %204, label %309

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %206 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %207 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %208 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 30
  %209 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 3
  %210 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 1
  %211 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 2
  %212 = icmp eq ptr %124, null
  %213 = zext nneg i32 %21 to i64
  br label %214

214:                                              ; preds = %204, %304
  %215 = phi i64 [ 0, %204 ], [ %307, %304 ]
  %216 = phi ptr [ %202, %204 ], [ %306, %304 ]
  %217 = phi i32 [ 0, %204 ], [ %305, %304 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #9
  %218 = getelementptr inbounds i32, ptr %18, i64 %215
  %219 = load i32, ptr %218, align 4, !tbaa !65
  %220 = icmp eq i32 %219, %30
  br i1 %220, label %241, label %221

221:                                              ; preds = %214
  %222 = sext i32 %219 to i64
  %223 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %222
  %224 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %222, i32 18
  %225 = load i16, ptr %224, align 2, !tbaa !122
  switch i16 %225, label %241 [
    i16 2, label %226
    i16 3, label %231
    i16 1, label %237
  ]

226:                                              ; preds = %221
  %227 = load i16, ptr %205, align 8, !tbaa !57
  %228 = and i16 %227, 8
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %304, label %230

230:                                              ; preds = %226
  switch i16 %225, label %241 [
    i16 3, label %231
    i16 1, label %237
  ]

231:                                              ; preds = %221, %230
  %232 = load i16, ptr %206, align 8, !tbaa !57
  %233 = and i16 %232, 16
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %304, label %235

235:                                              ; preds = %231
  %236 = icmp eq i16 %225, 1
  br i1 %236, label %237, label %241

237:                                              ; preds = %221, %230, %235
  %238 = load i16, ptr %207, align 8, !tbaa !57
  %239 = and i16 %238, 32
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %304, label %241

241:                                              ; preds = %221, %230, %235, %237, %214
  %242 = phi ptr [ %223, %237 ], [ %223, %235 ], [ %216, %214 ], [ %223, %230 ], [ %223, %221 ]
  %243 = load ptr, ptr %208, align 8, !tbaa !130
  %244 = trunc i64 %215 to i32
  call void %243(ptr noundef %4, i32 noundef %244, ptr noundef nonnull %12) #9
  %245 = call ptr @CDDM_get_tessface(ptr noundef %121, i32 noundef %217) #9
  %246 = load i32, ptr %209, align 4, !tbaa !86
  %247 = load i32, ptr %218, align 4, !tbaa !65
  %248 = icmp eq i32 %247, %30
  br i1 %248, label %253, label %249

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.ParticleData, ptr %242, i64 0, i32 6
  %251 = load float, ptr %250, align 4, !tbaa !123
  %252 = fcmp olt float %34, %251
  br i1 %252, label %254, label %253

253:                                              ; preds = %249, %241
  br label %254

254:                                              ; preds = %249, %253
  %255 = phi i32 [ %247, %253 ], [ %30, %249 ]
  %256 = add nsw i32 %255, %24
  %257 = load i32, ptr %12, align 4, !tbaa !81
  %258 = call ptr @BLI_edgehash_lookup(ptr noundef %35, i32 noundef %257, i32 noundef %256) #9
  %259 = ptrtoint ptr %258 to i64
  %260 = trunc i64 %259 to i32
  store i32 %260, ptr %12, align 4, !tbaa !81
  %261 = load i32, ptr %210, align 4, !tbaa !83
  %262 = call ptr @BLI_edgehash_lookup(ptr noundef %35, i32 noundef %261, i32 noundef %256) #9
  %263 = ptrtoint ptr %262 to i64
  %264 = trunc i64 %263 to i32
  store i32 %264, ptr %210, align 4, !tbaa !83
  %265 = load i32, ptr %211, align 4, !tbaa !85
  %266 = call ptr @BLI_edgehash_lookup(ptr noundef %35, i32 noundef %265, i32 noundef %256) #9
  %267 = ptrtoint ptr %266 to i64
  %268 = trunc i64 %267 to i32
  store i32 %268, ptr %211, align 4, !tbaa !85
  %269 = load i32, ptr %209, align 4, !tbaa !86
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %254
  %272 = call ptr @BLI_edgehash_lookup(ptr noundef %35, i32 noundef %269, i32 noundef %256) #9
  %273 = ptrtoint ptr %272 to i64
  %274 = trunc i64 %273 to i32
  store i32 %274, ptr %209, align 4, !tbaa !86
  br label %275

275:                                              ; preds = %271, %254
  %276 = trunc i64 %215 to i32
  call void @DM_copy_tessface_data(ptr noundef %4, ptr noundef %121, i32 noundef %276, i32 noundef %217, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %245, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !105
  br i1 %212, label %299, label %277

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.ParticleData, ptr %242, i64 0, i32 6
  %279 = load float, ptr %278, align 4, !tbaa !123
  %280 = fsub float %34, %279
  %281 = getelementptr inbounds %struct.ParticleData, ptr %242, i64 0, i32 7
  %282 = load float, ptr %281, align 8, !tbaa !131
  %283 = fdiv float %280, %282
  %284 = fcmp olt float %283, 0x3F50624DE0000000
  br i1 %284, label %288, label %285

285:                                              ; preds = %277
  %286 = fcmp ogt float %283, 0x3FEFF7CEE0000000
  br i1 %286, label %287, label %288

287:                                              ; preds = %285
  br label %288

288:                                              ; preds = %277, %285, %287
  %289 = phi float [ 0x3FEFF7CEE0000000, %287 ], [ %283, %285 ], [ 0x3F50624DE0000000, %277 ]
  %290 = sext i32 %217 to i64
  %291 = getelementptr inbounds %struct.MTFace, ptr %124, i64 %290
  %292 = getelementptr inbounds [4 x [2 x float]], ptr %291, i64 0, i64 3
  store float %289, ptr %292, align 8, !tbaa !84
  %293 = getelementptr inbounds [4 x [2 x float]], ptr %291, i64 0, i64 2
  store float %289, ptr %293, align 8, !tbaa !84
  %294 = getelementptr inbounds [4 x [2 x float]], ptr %291, i64 0, i64 1
  store float %289, ptr %294, align 8, !tbaa !84
  store float %289, ptr %291, align 8, !tbaa !84
  %295 = getelementptr inbounds [4 x [2 x float]], ptr %291, i64 0, i64 3, i64 1
  store float 5.000000e-01, ptr %295, align 4, !tbaa !84
  %296 = getelementptr inbounds [4 x [2 x float]], ptr %291, i64 0, i64 2, i64 1
  store float 5.000000e-01, ptr %296, align 4, !tbaa !84
  %297 = getelementptr inbounds [4 x [2 x float]], ptr %291, i64 0, i64 1, i64 1
  store float 5.000000e-01, ptr %297, align 4, !tbaa !84
  %298 = getelementptr inbounds [2 x float], ptr %291, i64 0, i64 1
  store float 5.000000e-01, ptr %298, align 4, !tbaa !84
  br label %299

299:                                              ; preds = %288, %275
  %300 = icmp eq i32 %246, 0
  %301 = select i1 %300, i32 3, i32 4
  %302 = call i32 @test_index_face(ptr noundef %245, ptr noundef nonnull %122, i32 noundef %217, i32 noundef %301) #9
  %303 = add nsw i32 %217, 1
  br label %304

304:                                              ; preds = %237, %231, %226, %299
  %305 = phi i32 [ %303, %299 ], [ %217, %226 ], [ %217, %231 ], [ %217, %237 ]
  %306 = phi ptr [ %242, %299 ], [ %223, %226 ], [ %223, %231 ], [ %223, %237 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #9
  %307 = add nuw nsw i64 %215, 1
  %308 = icmp eq i64 %307, %213
  br i1 %308, label %309, label %214, !llvm.loop !132

309:                                              ; preds = %304, %201
  call void @BLI_edgehash_free(ptr noundef %35, ptr noundef null) #9
  call void @CDDM_calc_edges_tessface(ptr noundef %121) #9
  call void @CDDM_tessfaces_to_faces(ptr noundef %121) #9
  %310 = getelementptr inbounds %struct.DerivedMesh, ptr %121, i64 0, i32 16
  %311 = load i32, ptr %310, align 8, !tbaa !133
  %312 = or i32 %311, 4
  store i32 %312, ptr %310, align 8, !tbaa !133
  %313 = load ptr, ptr %13, align 8, !tbaa !48
  %314 = getelementptr inbounds %struct.ParticleSystem, ptr %313, i64 0, i32 15
  %315 = load ptr, ptr %314, align 8, !tbaa !126
  %316 = icmp eq ptr %315, null
  br i1 %316, label %320, label %317

317:                                              ; preds = %309
  call void @end_latt_deform(ptr noundef nonnull %315) #9
  %318 = load ptr, ptr %13, align 8, !tbaa !48
  %319 = getelementptr inbounds %struct.ParticleSystem, ptr %318, i64 0, i32 15
  store ptr null, ptr %319, align 8, !tbaa !126
  br label %320

320:                                              ; preds = %317, %309
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #9
  ret ptr %121
}

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #5

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #5

declare void @psys_particle_on_emitter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #5

declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #5

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare ptr @BLI_edgehash_new(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BLI_edgehash_reinsert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #5

declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #5

declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #5

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @CDDM_get_tessface(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @CDDM_calc_edges_tessface(ptr noundef) local_unnamed_addr #5

declare void @CDDM_tessfaces_to_faces(ptr noundef) local_unnamed_addr #5

declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @DM_copy_tessface_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #5

declare void @psys_get_birth_coordinates(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #5

declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sub_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @end_latt_deform(ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }

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
!34 = !{!35, !37, i64 112}
!35 = !{!"ExplodeModifierData", !36, i64 0, !37, i64 112, !41, i64 120, !41, i64 122, !42, i64 124, !38, i64 128}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!37, !37, i64 0}
!44 = !{!36, !40, i64 16}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!49, !37, i64 112}
!49 = !{!"ParticleSystemModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !40, i64 128, !40, i64 132, !40, i64 136, !41, i64 140, !41, i64 142}
!50 = !{!51, !40, i64 320}
!51 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !52, i64 72, !52, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !52, i64 152, !38, i64 168, !38, i64 232, !42, i64 296, !42, i64 300, !42, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !41, i64 340, !41, i64 342, !41, i64 344, !41, i64 346, !38, i64 348, !38, i64 540, !41, i64 564, !41, i64 566, !37, i64 568, !37, i64 576, !52, i64 584, !37, i64 600, !37, i64 608, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !42, i64 648, !42, i64 652}
!52 = !{!"ListBase", !37, i64 0, !37, i64 8}
!53 = !{!51, !37, i64 16}
!54 = !{!51, !37, i64 24}
!55 = !{!49, !37, i64 120}
!56 = !{!49, !41, i64 140}
!57 = !{!35, !41, i64 120}
!58 = !{!59, !37, i64 1120}
!59 = !{!"DerivedMesh", !60, i64 0, !60, i64 200, !60, i64 400, !60, i64 600, !60, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!60 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!61 = !{!59, !37, i64 1168}
!62 = !{!59, !37, i64 1184}
!63 = !{!59, !37, i64 1104}
!64 = !{!51, !40, i64 308}
!65 = !{!40, !40, i64 0}
!66 = distinct !{!66, !46, !47}
!67 = distinct !{!67, !46, !47}
!68 = !{!35, !41, i64 122}
!69 = !{!59, !37, i64 1320}
!70 = !{!35, !42, i64 124}
!71 = distinct !{!71, !46, !47}
!72 = !{!73, !41, i64 162}
!73 = !{!"ParticleSettings", !74, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !40, i64 152, !40, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !40, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 248, !42, i64 256, !42, i64 260, !42, i64 264, !41, i64 268, !41, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !38, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !41, i64 340, !38, i64 342, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !38, i64 376, !42, i64 388, !42, i64 392, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !42, i64 412, !38, i64 416, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !40, i64 444, !40, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !42, i64 480, !42, i64 484, !42, i64 488, !42, i64 492, !42, i64 496, !42, i64 500, !42, i64 504, !42, i64 508, !42, i64 512, !42, i64 516, !42, i64 520, !42, i64 524, !42, i64 528, !42, i64 532, !42, i64 536, !42, i64 540, !42, i64 544, !42, i64 548, !38, i64 552, !42, i64 560, !42, i64 564, !40, i64 568, !40, i64 572, !38, i64 576, !37, i64 720, !52, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !41, i64 792, !38, i64 794}
!74 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!75 = !{!76, !40, i64 152}
!76 = !{!"ParticleData", !77, i64 0, !77, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !40, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !40, i64 152, !40, i64 156, !38, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !40, i64 188, !40, i64 192, !41, i64 196, !41, i64 198}
!77 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !42, i64 52}
!78 = !{!76, !40, i64 156}
!79 = !{!76, !42, i64 176}
!80 = distinct !{!80, !46, !47}
!81 = !{!82, !40, i64 0}
!82 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !38, i64 18, !38, i64 19}
!83 = !{!82, !40, i64 4}
!84 = !{!42, !42, i64 0}
!85 = !{!82, !40, i64 8}
!86 = !{!82, !40, i64 12}
!87 = distinct !{!87, !46, !47}
!88 = distinct !{!88, !46, !47}
!89 = distinct !{!89, !46, !47}
!90 = !{!91, !37, i64 8}
!91 = !{!"EdgeHashIterator", !37, i64 0, !37, i64 8, !40, i64 16}
!92 = !{!93, !37, i64 16}
!93 = !{!"_eh_Entry", !37, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!94 = distinct !{!94, !46, !47}
!95 = !{!41, !41, i64 0}
!96 = distinct !{!96, !46, !47}
!97 = !{!59, !37, i64 1144}
!98 = !{i64 0, i64 12, !99, i64 12, i64 6, !99, i64 18, i64 1, !99, i64 19, i64 1, !99}
!99 = !{!38, !38, i64 0}
!100 = distinct !{!100, !46, !47}
!101 = !{!93, !40, i64 8}
!102 = !{!93, !40, i64 12}
!103 = distinct !{!103, !46, !47}
!104 = !{!59, !37, i64 1304}
!105 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65, i64 12, i64 4, !65, i64 16, i64 2, !95, i64 18, i64 1, !99, i64 19, i64 1, !99}
!106 = !{!82, !38, i64 19}
!107 = distinct !{!107, !46, !47}
!108 = distinct !{!108, !46, !47}
!109 = distinct !{!109, !46, !47}
!110 = distinct !{!110, !46, !47}
!111 = distinct !{!111, !46, !47}
!112 = distinct !{!112, !46, !47}
!113 = distinct !{!113, !46, !47}
!114 = distinct !{!114, !46, !47}
!115 = !{!36, !37, i64 96}
!116 = !{!59, !37, i64 1680}
!117 = !{!118, !37, i64 0}
!118 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !42, i64 40}
!119 = !{!118, !37, i64 8}
!120 = !{!118, !37, i64 16}
!121 = !{!118, !37, i64 24}
!122 = !{!76, !41, i64 198}
!123 = !{!76, !42, i64 140}
!124 = distinct !{!124, !46, !47}
!125 = distinct !{!125, !46, !47}
!126 = !{!51, !37, i64 136}
!127 = !{!77, !42, i64 52}
!128 = !{!76, !42, i64 180}
!129 = distinct !{!129, !46, !47}
!130 = !{!59, !37, i64 1160}
!131 = !{!76, !42, i64 144}
!132 = distinct !{!132, !46, !47}
!133 = !{!59, !40, i64 1056}
