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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_mdef_compact_influences(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %111, label %5

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
  br i1 %36, label %37, label %16, !llvm.loop !49

37:                                               ; preds = %34, %5
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %39 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 4, !tbaa !46
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 3
  %43 = tail call ptr %38(i64 noundef %42, ptr noundef nonnull @.str) #9
  %44 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !51
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %46 = add nsw i32 %7, 1
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  %49 = tail call ptr %45(i64 noundef %48, ptr noundef nonnull @.str.1) #9
  %50 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 7
  store ptr %49, ptr %50, align 8, !tbaa !52
  br i1 %10, label %51, label %105

51:                                               ; preds = %37
  %52 = icmp sgt i32 %9, 0
  %53 = zext nneg i32 %7 to i64
  %54 = zext nneg i32 %9 to i64
  %55 = zext nneg i32 %9 to i64
  br label %56

56:                                               ; preds = %51, %99
  %57 = phi i64 [ 0, %51 ], [ %101, %99 ]
  %58 = phi i32 [ 0, %51 ], [ %100, %99 ]
  %59 = getelementptr inbounds i32, ptr %49, i64 %57
  store i32 %58, ptr %59, align 4, !tbaa !53
  br i1 %52, label %60, label %99

60:                                               ; preds = %56
  %61 = trunc i64 %57 to i32
  %62 = mul i32 %9, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr float, ptr %3, i64 %63
  br label %71

65:                                               ; preds = %71
  br i1 %52, label %66, label %99

66:                                               ; preds = %65
  %67 = trunc i64 %57 to i32
  %68 = mul i32 %9, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr float, ptr %3, i64 %69
  br label %81

71:                                               ; preds = %60, %71
  %72 = phi i64 [ 0, %60 ], [ %79, %71 ]
  %73 = phi float [ 0.000000e+00, %60 ], [ %78, %71 ]
  %74 = getelementptr float, ptr %64, i64 %72
  %75 = load float, ptr %74, align 4, !tbaa !45
  %76 = fcmp ogt float %75, 0x3EE4F8B580000000
  %77 = select i1 %76, float %75, float -0.000000e+00
  %78 = fadd float %73, %77
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, %54
  br i1 %80, label %65, label %71, !llvm.loop !54

81:                                               ; preds = %66, %95
  %82 = phi i64 [ 0, %66 ], [ %97, %95 ]
  %83 = phi i32 [ %58, %66 ], [ %96, %95 ]
  %84 = getelementptr float, ptr %70, i64 %82
  %85 = load float, ptr %84, align 4, !tbaa !45
  %86 = fcmp ogt float %85, 0x3EE4F8B580000000
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = fdiv float %85, %78
  %89 = load ptr, ptr %44, align 8, !tbaa !51
  %90 = sext i32 %83 to i64
  %91 = getelementptr inbounds %struct.MDefInfluence, ptr %89, i64 %90, i32 1
  store float %88, ptr %91, align 4, !tbaa !55
  %92 = getelementptr inbounds %struct.MDefInfluence, ptr %89, i64 %90
  %93 = trunc i64 %82 to i32
  store i32 %93, ptr %92, align 4, !tbaa !57
  %94 = add nsw i32 %83, 1
  br label %95

95:                                               ; preds = %81, %87
  %96 = phi i32 [ %94, %87 ], [ %83, %81 ]
  %97 = add nuw nsw i64 %82, 1
  %98 = icmp eq i64 %97, %55
  br i1 %98, label %99, label %81, !llvm.loop !58

99:                                               ; preds = %95, %56, %65
  %100 = phi i32 [ %58, %65 ], [ %58, %56 ], [ %96, %95 ]
  %101 = add nuw nsw i64 %57, 1
  %102 = icmp eq i64 %101, %53
  br i1 %102, label %103, label %56, !llvm.loop !59

103:                                              ; preds = %99
  %104 = zext nneg i32 %7 to i64
  br label %105

105:                                              ; preds = %37, %103
  %106 = phi i32 [ %100, %103 ], [ 0, %37 ]
  %107 = phi i64 [ %104, %103 ], [ 0, %37 ]
  %108 = getelementptr inbounds i32, ptr %49, i64 %107
  store i32 %106, ptr %108, align 4, !tbaa !53
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %110 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void %109(ptr noundef %110) #9
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %111

111:                                              ; preds = %1, %105
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @copyData(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %1, i64 0, i32 3
  %5 = load <2 x i16>, ptr %3, align 8, !tbaa !61
  store <2 x i16> %5, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %1, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !63 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  tail call void @modifier_vgroup_cache(ptr noundef %0, ptr noundef %3) #9
  tail call fastcc void @meshdeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4) #10
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %2
  %10 = or i1 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  tail call void %13(ptr noundef nonnull %7) #9
  br label %14

14:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !67 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  tail call fastcc void @meshdeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5) #10
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  tail call void %13(ptr noundef nonnull %7) #9
  br label %14

14:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 3
  store i16 5, ptr %2, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !72 {
  %2 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %6(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %12(ptr noundef nonnull %9) #9
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %18(ptr noundef nonnull %15) #9
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %24(ptr noundef nonnull %21) #9
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %30(ptr noundef nonnull %27) #9
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %36(ptr noundef nonnull %33) #9
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %42(ptr noundef nonnull %39) #9
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %48(ptr noundef nonnull %45) #9
  br label %49

49:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #4 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !79 {
  %6 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #9
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 60, ptr noundef nonnull @.str.8) #9
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !80 {
  %5 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_vgroup_cache(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @meshdeformModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !81 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #11
  %16 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %17, null
  br i1 %18, label %146, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = icmp eq ptr %25, null
  br i1 %26, label %146, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !83
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = icmp eq ptr %17, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %17) #9
  %35 = load ptr, ptr %28, align 8, !tbaa !83
  %36 = load ptr, ptr %16, align 8, !tbaa !62
  %37 = call ptr @editbmesh_get_derived_cage_and_final(ptr noundef %35, ptr noundef %36, ptr noundef %34, ptr noundef nonnull %6, i64 noundef 0) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 95
  %41 = load ptr, ptr %40, align 8, !tbaa !64
  call void %41(ptr noundef nonnull %37) #9
  br label %45

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 120
  %44 = load ptr, ptr %43, align 8, !tbaa !106
  store ptr %44, ptr %6, align 8, !tbaa !50
  br label %47

45:                                               ; preds = %39, %33
  %46 = load ptr, ptr %6, align 8, !tbaa !50
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi ptr [ %46, %45 ], [ %44, %42 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load ptr, ptr %16, align 8, !tbaa !62
  %52 = call ptr @get_dm(ptr noundef %51, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  store ptr %52, ptr %6, align 8, !tbaa !50
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 10
  store i32 1, ptr %55, align 4, !tbaa !109
  br label %57

56:                                               ; preds = %50
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #9
  br label %146

57:                                               ; preds = %47, %54
  %58 = load ptr, ptr %16, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47
  %60 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %59) #9
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %61) #9
  %62 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 18
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %62, ptr noundef nonnull %9) #9
  %63 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %12) #9
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %10) #9
  %64 = load ptr, ptr %20, align 8, !tbaa !73
  %65 = icmp ne ptr %64, null
  %66 = load i1, ptr @meshdeformModifier_do.recursive, align 4
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  store i1 true, ptr @meshdeformModifier_do.recursive, align 4
  %69 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 21
  %70 = load ptr, ptr %69, align 8, !tbaa !82
  %71 = load ptr, ptr %28, align 8, !tbaa !83
  call void %70(ptr noundef %71, ptr noundef nonnull %0, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %9) #9
  store i1 false, ptr @meshdeformModifier_do.recursive, align 4
  br label %72

72:                                               ; preds = %68, %57
  %73 = load ptr, ptr %6, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 23
  %75 = load ptr, ptr %74, align 8, !tbaa !110
  %76 = call i32 %75(ptr noundef %73) #9
  %77 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !43
  %79 = icmp eq i32 %78, %4
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %78, i32 noundef %4) #9
  %81 = load ptr, ptr %6, align 8, !tbaa !50
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 95
  %83 = load ptr, ptr %82, align 8, !tbaa !64
  call void %83(ptr noundef %81) #9
  br label %146

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 10
  %86 = load i32, ptr %85, align 4, !tbaa !44
  %87 = icmp eq i32 %86, %76
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %86, i32 noundef %76) #9
  %89 = load ptr, ptr %6, align 8, !tbaa !50
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %89, i64 0, i32 95
  %91 = load ptr, ptr %90, align 8, !tbaa !64
  call void %91(ptr noundef %89) #9
  br label %146

92:                                               ; preds = %84
  %93 = load ptr, ptr %20, align 8, !tbaa !73
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #9
  %96 = load ptr, ptr %6, align 8, !tbaa !50
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %96, i64 0, i32 95
  %98 = load ptr, ptr %97, align 8, !tbaa !64
  call void %98(ptr noundef %96) #9
  br label %146

99:                                               ; preds = %92
  %100 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %101 = sext i32 %76 to i64
  %102 = mul nsw i64 %101, 12
  %103 = call ptr %100(i64 noundef %102, ptr noundef nonnull @.str.6) #9
  %104 = load ptr, ptr %6, align 8, !tbaa !50
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %104, i64 0, i32 77
  %106 = load ptr, ptr %105, align 8, !tbaa !111
  call void %106(ptr noundef %104, ptr noundef %103) #9
  %107 = load ptr, ptr %20, align 8, !tbaa !73
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %109 = add nsw i32 %76, 1
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, 12
  %112 = call ptr %108(i64 noundef %111, ptr noundef nonnull @.str.7) #9
  %113 = getelementptr inbounds [3 x float], ptr %112, i64 %101
  call fastcc void @zero_v3(ptr noundef %113) #10
  %114 = icmp sgt i32 %76, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %99
  %116 = zext nneg i32 %76 to i64
  br label %117

117:                                              ; preds = %115, %127
  %118 = phi i64 [ 0, %115 ], [ %128, %127 ]
  %119 = getelementptr inbounds [3 x float], ptr %103, i64 %118
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %119) #10
  %120 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !112
  %121 = icmp eq i16 %120, 527
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  call void @mul_m4_v3(ptr noundef nonnull %62, ptr noundef nonnull %13) #9
  %123 = getelementptr inbounds [3 x float], ptr %112, i64 %118
  %124 = getelementptr inbounds [3 x float], ptr %107, i64 %118
  call fastcc void @sub_v3_v3v3(ptr noundef %123, ptr noundef nonnull %13, ptr noundef %124) #10
  br label %127

125:                                              ; preds = %117
  %126 = getelementptr inbounds [3 x float], ptr %112, i64 %118
  call fastcc void @copy_v3_v3(ptr noundef %126, ptr noundef nonnull %13) #10
  br label %127

127:                                              ; preds = %122, %125
  %128 = add nuw nsw i64 %118, 1
  %129 = icmp eq i64 %128, %116
  br i1 %129, label %130, label %117, !llvm.loop !114

130:                                              ; preds = %127, %99
  %131 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 2
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %131, ptr noundef nonnull %7, ptr noundef nonnull %14) #9
  store ptr %0, ptr %15, align 8, !tbaa !115
  %132 = load ptr, ptr %7, align 8, !tbaa !50
  %133 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 1
  store ptr %132, ptr %133, align 8, !tbaa !117
  %134 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 2
  store ptr %112, ptr %134, align 8, !tbaa !118
  %135 = load i32, ptr %14, align 4, !tbaa !53
  %136 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 3
  store i32 %135, ptr %136, align 8, !tbaa !119
  %137 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 4
  store ptr %3, ptr %137, align 8, !tbaa !120
  %138 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 5
  store ptr %9, ptr %138, align 8, !tbaa !121
  %139 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 6
  store ptr %11, ptr %139, align 8, !tbaa !122
  %140 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %15, i64 0, i32 7
  call void @BLI_spin_init(ptr noundef nonnull %140) #9
  call void @BLI_task_parallel_range(i32 noundef 0, i32 noundef %4, ptr noundef nonnull %15, ptr noundef nonnull @meshdeform_vert_task) #9
  call void @BLI_spin_end(ptr noundef nonnull %140) #9
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %141(ptr noundef %112) #9
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %142(ptr noundef %103) #9
  %143 = load ptr, ptr %6, align 8, !tbaa !50
  %144 = getelementptr inbounds %struct.DerivedMesh, ptr %143, i64 0, i32 95
  %145 = load ptr, ptr %144, align 8, !tbaa !64
  call void %145(ptr noundef %143) #9
  br label %146

146:                                              ; preds = %5, %23, %130, %95, %88, %80, %56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage_and_final(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !123 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !45
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !124 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  store float %3, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !125 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = load float, ptr %2, align 4, !tbaa !45
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_task_parallel_range(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @meshdeform_vert_task(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !126 {
  %3 = alloca [3 x float], align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %17 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 4
  %18 = load i16, ptr %17, align 2, !tbaa !127
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds i32, ptr %23, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %21, %2
  %29 = icmp eq ptr %6, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %28
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds %struct.MDeformVert, ptr %6, i64 %31
  %33 = tail call float @defvert_find_weight(ptr noundef nonnull %32, i32 noundef %8) #9
  %34 = load i16, ptr %17, align 2, !tbaa !127
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  %37 = fsub float 1.000000e+00, %33
  %38 = select i1 %36, float %33, float %37
  %39 = fcmp ugt float %38, 0.000000e+00
  br i1 %39, label %40, label %88

40:                                               ; preds = %30, %28
  %41 = phi i16 [ %34, %30 ], [ %18, %28 ]
  %42 = phi float [ %38, %30 ], [ 1.000000e+00, %28 ]
  %43 = and i16 %41, 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !121
  %48 = sext i32 %1 to i64
  %49 = getelementptr inbounds [3 x float], ptr %16, i64 %48
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef %47, ptr noundef %49) #9
  %50 = call fastcc float @meshdeform_dynamic_bind(ptr noundef nonnull %4, ptr noundef %14, ptr noundef nonnull %3) #10
  br label %73

51:                                               ; preds = %40
  call fastcc void @zero_v3(ptr noundef nonnull %3) #10
  %52 = sext i32 %1 to i64
  %53 = getelementptr inbounds i32, ptr %10, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = getelementptr i32, ptr %53, i64 1
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %51
  %59 = sext i32 %54 to i64
  %60 = sext i32 %56 to i64
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ %59, %58 ], [ %71, %61 ]
  %63 = phi float [ 0.000000e+00, %58 ], [ %70, %61 ]
  %64 = getelementptr inbounds %struct.MDefInfluence, ptr %12, i64 %62
  %65 = getelementptr inbounds %struct.MDefInfluence, ptr %12, i64 %62, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !55
  %67 = load i32, ptr %64, align 4, !tbaa !57
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x float], ptr %14, i64 %68
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef %69, float noundef %66) #10
  %70 = fadd float %63, %66
  %71 = add nsw i64 %62, 1
  %72 = icmp slt i64 %71, %60
  br i1 %72, label %61, label %73, !llvm.loop !128

73:                                               ; preds = %61, %45
  %74 = phi float [ %50, %45 ], [ %70, %61 ]
  %75 = fcmp ogt float %74, 0.000000e+00
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = fdiv float %42, %74
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %77) #10
  %78 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !122
  call void @mul_m3_v3(ptr noundef %79, ptr noundef nonnull %3) #9
  %80 = getelementptr inbounds %struct.MeshdeformUserdata, ptr %0, i64 0, i32 7
  call void @BLI_spin_lock(ptr noundef nonnull %80) #9
  %81 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !112
  %82 = icmp eq i16 %81, 527
  %83 = sext i32 %1 to i64
  %84 = getelementptr inbounds [3 x float], ptr %16, i64 %83
  br i1 %82, label %86, label %85

85:                                               ; preds = %76
  call fastcc void @add_v3_v3(ptr noundef %84, ptr noundef nonnull %3) #10
  br label %87

86:                                               ; preds = %76
  call fastcc void @copy_v3_v3(ptr noundef %84, ptr noundef nonnull %3) #10
  br label %87

87:                                               ; preds = %86, %85
  call void @BLI_spin_unlock(ptr noundef nonnull %80) #9
  br label %88

88:                                               ; preds = %51, %73, %87, %30, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @meshdeform_dynamic_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #6 !PGOFuncName !129 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !130
  %9 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 17
  %10 = load float, ptr %9, align 4, !tbaa !131
  %11 = fneg float %10
  br label %31

12:                                               ; preds = %31
  %13 = add nsw i32 %8, -1
  %14 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = load float, ptr %4, align 4
  %19 = fsub float 1.000000e+00, %18
  %20 = load <2 x float>, ptr %5, align 8
  %21 = fadd <2 x float> %20, <float 1.000000e+00, float 1.000000e+00>
  %22 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %23 = load float, ptr %22, align 4
  %24 = fsub float 1.000000e+00, %23
  %25 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %26 = load float, ptr %25, align 8
  %27 = fadd float %26, 1.000000e+00
  %28 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %29 = load float, ptr %28, align 4
  %30 = fsub float 1.000000e+00, %29
  br label %47

31:                                               ; preds = %3, %31
  %32 = phi i64 [ 0, %3 ], [ %45, %31 ]
  %33 = getelementptr inbounds float, ptr %2, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !45
  %35 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %0, i64 0, i32 16, i64 %32
  %36 = load float, ptr %35, align 4, !tbaa !45
  %37 = fsub float %34, %36
  %38 = tail call float @llvm.fmuladd.f32(float %11, float 5.000000e-01, float %37)
  %39 = fdiv float %38, %10
  %40 = fptosi float %39 to i32
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %32
  store float %41, ptr %42, align 4, !tbaa !45
  %43 = fsub float %39, %41
  %44 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %32
  store float %43, ptr %44, align 4, !tbaa !45
  %45 = add nuw nsw i64 %32, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %12, label %31, !llvm.loop !132

47:                                               ; preds = %12, %119
  %48 = phi float [ 0.000000e+00, %12 ], [ %120, %119 ]
  %49 = phi i32 [ 0, %12 ], [ %123, %119 ]
  %50 = phi float [ 0.000000e+00, %12 ], [ %121, %119 ]
  %51 = phi <2 x float> [ zeroinitializer, %12 ], [ %122, %119 ]
  %52 = insertelement <2 x i32> poison, i32 %49, i64 0
  %53 = shufflevector <2 x i32> %52, <2 x i32> poison, <2 x i32> zeroinitializer
  %54 = and <2 x i32> %53, <i32 1, i32 2>
  %55 = icmp ult i32 %49, 4
  %56 = select i1 %55, float %30, float %29
  %57 = select i1 %55, float %26, float %27
  %58 = fptosi float %57 to i32
  %59 = icmp eq <2 x i32> %54, zeroinitializer
  %60 = extractelement <2 x i1> %59, i64 0
  %61 = select i1 %60, float %19, float %18
  %62 = extractelement <2 x i1> %59, i64 1
  %63 = select i1 %62, float %24, float %23
  %64 = select <2 x i1> %59, <2 x float> %20, <2 x float> %21
  %65 = fptosi <2 x float> %64 to <2 x i32>
  %66 = extractelement <2 x i32> %65, i64 0
  %67 = icmp sgt i32 %8, %66
  %68 = select i1 %67, i32 %66, i32 %13
  %69 = icmp slt <2 x i32> %65, zeroinitializer
  %70 = extractelement <2 x i1> %69, i64 0
  %71 = select i1 %70, i32 0, i32 %68
  %72 = extractelement <2 x i32> %65, i64 1
  %73 = icmp sgt i32 %8, %72
  %74 = select i1 %73, i32 %72, i32 %13
  %75 = extractelement <2 x i1> %69, i64 1
  %76 = select i1 %75, i32 0, i32 %74
  %77 = icmp slt i32 %58, 0
  %78 = icmp sgt i32 %8, %58
  %79 = select i1 %78, i32 %58, i32 %13
  %80 = select i1 %77, i32 0, i32 %79
  %81 = mul i32 %80, %8
  %82 = add i32 %81, %76
  %83 = mul i32 %82, %8
  %84 = add i32 %83, %71
  %85 = fmul float %61, %63
  %86 = fmul float %85, %56
  %87 = sext i32 %84 to i64
  %88 = getelementptr inbounds %struct.MDefCell, ptr %15, i64 %87, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !133
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %47
  %92 = getelementptr inbounds %struct.MDefCell, ptr %15, i64 %87
  %93 = load i32, ptr %92, align 4, !tbaa !135
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.MDefInfluence, ptr %17, i64 %94
  br label %96

96:                                               ; preds = %91, %96
  %97 = phi float [ %114, %96 ], [ %48, %91 ]
  %98 = phi ptr [ %117, %96 ], [ %95, %91 ]
  %99 = phi i32 [ %116, %96 ], [ 0, %91 ]
  %100 = phi float [ %115, %96 ], [ %50, %91 ]
  %101 = phi <2 x float> [ %111, %96 ], [ %51, %91 ]
  %102 = load i32, ptr %98, align 4, !tbaa !57
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x float], ptr %1, i64 %103
  %105 = getelementptr inbounds %struct.MDefInfluence, ptr %98, i64 0, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !55
  %107 = fmul float %86, %106
  %108 = load <2 x float>, ptr %104, align 4, !tbaa !45
  %109 = insertelement <2 x float> poison, float %107, i64 0
  %110 = shufflevector <2 x float> %109, <2 x float> poison, <2 x i32> zeroinitializer
  %111 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %110, <2 x float> %108, <2 x float> %101)
  %112 = getelementptr inbounds float, ptr %104, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !45
  %114 = tail call float @llvm.fmuladd.f32(float %107, float %113, float %97)
  %115 = fadd float %100, %107
  %116 = add nuw nsw i32 %99, 1
  %117 = getelementptr inbounds %struct.MDefInfluence, ptr %98, i64 1
  %118 = icmp eq i32 %116, %89
  br i1 %118, label %119, label %96, !llvm.loop !136

119:                                              ; preds = %96, %47
  %120 = phi float [ %48, %47 ], [ %114, %96 ]
  %121 = phi float [ %50, %47 ], [ %115, %96 ]
  %122 = phi <2 x float> [ %51, %47 ], [ %111, %96 ]
  %123 = add nuw nsw i32 %49, 1
  %124 = icmp eq i32 %123, 8
  br i1 %124, label %125, label %47, !llvm.loop !137

125:                                              ; preds = %119
  %126 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %120, ptr %126, align 8, !tbaa !45
  store <2 x float> %122, ptr %6, align 8, !tbaa !45
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret float %121
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !138 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = load float, ptr %0, align 4, !tbaa !45
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !45
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !45
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !45
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !139 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !45
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !140 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !45
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!37, !37, i64 0}
!51 = !{!35, !37, i64 192}
!52 = !{!35, !37, i64 200}
!53 = !{!40, !40, i64 0}
!54 = distinct !{!54, !48}
!55 = !{!56, !42, i64 4}
!56 = !{!"MDefInfluence", !40, i64 0, !42, i64 4}
!57 = !{!56, !40, i64 0}
!58 = distinct !{!58, !48}
!59 = distinct !{!59, !48}
!60 = !{!"MOD_meshdeform.c:copyData"}
!61 = !{!41, !41, i64 0}
!62 = !{!35, !37, i64 112}
!63 = !{!"MOD_meshdeform.c:deformVerts"}
!64 = !{!65, !37, i64 1680}
!65 = !{!"DerivedMesh", !66, i64 0, !66, i64 200, !66, i64 400, !66, i64 600, !66, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!66 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!67 = !{!"MOD_meshdeform.c:deformVertsEM"}
!68 = !{!"MOD_meshdeform.c:initData"}
!69 = !{!35, !41, i64 184}
!70 = !{!"MOD_meshdeform.c:requiredDataMask"}
!71 = !{!38, !38, i64 0}
!72 = !{!"MOD_meshdeform.c:freeData"}
!73 = !{!35, !37, i64 208}
!74 = !{!35, !37, i64 224}
!75 = !{!35, !37, i64 232}
!76 = !{!35, !37, i64 240}
!77 = !{!35, !37, i64 344}
!78 = !{!"MOD_meshdeform.c:isDisabled"}
!79 = !{!"MOD_meshdeform.c:updateDepgraph"}
!80 = !{!"MOD_meshdeform.c:foreachObjectLink"}
!81 = !{!"MOD_meshdeform.c:meshdeformModifier_do"}
!82 = !{!35, !37, i64 352}
!83 = !{!36, !37, i64 96}
!84 = !{!85, !37, i64 176}
!85 = !{!"Scene", !86, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !87, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !88, i64 280, !97, i64 4264, !87, i64 4296, !87, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !87, i64 4384, !98, i64 4400, !99, i64 4416, !102, i64 4600, !37, i64 4608, !103, i64 4616, !37, i64 4640, !104, i64 4648, !104, i64 4656, !90, i64 4664, !91, i64 4824, !105, i64 4888, !37, i64 4952}
!86 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!87 = !{!"ListBase", !37, i64 0, !37, i64 8}
!88 = !{!"RenderData", !89, i64 0, !37, i64 248, !37, i64 256, !92, i64 264, !93, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !42, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !94, i64 544, !94, i64 560, !95, i64 576, !87, i64 592, !41, i64 608, !41, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !40, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !42, i64 660, !42, i64 664, !41, i64 668, !41, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !42, i64 2528, !42, i64 2532, !41, i64 2536, !41, i64 2538, !42, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !40, i64 2576, !42, i64 2580, !38, i64 2584, !96, i64 2616, !40, i64 3976, !40, i64 3980}
!89 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !41, i64 8, !41, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !90, i64 24, !91, i64 184}
!90 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!91 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!92 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!93 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !42, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!94 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!95 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!96 = !{!"BakeData", !89, i64 0, !38, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!97 = !{!"AudioData", !40, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !42, i64 24, !42, i64 28}
!98 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!99 = !{!"GameData", !98, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !38, i64 34, !100, i64 40, !41, i64 64, !41, i64 66, !42, i64 68, !101, i64 72, !42, i64 128, !42, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!100 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!101 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 54}
!102 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !41, i64 6}
!103 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!104 = !{!"long", !38, i64 0}
!105 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!106 = !{!107, !37, i64 1296}
!107 = !{!"Object", !86, i64 0, !37, i64 120, !37, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !108, i64 312, !37, i64 360, !87, i64 368, !87, i64 384, !87, i64 400, !87, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !38, i64 1042, !38, i64 1043, !41, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !87, i64 1056, !87, i64 1072, !87, i64 1088, !87, i64 1104, !42, i64 1120, !41, i64 1124, !41, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !41, i64 1162, !38, i64 1164, !87, i64 1176, !87, i64 1192, !87, i64 1208, !87, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !41, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !104, i64 1304, !104, i64 1312, !40, i64 1320, !40, i64 1324, !87, i64 1328, !87, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !87, i64 1400, !37, i64 1416}
!108 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!109 = !{!65, !40, i64 1020}
!110 = !{!65, !37, i64 1104}
!111 = !{!65, !37, i64 1536}
!112 = !{!113, !41, i64 2092}
!113 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !87, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !38, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!114 = distinct !{!114, !48}
!115 = !{!116, !37, i64 0}
!116 = !{!"MeshdeformUserdata", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !40, i64 56}
!117 = !{!116, !37, i64 8}
!118 = !{!116, !37, i64 16}
!119 = !{!116, !40, i64 24}
!120 = !{!116, !37, i64 32}
!121 = !{!116, !37, i64 40}
!122 = !{!116, !37, i64 48}
!123 = !{!"MOD_meshdeform.c:zero_v3"}
!124 = !{!"MOD_meshdeform.c:copy_v3_v3"}
!125 = !{!"MOD_meshdeform.c:sub_v3_v3v3"}
!126 = !{!"MOD_meshdeform.c:meshdeform_vert_task"}
!127 = !{!35, !41, i64 186}
!128 = distinct !{!128, !48}
!129 = !{!"MOD_meshdeform.c:meshdeform_dynamic_bind"}
!130 = !{!35, !40, i64 248}
!131 = !{!35, !42, i64 268}
!132 = distinct !{!132, !48}
!133 = !{!134, !40, i64 4}
!134 = !{!"MDefCell", !40, i64 0, !40, i64 4}
!135 = !{!134, !40, i64 0}
!136 = distinct !{!136, !48}
!137 = distinct !{!137, !48}
!138 = !{!"MOD_meshdeform.c:madd_v3_v3fl"}
!139 = !{!"MOD_meshdeform.c:mul_v3_fl"}
!140 = !{!"MOD_meshdeform.c:add_v3_v3"}
