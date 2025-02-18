; ModuleID = 'blender/source/blender/blenkernel/intern/cloth.c'
source_filename = "blender/source/blender/blenkernel/intern/cloth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.ClothCollSettings = type { ptr, float, float, float, float, float, float, i32, i16, i16, ptr, i16, i16, i32 }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.Cloth = type { ptr, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ClothVertex = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], ptr, i32, float, float, float, float, i32, float }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.ClothSpring = type { i32, i32, float, i32, i32, i32, [3 x [3 x float]], [3 x [3 x float]], [3 x float], float, float }
%struct.LinkNode = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"cloth spring\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Can't initialize cloth\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Null cloth object\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cloth\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Out of memory on allocating clmd->clothObject\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Cannot build springs\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"clothVertex\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Out of memory on allocating clmd->clothObject->verts\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"clothMFaces\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Out of memory on allocating clmd->clothObject->mfaces\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"cloth_edgelist_alloc\00", align 1
@__func__.cloth_build_springs = private unnamed_addr constant [20 x i8] c"cloth_build_springs\00", align 1
@str = private unnamed_addr constant [27 x i8] c"cloth_free_modifier_extern\00", align 1
@str.18 = private unnamed_addr constant [30 x i8] c"cloth_free_modifier_extern in\00", align 1
@str.20 = private unnamed_addr constant [40 x i8] c"cloth_free_modifier cloth_build_springs\00", align 1
@str.21 = private unnamed_addr constant [46 x i8] c"cloth_free_modifier clmd->clothObject->mfaces\00", align 1
@str.22 = private unnamed_addr constant [45 x i8] c"cloth_free_modifier clmd->clothObject->verts\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @cloth_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 4, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 4, i64 2
  store float 0xC0239EB860000000, ptr %6, align 4, !tbaa !42
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 7
  store float 1.500000e+01, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 8
  store float 1.500000e+01, ptr %8, align 4, !tbaa !47
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 9
  store float 5.000000e-01, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 2
  store float 5.000000e+00, ptr %10, align 4, !tbaa !49
  %11 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 3
  store float 1.000000e+00, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 6
  store float 0x3FD3333340000000, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 28
  store i32 5, ptr %13, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 29
  store i32 0, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 32
  store i16 0, ptr %15, align 4, !tbaa !54
  %16 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 30
  store i32 0, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 31
  store i32 10, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 34
  store i16 0, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 36
  store i16 0, ptr %19, align 4, !tbaa !58
  %20 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 26
  store float 0.000000e+00, ptr %20, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 14
  store float 0.000000e+00, ptr %21, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 38
  store i16 2, ptr %22, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 15
  store float 1.000000e+00, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 39
  store i16 0, ptr %24, align 2, !tbaa !63
  %25 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 25
  store float 1.000000e+00, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 2
  store float 5.000000e+00, ptr %28, align 4, !tbaa !66
  %29 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 3
  store float 5.000000e+00, ptr %29, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 9
  store i16 2, ptr %30, align 2, !tbaa !69
  %31 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 1
  store float 0x3F8EB851E0000000, ptr %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 7
  store i32 2, ptr %32, align 8, !tbaa !71
  store ptr null, ptr %27, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 8
  store i16 1, ptr %33, align 4, !tbaa !73
  %34 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 4
  store float 7.500000e-01, ptr %34, align 4, !tbaa !74
  %35 = getelementptr inbounds %struct.ClothCollSettings, ptr %27, i64 0, i32 11
  store i16 0, ptr %35, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 17
  store float 1.000000e+03, ptr %36, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 18
  store float 2.500000e+02, ptr %37, align 4, !tbaa !77
  %38 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 16
  store float 1.000000e+00, ptr %38, align 4, !tbaa !78
  %39 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 1
  store float 0.000000e+00, ptr %39, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 20
  store float 0.000000e+00, ptr %40, align 4, !tbaa !80
  %41 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 21
  store float 1.000000e+00, ptr %41, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 22
  store float 0.000000e+00, ptr %42, align 4, !tbaa !82
  %43 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 23
  store float 0.000000e+00, ptr %43, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 41
  %45 = load ptr, ptr %44, align 8, !tbaa !84
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #9
  %49 = load ptr, ptr %2, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.ClothSimSettings, ptr %49, i64 0, i32 41
  store ptr %48, ptr %50, align 8, !tbaa !84
  br label %51

51:                                               ; preds = %47, %1
  %52 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !85
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.PointCache, ptr %53, i64 0, i32 3
  store i32 1, ptr %56, align 4, !tbaa !86
  br label %57

57:                                               ; preds = %55, %51
  ret void
}

declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @bvhtree_update_from_cloth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [12 x float], align 16
  %4 = alloca [12 x float], align 16
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = load ptr, ptr %6, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  %10 = icmp eq ptr %8, null
  br i1 %10, label %128, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = icmp ne ptr %9, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %128

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !93
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %127, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 3
  %25 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 4
  %26 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 5
  %27 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 6
  %28 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 7
  %29 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 8
  %30 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 9
  %31 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 10
  %32 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 11
  %33 = icmp eq i32 %1, 0
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 3
  %37 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 4
  %38 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 5
  %39 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 6
  %40 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 7
  %41 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 8
  %42 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 9
  %43 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 10
  %44 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 11
  br label %45

45:                                               ; preds = %21, %122
  %46 = phi ptr [ %13, %21 ], [ %124, %122 ]
  %47 = phi i32 [ 0, %21 ], [ %123, %122 ]
  %48 = load i32, ptr %46, align 4, !tbaa !94
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %49, i32 6
  %51 = load float, ptr %50, align 4, !tbaa !42
  store float %51, ptr %3, align 16, !tbaa !42
  %52 = getelementptr inbounds float, ptr %50, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !42
  store float %53, ptr %22, align 4, !tbaa !42
  %54 = getelementptr inbounds float, ptr %50, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !42
  store float %55, ptr %23, align 8, !tbaa !42
  %56 = getelementptr inbounds %struct.MFace, ptr %46, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !96
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %58, i32 6
  %60 = load float, ptr %59, align 4, !tbaa !42
  store float %60, ptr %24, align 4, !tbaa !42
  %61 = getelementptr inbounds float, ptr %59, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !42
  store float %62, ptr %25, align 16, !tbaa !42
  %63 = getelementptr inbounds float, ptr %59, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !42
  store float %64, ptr %26, align 4, !tbaa !42
  %65 = getelementptr inbounds %struct.MFace, ptr %46, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !97
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %67, i32 6
  %69 = load float, ptr %68, align 4, !tbaa !42
  store float %69, ptr %27, align 8, !tbaa !42
  %70 = getelementptr inbounds float, ptr %68, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !42
  store float %71, ptr %28, align 4, !tbaa !42
  %72 = getelementptr inbounds float, ptr %68, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !42
  store float %73, ptr %29, align 16, !tbaa !42
  %74 = getelementptr inbounds %struct.MFace, ptr %46, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !98
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %45
  %78 = zext i32 %75 to i64
  %79 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %78, i32 6
  %80 = load float, ptr %79, align 4, !tbaa !42
  store float %80, ptr %30, align 4, !tbaa !42
  %81 = getelementptr inbounds float, ptr %79, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !42
  store float %82, ptr %31, align 8, !tbaa !42
  %83 = getelementptr inbounds float, ptr %79, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !42
  store float %84, ptr %32, align 4, !tbaa !42
  br label %85

85:                                               ; preds = %77, %45
  br i1 %33, label %116, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %49, i32 5
  %88 = load float, ptr %87, align 4, !tbaa !42
  store float %88, ptr %4, align 16, !tbaa !42
  %89 = getelementptr inbounds float, ptr %87, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !42
  store float %90, ptr %34, align 4, !tbaa !42
  %91 = getelementptr inbounds float, ptr %87, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !42
  store float %92, ptr %35, align 8, !tbaa !42
  %93 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %58, i32 5
  %94 = load float, ptr %93, align 4, !tbaa !42
  store float %94, ptr %36, align 4, !tbaa !42
  %95 = getelementptr inbounds float, ptr %93, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !42
  store float %96, ptr %37, align 16, !tbaa !42
  %97 = getelementptr inbounds float, ptr %93, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !42
  store float %98, ptr %38, align 4, !tbaa !42
  %99 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %67, i32 5
  %100 = load float, ptr %99, align 4, !tbaa !42
  store float %100, ptr %39, align 8, !tbaa !42
  %101 = getelementptr inbounds float, ptr %99, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !42
  store float %102, ptr %40, align 4, !tbaa !42
  %103 = getelementptr inbounds float, ptr %99, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !42
  store float %104, ptr %41, align 16, !tbaa !42
  br i1 %76, label %113, label %105

105:                                              ; preds = %86
  %106 = zext i32 %75 to i64
  %107 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %106, i32 5
  %108 = load float, ptr %107, align 4, !tbaa !42
  store float %108, ptr %42, align 4, !tbaa !42
  %109 = getelementptr inbounds float, ptr %107, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !42
  store float %110, ptr %43, align 8, !tbaa !42
  %111 = getelementptr inbounds float, ptr %107, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !42
  store float %112, ptr %44, align 4, !tbaa !42
  br label %113

113:                                              ; preds = %105, %86
  %114 = phi i32 [ 4, %105 ], [ 3, %86 ]
  %115 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %47, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %114) #9
  br label %119

116:                                              ; preds = %85
  %117 = select i1 %76, i32 3, i32 4
  %118 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %47, ptr noundef nonnull %3, ptr noundef null, i32 noundef %117) #9
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i8 [ %115, %113 ], [ %118, %116 ]
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = add nuw i32 %47, 1
  %124 = getelementptr inbounds %struct.MFace, ptr %46, i64 1
  %125 = load i32, ptr %18, align 8, !tbaa !93
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %45, label %127, !llvm.loop !99

127:                                              ; preds = %122, %119, %17
  call void @BLI_bvhtree_update_tree(ptr noundef nonnull %8) #9
  br label %128

128:                                              ; preds = %11, %127, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare zeroext i8 @BLI_bvhtree_update_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_bvhtree_update_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @bvhselftree_update_from_cloth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [12 x float], align 16
  %4 = alloca [12 x float], align 16
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = load ptr, ptr %6, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  %10 = icmp eq ptr %8, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = icmp ne ptr %9, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !103
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = icmp eq i32 %1, 0
  %25 = getelementptr inbounds float, ptr %4, i64 1
  %26 = getelementptr inbounds float, ptr %4, i64 2
  br label %27

27:                                               ; preds = %21, %49
  %28 = phi i32 [ 0, %21 ], [ %50, %49 ]
  %29 = phi ptr [ %9, %21 ], [ %51, %49 ]
  %30 = getelementptr inbounds %struct.ClothVertex, ptr %29, i64 0, i32 6
  %31 = load float, ptr %30, align 4, !tbaa !42
  store float %31, ptr %3, align 16, !tbaa !42
  %32 = getelementptr inbounds %struct.ClothVertex, ptr %29, i64 0, i32 6, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !42
  store float %33, ptr %22, align 4, !tbaa !42
  %34 = getelementptr inbounds %struct.ClothVertex, ptr %29, i64 0, i32 6, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !42
  store float %35, ptr %23, align 8, !tbaa !42
  br i1 %24, label %44, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.ClothVertex, ptr %29, i64 0, i32 5
  %38 = load float, ptr %37, align 4, !tbaa !42
  store float %38, ptr %4, align 16, !tbaa !42
  %39 = getelementptr inbounds %struct.ClothVertex, ptr %29, i64 0, i32 5, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !42
  store float %40, ptr %25, align 4, !tbaa !42
  %41 = getelementptr inbounds %struct.ClothVertex, ptr %29, i64 0, i32 5, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !42
  store float %42, ptr %26, align 8, !tbaa !42
  %43 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #9
  br label %46

44:                                               ; preds = %27
  %45 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %28, ptr noundef nonnull %3, ptr noundef null, i32 noundef 1) #9
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi i8 [ %43, %36 ], [ %45, %44 ]
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = add nuw i32 %28, 1
  %51 = getelementptr inbounds %struct.ClothVertex, ptr %29, i64 1
  %52 = load i32, ptr %18, align 8, !tbaa !103
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %27, label %54, !llvm.loop !104

54:                                               ; preds = %49, %46, %17
  call void @BLI_bvhtree_update_tree(ptr noundef nonnull %8) #9
  br label %55

55:                                               ; preds = %11, %54, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cloth_clear_cache(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PTCacheID, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #9
  call void @BKE_ptcache_id_from_cloth(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !108
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %3
  %16 = fptoui float %2 to i32
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %4, i32 noundef 3, i32 noundef %16) #9
  br label %17

17:                                               ; preds = %10, %15
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #9
  ret void
}

declare void @BKE_ptcache_id_from_cloth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_ptcache_id_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @clothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PTCacheID, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  %10 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  call void @BKE_ptcache_id_from_cloth(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %0) #9
  %15 = sitofp i32 %12 to float
  call void @BKE_ptcache_id_time(ptr noundef nonnull %6, ptr noundef %1, float noundef %15, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #9
  %16 = load float, ptr %7, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ClothSimSettings, ptr %18, i64 0, i32 15
  store float %16, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.ClothSimSettings, ptr %18, i64 0, i32 39
  %21 = load i16, ptr %20, align 2, !tbaa !63
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %5
  %24 = load i32, ptr %8, align 4, !tbaa !133
  %25 = getelementptr inbounds %struct.ClothSimSettings, ptr %18, i64 0, i32 30
  %26 = load i32, ptr %25, align 4, !tbaa !55
  %27 = sub nsw i32 %24, %26
  %28 = icmp ne i32 %12, %27
  %29 = icmp eq i32 %26, 0
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !134
  %38 = call i32 %37(ptr noundef %3) #9
  %39 = load ptr, ptr %32, align 8, !tbaa !88
  %40 = getelementptr inbounds %struct.Cloth, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !103
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %23, %35, %5
  %44 = load ptr, ptr %17, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.ClothSimSettings, ptr %44, i64 0, i32 39
  store i16 0, ptr %45, align 2, !tbaa !63
  %46 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !137
  %48 = or i32 %47, 2
  store i32 %48, ptr %46, align 8, !tbaa !137
  %49 = call i32 @BKE_ptcache_id_reset(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #9
  call void @BKE_ptcache_validate(ptr noundef %14, i32 noundef 0) #9
  %50 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 8
  store i32 0, ptr %50, align 8, !tbaa !138
  %51 = load i32, ptr %46, align 8, !tbaa !137
  %52 = and i32 %51, -259
  store i32 %52, ptr %46, align 8, !tbaa !137
  br label %53

53:                                               ; preds = %43, %35, %31
  %54 = load ptr, ptr %17, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.ClothSimSettings, ptr %54, i64 0, i32 15
  %56 = load float, ptr %55, align 8, !tbaa !62
  %57 = getelementptr inbounds %struct.ClothSimSettings, ptr %54, i64 0, i32 28
  %58 = load i32, ptr %57, align 4, !tbaa !52
  %59 = sitofp i32 %58 to float
  %60 = fdiv float %56, %59
  %61 = getelementptr inbounds %struct.ClothSimSettings, ptr %54, i64 0, i32 5
  store float %60, ptr %61, align 8, !tbaa !139
  %62 = getelementptr inbounds %struct.ClothSimSettings, ptr %54, i64 0, i32 30
  %63 = load i32, ptr %62, align 4, !tbaa !55
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %53
  %66 = load i32, ptr %8, align 4, !tbaa !133
  %67 = sub nsw i32 %66, %63
  %68 = icmp sgt i32 %12, %67
  %69 = icmp slt i32 %12, %66
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %105

71:                                               ; preds = %65
  call void @BKE_ptcache_invalidate(ptr noundef %14) #9
  %72 = call fastcc i32 @do_init_cloth(ptr noundef %2, ptr noundef %0, ptr noundef %3)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %252, label %74

74:                                               ; preds = %71
  %75 = call fastcc i32 @do_step_cloth(ptr noundef %2, ptr noundef %0, ptr noundef %3, i32 noundef %12)
  %76 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = icmp eq ptr %77, null
  br i1 %78, label %102, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %81 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %82 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %80, ptr noundef nonnull %81) #9
  %83 = getelementptr inbounds %struct.Cloth, ptr %77, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !103
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %79, %86
  %87 = phi i64 [ %98, %86 ], [ 0, %79 ]
  %88 = getelementptr inbounds [3 x float], ptr %4, i64 %87
  %89 = load ptr, ptr %77, align 8, !tbaa !91
  %90 = getelementptr inbounds %struct.ClothVertex, ptr %89, i64 %87, i32 3
  %91 = load float, ptr %90, align 4, !tbaa !42
  store float %91, ptr %88, align 4, !tbaa !42
  %92 = getelementptr inbounds float, ptr %90, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !42
  %94 = getelementptr inbounds float, ptr %88, i64 1
  store float %93, ptr %94, align 4, !tbaa !42
  %95 = getelementptr inbounds float, ptr %90, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !42
  %97 = getelementptr inbounds float, ptr %88, i64 2
  store float %96, ptr %97, align 4, !tbaa !42
  call void @mul_m4_v3(ptr noundef nonnull %80, ptr noundef nonnull %88) #9
  %98 = add nuw nsw i64 %87, 1
  %99 = load i32, ptr %83, align 8, !tbaa !103
  %100 = zext i32 %99 to i64
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %86, label %102, !llvm.loop !140

102:                                              ; preds = %86, %74, %79
  %103 = load ptr, ptr %76, align 8, !tbaa !88
  %104 = getelementptr inbounds %struct.Cloth, ptr %103, i64 0, i32 14
  store i32 %12, ptr %104, align 8, !tbaa !141
  br label %252

105:                                              ; preds = %65, %53
  %106 = load i32, ptr %8, align 4, !tbaa !133
  %107 = icmp slt i32 %12, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @BKE_ptcache_invalidate(ptr noundef %14) #9
  br label %252

109:                                              ; preds = %105
  %110 = load i32, ptr %9, align 4, !tbaa !133
  %111 = call i32 @llvm.smin.i32(i32 %12, i32 %110)
  %112 = call fastcc i32 @do_init_cloth(ptr noundef %2, ptr noundef %0, ptr noundef %3)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %252, label %114

114:                                              ; preds = %109
  %115 = load i32, ptr %8, align 4, !tbaa !133
  %116 = icmp eq i32 %111, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load ptr, ptr %17, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.ClothSimSettings, ptr %118, i64 0, i32 30
  %120 = load i32, ptr %119, align 4, !tbaa !55
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = call i32 @BKE_ptcache_id_reset(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #9
  %124 = call fastcc i32 @do_init_cloth(ptr noundef %2, ptr noundef %0, ptr noundef %3)
  call void @BKE_ptcache_validate(ptr noundef %14, i32 noundef %111) #9
  %125 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !137
  %127 = and i32 %126, -259
  store i32 %127, ptr %125, align 8, !tbaa !137
  %128 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !88
  %130 = getelementptr inbounds %struct.Cloth, ptr %129, i64 0, i32 14
  store i32 %111, ptr %130, align 8, !tbaa !141
  br label %252

131:                                              ; preds = %117, %114
  %132 = sitofp i32 %111 to float
  %133 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 8
  %134 = load float, ptr %133, align 4, !tbaa !142
  %135 = fadd float %134, %132
  %136 = call i32 @BKE_ptcache_read(ptr noundef nonnull %6, float noundef %135) #9
  %137 = add i32 %136, -1
  %138 = icmp ult i32 %137, 2
  br i1 %138, label %139, label %178

139:                                              ; preds = %131
  %140 = icmp eq i32 %136, 2
  call void @implicit_set_positions(ptr noundef %0) #9
  %141 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !88
  %143 = icmp eq ptr %142, null
  br i1 %143, label %167, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %146 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %147 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %145, ptr noundef nonnull %146) #9
  %148 = getelementptr inbounds %struct.Cloth, ptr %142, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !103
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %144, %151
  %152 = phi i64 [ %163, %151 ], [ 0, %144 ]
  %153 = getelementptr inbounds [3 x float], ptr %4, i64 %152
  %154 = load ptr, ptr %142, align 8, !tbaa !91
  %155 = getelementptr inbounds %struct.ClothVertex, ptr %154, i64 %152, i32 3
  %156 = load float, ptr %155, align 4, !tbaa !42
  store float %156, ptr %153, align 4, !tbaa !42
  %157 = getelementptr inbounds float, ptr %155, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !42
  %159 = getelementptr inbounds float, ptr %153, i64 1
  store float %158, ptr %159, align 4, !tbaa !42
  %160 = getelementptr inbounds float, ptr %155, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !42
  %162 = getelementptr inbounds float, ptr %153, i64 2
  store float %161, ptr %162, align 4, !tbaa !42
  call void @mul_m4_v3(ptr noundef nonnull %145, ptr noundef nonnull %153) #9
  %163 = add nuw nsw i64 %152, 1
  %164 = load i32, ptr %148, align 8, !tbaa !103
  %165 = zext i32 %164 to i64
  %166 = icmp ult i64 %163, %165
  br i1 %166, label %151, label %167, !llvm.loop !140

167:                                              ; preds = %151, %139, %144
  call void @BKE_ptcache_validate(ptr noundef %14, i32 noundef %111) #9
  br i1 %140, label %168, label %175

168:                                              ; preds = %167
  %169 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %170 = load i32, ptr %169, align 8, !tbaa !137
  %171 = and i32 %170, 258
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %111) #9
  br label %175

175:                                              ; preds = %173, %168, %167
  %176 = load ptr, ptr %141, align 8, !tbaa !88
  %177 = getelementptr inbounds %struct.Cloth, ptr %176, i64 0, i32 14
  store i32 %111, ptr %177, align 8, !tbaa !141
  br label %252

178:                                              ; preds = %131
  %179 = icmp eq i32 %136, 3
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  call void @implicit_set_positions(ptr noundef %0) #9
  br label %187

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %183 = load i32, ptr %182, align 8, !tbaa !137
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  call void @BKE_ptcache_invalidate(ptr noundef %14) #9
  br label %252

187:                                              ; preds = %180, %181
  %188 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !88
  %190 = getelementptr inbounds %struct.Cloth, ptr %189, i64 0, i32 14
  %191 = load i32, ptr %190, align 8, !tbaa !141
  %192 = add nsw i32 %191, 1
  %193 = icmp eq i32 %111, %192
  br i1 %193, label %194, label %252

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 4
  %196 = load i32, ptr %195, align 8, !tbaa !143
  %197 = load i32, ptr %8, align 4, !tbaa !133
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %201 = load i32, ptr %200, align 8, !tbaa !137
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 8
  %206 = load i32, ptr %205, align 8, !tbaa !138
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204, %199
  %209 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %197) #9
  br label %210

210:                                              ; preds = %208, %204, %194
  %211 = load i32, ptr %195, align 8, !tbaa !143
  %212 = sub nsw i32 %111, %211
  %213 = sitofp i32 %212 to float
  %214 = load ptr, ptr %17, align 8, !tbaa !34
  %215 = getelementptr inbounds %struct.ClothSimSettings, ptr %214, i64 0, i32 15
  %216 = load float, ptr %215, align 8, !tbaa !62
  %217 = fmul float %216, %213
  store float %217, ptr %215, align 8, !tbaa !62
  call void @BKE_ptcache_validate(ptr noundef %14, i32 noundef %111) #9
  %218 = call fastcc i32 @do_step_cloth(ptr noundef %2, ptr noundef %0, ptr noundef %3, i32 noundef %111)
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %210
  call void @BKE_ptcache_invalidate(ptr noundef %14) #9
  br label %223

221:                                              ; preds = %210
  %222 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %111) #9
  br label %223

223:                                              ; preds = %221, %220
  %224 = load ptr, ptr %188, align 8, !tbaa !88
  %225 = icmp eq ptr %224, null
  br i1 %225, label %249, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %228 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %229 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %227, ptr noundef nonnull %228) #9
  %230 = getelementptr inbounds %struct.Cloth, ptr %224, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !103
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %249, label %233

233:                                              ; preds = %226, %233
  %234 = phi i64 [ %245, %233 ], [ 0, %226 ]
  %235 = getelementptr inbounds [3 x float], ptr %4, i64 %234
  %236 = load ptr, ptr %224, align 8, !tbaa !91
  %237 = getelementptr inbounds %struct.ClothVertex, ptr %236, i64 %234, i32 3
  %238 = load float, ptr %237, align 4, !tbaa !42
  store float %238, ptr %235, align 4, !tbaa !42
  %239 = getelementptr inbounds float, ptr %237, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !42
  %241 = getelementptr inbounds float, ptr %235, i64 1
  store float %240, ptr %241, align 4, !tbaa !42
  %242 = getelementptr inbounds float, ptr %237, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !42
  %244 = getelementptr inbounds float, ptr %235, i64 2
  store float %243, ptr %244, align 4, !tbaa !42
  call void @mul_m4_v3(ptr noundef nonnull %227, ptr noundef nonnull %235) #9
  %245 = add nuw nsw i64 %234, 1
  %246 = load i32, ptr %230, align 8, !tbaa !103
  %247 = zext i32 %246 to i64
  %248 = icmp ult i64 %245, %247
  br i1 %248, label %233, label %249, !llvm.loop !140

249:                                              ; preds = %233, %223, %226
  %250 = load ptr, ptr %188, align 8, !tbaa !88
  %251 = getelementptr inbounds %struct.Cloth, ptr %250, i64 0, i32 14
  store i32 %111, ptr %251, align 8, !tbaa !141
  br label %252

252:                                              ; preds = %187, %109, %71, %249, %186, %175, %122, %108, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #9
  ret void
}

declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_ptcache_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @do_init_cloth(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [12 x float], align 16
  %5 = alloca [12 x float], align 16
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %1061

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %13 = tail call ptr %12(i64 noundef 88, ptr noundef nonnull @.str.6) #9
  store ptr %13, ptr %8, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Cloth, ptr %13, i64 0, i32 5
  store i8 -1, ptr %16, align 4, !tbaa !145
  %17 = getelementptr inbounds %struct.Cloth, ptr %13, i64 0, i32 13
  store ptr null, ptr %17, align 8, !tbaa !146
  %18 = icmp eq ptr %2, null
  br i1 %18, label %1056, label %20

19:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %1, ptr noundef nonnull @.str.7) #9
  br label %1056

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = tail call i32 %22(ptr noundef nonnull %2) #9
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = tail call i32 %25(ptr noundef nonnull %2) #9
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 33
  %28 = load ptr, ptr %27, align 8, !tbaa !148
  %29 = tail call ptr %28(ptr noundef nonnull %2) #9
  %30 = load ptr, ptr %8, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.Cloth, ptr %30, i64 0, i32 2
  store i32 %23, ptr %31, align 8, !tbaa !103
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %33 = zext i32 %23 to i64
  %34 = mul nuw nsw i64 %33, 152
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.10) #9
  %36 = load ptr, ptr %8, align 8, !tbaa !88
  store ptr %35, ptr %36, align 8, !tbaa !91
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  tail call void @cloth_free_modifier(ptr noundef %1)
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %1, ptr noundef nonnull @.str.11) #9
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  br label %71

40:                                               ; preds = %20
  %41 = getelementptr inbounds %struct.Cloth, ptr %36, i64 0, i32 4
  store i32 %26, ptr %41, align 8, !tbaa !93
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %43 = zext i32 %26 to i64
  %44 = mul nuw nsw i64 %43, 20
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.13) #9
  %46 = load ptr, ptr %8, align 8, !tbaa !88
  %47 = getelementptr inbounds %struct.Cloth, ptr %46, i64 0, i32 10
  store ptr %45, ptr %47, align 8, !tbaa !92
  %48 = icmp eq ptr %45, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = icmp eq i32 %26, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %49
  %52 = zext i32 %26 to i64
  br label %55

53:                                               ; preds = %40
  tail call void @cloth_free_modifier(ptr noundef %1)
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  br label %71

55:                                               ; preds = %51, %55
  %56 = phi i64 [ 0, %51 ], [ %62, %55 ]
  %57 = load ptr, ptr %8, align 8, !tbaa !88
  %58 = getelementptr inbounds %struct.Cloth, ptr %57, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !92
  %60 = getelementptr inbounds %struct.MFace, ptr %59, i64 %56
  %61 = getelementptr inbounds %struct.MFace, ptr %29, i64 %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %60, ptr noundef nonnull align 4 dereferenceable(20) %61, i64 20, i1 false)
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, %52
  br i1 %63, label %64, label %55, !llvm.loop !149

64:                                               ; preds = %55, %49
  %65 = load ptr, ptr %8, align 8, !tbaa !88
  %66 = getelementptr inbounds %struct.Cloth, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !150
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %70(ptr noundef nonnull %67) #9
  br label %71

71:                                               ; preds = %69, %64, %53, %38
  %72 = load ptr, ptr %8, align 8, !tbaa !88
  %73 = getelementptr inbounds %struct.Cloth, ptr %72, i64 0, i32 1
  store ptr null, ptr %73, align 8, !tbaa !150
  %74 = getelementptr inbounds %struct.Cloth, ptr %72, i64 0, i32 3
  store i32 -1, ptr %74, align 4, !tbaa !151
  %75 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.ClothSimSettings, ptr %76, i64 0, i32 37
  %78 = load i16, ptr %77, align 2, !tbaa !152
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %82 = load ptr, ptr %81, align 8, !tbaa !153
  %83 = tail call ptr %82(ptr noundef nonnull %2, i32 noundef 23) #9
  br label %84

84:                                               ; preds = %80, %71
  %85 = phi ptr [ %83, %80 ], [ null, %71 ]
  %86 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %87 = load ptr, ptr %86, align 8, !tbaa !154
  %88 = tail call ptr %87(ptr noundef nonnull %2) #9
  %89 = load ptr, ptr %8, align 8, !tbaa !88
  %90 = load ptr, ptr %89, align 8, !tbaa !91
  %91 = load ptr, ptr %21, align 8, !tbaa !134
  %92 = tail call i32 %91(ptr noundef nonnull %2) #9
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %163

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %96 = icmp eq ptr %85, null
  br label %97

97:                                               ; preds = %94, %127
  %98 = phi i64 [ 0, %94 ], [ %157, %127 ]
  %99 = phi ptr [ %90, %94 ], [ %158, %127 ]
  %100 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 3
  %101 = getelementptr inbounds %struct.MVert, ptr %88, i64 %98
  %102 = load float, ptr %101, align 4, !tbaa !42
  store float %102, ptr %100, align 4, !tbaa !42
  %103 = getelementptr inbounds float, ptr %101, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !42
  %105 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 3, i64 1
  store float %104, ptr %105, align 4, !tbaa !42
  %106 = getelementptr inbounds float, ptr %101, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !42
  %108 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 3, i64 2
  store float %107, ptr %108, align 4, !tbaa !42
  tail call void @mul_m4_v3(ptr noundef nonnull %95, ptr noundef nonnull %100) #9
  br i1 %96, label %112, label %109

109:                                              ; preds = %97
  %110 = getelementptr inbounds [3 x float], ptr %85, i64 %98
  %111 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 11
  store ptr %110, ptr %111, align 8, !tbaa !155
  tail call void @mul_m4_v3(ptr noundef nonnull %95, ptr noundef nonnull %110) #9
  br label %114

112:                                              ; preds = %97
  %113 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 11
  store ptr %100, ptr %113, align 8, !tbaa !155
  br label %114

114:                                              ; preds = %112, %109
  %115 = load ptr, ptr %75, align 8, !tbaa !34
  %116 = getelementptr inbounds %struct.ClothSimSettings, ptr %115, i64 0, i32 6
  %117 = load float, ptr %116, align 4, !tbaa !51
  %118 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 8
  store float %117, ptr %118, align 8, !tbaa !157
  %119 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 12
  store i32 0, ptr %119, align 8, !tbaa !158
  %120 = getelementptr inbounds %struct.ClothSimSettings, ptr %115, i64 0, i32 29
  %121 = load i32, ptr %120, align 8, !tbaa !53
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.ClothSimSettings, ptr %115, i64 0, i32 20
  %126 = load float, ptr %125, align 4, !tbaa !80
  br label %127

127:                                              ; preds = %114, %124
  %128 = phi float [ %126, %124 ], [ 0.000000e+00, %114 ]
  %129 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 9
  store float %128, ptr %129, align 4, !tbaa !159
  store i32 0, ptr %99, align 8, !tbaa !160
  %130 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 4
  %131 = load float, ptr %100, align 4, !tbaa !42
  store float %131, ptr %130, align 4, !tbaa !42
  %132 = load float, ptr %105, align 4, !tbaa !42
  %133 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 4, i64 1
  store float %132, ptr %133, align 4, !tbaa !42
  %134 = load float, ptr %108, align 4, !tbaa !42
  %135 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 4, i64 2
  store float %134, ptr %135, align 4, !tbaa !42
  %136 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 2
  store float %131, ptr %136, align 4, !tbaa !42
  %137 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 2, i64 1
  store float %132, ptr %137, align 4, !tbaa !42
  %138 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 2, i64 2
  store float %134, ptr %138, align 4, !tbaa !42
  %139 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 6
  store float %131, ptr %139, align 4, !tbaa !42
  %140 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 6, i64 1
  store float %132, ptr %140, align 4, !tbaa !42
  %141 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 6, i64 2
  store float %134, ptr %141, align 4, !tbaa !42
  %142 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 5
  store float %131, ptr %142, align 4, !tbaa !42
  %143 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 5, i64 1
  store float %132, ptr %143, align 4, !tbaa !42
  %144 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 5, i64 2
  store float %134, ptr %144, align 4, !tbaa !42
  %145 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 1
  %146 = load float, ptr %145, align 4, !tbaa !42
  %147 = fmul float %146, 0.000000e+00
  store float %147, ptr %145, align 4, !tbaa !42
  %148 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 1, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !42
  %150 = fmul float %149, 0.000000e+00
  store float %150, ptr %148, align 4, !tbaa !42
  %151 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 1, i64 2
  %152 = load float, ptr %151, align 4, !tbaa !42
  %153 = fmul float %152, 0.000000e+00
  store float %153, ptr %151, align 4, !tbaa !42
  store i32 0, ptr %119, align 8, !tbaa !158
  %154 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 10
  store float 0.000000e+00, ptr %154, align 4, !tbaa !42
  %155 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 10, i64 1
  store float 0.000000e+00, ptr %155, align 4, !tbaa !42
  %156 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 0, i32 10, i64 2
  store float 0.000000e+00, ptr %156, align 4, !tbaa !42
  %157 = add nuw nsw i64 %98, 1
  %158 = getelementptr inbounds %struct.ClothVertex, ptr %99, i64 1
  %159 = load ptr, ptr %21, align 8, !tbaa !134
  %160 = tail call i32 %159(ptr noundef nonnull %2) #9
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %157, %161
  br i1 %162, label %97, label %163, !llvm.loop !161

163:                                              ; preds = %127, %84
  tail call fastcc void @cloth_apply_vgroup(ptr noundef %1, ptr noundef nonnull %2)
  %164 = load ptr, ptr %8, align 8, !tbaa !88
  %165 = load ptr, ptr %21, align 8, !tbaa !134
  %166 = tail call i32 %165(ptr noundef nonnull %2) #9
  %167 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %168 = load ptr, ptr %167, align 8, !tbaa !162
  %169 = tail call i32 %168(ptr noundef nonnull %2) #9
  %170 = load ptr, ptr %24, align 8, !tbaa !147
  %171 = tail call i32 %170(ptr noundef nonnull %2) #9
  %172 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %173 = load ptr, ptr %172, align 8, !tbaa !163
  %174 = tail call ptr %173(ptr noundef nonnull %2) #9
  %175 = load ptr, ptr %27, align 8, !tbaa !148
  %176 = tail call ptr %175(ptr noundef nonnull %2) #9
  %177 = icmp eq i32 %169, 0
  br i1 %177, label %873, label %178

178:                                              ; preds = %163
  %179 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 1
  store ptr null, ptr %179, align 8, !tbaa !150
  %180 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 13
  store ptr null, ptr %180, align 8, !tbaa !146
  %181 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %182 = zext i32 %166 to i64
  %183 = shl nuw nsw i64 %182, 3
  %184 = tail call ptr %181(i64 noundef %183, ptr noundef nonnull @.str.16) #9
  %185 = icmp eq ptr %184, null
  br i1 %185, label %873, label %186

186:                                              ; preds = %178
  %187 = zext i32 %169 to i64
  br label %188

188:                                              ; preds = %186, %276
  %189 = phi i64 [ 0, %186 ], [ %306, %276 ]
  %190 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %191 = tail call ptr %190(i64 noundef 116, ptr noundef nonnull @.str.2) #9
  %192 = icmp eq ptr %191, null
  br i1 %192, label %308, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.MEdge, ptr %174, i64 %189
  %195 = load i32, ptr %194, align 4, !tbaa !164
  %196 = getelementptr inbounds %struct.MEdge, ptr %174, i64 %189, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !166
  %198 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 1
  %199 = tail call i32 @llvm.smin.i32(i32 %195, i32 %197)
  %200 = tail call i32 @llvm.smax.i32(i32 %195, i32 %197)
  store i32 %199, ptr %191, align 4, !tbaa !167
  store i32 %200, ptr %198, align 4, !tbaa !169
  %201 = load ptr, ptr %75, align 8, !tbaa !34
  %202 = getelementptr inbounds %struct.ClothSimSettings, ptr %201, i64 0, i32 29
  %203 = load i32, ptr %202, align 8, !tbaa !53
  %204 = and i32 %203, 16384
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %193
  %207 = getelementptr inbounds %struct.MEdge, ptr %174, i64 %189, i32 4
  %208 = load i16, ptr %207, align 2, !tbaa !170
  %209 = and i16 %208, 128
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 2
  store float 0.000000e+00, ptr %212, align 4, !tbaa !171
  br label %276

213:                                              ; preds = %206, %193
  %214 = getelementptr inbounds %struct.ClothSimSettings, ptr %201, i64 0, i32 36
  %215 = load i16, ptr %214, align 4, !tbaa !58
  %216 = icmp sgt i16 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load ptr, ptr %164, align 8, !tbaa !91
  %219 = load i32, ptr %191, align 4, !tbaa !167
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ClothVertex, ptr %218, i64 %220, i32 18
  %222 = load float, ptr %221, align 8, !tbaa !172
  %223 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !169
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ClothVertex, ptr %218, i64 %225, i32 18
  %227 = load float, ptr %226, align 8, !tbaa !172
  %228 = fadd float %222, %227
  %229 = fmul float %228, 5.000000e-01
  br label %233

230:                                              ; preds = %213
  %231 = getelementptr inbounds %struct.ClothSimSettings, ptr %201, i64 0, i32 26
  %232 = load float, ptr %231, align 4, !tbaa !59
  br label %233

233:                                              ; preds = %230, %217
  %234 = phi float [ %229, %217 ], [ %232, %230 ]
  %235 = fsub float 1.000000e+00, %234
  %236 = load ptr, ptr %164, align 8, !tbaa !91
  %237 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !169
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.ClothVertex, ptr %236, i64 %239, i32 11
  %241 = load ptr, ptr %240, align 8, !tbaa !155
  %242 = load i32, ptr %191, align 4, !tbaa !167
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ClothVertex, ptr %236, i64 %243, i32 11
  %245 = load ptr, ptr %244, align 8, !tbaa !155
  %246 = load float, ptr %245, align 4, !tbaa !42
  %247 = load float, ptr %241, align 4, !tbaa !42
  %248 = fsub float %246, %247
  %249 = getelementptr inbounds float, ptr %245, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !42
  %251 = getelementptr inbounds float, ptr %241, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !42
  %253 = fsub float %250, %252
  %254 = getelementptr inbounds float, ptr %245, i64 2
  %255 = load float, ptr %254, align 4, !tbaa !42
  %256 = getelementptr inbounds float, ptr %241, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !42
  %258 = fsub float %255, %257
  %259 = fmul float %253, %253
  %260 = tail call float @llvm.fmuladd.f32(float %248, float %248, float %259)
  %261 = tail call float @llvm.fmuladd.f32(float %258, float %258, float %260)
  %262 = tail call float @sqrtf(float noundef %261) #9
  %263 = fmul float %235, %262
  %264 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 2
  store float %263, ptr %264, align 4, !tbaa !171
  %265 = load ptr, ptr %164, align 8, !tbaa !91
  %266 = load i32, ptr %237, align 4, !tbaa !169
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.ClothVertex, ptr %265, i64 %267, i32 14
  %269 = load float, ptr %268, align 8, !tbaa !173
  %270 = load i32, ptr %191, align 4, !tbaa !167
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.ClothVertex, ptr %265, i64 %271, i32 14
  %273 = load float, ptr %272, align 8, !tbaa !173
  %274 = fadd float %269, %273
  %275 = fmul float %274, 5.000000e-01
  br label %276

276:                                              ; preds = %233, %211
  %277 = phi float [ %275, %233 ], [ 1.000000e+00, %211 ]
  %278 = phi i32 [ 2, %233 ], [ 32, %211 ]
  %279 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 9
  store float %277, ptr %279, align 4, !tbaa !174
  %280 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 4
  store i32 %278, ptr %280, align 4, !tbaa !175
  %281 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 2
  %282 = load float, ptr %281, align 4, !tbaa !171
  %283 = load ptr, ptr %75, align 8, !tbaa !34
  %284 = getelementptr inbounds %struct.ClothSimSettings, ptr %283, i64 0, i32 14
  %285 = load float, ptr %284, align 4, !tbaa !60
  %286 = fadd float %282, %285
  store float %286, ptr %284, align 4, !tbaa !60
  %287 = load ptr, ptr %164, align 8, !tbaa !91
  %288 = load i32, ptr %191, align 4, !tbaa !167
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.ClothVertex, ptr %287, i64 %289, i32 13
  %291 = load float, ptr %290, align 4, !tbaa !176
  %292 = fadd float %282, %291
  store float %292, ptr %290, align 4, !tbaa !176
  %293 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 1
  %294 = load i32, ptr %293, align 4, !tbaa !169
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.ClothVertex, ptr %287, i64 %295, i32 13
  %297 = load float, ptr %296, align 4, !tbaa !176
  %298 = fadd float %282, %297
  store float %298, ptr %296, align 4, !tbaa !176
  %299 = getelementptr inbounds %struct.ClothVertex, ptr %287, i64 %289, i32 17
  %300 = load i32, ptr %299, align 4, !tbaa !177
  %301 = add nsw i32 %300, 1
  store i32 %301, ptr %299, align 4, !tbaa !177
  %302 = getelementptr inbounds %struct.ClothVertex, ptr %287, i64 %295, i32 17
  %303 = load i32, ptr %302, align 4, !tbaa !177
  %304 = add nsw i32 %303, 1
  store i32 %304, ptr %302, align 4, !tbaa !177
  %305 = getelementptr inbounds %struct.ClothSpring, ptr %191, i64 0, i32 5
  store i32 0, ptr %305, align 4, !tbaa !178
  %306 = add nuw nsw i64 %189, 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %179, ptr noundef nonnull %191) #9
  %307 = icmp eq i64 %306, %187
  br i1 %307, label %336, label %188, !llvm.loop !179

308:                                              ; preds = %188
  %309 = load ptr, ptr %179, align 8, !tbaa !150
  %310 = icmp eq ptr %309, null
  br i1 %310, label %320, label %311

311:                                              ; preds = %308, %311
  %312 = phi ptr [ %316, %311 ], [ %309, %308 ]
  %313 = getelementptr inbounds %struct.LinkNode, ptr %312, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !180
  %315 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %315(ptr noundef %314) #9
  %316 = load ptr, ptr %312, align 8, !tbaa !182
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %311, !llvm.loop !183

318:                                              ; preds = %311
  %319 = load ptr, ptr %179, align 8, !tbaa !150
  tail call void @BLI_linklist_free(ptr noundef %319, ptr noundef null) #9
  store ptr null, ptr %179, align 8, !tbaa !150
  br label %320

320:                                              ; preds = %318, %308
  %321 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 2
  %322 = load i32, ptr %321, align 8, !tbaa !103
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %332, label %324

324:                                              ; preds = %320
  %325 = zext i32 %322 to i64
  br label %326

326:                                              ; preds = %326, %324
  %327 = phi i64 [ 0, %324 ], [ %330, %326 ]
  %328 = getelementptr inbounds ptr, ptr %184, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !144
  tail call void @BLI_linklist_free(ptr noundef %329, ptr noundef null) #9
  %330 = add nuw nsw i64 %327, 1
  %331 = icmp eq i64 %330, %325
  br i1 %331, label %332, label %326, !llvm.loop !184

332:                                              ; preds = %326, %320
  %333 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %333(ptr noundef nonnull %184) #9
  %334 = load ptr, ptr %180, align 8, !tbaa !146
  %335 = icmp eq ptr %334, null
  br i1 %335, label %873, label %871

336:                                              ; preds = %276
  %337 = uitofp i32 %169 to float
  %338 = load ptr, ptr %75, align 8, !tbaa !34
  %339 = getelementptr inbounds %struct.ClothSimSettings, ptr %338, i64 0, i32 14
  %340 = load float, ptr %339, align 4, !tbaa !60
  %341 = fdiv float %340, %337
  store float %341, ptr %339, align 4, !tbaa !60
  %342 = icmp eq i32 %166, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %336
  %344 = load ptr, ptr %164, align 8, !tbaa !91
  %345 = zext i32 %166 to i64
  br label %350

346:                                              ; preds = %350, %336
  %347 = icmp eq i32 %171, 0
  br i1 %347, label %588, label %348

348:                                              ; preds = %346
  %349 = zext i32 %171 to i64
  br label %361

350:                                              ; preds = %343, %350
  %351 = phi i64 [ 0, %343 ], [ %359, %350 ]
  %352 = getelementptr inbounds %struct.ClothVertex, ptr %344, i64 %351, i32 13
  %353 = load float, ptr %352, align 4, !tbaa !176
  %354 = fmul float %353, 0x3FDF5C2900000000
  %355 = getelementptr inbounds %struct.ClothVertex, ptr %344, i64 %351, i32 17
  %356 = load i32, ptr %355, align 4, !tbaa !177
  %357 = sitofp i32 %356 to float
  %358 = fdiv float %354, %357
  store float %358, ptr %352, align 4, !tbaa !176
  %359 = add nuw nsw i64 %351, 1
  %360 = icmp eq i64 %359, %345
  br i1 %360, label %346, label %350, !llvm.loop !185

361:                                              ; preds = %348, %584
  %362 = phi i64 [ 0, %348 ], [ %586, %584 ]
  %363 = phi i32 [ 0, %348 ], [ %585, %584 ]
  %364 = getelementptr inbounds %struct.MFace, ptr %176, i64 %362
  %365 = getelementptr inbounds %struct.MFace, ptr %176, i64 %362, i32 3
  %366 = load i32, ptr %365, align 4, !tbaa !98
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %584, label %368

368:                                              ; preds = %361
  %369 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %370 = tail call ptr %369(i64 noundef 116, ptr noundef nonnull @.str.2) #9
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %400

372:                                              ; preds = %368
  %373 = load ptr, ptr %179, align 8, !tbaa !150
  %374 = icmp eq ptr %373, null
  br i1 %374, label %384, label %375

375:                                              ; preds = %372, %375
  %376 = phi ptr [ %380, %375 ], [ %373, %372 ]
  %377 = getelementptr inbounds %struct.LinkNode, ptr %376, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !180
  %379 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %379(ptr noundef %378) #9
  %380 = load ptr, ptr %376, align 8, !tbaa !182
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %375, !llvm.loop !183

382:                                              ; preds = %375
  %383 = load ptr, ptr %179, align 8, !tbaa !150
  tail call void @BLI_linklist_free(ptr noundef %383, ptr noundef null) #9
  store ptr null, ptr %179, align 8, !tbaa !150
  br label %384

384:                                              ; preds = %382, %372
  %385 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 2
  %386 = load i32, ptr %385, align 8, !tbaa !103
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %396, label %388

388:                                              ; preds = %384
  %389 = zext i32 %386 to i64
  br label %390

390:                                              ; preds = %390, %388
  %391 = phi i64 [ 0, %388 ], [ %394, %390 ]
  %392 = getelementptr inbounds ptr, ptr %184, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !144
  tail call void @BLI_linklist_free(ptr noundef %393, ptr noundef null) #9
  %394 = add nuw nsw i64 %391, 1
  %395 = icmp eq i64 %394, %389
  br i1 %395, label %396, label %390, !llvm.loop !184

396:                                              ; preds = %390, %384
  %397 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %397(ptr noundef nonnull %184) #9
  %398 = load ptr, ptr %180, align 8, !tbaa !146
  %399 = icmp eq ptr %398, null
  br i1 %399, label %873, label %871

400:                                              ; preds = %368
  %401 = load i32, ptr %364, align 4, !tbaa !94
  %402 = getelementptr inbounds %struct.MFace, ptr %176, i64 %362, i32 2
  %403 = load i32, ptr %402, align 4, !tbaa !97
  %404 = getelementptr inbounds %struct.ClothSpring, ptr %370, i64 0, i32 1
  %405 = tail call i32 @llvm.smin.i32(i32 %401, i32 %403)
  %406 = tail call i32 @llvm.smax.i32(i32 %401, i32 %403)
  store i32 %405, ptr %370, align 4, !tbaa !167
  store i32 %406, ptr %404, align 4, !tbaa !169
  %407 = load ptr, ptr %75, align 8, !tbaa !34
  %408 = getelementptr inbounds %struct.ClothSimSettings, ptr %407, i64 0, i32 36
  %409 = load i16, ptr %408, align 4, !tbaa !58
  %410 = icmp sgt i16 %409, 0
  br i1 %410, label %411, label %424

411:                                              ; preds = %400
  %412 = load ptr, ptr %164, align 8, !tbaa !91
  %413 = load i32, ptr %370, align 4, !tbaa !167
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.ClothVertex, ptr %412, i64 %414, i32 18
  %416 = load float, ptr %415, align 8, !tbaa !172
  %417 = getelementptr inbounds %struct.ClothSpring, ptr %370, i64 0, i32 1
  %418 = load i32, ptr %417, align 4, !tbaa !169
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.ClothVertex, ptr %412, i64 %419, i32 18
  %421 = load float, ptr %420, align 8, !tbaa !172
  %422 = fadd float %416, %421
  %423 = fmul float %422, 5.000000e-01
  br label %427

424:                                              ; preds = %400
  %425 = getelementptr inbounds %struct.ClothSimSettings, ptr %407, i64 0, i32 26
  %426 = load float, ptr %425, align 4, !tbaa !59
  br label %427

427:                                              ; preds = %424, %411
  %428 = phi float [ %423, %411 ], [ %426, %424 ]
  %429 = fsub float 1.000000e+00, %428
  %430 = load ptr, ptr %164, align 8, !tbaa !91
  %431 = getelementptr inbounds %struct.ClothSpring, ptr %370, i64 0, i32 1
  %432 = load i32, ptr %431, align 4, !tbaa !169
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.ClothVertex, ptr %430, i64 %433, i32 11
  %435 = load ptr, ptr %434, align 8, !tbaa !155
  %436 = load i32, ptr %370, align 4, !tbaa !167
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.ClothVertex, ptr %430, i64 %437, i32 11
  %439 = load ptr, ptr %438, align 8, !tbaa !155
  %440 = load float, ptr %439, align 4, !tbaa !42
  %441 = load float, ptr %435, align 4, !tbaa !42
  %442 = fsub float %440, %441
  %443 = getelementptr inbounds float, ptr %439, i64 1
  %444 = load float, ptr %443, align 4, !tbaa !42
  %445 = getelementptr inbounds float, ptr %435, i64 1
  %446 = load float, ptr %445, align 4, !tbaa !42
  %447 = fsub float %444, %446
  %448 = getelementptr inbounds float, ptr %439, i64 2
  %449 = load float, ptr %448, align 4, !tbaa !42
  %450 = getelementptr inbounds float, ptr %435, i64 2
  %451 = load float, ptr %450, align 4, !tbaa !42
  %452 = fsub float %449, %451
  %453 = fmul float %447, %447
  %454 = tail call float @llvm.fmuladd.f32(float %442, float %442, float %453)
  %455 = tail call float @llvm.fmuladd.f32(float %452, float %452, float %454)
  %456 = tail call float @sqrtf(float noundef %455) #9
  %457 = fmul float %429, %456
  %458 = getelementptr inbounds %struct.ClothSpring, ptr %370, i64 0, i32 2
  store float %457, ptr %458, align 4, !tbaa !171
  %459 = getelementptr inbounds %struct.ClothSpring, ptr %370, i64 0, i32 4
  store i32 4, ptr %459, align 4, !tbaa !175
  %460 = load ptr, ptr %164, align 8, !tbaa !91
  %461 = load i32, ptr %431, align 4, !tbaa !169
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.ClothVertex, ptr %460, i64 %462, i32 16
  %464 = load float, ptr %463, align 8, !tbaa !186
  %465 = load i32, ptr %370, align 4, !tbaa !167
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.ClothVertex, ptr %460, i64 %466, i32 16
  %468 = load float, ptr %467, align 8, !tbaa !186
  %469 = fadd float %464, %468
  %470 = fmul float %469, 5.000000e-01
  %471 = getelementptr inbounds %struct.ClothSpring, ptr %370, i64 0, i32 9
  store float %470, ptr %471, align 4, !tbaa !174
  %472 = getelementptr inbounds ptr, ptr %184, i64 %466
  tail call void @BLI_linklist_append(ptr noundef nonnull %472, ptr noundef nonnull %370) #9
  %473 = load i32, ptr %431, align 4, !tbaa !169
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds ptr, ptr %184, i64 %474
  tail call void @BLI_linklist_append(ptr noundef nonnull %475, ptr noundef nonnull %370) #9
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %179, ptr noundef nonnull %370) #9
  %476 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %477 = tail call ptr %476(i64 noundef 116, ptr noundef nonnull @.str.2) #9
  %478 = icmp eq ptr %477, null
  br i1 %478, label %479, label %507

479:                                              ; preds = %427
  %480 = load ptr, ptr %179, align 8, !tbaa !150
  %481 = icmp eq ptr %480, null
  br i1 %481, label %491, label %482

482:                                              ; preds = %479, %482
  %483 = phi ptr [ %487, %482 ], [ %480, %479 ]
  %484 = getelementptr inbounds %struct.LinkNode, ptr %483, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !180
  %486 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %486(ptr noundef %485) #9
  %487 = load ptr, ptr %483, align 8, !tbaa !182
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %482, !llvm.loop !183

489:                                              ; preds = %482
  %490 = load ptr, ptr %179, align 8, !tbaa !150
  tail call void @BLI_linklist_free(ptr noundef %490, ptr noundef null) #9
  store ptr null, ptr %179, align 8, !tbaa !150
  br label %491

491:                                              ; preds = %489, %479
  %492 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 2
  %493 = load i32, ptr %492, align 8, !tbaa !103
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %503, label %495

495:                                              ; preds = %491
  %496 = zext i32 %493 to i64
  br label %497

497:                                              ; preds = %497, %495
  %498 = phi i64 [ 0, %495 ], [ %501, %497 ]
  %499 = getelementptr inbounds ptr, ptr %184, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !144
  tail call void @BLI_linklist_free(ptr noundef %500, ptr noundef null) #9
  %501 = add nuw nsw i64 %498, 1
  %502 = icmp eq i64 %501, %496
  br i1 %502, label %503, label %497, !llvm.loop !184

503:                                              ; preds = %497, %491
  %504 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %504(ptr noundef nonnull %184) #9
  %505 = load ptr, ptr %180, align 8, !tbaa !146
  %506 = icmp eq ptr %505, null
  br i1 %506, label %873, label %871

507:                                              ; preds = %427
  %508 = getelementptr inbounds %struct.MFace, ptr %176, i64 %362, i32 1
  %509 = load i32, ptr %508, align 4, !tbaa !96
  %510 = load i32, ptr %365, align 4, !tbaa !98
  %511 = getelementptr inbounds %struct.ClothSpring, ptr %477, i64 0, i32 1
  %512 = tail call i32 @llvm.smin.i32(i32 %509, i32 %510)
  %513 = tail call i32 @llvm.smax.i32(i32 %509, i32 %510)
  store i32 %512, ptr %477, align 4, !tbaa !167
  store i32 %513, ptr %511, align 4, !tbaa !169
  %514 = load ptr, ptr %75, align 8, !tbaa !34
  %515 = getelementptr inbounds %struct.ClothSimSettings, ptr %514, i64 0, i32 36
  %516 = load i16, ptr %515, align 4, !tbaa !58
  %517 = icmp sgt i16 %516, 0
  br i1 %517, label %518, label %531

518:                                              ; preds = %507
  %519 = load ptr, ptr %164, align 8, !tbaa !91
  %520 = load i32, ptr %477, align 4, !tbaa !167
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.ClothVertex, ptr %519, i64 %521, i32 18
  %523 = load float, ptr %522, align 8, !tbaa !172
  %524 = getelementptr inbounds %struct.ClothSpring, ptr %477, i64 0, i32 1
  %525 = load i32, ptr %524, align 4, !tbaa !169
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.ClothVertex, ptr %519, i64 %526, i32 18
  %528 = load float, ptr %527, align 8, !tbaa !172
  %529 = fadd float %523, %528
  %530 = fmul float %529, 5.000000e-01
  br label %534

531:                                              ; preds = %507
  %532 = getelementptr inbounds %struct.ClothSimSettings, ptr %514, i64 0, i32 26
  %533 = load float, ptr %532, align 4, !tbaa !59
  br label %534

534:                                              ; preds = %531, %518
  %535 = phi float [ %530, %518 ], [ %533, %531 ]
  %536 = fsub float 1.000000e+00, %535
  %537 = load ptr, ptr %164, align 8, !tbaa !91
  %538 = getelementptr inbounds %struct.ClothSpring, ptr %477, i64 0, i32 1
  %539 = load i32, ptr %538, align 4, !tbaa !169
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.ClothVertex, ptr %537, i64 %540, i32 11
  %542 = load ptr, ptr %541, align 8, !tbaa !155
  %543 = load i32, ptr %477, align 4, !tbaa !167
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.ClothVertex, ptr %537, i64 %544, i32 11
  %546 = load ptr, ptr %545, align 8, !tbaa !155
  %547 = load float, ptr %546, align 4, !tbaa !42
  %548 = load float, ptr %542, align 4, !tbaa !42
  %549 = fsub float %547, %548
  %550 = getelementptr inbounds float, ptr %546, i64 1
  %551 = load float, ptr %550, align 4, !tbaa !42
  %552 = getelementptr inbounds float, ptr %542, i64 1
  %553 = load float, ptr %552, align 4, !tbaa !42
  %554 = fsub float %551, %553
  %555 = getelementptr inbounds float, ptr %546, i64 2
  %556 = load float, ptr %555, align 4, !tbaa !42
  %557 = getelementptr inbounds float, ptr %542, i64 2
  %558 = load float, ptr %557, align 4, !tbaa !42
  %559 = fsub float %556, %558
  %560 = fmul float %554, %554
  %561 = tail call float @llvm.fmuladd.f32(float %549, float %549, float %560)
  %562 = tail call float @llvm.fmuladd.f32(float %559, float %559, float %561)
  %563 = tail call float @sqrtf(float noundef %562) #9
  %564 = fmul float %536, %563
  %565 = getelementptr inbounds %struct.ClothSpring, ptr %477, i64 0, i32 2
  store float %564, ptr %565, align 4, !tbaa !171
  %566 = getelementptr inbounds %struct.ClothSpring, ptr %477, i64 0, i32 4
  store i32 4, ptr %566, align 4, !tbaa !175
  %567 = load ptr, ptr %164, align 8, !tbaa !91
  %568 = load i32, ptr %538, align 4, !tbaa !169
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.ClothVertex, ptr %567, i64 %569, i32 16
  %571 = load float, ptr %570, align 8, !tbaa !186
  %572 = load i32, ptr %477, align 4, !tbaa !167
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.ClothVertex, ptr %567, i64 %573, i32 16
  %575 = load float, ptr %574, align 8, !tbaa !186
  %576 = fadd float %571, %575
  %577 = fmul float %576, 5.000000e-01
  %578 = getelementptr inbounds %struct.ClothSpring, ptr %477, i64 0, i32 9
  store float %577, ptr %578, align 4, !tbaa !174
  %579 = getelementptr inbounds ptr, ptr %184, i64 %573
  tail call void @BLI_linklist_append(ptr noundef nonnull %579, ptr noundef nonnull %477) #9
  %580 = load i32, ptr %538, align 4, !tbaa !169
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds ptr, ptr %184, i64 %581
  tail call void @BLI_linklist_append(ptr noundef nonnull %582, ptr noundef nonnull %477) #9
  %583 = add i32 %363, 2
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %179, ptr noundef nonnull %477) #9
  br label %584

584:                                              ; preds = %534, %361
  %585 = phi i32 [ %583, %534 ], [ %363, %361 ]
  %586 = add nuw nsw i64 %362, 1
  %587 = icmp eq i64 %586, %349
  br i1 %587, label %588, label %361, !llvm.loop !187

588:                                              ; preds = %584, %346
  %589 = phi i32 [ 0, %346 ], [ %585, %584 ]
  %590 = tail call ptr @BLI_edgeset_new_ex(ptr noundef nonnull @__func__.cloth_build_springs, i32 noundef %169) #9
  store ptr %590, ptr %180, align 8, !tbaa !146
  %591 = icmp eq i32 %171, 0
  br i1 %591, label %717, label %592

592:                                              ; preds = %588
  %593 = add i32 %589, %169
  %594 = load ptr, ptr %179, align 8, !tbaa !144
  %595 = icmp ult i32 %169, %593
  %596 = icmp ne ptr %594, null
  %597 = select i1 %595, i1 %596, i1 false
  br i1 %597, label %598, label %818

598:                                              ; preds = %592, %710
  %599 = phi ptr [ %713, %710 ], [ %594, %592 ]
  %600 = phi i32 [ %712, %710 ], [ %169, %592 ]
  %601 = phi i32 [ %711, %710 ], [ 0, %592 ]
  %602 = getelementptr inbounds %struct.LinkNode, ptr %599, i64 0, i32 1
  %603 = load ptr, ptr %602, align 8, !tbaa !180
  %604 = getelementptr inbounds %struct.ClothSpring, ptr %603, i64 0, i32 1
  %605 = load i32, ptr %604, align 4, !tbaa !169
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds ptr, ptr %184, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !144
  %609 = icmp eq ptr %608, null
  br i1 %609, label %710, label %610

610:                                              ; preds = %598, %706
  %611 = phi ptr [ %708, %706 ], [ %608, %598 ]
  %612 = phi i32 [ %707, %706 ], [ %601, %598 ]
  %613 = getelementptr inbounds %struct.LinkNode, ptr %611, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !180
  %615 = load i32, ptr %614, align 4, !tbaa !167
  %616 = load i32, ptr %604, align 4, !tbaa !169
  %617 = icmp eq i32 %615, %616
  br i1 %617, label %618, label %621

618:                                              ; preds = %610
  %619 = getelementptr inbounds %struct.ClothSpring, ptr %614, i64 0, i32 1
  %620 = load i32, ptr %619, align 4, !tbaa !169
  br label %621

621:                                              ; preds = %618, %610
  %622 = phi i32 [ %620, %618 ], [ %615, %610 ]
  %623 = load i32, ptr %603, align 4, !tbaa !167
  %624 = icmp eq i32 %622, %623
  br i1 %624, label %706, label %625

625:                                              ; preds = %621
  %626 = tail call zeroext i8 @BLI_edgeset_haskey(ptr noundef %590, i32 noundef %623, i32 noundef %622) #9
  %627 = icmp eq i8 %626, 0
  br i1 %627, label %628, label %706

628:                                              ; preds = %625
  %629 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %630 = tail call ptr %629(i64 noundef 116, ptr noundef nonnull @.str.2) #9
  %631 = icmp eq ptr %630, null
  br i1 %631, label %632, label %660

632:                                              ; preds = %628
  %633 = load ptr, ptr %179, align 8, !tbaa !150
  %634 = icmp eq ptr %633, null
  br i1 %634, label %644, label %635

635:                                              ; preds = %632, %635
  %636 = phi ptr [ %640, %635 ], [ %633, %632 ]
  %637 = getelementptr inbounds %struct.LinkNode, ptr %636, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !180
  %639 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %639(ptr noundef %638) #9
  %640 = load ptr, ptr %636, align 8, !tbaa !182
  %641 = icmp eq ptr %640, null
  br i1 %641, label %642, label %635, !llvm.loop !183

642:                                              ; preds = %635
  %643 = load ptr, ptr %179, align 8, !tbaa !150
  tail call void @BLI_linklist_free(ptr noundef %643, ptr noundef null) #9
  store ptr null, ptr %179, align 8, !tbaa !150
  br label %644

644:                                              ; preds = %642, %632
  %645 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 2
  %646 = load i32, ptr %645, align 8, !tbaa !103
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %656, label %648

648:                                              ; preds = %644
  %649 = zext i32 %646 to i64
  br label %650

650:                                              ; preds = %650, %648
  %651 = phi i64 [ 0, %648 ], [ %654, %650 ]
  %652 = getelementptr inbounds ptr, ptr %184, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !144
  tail call void @BLI_linklist_free(ptr noundef %653, ptr noundef null) #9
  %654 = add nuw nsw i64 %651, 1
  %655 = icmp eq i64 %654, %649
  br i1 %655, label %656, label %650, !llvm.loop !184

656:                                              ; preds = %650, %644
  %657 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %657(ptr noundef nonnull %184) #9
  %658 = load ptr, ptr %180, align 8, !tbaa !146
  %659 = icmp eq ptr %658, null
  br i1 %659, label %873, label %871

660:                                              ; preds = %628
  %661 = load i32, ptr %603, align 4, !tbaa !167
  %662 = getelementptr inbounds %struct.ClothSpring, ptr %630, i64 0, i32 1
  %663 = tail call i32 @llvm.smin.i32(i32 %661, i32 %622)
  %664 = tail call i32 @llvm.smax.i32(i32 %661, i32 %622)
  store i32 %663, ptr %630, align 4, !tbaa !167
  store i32 %664, ptr %662, align 4, !tbaa !169
  %665 = load ptr, ptr %164, align 8, !tbaa !91
  %666 = getelementptr inbounds %struct.ClothSpring, ptr %630, i64 0, i32 1
  %667 = sext i32 %664 to i64
  %668 = getelementptr inbounds %struct.ClothVertex, ptr %665, i64 %667, i32 11
  %669 = load ptr, ptr %668, align 8, !tbaa !155
  %670 = load i32, ptr %630, align 4, !tbaa !167
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.ClothVertex, ptr %665, i64 %671, i32 11
  %673 = load ptr, ptr %672, align 8, !tbaa !155
  %674 = load float, ptr %673, align 4, !tbaa !42
  %675 = load float, ptr %669, align 4, !tbaa !42
  %676 = fsub float %674, %675
  %677 = getelementptr inbounds float, ptr %673, i64 1
  %678 = load float, ptr %677, align 4, !tbaa !42
  %679 = getelementptr inbounds float, ptr %669, i64 1
  %680 = load float, ptr %679, align 4, !tbaa !42
  %681 = fsub float %678, %680
  %682 = getelementptr inbounds float, ptr %673, i64 2
  %683 = load float, ptr %682, align 4, !tbaa !42
  %684 = getelementptr inbounds float, ptr %669, i64 2
  %685 = load float, ptr %684, align 4, !tbaa !42
  %686 = fsub float %683, %685
  %687 = fmul float %681, %681
  %688 = tail call float @llvm.fmuladd.f32(float %676, float %676, float %687)
  %689 = tail call float @llvm.fmuladd.f32(float %686, float %686, float %688)
  %690 = tail call float @sqrtf(float noundef %689) #9
  %691 = getelementptr inbounds %struct.ClothSpring, ptr %630, i64 0, i32 2
  store float %690, ptr %691, align 4, !tbaa !171
  %692 = getelementptr inbounds %struct.ClothSpring, ptr %630, i64 0, i32 4
  store i32 8, ptr %692, align 4, !tbaa !175
  %693 = load ptr, ptr %164, align 8, !tbaa !91
  %694 = load i32, ptr %666, align 4, !tbaa !169
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds %struct.ClothVertex, ptr %693, i64 %695, i32 15
  %697 = load float, ptr %696, align 4, !tbaa !188
  %698 = load i32, ptr %630, align 4, !tbaa !167
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.ClothVertex, ptr %693, i64 %699, i32 15
  %701 = load float, ptr %700, align 4, !tbaa !188
  %702 = fadd float %697, %701
  %703 = fmul float %702, 5.000000e-01
  %704 = getelementptr inbounds %struct.ClothSpring, ptr %630, i64 0, i32 9
  store float %703, ptr %704, align 4, !tbaa !174
  tail call void @BLI_edgeset_insert(ptr noundef %590, i32 noundef %698, i32 noundef %694) #9
  %705 = add i32 %612, 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %179, ptr noundef nonnull %630) #9
  br label %706

706:                                              ; preds = %660, %625, %621
  %707 = phi i32 [ %612, %625 ], [ %705, %660 ], [ %612, %621 ]
  %708 = load ptr, ptr %611, align 8, !tbaa !144
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %610, !llvm.loop !189

710:                                              ; preds = %706, %598
  %711 = phi i32 [ %601, %598 ], [ %707, %706 ]
  %712 = add nuw i32 %600, 1
  %713 = load ptr, ptr %599, align 8, !tbaa !144
  %714 = icmp ult i32 %712, %593
  %715 = icmp ne ptr %713, null
  %716 = select i1 %714, i1 %715, i1 false
  br i1 %716, label %598, label %818, !llvm.loop !190

717:                                              ; preds = %588
  %718 = icmp ugt i32 %169, 2
  br i1 %718, label %719, label %818

719:                                              ; preds = %717
  %720 = load ptr, ptr %179, align 8, !tbaa !150
  %721 = load ptr, ptr %720, align 8, !tbaa !182
  %722 = icmp eq ptr %721, null
  br i1 %722, label %818, label %723

723:                                              ; preds = %719, %811
  %724 = phi ptr [ %814, %811 ], [ %721, %719 ]
  %725 = phi ptr [ %813, %811 ], [ %720, %719 ]
  %726 = phi i32 [ %812, %811 ], [ 0, %719 ]
  %727 = getelementptr inbounds %struct.LinkNode, ptr %725, i64 0, i32 1
  %728 = load ptr, ptr %727, align 8, !tbaa !180
  %729 = getelementptr inbounds %struct.LinkNode, ptr %724, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !180
  %731 = load i32, ptr %728, align 4, !tbaa !167
  %732 = getelementptr inbounds %struct.ClothSpring, ptr %730, i64 0, i32 1
  %733 = load i32, ptr %732, align 4, !tbaa !169
  %734 = icmp eq i32 %731, %733
  br i1 %734, label %735, label %811

735:                                              ; preds = %723
  %736 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %737 = tail call ptr %736(i64 noundef 116, ptr noundef nonnull @.str.2) #9
  %738 = icmp eq ptr %737, null
  br i1 %738, label %739, label %767

739:                                              ; preds = %735
  %740 = load ptr, ptr %179, align 8, !tbaa !150
  %741 = icmp eq ptr %740, null
  br i1 %741, label %751, label %742

742:                                              ; preds = %739, %742
  %743 = phi ptr [ %747, %742 ], [ %740, %739 ]
  %744 = getelementptr inbounds %struct.LinkNode, ptr %743, i64 0, i32 1
  %745 = load ptr, ptr %744, align 8, !tbaa !180
  %746 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %746(ptr noundef %745) #9
  %747 = load ptr, ptr %743, align 8, !tbaa !182
  %748 = icmp eq ptr %747, null
  br i1 %748, label %749, label %742, !llvm.loop !183

749:                                              ; preds = %742
  %750 = load ptr, ptr %179, align 8, !tbaa !150
  tail call void @BLI_linklist_free(ptr noundef %750, ptr noundef null) #9
  store ptr null, ptr %179, align 8, !tbaa !150
  br label %751

751:                                              ; preds = %749, %739
  %752 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 2
  %753 = load i32, ptr %752, align 8, !tbaa !103
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %763, label %755

755:                                              ; preds = %751
  %756 = zext i32 %753 to i64
  br label %757

757:                                              ; preds = %757, %755
  %758 = phi i64 [ 0, %755 ], [ %761, %757 ]
  %759 = getelementptr inbounds ptr, ptr %184, i64 %758
  %760 = load ptr, ptr %759, align 8, !tbaa !144
  tail call void @BLI_linklist_free(ptr noundef %760, ptr noundef null) #9
  %761 = add nuw nsw i64 %758, 1
  %762 = icmp eq i64 %761, %756
  br i1 %762, label %763, label %757, !llvm.loop !184

763:                                              ; preds = %757, %751
  %764 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %764(ptr noundef nonnull %184) #9
  %765 = load ptr, ptr %180, align 8, !tbaa !146
  %766 = icmp eq ptr %765, null
  br i1 %766, label %873, label %871

767:                                              ; preds = %735
  %768 = load i32, ptr %730, align 4, !tbaa !167
  store i32 %768, ptr %737, align 4, !tbaa !167
  %769 = getelementptr inbounds %struct.ClothSpring, ptr %728, i64 0, i32 1
  %770 = load i32, ptr %769, align 4, !tbaa !169
  %771 = getelementptr inbounds %struct.ClothSpring, ptr %737, i64 0, i32 1
  store i32 %770, ptr %771, align 4, !tbaa !169
  %772 = load ptr, ptr %164, align 8, !tbaa !91
  %773 = sext i32 %770 to i64
  %774 = getelementptr inbounds %struct.ClothVertex, ptr %772, i64 %773, i32 11
  %775 = load ptr, ptr %774, align 8, !tbaa !155
  %776 = sext i32 %768 to i64
  %777 = getelementptr inbounds %struct.ClothVertex, ptr %772, i64 %776, i32 11
  %778 = load ptr, ptr %777, align 8, !tbaa !155
  %779 = load float, ptr %778, align 4, !tbaa !42
  %780 = load float, ptr %775, align 4, !tbaa !42
  %781 = fsub float %779, %780
  %782 = getelementptr inbounds float, ptr %778, i64 1
  %783 = load float, ptr %782, align 4, !tbaa !42
  %784 = getelementptr inbounds float, ptr %775, i64 1
  %785 = load float, ptr %784, align 4, !tbaa !42
  %786 = fsub float %783, %785
  %787 = getelementptr inbounds float, ptr %778, i64 2
  %788 = load float, ptr %787, align 4, !tbaa !42
  %789 = getelementptr inbounds float, ptr %775, i64 2
  %790 = load float, ptr %789, align 4, !tbaa !42
  %791 = fsub float %788, %790
  %792 = fmul float %786, %786
  %793 = tail call float @llvm.fmuladd.f32(float %781, float %781, float %792)
  %794 = tail call float @llvm.fmuladd.f32(float %791, float %791, float %793)
  %795 = tail call float @sqrtf(float noundef %794) #9
  %796 = getelementptr inbounds %struct.ClothSpring, ptr %737, i64 0, i32 2
  store float %795, ptr %796, align 4, !tbaa !171
  %797 = getelementptr inbounds %struct.ClothSpring, ptr %737, i64 0, i32 4
  store i32 8, ptr %797, align 4, !tbaa !175
  %798 = load ptr, ptr %164, align 8, !tbaa !91
  %799 = load i32, ptr %771, align 4, !tbaa !169
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds %struct.ClothVertex, ptr %798, i64 %800, i32 15
  %802 = load float, ptr %801, align 4, !tbaa !188
  %803 = load i32, ptr %737, align 4, !tbaa !167
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.ClothVertex, ptr %798, i64 %804, i32 15
  %806 = load float, ptr %805, align 4, !tbaa !188
  %807 = fadd float %802, %806
  %808 = fmul float %807, 5.000000e-01
  %809 = getelementptr inbounds %struct.ClothSpring, ptr %737, i64 0, i32 9
  store float %808, ptr %809, align 4, !tbaa !174
  %810 = add i32 %726, 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %179, ptr noundef nonnull %737) #9
  br label %811

811:                                              ; preds = %767, %723
  %812 = phi i32 [ %810, %767 ], [ %726, %723 ]
  %813 = load ptr, ptr %725, align 8, !tbaa !182
  %814 = load ptr, ptr %724, align 8, !tbaa !182
  %815 = icmp ne ptr %813, null
  %816 = icmp ne ptr %814, null
  %817 = select i1 %815, i1 %816, i1 false
  br i1 %817, label %723, label %818, !llvm.loop !191

818:                                              ; preds = %710, %811, %592, %719, %717
  %819 = phi i32 [ 0, %717 ], [ 0, %719 ], [ 0, %592 ], [ %812, %811 ], [ %711, %710 ]
  %820 = tail call i32 @llvm.umax.i32(i32 %169, i32 1)
  %821 = zext i32 %820 to i64
  br label %826

822:                                              ; preds = %826
  %823 = icmp eq i32 %171, 0
  br i1 %823, label %853, label %824

824:                                              ; preds = %822
  %825 = zext i32 %171 to i64
  br label %835

826:                                              ; preds = %818, %826
  %827 = phi i64 [ 0, %818 ], [ %833, %826 ]
  %828 = getelementptr inbounds %struct.MEdge, ptr %174, i64 %827
  %829 = load i32, ptr %828, align 4, !tbaa !164
  %830 = getelementptr inbounds %struct.MEdge, ptr %174, i64 %827, i32 1
  %831 = load i32, ptr %830, align 4, !tbaa !166
  %832 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %590, i32 noundef %829, i32 noundef %831) #9
  %833 = add nuw nsw i64 %827, 1
  %834 = icmp eq i64 %833, %821
  br i1 %834, label %822, label %826, !llvm.loop !192

835:                                              ; preds = %824, %850
  %836 = phi i64 [ 0, %824 ], [ %851, %850 ]
  %837 = getelementptr inbounds %struct.MFace, ptr %176, i64 %836, i32 3
  %838 = load i32, ptr %837, align 4, !tbaa !98
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %850, label %840

840:                                              ; preds = %835
  %841 = getelementptr inbounds %struct.MFace, ptr %176, i64 %836
  %842 = load i32, ptr %841, align 4, !tbaa !94
  %843 = getelementptr inbounds %struct.MFace, ptr %176, i64 %836, i32 2
  %844 = load i32, ptr %843, align 4, !tbaa !97
  %845 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %590, i32 noundef %842, i32 noundef %844) #9
  %846 = getelementptr inbounds %struct.MFace, ptr %176, i64 %836, i32 1
  %847 = load i32, ptr %846, align 4, !tbaa !96
  %848 = load i32, ptr %837, align 4, !tbaa !98
  %849 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %590, i32 noundef %847, i32 noundef %848) #9
  br label %850

850:                                              ; preds = %840, %835
  %851 = add nuw nsw i64 %836, 1
  %852 = icmp eq i64 %851, %825
  br i1 %852, label %853, label %835, !llvm.loop !193

853:                                              ; preds = %850, %822
  %854 = add i32 %589, %169
  %855 = add i32 %854, %819
  %856 = getelementptr inbounds %struct.Cloth, ptr %164, i64 0, i32 3
  store i32 %855, ptr %856, align 4, !tbaa !151
  %857 = icmp eq i32 %166, 0
  br i1 %857, label %866, label %858

858:                                              ; preds = %853
  %859 = zext i32 %166 to i64
  br label %860

860:                                              ; preds = %858, %860
  %861 = phi i64 [ 0, %858 ], [ %864, %860 ]
  %862 = getelementptr inbounds ptr, ptr %184, i64 %861
  %863 = load ptr, ptr %862, align 8, !tbaa !144
  tail call void @BLI_linklist_free(ptr noundef %863, ptr noundef null) #9
  %864 = add nuw nsw i64 %861, 1
  %865 = icmp eq i64 %864, %859
  br i1 %865, label %866, label %860, !llvm.loop !184

866:                                              ; preds = %860, %853
  %867 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %867(ptr noundef nonnull %184) #9
  %868 = load ptr, ptr %21, align 8, !tbaa !134
  %869 = tail call i32 %868(ptr noundef nonnull %2) #9
  %870 = icmp sgt i32 %869, 0
  br i1 %870, label %875, label %911

871:                                              ; preds = %763, %656, %503, %396, %332
  %872 = phi ptr [ %334, %332 ], [ %398, %396 ], [ %505, %503 ], [ %658, %656 ], [ %765, %763 ]
  tail call void @BLI_edgeset_free(ptr noundef nonnull %872) #9
  store ptr null, ptr %180, align 8, !tbaa !146
  br label %873

873:                                              ; preds = %871, %763, %656, %503, %396, %332, %178, %163
  tail call void @cloth_free_modifier(ptr noundef %1)
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %1, ptr noundef nonnull @.str.8) #9
  %874 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  br label %1056

875:                                              ; preds = %866, %905
  %876 = phi i64 [ %906, %905 ], [ 0, %866 ]
  %877 = load ptr, ptr %13, align 8, !tbaa !91
  %878 = getelementptr inbounds %struct.ClothVertex, ptr %877, i64 %876
  %879 = load i32, ptr %878, align 8, !tbaa !160
  %880 = and i32 %879, 1
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %905

882:                                              ; preds = %875
  %883 = getelementptr inbounds %struct.ClothVertex, ptr %877, i64 %876, i32 9
  %884 = load float, ptr %883, align 4, !tbaa !159
  %885 = fcmp ogt float %884, 0x3E80000000000000
  br i1 %885, label %886, label %905

886:                                              ; preds = %882
  %887 = load ptr, ptr %8, align 8, !tbaa !88
  %888 = icmp eq ptr %887, null
  br i1 %888, label %905, label %889

889:                                              ; preds = %886
  %890 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %891 = tail call ptr %890(i64 noundef 116, ptr noundef nonnull @.str.2) #9
  %892 = icmp eq ptr %891, null
  br i1 %892, label %905, label %893

893:                                              ; preds = %889
  %894 = trunc i64 %876 to i32
  store i32 %894, ptr %891, align 4, !tbaa !167
  %895 = getelementptr inbounds %struct.ClothSpring, ptr %891, i64 0, i32 1
  %896 = trunc i64 %876 to i32
  store i32 %896, ptr %895, align 4, !tbaa !169
  %897 = getelementptr inbounds %struct.ClothSpring, ptr %891, i64 0, i32 2
  store float 0.000000e+00, ptr %897, align 4, !tbaa !171
  %898 = getelementptr inbounds %struct.ClothSpring, ptr %891, i64 0, i32 4
  store i32 16, ptr %898, align 4, !tbaa !175
  %899 = getelementptr inbounds %struct.ClothSpring, ptr %891, i64 0, i32 5
  store i32 0, ptr %899, align 4, !tbaa !178
  %900 = getelementptr inbounds %struct.ClothSpring, ptr %891, i64 0, i32 9
  store float 0.000000e+00, ptr %900, align 4, !tbaa !174
  %901 = getelementptr inbounds %struct.Cloth, ptr %887, i64 0, i32 3
  %902 = load i32, ptr %901, align 4, !tbaa !151
  %903 = add i32 %902, 1
  store i32 %903, ptr %901, align 4, !tbaa !151
  %904 = getelementptr inbounds %struct.Cloth, ptr %887, i64 0, i32 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %904, ptr noundef nonnull %891) #9
  br label %905

905:                                              ; preds = %893, %889, %886, %882, %875
  %906 = add nuw nsw i64 %876, 1
  %907 = load ptr, ptr %21, align 8, !tbaa !134
  %908 = tail call i32 %907(ptr noundef nonnull %2) #9
  %909 = sext i32 %908 to i64
  %910 = icmp slt i64 %906, %909
  br i1 %910, label %875, label %911, !llvm.loop !194

911:                                              ; preds = %905, %866
  %912 = tail call i32 @implicit_init(ptr noundef %0, ptr noundef %1) #9
  %913 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 4
  %914 = load ptr, ptr %913, align 8, !tbaa !65
  %915 = getelementptr inbounds %struct.ClothCollSettings, ptr %914, i64 0, i32 1
  %916 = load float, ptr %915, align 8, !tbaa !70
  %917 = getelementptr inbounds %struct.ClothCollSettings, ptr %914, i64 0, i32 6
  %918 = load float, ptr %917, align 4, !tbaa !195
  %919 = fcmp ogt float %916, %918
  %920 = select i1 %919, float %916, float %918
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #9
  %921 = icmp eq ptr %1, null
  br i1 %921, label %995, label %922

922:                                              ; preds = %911
  %923 = load ptr, ptr %8, align 8, !tbaa !88
  %924 = icmp eq ptr %923, null
  br i1 %924, label %995, label %925

925:                                              ; preds = %922
  %926 = load ptr, ptr %923, align 8, !tbaa !91
  %927 = getelementptr inbounds %struct.Cloth, ptr %923, i64 0, i32 4
  %928 = load i32, ptr %927, align 8, !tbaa !93
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %995, label %930

930:                                              ; preds = %925
  %931 = getelementptr inbounds %struct.Cloth, ptr %923, i64 0, i32 10
  %932 = load ptr, ptr %931, align 8, !tbaa !92
  %933 = tail call ptr @BLI_bvhtree_new(i32 noundef %928, float noundef %920, i8 noundef zeroext 4, i8 noundef zeroext 26) #9
  %934 = load i32, ptr %927, align 8, !tbaa !93
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %994, label %936

936:                                              ; preds = %930
  %937 = getelementptr inbounds float, ptr %5, i64 1
  %938 = getelementptr inbounds float, ptr %5, i64 2
  %939 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 3
  %940 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 4
  %941 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 5
  %942 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 6
  %943 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 7
  %944 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 8
  %945 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 9
  %946 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 10
  %947 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 11
  br label %948

948:                                              ; preds = %936, %988
  %949 = phi ptr [ %932, %936 ], [ %991, %988 ]
  %950 = phi i32 [ 0, %936 ], [ %990, %988 ]
  %951 = load i32, ptr %949, align 4, !tbaa !94
  %952 = zext i32 %951 to i64
  %953 = getelementptr inbounds %struct.ClothVertex, ptr %926, i64 %952, i32 4
  %954 = load float, ptr %953, align 4, !tbaa !42
  store float %954, ptr %5, align 16, !tbaa !42
  %955 = getelementptr inbounds float, ptr %953, i64 1
  %956 = load float, ptr %955, align 4, !tbaa !42
  store float %956, ptr %937, align 4, !tbaa !42
  %957 = getelementptr inbounds float, ptr %953, i64 2
  %958 = load float, ptr %957, align 4, !tbaa !42
  store float %958, ptr %938, align 8, !tbaa !42
  %959 = getelementptr inbounds %struct.MFace, ptr %949, i64 0, i32 1
  %960 = load i32, ptr %959, align 4, !tbaa !96
  %961 = zext i32 %960 to i64
  %962 = getelementptr inbounds %struct.ClothVertex, ptr %926, i64 %961, i32 4
  %963 = load float, ptr %962, align 4, !tbaa !42
  store float %963, ptr %939, align 4, !tbaa !42
  %964 = getelementptr inbounds float, ptr %962, i64 1
  %965 = load float, ptr %964, align 4, !tbaa !42
  store float %965, ptr %940, align 16, !tbaa !42
  %966 = getelementptr inbounds float, ptr %962, i64 2
  %967 = load float, ptr %966, align 4, !tbaa !42
  store float %967, ptr %941, align 4, !tbaa !42
  %968 = getelementptr inbounds %struct.MFace, ptr %949, i64 0, i32 2
  %969 = load i32, ptr %968, align 4, !tbaa !97
  %970 = zext i32 %969 to i64
  %971 = getelementptr inbounds %struct.ClothVertex, ptr %926, i64 %970, i32 4
  %972 = load float, ptr %971, align 4, !tbaa !42
  store float %972, ptr %942, align 8, !tbaa !42
  %973 = getelementptr inbounds float, ptr %971, i64 1
  %974 = load float, ptr %973, align 4, !tbaa !42
  store float %974, ptr %943, align 4, !tbaa !42
  %975 = getelementptr inbounds float, ptr %971, i64 2
  %976 = load float, ptr %975, align 4, !tbaa !42
  store float %976, ptr %944, align 16, !tbaa !42
  %977 = getelementptr inbounds %struct.MFace, ptr %949, i64 0, i32 3
  %978 = load i32, ptr %977, align 4, !tbaa !98
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %988, label %980

980:                                              ; preds = %948
  %981 = zext i32 %978 to i64
  %982 = getelementptr inbounds %struct.ClothVertex, ptr %926, i64 %981, i32 4
  %983 = load float, ptr %982, align 4, !tbaa !42
  store float %983, ptr %945, align 4, !tbaa !42
  %984 = getelementptr inbounds float, ptr %982, i64 1
  %985 = load float, ptr %984, align 4, !tbaa !42
  store float %985, ptr %946, align 8, !tbaa !42
  %986 = getelementptr inbounds float, ptr %982, i64 2
  %987 = load float, ptr %986, align 4, !tbaa !42
  store float %987, ptr %947, align 4, !tbaa !42
  br label %988

988:                                              ; preds = %980, %948
  %989 = phi i32 [ 4, %980 ], [ 3, %948 ]
  call void @BLI_bvhtree_insert(ptr noundef %933, i32 noundef %950, ptr noundef nonnull %5, i32 noundef %989) #9
  %990 = add nuw i32 %950, 1
  %991 = getelementptr inbounds %struct.MFace, ptr %949, i64 1
  %992 = load i32, ptr %927, align 8, !tbaa !93
  %993 = icmp ult i32 %990, %992
  br i1 %993, label %948, label %994, !llvm.loop !196

994:                                              ; preds = %988, %930
  call void @BLI_bvhtree_balance(ptr noundef %933) #9
  br label %995

995:                                              ; preds = %994, %925, %922, %911
  %996 = phi ptr [ %933, %994 ], [ null, %911 ], [ null, %922 ], [ null, %925 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  %997 = load ptr, ptr %8, align 8, !tbaa !88
  %998 = getelementptr inbounds %struct.Cloth, ptr %997, i64 0, i32 8
  store ptr %996, ptr %998, align 8, !tbaa !89
  %999 = load ptr, ptr %21, align 8, !tbaa !134
  %1000 = call i32 %999(ptr noundef nonnull %2) #9
  %1001 = icmp sgt i32 %1000, 0
  br i1 %1001, label %1002, label %1020

1002:                                             ; preds = %995, %1002
  %1003 = phi i64 [ %1015, %1002 ], [ 0, %995 ]
  %1004 = phi float [ %1014, %1002 ], [ 0.000000e+00, %995 ]
  %1005 = load ptr, ptr %913, align 8, !tbaa !65
  %1006 = getelementptr inbounds %struct.ClothCollSettings, ptr %1005, i64 0, i32 4
  %1007 = load float, ptr %1006, align 4, !tbaa !74
  %1008 = load ptr, ptr %13, align 8, !tbaa !91
  %1009 = getelementptr inbounds %struct.ClothVertex, ptr %1008, i64 %1003, i32 13
  %1010 = load float, ptr %1009, align 4, !tbaa !176
  %1011 = fmul float %1010, 2.000000e+00
  %1012 = fmul float %1007, %1011
  %1013 = fcmp ogt float %1004, %1012
  %1014 = select i1 %1013, float %1004, float %1012
  %1015 = add nuw nsw i64 %1003, 1
  %1016 = load ptr, ptr %21, align 8, !tbaa !134
  %1017 = call i32 %1016(ptr noundef nonnull %2) #9
  %1018 = sext i32 %1017 to i64
  %1019 = icmp slt i64 %1015, %1018
  br i1 %1019, label %1002, label %1020, !llvm.loop !197

1020:                                             ; preds = %1002, %995
  %1021 = phi float [ 0.000000e+00, %995 ], [ %1014, %1002 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  br i1 %921, label %1051, label %1022

1022:                                             ; preds = %1020
  %1023 = load ptr, ptr %8, align 8, !tbaa !88
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1051, label %1025

1025:                                             ; preds = %1022
  %1026 = getelementptr inbounds %struct.Cloth, ptr %1023, i64 0, i32 2
  %1027 = load i32, ptr %1026, align 8, !tbaa !103
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1051, label %1029

1029:                                             ; preds = %1025
  %1030 = load ptr, ptr %1023, align 8, !tbaa !91
  %1031 = call ptr @BLI_bvhtree_new(i32 noundef %1027, float noundef %1021, i8 noundef zeroext 4, i8 noundef zeroext 6) #9
  %1032 = load i32, ptr %1026, align 8, !tbaa !103
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1050, label %1034

1034:                                             ; preds = %1029
  %1035 = getelementptr inbounds float, ptr %4, i64 1
  %1036 = getelementptr inbounds float, ptr %4, i64 2
  br label %1037

1037:                                             ; preds = %1034, %1037
  %1038 = phi ptr [ %1030, %1034 ], [ %1047, %1037 ]
  %1039 = phi i32 [ 0, %1034 ], [ %1046, %1037 ]
  %1040 = getelementptr inbounds %struct.ClothVertex, ptr %1038, i64 0, i32 4
  %1041 = load float, ptr %1040, align 4, !tbaa !42
  store float %1041, ptr %4, align 16, !tbaa !42
  %1042 = getelementptr inbounds %struct.ClothVertex, ptr %1038, i64 0, i32 4, i64 1
  %1043 = load float, ptr %1042, align 4, !tbaa !42
  store float %1043, ptr %1035, align 4, !tbaa !42
  %1044 = getelementptr inbounds %struct.ClothVertex, ptr %1038, i64 0, i32 4, i64 2
  %1045 = load float, ptr %1044, align 4, !tbaa !42
  store float %1045, ptr %1036, align 8, !tbaa !42
  call void @BLI_bvhtree_insert(ptr noundef %1031, i32 noundef %1039, ptr noundef nonnull %4, i32 noundef 1) #9
  %1046 = add nuw i32 %1039, 1
  %1047 = getelementptr inbounds %struct.ClothVertex, ptr %1038, i64 1
  %1048 = load i32, ptr %1026, align 8, !tbaa !103
  %1049 = icmp ult i32 %1046, %1048
  br i1 %1049, label %1037, label %1050, !llvm.loop !198

1050:                                             ; preds = %1037, %1029
  call void @BLI_bvhtree_balance(ptr noundef %1031) #9
  br label %1051

1051:                                             ; preds = %1050, %1025, %1022, %1020
  %1052 = phi ptr [ %1031, %1050 ], [ null, %1020 ], [ null, %1022 ], [ null, %1025 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  %1053 = load ptr, ptr %8, align 8, !tbaa !88
  %1054 = getelementptr inbounds %struct.Cloth, ptr %1053, i64 0, i32 9
  store ptr %1052, ptr %1054, align 8, !tbaa !102
  %1055 = icmp eq ptr %1053, null
  br i1 %1055, label %1057, label %1058

1056:                                             ; preds = %873, %19, %15
  tail call void @BKE_ptcache_invalidate(ptr noundef %7) #9
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %1, ptr noundef nonnull @.str.3) #9
  br label %1061

1057:                                             ; preds = %1051
  call void @BKE_ptcache_invalidate(ptr noundef %7) #9
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %1, ptr noundef nonnull @.str.4) #9
  br label %1061

1058:                                             ; preds = %1051
  call void @implicit_set_positions(ptr noundef %1) #9
  %1059 = load ptr, ptr %8, align 8, !tbaa !88
  %1060 = getelementptr inbounds %struct.Cloth, ptr %1059, i64 0, i32 14
  store i32 -1, ptr %1060, align 8, !tbaa !141
  br label %1061

1061:                                             ; preds = %3, %1058, %1057, %1056
  %1062 = phi i32 [ 0, %1057 ], [ 0, %1056 ], [ 1, %1058 ], [ 1, %3 ]
  ret i32 %1062
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_step_cloth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !144
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = tail call ptr %10(ptr noundef %2) #9
  %12 = load ptr, ptr %6, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.Cloth, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !103
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %45, %18 ]
  %20 = phi ptr [ %8, %16 ], [ %46, %18 ]
  %21 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 4
  %22 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !42
  store float %23, ptr %21, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !42
  %26 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 4, i64 1
  store float %25, ptr %26, align 4, !tbaa !42
  %27 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !42
  %29 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 4, i64 2
  store float %28, ptr %29, align 4, !tbaa !42
  %30 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 6
  %31 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !42
  store float %32, ptr %30, align 4, !tbaa !42
  %33 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !42
  %35 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 6, i64 1
  store float %34, ptr %35, align 4, !tbaa !42
  %36 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !42
  %38 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 6, i64 2
  store float %37, ptr %38, align 4, !tbaa !42
  %39 = getelementptr inbounds %struct.MVert, ptr %11, i64 %19
  %40 = load float, ptr %39, align 4, !tbaa !42
  store float %40, ptr %22, align 4, !tbaa !42
  %41 = getelementptr inbounds float, ptr %39, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !42
  store float %42, ptr %24, align 4, !tbaa !42
  %43 = getelementptr inbounds float, ptr %39, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !42
  store float %44, ptr %27, align 4, !tbaa !42
  tail call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %22) #9
  %45 = add nuw nsw i64 %19, 1
  %46 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 1
  %47 = load ptr, ptr %6, align 8, !tbaa !88
  %48 = getelementptr inbounds %struct.Cloth, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !103
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %18, label %52, !llvm.loop !199

52:                                               ; preds = %18, %4
  %53 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !113
  %55 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.ClothSimSettings, ptr %56, i64 0, i32 41
  %58 = load ptr, ptr %57, align 8, !tbaa !84
  %59 = tail call ptr @pdInitEffectors(ptr noundef %54, ptr noundef %0, ptr noundef null, ptr noundef %58, i8 noundef zeroext 1) #9
  store ptr %59, ptr %5, align 8, !tbaa !144
  tail call fastcc void @cloth_apply_vgroup(ptr noundef %1, ptr noundef %2)
  %60 = load ptr, ptr %6, align 8, !tbaa !88
  %61 = getelementptr inbounds %struct.Cloth, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !144
  %63 = icmp eq ptr %62, null
  br i1 %63, label %135, label %64

64:                                               ; preds = %52, %132
  %65 = phi ptr [ %133, %132 ], [ %62, %52 ]
  %66 = getelementptr inbounds %struct.LinkNode, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !180
  %68 = getelementptr inbounds %struct.ClothSpring, ptr %67, i64 0, i32 9
  store float 0.000000e+00, ptr %68, align 4, !tbaa !174
  %69 = getelementptr inbounds %struct.ClothSpring, ptr %67, i64 0, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !175
  %71 = add i32 %70, -2
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 31)
  switch i32 %72, label %132 [
    i32 0, label %73
    i32 1, label %86
    i32 3, label %99
    i32 7, label %112
  ]

73:                                               ; preds = %64
  %74 = load ptr, ptr %60, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.ClothSpring, ptr %67, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !169
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ClothVertex, ptr %74, i64 %77, i32 14
  %79 = load float, ptr %78, align 8, !tbaa !173
  %80 = load i32, ptr %67, align 4, !tbaa !167
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ClothVertex, ptr %74, i64 %81, i32 14
  %83 = load float, ptr %82, align 8, !tbaa !173
  %84 = fadd float %79, %83
  %85 = fmul float %84, 5.000000e-01
  store float %85, ptr %68, align 4, !tbaa !174
  br label %132

86:                                               ; preds = %64
  %87 = load ptr, ptr %60, align 8, !tbaa !91
  %88 = getelementptr inbounds %struct.ClothSpring, ptr %67, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !169
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ClothVertex, ptr %87, i64 %90, i32 16
  %92 = load float, ptr %91, align 8, !tbaa !186
  %93 = load i32, ptr %67, align 4, !tbaa !167
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ClothVertex, ptr %87, i64 %94, i32 16
  %96 = load float, ptr %95, align 8, !tbaa !186
  %97 = fadd float %92, %96
  %98 = fmul float %97, 5.000000e-01
  store float %98, ptr %68, align 4, !tbaa !174
  br label %132

99:                                               ; preds = %64
  %100 = load ptr, ptr %60, align 8, !tbaa !91
  %101 = getelementptr inbounds %struct.ClothSpring, ptr %67, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !169
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ClothVertex, ptr %100, i64 %103, i32 15
  %105 = load float, ptr %104, align 4, !tbaa !188
  %106 = load i32, ptr %67, align 4, !tbaa !167
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ClothVertex, ptr %100, i64 %107, i32 15
  %109 = load float, ptr %108, align 4, !tbaa !188
  %110 = fadd float %105, %109
  %111 = fmul float %110, 5.000000e-01
  store float %111, ptr %68, align 4, !tbaa !174
  br label %132

112:                                              ; preds = %64
  %113 = load ptr, ptr %60, align 8, !tbaa !91
  %114 = load i32, ptr %67, align 4, !tbaa !167
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ClothVertex, ptr %113, i64 %115
  %117 = load i32, ptr %116, align 8, !tbaa !160
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.ClothVertex, ptr %113, i64 %115, i32 9
  %122 = load float, ptr %121, align 4, !tbaa !159
  %123 = fcmp ogt float %122, 0x3E80000000000000
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.ClothSpring, ptr %67, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !178
  %127 = and i32 %126, -3
  store i32 %127, ptr %125, align 4, !tbaa !178
  br label %132

128:                                              ; preds = %120, %112
  %129 = getelementptr inbounds %struct.ClothSpring, ptr %67, i64 0, i32 5
  %130 = load i32, ptr %129, align 4, !tbaa !178
  %131 = or i32 %130, 2
  store i32 %131, ptr %129, align 4, !tbaa !178
  br label %132

132:                                              ; preds = %128, %124, %99, %86, %73, %64
  %133 = load ptr, ptr %65, align 8, !tbaa !144
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %64, !llvm.loop !200

135:                                              ; preds = %132, %52
  %136 = sitofp i32 %3 to float
  %137 = load ptr, ptr %5, align 8, !tbaa !144
  %138 = tail call i32 @implicit_solver(ptr noundef %0, float noundef %136, ptr noundef %1, ptr noundef %137) #9
  call void @pdEndEffectors(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %138
}

declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #1

declare void @implicit_set_positions(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cloth_free_modifier(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @implicit_free(ptr noundef nonnull %0) #9
  %9 = load ptr, ptr %5, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %12(ptr noundef nonnull %9) #9
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %5, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.LinkNode, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !180
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %22(ptr noundef %21) #9
  %23 = load ptr, ptr %19, align 8, !tbaa !182
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !201

25:                                               ; preds = %18
  %26 = load ptr, ptr %15, align 8, !tbaa !150
  tail call void @BLI_linklist_free(ptr noundef %26, ptr noundef null) #9
  store ptr null, ptr %15, align 8, !tbaa !150
  br label %27

27:                                               ; preds = %25, %13
  store ptr null, ptr %15, align 8, !tbaa !150
  %28 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 3
  store i32 0, ptr %28, align 4, !tbaa !151
  %29 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %30) #9
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %35) #9
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %43(ptr noundef nonnull %40) #9
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !146
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @BLI_edgeset_free(ptr noundef nonnull %46) #9
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %50(ptr noundef nonnull %5) #9
  store ptr null, ptr %4, align 8, !tbaa !88
  br label %51

51:                                               ; preds = %3, %49, %1
  ret void
}

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #1

declare void @BLI_edgeset_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cloth_free_modifier_extern(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !202
  %3 = icmp sgt i16 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %6

6:                                                ; preds = %4, %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %8
  %13 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !202
  %14 = icmp sgt i16 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  br label %17

17:                                               ; preds = %12, %15
  %18 = tail call i32 @implicit_free(ptr noundef nonnull %0) #9
  %19 = load ptr, ptr %10, align 8, !tbaa !91
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %22(ptr noundef nonnull %19) #9
  br label %23

23:                                               ; preds = %21, %17
  store ptr null, ptr %10, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !150
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.LinkNode, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !180
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %32(ptr noundef %31) #9
  %33 = load ptr, ptr %29, align 8, !tbaa !182
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !204

35:                                               ; preds = %28
  %36 = load ptr, ptr %25, align 8, !tbaa !150
  tail call void @BLI_linklist_free(ptr noundef %36, ptr noundef null) #9
  store ptr null, ptr %25, align 8, !tbaa !150
  br label %37

37:                                               ; preds = %35, %23
  store ptr null, ptr %25, align 8, !tbaa !150
  %38 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 3
  store i32 0, ptr %38, align 4, !tbaa !151
  %39 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !89
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %40) #9
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !102
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %45) #9
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !92
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %53(ptr noundef nonnull %50) #9
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !146
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @BLI_edgeset_free(ptr noundef nonnull %56) #9
  br label %59

59:                                               ; preds = %58, %54
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !144
  tail call void %60(ptr noundef nonnull %10) #9
  store ptr null, ptr %9, align 8, !tbaa !88
  br label %61

61:                                               ; preds = %8, %59, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cloth_uses_vgroup(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 29
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = and i32 %5, 264
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.ClothCollSettings, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 34
  %17 = load i16, ptr %16, align 8, !tbaa !57
  %18 = icmp sgt i16 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 35
  %21 = load i16, ptr %20, align 2, !tbaa !205
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 33
  %25 = load i16, ptr %24, align 2, !tbaa !206
  %26 = icmp sgt i16 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 36
  %29 = load i16, ptr %28, align 4, !tbaa !58
  %30 = icmp sgt i16 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.ClothCollSettings, ptr %33, i64 0, i32 11
  %35 = load i16, ptr %34, align 8, !tbaa !75
  %36 = icmp sgt i16 %35, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %15, %19, %23, %27, %31, %8
  %39 = phi i32 [ 0, %8 ], [ 1, %27 ], [ 1, %23 ], [ 1, %19 ], [ 1, %15 ], [ %37, %31 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cloth_add_spring(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !144
  %11 = tail call ptr %10(i64 noundef 116, ptr noundef nonnull @.str.2) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  store i32 %1, ptr %11, align 4, !tbaa !167
  %14 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 1
  store i32 %2, ptr %14, align 4, !tbaa !169
  %15 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 2
  store float %3, ptr %15, align 4, !tbaa !171
  %16 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 4
  store i32 %4, ptr %16, align 4, !tbaa !175
  %17 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 5
  store i32 0, ptr %17, align 4, !tbaa !178
  %18 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 9
  store float 0.000000e+00, ptr %18, align 4, !tbaa !174
  %19 = getelementptr inbounds %struct.Cloth, ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !151
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !151
  %22 = getelementptr inbounds %struct.Cloth, ptr %7, i64 0, i32 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %22, ptr noundef nonnull %11) #9
  br label %23

23:                                               ; preds = %5, %9, %13
  %24 = phi i32 [ 1, %13 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %24
}

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cloth_apply_vgroup(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %189

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = tail call i32 %10(ptr noundef nonnull %1) #9
  %12 = load ptr, ptr %8, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 29
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = and i32 %16, 264
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.ClothCollSettings, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !71
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %189, label %26

26:                                               ; preds = %19, %6
  %27 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 34
  %28 = load i16, ptr %27, align 8, !tbaa !57
  %29 = icmp sgt i16 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 35
  %32 = load i16, ptr %31, align 2, !tbaa !205
  %33 = icmp sgt i16 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 33
  %36 = load i16, ptr %35, align 2, !tbaa !206
  %37 = icmp sgt i16 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 36
  %40 = load i16, ptr %39, align 4, !tbaa !58
  %41 = icmp sgt i16 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.ClothCollSettings, ptr %44, i64 0, i32 11
  %46 = load i16, ptr %45, align 8, !tbaa !75
  %47 = icmp sgt i16 %46, 0
  %48 = icmp sgt i32 %11, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %52, label %189

50:                                               ; preds = %38, %34, %30, %26
  %51 = icmp sgt i32 %11, 0
  br i1 %51, label %52, label %189

52:                                               ; preds = %42, %50
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 46
  %54 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %55 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  br label %56

56:                                               ; preds = %52, %185
  %57 = phi ptr [ %12, %52 ], [ %187, %185 ]
  %58 = phi i32 [ 0, %52 ], [ %186, %185 ]
  %59 = load ptr, ptr %13, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.ClothSimSettings, ptr %59, i64 0, i32 29
  %61 = load i32, ptr %60, align 8, !tbaa !53
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.ClothSimSettings, ptr %59, i64 0, i32 20
  %66 = load float, ptr %65, align 4, !tbaa !80
  br label %67

67:                                               ; preds = %56, %64
  %68 = phi float [ %66, %64 ], [ 0.000000e+00, %56 ]
  %69 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 0, i32 9
  store float %68, ptr %69, align 4, !tbaa !159
  %70 = load i32, ptr %57, align 8, !tbaa !160
  %71 = and i32 %70, -4
  store i32 %71, ptr %57, align 8, !tbaa !160
  %72 = load ptr, ptr %53, align 8, !tbaa !207
  %73 = tail call ptr %72(ptr noundef nonnull %1, i32 noundef %58, i32 noundef 2) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %185, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.MDeformVert, ptr %73, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !208
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %185

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 0, i32 9
  %81 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 0, i32 14
  %82 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 0, i32 16
  %83 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 0, i32 15
  %84 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 0, i32 18
  %85 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 0, i32 18
  br label %86

86:                                               ; preds = %79, %180
  %87 = phi i64 [ 0, %79 ], [ %181, %180 ]
  %88 = load ptr, ptr %73, align 8, !tbaa !210
  %89 = getelementptr inbounds %struct.MDeformWeight, ptr %88, i64 %87
  %90 = load i32, ptr %89, align 4, !tbaa !211
  %91 = load ptr, ptr %13, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.ClothSimSettings, ptr %91, i64 0, i32 34
  %93 = load i16, ptr %92, align 8, !tbaa !57
  %94 = sext i16 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.ClothSimSettings, ptr %91, i64 0, i32 29
  %99 = load i32, ptr %98, align 8, !tbaa !53
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.MDeformWeight, ptr %88, i64 %87, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !213
  %105 = tail call float @powf(float noundef %104, float noundef 4.000000e+00) #9
  store float %105, ptr %80, align 4, !tbaa !159
  %106 = fcmp ult float %105, 0x3FEFF7CEE0000000
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %57, align 8, !tbaa !160
  %109 = or i32 %108, 1
  store i32 %109, ptr %57, align 8, !tbaa !160
  br label %110

110:                                              ; preds = %102, %107, %97, %86
  %111 = load ptr, ptr %13, align 8, !tbaa !34
  %112 = getelementptr inbounds %struct.ClothSimSettings, ptr %111, i64 0, i32 29
  %113 = load i32, ptr %112, align 8, !tbaa !53
  %114 = and i32 %113, 256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %73, align 8, !tbaa !210
  %118 = getelementptr inbounds %struct.MDeformWeight, ptr %117, i64 %87
  %119 = load i32, ptr %118, align 4, !tbaa !211
  %120 = getelementptr inbounds %struct.ClothSimSettings, ptr %111, i64 0, i32 35
  %121 = load i16, ptr %120, align 2, !tbaa !205
  %122 = sext i16 %121 to i32
  %123 = add nsw i32 %122, -1
  %124 = icmp eq i32 %119, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.MDeformWeight, ptr %117, i64 %87, i32 1
  %127 = load float, ptr %126, align 4, !tbaa !213
  store float %127, ptr %81, align 8, !tbaa !173
  store float %127, ptr %82, align 8, !tbaa !186
  br label %128

128:                                              ; preds = %125, %116
  %129 = getelementptr inbounds %struct.ClothSimSettings, ptr %111, i64 0, i32 33
  %130 = load i16, ptr %129, align 2, !tbaa !206
  %131 = sext i16 %130 to i32
  %132 = add nsw i32 %131, -1
  %133 = icmp eq i32 %119, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.MDeformWeight, ptr %117, i64 %87, i32 1
  %136 = load float, ptr %135, align 4, !tbaa !213
  store float %136, ptr %83, align 4, !tbaa !188
  br label %137

137:                                              ; preds = %128, %134, %110
  %138 = load ptr, ptr %54, align 8, !tbaa !65
  %139 = getelementptr inbounds %struct.ClothCollSettings, ptr %138, i64 0, i32 7
  %140 = load i32, ptr %139, align 8, !tbaa !71
  %141 = and i32 %140, 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %180, label %143

143:                                              ; preds = %137
  %144 = load ptr, ptr %73, align 8, !tbaa !210
  %145 = getelementptr inbounds %struct.MDeformWeight, ptr %144, i64 %87
  %146 = load i32, ptr %145, align 4, !tbaa !211
  %147 = getelementptr inbounds %struct.ClothCollSettings, ptr %138, i64 0, i32 11
  %148 = load i16, ptr %147, align 8, !tbaa !75
  %149 = sext i16 %148 to i32
  %150 = add nsw i32 %149, -1
  %151 = icmp eq i32 %146, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.MDeformWeight, ptr %144, i64 %87, i32 1
  %154 = load float, ptr %153, align 4, !tbaa !213
  %155 = fcmp ogt float %154, 0.000000e+00
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, ptr %57, align 8, !tbaa !160
  %158 = or i32 %157, 2
  store i32 %158, ptr %57, align 8, !tbaa !160
  br label %159

159:                                              ; preds = %152, %156, %143
  %160 = getelementptr inbounds %struct.ClothSimSettings, ptr %111, i64 0, i32 36
  %161 = load i16, ptr %160, align 4, !tbaa !58
  %162 = icmp sgt i16 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = zext nneg i16 %161 to i32
  %165 = add nsw i32 %164, -1
  %166 = icmp eq i32 %146, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ClothSimSettings, ptr %111, i64 0, i32 26
  %169 = load float, ptr %168, align 4, !tbaa !59
  %170 = getelementptr inbounds %struct.MDeformWeight, ptr %144, i64 %87, i32 1
  %171 = load float, ptr %170, align 4, !tbaa !213
  %172 = fsub float 1.000000e+00, %171
  %173 = getelementptr inbounds %struct.ClothSimSettings, ptr %111, i64 0, i32 27
  %174 = load float, ptr %173, align 8, !tbaa !214
  %175 = fmul float %171, %174
  %176 = tail call float @llvm.fmuladd.f32(float %169, float %172, float %175)
  store float %176, ptr %85, align 8, !tbaa !172
  br label %180

177:                                              ; preds = %159
  %178 = getelementptr inbounds %struct.ClothSimSettings, ptr %111, i64 0, i32 26
  %179 = load float, ptr %178, align 4, !tbaa !59
  store float %179, ptr %84, align 8, !tbaa !172
  br label %180

180:                                              ; preds = %137, %163, %167, %177
  %181 = add nuw nsw i64 %87, 1
  %182 = load i32, ptr %76, align 8, !tbaa !208
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %86, label %185, !llvm.loop !215

185:                                              ; preds = %180, %75, %67
  %186 = add nuw nsw i32 %58, 1
  %187 = getelementptr inbounds %struct.ClothVertex, ptr %57, i64 1
  %188 = icmp eq i32 %186, %55
  br i1 %188, label %189, label %56, !llvm.loop !216

189:                                              ; preds = %185, %50, %19, %42, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @BLI_linklist_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_edgeset_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_edgeset_haskey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_edgeset_insert(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_edgeset_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #1

declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #1

declare i32 @implicit_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @implicit_solver(ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @implicit_free(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !37, i64 128}
!35 = !{!"ClothModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"ListBase", !37, i64 0, !37, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !38, i64 0}
!44 = !{!45, !43, i64 40}
!45 = !{!"ClothSimSettings", !37, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !38, i64 20, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !38, i64 156, !37, i64 160}
!46 = !{!"short", !38, i64 0}
!47 = !{!45, !43, i64 44}
!48 = !{!45, !43, i64 48}
!49 = !{!45, !43, i64 12}
!50 = !{!45, !43, i64 16}
!51 = !{!45, !43, i64 36}
!52 = !{!45, !40, i64 124}
!53 = !{!45, !40, i64 128}
!54 = !{!45, !46, i64 140}
!55 = !{!45, !40, i64 132}
!56 = !{!45, !40, i64 136}
!57 = !{!45, !46, i64 144}
!58 = !{!45, !46, i64 148}
!59 = !{!45, !43, i64 116}
!60 = !{!45, !43, i64 68}
!61 = !{!45, !46, i64 152}
!62 = !{!45, !43, i64 72}
!63 = !{!45, !46, i64 154}
!64 = !{!45, !43, i64 112}
!65 = !{!35, !37, i64 136}
!66 = !{!67, !43, i64 12}
!67 = !{!"ClothCollSettings", !37, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !46, i64 36, !46, i64 38, !37, i64 40, !46, i64 48, !46, i64 50, !40, i64 52}
!68 = !{!67, !43, i64 16}
!69 = !{!67, !46, i64 38}
!70 = !{!67, !43, i64 8}
!71 = !{!67, !40, i64 32}
!72 = !{!67, !37, i64 0}
!73 = !{!67, !46, i64 36}
!74 = !{!67, !43, i64 20}
!75 = !{!67, !46, i64 48}
!76 = !{!45, !43, i64 80}
!77 = !{!45, !43, i64 84}
!78 = !{!45, !43, i64 76}
!79 = !{!45, !43, i64 8}
!80 = !{!45, !43, i64 92}
!81 = !{!45, !43, i64 96}
!82 = !{!45, !43, i64 100}
!83 = !{!45, !43, i64 104}
!84 = !{!45, !37, i64 160}
!85 = !{!35, !37, i64 144}
!86 = !{!87, !40, i64 20}
!87 = !{!"PointCache", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !46, i64 60, !46, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !41, i64 1288, !37, i64 1304, !37, i64 1312}
!88 = !{!35, !37, i64 120}
!89 = !{!90, !37, i64 32}
!90 = !{!"Cloth", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !46, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84}
!91 = !{!90, !37, i64 0}
!92 = !{!90, !37, i64 48}
!93 = !{!90, !40, i64 24}
!94 = !{!95, !40, i64 0}
!95 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !46, i64 16, !38, i64 18, !38, i64 19}
!96 = !{!95, !40, i64 4}
!97 = !{!95, !40, i64 8}
!98 = !{!95, !40, i64 12}
!99 = distinct !{!99, !100, !101}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!90, !37, i64 40}
!103 = !{!90, !40, i64 16}
!104 = distinct !{!104, !100, !101}
!105 = !{!106, !37, i64 176}
!106 = !{!"PTCacheID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192}
!107 = !{!87, !37, i64 1304}
!108 = !{!109, !40, i64 432}
!109 = !{!"Object", !110, i64 0, !37, i64 120, !37, i64 128, !46, i64 136, !46, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !111, i64 312, !37, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !38, i64 1042, !38, i64 1043, !46, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !43, i64 1120, !46, i64 1124, !46, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !46, i64 1162, !38, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !46, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !112, i64 1304, !112, i64 1312, !40, i64 1320, !40, i64 1324, !41, i64 1328, !41, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !41, i64 1400, !37, i64 1416}
!110 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !46, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!111 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!112 = !{!"long", !38, i64 0}
!113 = !{!35, !37, i64 112}
!114 = !{!115, !40, i64 680}
!115 = !{!"Scene", !110, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !46, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !116, i64 280, !125, i64 4264, !41, i64 4296, !41, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !46, i64 4376, !46, i64 4378, !40, i64 4380, !41, i64 4384, !126, i64 4400, !127, i64 4416, !130, i64 4600, !37, i64 4608, !131, i64 4616, !37, i64 4640, !112, i64 4648, !112, i64 4656, !118, i64 4664, !119, i64 4824, !132, i64 4888, !37, i64 4952}
!116 = !{!"RenderData", !117, i64 0, !37, i64 248, !37, i64 256, !120, i64 264, !121, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !43, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !46, i64 432, !46, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !46, i64 456, !46, i64 458, !46, i64 460, !46, i64 462, !46, i64 464, !46, i64 466, !40, i64 468, !46, i64 472, !46, i64 474, !46, i64 476, !46, i64 478, !46, i64 480, !46, i64 482, !40, i64 484, !40, i64 488, !46, i64 492, !46, i64 494, !40, i64 496, !40, i64 500, !46, i64 504, !46, i64 506, !46, i64 508, !46, i64 510, !46, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !46, i64 528, !46, i64 530, !46, i64 532, !46, i64 534, !46, i64 536, !46, i64 538, !46, i64 540, !46, i64 542, !122, i64 544, !122, i64 560, !123, i64 576, !41, i64 592, !46, i64 608, !46, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !40, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !46, i64 648, !46, i64 650, !46, i64 652, !46, i64 654, !46, i64 656, !46, i64 658, !43, i64 660, !43, i64 664, !46, i64 668, !46, i64 670, !43, i64 672, !43, i64 676, !38, i64 680, !40, i64 1704, !46, i64 1708, !46, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !46, i64 2524, !46, i64 2526, !43, i64 2528, !43, i64 2532, !46, i64 2536, !46, i64 2538, !43, i64 2540, !46, i64 2544, !46, i64 2546, !40, i64 2548, !46, i64 2552, !46, i64 2554, !46, i64 2556, !46, i64 2558, !43, i64 2560, !43, i64 2564, !37, i64 2568, !40, i64 2576, !43, i64 2580, !38, i64 2584, !124, i64 2616, !40, i64 3976, !40, i64 3980}
!117 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !46, i64 8, !46, i64 10, !43, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !118, i64 24, !119, i64 184}
!118 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !43, i64 136, !43, i64 140, !37, i64 144, !37, i64 152}
!119 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!120 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !46, i64 48, !46, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!121 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !43, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!122 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!123 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!124 = !{!"BakeData", !117, i64 0, !38, i64 248, !46, i64 1272, !46, i64 1274, !46, i64 1276, !46, i64 1278, !43, i64 1280, !43, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!125 = !{!"AudioData", !40, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !40, i64 16, !46, i64 20, !46, i64 22, !43, i64 24, !43, i64 28}
!126 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!127 = !{!"GameData", !126, i64 0, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !46, i64 32, !38, i64 34, !128, i64 40, !46, i64 64, !46, i64 66, !43, i64 68, !129, i64 72, !43, i64 128, !43, i64 132, !40, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !46, i64 156, !46, i64 158, !46, i64 160, !46, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!128 = !{!"GameDome", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !43, i64 8, !43, i64 12, !37, i64 16}
!129 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !40, i64 40, !43, i64 44, !43, i64 48, !46, i64 52, !46, i64 54}
!130 = !{!"UnitSettings", !43, i64 0, !38, i64 4, !38, i64 5, !46, i64 6}
!131 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!132 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!133 = !{!40, !40, i64 0}
!134 = !{!135, !37, i64 1104}
!135 = !{!"DerivedMesh", !136, i64 0, !136, i64 200, !136, i64 400, !136, i64 600, !136, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !43, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!136 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!137 = !{!87, !40, i64 16}
!138 = !{!87, !40, i64 40}
!139 = !{!45, !43, i64 32}
!140 = distinct !{!140, !100, !101}
!141 = !{!90, !40, i64 80}
!142 = !{!115, !43, i64 692}
!143 = !{!87, !40, i64 24}
!144 = !{!37, !37, i64 0}
!145 = !{!90, !38, i64 28}
!146 = !{!90, !37, i64 72}
!147 = !{!135, !37, i64 1120}
!148 = !{!135, !37, i64 1184}
!149 = distinct !{!149, !100, !101}
!150 = !{!90, !37, i64 8}
!151 = !{!90, !40, i64 20}
!152 = !{!45, !46, i64 150}
!153 = !{!135, !37, i64 1320}
!154 = !{!135, !37, i64 1168}
!155 = !{!156, !37, i64 112}
!156 = !{!"ClothVertex", !40, i64 0, !38, i64 4, !38, i64 16, !38, i64 28, !38, i64 40, !38, i64 52, !38, i64 64, !38, i64 76, !43, i64 88, !43, i64 92, !38, i64 96, !37, i64 112, !40, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !40, i64 140, !43, i64 144}
!157 = !{!156, !43, i64 88}
!158 = !{!156, !40, i64 120}
!159 = !{!156, !43, i64 92}
!160 = !{!156, !40, i64 0}
!161 = distinct !{!161, !100, !101}
!162 = !{!135, !37, i64 1112}
!163 = !{!135, !37, i64 1176}
!164 = !{!165, !40, i64 0}
!165 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !46, i64 10}
!166 = !{!165, !40, i64 4}
!167 = !{!168, !40, i64 0}
!168 = !{!"ClothSpring", !40, i64 0, !40, i64 4, !43, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !38, i64 24, !38, i64 60, !38, i64 96, !43, i64 108, !43, i64 112}
!169 = !{!168, !40, i64 4}
!170 = !{!165, !46, i64 10}
!171 = !{!168, !43, i64 8}
!172 = !{!156, !43, i64 144}
!173 = !{!156, !43, i64 128}
!174 = !{!168, !43, i64 108}
!175 = !{!168, !40, i64 16}
!176 = !{!156, !43, i64 124}
!177 = !{!156, !40, i64 140}
!178 = !{!168, !40, i64 20}
!179 = distinct !{!179, !100, !101}
!180 = !{!181, !37, i64 8}
!181 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!182 = !{!181, !37, i64 0}
!183 = distinct !{!183, !100, !101}
!184 = distinct !{!184, !100, !101}
!185 = distinct !{!185, !100, !101}
!186 = !{!156, !43, i64 136}
!187 = distinct !{!187, !100, !101}
!188 = !{!156, !43, i64 132}
!189 = distinct !{!189, !100, !101}
!190 = distinct !{!190, !100, !101}
!191 = distinct !{!191, !100, !101}
!192 = distinct !{!192, !100, !101}
!193 = distinct !{!193, !100, !101}
!194 = distinct !{!194, !100, !101}
!195 = !{!67, !43, i64 28}
!196 = distinct !{!196, !100, !101}
!197 = distinct !{!197, !100, !101}
!198 = distinct !{!198, !100, !101}
!199 = distinct !{!199, !100, !101}
!200 = distinct !{!200, !100, !101}
!201 = distinct !{!201, !100, !101}
!202 = !{!203, !46, i64 2092}
!203 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !41, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !38, i64 2090, !46, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!204 = distinct !{!204, !100, !101}
!205 = !{!45, !46, i64 146}
!206 = !{!45, !46, i64 142}
!207 = !{!135, !37, i64 1288}
!208 = !{!209, !40, i64 8}
!209 = !{!"MDeformVert", !37, i64 0, !40, i64 8, !40, i64 12}
!210 = !{!209, !37, i64 0}
!211 = !{!212, !40, i64 0}
!212 = !{!"MDeformWeight", !40, i64 0, !43, i64 4}
!213 = !{!212, !43, i64 4}
!214 = !{!45, !43, i64 120}
!215 = distinct !{!215, !100, !101}
!216 = distinct !{!216, !100, !101}
