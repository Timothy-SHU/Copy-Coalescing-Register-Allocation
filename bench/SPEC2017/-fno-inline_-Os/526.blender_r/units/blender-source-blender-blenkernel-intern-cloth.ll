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
%struct.LinkNode = type { ptr, ptr }
%struct.ClothSpring = type { i32, i32, float, i32, i32, i32, [3 x [3 x float]], [3 x [3 x float]], [3 x float], float, float }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.MEdge = type { i32, i32, i8, i8, i16 }

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
@str.19 = private unnamed_addr constant [38 x i8] c"cloth_free_modifier cloth_from_object\00", align 1
@str.20 = private unnamed_addr constant [40 x i8] c"cloth_free_modifier cloth_build_springs\00", align 1
@str.21 = private unnamed_addr constant [46 x i8] c"cloth_free_modifier clmd->clothObject->mfaces\00", align 1
@str.22 = private unnamed_addr constant [45 x i8] c"cloth_free_modifier clmd->clothObject->verts\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cloth_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 4, i64 1
  store <2 x float> <float 0.000000e+00, float 0xC0239EB860000000>, ptr %4, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 6
  store <4 x float> <float 0x3FD3333340000000, float 1.500000e+01, float 1.500000e+01, float 5.000000e-01>, ptr %5, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 28
  store i32 5, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 29
  store i32 0, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 32
  store i16 0, ptr %8, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 30
  store i32 0, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 31
  store i32 10, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 34
  store i16 0, ptr %11, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 36
  store i16 0, ptr %12, align 4, !tbaa !52
  %13 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 14
  %14 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 38
  store i16 2, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 39
  store i16 0, ptr %15, align 2, !tbaa !54
  %16 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 25
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ClothCollSettings, ptr %18, i64 0, i32 9
  store i16 2, ptr %19, align 2, !tbaa !56
  %20 = getelementptr inbounds %struct.ClothCollSettings, ptr %18, i64 0, i32 1
  %21 = getelementptr inbounds %struct.ClothCollSettings, ptr %18, i64 0, i32 7
  store i32 2, ptr %21, align 8, !tbaa !58
  store ptr null, ptr %18, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.ClothCollSettings, ptr %18, i64 0, i32 8
  store i16 1, ptr %22, align 4, !tbaa !60
  %23 = getelementptr inbounds %struct.ClothCollSettings, ptr %18, i64 0, i32 11
  store i16 0, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 18
  store float 2.500000e+02, ptr %24, align 4, !tbaa !62
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+03>, ptr %13, align 4, !tbaa !42
  %25 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 1
  store <4 x float> <float 0.000000e+00, float 5.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %25, align 8, !tbaa !42
  store <4 x float> <float 0x3F8EB851E0000000, float 5.000000e+00, float 5.000000e+00, float 7.500000e-01>, ptr %20, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 20
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %26, align 4, !tbaa !42
  %27 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 41
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #15
  %32 = load ptr, ptr %2, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.ClothSimSettings, ptr %32, i64 0, i32 41
  store ptr %31, ptr %33, align 8, !tbaa !63
  br label %34

34:                                               ; preds = %30, %1
  %35 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 3
  store i32 1, ptr %39, align 4, !tbaa !65
  br label %40

40:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bvhtree_update_from_cloth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [12 x float], align 16
  %4 = alloca [12 x float], align 16
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = load ptr, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  %10 = icmp eq ptr %8, null
  br i1 %10, label %78, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp ne ptr %9, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %78

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !72
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %77, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 3
  %23 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 6
  %24 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 9
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 3
  %27 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 6
  %28 = getelementptr inbounds [12 x float], ptr %4, i64 0, i64 9
  br label %29

29:                                               ; preds = %21, %72
  %30 = phi ptr [ %13, %21 ], [ %74, %72 ]
  %31 = phi i32 [ 0, %21 ], [ %73, %72 ]
  %32 = load i32, ptr %30, align 4, !tbaa !73
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %33, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %34) #17
  %35 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %37, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %38) #17
  %39 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !76
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %41, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %42) #17
  %43 = getelementptr inbounds %struct.MFace, ptr %30, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !77
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %47, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %48) #17
  br label %49

49:                                               ; preds = %46, %29
  br i1 %25, label %66, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %33, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %51) #17
  %52 = load i32, ptr %35, align 4, !tbaa !75
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %53, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %54) #17
  %55 = load i32, ptr %39, align 4, !tbaa !76
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %56, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %57) #17
  %58 = load i32, ptr %43, align 4, !tbaa !77
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %61, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %62) #17
  br label %63

63:                                               ; preds = %60, %50
  %64 = phi i32 [ 4, %60 ], [ 3, %50 ]
  %65 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %31, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %64) #15
  br label %69

66:                                               ; preds = %49
  %67 = select i1 %45, i32 3, i32 4
  %68 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %31, ptr noundef nonnull %3, ptr noundef null, i32 noundef %67) #15
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i8 [ %65, %63 ], [ %68, %66 ]
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = add nuw i32 %31, 1
  %74 = getelementptr inbounds %struct.MFace, ptr %30, i64 1
  %75 = load i32, ptr %18, align 8, !tbaa !72
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %29, label %77, !llvm.loop !78

77:                                               ; preds = %72, %69, %17
  call void @BLI_bvhtree_update_tree(ptr noundef nonnull %8) #15
  br label %78

78:                                               ; preds = %11, %77, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !80 {
  %3 = load float, ptr %1, align 4, !tbaa !42
  store float %3, ptr %0, align 4, !tbaa !42
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !42
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_bvhtree_update_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_bvhtree_update_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bvhselftree_update_from_cloth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [12 x float], align 16
  %4 = alloca [12 x float], align 16
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = load ptr, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  %10 = icmp eq ptr %8, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp ne ptr %9, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !82
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %1, 0
  br label %23

23:                                               ; preds = %21, %35
  %24 = phi i32 [ 0, %21 ], [ %36, %35 ]
  %25 = phi ptr [ %9, %21 ], [ %37, %35 ]
  %26 = getelementptr inbounds %struct.ClothVertex, ptr %25, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %26) #17
  br i1 %22, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ClothVertex, ptr %25, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %28) #17
  %29 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %24, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #15
  br label %32

30:                                               ; preds = %23
  %31 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %8, i32 noundef %24, ptr noundef nonnull %3, ptr noundef null, i32 noundef 1) #15
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i8 [ %29, %27 ], [ %31, %30 ]
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = add nuw i32 %24, 1
  %37 = getelementptr inbounds %struct.ClothVertex, ptr %25, i64 1
  %38 = load i32, ptr %18, align 8, !tbaa !82
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %23, label %40, !llvm.loop !83

40:                                               ; preds = %35, %32, %17
  call void @BLI_bvhtree_update_tree(ptr noundef nonnull %8) #15
  br label %41

41:                                               ; preds = %11, %40, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cloth_clear_cache(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PTCacheID, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #16
  call void @BKE_ptcache_id_from_cloth(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !87
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %3
  %16 = fptoui float %2 to i32
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %4, i32 noundef 3, i32 noundef %16) #15
  br label %17

17:                                               ; preds = %10, %15
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_id_from_cloth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_ptcache_id_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PTCacheID, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %10 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  call void @BKE_ptcache_id_from_cloth(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %0) #15
  %15 = sitofp i32 %12 to float
  call void @BKE_ptcache_id_time(ptr noundef nonnull %6, ptr noundef %1, float noundef %15, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #15
  %16 = load float, ptr %7, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ClothSimSettings, ptr %18, i64 0, i32 15
  store float %16, ptr %19, align 8, !tbaa !112
  %20 = getelementptr inbounds %struct.ClothSimSettings, ptr %18, i64 0, i32 39
  %21 = load i16, ptr %20, align 2, !tbaa !54
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %5
  %24 = load i32, ptr %8, align 4, !tbaa !113
  %25 = getelementptr inbounds %struct.ClothSimSettings, ptr %18, i64 0, i32 30
  %26 = load i32, ptr %25, align 4, !tbaa !49
  %27 = sub nsw i32 %24, %26
  %28 = icmp ne i32 %12, %27
  %29 = icmp eq i32 %26, 0
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !114
  %38 = call i32 %37(ptr noundef %3) #15
  %39 = load ptr, ptr %32, align 8, !tbaa !67
  %40 = getelementptr inbounds %struct.Cloth, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !82
  %42 = icmp eq i32 %38, %41
  %43 = load ptr, ptr %17, align 8, !tbaa !34
  br i1 %42, label %55, label %44

44:                                               ; preds = %35, %23, %5
  %45 = phi ptr [ %18, %23 ], [ %18, %5 ], [ %43, %35 ]
  %46 = getelementptr inbounds %struct.ClothSimSettings, ptr %45, i64 0, i32 39
  store i16 0, ptr %46, align 2, !tbaa !54
  %47 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !117
  %49 = or i32 %48, 2
  store i32 %49, ptr %47, align 8, !tbaa !117
  %50 = call i32 @BKE_ptcache_id_reset(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 2) #15
  call void @BKE_ptcache_validate(ptr noundef %14, i32 noundef 0) #15
  %51 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 8
  store i32 0, ptr %51, align 8, !tbaa !118
  %52 = load i32, ptr %47, align 8, !tbaa !117
  %53 = and i32 %52, -259
  store i32 %53, ptr %47, align 8, !tbaa !117
  %54 = load ptr, ptr %17, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %44, %35, %31
  %56 = phi ptr [ %54, %44 ], [ %43, %35 ], [ %18, %31 ]
  %57 = getelementptr inbounds %struct.ClothSimSettings, ptr %56, i64 0, i32 15
  %58 = load float, ptr %57, align 8, !tbaa !112
  %59 = getelementptr inbounds %struct.ClothSimSettings, ptr %56, i64 0, i32 28
  %60 = load i32, ptr %59, align 4, !tbaa !44
  %61 = sitofp i32 %60 to float
  %62 = fdiv float %58, %61
  %63 = getelementptr inbounds %struct.ClothSimSettings, ptr %56, i64 0, i32 5
  store float %62, ptr %63, align 8, !tbaa !119
  %64 = getelementptr inbounds %struct.ClothSimSettings, ptr %56, i64 0, i32 30
  %65 = load i32, ptr %64, align 4, !tbaa !49
  %66 = icmp sgt i32 %65, 0
  %67 = load i32, ptr %8, align 4, !tbaa !113
  br i1 %66, label %68, label %81

68:                                               ; preds = %55
  %69 = sub nsw i32 %67, %65
  %70 = icmp sgt i32 %12, %69
  %71 = icmp slt i32 %12, %67
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  call void @BKE_ptcache_invalidate(ptr noundef %14) #15
  %74 = call fastcc i32 @do_init_cloth(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %3, i32 noundef %12) #17, !range !120
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %176, label %76

76:                                               ; preds = %73
  %77 = call fastcc i32 @do_step_cloth(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %3, i32 noundef %12) #17
  call fastcc void @cloth_to_object(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %4) #17
  %78 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !67
  %80 = getelementptr inbounds %struct.Cloth, ptr %79, i64 0, i32 14
  store i32 %12, ptr %80, align 8, !tbaa !121
  br label %176

81:                                               ; preds = %68, %55
  %82 = icmp slt i32 %12, %67
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  call void @BKE_ptcache_invalidate(ptr noundef %14) #15
  br label %176

84:                                               ; preds = %81
  %85 = load i32, ptr %9, align 4, !tbaa !113
  %86 = call i32 @llvm.smin.i32(i32 %12, i32 %85)
  %87 = call fastcc i32 @do_init_cloth(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %3, i32 noundef %86) #17, !range !120
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %176, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %8, align 4, !tbaa !113
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load ptr, ptr %17, align 8, !tbaa !34
  %94 = getelementptr inbounds %struct.ClothSimSettings, ptr %93, i64 0, i32 30
  %95 = load i32, ptr %94, align 4, !tbaa !49
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = call i32 @BKE_ptcache_id_reset(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 2) #15
  %99 = call fastcc i32 @do_init_cloth(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %3, i32 noundef %86) #17, !range !120
  call void @BKE_ptcache_validate(ptr noundef %14, i32 noundef %86) #15
  %100 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !117
  %102 = and i32 %101, -259
  store i32 %102, ptr %100, align 8, !tbaa !117
  %103 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !67
  %105 = getelementptr inbounds %struct.Cloth, ptr %104, i64 0, i32 14
  store i32 %86, ptr %105, align 8, !tbaa !121
  br label %176

106:                                              ; preds = %92, %89
  %107 = sitofp i32 %86 to float
  %108 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 8
  %109 = load float, ptr %108, align 4, !tbaa !122
  %110 = fadd float %109, %107
  %111 = call i32 @BKE_ptcache_read(ptr noundef nonnull %6, float noundef %110) #15
  %112 = add i32 %111, -1
  %113 = icmp ult i32 %112, 2
  br i1 %113, label %114, label %127

114:                                              ; preds = %106
  %115 = icmp eq i32 %111, 2
  call void @implicit_set_positions(ptr noundef nonnull %0) #15
  call fastcc void @cloth_to_object(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %4) #17
  call void @BKE_ptcache_validate(ptr noundef %14, i32 noundef %86) #15
  br i1 %115, label %116, label %123

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !117
  %119 = and i32 %118, 258
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %86) #15
  br label %123

123:                                              ; preds = %121, %116, %114
  %124 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !67
  %126 = getelementptr inbounds %struct.Cloth, ptr %125, i64 0, i32 14
  store i32 %86, ptr %126, align 8, !tbaa !121
  br label %176

127:                                              ; preds = %106
  %128 = icmp eq i32 %111, 3
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  call void @implicit_set_positions(ptr noundef nonnull %0) #15
  br label %136

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !117
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  call void @BKE_ptcache_invalidate(ptr noundef nonnull %14) #15
  br label %176

136:                                              ; preds = %129, %130
  %137 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !67
  %139 = getelementptr inbounds %struct.Cloth, ptr %138, i64 0, i32 14
  %140 = load i32, ptr %139, align 8, !tbaa !121
  %141 = add nsw i32 %140, 1
  %142 = icmp eq i32 %86, %141
  br i1 %142, label %143, label %176

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 4
  %145 = load i32, ptr %144, align 8, !tbaa !123
  %146 = load i32, ptr %8, align 4, !tbaa !113
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !117
  %151 = and i32 %150, 2
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 8
  %155 = load i32, ptr %154, align 8, !tbaa !118
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153, %148
  %158 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %145) #15
  %159 = load i32, ptr %144, align 8, !tbaa !123
  br label %160

160:                                              ; preds = %157, %153, %143
  %161 = phi i32 [ %159, %157 ], [ %145, %153 ], [ %145, %143 ]
  %162 = sub nsw i32 %86, %161
  %163 = sitofp i32 %162 to float
  %164 = load ptr, ptr %17, align 8, !tbaa !34
  %165 = getelementptr inbounds %struct.ClothSimSettings, ptr %164, i64 0, i32 15
  %166 = load float, ptr %165, align 8, !tbaa !112
  %167 = fmul float %166, %163
  store float %167, ptr %165, align 8, !tbaa !112
  call void @BKE_ptcache_validate(ptr noundef nonnull %14, i32 noundef %86) #15
  %168 = call fastcc i32 @do_step_cloth(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %3, i32 noundef %86) #17
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  call void @BKE_ptcache_invalidate(ptr noundef nonnull %14) #15
  br label %173

171:                                              ; preds = %160
  %172 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %86) #15
  br label %173

173:                                              ; preds = %171, %170
  call fastcc void @cloth_to_object(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %4) #17
  %174 = load ptr, ptr %137, align 8, !tbaa !67
  %175 = getelementptr inbounds %struct.Cloth, ptr %174, i64 0, i32 14
  store i32 %86, ptr %175, align 8, !tbaa !121
  br label %176

176:                                              ; preds = %136, %84, %73, %173, %135, %123, %97, %83, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_ptcache_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_init_cloth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !124 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @cloth_from_object(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @BKE_ptcache_invalidate(ptr noundef %6) #15
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #15
  br label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %7, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @BKE_ptcache_invalidate(ptr noundef %6) #15
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #15
  br label %21

18:                                               ; preds = %14
  tail call void @implicit_set_positions(ptr noundef nonnull %1) #15
  %19 = load ptr, ptr %7, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.Cloth, ptr %19, i64 0, i32 14
  store i32 -1, ptr %20, align 8, !tbaa !121
  br label %21

21:                                               ; preds = %4, %18, %17, %13
  %22 = phi i32 [ 0, %17 ], [ 0, %13 ], [ 1, %18 ], [ 1, %4 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @do_step_cloth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !125 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = tail call ptr %10(ptr noundef %2) #15
  %12 = load ptr, ptr %6, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.Cloth, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !82
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %8, %16 ], [ %27, %18 ]
  %21 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 4
  %22 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %22) #17
  %23 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 6
  %24 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %24) #17
  %25 = getelementptr inbounds %struct.MVert, ptr %11, i64 %19
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef %25) #17
  tail call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %22) #15
  %26 = add nuw nsw i64 %19, 1
  %27 = getelementptr inbounds %struct.ClothVertex, ptr %20, i64 1
  %28 = load ptr, ptr %6, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.Cloth, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !82
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %18, label %33, !llvm.loop !127

33:                                               ; preds = %18, %4
  %34 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.ClothSimSettings, ptr %37, i64 0, i32 41
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = tail call ptr @pdInitEffectors(ptr noundef %35, ptr noundef %0, ptr noundef null, ptr noundef %39, i8 noundef zeroext 1) #15
  store ptr %40, ptr %5, align 8, !tbaa !128
  tail call fastcc void @cloth_apply_vgroup(ptr noundef nonnull %1, ptr noundef %2) #17
  tail call fastcc void @cloth_update_springs(ptr noundef nonnull %1) #17
  %41 = sitofp i32 %3 to float
  %42 = tail call i32 @implicit_solver(ptr noundef %0, float noundef %41, ptr noundef nonnull %1, ptr noundef %40) #15
  call void @pdEndEffectors(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloth_to_object(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !129 {
  %4 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %10 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %11 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !82
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %7, %14
  %15 = phi i64 [ %19, %14 ], [ 0, %7 ]
  %16 = getelementptr inbounds [3 x float], ptr %2, i64 %15
  %17 = load ptr, ptr %5, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.ClothVertex, ptr %17, i64 %15, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %16, ptr noundef nonnull %18) #17
  tail call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef %16) #15
  %19 = add nuw nsw i64 %15, 1
  %20 = load i32, ptr %11, align 8, !tbaa !82
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %14, label %23, !llvm.loop !130

23:                                               ; preds = %14, %7, %3
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @implicit_set_positions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cloth_free_modifier(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @implicit_free(ptr noundef nonnull %0) #15
  %9 = load ptr, ptr %5, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %12(ptr noundef nonnull %9) #15
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %5, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !82
  %15 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.LinkNode, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !132
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %22(ptr noundef %21) #15
  %23 = load ptr, ptr %19, align 8, !tbaa !134
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !135

25:                                               ; preds = %18
  %26 = load ptr, ptr %15, align 8, !tbaa !131
  tail call void @BLI_linklist_free(ptr noundef %26, ptr noundef null) #15
  br label %27

27:                                               ; preds = %25, %13
  store ptr null, ptr %15, align 8, !tbaa !131
  %28 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 3
  store i32 0, ptr %28, align 4, !tbaa !136
  %29 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %30) #15
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !81
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %35) #15
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %43(ptr noundef nonnull %40) #15
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.Cloth, ptr %5, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !137
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @BLI_edgeset_free(ptr noundef nonnull %46) #15
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %50(ptr noundef nonnull %5) #15
  store ptr null, ptr %4, align 8, !tbaa !67
  br label %51

51:                                               ; preds = %3, %49, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_edgeset_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cloth_free_modifier_extern(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !138
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
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %8
  %13 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !138
  %14 = icmp sgt i16 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  br label %17

17:                                               ; preds = %12, %15
  %18 = tail call i32 @implicit_free(ptr noundef nonnull %0) #15
  %19 = load ptr, ptr %10, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %22(ptr noundef nonnull %19) #15
  br label %23

23:                                               ; preds = %21, %17
  store ptr null, ptr %10, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !131
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.LinkNode, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %32(ptr noundef %31) #15
  %33 = load ptr, ptr %29, align 8, !tbaa !134
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !140

35:                                               ; preds = %28
  %36 = load ptr, ptr %25, align 8, !tbaa !131
  tail call void @BLI_linklist_free(ptr noundef %36, ptr noundef null) #15
  br label %37

37:                                               ; preds = %35, %23
  store ptr null, ptr %25, align 8, !tbaa !131
  %38 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 3
  store i32 0, ptr %38, align 4, !tbaa !136
  %39 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !68
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %40) #15
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %45) #15
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %53(ptr noundef nonnull %50) #15
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @BLI_edgeset_free(ptr noundef nonnull %56) #15
  br label %59

59:                                               ; preds = %58, %54
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %60(ptr noundef nonnull %10) #15
  store ptr null, ptr %9, align 8, !tbaa !67
  br label %61

61:                                               ; preds = %8, %59, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cloth_uses_vgroup(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 29
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = and i32 %5, 264
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.ClothCollSettings, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 34
  %17 = load i16, ptr %16, align 8, !tbaa !51
  %18 = icmp sgt i16 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 35
  %21 = load i16, ptr %20, align 2, !tbaa !141
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 33
  %25 = load i16, ptr %24, align 2, !tbaa !142
  %26 = icmp sgt i16 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 36
  %29 = load i16, ptr %28, align 4, !tbaa !52
  %30 = icmp sgt i16 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.ClothCollSettings, ptr %33, i64 0, i32 11
  %35 = load i16, ptr %34, align 8, !tbaa !61
  %36 = icmp sgt i16 %35, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %15, %19, %23, %27, %31, %8
  %39 = phi i32 [ 0, %8 ], [ 1, %27 ], [ 1, %23 ], [ 1, %19 ], [ 1, %15 ], [ %37, %31 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cloth_add_spring(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %11 = tail call ptr %10(i64 noundef 116, ptr noundef nonnull @.str.2) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  store i32 %1, ptr %11, align 4, !tbaa !143
  %14 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 1
  store i32 %2, ptr %14, align 4, !tbaa !145
  %15 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 2
  store float %3, ptr %15, align 4, !tbaa !146
  %16 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 4
  store i32 %4, ptr %16, align 4, !tbaa !147
  %17 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 5
  store i32 0, ptr %17, align 4, !tbaa !148
  %18 = getelementptr inbounds %struct.ClothSpring, ptr %11, i64 0, i32 9
  store float 0.000000e+00, ptr %18, align 4, !tbaa !149
  %19 = getelementptr inbounds %struct.Cloth, ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !136
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !136
  %22 = getelementptr inbounds %struct.Cloth, ptr %7, i64 0, i32 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %22, ptr noundef nonnull %11) #15
  br label %23

23:                                               ; preds = %5, %9, %13
  %24 = phi i32 [ 1, %13 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %24
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cloth_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !150 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  tail call void @cloth_free_modifier(ptr noundef nonnull %1) #17
  %9 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !138
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  br label %13

13:                                               ; preds = %8, %11, %3
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %15 = tail call ptr %14(i64 noundef 88, ptr noundef nonnull @.str.6) #15
  store ptr %15, ptr %5, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Cloth, ptr %15, i64 0, i32 5
  store i8 -1, ptr %18, align 4, !tbaa !151
  %19 = getelementptr inbounds %struct.Cloth, ptr %15, i64 0, i32 13
  store ptr null, ptr %19, align 8, !tbaa !137
  %20 = icmp eq ptr %2, null
  br i1 %20, label %155, label %22

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #15
  br label %155

22:                                               ; preds = %17
  tail call fastcc void @cloth_from_mesh(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %23 = load ptr, ptr %5, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.Cloth, ptr %23, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !131
  %25 = getelementptr inbounds %struct.Cloth, ptr %23, i64 0, i32 3
  store i32 -1, ptr %25, align 4, !tbaa !136
  %26 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.ClothSimSettings, ptr %27, i64 0, i32 37
  %29 = load i16, ptr %28, align 2, !tbaa !152
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %33 = load ptr, ptr %32, align 8, !tbaa !153
  %34 = tail call ptr %33(ptr noundef nonnull %2, i32 noundef 23) #15
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi ptr [ %34, %31 ], [ null, %22 ]
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  %39 = tail call ptr %38(ptr noundef nonnull %2) #15
  %40 = load ptr, ptr %5, align 8, !tbaa !67
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %43 = load ptr, ptr %42, align 8, !tbaa !114
  %44 = tail call i32 %43(ptr noundef nonnull %2) #15
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %48 = icmp eq ptr %36, null
  br label %49

49:                                               ; preds = %46, %72
  %50 = phi i64 [ 0, %46 ], [ %81, %72 ]
  %51 = phi ptr [ %41, %46 ], [ %82, %72 ]
  %52 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 3
  %53 = getelementptr inbounds %struct.MVert, ptr %39, i64 %50
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef %53) #17
  tail call void @mul_m4_v3(ptr noundef nonnull %47, ptr noundef nonnull %52) #15
  br i1 %48, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds [3 x float], ptr %36, i64 %50
  %56 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 11
  store ptr %55, ptr %56, align 8, !tbaa !154
  tail call void @mul_m4_v3(ptr noundef nonnull %47, ptr noundef nonnull %55) #15
  br label %59

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 11
  store ptr %52, ptr %58, align 8, !tbaa !154
  br label %59

59:                                               ; preds = %54, %57
  %60 = load ptr, ptr %26, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.ClothSimSettings, ptr %60, i64 0, i32 6
  %62 = load float, ptr %61, align 4, !tbaa !156
  %63 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 8
  store float %62, ptr %63, align 8, !tbaa !157
  %64 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 12
  store i32 0, ptr %64, align 8, !tbaa !158
  %65 = getelementptr inbounds %struct.ClothSimSettings, ptr %60, i64 0, i32 29
  %66 = load i32, ptr %65, align 8, !tbaa !47
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.ClothSimSettings, ptr %60, i64 0, i32 20
  %71 = load float, ptr %70, align 4, !tbaa !159
  br label %72

72:                                               ; preds = %59, %69
  %73 = phi float [ %71, %69 ], [ 0.000000e+00, %59 ]
  %74 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 9
  store float %73, ptr %74, align 4
  store i32 0, ptr %51, align 8, !tbaa !160
  %75 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %75, ptr noundef nonnull %52) #17
  %76 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %76, ptr noundef nonnull %52) #17
  %77 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %77, ptr noundef nonnull %52) #17
  %78 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %78, ptr noundef nonnull %52) #17
  %79 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 1
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %79) #17
  store i32 0, ptr %64, align 8, !tbaa !158
  %80 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 0, i32 10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %80, ptr noundef nonnull %4) #17
  %81 = add nuw nsw i64 %50, 1
  %82 = getelementptr inbounds %struct.ClothVertex, ptr %51, i64 1
  %83 = load ptr, ptr %42, align 8, !tbaa !114
  %84 = tail call i32 %83(ptr noundef nonnull %2) #15
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %81, %85
  br i1 %86, label %49, label %87, !llvm.loop !161

87:                                               ; preds = %72, %35
  tail call fastcc void @cloth_apply_vgroup(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %88 = tail call fastcc i32 @cloth_build_springs(ptr noundef nonnull %1, ptr noundef nonnull %2) #17, !range !120
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %42, align 8, !tbaa !114
  %92 = tail call i32 %91(ptr noundef nonnull %2) #15
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %96, label %116

94:                                               ; preds = %87
  tail call void @cloth_free_modifier(ptr noundef nonnull %1) #17
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #15
  %95 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  br label %155

96:                                               ; preds = %90, %110
  %97 = phi i64 [ %111, %110 ], [ 0, %90 ]
  %98 = load ptr, ptr %15, align 8, !tbaa !70
  %99 = getelementptr inbounds %struct.ClothVertex, ptr %98, i64 %97
  %100 = load i32, ptr %99, align 8, !tbaa !160
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.ClothVertex, ptr %98, i64 %97, i32 9
  %105 = load float, ptr %104, align 4, !tbaa !162
  %106 = fcmp ogt float %105, 0x3E80000000000000
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = trunc i64 %97 to i32
  %109 = tail call i32 @cloth_add_spring(ptr noundef %1, i32 noundef %108, i32 noundef %108, float noundef 0.000000e+00, i32 noundef 16) #17, !range !120
  br label %110

110:                                              ; preds = %96, %103, %107
  %111 = add nuw nsw i64 %97, 1
  %112 = load ptr, ptr %42, align 8, !tbaa !114
  %113 = tail call i32 %112(ptr noundef nonnull %2) #15
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %96, label %116, !llvm.loop !163

116:                                              ; preds = %110, %90
  %117 = tail call i32 @implicit_init(ptr noundef %0, ptr noundef %1) #15
  %118 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !55
  %120 = getelementptr inbounds %struct.ClothCollSettings, ptr %119, i64 0, i32 1
  %121 = load float, ptr %120, align 8, !tbaa !164
  %122 = getelementptr inbounds %struct.ClothCollSettings, ptr %119, i64 0, i32 6
  %123 = load float, ptr %122, align 4, !tbaa !165
  %124 = fcmp ogt float %121, %123
  %125 = select i1 %124, float %121, float %123
  %126 = tail call fastcc ptr @bvhtree_build_from_cloth(ptr noundef %1, float noundef %125) #17
  %127 = load ptr, ptr %5, align 8, !tbaa !67
  %128 = getelementptr inbounds %struct.Cloth, ptr %127, i64 0, i32 8
  store ptr %126, ptr %128, align 8, !tbaa !68
  %129 = load ptr, ptr %42, align 8, !tbaa !114
  %130 = tail call i32 %129(ptr noundef nonnull %2) #15
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %116, %132
  %133 = phi i64 [ %145, %132 ], [ 0, %116 ]
  %134 = phi float [ %144, %132 ], [ 0.000000e+00, %116 ]
  %135 = load ptr, ptr %118, align 8, !tbaa !55
  %136 = getelementptr inbounds %struct.ClothCollSettings, ptr %135, i64 0, i32 4
  %137 = load float, ptr %136, align 4, !tbaa !166
  %138 = load ptr, ptr %15, align 8, !tbaa !70
  %139 = getelementptr inbounds %struct.ClothVertex, ptr %138, i64 %133, i32 13
  %140 = load float, ptr %139, align 4, !tbaa !167
  %141 = fmul float %140, 2.000000e+00
  %142 = fmul float %137, %141
  %143 = fcmp ogt float %134, %142
  %144 = select i1 %143, float %134, float %142
  %145 = add nuw nsw i64 %133, 1
  %146 = load ptr, ptr %42, align 8, !tbaa !114
  %147 = tail call i32 %146(ptr noundef nonnull %2) #15
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %132, label %150, !llvm.loop !168

150:                                              ; preds = %132, %116
  %151 = phi float [ 0.000000e+00, %116 ], [ %144, %132 ]
  %152 = tail call fastcc ptr @bvhselftree_build_from_cloth(ptr noundef nonnull %1, float noundef %151) #17
  %153 = load ptr, ptr %5, align 8, !tbaa !67
  %154 = getelementptr inbounds %struct.Cloth, ptr %153, i64 0, i32 9
  store ptr %152, ptr %154, align 8, !tbaa !81
  br label %155

155:                                              ; preds = %17, %150, %94, %21
  %156 = phi i32 [ 1, %150 ], [ 0, %94 ], [ 0, %21 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret i32 %156
}

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloth_from_mesh(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !169 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = tail call i32 %4(ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 %7(ptr noundef %1) #15
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !171
  %11 = tail call ptr %10(ptr noundef %1) #15
  %12 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.Cloth, ptr %13, i64 0, i32 2
  store i32 %5, ptr %14, align 8, !tbaa !82
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %16 = zext i32 %5 to i64
  %17 = mul nuw nsw i64 %16, 152
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.10) #15
  %19 = load ptr, ptr %12, align 8, !tbaa !67
  store ptr %18, ptr %19, align 8, !tbaa !70
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  tail call void @cloth_free_modifier(ptr noundef nonnull %0) #17
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #15
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  br label %54

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.Cloth, ptr %19, i64 0, i32 4
  store i32 %8, ptr %24, align 8, !tbaa !72
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %26 = zext i32 %8 to i64
  %27 = mul nuw nsw i64 %26, 20
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.13) #15
  %29 = load ptr, ptr %12, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.Cloth, ptr %29, i64 0, i32 10
  store ptr %28, ptr %30, align 8, !tbaa !71
  %31 = icmp eq ptr %28, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %47, label %36

34:                                               ; preds = %23
  tail call void @cloth_free_modifier(ptr noundef nonnull %0) #17
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #15
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  br label %54

36:                                               ; preds = %32, %36
  %37 = phi i64 [ %43, %36 ], [ 0, %32 ]
  %38 = load ptr, ptr %12, align 8, !tbaa !67
  %39 = getelementptr inbounds %struct.Cloth, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct.MFace, ptr %40, i64 %37
  %42 = getelementptr inbounds %struct.MFace, ptr %11, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %41, ptr noundef nonnull align 4 dereferenceable(20) %42, i64 20, i1 false)
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, %26
  br i1 %44, label %45, label %36, !llvm.loop !172

45:                                               ; preds = %36
  %46 = load ptr, ptr %12, align 8, !tbaa !67
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi ptr [ %46, %45 ], [ %29, %32 ]
  %49 = getelementptr inbounds %struct.Cloth, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !131
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %53(ptr noundef nonnull %50) #15
  br label %54

54:                                               ; preds = %47, %52, %34, %21
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !173 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !42
  %3 = fmul <2 x float> %2, zeroinitializer
  store <2 x float> %3, ptr %0, align 4, !tbaa !42
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !42
  %6 = fmul float %5, 0.000000e+00
  store float %6, ptr %4, align 4, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloth_apply_vgroup(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !174 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %155

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = tail call i32 %10(ptr noundef nonnull %1) #15
  %12 = tail call i32 @cloth_uses_vgroup(ptr noundef nonnull %0) #17, !range !120
  %13 = icmp ne i32 %12, 0
  %14 = icmp sgt i32 %11, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %155

16:                                               ; preds = %6
  %17 = load ptr, ptr %8, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 46
  %20 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  br label %21

21:                                               ; preds = %16, %151
  %22 = phi ptr [ %17, %16 ], [ %153, %151 ]
  %23 = phi i32 [ 0, %16 ], [ %152, %151 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.ClothSimSettings, ptr %24, i64 0, i32 29
  %26 = load i32, ptr %25, align 8, !tbaa !47
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ClothSimSettings, ptr %24, i64 0, i32 20
  %31 = load float, ptr %30, align 4, !tbaa !159
  br label %32

32:                                               ; preds = %21, %29
  %33 = phi float [ %31, %29 ], [ 0.000000e+00, %21 ]
  %34 = getelementptr inbounds %struct.ClothVertex, ptr %22, i64 0, i32 9
  store float %33, ptr %34, align 4
  %35 = load i32, ptr %22, align 8, !tbaa !160
  %36 = and i32 %35, -4
  store i32 %36, ptr %22, align 8, !tbaa !160
  %37 = load ptr, ptr %19, align 8, !tbaa !175
  %38 = tail call ptr %37(ptr noundef nonnull %1, i32 noundef %23, i32 noundef 2) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %151, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.MDeformVert, ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !176
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %151

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ClothVertex, ptr %22, i64 0, i32 14
  %46 = getelementptr inbounds %struct.ClothVertex, ptr %22, i64 0, i32 16
  %47 = getelementptr inbounds %struct.ClothVertex, ptr %22, i64 0, i32 15
  %48 = getelementptr inbounds %struct.ClothVertex, ptr %22, i64 0, i32 18
  %49 = load ptr, ptr %18, align 8, !tbaa !34
  br label %50

50:                                               ; preds = %44, %146
  %51 = phi ptr [ %49, %44 ], [ %75, %146 ]
  %52 = phi i64 [ 0, %44 ], [ %147, %146 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !178
  %54 = getelementptr inbounds %struct.MDeformWeight, ptr %53, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !179
  %56 = getelementptr inbounds %struct.ClothSimSettings, ptr %51, i64 0, i32 34
  %57 = load i16, ptr %56, align 8, !tbaa !51
  %58 = sext i16 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.ClothSimSettings, ptr %51, i64 0, i32 29
  %63 = load i32, ptr %62, align 8, !tbaa !47
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.MDeformWeight, ptr %53, i64 %52, i32 1
  %68 = load float, ptr %67, align 4, !tbaa !181
  %69 = tail call float @powf(float noundef %68, float noundef 4.000000e+00) #15
  store float %69, ptr %34, align 4, !tbaa !162
  %70 = fcmp ult float %69, 0x3FEFF7CEE0000000
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %22, align 8, !tbaa !160
  %73 = or i32 %72, 1
  store i32 %73, ptr %22, align 8, !tbaa !160
  br label %74

74:                                               ; preds = %66, %71, %61, %50
  %75 = load ptr, ptr %18, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.ClothSimSettings, ptr %75, i64 0, i32 29
  %77 = load i32, ptr %76, align 8, !tbaa !47
  %78 = and i32 %77, 256
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %38, align 8, !tbaa !178
  %82 = getelementptr inbounds %struct.MDeformWeight, ptr %81, i64 %52
  %83 = load i32, ptr %82, align 4, !tbaa !179
  %84 = getelementptr inbounds %struct.ClothSimSettings, ptr %75, i64 0, i32 35
  %85 = load i16, ptr %84, align 2, !tbaa !141
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %86, -1
  %88 = icmp eq i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.MDeformWeight, ptr %81, i64 %52, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !181
  store float %91, ptr %45, align 8, !tbaa !182
  store float %91, ptr %46, align 8, !tbaa !183
  br label %92

92:                                               ; preds = %89, %80
  %93 = getelementptr inbounds %struct.ClothSimSettings, ptr %75, i64 0, i32 33
  %94 = load i16, ptr %93, align 2, !tbaa !142
  %95 = sext i16 %94 to i32
  %96 = add nsw i32 %95, -1
  %97 = icmp eq i32 %83, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.MDeformWeight, ptr %81, i64 %52, i32 1
  %100 = load float, ptr %99, align 4, !tbaa !181
  store float %100, ptr %47, align 4, !tbaa !184
  br label %101

101:                                              ; preds = %92, %98, %74
  %102 = load ptr, ptr %20, align 8, !tbaa !55
  %103 = getelementptr inbounds %struct.ClothCollSettings, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !58
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %146, label %107

107:                                              ; preds = %101
  %108 = load ptr, ptr %38, align 8, !tbaa !178
  %109 = getelementptr inbounds %struct.MDeformWeight, ptr %108, i64 %52
  %110 = load i32, ptr %109, align 4, !tbaa !179
  %111 = getelementptr inbounds %struct.ClothCollSettings, ptr %102, i64 0, i32 11
  %112 = load i16, ptr %111, align 8, !tbaa !61
  %113 = sext i16 %112 to i32
  %114 = add nsw i32 %113, -1
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.MDeformWeight, ptr %108, i64 %52, i32 1
  %118 = load float, ptr %117, align 4, !tbaa !181
  %119 = fcmp ogt float %118, 0.000000e+00
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, ptr %22, align 8, !tbaa !160
  %122 = or i32 %121, 2
  store i32 %122, ptr %22, align 8, !tbaa !160
  br label %123

123:                                              ; preds = %116, %120, %107
  %124 = getelementptr inbounds %struct.ClothSimSettings, ptr %75, i64 0, i32 36
  %125 = load i16, ptr %124, align 4, !tbaa !52
  %126 = icmp sgt i16 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = zext nneg i16 %125 to i32
  %129 = add nsw i32 %128, -1
  %130 = icmp eq i32 %110, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ClothSimSettings, ptr %75, i64 0, i32 26
  %133 = load float, ptr %132, align 4, !tbaa !185
  %134 = getelementptr inbounds %struct.MDeformWeight, ptr %108, i64 %52, i32 1
  %135 = load float, ptr %134, align 4, !tbaa !181
  %136 = fsub float 1.000000e+00, %135
  %137 = getelementptr inbounds %struct.ClothSimSettings, ptr %75, i64 0, i32 27
  %138 = load float, ptr %137, align 8, !tbaa !186
  %139 = fmul float %135, %138
  %140 = tail call float @llvm.fmuladd.f32(float %133, float %136, float %139)
  br label %144

141:                                              ; preds = %123
  %142 = getelementptr inbounds %struct.ClothSimSettings, ptr %75, i64 0, i32 26
  %143 = load float, ptr %142, align 4, !tbaa !185
  br label %144

144:                                              ; preds = %141, %131
  %145 = phi float [ %140, %131 ], [ %143, %141 ]
  store float %145, ptr %48, align 8, !tbaa !187
  br label %146

146:                                              ; preds = %144, %101, %127
  %147 = add nuw nsw i64 %52, 1
  %148 = load i32, ptr %41, align 8, !tbaa !176
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %147, %149
  br i1 %150, label %50, label %151, !llvm.loop !188

151:                                              ; preds = %146, %40, %32
  %152 = add nuw nsw i32 %23, 1
  %153 = getelementptr inbounds %struct.ClothVertex, ptr %22, i64 1
  %154 = icmp eq i32 %152, %11
  br i1 %154, label %155, label %21, !llvm.loop !189

155:                                              ; preds = %151, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cloth_build_springs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !190 {
  %3 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call i32 %6(ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !191
  %10 = tail call i32 %9(ptr noundef %1) #15
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !170
  %13 = tail call i32 %12(ptr noundef %1) #15
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 32
  %15 = load ptr, ptr %14, align 8, !tbaa !192
  %16 = tail call ptr %15(ptr noundef %1) #15
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = tail call ptr %18(ptr noundef %1) #15
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %492, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Cloth, ptr %4, i64 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.Cloth, ptr %4, i64 0, i32 13
  store ptr null, ptr %23, align 8, !tbaa !137
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %25 = zext i32 %7 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @.str.16) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %492, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %31 = zext i32 %10 to i64
  br label %32

32:                                               ; preds = %29, %116
  %33 = phi i64 [ 0, %29 ], [ %138, %116 ]
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %35 = tail call ptr %34(i64 noundef 116, ptr noundef nonnull @.str.2) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %140, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.MEdge, ptr %16, i64 %33
  %39 = load i32, ptr %38, align 4, !tbaa !193
  %40 = getelementptr inbounds %struct.MEdge, ptr %16, i64 %33, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !195
  tail call fastcc void @spring_verts_ordered_set(ptr noundef nonnull %35, i32 noundef %39, i32 noundef %41) #17
  %42 = load ptr, ptr %30, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.ClothSimSettings, ptr %42, i64 0, i32 29
  %44 = load i32, ptr %43, align 8, !tbaa !47
  %45 = and i32 %44, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.MEdge, ptr %16, i64 %33, i32 4
  %49 = load i16, ptr %48, align 2, !tbaa !196
  %50 = and i16 %49, 128
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 2
  store float 0.000000e+00, ptr %53, align 4, !tbaa !146
  %54 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 9
  store float 1.000000e+00, ptr %54, align 4, !tbaa !149
  %55 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 4
  store i32 32, ptr %55, align 4, !tbaa !147
  %56 = load ptr, ptr %4, align 8, !tbaa !70
  %57 = load i32, ptr %35, align 4, !tbaa !143
  %58 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !145
  %60 = sext i32 %57 to i64
  %61 = sext i32 %59 to i64
  br label %116

62:                                               ; preds = %47, %37
  %63 = getelementptr inbounds %struct.ClothSimSettings, ptr %42, i64 0, i32 36
  %64 = load i16, ptr %63, align 4, !tbaa !52
  %65 = icmp sgt i16 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load ptr, ptr %4, align 8, !tbaa !70
  %68 = load i32, ptr %35, align 4, !tbaa !143
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ClothVertex, ptr %67, i64 %69, i32 18
  %71 = load float, ptr %70, align 8, !tbaa !187
  %72 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !145
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ClothVertex, ptr %67, i64 %74, i32 18
  %76 = load float, ptr %75, align 8, !tbaa !187
  %77 = fadd float %71, %76
  %78 = fmul float %77, 5.000000e-01
  br label %88

79:                                               ; preds = %62
  %80 = getelementptr inbounds %struct.ClothSimSettings, ptr %42, i64 0, i32 26
  %81 = load float, ptr %80, align 4, !tbaa !185
  %82 = load ptr, ptr %4, align 8, !tbaa !70
  %83 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !145
  %85 = load i32, ptr %35, align 4, !tbaa !143
  %86 = sext i32 %84 to i64
  %87 = sext i32 %85 to i64
  br label %88

88:                                               ; preds = %79, %66
  %89 = phi i64 [ %87, %79 ], [ %69, %66 ]
  %90 = phi i64 [ %86, %79 ], [ %74, %66 ]
  %91 = phi ptr [ %82, %79 ], [ %67, %66 ]
  %92 = phi float [ %81, %79 ], [ %78, %66 ]
  %93 = fsub float 1.000000e+00, %92
  %94 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 1
  %95 = getelementptr inbounds %struct.ClothVertex, ptr %91, i64 %90, i32 11
  %96 = load ptr, ptr %95, align 8, !tbaa !154
  %97 = getelementptr inbounds %struct.ClothVertex, ptr %91, i64 %89, i32 11
  %98 = load ptr, ptr %97, align 8, !tbaa !154
  %99 = tail call fastcc float @len_v3v3(ptr noundef %96, ptr noundef %98) #17
  %100 = fmul float %93, %99
  %101 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 2
  store float %100, ptr %101, align 4, !tbaa !146
  %102 = load ptr, ptr %4, align 8, !tbaa !70
  %103 = load i32, ptr %94, align 4, !tbaa !145
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ClothVertex, ptr %102, i64 %104, i32 14
  %106 = load float, ptr %105, align 8, !tbaa !182
  %107 = load i32, ptr %35, align 4, !tbaa !143
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ClothVertex, ptr %102, i64 %108, i32 14
  %110 = load float, ptr %109, align 8, !tbaa !182
  %111 = fadd float %106, %110
  %112 = fmul float %111, 5.000000e-01
  %113 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 9
  store float %112, ptr %113, align 4, !tbaa !149
  %114 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 4
  store i32 2, ptr %114, align 4, !tbaa !147
  %115 = load ptr, ptr %30, align 8, !tbaa !34
  br label %116

116:                                              ; preds = %88, %52
  %117 = phi i64 [ %104, %88 ], [ %61, %52 ]
  %118 = phi i64 [ %108, %88 ], [ %60, %52 ]
  %119 = phi ptr [ %102, %88 ], [ %56, %52 ]
  %120 = phi ptr [ %115, %88 ], [ %42, %52 ]
  %121 = phi float [ %100, %88 ], [ 0.000000e+00, %52 ]
  %122 = getelementptr inbounds %struct.ClothSimSettings, ptr %120, i64 0, i32 14
  %123 = load float, ptr %122, align 4, !tbaa !197
  %124 = fadd float %121, %123
  store float %124, ptr %122, align 4, !tbaa !197
  %125 = getelementptr inbounds %struct.ClothVertex, ptr %119, i64 %118, i32 13
  %126 = load float, ptr %125, align 4, !tbaa !167
  %127 = fadd float %121, %126
  store float %127, ptr %125, align 4, !tbaa !167
  %128 = getelementptr inbounds %struct.ClothVertex, ptr %119, i64 %117, i32 13
  %129 = load float, ptr %128, align 4, !tbaa !167
  %130 = fadd float %121, %129
  store float %130, ptr %128, align 4, !tbaa !167
  %131 = getelementptr inbounds %struct.ClothVertex, ptr %119, i64 %118, i32 17
  %132 = load i32, ptr %131, align 4, !tbaa !198
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %131, align 4, !tbaa !198
  %134 = getelementptr inbounds %struct.ClothVertex, ptr %119, i64 %117, i32 17
  %135 = load i32, ptr %134, align 4, !tbaa !198
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %134, align 4, !tbaa !198
  %137 = getelementptr inbounds %struct.ClothSpring, ptr %35, i64 0, i32 5
  store i32 0, ptr %137, align 4, !tbaa !148
  %138 = add nuw nsw i64 %33, 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %22, ptr noundef nonnull %35) #15
  %139 = icmp eq i64 %138, %31
  br i1 %139, label %141, label %32, !llvm.loop !199

140:                                              ; preds = %32
  tail call fastcc void @cloth_free_errorsprings(ptr noundef nonnull %4, ptr noundef nonnull %27) #17
  br label %492

141:                                              ; preds = %116
  %142 = uitofp i32 %10 to float
  %143 = load ptr, ptr %30, align 8, !tbaa !34
  %144 = getelementptr inbounds %struct.ClothSimSettings, ptr %143, i64 0, i32 14
  %145 = load float, ptr %144, align 4, !tbaa !197
  %146 = fdiv float %145, %142
  store float %146, ptr %144, align 4, !tbaa !197
  %147 = icmp eq i32 %7, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %141
  %149 = load ptr, ptr %4, align 8, !tbaa !70
  br label %156

150:                                              ; preds = %156, %141
  %151 = icmp eq i32 %13, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %150
  %153 = tail call ptr @BLI_edgeset_new_ex(ptr noundef nonnull @__func__.cloth_build_springs, i32 noundef %10) #15
  store ptr %153, ptr %23, align 8, !tbaa !137
  br label %392

154:                                              ; preds = %150
  %155 = zext i32 %13 to i64
  br label %167

156:                                              ; preds = %148, %156
  %157 = phi i64 [ 0, %148 ], [ %165, %156 ]
  %158 = getelementptr inbounds %struct.ClothVertex, ptr %149, i64 %157, i32 13
  %159 = load float, ptr %158, align 4, !tbaa !167
  %160 = fmul float %159, 0x3FDF5C2900000000
  %161 = getelementptr inbounds %struct.ClothVertex, ptr %149, i64 %157, i32 17
  %162 = load i32, ptr %161, align 4, !tbaa !198
  %163 = sitofp i32 %162 to float
  %164 = fdiv float %160, %163
  store float %164, ptr %158, align 4, !tbaa !167
  %165 = add nuw nsw i64 %157, 1
  %166 = icmp eq i64 %165, %25
  br i1 %166, label %150, label %156, !llvm.loop !200

167:                                              ; preds = %154, %306
  %168 = phi i64 [ 0, %154 ], [ %308, %306 ]
  %169 = phi i32 [ 0, %154 ], [ %307, %306 ]
  %170 = getelementptr inbounds %struct.MFace, ptr %19, i64 %168
  %171 = getelementptr inbounds %struct.MFace, ptr %19, i64 %168, i32 3
  %172 = load i32, ptr %171, align 4, !tbaa !77
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %306, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %176 = tail call ptr %175(i64 noundef 116, ptr noundef nonnull @.str.2) #15
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  tail call fastcc void @cloth_free_errorsprings(ptr noundef nonnull %4, ptr noundef nonnull %27) #17
  br label %492

179:                                              ; preds = %174
  %180 = load i32, ptr %170, align 4, !tbaa !73
  %181 = getelementptr inbounds %struct.MFace, ptr %19, i64 %168, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !76
  tail call fastcc void @spring_verts_ordered_set(ptr noundef nonnull %176, i32 noundef %180, i32 noundef %182) #17
  %183 = load ptr, ptr %30, align 8, !tbaa !34
  %184 = getelementptr inbounds %struct.ClothSimSettings, ptr %183, i64 0, i32 36
  %185 = load i16, ptr %184, align 4, !tbaa !52
  %186 = icmp sgt i16 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %179
  %188 = load ptr, ptr %4, align 8, !tbaa !70
  %189 = load i32, ptr %176, align 4, !tbaa !143
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.ClothVertex, ptr %188, i64 %190, i32 18
  %192 = load float, ptr %191, align 8, !tbaa !187
  %193 = getelementptr inbounds %struct.ClothSpring, ptr %176, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !145
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ClothVertex, ptr %188, i64 %195, i32 18
  %197 = load float, ptr %196, align 8, !tbaa !187
  %198 = fadd float %192, %197
  %199 = fmul float %198, 5.000000e-01
  br label %209

200:                                              ; preds = %179
  %201 = getelementptr inbounds %struct.ClothSimSettings, ptr %183, i64 0, i32 26
  %202 = load float, ptr %201, align 4, !tbaa !185
  %203 = load ptr, ptr %4, align 8, !tbaa !70
  %204 = getelementptr inbounds %struct.ClothSpring, ptr %176, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !145
  %206 = load i32, ptr %176, align 4, !tbaa !143
  %207 = sext i32 %205 to i64
  %208 = sext i32 %206 to i64
  br label %209

209:                                              ; preds = %200, %187
  %210 = phi i64 [ %208, %200 ], [ %190, %187 ]
  %211 = phi i64 [ %207, %200 ], [ %195, %187 ]
  %212 = phi ptr [ %203, %200 ], [ %188, %187 ]
  %213 = phi float [ %202, %200 ], [ %199, %187 ]
  %214 = fsub float 1.000000e+00, %213
  %215 = getelementptr inbounds %struct.ClothSpring, ptr %176, i64 0, i32 1
  %216 = getelementptr inbounds %struct.ClothVertex, ptr %212, i64 %211, i32 11
  %217 = load ptr, ptr %216, align 8, !tbaa !154
  %218 = getelementptr inbounds %struct.ClothVertex, ptr %212, i64 %210, i32 11
  %219 = load ptr, ptr %218, align 8, !tbaa !154
  %220 = tail call fastcc float @len_v3v3(ptr noundef %217, ptr noundef %219) #17
  %221 = fmul float %214, %220
  %222 = getelementptr inbounds %struct.ClothSpring, ptr %176, i64 0, i32 2
  store float %221, ptr %222, align 4, !tbaa !146
  %223 = getelementptr inbounds %struct.ClothSpring, ptr %176, i64 0, i32 4
  store i32 4, ptr %223, align 4, !tbaa !147
  %224 = load ptr, ptr %4, align 8, !tbaa !70
  %225 = load i32, ptr %215, align 4, !tbaa !145
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ClothVertex, ptr %224, i64 %226, i32 16
  %228 = load float, ptr %227, align 8, !tbaa !183
  %229 = load i32, ptr %176, align 4, !tbaa !143
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.ClothVertex, ptr %224, i64 %230, i32 16
  %232 = load float, ptr %231, align 8, !tbaa !183
  %233 = fadd float %228, %232
  %234 = fmul float %233, 5.000000e-01
  %235 = getelementptr inbounds %struct.ClothSpring, ptr %176, i64 0, i32 9
  store float %234, ptr %235, align 4, !tbaa !149
  %236 = getelementptr inbounds ptr, ptr %27, i64 %230
  tail call void @BLI_linklist_append(ptr noundef nonnull %236, ptr noundef nonnull %176) #15
  %237 = load i32, ptr %215, align 4, !tbaa !145
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %27, i64 %238
  tail call void @BLI_linklist_append(ptr noundef nonnull %239, ptr noundef nonnull %176) #15
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %22, ptr noundef nonnull %176) #15
  %240 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %241 = tail call ptr %240(i64 noundef 116, ptr noundef nonnull @.str.2) #15
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %209
  tail call fastcc void @cloth_free_errorsprings(ptr noundef nonnull %4, ptr noundef nonnull %27) #17
  br label %492

244:                                              ; preds = %209
  %245 = getelementptr inbounds %struct.MFace, ptr %19, i64 %168, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !75
  %247 = load i32, ptr %171, align 4, !tbaa !77
  tail call fastcc void @spring_verts_ordered_set(ptr noundef nonnull %241, i32 noundef %246, i32 noundef %247) #17
  %248 = load ptr, ptr %30, align 8, !tbaa !34
  %249 = getelementptr inbounds %struct.ClothSimSettings, ptr %248, i64 0, i32 36
  %250 = load i16, ptr %249, align 4, !tbaa !52
  %251 = icmp sgt i16 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %244
  %253 = load ptr, ptr %4, align 8, !tbaa !70
  %254 = load i32, ptr %241, align 4, !tbaa !143
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.ClothVertex, ptr %253, i64 %255, i32 18
  %257 = load float, ptr %256, align 8, !tbaa !187
  %258 = getelementptr inbounds %struct.ClothSpring, ptr %241, i64 0, i32 1
  %259 = load i32, ptr %258, align 4, !tbaa !145
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.ClothVertex, ptr %253, i64 %260, i32 18
  %262 = load float, ptr %261, align 8, !tbaa !187
  %263 = fadd float %257, %262
  %264 = fmul float %263, 5.000000e-01
  br label %274

265:                                              ; preds = %244
  %266 = getelementptr inbounds %struct.ClothSimSettings, ptr %248, i64 0, i32 26
  %267 = load float, ptr %266, align 4, !tbaa !185
  %268 = load ptr, ptr %4, align 8, !tbaa !70
  %269 = getelementptr inbounds %struct.ClothSpring, ptr %241, i64 0, i32 1
  %270 = load i32, ptr %269, align 4, !tbaa !145
  %271 = load i32, ptr %241, align 4, !tbaa !143
  %272 = sext i32 %270 to i64
  %273 = sext i32 %271 to i64
  br label %274

274:                                              ; preds = %265, %252
  %275 = phi i64 [ %273, %265 ], [ %255, %252 ]
  %276 = phi i64 [ %272, %265 ], [ %260, %252 ]
  %277 = phi ptr [ %268, %265 ], [ %253, %252 ]
  %278 = phi float [ %267, %265 ], [ %264, %252 ]
  %279 = fsub float 1.000000e+00, %278
  %280 = getelementptr inbounds %struct.ClothSpring, ptr %241, i64 0, i32 1
  %281 = getelementptr inbounds %struct.ClothVertex, ptr %277, i64 %276, i32 11
  %282 = load ptr, ptr %281, align 8, !tbaa !154
  %283 = getelementptr inbounds %struct.ClothVertex, ptr %277, i64 %275, i32 11
  %284 = load ptr, ptr %283, align 8, !tbaa !154
  %285 = tail call fastcc float @len_v3v3(ptr noundef %282, ptr noundef %284) #17
  %286 = fmul float %279, %285
  %287 = getelementptr inbounds %struct.ClothSpring, ptr %241, i64 0, i32 2
  store float %286, ptr %287, align 4, !tbaa !146
  %288 = getelementptr inbounds %struct.ClothSpring, ptr %241, i64 0, i32 4
  store i32 4, ptr %288, align 4, !tbaa !147
  %289 = load ptr, ptr %4, align 8, !tbaa !70
  %290 = load i32, ptr %280, align 4, !tbaa !145
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.ClothVertex, ptr %289, i64 %291, i32 16
  %293 = load float, ptr %292, align 8, !tbaa !183
  %294 = load i32, ptr %241, align 4, !tbaa !143
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.ClothVertex, ptr %289, i64 %295, i32 16
  %297 = load float, ptr %296, align 8, !tbaa !183
  %298 = fadd float %293, %297
  %299 = fmul float %298, 5.000000e-01
  %300 = getelementptr inbounds %struct.ClothSpring, ptr %241, i64 0, i32 9
  store float %299, ptr %300, align 4, !tbaa !149
  %301 = getelementptr inbounds ptr, ptr %27, i64 %295
  tail call void @BLI_linklist_append(ptr noundef nonnull %301, ptr noundef nonnull %241) #15
  %302 = load i32, ptr %280, align 4, !tbaa !145
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %27, i64 %303
  tail call void @BLI_linklist_append(ptr noundef nonnull %304, ptr noundef nonnull %241) #15
  %305 = add i32 %169, 2
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %22, ptr noundef nonnull %241) #15
  br label %306

306:                                              ; preds = %167, %274
  %307 = phi i32 [ %305, %274 ], [ %169, %167 ]
  %308 = add nuw nsw i64 %168, 1
  %309 = icmp eq i64 %308, %155
  br i1 %309, label %310, label %167, !llvm.loop !201

310:                                              ; preds = %306
  %311 = tail call ptr @BLI_edgeset_new_ex(ptr noundef nonnull @__func__.cloth_build_springs, i32 noundef %10) #15
  store ptr %311, ptr %23, align 8, !tbaa !137
  br i1 %151, label %392, label %312

312:                                              ; preds = %310
  %313 = add i32 %307, %10
  %314 = load ptr, ptr %22, align 8, !tbaa !128
  %315 = icmp ult i32 %10, %313
  %316 = icmp ne ptr %314, null
  %317 = select i1 %315, i1 %316, i1 false
  br i1 %317, label %318, label %452

318:                                              ; preds = %312, %385
  %319 = phi ptr [ %388, %385 ], [ %314, %312 ]
  %320 = phi i32 [ %387, %385 ], [ %10, %312 ]
  %321 = phi i32 [ %386, %385 ], [ 0, %312 ]
  %322 = getelementptr inbounds %struct.LinkNode, ptr %319, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !132
  %324 = getelementptr inbounds %struct.ClothSpring, ptr %323, i64 0, i32 1
  %325 = load i32, ptr %324, align 4, !tbaa !145
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %27, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !128
  %329 = icmp eq ptr %328, null
  br i1 %329, label %385, label %330

330:                                              ; preds = %318, %381
  %331 = phi ptr [ %383, %381 ], [ %328, %318 ]
  %332 = phi i32 [ %382, %381 ], [ %321, %318 ]
  %333 = getelementptr inbounds %struct.LinkNode, ptr %331, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !132
  %335 = load i32, ptr %334, align 4, !tbaa !143
  %336 = load i32, ptr %324, align 4, !tbaa !145
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %330
  %339 = getelementptr inbounds %struct.ClothSpring, ptr %334, i64 0, i32 1
  %340 = load i32, ptr %339, align 4, !tbaa !145
  br label %341

341:                                              ; preds = %330, %338
  %342 = phi i32 [ %340, %338 ], [ %335, %330 ]
  %343 = load i32, ptr %323, align 4, !tbaa !143
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %381, label %345

345:                                              ; preds = %341
  %346 = tail call zeroext i8 @BLI_edgeset_haskey(ptr noundef %311, i32 noundef %343, i32 noundef %342) #15
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %381

348:                                              ; preds = %345
  %349 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %350 = tail call ptr %349(i64 noundef 116, ptr noundef nonnull @.str.2) #15
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  tail call fastcc void @cloth_free_errorsprings(ptr noundef nonnull %4, ptr noundef nonnull %27) #17
  br label %492

353:                                              ; preds = %348
  %354 = load i32, ptr %323, align 4, !tbaa !143
  tail call fastcc void @spring_verts_ordered_set(ptr noundef nonnull %350, i32 noundef %354, i32 noundef %342) #17
  %355 = load ptr, ptr %4, align 8, !tbaa !70
  %356 = getelementptr inbounds %struct.ClothSpring, ptr %350, i64 0, i32 1
  %357 = load i32, ptr %356, align 4, !tbaa !145
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.ClothVertex, ptr %355, i64 %358, i32 11
  %360 = load ptr, ptr %359, align 8, !tbaa !154
  %361 = load i32, ptr %350, align 4, !tbaa !143
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.ClothVertex, ptr %355, i64 %362, i32 11
  %364 = load ptr, ptr %363, align 8, !tbaa !154
  %365 = tail call fastcc float @len_v3v3(ptr noundef %360, ptr noundef %364) #17
  %366 = getelementptr inbounds %struct.ClothSpring, ptr %350, i64 0, i32 2
  store float %365, ptr %366, align 4, !tbaa !146
  %367 = getelementptr inbounds %struct.ClothSpring, ptr %350, i64 0, i32 4
  store i32 8, ptr %367, align 4, !tbaa !147
  %368 = load ptr, ptr %4, align 8, !tbaa !70
  %369 = load i32, ptr %356, align 4, !tbaa !145
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.ClothVertex, ptr %368, i64 %370, i32 15
  %372 = load float, ptr %371, align 4, !tbaa !184
  %373 = load i32, ptr %350, align 4, !tbaa !143
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.ClothVertex, ptr %368, i64 %374, i32 15
  %376 = load float, ptr %375, align 4, !tbaa !184
  %377 = fadd float %372, %376
  %378 = fmul float %377, 5.000000e-01
  %379 = getelementptr inbounds %struct.ClothSpring, ptr %350, i64 0, i32 9
  store float %378, ptr %379, align 4, !tbaa !149
  tail call void @BLI_edgeset_insert(ptr noundef %311, i32 noundef %373, i32 noundef %369) #15
  %380 = add i32 %332, 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %22, ptr noundef nonnull %350) #15
  br label %381

381:                                              ; preds = %353, %345, %341
  %382 = phi i32 [ %332, %345 ], [ %380, %353 ], [ %332, %341 ]
  %383 = load ptr, ptr %331, align 8, !tbaa !128
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %330, !llvm.loop !202

385:                                              ; preds = %381, %318
  %386 = phi i32 [ %321, %318 ], [ %382, %381 ]
  %387 = add nuw i32 %320, 1
  %388 = load ptr, ptr %319, align 8, !tbaa !128
  %389 = icmp ult i32 %387, %313
  %390 = icmp ne ptr %388, null
  %391 = select i1 %389, i1 %390, i1 false
  br i1 %391, label %318, label %452, !llvm.loop !203

392:                                              ; preds = %152, %310
  %393 = phi ptr [ %153, %152 ], [ %311, %310 ]
  %394 = phi i32 [ 0, %152 ], [ %307, %310 ]
  %395 = icmp ugt i32 %10, 2
  br i1 %395, label %396, label %452

396:                                              ; preds = %392
  %397 = load ptr, ptr %22, align 8, !tbaa !131
  %398 = load ptr, ptr %397, align 8, !tbaa !134
  %399 = icmp eq ptr %398, null
  br i1 %399, label %452, label %400

400:                                              ; preds = %396, %445
  %401 = phi ptr [ %448, %445 ], [ %398, %396 ]
  %402 = phi ptr [ %447, %445 ], [ %397, %396 ]
  %403 = phi i32 [ %446, %445 ], [ 0, %396 ]
  %404 = getelementptr inbounds %struct.LinkNode, ptr %402, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !132
  %406 = getelementptr inbounds %struct.LinkNode, ptr %401, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !132
  %408 = load i32, ptr %405, align 4, !tbaa !143
  %409 = getelementptr inbounds %struct.ClothSpring, ptr %407, i64 0, i32 1
  %410 = load i32, ptr %409, align 4, !tbaa !145
  %411 = icmp eq i32 %408, %410
  br i1 %411, label %412, label %445

412:                                              ; preds = %400
  %413 = load ptr, ptr @MEM_callocN, align 8, !tbaa !128
  %414 = tail call ptr %413(i64 noundef 116, ptr noundef nonnull @.str.2) #15
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %412
  tail call fastcc void @cloth_free_errorsprings(ptr noundef nonnull %4, ptr noundef nonnull %27) #17
  br label %492

417:                                              ; preds = %412
  %418 = load i32, ptr %407, align 4, !tbaa !143
  store i32 %418, ptr %414, align 4, !tbaa !143
  %419 = getelementptr inbounds %struct.ClothSpring, ptr %405, i64 0, i32 1
  %420 = load i32, ptr %419, align 4, !tbaa !145
  %421 = getelementptr inbounds %struct.ClothSpring, ptr %414, i64 0, i32 1
  store i32 %420, ptr %421, align 4, !tbaa !145
  %422 = load ptr, ptr %4, align 8, !tbaa !70
  %423 = sext i32 %420 to i64
  %424 = getelementptr inbounds %struct.ClothVertex, ptr %422, i64 %423, i32 11
  %425 = load ptr, ptr %424, align 8, !tbaa !154
  %426 = sext i32 %418 to i64
  %427 = getelementptr inbounds %struct.ClothVertex, ptr %422, i64 %426, i32 11
  %428 = load ptr, ptr %427, align 8, !tbaa !154
  %429 = tail call fastcc float @len_v3v3(ptr noundef %425, ptr noundef %428) #17
  %430 = getelementptr inbounds %struct.ClothSpring, ptr %414, i64 0, i32 2
  store float %429, ptr %430, align 4, !tbaa !146
  %431 = getelementptr inbounds %struct.ClothSpring, ptr %414, i64 0, i32 4
  store i32 8, ptr %431, align 4, !tbaa !147
  %432 = load ptr, ptr %4, align 8, !tbaa !70
  %433 = load i32, ptr %421, align 4, !tbaa !145
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.ClothVertex, ptr %432, i64 %434, i32 15
  %436 = load float, ptr %435, align 4, !tbaa !184
  %437 = load i32, ptr %414, align 4, !tbaa !143
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.ClothVertex, ptr %432, i64 %438, i32 15
  %440 = load float, ptr %439, align 4, !tbaa !184
  %441 = fadd float %436, %440
  %442 = fmul float %441, 5.000000e-01
  %443 = getelementptr inbounds %struct.ClothSpring, ptr %414, i64 0, i32 9
  store float %442, ptr %443, align 4, !tbaa !149
  %444 = add i32 %403, 1
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %22, ptr noundef nonnull %414) #15
  br label %445

445:                                              ; preds = %417, %400
  %446 = phi i32 [ %444, %417 ], [ %403, %400 ]
  %447 = load ptr, ptr %402, align 8, !tbaa !134
  %448 = load ptr, ptr %401, align 8, !tbaa !134
  %449 = icmp ne ptr %447, null
  %450 = icmp ne ptr %448, null
  %451 = select i1 %449, i1 %450, i1 false
  br i1 %451, label %400, label %452, !llvm.loop !204

452:                                              ; preds = %385, %445, %312, %396, %392
  %453 = phi ptr [ %393, %392 ], [ %393, %396 ], [ %311, %312 ], [ %393, %445 ], [ %311, %385 ]
  %454 = phi i32 [ %394, %392 ], [ %394, %396 ], [ %307, %312 ], [ %394, %445 ], [ %307, %385 ]
  %455 = phi i32 [ 0, %392 ], [ 0, %396 ], [ 0, %312 ], [ %446, %445 ], [ %386, %385 ]
  %456 = tail call i32 @llvm.umax.i32(i32 %10, i32 1)
  %457 = zext i32 %456 to i64
  br label %461

458:                                              ; preds = %461
  br i1 %151, label %488, label %459

459:                                              ; preds = %458
  %460 = zext i32 %13 to i64
  br label %470

461:                                              ; preds = %452, %461
  %462 = phi i64 [ 0, %452 ], [ %468, %461 ]
  %463 = getelementptr inbounds %struct.MEdge, ptr %16, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !193
  %465 = getelementptr inbounds %struct.MEdge, ptr %16, i64 %462, i32 1
  %466 = load i32, ptr %465, align 4, !tbaa !195
  %467 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %453, i32 noundef %464, i32 noundef %466) #15
  %468 = add nuw nsw i64 %462, 1
  %469 = icmp eq i64 %468, %457
  br i1 %469, label %458, label %461, !llvm.loop !205

470:                                              ; preds = %459, %485
  %471 = phi i64 [ 0, %459 ], [ %486, %485 ]
  %472 = getelementptr inbounds %struct.MFace, ptr %19, i64 %471, i32 3
  %473 = load i32, ptr %472, align 4, !tbaa !77
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %485, label %475

475:                                              ; preds = %470
  %476 = getelementptr inbounds %struct.MFace, ptr %19, i64 %471
  %477 = load i32, ptr %476, align 4, !tbaa !73
  %478 = getelementptr inbounds %struct.MFace, ptr %19, i64 %471, i32 2
  %479 = load i32, ptr %478, align 4, !tbaa !76
  %480 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %453, i32 noundef %477, i32 noundef %479) #15
  %481 = getelementptr inbounds %struct.MFace, ptr %19, i64 %471, i32 1
  %482 = load i32, ptr %481, align 4, !tbaa !75
  %483 = load i32, ptr %472, align 4, !tbaa !77
  %484 = tail call zeroext i8 @BLI_edgeset_add(ptr noundef %453, i32 noundef %482, i32 noundef %483) #15
  br label %485

485:                                              ; preds = %470, %475
  %486 = add nuw nsw i64 %471, 1
  %487 = icmp eq i64 %486, %460
  br i1 %487, label %488, label %470, !llvm.loop !206

488:                                              ; preds = %485, %458
  %489 = add i32 %454, %10
  %490 = add i32 %489, %455
  %491 = getelementptr inbounds %struct.Cloth, ptr %4, i64 0, i32 3
  store i32 %490, ptr %491, align 4, !tbaa !136
  tail call fastcc void @cloth_free_edgelist(ptr noundef nonnull %27, i32 noundef %7) #17
  br label %492

492:                                              ; preds = %21, %2, %488, %416, %352, %243, %178, %140
  %493 = phi i32 [ 0, %140 ], [ 0, %243 ], [ 0, %178 ], [ 0, %352 ], [ 1, %488 ], [ 0, %416 ], [ 0, %2 ], [ 0, %21 ]
  ret i32 %493
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bvhtree_build_from_cloth(ptr noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !207 {
  %3 = alloca [12 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.Cloth, ptr %7, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Cloth, ptr %7, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = tail call ptr @BLI_bvhtree_new(i32 noundef %12, float noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 26) #15
  %18 = load i32, ptr %11, align 8, !tbaa !72
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 3
  %22 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 6
  %23 = getelementptr inbounds [12 x float], ptr %3, i64 0, i64 9
  br label %24

24:                                               ; preds = %20, %44
  %25 = phi ptr [ %16, %20 ], [ %47, %44 ]
  %26 = phi i32 [ 0, %20 ], [ %46, %44 ]
  %27 = load i32, ptr %25, align 4, !tbaa !73
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ClothVertex, ptr %10, i64 %28, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %29) #17
  %30 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !75
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ClothVertex, ptr %10, i64 %32, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %33) #17
  %34 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !76
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ClothVertex, ptr %10, i64 %36, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %37) #17
  %38 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !77
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %24
  %42 = zext i32 %39 to i64
  %43 = getelementptr inbounds %struct.ClothVertex, ptr %10, i64 %42, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %43) #17
  br label %44

44:                                               ; preds = %41, %24
  %45 = phi i32 [ 4, %41 ], [ 3, %24 ]
  call void @BLI_bvhtree_insert(ptr noundef %17, i32 noundef %26, ptr noundef nonnull %3, i32 noundef %45) #15
  %46 = add nuw i32 %26, 1
  %47 = getelementptr inbounds %struct.MFace, ptr %25, i64 1
  %48 = load i32, ptr %11, align 8, !tbaa !72
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %24, label %50, !llvm.loop !208

50:                                               ; preds = %44, %14
  call void @BLI_bvhtree_balance(ptr noundef %17) #15
  br label %51

51:                                               ; preds = %9, %5, %2, %50
  %52 = phi ptr [ %17, %50 ], [ null, %2 ], [ null, %5 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bvhselftree_build_from_cloth(ptr noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !209 {
  %3 = alloca [12 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Cloth, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !70
  %15 = tail call ptr @BLI_bvhtree_new(i32 noundef %11, float noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 6) #15
  %16 = load i32, ptr %10, align 8, !tbaa !82
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %23, %18 ], [ %14, %13 ]
  %20 = phi i32 [ %22, %18 ], [ 0, %13 ]
  %21 = getelementptr inbounds %struct.ClothVertex, ptr %19, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %21) #17
  call void @BLI_bvhtree_insert(ptr noundef %15, i32 noundef %20, ptr noundef nonnull %3, i32 noundef 1) #15
  %22 = add nuw i32 %20, 1
  %23 = getelementptr inbounds %struct.ClothVertex, ptr %19, i64 1
  %24 = load i32, ptr %10, align 8, !tbaa !82
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %18, label %26, !llvm.loop !210

26:                                               ; preds = %18, %13
  call void @BLI_bvhtree_balance(ptr noundef %15) #15
  br label %27

27:                                               ; preds = %9, %5, %2, %26
  %28 = phi ptr [ %15, %26 ], [ null, %2 ], [ null, %5 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  ret ptr %28
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @spring_verts_ordered_set(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !211 {
  %4 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  store i32 %4, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ClothSpring, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !212 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloth_free_errorsprings(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !213 {
  %3 = getelementptr inbounds %struct.Cloth, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.LinkNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %10(ptr noundef %9) #15
  %11 = load ptr, ptr %7, align 8, !tbaa !134
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !214

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 8, !tbaa !131
  tail call void @BLI_linklist_free(ptr noundef %14, ptr noundef null) #15
  store ptr null, ptr %3, align 8, !tbaa !131
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.Cloth, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !82
  tail call fastcc void @cloth_free_edgelist(ptr noundef %1, i32 noundef %17) #17
  %18 = getelementptr inbounds %struct.Cloth, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !137
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void @BLI_edgeset_free(ptr noundef nonnull %19) #15
  store ptr null, ptr %18, align 8, !tbaa !137
  br label %22

22:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_edgeset_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_edgeset_haskey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_edgeset_insert(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_edgeset_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloth_free_edgelist(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !215 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  tail call void @BLI_linklist_free(ptr noundef %9, ptr noundef null) #15
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !216

12:                                               ; preds = %6, %2
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !128
  tail call void %13(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !217 {
  %4 = load float, ptr %1, align 4, !tbaa !42
  %5 = load float, ptr %2, align 4, !tbaa !42
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !42
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !42
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !42
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !42
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !218 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #15
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !219 {
  %3 = load float, ptr %0, align 4, !tbaa !42
  %4 = load float, ptr %1, align 4, !tbaa !42
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !42
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !42
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cloth_update_springs(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !220 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.Cloth, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = icmp eq ptr %5, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %1, %75
  %8 = phi ptr [ %76, %75 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.LinkNode, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.ClothSpring, ptr %10, i64 0, i32 9
  store float 0.000000e+00, ptr %11, align 4, !tbaa !149
  %12 = getelementptr inbounds %struct.ClothSpring, ptr %10, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !147
  %14 = add i32 %13, -2
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 31)
  switch i32 %15, label %75 [
    i32 0, label %16
    i32 1, label %29
    i32 3, label %42
    i32 7, label %55
  ]

16:                                               ; preds = %7
  %17 = load ptr, ptr %3, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.ClothSpring, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !145
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ClothVertex, ptr %17, i64 %20, i32 14
  %22 = load float, ptr %21, align 8, !tbaa !182
  %23 = load i32, ptr %10, align 4, !tbaa !143
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ClothVertex, ptr %17, i64 %24, i32 14
  %26 = load float, ptr %25, align 8, !tbaa !182
  %27 = fadd float %22, %26
  %28 = fmul float %27, 5.000000e-01
  store float %28, ptr %11, align 4, !tbaa !149
  br label %75

29:                                               ; preds = %7
  %30 = load ptr, ptr %3, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.ClothSpring, ptr %10, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !145
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ClothVertex, ptr %30, i64 %33, i32 16
  %35 = load float, ptr %34, align 8, !tbaa !183
  %36 = load i32, ptr %10, align 4, !tbaa !143
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ClothVertex, ptr %30, i64 %37, i32 16
  %39 = load float, ptr %38, align 8, !tbaa !183
  %40 = fadd float %35, %39
  %41 = fmul float %40, 5.000000e-01
  store float %41, ptr %11, align 4, !tbaa !149
  br label %75

42:                                               ; preds = %7
  %43 = load ptr, ptr %3, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.ClothSpring, ptr %10, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !145
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ClothVertex, ptr %43, i64 %46, i32 15
  %48 = load float, ptr %47, align 4, !tbaa !184
  %49 = load i32, ptr %10, align 4, !tbaa !143
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ClothVertex, ptr %43, i64 %50, i32 15
  %52 = load float, ptr %51, align 4, !tbaa !184
  %53 = fadd float %48, %52
  %54 = fmul float %53, 5.000000e-01
  store float %54, ptr %11, align 4, !tbaa !149
  br label %75

55:                                               ; preds = %7
  %56 = load ptr, ptr %3, align 8, !tbaa !70
  %57 = load i32, ptr %10, align 4, !tbaa !143
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ClothVertex, ptr %56, i64 %58
  %60 = load i32, ptr %59, align 8, !tbaa !160
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.ClothVertex, ptr %56, i64 %58, i32 9
  %65 = load float, ptr %64, align 4, !tbaa !162
  %66 = fcmp ogt float %65, 0x3E80000000000000
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ClothSpring, ptr %10, i64 0, i32 5
  %69 = load i32, ptr %68, align 4, !tbaa !148
  %70 = and i32 %69, -3
  store i32 %70, ptr %68, align 4, !tbaa !148
  br label %75

71:                                               ; preds = %63, %55
  %72 = getelementptr inbounds %struct.ClothSpring, ptr %10, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !148
  %74 = or i32 %73, 2
  store i32 %74, ptr %72, align 4, !tbaa !148
  br label %75

75:                                               ; preds = %7, %29, %71, %67, %42, %16
  %76 = load ptr, ptr %8, align 8, !tbaa !128
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %7, !llvm.loop !221

78:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: optsize
declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @implicit_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @implicit_solver(ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @implicit_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

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
!44 = !{!45, !40, i64 124}
!45 = !{!"ClothSimSettings", !37, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !38, i64 20, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !38, i64 156, !37, i64 160}
!46 = !{!"short", !38, i64 0}
!47 = !{!45, !40, i64 128}
!48 = !{!45, !46, i64 140}
!49 = !{!45, !40, i64 132}
!50 = !{!45, !40, i64 136}
!51 = !{!45, !46, i64 144}
!52 = !{!45, !46, i64 148}
!53 = !{!45, !46, i64 152}
!54 = !{!45, !46, i64 154}
!55 = !{!35, !37, i64 136}
!56 = !{!57, !46, i64 38}
!57 = !{!"ClothCollSettings", !37, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !46, i64 36, !46, i64 38, !37, i64 40, !46, i64 48, !46, i64 50, !40, i64 52}
!58 = !{!57, !40, i64 32}
!59 = !{!57, !37, i64 0}
!60 = !{!57, !46, i64 36}
!61 = !{!57, !46, i64 48}
!62 = !{!45, !43, i64 84}
!63 = !{!45, !37, i64 160}
!64 = !{!35, !37, i64 144}
!65 = !{!66, !40, i64 20}
!66 = !{!"PointCache", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !46, i64 60, !46, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !41, i64 1288, !37, i64 1304, !37, i64 1312}
!67 = !{!35, !37, i64 120}
!68 = !{!69, !37, i64 32}
!69 = !{!"Cloth", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !46, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84}
!70 = !{!69, !37, i64 0}
!71 = !{!69, !37, i64 48}
!72 = !{!69, !40, i64 24}
!73 = !{!74, !40, i64 0}
!74 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !46, i64 16, !38, i64 18, !38, i64 19}
!75 = !{!74, !40, i64 4}
!76 = !{!74, !40, i64 8}
!77 = !{!74, !40, i64 12}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"cloth.c:copy_v3_v3"}
!81 = !{!69, !37, i64 40}
!82 = !{!69, !40, i64 16}
!83 = distinct !{!83, !79}
!84 = !{!85, !37, i64 176}
!85 = !{!"PTCacheID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192}
!86 = !{!66, !37, i64 1304}
!87 = !{!88, !40, i64 432}
!88 = !{!"Object", !89, i64 0, !37, i64 120, !37, i64 128, !46, i64 136, !46, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !90, i64 312, !37, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !38, i64 1042, !38, i64 1043, !46, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !43, i64 1120, !46, i64 1124, !46, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !46, i64 1162, !38, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !46, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !91, i64 1304, !91, i64 1312, !40, i64 1320, !40, i64 1324, !41, i64 1328, !41, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !41, i64 1400, !37, i64 1416}
!89 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !46, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!90 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!91 = !{!"long", !38, i64 0}
!92 = !{!35, !37, i64 112}
!93 = !{!94, !40, i64 680}
!94 = !{!"Scene", !89, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !46, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !95, i64 280, !104, i64 4264, !41, i64 4296, !41, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !46, i64 4376, !46, i64 4378, !40, i64 4380, !41, i64 4384, !105, i64 4400, !106, i64 4416, !109, i64 4600, !37, i64 4608, !110, i64 4616, !37, i64 4640, !91, i64 4648, !91, i64 4656, !97, i64 4664, !98, i64 4824, !111, i64 4888, !37, i64 4952}
!95 = !{!"RenderData", !96, i64 0, !37, i64 248, !37, i64 256, !99, i64 264, !100, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !43, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !46, i64 432, !46, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !46, i64 456, !46, i64 458, !46, i64 460, !46, i64 462, !46, i64 464, !46, i64 466, !40, i64 468, !46, i64 472, !46, i64 474, !46, i64 476, !46, i64 478, !46, i64 480, !46, i64 482, !40, i64 484, !40, i64 488, !46, i64 492, !46, i64 494, !40, i64 496, !40, i64 500, !46, i64 504, !46, i64 506, !46, i64 508, !46, i64 510, !46, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !46, i64 528, !46, i64 530, !46, i64 532, !46, i64 534, !46, i64 536, !46, i64 538, !46, i64 540, !46, i64 542, !101, i64 544, !101, i64 560, !102, i64 576, !41, i64 592, !46, i64 608, !46, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !40, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !46, i64 648, !46, i64 650, !46, i64 652, !46, i64 654, !46, i64 656, !46, i64 658, !43, i64 660, !43, i64 664, !46, i64 668, !46, i64 670, !43, i64 672, !43, i64 676, !38, i64 680, !40, i64 1704, !46, i64 1708, !46, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !46, i64 2524, !46, i64 2526, !43, i64 2528, !43, i64 2532, !46, i64 2536, !46, i64 2538, !43, i64 2540, !46, i64 2544, !46, i64 2546, !40, i64 2548, !46, i64 2552, !46, i64 2554, !46, i64 2556, !46, i64 2558, !43, i64 2560, !43, i64 2564, !37, i64 2568, !40, i64 2576, !43, i64 2580, !38, i64 2584, !103, i64 2616, !40, i64 3976, !40, i64 3980}
!96 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !46, i64 8, !46, i64 10, !43, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !97, i64 24, !98, i64 184}
!97 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !43, i64 136, !43, i64 140, !37, i64 144, !37, i64 152}
!98 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!99 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !46, i64 48, !46, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!100 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !43, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!101 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!102 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!103 = !{!"BakeData", !96, i64 0, !38, i64 248, !46, i64 1272, !46, i64 1274, !46, i64 1276, !46, i64 1278, !43, i64 1280, !43, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!104 = !{!"AudioData", !40, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !40, i64 16, !46, i64 20, !46, i64 22, !43, i64 24, !43, i64 28}
!105 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!106 = !{!"GameData", !105, i64 0, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !46, i64 32, !38, i64 34, !107, i64 40, !46, i64 64, !46, i64 66, !43, i64 68, !108, i64 72, !43, i64 128, !43, i64 132, !40, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !46, i64 156, !46, i64 158, !46, i64 160, !46, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!107 = !{!"GameDome", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !43, i64 8, !43, i64 12, !37, i64 16}
!108 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !40, i64 40, !43, i64 44, !43, i64 48, !46, i64 52, !46, i64 54}
!109 = !{!"UnitSettings", !43, i64 0, !38, i64 4, !38, i64 5, !46, i64 6}
!110 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!111 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!112 = !{!45, !43, i64 72}
!113 = !{!40, !40, i64 0}
!114 = !{!115, !37, i64 1104}
!115 = !{!"DerivedMesh", !116, i64 0, !116, i64 200, !116, i64 400, !116, i64 600, !116, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !43, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!116 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!117 = !{!66, !40, i64 16}
!118 = !{!66, !40, i64 40}
!119 = !{!45, !43, i64 32}
!120 = !{i32 0, i32 2}
!121 = !{!69, !40, i64 80}
!122 = !{!94, !43, i64 692}
!123 = !{!66, !40, i64 24}
!124 = !{!"cloth.c:do_init_cloth"}
!125 = !{!"cloth.c:do_step_cloth"}
!126 = !{!115, !37, i64 1168}
!127 = distinct !{!127, !79}
!128 = !{!37, !37, i64 0}
!129 = !{!"cloth.c:cloth_to_object"}
!130 = distinct !{!130, !79}
!131 = !{!69, !37, i64 8}
!132 = !{!133, !37, i64 8}
!133 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!134 = !{!133, !37, i64 0}
!135 = distinct !{!135, !79}
!136 = !{!69, !40, i64 20}
!137 = !{!69, !37, i64 72}
!138 = !{!139, !46, i64 2092}
!139 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !41, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !38, i64 2090, !46, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!140 = distinct !{!140, !79}
!141 = !{!45, !46, i64 146}
!142 = !{!45, !46, i64 142}
!143 = !{!144, !40, i64 0}
!144 = !{!"ClothSpring", !40, i64 0, !40, i64 4, !43, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !38, i64 24, !38, i64 60, !38, i64 96, !43, i64 108, !43, i64 112}
!145 = !{!144, !40, i64 4}
!146 = !{!144, !43, i64 8}
!147 = !{!144, !40, i64 16}
!148 = !{!144, !40, i64 20}
!149 = !{!144, !43, i64 108}
!150 = !{!"cloth.c:cloth_from_object"}
!151 = !{!69, !38, i64 28}
!152 = !{!45, !46, i64 150}
!153 = !{!115, !37, i64 1320}
!154 = !{!155, !37, i64 112}
!155 = !{!"ClothVertex", !40, i64 0, !38, i64 4, !38, i64 16, !38, i64 28, !38, i64 40, !38, i64 52, !38, i64 64, !38, i64 76, !43, i64 88, !43, i64 92, !38, i64 96, !37, i64 112, !40, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !40, i64 140, !43, i64 144}
!156 = !{!45, !43, i64 36}
!157 = !{!155, !43, i64 88}
!158 = !{!155, !40, i64 120}
!159 = !{!45, !43, i64 92}
!160 = !{!155, !40, i64 0}
!161 = distinct !{!161, !79}
!162 = !{!155, !43, i64 92}
!163 = distinct !{!163, !79}
!164 = !{!57, !43, i64 8}
!165 = !{!57, !43, i64 28}
!166 = !{!57, !43, i64 20}
!167 = !{!155, !43, i64 124}
!168 = distinct !{!168, !79}
!169 = !{!"cloth.c:cloth_from_mesh"}
!170 = !{!115, !37, i64 1120}
!171 = !{!115, !37, i64 1184}
!172 = distinct !{!172, !79}
!173 = !{!"cloth.c:mul_v3_fl"}
!174 = !{!"cloth.c:cloth_apply_vgroup"}
!175 = !{!115, !37, i64 1288}
!176 = !{!177, !40, i64 8}
!177 = !{!"MDeformVert", !37, i64 0, !40, i64 8, !40, i64 12}
!178 = !{!177, !37, i64 0}
!179 = !{!180, !40, i64 0}
!180 = !{!"MDeformWeight", !40, i64 0, !43, i64 4}
!181 = !{!180, !43, i64 4}
!182 = !{!155, !43, i64 128}
!183 = !{!155, !43, i64 136}
!184 = !{!155, !43, i64 132}
!185 = !{!45, !43, i64 116}
!186 = !{!45, !43, i64 120}
!187 = !{!155, !43, i64 144}
!188 = distinct !{!188, !79}
!189 = distinct !{!189, !79}
!190 = !{!"cloth.c:cloth_build_springs"}
!191 = !{!115, !37, i64 1112}
!192 = !{!115, !37, i64 1176}
!193 = !{!194, !40, i64 0}
!194 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !46, i64 10}
!195 = !{!194, !40, i64 4}
!196 = !{!194, !46, i64 10}
!197 = !{!45, !43, i64 68}
!198 = !{!155, !40, i64 140}
!199 = distinct !{!199, !79}
!200 = distinct !{!200, !79}
!201 = distinct !{!201, !79}
!202 = distinct !{!202, !79}
!203 = distinct !{!203, !79}
!204 = distinct !{!204, !79}
!205 = distinct !{!205, !79}
!206 = distinct !{!206, !79}
!207 = !{!"cloth.c:bvhtree_build_from_cloth"}
!208 = distinct !{!208, !79}
!209 = !{!"cloth.c:bvhselftree_build_from_cloth"}
!210 = distinct !{!210, !79}
!211 = !{!"cloth.c:spring_verts_ordered_set"}
!212 = !{!"cloth.c:len_v3v3"}
!213 = !{!"cloth.c:cloth_free_errorsprings"}
!214 = distinct !{!214, !79}
!215 = !{!"cloth.c:cloth_free_edgelist"}
!216 = distinct !{!216, !79}
!217 = !{!"cloth.c:sub_v3_v3v3"}
!218 = !{!"cloth.c:len_v3"}
!219 = !{!"cloth.c:dot_v3v3"}
!220 = !{!"cloth.c:cloth_update_springs"}
!221 = distinct !{!221, !79}
