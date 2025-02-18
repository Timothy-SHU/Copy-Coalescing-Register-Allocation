; ModuleID = 'blender/source/blender/modifiers/intern/MOD_meshdeform.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_meshdeform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MDefInfluence = type { i32, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MeshdeformUserdata = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDefCell = type { i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"MDefBindInfluence\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"MDefBindOffset\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@modifierType_MeshDeform = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"MeshDeform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MeshDeformModifierData\00\00\00\00\00\00\00\00\00\00", i32 360, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot get mesh from cage object\00", align 1
@meshdeformModifier_do.recursive = internal unnamed_addr global i1 false, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Verts changed from %d to %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Cage verts changed from %d to %d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Bind data missing\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"meshdeformModifier vertCos\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"MDefDco\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"Mesh Deform Modifier\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @modifier_mdef_compact_influences(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %114, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !44
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %5
  %12 = icmp sgt i32 %9, 0
  %13 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 15
  %14 = zext nneg i32 %7 to i64
  %15 = zext nneg i32 %9 to i64
  br label %16

16:                                               ; preds = %11, %34
  %17 = phi i64 [ 0, %11 ], [ %35, %34 ]
  br i1 %12, label %18, label %34

18:                                               ; preds = %16
  %19 = trunc i64 %17 to i32
  %20 = mul i32 %9, %19
  %21 = zext i32 %20 to i64
  %22 = getelementptr float, ptr %3, i64 %21
  br label %23

23:                                               ; preds = %18, %31
  %24 = phi i64 [ 0, %18 ], [ %32, %31 ]
  %25 = getelementptr float, ptr %22, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !45
  %27 = fcmp ogt float %26, 0x3EE4F8B580000000
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, ptr %13, align 4, !tbaa !46
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %13, align 4, !tbaa !46
  br label %31

31:                                               ; preds = %23, %28
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %23, !llvm.loop !47

34:                                               ; preds = %31, %16
  %35 = add nuw nsw i64 %17, 1
  %36 = icmp eq i64 %35, %14
  br i1 %36, label %37, label %16, !llvm.loop !50

37:                                               ; preds = %34, %5
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 4, !tbaa !46
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 3
  %43 = tail call ptr %38(i64 noundef %42, ptr noundef nonnull @.str) #7
  %44 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !52
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %46 = add nsw i32 %7, 1
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  %49 = tail call ptr %45(i64 noundef %48, ptr noundef nonnull @.str.1) #7
  %50 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 7
  store ptr %49, ptr %50, align 8, !tbaa !53
  %51 = icmp sgt i32 %7, 0
  br i1 %51, label %52, label %108

52:                                               ; preds = %37
  %53 = icmp sgt i32 %9, 0
  %54 = icmp sgt i32 %9, 0
  %55 = zext nneg i32 %7 to i64
  %56 = zext nneg i32 %9 to i64
  %57 = zext nneg i32 %9 to i64
  br label %58

58:                                               ; preds = %52, %102
  %59 = phi i64 [ 0, %52 ], [ %104, %102 ]
  %60 = phi i32 [ 0, %52 ], [ %103, %102 ]
  %61 = getelementptr inbounds i32, ptr %49, i64 %59
  store i32 %60, ptr %61, align 4, !tbaa !54
  br i1 %53, label %62, label %67

62:                                               ; preds = %58
  %63 = trunc i64 %59 to i32
  %64 = mul i32 %9, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr float, ptr %3, i64 %65
  br label %74

67:                                               ; preds = %74, %58
  %68 = phi float [ 0.000000e+00, %58 ], [ %81, %74 ]
  br i1 %54, label %69, label %102

69:                                               ; preds = %67
  %70 = trunc i64 %59 to i32
  %71 = mul i32 %9, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr float, ptr %3, i64 %72
  br label %84

74:                                               ; preds = %62, %74
  %75 = phi i64 [ 0, %62 ], [ %82, %74 ]
  %76 = phi float [ 0.000000e+00, %62 ], [ %81, %74 ]
  %77 = getelementptr float, ptr %66, i64 %75
  %78 = load float, ptr %77, align 4, !tbaa !45
  %79 = fcmp ogt float %78, 0x3EE4F8B580000000
  %80 = select i1 %79, float %78, float -0.000000e+00
  %81 = fadd float %76, %80
  %82 = add nuw nsw i64 %75, 1
  %83 = icmp eq i64 %82, %56
  br i1 %83, label %67, label %74, !llvm.loop !55

84:                                               ; preds = %69, %98
  %85 = phi i64 [ 0, %69 ], [ %100, %98 ]
  %86 = phi i32 [ %60, %69 ], [ %99, %98 ]
  %87 = getelementptr float, ptr %73, i64 %85
  %88 = load float, ptr %87, align 4, !tbaa !45
  %89 = fcmp ogt float %88, 0x3EE4F8B580000000
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = fdiv float %88, %68
  %92 = load ptr, ptr %44, align 8, !tbaa !52
  %93 = sext i32 %86 to i64
  %94 = getelementptr inbounds %struct.MDefInfluence, ptr %92, i64 %93, i32 1
  store float %91, ptr %94, align 4, !tbaa !56
  %95 = getelementptr inbounds %struct.MDefInfluence, ptr %92, i64 %93
  %96 = trunc i64 %85 to i32
  store i32 %96, ptr %95, align 4, !tbaa !58
  %97 = add nsw i32 %86, 1
  br label %98

98:                                               ; preds = %84, %90
  %99 = phi i32 [ %97, %90 ], [ %86, %84 ]
  %100 = add nuw nsw i64 %85, 1
  %101 = icmp eq i64 %100, %57
  br i1 %101, label %102, label %84, !llvm.loop !59

102:                                              ; preds = %98, %67
  %103 = phi i32 [ %60, %67 ], [ %99, %98 ]
  %104 = add nuw nsw i64 %59, 1
  %105 = icmp eq i64 %104, %55
  br i1 %105, label %106, label %58, !llvm.loop !60

106:                                              ; preds = %102
  %107 = and i64 %104, 4294967295
  br label %108

108:                                              ; preds = %106, %37
  %109 = phi i32 [ 0, %37 ], [ %103, %106 ]
  %110 = phi i64 [ 0, %37 ], [ %107, %106 ]
  %111 = getelementptr inbounds i32, ptr %49, i64 %110
  store i32 %109, ptr %111, align 4, !tbaa !54
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %113 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void %112(ptr noundef %113) #7
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %114

114:                                              ; preds = %1, %108
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @copyData(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %1, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !62
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %1, i64 0, i32 4
  store i16 %7, ptr %8, align 2, !tbaa !62
  %9 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %1, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @modifier_vgroup_cache(ptr noundef %0, ptr noundef %3) #7
  tail call fastcc void @meshdeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %2
  %10 = or i1 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  tail call void %13(ptr noundef nonnull %7) #7
  br label %14

14:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call fastcc void @meshdeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  tail call void %13(ptr noundef nonnull %7) #7
  br label %14

14:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 3
  store i16 5, ptr %2, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %6(ptr noundef nonnull %3) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %12(ptr noundef nonnull %9) #7
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %18(ptr noundef nonnull %15) #7
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %24(ptr noundef nonnull %21) #7
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %30(ptr noundef nonnull %27) #7
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %36(ptr noundef nonnull %33) #7
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %42(ptr noundef nonnull %39) #7
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %48(ptr noundef nonnull %45) #7
  br label %49

49:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #4 {
  %3 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #7
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 60, ptr noundef nonnull @.str.8) #7
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #7
  ret void
}

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare void @modifier_vgroup_cache(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @meshdeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.MeshdeformUserdata, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store ptr null, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #7
  %16 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = icmp eq ptr %17, null
  br i1 %18, label %173, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %173, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = icmp eq ptr %17, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %17) #7
  %35 = load ptr, ptr %28, align 8, !tbaa !74
  %36 = load ptr, ptr %16, align 8, !tbaa !63
  %37 = call ptr @editbmesh_get_derived_cage_and_final(ptr noundef %35, ptr noundef %36, ptr noundef %34, ptr noundef nonnull %6, i64 noundef 0) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 95
  %41 = load ptr, ptr %40, align 8, !tbaa !64
  call void %41(ptr noundef nonnull %37) #7
  br label %45

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 120
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  store ptr %44, ptr %6, align 8, !tbaa !51
  br label %45

45:                                               ; preds = %33, %39, %42
  %46 = load ptr, ptr %6, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr %16, align 8, !tbaa !63
  %50 = call ptr @get_dm(ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  store ptr %50, ptr %6, align 8, !tbaa !51
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %50, i64 0, i32 10
  store i32 1, ptr %53, align 4, !tbaa !100
  br label %54

54:                                               ; preds = %48, %52, %45
  %55 = load ptr, ptr %6, align 8, !tbaa !51
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  br label %173

58:                                               ; preds = %54
  %59 = load ptr, ptr %16, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47
  %61 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %60) #7
  %62 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %62) #7
  %63 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 18
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %63, ptr noundef nonnull %9) #7
  %64 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %12) #7
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %10) #7
  %65 = load ptr, ptr %20, align 8, !tbaa !68
  %66 = icmp ne ptr %65, null
  %67 = load i1, ptr @meshdeformModifier_do.recursive, align 4
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  store i1 true, ptr @meshdeformModifier_do.recursive, align 4
  %70 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 21
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  %72 = load ptr, ptr %28, align 8, !tbaa !74
  call void %71(ptr noundef %72, ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %9) #7
  store i1 false, ptr @meshdeformModifier_do.recursive, align 4
  br label %73

73:                                               ; preds = %69, %58
  %74 = load ptr, ptr %6, align 8, !tbaa !51
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %74, i64 0, i32 23
  %76 = load ptr, ptr %75, align 8, !tbaa !101
  %77 = call i32 %76(ptr noundef %74) #7
  %78 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !43
  %80 = icmp eq i32 %79, %4
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %79, i32 noundef %4) #7
  %82 = load ptr, ptr %6, align 8, !tbaa !51
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %82, i64 0, i32 95
  %84 = load ptr, ptr %83, align 8, !tbaa !64
  call void %84(ptr noundef %82) #7
  br label %173

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 10
  %87 = load i32, ptr %86, align 4, !tbaa !44
  %88 = icmp eq i32 %87, %77
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %87, i32 noundef %77) #7
  %90 = load ptr, ptr %6, align 8, !tbaa !51
  %91 = getelementptr inbounds %struct.DerivedMesh, ptr %90, i64 0, i32 95
  %92 = load ptr, ptr %91, align 8, !tbaa !64
  call void %92(ptr noundef %90) #7
  br label %173

93:                                               ; preds = %85
  %94 = load ptr, ptr %20, align 8, !tbaa !68
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  %97 = load ptr, ptr %6, align 8, !tbaa !51
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %97, i64 0, i32 95
  %99 = load ptr, ptr %98, align 8, !tbaa !64
  call void %99(ptr noundef %97) #7
  br label %173

100:                                              ; preds = %93
  %101 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %102 = sext i32 %77 to i64
  %103 = mul nsw i64 %102, 12
  %104 = call ptr %101(i64 noundef %103, ptr noundef nonnull @.str.6) #7
  %105 = load ptr, ptr %6, align 8, !tbaa !51
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %105, i64 0, i32 77
  %107 = load ptr, ptr %106, align 8, !tbaa !102
  call void %107(ptr noundef %105, ptr noundef %104) #7
  %108 = load ptr, ptr %20, align 8, !tbaa !68
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %110 = add nsw i32 %77, 1
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 12
  %113 = call ptr %109(i64 noundef %112, ptr noundef nonnull @.str.7) #7
  %114 = getelementptr inbounds [3 x float], ptr %113, i64 %102
  store float 0.000000e+00, ptr %114, align 4, !tbaa !45
  %115 = getelementptr inbounds float, ptr %114, i64 1
  store float 0.000000e+00, ptr %115, align 4, !tbaa !45
  %116 = getelementptr inbounds float, ptr %114, i64 2
  store float 0.000000e+00, ptr %116, align 4, !tbaa !45
  %117 = icmp sgt i32 %77, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %100
  %119 = getelementptr inbounds float, ptr %13, i64 1
  %120 = getelementptr inbounds float, ptr %13, i64 2
  %121 = zext nneg i32 %77 to i64
  br label %122

122:                                              ; preds = %118, %152
  %123 = phi i64 [ 0, %118 ], [ %155, %152 ]
  %124 = getelementptr inbounds [3 x float], ptr %104, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !45
  store float %125, ptr %13, align 4, !tbaa !45
  %126 = getelementptr inbounds float, ptr %124, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !45
  store float %127, ptr %119, align 4, !tbaa !45
  %128 = getelementptr inbounds float, ptr %124, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !45
  store float %129, ptr %120, align 4, !tbaa !45
  %130 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !103
  %131 = icmp eq i16 %130, 527
  br i1 %131, label %147, label %132

132:                                              ; preds = %122
  call void @mul_m4_v3(ptr noundef nonnull %63, ptr noundef nonnull %13) #7
  %133 = getelementptr inbounds [3 x float], ptr %113, i64 %123
  %134 = getelementptr inbounds [3 x float], ptr %108, i64 %123
  %135 = load float, ptr %13, align 4, !tbaa !45
  %136 = load float, ptr %134, align 4, !tbaa !45
  %137 = fsub float %135, %136
  store float %137, ptr %133, align 4, !tbaa !45
  %138 = load float, ptr %119, align 4, !tbaa !45
  %139 = getelementptr inbounds float, ptr %134, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !45
  %141 = fsub float %138, %140
  %142 = getelementptr inbounds float, ptr %133, i64 1
  store float %141, ptr %142, align 4, !tbaa !45
  %143 = load float, ptr %120, align 4, !tbaa !45
  %144 = getelementptr inbounds float, ptr %134, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !45
  %146 = fsub float %143, %145
  br label %152

147:                                              ; preds = %122
  %148 = getelementptr inbounds [3 x float], ptr %113, i64 %123
  store float %125, ptr %148, align 4, !tbaa !45
  %149 = load float, ptr %119, align 4, !tbaa !45
  %150 = getelementptr inbounds float, ptr %148, i64 1
  store float %149, ptr %150, align 4, !tbaa !45
  %151 = load float, ptr %120, align 4, !tbaa !45
  br label %152

152:                                              ; preds = %132, %147
  %153 = phi float [ %146, %132 ], [ %151, %147 ]
  %154 = getelementptr inbounds [3 x float], ptr %113, i64 %123, i64 2
  store float %153, ptr %154, align 4, !tbaa !45
  %155 = add nuw nsw i64 %123, 1
  %156 = icmp eq i64 %155, %121
  br i1 %156, label %157, label %122, !llvm.loop !105

157:                                              ; preds = %152, %100
  %158 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 2
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %158, ptr noundef nonnull %7, ptr noundef nonnull %14) #7
  store ptr %0, ptr %15, align 8, !tbaa !106
  %159 = load ptr, ptr %7, align 8, !tbaa !51
  %160 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 1
  store ptr %159, ptr %160, align 8, !tbaa !108
  %161 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 2
  store ptr %113, ptr %161, align 8, !tbaa !109
  %162 = load i32, ptr %14, align 4, !tbaa !54
  %163 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 3
  store i32 %162, ptr %163, align 8, !tbaa !110
  %164 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 4
  store ptr %3, ptr %164, align 8, !tbaa !111
  %165 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 5
  store ptr %9, ptr %165, align 8, !tbaa !112
  %166 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 6
  store ptr %11, ptr %166, align 8, !tbaa !113
  %167 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 7
  call void @BLI_spin_init(ptr noundef nonnull %167) #7
  call void @BLI_task_parallel_range(i32 noundef 0, i32 noundef %4, ptr noundef nonnull %15, ptr noundef nonnull @meshdeform_vert_task) #7
  call void @BLI_spin_end(ptr noundef nonnull %167) #7
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %168(ptr noundef %113) #7
  %169 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %169(ptr noundef %104) #7
  %170 = load ptr, ptr %6, align 8, !tbaa !51
  %171 = getelementptr inbounds %struct.DerivedMesh, ptr %170, i64 0, i32 95
  %172 = load ptr, ptr %171, align 8, !tbaa !64
  call void %172(ptr noundef %170) #7
  br label %173

173:                                              ; preds = %5, %23, %157, %96, %89, %81, %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret void
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #5

declare ptr @editbmesh_get_derived_cage_and_final(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #5

declare void @BLI_task_parallel_range(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @meshdeform_vert_task(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %19 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !62
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %253, label %30

30:                                               ; preds = %23, %2
  %31 = icmp eq ptr %8, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %30
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds %struct.MDeformVert, ptr %8, i64 %33
  %35 = tail call float @defvert_find_weight(ptr noundef nonnull %34, i32 noundef %10) #7
  %36 = load i16, ptr %19, align 2, !tbaa !62
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  %39 = fsub float 1.000000e+00, %35
  %40 = select i1 %38, float %35, float %39
  %41 = fcmp ugt float %40, 0.000000e+00
  br i1 %41, label %42, label %253

42:                                               ; preds = %32, %30
  %43 = phi float [ %40, %32 ], [ 1.000000e+00, %30 ]
  %44 = load i16, ptr %19, align 2, !tbaa !62
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %177, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !112
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds [3 x float], ptr %18, i64 %50
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef %49, ptr noundef %51) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  %52 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 14
  %53 = load i32, ptr %52, align 8, !tbaa !114
  %54 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 17
  %55 = load float, ptr %54, align 4, !tbaa !115
  %56 = fneg float %55
  br label %79

57:                                               ; preds = %79
  %58 = add nsw i32 %53, -1
  %59 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  %63 = load float, ptr %4, align 4
  %64 = fadd float %63, 1.000000e+00
  %65 = load float, ptr %3, align 4
  %66 = fsub float 1.000000e+00, %65
  %67 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %68 = load float, ptr %67, align 4
  %69 = fadd float %68, 1.000000e+00
  %70 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %71 = load float, ptr %70, align 4
  %72 = fsub float 1.000000e+00, %71
  %73 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %74 = load float, ptr %73, align 4
  %75 = fadd float %74, 1.000000e+00
  %76 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %77 = load float, ptr %76, align 4
  %78 = fsub float 1.000000e+00, %77
  br label %95

79:                                               ; preds = %47, %79
  %80 = phi i64 [ 0, %47 ], [ %93, %79 ]
  %81 = getelementptr inbounds float, ptr %5, i64 %80
  %82 = load float, ptr %81, align 4, !tbaa !45
  %83 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 16, i64 %80
  %84 = load float, ptr %83, align 4, !tbaa !45
  %85 = fsub float %82, %84
  %86 = call float @llvm.fmuladd.f32(float %56, float 5.000000e-01, float %85)
  %87 = fdiv float %86, %55
  %88 = fptosi float %87 to i32
  %89 = sitofp i32 %88 to float
  %90 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %80
  store float %89, ptr %90, align 4, !tbaa !45
  %91 = fsub float %87, %89
  %92 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %80
  store float %91, ptr %92, align 4, !tbaa !45
  %93 = add nuw nsw i64 %80, 1
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %57, label %79, !llvm.loop !116

95:                                               ; preds = %57, %167
  %96 = phi i32 [ 0, %57 ], [ %172, %167 ]
  %97 = phi float [ 0.000000e+00, %57 ], [ %171, %167 ]
  %98 = phi float [ 0.000000e+00, %57 ], [ %170, %167 ]
  %99 = phi float [ 0.000000e+00, %57 ], [ %169, %167 ]
  %100 = phi float [ 0.000000e+00, %57 ], [ %168, %167 ]
  %101 = and i32 %96, 1
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, float %66, float %65
  %104 = select i1 %102, float %63, float %64
  %105 = fptosi float %104 to i32
  %106 = and i32 %96, 2
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, float %72, float %71
  %109 = select i1 %107, float %68, float %69
  %110 = fptosi float %109 to i32
  %111 = icmp ult i32 %96, 4
  %112 = select i1 %111, float %78, float %77
  %113 = select i1 %111, float %74, float %75
  %114 = fptosi float %113 to i32
  %115 = icmp slt i32 %105, 0
  %116 = icmp sgt i32 %53, %105
  %117 = select i1 %116, i32 %105, i32 %58
  %118 = select i1 %115, i32 0, i32 %117
  %119 = icmp slt i32 %110, 0
  %120 = icmp sgt i32 %53, %110
  %121 = select i1 %120, i32 %110, i32 %58
  %122 = select i1 %119, i32 0, i32 %121
  %123 = icmp slt i32 %114, 0
  %124 = icmp sgt i32 %53, %114
  %125 = select i1 %124, i32 %114, i32 %58
  %126 = select i1 %123, i32 0, i32 %125
  %127 = mul i32 %126, %53
  %128 = add i32 %127, %122
  %129 = mul i32 %128, %53
  %130 = add i32 %129, %118
  %131 = fmul float %103, %108
  %132 = fmul float %131, %112
  %133 = sext i32 %130 to i64
  %134 = getelementptr inbounds %struct.MDefCell, ptr %60, i64 %133, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !117
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %95
  %138 = getelementptr inbounds %struct.MDefCell, ptr %60, i64 %133
  %139 = load i32, ptr %138, align 4, !tbaa !119
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MDefInfluence, ptr %62, i64 %140
  br label %142

142:                                              ; preds = %137, %142
  %143 = phi ptr [ %165, %142 ], [ %141, %137 ]
  %144 = phi i32 [ %164, %142 ], [ 0, %137 ]
  %145 = phi float [ %163, %142 ], [ %97, %137 ]
  %146 = phi float [ %162, %142 ], [ %98, %137 ]
  %147 = phi float [ %159, %142 ], [ %99, %137 ]
  %148 = phi float [ %156, %142 ], [ %100, %137 ]
  %149 = load i32, ptr %143, align 4, !tbaa !58
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x float], ptr %16, i64 %150
  %152 = getelementptr inbounds %struct.MDefInfluence, ptr %143, i64 0, i32 1
  %153 = load float, ptr %152, align 4, !tbaa !56
  %154 = fmul float %132, %153
  %155 = load float, ptr %151, align 4, !tbaa !45
  %156 = call float @llvm.fmuladd.f32(float %154, float %155, float %148)
  %157 = getelementptr inbounds float, ptr %151, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !45
  %159 = call float @llvm.fmuladd.f32(float %154, float %158, float %147)
  %160 = getelementptr inbounds float, ptr %151, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !45
  %162 = call float @llvm.fmuladd.f32(float %154, float %161, float %146)
  %163 = fadd float %145, %154
  %164 = add nuw nsw i32 %144, 1
  %165 = getelementptr inbounds %struct.MDefInfluence, ptr %143, i64 1
  %166 = icmp eq i32 %164, %135
  br i1 %166, label %167, label %142, !llvm.loop !120

167:                                              ; preds = %142, %95
  %168 = phi float [ %100, %95 ], [ %156, %142 ]
  %169 = phi float [ %99, %95 ], [ %159, %142 ]
  %170 = phi float [ %98, %95 ], [ %162, %142 ]
  %171 = phi float [ %97, %95 ], [ %163, %142 ]
  %172 = add nuw nsw i32 %96, 1
  %173 = icmp eq i32 %172, 8
  br i1 %173, label %174, label %95, !llvm.loop !121

174:                                              ; preds = %167
  store float %168, ptr %5, align 4, !tbaa !45
  %175 = getelementptr inbounds float, ptr %5, i64 1
  store float %169, ptr %175, align 4, !tbaa !45
  %176 = getelementptr inbounds float, ptr %5, i64 2
  store float %170, ptr %176, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  br label %215

177:                                              ; preds = %42
  store float 0.000000e+00, ptr %5, align 4, !tbaa !45
  %178 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %178, align 4, !tbaa !45
  %179 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %179, align 4, !tbaa !45
  %180 = sext i32 %1 to i64
  %181 = getelementptr inbounds i32, ptr %12, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !54
  %183 = getelementptr i32, ptr %181, i64 1
  %184 = load i32, ptr %183, align 4, !tbaa !54
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %215

186:                                              ; preds = %177
  %187 = load float, ptr %179, align 4, !tbaa !45
  %188 = load float, ptr %178, align 4, !tbaa !45
  %189 = load float, ptr %5, align 4, !tbaa !45
  %190 = sext i32 %182 to i64
  %191 = sext i32 %184 to i64
  br label %192

192:                                              ; preds = %186, %192
  %193 = phi i64 [ %190, %186 ], [ %213, %192 ]
  %194 = phi float [ 0.000000e+00, %186 ], [ %212, %192 ]
  %195 = phi float [ %189, %186 ], [ %205, %192 ]
  %196 = phi float [ %188, %186 ], [ %208, %192 ]
  %197 = phi float [ %187, %186 ], [ %211, %192 ]
  %198 = getelementptr inbounds %struct.MDefInfluence, ptr %14, i64 %193
  %199 = getelementptr inbounds %struct.MDefInfluence, ptr %14, i64 %193, i32 1
  %200 = load float, ptr %199, align 4, !tbaa !56
  %201 = load i32, ptr %198, align 4, !tbaa !58
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [3 x float], ptr %16, i64 %202
  %204 = load float, ptr %203, align 4, !tbaa !45
  %205 = tail call float @llvm.fmuladd.f32(float %204, float %200, float %195)
  store float %205, ptr %5, align 4, !tbaa !45
  %206 = getelementptr inbounds float, ptr %203, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !45
  %208 = tail call float @llvm.fmuladd.f32(float %207, float %200, float %196)
  store float %208, ptr %178, align 4, !tbaa !45
  %209 = getelementptr inbounds float, ptr %203, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !45
  %211 = tail call float @llvm.fmuladd.f32(float %210, float %200, float %197)
  store float %211, ptr %179, align 4, !tbaa !45
  %212 = fadd float %194, %200
  %213 = add nsw i64 %193, 1
  %214 = icmp eq i64 %213, %191
  br i1 %214, label %215, label %192, !llvm.loop !122

215:                                              ; preds = %192, %177, %174
  %216 = phi float [ %171, %174 ], [ 0.000000e+00, %177 ], [ %212, %192 ]
  %217 = fcmp ogt float %216, 0.000000e+00
  br i1 %217, label %218, label %253

218:                                              ; preds = %215
  %219 = fdiv float %43, %216
  %220 = load float, ptr %5, align 4, !tbaa !45
  %221 = fmul float %219, %220
  store float %221, ptr %5, align 4, !tbaa !45
  %222 = getelementptr inbounds float, ptr %5, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !45
  %224 = fmul float %219, %223
  store float %224, ptr %222, align 4, !tbaa !45
  %225 = getelementptr inbounds float, ptr %5, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !45
  %227 = fmul float %219, %226
  store float %227, ptr %225, align 4, !tbaa !45
  %228 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 6
  %229 = load ptr, ptr %228, align 8, !tbaa !113
  call void @mul_m3_v3(ptr noundef %229, ptr noundef nonnull %5) #7
  %230 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 7
  call void @BLI_spin_lock(ptr noundef nonnull %230) #7
  %231 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !103
  %232 = icmp eq i16 %231, 527
  %233 = sext i32 %1 to i64
  %234 = getelementptr inbounds [3 x float], ptr %18, i64 %233
  %235 = load float, ptr %5, align 4, !tbaa !45
  br i1 %232, label %247, label %236

236:                                              ; preds = %218
  %237 = load float, ptr %234, align 4, !tbaa !45
  %238 = fadd float %235, %237
  store float %238, ptr %234, align 4, !tbaa !45
  %239 = load float, ptr %222, align 4, !tbaa !45
  %240 = getelementptr inbounds float, ptr %234, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !45
  %242 = fadd float %239, %241
  store float %242, ptr %240, align 4, !tbaa !45
  %243 = load float, ptr %225, align 4, !tbaa !45
  %244 = getelementptr inbounds float, ptr %234, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !45
  %246 = fadd float %243, %245
  store float %246, ptr %244, align 4, !tbaa !45
  br label %252

247:                                              ; preds = %218
  store float %235, ptr %234, align 4, !tbaa !45
  %248 = load float, ptr %222, align 4, !tbaa !45
  %249 = getelementptr inbounds float, ptr %234, i64 1
  store float %248, ptr %249, align 4, !tbaa !45
  %250 = load float, ptr %225, align 4, !tbaa !45
  %251 = getelementptr inbounds float, ptr %234, i64 2
  store float %250, ptr %251, align 4, !tbaa !45
  br label %252

252:                                              ; preds = %247, %236
  call void @BLI_spin_unlock(ptr noundef nonnull %230) #7
  br label %253

253:                                              ; preds = %215, %252, %32, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  ret void
}

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #5

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #5

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!34 = !{!35, !37, i64 336}
!35 = !{!"MeshDeformModifierData", !36, i64 0, !37, i64 112, !38, i64 120, !41, i64 184, !41, i64 186, !38, i64 188, !37, i64 192, !37, i64 200, !37, i64 208, !40, i64 216, !40, i64 220, !37, i64 224, !37, i64 232, !37, i64 240, !40, i64 248, !40, i64 252, !38, i64 256, !42, i64 268, !38, i64 272, !37, i64 336, !37, i64 344, !37, i64 352}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!35, !40, i64 216}
!44 = !{!35, !40, i64 220}
!45 = !{!42, !42, i64 0}
!46 = !{!35, !40, i64 252}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !48, !49}
!51 = !{!37, !37, i64 0}
!52 = !{!35, !37, i64 192}
!53 = !{!35, !37, i64 200}
!54 = !{!40, !40, i64 0}
!55 = distinct !{!55, !48, !49}
!56 = !{!57, !42, i64 4}
!57 = !{!"MDefInfluence", !40, i64 0, !42, i64 4}
!58 = !{!57, !40, i64 0}
!59 = distinct !{!59, !48, !49}
!60 = distinct !{!60, !48, !49}
!61 = !{!35, !41, i64 184}
!62 = !{!35, !41, i64 186}
!63 = !{!35, !37, i64 112}
!64 = !{!65, !37, i64 1680}
!65 = !{!"DerivedMesh", !66, i64 0, !66, i64 200, !66, i64 400, !66, i64 600, !66, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!66 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!67 = !{!38, !38, i64 0}
!68 = !{!35, !37, i64 208}
!69 = !{!35, !37, i64 224}
!70 = !{!35, !37, i64 232}
!71 = !{!35, !37, i64 240}
!72 = !{!35, !37, i64 344}
!73 = !{!35, !37, i64 352}
!74 = !{!36, !37, i64 96}
!75 = !{!76, !37, i64 176}
!76 = !{!"Scene", !77, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !78, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !79, i64 280, !88, i64 4264, !78, i64 4296, !78, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !78, i64 4384, !89, i64 4400, !90, i64 4416, !93, i64 4600, !37, i64 4608, !94, i64 4616, !37, i64 4640, !95, i64 4648, !95, i64 4656, !81, i64 4664, !82, i64 4824, !96, i64 4888, !37, i64 4952}
!77 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!78 = !{!"ListBase", !37, i64 0, !37, i64 8}
!79 = !{!"RenderData", !80, i64 0, !37, i64 248, !37, i64 256, !83, i64 264, !84, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !42, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !85, i64 544, !85, i64 560, !86, i64 576, !78, i64 592, !41, i64 608, !41, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !40, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !42, i64 660, !42, i64 664, !41, i64 668, !41, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !42, i64 2528, !42, i64 2532, !41, i64 2536, !41, i64 2538, !42, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !40, i64 2576, !42, i64 2580, !38, i64 2584, !87, i64 2616, !40, i64 3976, !40, i64 3980}
!80 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !41, i64 8, !41, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !81, i64 24, !82, i64 184}
!81 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!82 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!83 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!84 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !42, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!85 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!86 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!87 = !{!"BakeData", !80, i64 0, !38, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!88 = !{!"AudioData", !40, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !42, i64 24, !42, i64 28}
!89 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!90 = !{!"GameData", !89, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !38, i64 34, !91, i64 40, !41, i64 64, !41, i64 66, !42, i64 68, !92, i64 72, !42, i64 128, !42, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!91 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!92 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 54}
!93 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !41, i64 6}
!94 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!95 = !{!"long", !38, i64 0}
!96 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!97 = !{!98, !37, i64 1296}
!98 = !{!"Object", !77, i64 0, !37, i64 120, !37, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !99, i64 312, !37, i64 360, !78, i64 368, !78, i64 384, !78, i64 400, !78, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !38, i64 1042, !38, i64 1043, !41, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !78, i64 1056, !78, i64 1072, !78, i64 1088, !78, i64 1104, !42, i64 1120, !41, i64 1124, !41, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !41, i64 1162, !38, i64 1164, !78, i64 1176, !78, i64 1192, !78, i64 1208, !78, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !41, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !95, i64 1304, !95, i64 1312, !40, i64 1320, !40, i64 1324, !78, i64 1328, !78, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !78, i64 1400, !37, i64 1416}
!99 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!100 = !{!65, !40, i64 1020}
!101 = !{!65, !37, i64 1104}
!102 = !{!65, !37, i64 1536}
!103 = !{!104, !41, i64 2092}
!104 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !78, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !38, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!105 = distinct !{!105, !48, !49}
!106 = !{!107, !37, i64 0}
!107 = !{!"MeshdeformUserdata", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !40, i64 56}
!108 = !{!107, !37, i64 8}
!109 = !{!107, !37, i64 16}
!110 = !{!107, !40, i64 24}
!111 = !{!107, !37, i64 32}
!112 = !{!107, !37, i64 40}
!113 = !{!107, !37, i64 48}
!114 = !{!35, !40, i64 248}
!115 = !{!35, !42, i64 268}
!116 = distinct !{!116, !48, !49}
!117 = !{!118, !40, i64 4}
!118 = !{!"MDefCell", !40, i64 0, !40, i64 4}
!119 = !{!118, !40, i64 0}
!120 = distinct !{!120, !48, !49}
!121 = distinct !{!121, !48, !49}
!122 = distinct !{!122, !48, !49}
