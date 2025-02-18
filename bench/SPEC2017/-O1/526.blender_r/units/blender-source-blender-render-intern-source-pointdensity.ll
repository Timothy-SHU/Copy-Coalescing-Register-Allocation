; ModuleID = 'blender/source/blender/render/intern/source/pointdensity.c'
source_filename = "blender/source/blender/render/intern/source/pointdensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.PointDensity = type { i16, i16, float, float, i16, i16, i32, i32, ptr, i32, i16, i16, ptr, ptr, float, i16, i16, i16, [3 x i16], float, float, float, float, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.PointDensityRangeData = type { ptr, float, ptr, ptr, float, i16, i16, ptr, i32, i32, ptr, float }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }

@.str = private unnamed_addr constant [24 x i8] c"Caching Point Densities\00", align 1
@R = external local_unnamed_addr global %struct.Render, align 8
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"particle point data\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @cache_pointdensity(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.ParticleKey, align 4
  %5 = alloca %struct.ParticleSimulationData, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 58
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %315, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %15) #6
  store ptr null, ptr %14, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !46
  switch i16 %20, label %315 [
    i16 0, label %21
    i16 1, label %250
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %315, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %315, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 109
  %31 = add nsw i32 %27, -1
  %32 = tail call ptr @BLI_findlink(ptr noundef nonnull %30, i32 noundef %31) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %315, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = tail call float @BKE_scene_frame_get(ptr noundef %36) #6
  %38 = load i16, ptr %19, align 4, !tbaa !46
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 16
  %42 = load i16, ptr %41, align 2, !tbaa !64
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !65
  %47 = icmp eq i16 %46, 6
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 5
  %50 = load i16, ptr %49, align 2, !tbaa !66
  %51 = and i16 %50, -2
  %52 = icmp eq i16 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %44, %40
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ 1, %53 ], [ 0, %48 ]
  %56 = icmp eq i16 %42, 2
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 5
  %59 = load i16, ptr %58, align 2, !tbaa !66
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 1
  %63 = load i16, ptr %62, align 2, !tbaa !65
  %64 = icmp eq i16 %63, 5
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57, %54
  %66 = or disjoint i32 %55, 2
  br label %67

67:                                               ; preds = %34, %61, %65
  %68 = phi i32 [ %66, %65 ], [ %55, %61 ], [ 0, %34 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  %69 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %69, ptr noundef nonnull %70) #6
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %74 = load i32, ptr %73, align 4, !tbaa !67
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %76 = load i32, ptr %75, align 8, !tbaa !68
  call void @psys_render_set(ptr noundef nonnull %23, ptr noundef nonnull %32, ptr noundef nonnull %71, ptr noundef nonnull %72, i32 noundef %74, i32 noundef %76, i32 noundef 0) #6
  %77 = load ptr, ptr %35, align 8, !tbaa !49
  %78 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !69
  %79 = or i64 %78, 96
  %80 = call ptr @mesh_create_derived_render(ptr noundef %77, ptr noundef nonnull %23, i64 noundef %79) #6
  %81 = call i32 @psys_check_enabled(ptr noundef nonnull %23, ptr noundef nonnull %32) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %249, label %83

83:                                               ; preds = %67
  %84 = load ptr, ptr %35, align 8, !tbaa !49
  store ptr %84, ptr %5, align 8, !tbaa !71
  %85 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 1
  store ptr %23, ptr %85, align 8, !tbaa !73
  %86 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 2
  store ptr %32, ptr %86, align 8, !tbaa !74
  %87 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 50
  %88 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %87, ptr noundef nonnull %69) #6
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 26
  %90 = load i32, ptr %89, align 8, !tbaa !75
  %91 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 28
  %92 = load i32, ptr %91, align 8, !tbaa !77
  %93 = add i32 %92, %90
  %94 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %5) #6
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 15
  store ptr %94, ptr %95, align 8, !tbaa !78
  %96 = call ptr @BLI_bvhtree_new(i32 noundef %93, float noundef 0.000000e+00, i8 noundef zeroext 4, i8 noundef zeroext 6) #6
  store ptr %96, ptr %14, align 8, !tbaa !44
  %97 = and i32 %68, 1
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 0, i32 3
  %100 = lshr i32 %68, 1
  %101 = add nuw nsw i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %83
  %104 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %105 = shl nuw nsw i32 %101, 2
  %106 = zext nneg i32 %105 to i64
  %107 = sext i32 %93 to i64
  %108 = mul nsw i64 %107, %106
  %109 = call ptr %104(i64 noundef %108, ptr noundef nonnull @.str.1) #6
  %110 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 13
  store ptr %109, ptr %110, align 8, !tbaa !80
  br label %111

111:                                              ; preds = %103, %83
  %112 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 6
  store i32 %93, ptr %112, align 8, !tbaa !81
  %113 = icmp sgt i32 %93, 0
  br i1 %113, label %114, label %242

114:                                              ; preds = %111
  %115 = mul nsw i32 %93, 3
  %116 = select i1 %98, i32 0, i32 %115
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !82
  %119 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 2
  %120 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  %121 = icmp ult i32 %68, 2
  %122 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 4
  %123 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 7
  %124 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 8
  %125 = getelementptr inbounds float, ptr %4, i64 1
  %126 = getelementptr inbounds float, ptr %4, i64 2
  %127 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1
  %128 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1, i64 1
  %129 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1, i64 2
  %130 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  %131 = getelementptr inbounds float, ptr %4, i64 1
  %132 = getelementptr inbounds float, ptr %6, i64 1
  %133 = getelementptr inbounds float, ptr %4, i64 2
  %134 = getelementptr inbounds float, ptr %6, i64 2
  %135 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 10
  %136 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 33
  %137 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 33, i64 1
  %138 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 33, i64 2
  %139 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1
  %140 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 13
  %141 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1, i64 1
  %142 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1, i64 2
  %143 = icmp ult i32 %68, 2
  %144 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  %145 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 13
  %146 = zext nneg i32 %116 to i64
  %147 = zext nneg i32 %93 to i64
  br label %148

148:                                              ; preds = %114, %238
  %149 = phi i64 [ 0, %114 ], [ %239, %238 ]
  %150 = phi ptr [ %118, %114 ], [ %240, %238 ]
  %151 = load ptr, ptr %119, align 8, !tbaa !83
  %152 = getelementptr inbounds %struct.ParticleSettings, ptr %151, i64 0, i32 7
  %153 = load i16, ptr %152, align 8, !tbaa !84
  %154 = icmp eq i16 %153, 2
  br i1 %154, label %155, label %184

155:                                              ; preds = %148
  %156 = load i32, ptr %89, align 8, !tbaa !75
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %149, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load ptr, ptr %123, align 8, !tbaa !86
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds ptr, ptr %160, i64 %149
  br label %172

164:                                              ; preds = %159
  br i1 %158, label %238, label %165

165:                                              ; preds = %155, %164
  %166 = load ptr, ptr %124, align 8, !tbaa !87
  %167 = icmp eq ptr %166, null
  br i1 %167, label %238, label %168

168:                                              ; preds = %165
  %169 = sext i32 %156 to i64
  %170 = sub nsw i64 %149, %169
  %171 = getelementptr inbounds ptr, ptr %166, i64 %170
  br label %172

172:                                              ; preds = %168, %162
  %173 = phi ptr [ %163, %162 ], [ %171, %168 ]
  %174 = load ptr, ptr %173, align 8, !tbaa !79
  %175 = getelementptr inbounds %struct.ParticleCacheKey, ptr %174, i64 0, i32 5
  %176 = load i32, ptr %175, align 4, !tbaa !88
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ParticleCacheKey, ptr %174, i64 %177
  %179 = load float, ptr %178, align 4, !tbaa !90
  store float %179, ptr %4, align 4, !tbaa !90
  %180 = getelementptr inbounds float, ptr %178, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !90
  store float %181, ptr %125, align 4, !tbaa !90
  %182 = getelementptr inbounds float, ptr %178, i64 2
  %183 = load float, ptr %182, align 4, !tbaa !90
  store float %183, ptr %126, align 4, !tbaa !90
  store float 0.000000e+00, ptr %127, align 4, !tbaa !90
  store float 0.000000e+00, ptr %128, align 4, !tbaa !90
  store float 0.000000e+00, ptr %129, align 4, !tbaa !90
  store float 0.000000e+00, ptr %130, align 4, !tbaa !91
  br label %207

184:                                              ; preds = %148
  store float %37, ptr %120, align 4, !tbaa !91
  %185 = trunc i64 %149 to i32
  %186 = call i32 @psys_get_particle_state(ptr noundef nonnull %5, i32 noundef %185, ptr noundef nonnull %4, i32 noundef 0) #6
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %238, label %188

188:                                              ; preds = %184
  br i1 %121, label %207, label %189

189:                                              ; preds = %188
  %190 = load i32, ptr %89, align 8, !tbaa !75
  %191 = sext i32 %190 to i64
  %192 = icmp slt i64 %149, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.ParticleData, ptr %150, i64 0, i32 6
  %195 = load float, ptr %194, align 4, !tbaa !93
  %196 = fsub float %37, %195
  %197 = getelementptr inbounds %struct.ParticleData, ptr %150, i64 0, i32 7
  %198 = load float, ptr %197, align 8, !tbaa !95
  %199 = fdiv float %196, %198
  store float %199, ptr %120, align 4, !tbaa !91
  br label %207

200:                                              ; preds = %189
  %201 = load ptr, ptr %122, align 8, !tbaa !96
  %202 = getelementptr inbounds %struct.ChildParticle, ptr %201, i64 %149
  %203 = sext i32 %190 to i64
  %204 = sub nsw i64 0, %203
  %205 = getelementptr inbounds %struct.ChildParticle, ptr %202, i64 %204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  %206 = call float @psys_get_child_time(ptr noundef nonnull %32, ptr noundef %205, float noundef %37, ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  store float %206, ptr %120, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %207

207:                                              ; preds = %200, %193, %188, %172
  %208 = load float, ptr %4, align 4, !tbaa !90
  store float %208, ptr %6, align 4, !tbaa !90
  %209 = load float, ptr %131, align 4, !tbaa !90
  store float %209, ptr %132, align 4, !tbaa !90
  %210 = load float, ptr %133, align 4, !tbaa !90
  store float %210, ptr %134, align 4, !tbaa !90
  %211 = load i16, ptr %135, align 4, !tbaa !97
  switch i16 %211, label %220 [
    i16 1, label %212
    i16 0, label %213
  ]

212:                                              ; preds = %207
  call void @mul_m4_v3(ptr noundef nonnull %87, ptr noundef nonnull %6) #6
  br label %220

213:                                              ; preds = %207
  %214 = load float, ptr %136, align 4, !tbaa !90
  %215 = fsub float %208, %214
  store float %215, ptr %6, align 4, !tbaa !90
  %216 = load float, ptr %137, align 4, !tbaa !90
  %217 = fsub float %209, %216
  store float %217, ptr %132, align 4, !tbaa !90
  %218 = load float, ptr %138, align 4, !tbaa !90
  %219 = fsub float %210, %218
  store float %219, ptr %134, align 4, !tbaa !90
  br label %220

220:                                              ; preds = %213, %212, %207
  %221 = load ptr, ptr %14, align 8, !tbaa !44
  %222 = trunc i64 %149 to i32
  call void @BLI_bvhtree_insert(ptr noundef %221, i32 noundef %222, ptr noundef nonnull %6, i32 noundef 1) #6
  br i1 %98, label %232, label %223

223:                                              ; preds = %220
  %224 = load float, ptr %139, align 4, !tbaa !90
  %225 = load ptr, ptr %140, align 8, !tbaa !80
  %226 = mul nuw nsw i64 %149, 3
  %227 = getelementptr inbounds float, ptr %225, i64 %226
  store float %224, ptr %227, align 4, !tbaa !90
  %228 = load float, ptr %141, align 4, !tbaa !90
  %229 = getelementptr float, ptr %227, i64 1
  store float %228, ptr %229, align 4, !tbaa !90
  %230 = load float, ptr %142, align 4, !tbaa !90
  %231 = getelementptr float, ptr %227, i64 2
  store float %230, ptr %231, align 4, !tbaa !90
  br label %232

232:                                              ; preds = %223, %220
  br i1 %143, label %238, label %233

233:                                              ; preds = %232
  %234 = load float, ptr %144, align 4, !tbaa !91
  %235 = load ptr, ptr %145, align 8, !tbaa !80
  %236 = getelementptr float, ptr %235, i64 %149
  %237 = getelementptr float, ptr %236, i64 %146
  store float %234, ptr %237, align 4, !tbaa !90
  br label %238

238:                                              ; preds = %233, %232, %184, %165, %164
  %239 = add nuw nsw i64 %149, 1
  %240 = getelementptr inbounds %struct.ParticleData, ptr %150, i64 1
  %241 = icmp eq i64 %239, %147
  br i1 %241, label %242, label %148, !llvm.loop !98

242:                                              ; preds = %238, %111
  %243 = load ptr, ptr %14, align 8, !tbaa !44
  call void @BLI_bvhtree_balance(ptr noundef %243) #6
  %244 = getelementptr inbounds %struct.DerivedMesh, ptr %80, i64 0, i32 95
  %245 = load ptr, ptr %244, align 8, !tbaa !101
  call void %245(ptr noundef %80) #6
  %246 = load ptr, ptr %95, align 8, !tbaa !78
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %242
  call void @end_latt_deform(ptr noundef nonnull %246) #6
  store ptr null, ptr %95, align 8, !tbaa !78
  br label %249

249:                                              ; preds = %242, %248, %67
  call void @psys_render_restore(ptr noundef nonnull %23, ptr noundef nonnull %32) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  br label %315

250:                                              ; preds = %18
  %251 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 8
  %252 = load ptr, ptr %251, align 8, !tbaa !47
  %253 = icmp eq ptr %252, null
  br i1 %253, label %315, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.Object, ptr %252, i64 0, i32 3
  %256 = load i16, ptr %255, align 8, !tbaa !104
  %257 = icmp eq i16 %256, 1
  br i1 %257, label %258, label %315

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %260 = load ptr, ptr %259, align 8, !tbaa !49
  %261 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !69
  %262 = or i64 %261, 96
  %263 = tail call ptr @mesh_create_derived_render(ptr noundef %260, ptr noundef nonnull %252, i64 noundef %262) #6
  %264 = getelementptr inbounds %struct.DerivedMesh, ptr %263, i64 0, i32 31
  %265 = load ptr, ptr %264, align 8, !tbaa !107
  %266 = tail call ptr %265(ptr noundef %263) #6
  %267 = getelementptr inbounds %struct.DerivedMesh, ptr %263, i64 0, i32 23
  %268 = load ptr, ptr %267, align 8, !tbaa !108
  %269 = tail call i32 %268(ptr noundef %263) #6
  %270 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 6
  store i32 %269, ptr %270, align 8, !tbaa !81
  %271 = icmp eq i32 %269, 0
  br i1 %271, label %315, label %272

272:                                              ; preds = %258
  %273 = tail call ptr @BLI_bvhtree_new(i32 noundef %269, float noundef 0.000000e+00, i8 noundef zeroext 4, i8 noundef zeroext 6) #6
  store ptr %273, ptr %14, align 8, !tbaa !44
  %274 = load i32, ptr %270, align 8, !tbaa !81
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %311

276:                                              ; preds = %272
  %277 = getelementptr inbounds float, ptr %3, i64 1
  %278 = getelementptr inbounds float, ptr %3, i64 2
  %279 = getelementptr inbounds %struct.PointDensity, ptr %11, i64 0, i32 11
  %280 = getelementptr inbounds %struct.Object, ptr %252, i64 0, i32 47
  %281 = getelementptr inbounds %struct.Object, ptr %252, i64 0, i32 33
  %282 = getelementptr inbounds %struct.Object, ptr %252, i64 0, i32 33, i64 1
  %283 = getelementptr inbounds %struct.Object, ptr %252, i64 0, i32 33, i64 2
  %284 = getelementptr inbounds %struct.Object, ptr %252, i64 0, i32 47
  br label %285

285:                                              ; preds = %276, %305
  %286 = phi ptr [ %266, %276 ], [ %308, %305 ]
  %287 = phi i32 [ 0, %276 ], [ %307, %305 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %288 = load float, ptr %286, align 4, !tbaa !90
  store float %288, ptr %3, align 4, !tbaa !90
  %289 = getelementptr inbounds float, ptr %286, i64 1
  %290 = load float, ptr %289, align 4, !tbaa !90
  store float %290, ptr %277, align 4, !tbaa !90
  %291 = getelementptr inbounds float, ptr %286, i64 2
  %292 = load float, ptr %291, align 4, !tbaa !90
  store float %292, ptr %278, align 4, !tbaa !90
  %293 = load i16, ptr %279, align 2, !tbaa !109
  switch i16 %293, label %304 [
    i16 1, label %305
    i16 0, label %294
  ]

294:                                              ; preds = %285
  call void @mul_m4_v3(ptr noundef nonnull %280, ptr noundef nonnull %3) #6
  %295 = load float, ptr %281, align 4, !tbaa !90
  %296 = load float, ptr %3, align 4, !tbaa !90
  %297 = fsub float %296, %295
  store float %297, ptr %3, align 4, !tbaa !90
  %298 = load float, ptr %282, align 4, !tbaa !90
  %299 = load float, ptr %277, align 4, !tbaa !90
  %300 = fsub float %299, %298
  store float %300, ptr %277, align 4, !tbaa !90
  %301 = load float, ptr %283, align 4, !tbaa !90
  %302 = load float, ptr %278, align 4, !tbaa !90
  %303 = fsub float %302, %301
  store float %303, ptr %278, align 4, !tbaa !90
  br label %305

304:                                              ; preds = %285
  call void @mul_m4_v3(ptr noundef nonnull %284, ptr noundef nonnull %3) #6
  br label %305

305:                                              ; preds = %304, %294, %285
  %306 = load ptr, ptr %14, align 8, !tbaa !44
  call void @BLI_bvhtree_insert(ptr noundef %306, i32 noundef %287, ptr noundef nonnull %3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  %307 = add nuw nsw i32 %287, 1
  %308 = getelementptr inbounds %struct.MVert, ptr %286, i64 1
  %309 = load i32, ptr %270, align 8, !tbaa !81
  %310 = icmp slt i32 %307, %309
  br i1 %310, label %285, label %311, !llvm.loop !110

311:                                              ; preds = %305, %272
  %312 = load ptr, ptr %14, align 8, !tbaa !44
  call void @BLI_bvhtree_balance(ptr noundef %312) #6
  %313 = getelementptr inbounds %struct.DerivedMesh, ptr %263, i64 0, i32 95
  %314 = load ptr, ptr %313, align 8, !tbaa !101
  call void %314(ptr noundef %263) #6
  br label %315

315:                                              ; preds = %311, %258, %249, %18, %254, %250, %25, %21, %29, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @make_pointdensities(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %10, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  tail call void %12(ptr noundef %14, ptr noundef nonnull %9) #6
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %8, %30
  %21 = phi ptr [ %31, %30 ], [ %18, %8 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !125
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Tex, ptr %21, i64 0, i32 32
  %27 = load i16, ptr %26, align 8, !tbaa !126
  %28 = icmp eq i16 %27, 14
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @cache_pointdensity(ptr noundef %0, ptr noundef nonnull %21)
  br label %30

30:                                               ; preds = %20, %25, %29
  %31 = load ptr, ptr %21, align 8, !tbaa !79
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %20, !llvm.loop !127

33:                                               ; preds = %30, %8
  store ptr null, ptr %10, align 8, !tbaa !121
  %34 = load ptr, ptr %11, align 8, !tbaa !122
  %35 = load ptr, ptr %13, align 8, !tbaa !123
  tail call void %34(ptr noundef %35, ptr noundef nonnull %9) #6
  br label %36

36:                                               ; preds = %1, %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_pointdensities(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %8, %40
  %15 = phi ptr [ %41, %40 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !125
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 32
  %21 = load i16, ptr %20, align 8, !tbaa !126
  %22 = icmp eq i16 %21, 14
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 58
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PointDensity, ptr %25, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %29) #6
  store ptr null, ptr %28, align 8, !tbaa !44
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.PointDensity, ptr %25, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %37(ptr noundef nonnull %34) #6
  store ptr null, ptr %33, align 8, !tbaa !80
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.PointDensity, ptr %25, i64 0, i32 6
  store i32 0, ptr %39, align 8, !tbaa !81
  br label %40

40:                                               ; preds = %38, %23, %14, %19
  %41 = load ptr, ptr %15, align 8, !tbaa !79
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %14, !llvm.loop !128

43:                                               ; preds = %40, %8, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pointdensitytex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointDensityRangeData, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store float 0.000000e+00, ptr %5, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store float 0.000000e+00, ptr %6, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  store float 0.000000e+00, ptr %2, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %386, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %386, label %18

18:                                               ; preds = %14
  %19 = load i16, ptr %12, align 8, !tbaa !131
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 24
  %24 = load ptr, ptr %23, align 8, !tbaa !132
  br label %25

25:                                               ; preds = %18, %22
  %26 = phi ptr [ %24, %22 ], [ null, %18 ]
  %27 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 21
  %28 = load float, ptr %27, align 8, !tbaa !133
  %29 = fmul float %28, 0x3F50624DE0000000
  %30 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 3
  %31 = load float, ptr %30, align 8, !tbaa !134
  %32 = fmul float %31, %31
  %33 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 1
  store float %32, ptr %33, align 8, !tbaa !135
  store ptr %5, ptr %4, align 8, !tbaa !137
  %34 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !80
  %36 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !138
  %37 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !65
  %39 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 5
  store i16 %38, ptr %39, align 4, !tbaa !139
  %40 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 3
  store ptr %7, ptr %40, align 8, !tbaa !140
  %41 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 7
  store ptr %6, ptr %41, align 8, !tbaa !141
  %42 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !142
  %44 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 4
  store float %43, ptr %44, align 8, !tbaa !143
  %45 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 16
  %46 = load i16, ptr %45, align 2, !tbaa !64
  %47 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 6
  store i16 %46, ptr %47, align 2, !tbaa !144
  %48 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 4
  %49 = load i16, ptr %48, align 4, !tbaa !46
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %25
  %52 = icmp eq i16 %46, 1
  %53 = icmp eq i16 %38, 6
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !66
  %58 = and i16 %57, -2
  %59 = icmp eq i16 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi i32 [ 1, %60 ], [ 0, %55 ]
  %63 = icmp eq i16 %46, 2
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 5
  %66 = load i16, ptr %65, align 2, !tbaa !66
  %67 = icmp eq i16 %66, 1
  %68 = icmp eq i16 %38, 5
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %61
  %71 = or disjoint i32 %62, 2
  br label %72

72:                                               ; preds = %64, %25, %70
  %73 = phi i32 [ %71, %70 ], [ 0, %25 ], [ %62, %64 ]
  %74 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 8
  store i32 %73, ptr %74, align 8, !tbaa !145
  %75 = and i32 %73, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !81
  %80 = mul nsw i32 %79, 3
  br label %81

81:                                               ; preds = %72, %77
  %82 = phi i32 [ %80, %77 ], [ 0, %72 ]
  %83 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 9
  store i32 %82, ptr %83, align 4, !tbaa !146
  %84 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 10
  store ptr %26, ptr %84, align 8, !tbaa !147
  %85 = getelementptr inbounds %struct.PointDensityRangeData, ptr %4, i64 0, i32 11
  store float %29, ptr %85, align 8, !tbaa !148
  %86 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 19
  %87 = load float, ptr %86, align 8, !tbaa !149
  %88 = fmul float %87, 5.000000e-01
  %89 = load float, ptr %1, align 4, !tbaa !90
  store float %89, ptr %8, align 4, !tbaa !90
  %90 = getelementptr inbounds float, ptr %1, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !90
  %92 = getelementptr inbounds float, ptr %8, i64 1
  store float %91, ptr %92, align 4, !tbaa !90
  %93 = getelementptr inbounds float, ptr %1, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !90
  %95 = getelementptr inbounds float, ptr %8, i64 2
  store float %94, ptr %95, align 4, !tbaa !90
  br i1 %50, label %96, label %116

96:                                               ; preds = %81
  %97 = icmp eq i16 %46, 1
  %98 = icmp eq i16 %38, 6
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 5
  %102 = load i16, ptr %101, align 2, !tbaa !66
  %103 = and i16 %102, -2
  %104 = icmp eq i16 %103, 2
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %96
  br label %106

106:                                              ; preds = %105, %100
  %107 = phi i32 [ 1, %105 ], [ 0, %100 ]
  %108 = icmp eq i16 %46, 2
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 5
  %111 = load i16, ptr %110, align 2, !tbaa !66
  %112 = icmp eq i16 %111, 1
  %113 = icmp eq i16 %38, 5
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %106
  br label %116

116:                                              ; preds = %109, %81, %115
  %117 = phi i32 [ 1, %115 ], [ 0, %81 ], [ %107, %109 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %116
  %120 = load float, ptr %30, align 8, !tbaa !134
  %121 = call i32 @BLI_bvhtree_range_query(ptr noundef nonnull %16, ptr noundef nonnull %8, float noundef %120, ptr noundef nonnull @accum_density, ptr noundef nonnull %4) #6
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = sitofp i32 %121 to float
  %125 = load float, ptr %6, align 4, !tbaa !90
  %126 = fdiv float %125, %124
  store float %126, ptr %6, align 4, !tbaa !90
  %127 = fdiv float 1.000000e+00, %124
  %128 = load float, ptr %7, align 4, !tbaa !90
  %129 = fmul float %127, %128
  store float %129, ptr %7, align 4, !tbaa !90
  %130 = getelementptr inbounds float, ptr %7, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !90
  %132 = fmul float %127, %131
  store float %132, ptr %130, align 4, !tbaa !90
  %133 = getelementptr inbounds float, ptr %7, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !90
  %135 = fmul float %127, %134
  store float %135, ptr %133, align 4, !tbaa !90
  br label %136

136:                                              ; preds = %123, %119
  %137 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %137, align 4, !tbaa !90
  %138 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %138, align 4, !tbaa !90
  store float 0.000000e+00, ptr %7, align 4, !tbaa !90
  store float 0.000000e+00, ptr %5, align 4, !tbaa !90
  br label %139

139:                                              ; preds = %136, %116
  %140 = load i16, ptr %12, align 8, !tbaa !131
  %141 = and i16 %140, 1
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %213, label %143

143:                                              ; preds = %139
  %144 = load i16, ptr %45, align 2, !tbaa !64
  switch i16 %144, label %183 [
    i16 2, label %145
    i16 3, label %162
  ]

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 14
  %147 = load float, ptr %146, align 8, !tbaa !150
  %148 = load float, ptr %1, align 4, !tbaa !90
  %149 = load float, ptr %6, align 4, !tbaa !90
  %150 = fadd float %148, %149
  %151 = load float, ptr %90, align 4, !tbaa !90
  %152 = fadd float %149, %151
  %153 = load float, ptr %93, align 4, !tbaa !90
  %154 = fadd float %149, %153
  %155 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 15
  %156 = load i16, ptr %155, align 4, !tbaa !151
  %157 = sext i16 %156 to i32
  %158 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 17
  %159 = load i16, ptr %158, align 8, !tbaa !152
  %160 = sext i16 %159 to i32
  %161 = call float @BLI_gTurbulence(float noundef %147, float noundef %150, float noundef %152, float noundef %154, i32 noundef %157, i32 noundef 0, i32 noundef %160) #6
  br label %204

162:                                              ; preds = %143
  %163 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !153
  %164 = sitofp i32 %163 to float
  %165 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 7), align 8, !tbaa !154
  %166 = sitofp i32 %165 to float
  %167 = fdiv float %164, %166
  %168 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 14
  %169 = load float, ptr %168, align 8, !tbaa !150
  %170 = load float, ptr %1, align 4, !tbaa !90
  %171 = fadd float %170, %167
  %172 = load float, ptr %90, align 4, !tbaa !90
  %173 = fadd float %167, %172
  %174 = load float, ptr %93, align 4, !tbaa !90
  %175 = fadd float %167, %174
  %176 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 15
  %177 = load i16, ptr %176, align 4, !tbaa !151
  %178 = sext i16 %177 to i32
  %179 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 17
  %180 = load i16, ptr %179, align 8, !tbaa !152
  %181 = sext i16 %180 to i32
  %182 = call float @BLI_gTurbulence(float noundef %169, float noundef %171, float noundef %173, float noundef %175, i32 noundef %178, i32 noundef 0, i32 noundef %181) #6
  br label %204

183:                                              ; preds = %143
  %184 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 14
  %185 = load float, ptr %184, align 8, !tbaa !150
  %186 = load float, ptr %1, align 4, !tbaa !90
  %187 = load float, ptr %7, align 4, !tbaa !90
  %188 = fadd float %186, %187
  %189 = load float, ptr %90, align 4, !tbaa !90
  %190 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !90
  %192 = fadd float %189, %191
  %193 = load float, ptr %93, align 4, !tbaa !90
  %194 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !90
  %196 = fadd float %193, %195
  %197 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 15
  %198 = load i16, ptr %197, align 4, !tbaa !151
  %199 = sext i16 %198 to i32
  %200 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 17
  %201 = load i16, ptr %200, align 8, !tbaa !152
  %202 = sext i16 %201 to i32
  %203 = call float @BLI_gTurbulence(float noundef %185, float noundef %188, float noundef %192, float noundef %196, i32 noundef %199, i32 noundef 0, i32 noundef %202) #6
  br label %204

204:                                              ; preds = %162, %183, %145
  %205 = phi float [ %161, %145 ], [ %182, %162 ], [ %203, %183 ]
  %206 = fadd float %205, -5.000000e-01
  %207 = load float, ptr %1, align 4, !tbaa !90
  %208 = call float @llvm.fmuladd.f32(float %88, float %206, float %207)
  store float %208, ptr %8, align 4, !tbaa !90
  %209 = load float, ptr %90, align 4, !tbaa !90
  %210 = call float @llvm.fmuladd.f32(float %88, float %206, float %209)
  store float %210, ptr %92, align 4, !tbaa !90
  %211 = load float, ptr %93, align 4, !tbaa !90
  %212 = call float @llvm.fmuladd.f32(float %88, float %206, float %211)
  store float %212, ptr %95, align 4, !tbaa !90
  br label %213

213:                                              ; preds = %204, %139
  %214 = load ptr, ptr %15, align 8, !tbaa !44
  %215 = load float, ptr %30, align 8, !tbaa !134
  %216 = call i32 @BLI_bvhtree_range_query(ptr noundef %214, ptr noundef nonnull %8, float noundef %215, ptr noundef nonnull @accum_density, ptr noundef nonnull %4) #6
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %213
  %219 = sitofp i32 %216 to float
  %220 = load float, ptr %6, align 4, !tbaa !90
  %221 = fdiv float %220, %219
  store float %221, ptr %6, align 4, !tbaa !90
  %222 = fdiv float 1.000000e+00, %219
  %223 = load float, ptr %7, align 4, !tbaa !90
  %224 = fmul float %222, %223
  store float %224, ptr %7, align 4, !tbaa !90
  %225 = getelementptr inbounds float, ptr %7, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !90
  %227 = fmul float %222, %226
  store float %227, ptr %225, align 4, !tbaa !90
  %228 = getelementptr inbounds float, ptr %7, i64 2
  %229 = load float, ptr %228, align 4, !tbaa !90
  %230 = fmul float %222, %229
  store float %230, ptr %228, align 4, !tbaa !90
  br label %231

231:                                              ; preds = %218, %213
  %232 = load float, ptr %5, align 4, !tbaa !90
  store float %232, ptr %2, align 8, !tbaa !129
  %233 = fadd float %232, -5.000000e-01
  %234 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %235 = load float, ptr %234, align 4, !tbaa !155
  %236 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %237 = load float, ptr %236, align 8, !tbaa !156
  %238 = call float @llvm.fmuladd.f32(float %233, float %235, float %237)
  %239 = fadd float %238, -5.000000e-01
  store float %239, ptr %2, align 8, !tbaa !129
  %240 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %241 = load i16, ptr %240, align 2, !tbaa !157
  %242 = and i16 %241, 1024
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %231
  %245 = fcmp olt float %239, 0.000000e+00
  br i1 %245, label %248, label %246

246:                                              ; preds = %244
  %247 = fcmp ogt float %239, 1.000000e+00
  br i1 %247, label %248, label %250

248:                                              ; preds = %246, %244
  %249 = phi float [ 0.000000e+00, %244 ], [ 1.000000e+00, %246 ]
  store float %249, ptr %2, align 8, !tbaa !129
  br label %250

250:                                              ; preds = %248, %246, %231
  %251 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 5
  %252 = load i16, ptr %251, align 2, !tbaa !66
  switch i16 %252, label %327 [
    i16 0, label %386
    i16 1, label %253
    i16 2, label %276
    i16 3, label %310
  ]

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 23
  %255 = load ptr, ptr %254, align 8, !tbaa !158
  %256 = icmp eq ptr %255, null
  br i1 %256, label %332, label %257

257:                                              ; preds = %253
  %258 = load float, ptr %6, align 4, !tbaa !90
  %259 = call zeroext i8 @do_colorband(ptr noundef nonnull %255, float noundef %258, ptr noundef nonnull %9) #6
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %332, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %262, align 4, !tbaa !159
  %263 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %264 = load float, ptr %9, align 16, !tbaa !90
  store float %264, ptr %263, align 4, !tbaa !90
  %265 = getelementptr inbounds float, ptr %9, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !90
  %267 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %266, ptr %267, align 4, !tbaa !90
  %268 = getelementptr inbounds float, ptr %9, i64 2
  %269 = load float, ptr %268, align 8, !tbaa !90
  %270 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %269, ptr %270, align 4, !tbaa !90
  %271 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %272 = load float, ptr %271, align 4, !tbaa !90
  %273 = load float, ptr %2, align 8, !tbaa !129
  %274 = fmul float %272, %273
  store float %274, ptr %2, align 8, !tbaa !129
  %275 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %274, ptr %275, align 8, !tbaa !160
  br label %332

276:                                              ; preds = %250
  %277 = load float, ptr %7, align 4, !tbaa !90
  %278 = getelementptr inbounds float, ptr %7, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !90
  %280 = fmul float %279, %279
  %281 = call float @llvm.fmuladd.f32(float %277, float %277, float %280)
  %282 = getelementptr inbounds float, ptr %7, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !90
  %284 = call float @llvm.fmuladd.f32(float %283, float %283, float %281)
  %285 = call float @sqrtf(float noundef %284) #6
  %286 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 23
  %287 = load ptr, ptr %286, align 8, !tbaa !158
  %288 = icmp eq ptr %287, null
  br i1 %288, label %332, label %289

289:                                              ; preds = %276
  %290 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 20
  %291 = load float, ptr %290, align 4, !tbaa !161
  %292 = fmul float %285, %291
  %293 = call zeroext i8 @do_colorband(ptr noundef nonnull %287, float noundef %292, ptr noundef nonnull %9) #6
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %332, label %295

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %296, align 4, !tbaa !159
  %297 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %298 = load float, ptr %9, align 16, !tbaa !90
  store float %298, ptr %297, align 4, !tbaa !90
  %299 = getelementptr inbounds float, ptr %9, i64 1
  %300 = load float, ptr %299, align 4, !tbaa !90
  %301 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %300, ptr %301, align 4, !tbaa !90
  %302 = getelementptr inbounds float, ptr %9, i64 2
  %303 = load float, ptr %302, align 8, !tbaa !90
  %304 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %303, ptr %304, align 4, !tbaa !90
  %305 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %306 = load float, ptr %305, align 4, !tbaa !90
  %307 = load float, ptr %2, align 8, !tbaa !129
  %308 = fmul float %306, %307
  store float %308, ptr %2, align 8, !tbaa !129
  %309 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %308, ptr %309, align 8, !tbaa !160
  br label %332

310:                                              ; preds = %250
  %311 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %311, align 4, !tbaa !159
  %312 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 20
  %313 = load float, ptr %312, align 4, !tbaa !161
  %314 = load float, ptr %7, align 4, !tbaa !90
  %315 = fmul float %313, %314
  store float %315, ptr %7, align 4, !tbaa !90
  %316 = getelementptr inbounds float, ptr %7, i64 1
  %317 = load float, ptr %316, align 4, !tbaa !90
  %318 = fmul float %313, %317
  store float %318, ptr %316, align 4, !tbaa !90
  %319 = getelementptr inbounds float, ptr %7, i64 2
  %320 = load float, ptr %319, align 4, !tbaa !90
  %321 = fmul float %313, %320
  store float %321, ptr %319, align 4, !tbaa !90
  %322 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store float %315, ptr %322, align 4, !tbaa !90
  %323 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %318, ptr %323, align 4, !tbaa !90
  %324 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %321, ptr %324, align 4, !tbaa !90
  %325 = load float, ptr %2, align 8, !tbaa !129
  %326 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %325, ptr %326, align 8, !tbaa !160
  br label %332

327:                                              ; preds = %250
  %328 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float 1.000000e+00, ptr %328, align 8, !tbaa !160
  %329 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float 1.000000e+00, ptr %329, align 4, !tbaa !162
  %330 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float 1.000000e+00, ptr %330, align 8, !tbaa !163
  %331 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store float 1.000000e+00, ptr %331, align 4, !tbaa !164
  br label %332

332:                                              ; preds = %276, %295, %289, %253, %261, %257, %327, %310
  %333 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %334 = load float, ptr %333, align 4, !tbaa !165
  %335 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %336 = load float, ptr %335, align 4, !tbaa !164
  %337 = fadd float %336, -5.000000e-01
  %338 = load float, ptr %234, align 4, !tbaa !155
  %339 = load float, ptr %236, align 8, !tbaa !156
  %340 = call float @llvm.fmuladd.f32(float %337, float %338, float %339)
  %341 = fadd float %340, -5.000000e-01
  %342 = fmul float %334, %341
  store float %342, ptr %335, align 4, !tbaa !164
  %343 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %344 = load float, ptr %343, align 8, !tbaa !166
  %345 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %346 = load float, ptr %345, align 8, !tbaa !163
  %347 = fadd float %346, -5.000000e-01
  %348 = call float @llvm.fmuladd.f32(float %347, float %338, float %339)
  %349 = fadd float %348, -5.000000e-01
  %350 = fmul float %344, %349
  store float %350, ptr %345, align 8, !tbaa !163
  %351 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %352 = load float, ptr %351, align 4, !tbaa !167
  %353 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %354 = load float, ptr %353, align 4, !tbaa !162
  %355 = fadd float %354, -5.000000e-01
  %356 = call float @llvm.fmuladd.f32(float %355, float %338, float %339)
  %357 = fadd float %356, -5.000000e-01
  %358 = fmul float %352, %357
  store float %358, ptr %353, align 4, !tbaa !162
  %359 = load i16, ptr %240, align 2, !tbaa !157
  %360 = and i16 %359, 1024
  %361 = icmp eq i16 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %332
  %363 = fcmp olt float %342, 0.000000e+00
  br i1 %363, label %364, label %365

364:                                              ; preds = %362
  store float 0.000000e+00, ptr %335, align 4, !tbaa !164
  br label %365

365:                                              ; preds = %364, %362
  %366 = fcmp olt float %350, 0.000000e+00
  br i1 %366, label %367, label %368

367:                                              ; preds = %365
  store float 0.000000e+00, ptr %345, align 8, !tbaa !163
  br label %368

368:                                              ; preds = %367, %365
  %369 = fcmp olt float %358, 0.000000e+00
  br i1 %369, label %370, label %371

370:                                              ; preds = %368
  store float 0.000000e+00, ptr %353, align 4, !tbaa !162
  br label %371

371:                                              ; preds = %368, %370, %332
  %372 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %373 = load float, ptr %372, align 8, !tbaa !168
  %374 = fcmp une float %373, 1.000000e+00
  br i1 %374, label %375, label %386

375:                                              ; preds = %371
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #6
  %376 = load float, ptr %335, align 4, !tbaa !164
  %377 = load float, ptr %345, align 8, !tbaa !163
  %378 = load float, ptr %353, align 4, !tbaa !162
  %379 = getelementptr inbounds float, ptr %10, i64 1
  %380 = getelementptr inbounds float, ptr %10, i64 2
  call void @rgb_to_hsv(float noundef %376, float noundef %377, float noundef %378, ptr noundef nonnull %10, ptr noundef nonnull %379, ptr noundef nonnull %380) #6
  %381 = load float, ptr %372, align 8, !tbaa !168
  %382 = load float, ptr %379, align 4, !tbaa !90
  %383 = fmul float %381, %382
  store float %383, ptr %379, align 4, !tbaa !90
  %384 = load float, ptr %10, align 4, !tbaa !90
  %385 = load float, ptr %380, align 4, !tbaa !90
  call void @hsv_to_rgb(float noundef %384, float noundef %383, float noundef %385, ptr noundef nonnull %335, ptr noundef nonnull %345, ptr noundef nonnull %353) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #6
  br label %386

386:                                              ; preds = %371, %375, %250, %3, %14
  %387 = phi i32 [ 0, %14 ], [ 0, %3 ], [ 0, %250 ], [ 1, %375 ], [ 1, %371 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  ret i32 %387
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @BLI_bvhtree_range_query(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @accum_density(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) #0 {
  %4 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !135
  %6 = fsub float %5, %2
  %7 = fdiv float %6, %5
  %8 = fmul float %7, 5.000000e-01
  %9 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !145
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = mul nsw i32 %1, 3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr %15, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !90
  %20 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = load float, ptr %21, align 4, !tbaa !90
  %23 = fadd float %19, %22
  store float %23, ptr %21, align 4, !tbaa !90
  %24 = getelementptr float, ptr %18, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !90
  %26 = getelementptr inbounds float, ptr %21, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !90
  %28 = fadd float %25, %27
  store float %28, ptr %26, align 4, !tbaa !90
  %29 = getelementptr float, ptr %18, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !90
  %31 = getelementptr inbounds float, ptr %21, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !90
  %33 = fadd float %30, %32
  store float %33, ptr %31, align 4, !tbaa !90
  br label %34

34:                                               ; preds = %13, %3
  %35 = and i32 %10, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !138
  %40 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !146
  %42 = add nsw i32 %41, %1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, ptr %39, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !90
  %46 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !141
  %48 = load float, ptr %47, align 4, !tbaa !90
  %49 = fadd float %45, %48
  store float %49, ptr %47, align 4, !tbaa !90
  br label %50

50:                                               ; preds = %37, %34
  %51 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 5
  %52 = load i16, ptr %51, align 4, !tbaa !139
  switch i16 %52, label %103 [
    i16 0, label %104
    i16 1, label %53
    i16 2, label %59
    i16 3, label %66
    i16 4, label %68
    i16 5, label %70
    i16 6, label %83
  ]

53:                                               ; preds = %50
  %54 = fmul float %8, 3.000000e+00
  %55 = fmul float %8, -2.000000e+00
  %56 = fmul float %8, %55
  %57 = fmul float %8, %56
  %58 = tail call float @llvm.fmuladd.f32(float %54, float %8, float %57)
  br label %104

59:                                               ; preds = %50
  %60 = fpext float %8 to double
  %61 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 4
  %62 = load float, ptr %61, align 8, !tbaa !143
  %63 = fpext float %62 to double
  %64 = tail call double @pow(double noundef %60, double noundef %63) #6
  %65 = fptrunc double %64 to float
  br label %104

66:                                               ; preds = %50
  %67 = load float, ptr %4, align 8, !tbaa !135
  br label %104

68:                                               ; preds = %50
  %69 = tail call float @sqrtf(float noundef %8) #6
  br label %104

70:                                               ; preds = %50
  br i1 %36, label %104, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !138
  %74 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 9
  %75 = load i32, ptr %74, align 4, !tbaa !146
  %76 = add nsw i32 %75, %1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %73, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !90
  %80 = fcmp olt float %79, 1.000000e+00
  %81 = select i1 %80, float %79, float 1.000000e+00
  %82 = fmul float %8, %81
  br label %104

83:                                               ; preds = %50
  br i1 %12, label %104, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !138
  %87 = mul nsw i32 %1, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %86, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !90
  %91 = getelementptr inbounds float, ptr %89, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !90
  %93 = fmul float %92, %92
  %94 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %93)
  %95 = getelementptr inbounds float, ptr %89, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !90
  %97 = tail call float @llvm.fmuladd.f32(float %96, float %96, float %94)
  %98 = tail call float @sqrtf(float noundef %97) #6
  %99 = fmul float %8, %98
  %100 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 11
  %101 = load float, ptr %100, align 8, !tbaa !148
  %102 = fmul float %99, %101
  br label %104

103:                                              ; preds = %50
  br label %104

104:                                              ; preds = %83, %50, %103, %70, %53, %66, %71, %84, %68, %59
  %105 = phi float [ %58, %53 ], [ %65, %59 ], [ %67, %66 ], [ %69, %68 ], [ %82, %71 ], [ %102, %84 ], [ %8, %50 ], [ %8, %70 ], [ 0.000000e+00, %103 ], [ %8, %83 ]
  %106 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 10
  %107 = load ptr, ptr %106, align 8, !tbaa !147
  %108 = icmp ne ptr %107, null
  %109 = fcmp une float %8, 0.000000e+00
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  tail call void @curvemapping_initialize(ptr noundef nonnull %107) #6
  %112 = load ptr, ptr %106, align 8, !tbaa !147
  %113 = fdiv float %105, %8
  %114 = tail call float @curvemapping_evaluateF(ptr noundef %112, i32 noundef 0, float noundef %113) #6
  %115 = fmul float %8, %114
  br label %116

116:                                              ; preds = %111, %104
  %117 = phi float [ %115, %111 ], [ %105, %104 ]
  %118 = load ptr, ptr %0, align 8, !tbaa !137
  %119 = load float, ptr %118, align 4, !tbaa !90
  %120 = fadd float %117, %119
  store float %120, ptr %118, align 4, !tbaa !90
  ret void
}

declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @psys_render_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @psys_render_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @psys_get_child_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!34 = !{!35, !37, i64 384}
!35 = !{!"Tex", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !43, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!44 = !{!45, !37, i64 40}
!45 = !{!"PointDensity", !40, i64 0, !40, i64 2, !42, i64 4, !42, i64 8, !40, i64 12, !40, i64 14, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 32, !40, i64 36, !40, i64 38, !37, i64 40, !37, i64 48, !42, i64 56, !40, i64 60, !40, i64 62, !40, i64 64, !38, i64 66, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !37, i64 88, !37, i64 96}
!46 = !{!45, !40, i64 12}
!47 = !{!45, !37, i64 24}
!48 = !{!45, !41, i64 32}
!49 = !{!50, !37, i64 1096}
!50 = !{!"Render", !37, i64 0, !37, i64 8, !38, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !38, i64 104, !37, i64 112, !37, i64 120, !51, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !52, i64 156, !53, i64 172, !42, i64 188, !42, i64 192, !42, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 252, !38, i64 288, !38, i64 352, !38, i64 416, !38, i64 480, !42, i64 544, !42, i64 548, !37, i64 552, !38, i64 560, !38, i64 816, !37, i64 1072, !38, i64 1080, !37, i64 1088, !37, i64 1096, !54, i64 1104, !61, i64 5088, !37, i64 5616, !41, i64 5624, !41, i64 5628, !51, i64 5632, !37, i64 5648, !37, i64 5656, !37, i64 5664, !37, i64 5672, !42, i64 5680, !37, i64 5688, !51, i64 5696, !42, i64 5712, !42, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !37, i64 5744, !51, i64 5752, !51, i64 5768, !51, i64 5784, !37, i64 5800, !51, i64 5808, !41, i64 5824, !37, i64 5832, !37, i64 5840, !37, i64 5848, !37, i64 5856, !37, i64 5864, !51, i64 5872, !37, i64 5888, !51, i64 5896, !51, i64 5912, !37, i64 5928, !37, i64 5936, !37, i64 5944, !37, i64 5952, !37, i64 5960, !37, i64 5968, !37, i64 5976, !37, i64 5984, !37, i64 5992, !37, i64 6000, !37, i64 6008, !37, i64 6016, !37, i64 6024, !37, i64 6032, !37, i64 6040, !37, i64 6048, !37, i64 6056, !62, i64 6064, !37, i64 6216, !37, i64 6224, !37, i64 6232}
!51 = !{!"ListBase", !37, i64 0, !37, i64 8}
!52 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!53 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!54 = !{!"RenderData", !55, i64 0, !37, i64 248, !37, i64 256, !58, i64 264, !59, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !53, i64 544, !53, i64 560, !52, i64 576, !51, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !60, i64 2616, !41, i64 3976, !41, i64 3980}
!55 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !56, i64 24, !57, i64 184}
!56 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!57 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!58 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!59 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!60 = !{!"BakeData", !55, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!61 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!62 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !38, i64 40, !63, i64 48, !63, i64 56, !37, i64 64, !37, i64 72, !38, i64 80, !42, i64 144, !42, i64 148}
!63 = !{!"double", !38, i64 0}
!64 = !{!45, !40, i64 62}
!65 = !{!45, !40, i64 2}
!66 = !{!45, !40, i64 14}
!67 = !{!50, !41, i64 148}
!68 = !{!50, !41, i64 152}
!69 = !{!70, !70, i64 0}
!70 = !{!"long", !38, i64 0}
!71 = !{!72, !37, i64 0}
!72 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !42, i64 40}
!73 = !{!72, !37, i64 8}
!74 = !{!72, !37, i64 16}
!75 = !{!76, !41, i64 320}
!76 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !51, i64 72, !51, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !51, i64 152, !38, i64 168, !38, i64 232, !42, i64 296, !42, i64 300, !42, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !51, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !42, i64 648, !42, i64 652}
!77 = !{!76, !41, i64 328}
!78 = !{!76, !37, i64 136}
!79 = !{!37, !37, i64 0}
!80 = !{!45, !37, i64 48}
!81 = !{!45, !41, i64 16}
!82 = !{!76, !37, i64 24}
!83 = !{!76, !37, i64 16}
!84 = !{!85, !40, i64 160}
!85 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 248, !42, i64 256, !42, i64 260, !42, i64 264, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !38, i64 376, !42, i64 388, !42, i64 392, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !42, i64 412, !38, i64 416, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !41, i64 444, !41, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !42, i64 480, !42, i64 484, !42, i64 488, !42, i64 492, !42, i64 496, !42, i64 500, !42, i64 504, !42, i64 508, !42, i64 512, !42, i64 516, !42, i64 520, !42, i64 524, !42, i64 528, !42, i64 532, !42, i64 536, !42, i64 540, !42, i64 544, !42, i64 548, !38, i64 552, !42, i64 560, !42, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !51, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!86 = !{!76, !37, i64 56}
!87 = !{!76, !37, i64 64}
!88 = !{!89, !41, i64 56}
!89 = !{!"ParticleCacheKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !42, i64 52, !41, i64 56}
!90 = !{!42, !42, i64 0}
!91 = !{!92, !42, i64 52}
!92 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !42, i64 52}
!93 = !{!94, !42, i64 140}
!94 = !{!"ParticleData", !92, i64 0, !92, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !41, i64 152, !41, i64 156, !38, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!95 = !{!94, !42, i64 144}
!96 = !{!76, !37, i64 32}
!97 = !{!45, !40, i64 36}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!102, !37, i64 1680}
!102 = !{!"DerivedMesh", !103, i64 0, !103, i64 200, !103, i64 400, !103, i64 600, !103, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!103 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!104 = !{!105, !40, i64 136}
!105 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !106, i64 312, !37, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !70, i64 1304, !70, i64 1312, !41, i64 1320, !41, i64 1324, !51, i64 1328, !51, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !51, i64 1400, !37, i64 1416}
!106 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!107 = !{!102, !37, i64 1168}
!108 = !{!102, !37, i64 1104}
!109 = !{!45, !40, i64 38}
!110 = distinct !{!110, !99, !100}
!111 = !{!112, !41, i64 796}
!112 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !51, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !54, i64 280, !113, i64 4264, !51, i64 4296, !51, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !51, i64 4384, !114, i64 4400, !115, i64 4416, !118, i64 4600, !37, i64 4608, !119, i64 4616, !37, i64 4640, !70, i64 4648, !70, i64 4656, !56, i64 4664, !57, i64 4824, !120, i64 4888, !37, i64 4952}
!113 = !{!"AudioData", !41, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28}
!114 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!115 = !{!"GameData", !114, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !116, i64 40, !40, i64 64, !40, i64 66, !42, i64 68, !117, i64 72, !42, i64 128, !42, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!116 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!117 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 54}
!118 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!119 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!120 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!121 = !{!50, !37, i64 6128}
!122 = !{!50, !37, i64 6000}
!123 = !{!50, !37, i64 6008}
!124 = !{!50, !37, i64 1088}
!125 = !{!35, !41, i64 100}
!126 = !{!35, !40, i64 232}
!127 = distinct !{!127, !99, !100}
!128 = distinct !{!128, !99, !100}
!129 = !{!130, !42, i64 0}
!130 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !41, i64 20, !37, i64 24}
!131 = !{!45, !40, i64 0}
!132 = !{!45, !37, i64 96}
!133 = !{!45, !42, i64 80}
!134 = !{!45, !42, i64 8}
!135 = !{!136, !42, i64 8}
!136 = !{!"PointDensityRangeData", !37, i64 0, !42, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !40, i64 36, !40, i64 38, !37, i64 40, !41, i64 48, !41, i64 52, !37, i64 56, !42, i64 64}
!137 = !{!136, !37, i64 0}
!138 = !{!136, !37, i64 16}
!139 = !{!136, !40, i64 36}
!140 = !{!136, !37, i64 24}
!141 = !{!136, !37, i64 40}
!142 = !{!45, !42, i64 4}
!143 = !{!136, !42, i64 32}
!144 = !{!136, !40, i64 38}
!145 = !{!136, !41, i64 48}
!146 = !{!136, !41, i64 52}
!147 = !{!136, !37, i64 56}
!148 = !{!136, !42, i64 64}
!149 = !{!45, !42, i64 72}
!150 = !{!45, !42, i64 56}
!151 = !{!45, !40, i64 60}
!152 = !{!45, !40, i64 64}
!153 = !{!50, !41, i64 1504}
!154 = !{!50, !41, i64 1512}
!155 = !{!35, !42, i64 140}
!156 = !{!35, !42, i64 136}
!157 = !{!35, !40, i64 230}
!158 = !{!45, !37, i64 88}
!159 = !{!130, !41, i64 20}
!160 = !{!130, !42, i64 16}
!161 = !{!45, !42, i64 76}
!162 = !{!130, !42, i64 12}
!163 = !{!130, !42, i64 8}
!164 = !{!130, !42, i64 4}
!165 = !{!35, !42, i64 148}
!166 = !{!35, !42, i64 152}
!167 = !{!35, !42, i64 156}
!168 = !{!35, !42, i64 144}
