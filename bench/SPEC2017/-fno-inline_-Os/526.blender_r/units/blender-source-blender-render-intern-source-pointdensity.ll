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
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.PointDensity = type { i16, i16, float, float, i16, i16, i32, i32, ptr, i32, i16, i16, ptr, ptr, float, i16, i16, i16, [3 x i16], float, float, float, float, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cache_pointdensity(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 58
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PointDensity, ptr %4, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %8) #11
  store ptr null, ptr %7, align 8, !tbaa !44
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.PointDensity, ptr %4, i64 0, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !46
  switch i16 %13, label %37 [
    i16 0, label %14
    i16 1, label %28
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.PointDensity, ptr %4, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PointDensity, ptr %4, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 109
  %24 = add nsw i32 %20, -1
  %25 = tail call ptr @BLI_findlink(ptr noundef nonnull %23, i32 noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  tail call fastcc void @pointdensity_cache_psys(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %25) #12
  br label %37

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.PointDensity, ptr %4, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 3
  %34 = load i16, ptr %33, align 8, !tbaa !49
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call fastcc void @pointdensity_cache_object(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %30) #12
  br label %37

37:                                               ; preds = %27, %11, %36, %32, %28, %18, %14, %22, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pointdensity_cache_psys(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !54 {
  %5 = alloca %struct.ParticleKey, align 4
  %6 = alloca %struct.ParticleSimulationData, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #13
  %11 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = tail call float @BKE_scene_frame_get(ptr noundef %13) #11
  %15 = tail call fastcc i32 @point_data_used(ptr noundef %1) #12, !range !69
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #13
  %16 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %16, ptr noundef nonnull %17) #11
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %21 = load i32, ptr %20, align 4, !tbaa !70
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !71
  call void @psys_render_set(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef %21, i32 noundef %23, i32 noundef 0) #11
  %24 = load ptr, ptr %12, align 8, !tbaa !55
  %25 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !72
  %26 = or i64 %25, 96
  %27 = call ptr @mesh_create_derived_render(ptr noundef %24, ptr noundef %2, i64 noundef %26) #11
  %28 = call i32 @psys_check_enabled(ptr noundef %2, ptr noundef %3) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  call void @psys_render_restore(ptr noundef %2, ptr noundef %3) #11
  br label %154

31:                                               ; preds = %4
  %32 = load ptr, ptr %12, align 8, !tbaa !55
  store ptr %32, ptr %6, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 1
  store ptr %2, ptr %33, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 2
  store ptr %3, ptr %34, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %36 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %35, ptr noundef nonnull %16) #11
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %38 = load i32, ptr %37, align 8, !tbaa !77
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 28
  %40 = load i32, ptr %39, align 8, !tbaa !79
  %41 = add i32 %40, %38
  %42 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %6) #11
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 15
  store ptr %42, ptr %43, align 8, !tbaa !80
  %44 = call ptr @BLI_bvhtree_new(i32 noundef %41, float noundef 0.000000e+00, i8 noundef zeroext 4, i8 noundef zeroext 6) #11
  %45 = getelementptr inbounds %struct.PointDensity, ptr %1, i64 0, i32 12
  store ptr %44, ptr %45, align 8, !tbaa !44
  call fastcc void @alloc_point_data(ptr noundef %1, i32 noundef %41, i32 noundef %15) #12
  %46 = getelementptr inbounds %struct.PointDensity, ptr %1, i64 0, i32 6
  store i32 %41, ptr %46, align 8, !tbaa !81
  %47 = and i32 %15, 1
  %48 = icmp eq i32 %47, 0
  %49 = icmp sgt i32 %41, 0
  br i1 %49, label %50, label %146

50:                                               ; preds = %31
  %51 = mul nsw i32 %41, 3
  %52 = select i1 %48, i32 0, i32 %51
  %53 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !82
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %56 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %57 = icmp ult i32 %15, 2
  %58 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 4
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 8
  %60 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 7
  %61 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1
  %62 = getelementptr inbounds %struct.PointDensity, ptr %1, i64 0, i32 10
  %63 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33
  %64 = getelementptr inbounds %struct.PointDensity, ptr %1, i64 0, i32 13
  %65 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1, i64 1
  %66 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1, i64 2
  %67 = zext nneg i32 %52 to i64
  %68 = zext nneg i32 %41 to i64
  br label %69

69:                                               ; preds = %50, %142
  %70 = phi i64 [ 0, %50 ], [ %143, %142 ]
  %71 = phi ptr [ %54, %50 ], [ %144, %142 ]
  %72 = load ptr, ptr %55, align 8, !tbaa !83
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %72, i64 0, i32 7
  %74 = load i16, ptr %73, align 8, !tbaa !84
  %75 = icmp eq i16 %74, 2
  br i1 %75, label %76, label %98

76:                                               ; preds = %69
  %77 = load i32, ptr %37, align 8, !tbaa !77
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %70, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load ptr, ptr %60, align 8, !tbaa !86
  %82 = icmp eq ptr %81, null
  br i1 %82, label %142, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds ptr, ptr %81, i64 %70
  br label %91

85:                                               ; preds = %76
  %86 = load ptr, ptr %59, align 8, !tbaa !87
  %87 = icmp eq ptr %86, null
  br i1 %87, label %142, label %88

88:                                               ; preds = %85
  %89 = sub nsw i64 %70, %78
  %90 = getelementptr inbounds ptr, ptr %86, i64 %89
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi ptr [ %84, %83 ], [ %90, %88 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !88
  %94 = getelementptr inbounds %struct.ParticleCacheKey, ptr %93, i64 0, i32 5
  %95 = load i32, ptr %94, align 4, !tbaa !89
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ParticleCacheKey, ptr %93, i64 %96
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %97) #12
  call fastcc void @zero_v3(ptr noundef nonnull %61) #12
  store float 0.000000e+00, ptr %56, align 4, !tbaa !91
  br label %120

98:                                               ; preds = %69
  store float %14, ptr %56, align 4, !tbaa !91
  %99 = trunc i64 %70 to i32
  %100 = call i32 @psys_get_particle_state(ptr noundef nonnull %6, i32 noundef %99, ptr noundef nonnull %5, i32 noundef 0) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %142, label %102

102:                                              ; preds = %98
  br i1 %57, label %120, label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %37, align 8, !tbaa !77
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %70, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ParticleData, ptr %71, i64 0, i32 6
  %109 = load float, ptr %108, align 4, !tbaa !93
  %110 = fsub float %14, %109
  %111 = getelementptr inbounds %struct.ParticleData, ptr %71, i64 0, i32 7
  %112 = load float, ptr %111, align 8, !tbaa !95
  %113 = fdiv float %110, %112
  store float %113, ptr %56, align 4, !tbaa !91
  br label %120

114:                                              ; preds = %103
  %115 = load ptr, ptr %58, align 8, !tbaa !96
  %116 = getelementptr inbounds %struct.ChildParticle, ptr %115, i64 %70
  %117 = sub nsw i64 0, %105
  %118 = getelementptr inbounds %struct.ChildParticle, ptr %116, i64 %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  %119 = call float @psys_get_child_time(ptr noundef nonnull %3, ptr noundef %118, float noundef %14, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  store float %119, ptr %56, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %120

120:                                              ; preds = %102, %114, %107, %91
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #12
  %121 = load i16, ptr %62, align 4, !tbaa !97
  switch i16 %121, label %124 [
    i16 1, label %122
    i16 0, label %123
  ]

122:                                              ; preds = %120
  call void @mul_m4_v3(ptr noundef nonnull %35, ptr noundef nonnull %7) #11
  br label %124

123:                                              ; preds = %120
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %63) #12
  br label %124

124:                                              ; preds = %120, %123, %122
  %125 = load ptr, ptr %45, align 8, !tbaa !44
  %126 = trunc i64 %70 to i32
  call void @BLI_bvhtree_insert(ptr noundef %125, i32 noundef %126, ptr noundef nonnull %7, i32 noundef 1) #11
  br i1 %48, label %136, label %127

127:                                              ; preds = %124
  %128 = load float, ptr %61, align 4, !tbaa !98
  %129 = load ptr, ptr %64, align 8, !tbaa !99
  %130 = mul nuw nsw i64 %70, 3
  %131 = getelementptr inbounds float, ptr %129, i64 %130
  store float %128, ptr %131, align 4, !tbaa !98
  %132 = load float, ptr %65, align 4, !tbaa !98
  %133 = getelementptr float, ptr %131, i64 1
  store float %132, ptr %133, align 4, !tbaa !98
  %134 = load float, ptr %66, align 4, !tbaa !98
  %135 = getelementptr float, ptr %131, i64 2
  store float %134, ptr %135, align 4, !tbaa !98
  br label %136

136:                                              ; preds = %127, %124
  br i1 %57, label %142, label %137

137:                                              ; preds = %136
  %138 = load float, ptr %56, align 4, !tbaa !91
  %139 = load ptr, ptr %64, align 8, !tbaa !99
  %140 = getelementptr float, ptr %139, i64 %70
  %141 = getelementptr float, ptr %140, i64 %67
  store float %138, ptr %141, align 4, !tbaa !98
  br label %142

142:                                              ; preds = %80, %136, %137, %98, %85
  %143 = add nuw nsw i64 %70, 1
  %144 = getelementptr inbounds %struct.ParticleData, ptr %71, i64 1
  %145 = icmp eq i64 %143, %68
  br i1 %145, label %146, label %69, !llvm.loop !100

146:                                              ; preds = %142, %31
  %147 = load ptr, ptr %45, align 8, !tbaa !44
  call void @BLI_bvhtree_balance(ptr noundef %147) #11
  %148 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 95
  %149 = load ptr, ptr %148, align 8, !tbaa !102
  call void %149(ptr noundef %27) #11
  %150 = load ptr, ptr %43, align 8, !tbaa !80
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  call void @end_latt_deform(ptr noundef nonnull %150) #11
  store ptr null, ptr %43, align 8, !tbaa !80
  br label %153

153:                                              ; preds = %152, %146
  call void @psys_render_restore(ptr noundef %2, ptr noundef nonnull %3) #11
  br label %154

154:                                              ; preds = %153, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pointdensity_cache_object(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !105 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !72
  %8 = or i64 %7, 96
  %9 = tail call ptr @mesh_create_derived_render(ptr noundef %6, ptr noundef %2, i64 noundef %8) #11
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = tail call ptr %11(ptr noundef %9) #11
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = tail call i32 %14(ptr noundef %9) #11
  %16 = getelementptr inbounds %struct.PointDensity, ptr %1, i64 0, i32 6
  store i32 %15, ptr %16, align 8, !tbaa !81
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %3
  %19 = tail call ptr @BLI_bvhtree_new(i32 noundef %15, float noundef 0.000000e+00, i8 noundef zeroext 4, i8 noundef zeroext 6) #11
  %20 = getelementptr inbounds %struct.PointDensity, ptr %1, i64 0, i32 12
  store ptr %19, ptr %20, align 8, !tbaa !44
  %21 = load i32, ptr %16, align 8, !tbaa !81
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.PointDensity, ptr %1, i64 0, i32 11
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %26 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33
  br label %27

27:                                               ; preds = %23, %33
  %28 = phi ptr [ %12, %23 ], [ %36, %33 ]
  %29 = phi i32 [ 0, %23 ], [ %35, %33 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %28) #12
  %30 = load i16, ptr %24, align 2, !tbaa !108
  switch i16 %30, label %32 [
    i16 1, label %33
    i16 0, label %31
  ]

31:                                               ; preds = %27
  call void @mul_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %4) #11
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %26) #12
  br label %33

32:                                               ; preds = %27
  call void @mul_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %4) #11
  br label %33

33:                                               ; preds = %32, %31, %27
  %34 = load ptr, ptr %20, align 8, !tbaa !44
  call void @BLI_bvhtree_insert(ptr noundef %34, i32 noundef %29, ptr noundef nonnull %4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %35 = add nuw nsw i32 %29, 1
  %36 = getelementptr inbounds %struct.MVert, ptr %28, i64 1
  %37 = load i32, ptr %16, align 8, !tbaa !81
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %27, label %39, !llvm.loop !109

39:                                               ; preds = %33
  %40 = load ptr, ptr %20, align 8, !tbaa !44
  br label %41

41:                                               ; preds = %39, %18
  %42 = phi ptr [ %40, %39 ], [ %19, %18 ]
  call void @BLI_bvhtree_balance(ptr noundef %42) #11
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 95
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  call void %44(ptr noundef %9) #11
  br label %45

45:                                               ; preds = %3, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_pointdensities(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %10, align 8, !tbaa !120
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  tail call void %12(ptr noundef %14, ptr noundef nonnull %9) #11
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %8, %30
  %21 = phi ptr [ %31, %30 ], [ %18, %8 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !124
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Tex, ptr %21, i64 0, i32 32
  %27 = load i16, ptr %26, align 8, !tbaa !125
  %28 = icmp eq i16 %27, 14
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @cache_pointdensity(ptr noundef %0, ptr noundef nonnull %21) #12
  br label %30

30:                                               ; preds = %20, %25, %29
  %31 = load ptr, ptr %21, align 8, !tbaa !88
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %20, !llvm.loop !126

33:                                               ; preds = %30, %8
  store ptr null, ptr %10, align 8, !tbaa !120
  %34 = load ptr, ptr %11, align 8, !tbaa !121
  %35 = load ptr, ptr %13, align 8, !tbaa !122
  tail call void %34(ptr noundef %35, ptr noundef nonnull %9) #11
  br label %36

36:                                               ; preds = %1, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_pointdensities(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %8, %24
  %15 = phi ptr [ %25, %24 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !124
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 32
  %21 = load i16, ptr %20, align 8, !tbaa !125
  %22 = icmp eq i16 %21, 14
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call fastcc void @free_pointdensity(ptr noundef nonnull %15) #12
  br label %24

24:                                               ; preds = %14, %19, %23
  %25 = load ptr, ptr %15, align 8, !tbaa !88
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %14, !llvm.loop !127

27:                                               ; preds = %24, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_pointdensity(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !128 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %7) #11
  store ptr null, ptr %6, align 8, !tbaa !44
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  tail call void %15(ptr noundef nonnull %12) #11
  store ptr null, ptr %11, align 8, !tbaa !99
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 6
  store i32 0, ptr %17, align 8, !tbaa !81
  br label %18

18:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @pointdensitytex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointDensityRangeData, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 0.000000e+00, ptr %5, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store float 0.000000e+00, ptr %6, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  store float 0.000000e+00, ptr %2, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %268, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %268, label %18

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
  call fastcc void @init_pointdensityrangedata(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %26, float noundef %29) #12
  %30 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 19
  %31 = load float, ptr %30, align 8, !tbaa !134
  %32 = fmul float %31, 5.000000e-01
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #12
  %33 = call fastcc i32 @point_data_used(ptr noundef nonnull %12) #12, !range !69
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %15, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 3
  %38 = load float, ptr %37, align 8, !tbaa !135
  %39 = call i32 @BLI_bvhtree_range_query(ptr noundef %36, ptr noundef nonnull %8, float noundef %38, ptr noundef nonnull @accum_density, ptr noundef nonnull %4) #11
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = sitofp i32 %39 to float
  %43 = load float, ptr %6, align 4, !tbaa !98
  %44 = fdiv float %43, %42
  store float %44, ptr %6, align 4, !tbaa !98
  %45 = fdiv float 1.000000e+00, %42
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %45) #12
  br label %46

46:                                               ; preds = %41, %35
  %47 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %47, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !98
  store float 0.000000e+00, ptr %5, align 4, !tbaa !98
  br label %48

48:                                               ; preds = %46, %25
  %49 = load i16, ptr %12, align 8, !tbaa !131
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %133, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 16
  %54 = load i16, ptr %53, align 2, !tbaa !136
  switch i16 %54, label %97 [
    i16 2, label %55
    i16 3, label %74
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 14
  %57 = load float, ptr %56, align 8, !tbaa !137
  %58 = load float, ptr %1, align 4, !tbaa !98
  %59 = load float, ptr %6, align 4, !tbaa !98
  %60 = fadd float %58, %59
  %61 = getelementptr inbounds float, ptr %1, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !98
  %63 = fadd float %59, %62
  %64 = getelementptr inbounds float, ptr %1, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !98
  %66 = fadd float %59, %65
  %67 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 15
  %68 = load i16, ptr %67, align 4, !tbaa !138
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 17
  %71 = load i16, ptr %70, align 8, !tbaa !139
  %72 = sext i16 %71 to i32
  %73 = call float @BLI_gTurbulence(float noundef %57, float noundef %60, float noundef %63, float noundef %66, i32 noundef %69, i32 noundef 0, i32 noundef %72) #11
  br label %120

74:                                               ; preds = %52
  %75 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !140
  %76 = sitofp i32 %75 to float
  %77 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 7), align 8, !tbaa !141
  %78 = sitofp i32 %77 to float
  %79 = fdiv float %76, %78
  %80 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 14
  %81 = load float, ptr %80, align 8, !tbaa !137
  %82 = load float, ptr %1, align 4, !tbaa !98
  %83 = fadd float %82, %79
  %84 = getelementptr inbounds float, ptr %1, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !98
  %86 = fadd float %79, %85
  %87 = getelementptr inbounds float, ptr %1, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !98
  %89 = fadd float %79, %88
  %90 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 15
  %91 = load i16, ptr %90, align 4, !tbaa !138
  %92 = sext i16 %91 to i32
  %93 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 17
  %94 = load i16, ptr %93, align 8, !tbaa !139
  %95 = sext i16 %94 to i32
  %96 = call float @BLI_gTurbulence(float noundef %81, float noundef %83, float noundef %86, float noundef %89, i32 noundef %92, i32 noundef 0, i32 noundef %95) #11
  br label %120

97:                                               ; preds = %52
  %98 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 14
  %99 = load float, ptr %98, align 8, !tbaa !137
  %100 = load float, ptr %1, align 4, !tbaa !98
  %101 = load float, ptr %7, align 8, !tbaa !98
  %102 = fadd float %100, %101
  %103 = getelementptr inbounds float, ptr %1, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !98
  %105 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !98
  %107 = fadd float %104, %106
  %108 = getelementptr inbounds float, ptr %1, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !98
  %110 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %111 = load float, ptr %110, align 8, !tbaa !98
  %112 = fadd float %109, %111
  %113 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 15
  %114 = load i16, ptr %113, align 4, !tbaa !138
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 17
  %117 = load i16, ptr %116, align 8, !tbaa !139
  %118 = sext i16 %117 to i32
  %119 = call float @BLI_gTurbulence(float noundef %99, float noundef %102, float noundef %107, float noundef %112, i32 noundef %115, i32 noundef 0, i32 noundef %118) #11
  br label %120

120:                                              ; preds = %74, %97, %55
  %121 = phi float [ %73, %55 ], [ %96, %74 ], [ %119, %97 ]
  %122 = fadd float %121, -5.000000e-01
  %123 = load <2 x float>, ptr %1, align 4, !tbaa !98
  %124 = insertelement <2 x float> poison, float %32, i64 0
  %125 = shufflevector <2 x float> %124, <2 x float> poison, <2 x i32> zeroinitializer
  %126 = insertelement <2 x float> poison, float %122, i64 0
  %127 = shufflevector <2 x float> %126, <2 x float> poison, <2 x i32> zeroinitializer
  %128 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %125, <2 x float> %127, <2 x float> %123)
  store <2 x float> %128, ptr %8, align 8, !tbaa !98
  %129 = getelementptr inbounds float, ptr %1, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !98
  %131 = call float @llvm.fmuladd.f32(float %32, float %122, float %130)
  %132 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %131, ptr %132, align 8, !tbaa !98
  br label %133

133:                                              ; preds = %120, %48
  %134 = load ptr, ptr %15, align 8, !tbaa !44
  %135 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 3
  %136 = load float, ptr %135, align 8, !tbaa !135
  %137 = call i32 @BLI_bvhtree_range_query(ptr noundef %134, ptr noundef nonnull %8, float noundef %136, ptr noundef nonnull @accum_density, ptr noundef nonnull %4) #11
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = sitofp i32 %137 to float
  %141 = load float, ptr %6, align 4, !tbaa !98
  %142 = fdiv float %141, %140
  store float %142, ptr %6, align 4, !tbaa !98
  %143 = fdiv float 1.000000e+00, %140
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %143) #12
  br label %144

144:                                              ; preds = %139, %133
  %145 = load float, ptr %5, align 4, !tbaa !98
  %146 = fadd float %145, -5.000000e-01
  %147 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %148 = load float, ptr %147, align 4, !tbaa !142
  %149 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %150 = load float, ptr %149, align 8, !tbaa !143
  %151 = call float @llvm.fmuladd.f32(float %146, float %148, float %150)
  %152 = fadd float %151, -5.000000e-01
  store float %152, ptr %2, align 8, !tbaa !129
  %153 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %154 = load i16, ptr %153, align 2, !tbaa !144
  %155 = and i16 %154, 1024
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %144
  %158 = fcmp olt float %152, 0.000000e+00
  br i1 %158, label %161, label %159

159:                                              ; preds = %157
  %160 = fcmp ogt float %152, 1.000000e+00
  br i1 %160, label %161, label %163

161:                                              ; preds = %159, %157
  %162 = phi float [ 0.000000e+00, %157 ], [ 1.000000e+00, %159 ]
  store float %162, ptr %2, align 8, !tbaa !129
  br label %163

163:                                              ; preds = %161, %159, %144
  %164 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 5
  %165 = load i16, ptr %164, align 2, !tbaa !145
  switch i16 %165, label %208 [
    i16 0, label %268
    i16 1, label %166
    i16 2, label %182
    i16 3, label %201
  ]

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 23
  %168 = load ptr, ptr %167, align 8, !tbaa !146
  %169 = icmp eq ptr %168, null
  br i1 %169, label %210, label %170

170:                                              ; preds = %166
  %171 = load float, ptr %6, align 4, !tbaa !98
  %172 = call zeroext i8 @do_colorband(ptr noundef nonnull %168, float noundef %171, ptr noundef nonnull %9) #11
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %210, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %175, align 4, !tbaa !147
  %176 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %176, ptr noundef nonnull %9) #12
  %177 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %178 = load float, ptr %177, align 4, !tbaa !98
  %179 = load float, ptr %2, align 8, !tbaa !129
  %180 = fmul float %178, %179
  store float %180, ptr %2, align 8, !tbaa !129
  %181 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %180, ptr %181, align 8, !tbaa !148
  br label %210

182:                                              ; preds = %163
  %183 = call fastcc float @len_v3(ptr noundef nonnull %7) #12
  %184 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 23
  %185 = load ptr, ptr %184, align 8, !tbaa !146
  %186 = icmp eq ptr %185, null
  br i1 %186, label %210, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 20
  %189 = load float, ptr %188, align 4, !tbaa !149
  %190 = fmul float %183, %189
  %191 = call zeroext i8 @do_colorband(ptr noundef nonnull %185, float noundef %190, ptr noundef nonnull %9) #11
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %210, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %194, align 4, !tbaa !147
  %195 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %195, ptr noundef nonnull %9) #12
  %196 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %197 = load float, ptr %196, align 4, !tbaa !98
  %198 = load float, ptr %2, align 8, !tbaa !129
  %199 = fmul float %197, %198
  store float %199, ptr %2, align 8, !tbaa !129
  %200 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %199, ptr %200, align 8, !tbaa !148
  br label %210

201:                                              ; preds = %163
  %202 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %202, align 4, !tbaa !147
  %203 = getelementptr inbounds %struct.PointDensity, ptr %12, i64 0, i32 20
  %204 = load float, ptr %203, align 4, !tbaa !149
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %204) #12
  %205 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %205, ptr noundef nonnull %7) #12
  %206 = load float, ptr %2, align 8, !tbaa !129
  %207 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %206, ptr %207, align 8, !tbaa !148
  br label %210

208:                                              ; preds = %163
  %209 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %209, align 4, !tbaa !98
  br label %210

210:                                              ; preds = %182, %193, %187, %166, %174, %170, %208, %201
  %211 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %212 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %213 = load float, ptr %147, align 4, !tbaa !142
  %214 = load float, ptr %149, align 8, !tbaa !143
  %215 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %216 = load <2 x float>, ptr %211, align 4, !tbaa !98
  %217 = load <2 x float>, ptr %212, align 4, !tbaa !98
  %218 = fadd <2 x float> %217, <float -5.000000e-01, float -5.000000e-01>
  %219 = insertelement <2 x float> poison, float %213, i64 0
  %220 = shufflevector <2 x float> %219, <2 x float> poison, <2 x i32> zeroinitializer
  %221 = insertelement <2 x float> poison, float %214, i64 0
  %222 = shufflevector <2 x float> %221, <2 x float> poison, <2 x i32> zeroinitializer
  %223 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %218, <2 x float> %220, <2 x float> %222)
  %224 = fadd <2 x float> %223, <float -5.000000e-01, float -5.000000e-01>
  %225 = fmul <2 x float> %216, %224
  store <2 x float> %225, ptr %212, align 4, !tbaa !98
  %226 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %227 = load float, ptr %226, align 4, !tbaa !150
  %228 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %229 = load float, ptr %228, align 4, !tbaa !151
  %230 = fadd float %229, -5.000000e-01
  %231 = call float @llvm.fmuladd.f32(float %230, float %213, float %214)
  %232 = fadd float %231, -5.000000e-01
  %233 = fmul float %227, %232
  store float %233, ptr %228, align 4, !tbaa !151
  %234 = load i16, ptr %153, align 2, !tbaa !144
  %235 = and i16 %234, 1024
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %237, label %252

237:                                              ; preds = %210
  %238 = extractelement <2 x float> %225, i64 0
  %239 = fcmp olt float %238, 0.000000e+00
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store float 0.000000e+00, ptr %212, align 4, !tbaa !152
  br label %241

241:                                              ; preds = %240, %237
  %242 = phi float [ 0.000000e+00, %240 ], [ %238, %237 ]
  %243 = extractelement <2 x float> %225, i64 1
  %244 = fcmp olt float %243, 0.000000e+00
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store float 0.000000e+00, ptr %215, align 8, !tbaa !153
  br label %246

246:                                              ; preds = %245, %241
  %247 = phi float [ 0.000000e+00, %245 ], [ %243, %241 ]
  %248 = fcmp olt float %233, 0.000000e+00
  %249 = insertelement <2 x float> poison, float %242, i64 0
  %250 = insertelement <2 x float> %249, float %247, i64 1
  br i1 %248, label %251, label %252

251:                                              ; preds = %246
  store float 0.000000e+00, ptr %228, align 4, !tbaa !151
  br label %252

252:                                              ; preds = %246, %251, %210
  %253 = phi float [ %233, %246 ], [ 0.000000e+00, %251 ], [ %233, %210 ]
  %254 = phi <2 x float> [ %250, %246 ], [ %250, %251 ], [ %225, %210 ]
  %255 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %256 = load float, ptr %255, align 8, !tbaa !154
  %257 = fcmp une float %256, 1.000000e+00
  br i1 %257, label %258, label %268

258:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %259 = getelementptr inbounds float, ptr %10, i64 1
  %260 = getelementptr inbounds float, ptr %10, i64 2
  %261 = extractelement <2 x float> %254, i64 0
  %262 = extractelement <2 x float> %254, i64 1
  call void @rgb_to_hsv(float noundef %261, float noundef %262, float noundef %253, ptr noundef nonnull %10, ptr noundef nonnull %259, ptr noundef nonnull %260) #11
  %263 = load float, ptr %255, align 8, !tbaa !154
  %264 = load float, ptr %259, align 4, !tbaa !98
  %265 = fmul float %263, %264
  store float %265, ptr %259, align 4, !tbaa !98
  %266 = load float, ptr %10, align 4, !tbaa !98
  %267 = load float, ptr %260, align 4, !tbaa !98
  call void @hsv_to_rgb(float noundef %266, float noundef %265, float noundef %267, ptr noundef nonnull %212, ptr noundef nonnull %215, ptr noundef nonnull %228) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  br label %268

268:                                              ; preds = %252, %258, %163, %3, %14
  %269 = phi i32 [ 0, %14 ], [ 0, %3 ], [ 0, %163 ], [ 1, %258 ], [ 1, %252 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #13
  ret i32 %269
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_pointdensityrangedata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %6) unnamed_addr #4 !PGOFuncName !155 {
  %8 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !135
  %10 = fmul float %9, %9
  %11 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 1
  store float %10, ptr %11, align 8, !tbaa !156
  store ptr %2, ptr %1, align 8, !tbaa !158
  %12 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !159
  %15 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !160
  %17 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 5
  store i16 %16, ptr %17, align 4, !tbaa !161
  %18 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 3
  store ptr %3, ptr %18, align 8, !tbaa !162
  %19 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 7
  store ptr %4, ptr %19, align 8, !tbaa !163
  %20 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !164
  %22 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 4
  store float %21, ptr %22, align 8, !tbaa !165
  %23 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 16
  %24 = load i16, ptr %23, align 2, !tbaa !136
  %25 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 6
  store i16 %24, ptr %25, align 2, !tbaa !166
  %26 = tail call fastcc i32 @point_data_used(ptr noundef %0) #12, !range !69
  %27 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 8
  store i32 %26, ptr %27, align 8, !tbaa !167
  %28 = and i32 %26, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !81
  %33 = mul nsw i32 %32, 3
  br label %34

34:                                               ; preds = %7, %30
  %35 = phi i32 [ %33, %30 ], [ 0, %7 ]
  %36 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 9
  store i32 %35, ptr %36, align 4, !tbaa !168
  %37 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 10
  store ptr %5, ptr %37, align 8, !tbaa !169
  %38 = getelementptr inbounds %struct.PointDensityRangeData, ptr %1, i64 0, i32 11
  store float %6, ptr %38, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !171 {
  %3 = load float, ptr %1, align 4, !tbaa !98
  store float %3, ptr %0, align 4, !tbaa !98
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !98
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @point_data_used(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !172 {
  %2 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 4, !tbaa !46
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 16
  %7 = load i16, ptr %6, align 2, !tbaa !136
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !160
  %12 = icmp eq i16 %11, 6
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !145
  %16 = and i16 %15, -2
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %9, %5
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %13 ]
  %21 = icmp eq i16 %7, 2
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 5
  %24 = load i16, ptr %23, align 2, !tbaa !145
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !160
  %29 = icmp eq i16 %28, 5
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22, %19
  %31 = or disjoint i32 %20, 2
  br label %32

32:                                               ; preds = %26, %30, %1
  %33 = phi i32 [ %31, %30 ], [ %20, %26 ], [ 0, %1 ]
  ret i32 %33
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_range_query(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @accum_density(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) #0 !PGOFuncName !173 {
  %4 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !156
  %6 = fsub float %5, %2
  %7 = fdiv float %6, %5
  %8 = fmul float %7, 5.000000e-01
  %9 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !167
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = mul nsw i32 %1, 3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr %15, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !98
  %20 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !162
  %22 = load float, ptr %21, align 4, !tbaa !98
  %23 = fadd float %19, %22
  store float %23, ptr %21, align 4, !tbaa !98
  %24 = getelementptr float, ptr %18, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !98
  %26 = getelementptr inbounds float, ptr %21, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !98
  %28 = fadd float %25, %27
  store float %28, ptr %26, align 4, !tbaa !98
  %29 = getelementptr float, ptr %18, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !98
  %31 = getelementptr inbounds float, ptr %21, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !98
  %33 = fadd float %30, %32
  store float %33, ptr %31, align 4, !tbaa !98
  br label %34

34:                                               ; preds = %13, %3
  %35 = and i32 %10, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !159
  %40 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !168
  %42 = add nsw i32 %41, %1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, ptr %39, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !98
  %46 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !163
  %48 = load float, ptr %47, align 4, !tbaa !98
  %49 = fadd float %45, %48
  store float %49, ptr %47, align 4, !tbaa !98
  br label %50

50:                                               ; preds = %37, %34
  %51 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 5
  %52 = load i16, ptr %51, align 4, !tbaa !161
  switch i16 %52, label %95 [
    i16 0, label %96
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
  br label %96

59:                                               ; preds = %50
  %60 = fpext float %8 to double
  %61 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 4
  %62 = load float, ptr %61, align 8, !tbaa !165
  %63 = fpext float %62 to double
  %64 = tail call double @pow(double noundef %60, double noundef %63) #11
  %65 = fptrunc double %64 to float
  br label %96

66:                                               ; preds = %50
  %67 = load float, ptr %4, align 8, !tbaa !156
  br label %96

68:                                               ; preds = %50
  %69 = tail call float @sqrtf(float noundef %8) #11
  br label %96

70:                                               ; preds = %50
  br i1 %36, label %96, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !159
  %74 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 9
  %75 = load i32, ptr %74, align 4, !tbaa !168
  %76 = add nsw i32 %75, %1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %73, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !98
  %80 = fcmp olt float %79, 1.000000e+00
  %81 = select i1 %80, float %79, float 1.000000e+00
  %82 = fmul float %8, %81
  br label %96

83:                                               ; preds = %50
  br i1 %12, label %96, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = mul nsw i32 %1, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %86, i64 %88
  %90 = tail call fastcc float @len_v3(ptr noundef %89) #12
  %91 = fmul float %8, %90
  %92 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 11
  %93 = load float, ptr %92, align 8, !tbaa !170
  %94 = fmul float %91, %93
  br label %96

95:                                               ; preds = %50
  br label %96

96:                                               ; preds = %83, %50, %95, %70, %53, %66, %71, %84, %68, %59
  %97 = phi float [ %58, %53 ], [ %65, %59 ], [ %67, %66 ], [ %69, %68 ], [ %82, %71 ], [ %94, %84 ], [ %8, %50 ], [ %8, %70 ], [ 0.000000e+00, %95 ], [ %8, %83 ]
  %98 = getelementptr inbounds %struct.PointDensityRangeData, ptr %0, i64 0, i32 10
  %99 = load ptr, ptr %98, align 8, !tbaa !169
  %100 = icmp ne ptr %99, null
  %101 = fcmp une float %8, 0.000000e+00
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  tail call void @curvemapping_initialize(ptr noundef nonnull %99) #11
  %104 = load ptr, ptr %98, align 8, !tbaa !169
  %105 = fdiv float %97, %8
  %106 = tail call float @curvemapping_evaluateF(ptr noundef %104, i32 noundef 0, float noundef %105) #11
  %107 = fmul float %8, %106
  br label %108

108:                                              ; preds = %103, %96
  %109 = phi float [ %107, %103 ], [ %97, %96 ]
  %110 = load ptr, ptr %0, align 8, !tbaa !158
  %111 = load float, ptr %110, align 4, !tbaa !98
  %112 = fadd float %109, %111
  store float %112, ptr %110, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !174 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !98
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !175 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #12
  %3 = tail call float @sqrtf(float noundef %2) #11
  ret float %3
}

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_render_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_render_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_point_data(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !176 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 3
  %7 = lshr i32 %2, 1
  %8 = and i32 %7, 1
  %9 = add nuw nsw i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !88
  %13 = shl nuw nsw i32 %9, 2
  %14 = zext nneg i32 %13 to i64
  %15 = sext i32 %1 to i64
  %16 = mul nsw i64 %14, %15
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.1) #11
  %18 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 13
  store ptr %17, ptr %18, align 8, !tbaa !99
  br label %19

19:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !177 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !98
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @psys_get_child_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !178 {
  %3 = load float, ptr %1, align 4, !tbaa !98
  %4 = load float, ptr %0, align 4, !tbaa !98
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !98
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !98
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !98
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !98
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !179 {
  %3 = load float, ptr %0, align 4, !tbaa !98
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !98
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

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
!49 = !{!50, !40, i64 136}
!50 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !51, i64 312, !37, i64 360, !52, i64 368, !52, i64 384, !52, i64 400, !52, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !52, i64 1056, !52, i64 1072, !52, i64 1088, !52, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !52, i64 1176, !52, i64 1192, !52, i64 1208, !52, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !53, i64 1304, !53, i64 1312, !41, i64 1320, !41, i64 1324, !52, i64 1328, !52, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !52, i64 1400, !37, i64 1416}
!51 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!52 = !{!"ListBase", !37, i64 0, !37, i64 8}
!53 = !{!"long", !38, i64 0}
!54 = !{!"pointdensity.c:pointdensity_cache_psys"}
!55 = !{!56, !37, i64 1096}
!56 = !{!"Render", !37, i64 0, !37, i64 8, !38, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !38, i64 104, !37, i64 112, !37, i64 120, !52, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !57, i64 156, !58, i64 172, !42, i64 188, !42, i64 192, !42, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 252, !38, i64 288, !38, i64 352, !38, i64 416, !38, i64 480, !42, i64 544, !42, i64 548, !37, i64 552, !38, i64 560, !38, i64 816, !37, i64 1072, !38, i64 1080, !37, i64 1088, !37, i64 1096, !59, i64 1104, !66, i64 5088, !37, i64 5616, !41, i64 5624, !41, i64 5628, !52, i64 5632, !37, i64 5648, !37, i64 5656, !37, i64 5664, !37, i64 5672, !42, i64 5680, !37, i64 5688, !52, i64 5696, !42, i64 5712, !42, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !37, i64 5744, !52, i64 5752, !52, i64 5768, !52, i64 5784, !37, i64 5800, !52, i64 5808, !41, i64 5824, !37, i64 5832, !37, i64 5840, !37, i64 5848, !37, i64 5856, !37, i64 5864, !52, i64 5872, !37, i64 5888, !52, i64 5896, !52, i64 5912, !37, i64 5928, !37, i64 5936, !37, i64 5944, !37, i64 5952, !37, i64 5960, !37, i64 5968, !37, i64 5976, !37, i64 5984, !37, i64 5992, !37, i64 6000, !37, i64 6008, !37, i64 6016, !37, i64 6024, !37, i64 6032, !37, i64 6040, !37, i64 6048, !37, i64 6056, !67, i64 6064, !37, i64 6216, !37, i64 6224, !37, i64 6232}
!57 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!58 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!59 = !{!"RenderData", !60, i64 0, !37, i64 248, !37, i64 256, !63, i64 264, !64, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !58, i64 544, !58, i64 560, !57, i64 576, !52, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !65, i64 2616, !41, i64 3976, !41, i64 3980}
!60 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !61, i64 24, !62, i64 184}
!61 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!62 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!63 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!64 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!65 = !{!"BakeData", !60, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!66 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!67 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !38, i64 40, !68, i64 48, !68, i64 56, !37, i64 64, !37, i64 72, !38, i64 80, !42, i64 144, !42, i64 148}
!68 = !{!"double", !38, i64 0}
!69 = !{i32 0, i32 4}
!70 = !{!56, !41, i64 148}
!71 = !{!56, !41, i64 152}
!72 = !{!53, !53, i64 0}
!73 = !{!74, !37, i64 0}
!74 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !42, i64 40}
!75 = !{!74, !37, i64 8}
!76 = !{!74, !37, i64 16}
!77 = !{!78, !41, i64 320}
!78 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !52, i64 72, !52, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !52, i64 152, !38, i64 168, !38, i64 232, !42, i64 296, !42, i64 300, !42, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !52, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !42, i64 648, !42, i64 652}
!79 = !{!78, !41, i64 328}
!80 = !{!78, !37, i64 136}
!81 = !{!45, !41, i64 16}
!82 = !{!78, !37, i64 24}
!83 = !{!78, !37, i64 16}
!84 = !{!85, !40, i64 160}
!85 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 248, !42, i64 256, !42, i64 260, !42, i64 264, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !38, i64 376, !42, i64 388, !42, i64 392, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !42, i64 412, !38, i64 416, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !41, i64 444, !41, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !42, i64 480, !42, i64 484, !42, i64 488, !42, i64 492, !42, i64 496, !42, i64 500, !42, i64 504, !42, i64 508, !42, i64 512, !42, i64 516, !42, i64 520, !42, i64 524, !42, i64 528, !42, i64 532, !42, i64 536, !42, i64 540, !42, i64 544, !42, i64 548, !38, i64 552, !42, i64 560, !42, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !52, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!86 = !{!78, !37, i64 56}
!87 = !{!78, !37, i64 64}
!88 = !{!37, !37, i64 0}
!89 = !{!90, !41, i64 56}
!90 = !{!"ParticleCacheKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !42, i64 52, !41, i64 56}
!91 = !{!92, !42, i64 52}
!92 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !42, i64 52}
!93 = !{!94, !42, i64 140}
!94 = !{!"ParticleData", !92, i64 0, !92, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !41, i64 152, !41, i64 156, !38, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!95 = !{!94, !42, i64 144}
!96 = !{!78, !37, i64 32}
!97 = !{!45, !40, i64 36}
!98 = !{!42, !42, i64 0}
!99 = !{!45, !37, i64 48}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!103, !37, i64 1680}
!103 = !{!"DerivedMesh", !104, i64 0, !104, i64 200, !104, i64 400, !104, i64 600, !104, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!104 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!105 = !{!"pointdensity.c:pointdensity_cache_object"}
!106 = !{!103, !37, i64 1168}
!107 = !{!103, !37, i64 1104}
!108 = !{!45, !40, i64 38}
!109 = distinct !{!109, !101}
!110 = !{!111, !41, i64 796}
!111 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !52, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !59, i64 280, !112, i64 4264, !52, i64 4296, !52, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !52, i64 4384, !113, i64 4400, !114, i64 4416, !117, i64 4600, !37, i64 4608, !118, i64 4616, !37, i64 4640, !53, i64 4648, !53, i64 4656, !61, i64 4664, !62, i64 4824, !119, i64 4888, !37, i64 4952}
!112 = !{!"AudioData", !41, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28}
!113 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!114 = !{!"GameData", !113, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !115, i64 40, !40, i64 64, !40, i64 66, !42, i64 68, !116, i64 72, !42, i64 128, !42, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!115 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!116 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 54}
!117 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!118 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!119 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!120 = !{!56, !37, i64 6128}
!121 = !{!56, !37, i64 6000}
!122 = !{!56, !37, i64 6008}
!123 = !{!56, !37, i64 1088}
!124 = !{!35, !41, i64 100}
!125 = !{!35, !40, i64 232}
!126 = distinct !{!126, !101}
!127 = distinct !{!127, !101}
!128 = !{!"pointdensity.c:free_pointdensity"}
!129 = !{!130, !42, i64 0}
!130 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !41, i64 20, !37, i64 24}
!131 = !{!45, !40, i64 0}
!132 = !{!45, !37, i64 96}
!133 = !{!45, !42, i64 80}
!134 = !{!45, !42, i64 72}
!135 = !{!45, !42, i64 8}
!136 = !{!45, !40, i64 62}
!137 = !{!45, !42, i64 56}
!138 = !{!45, !40, i64 60}
!139 = !{!45, !40, i64 64}
!140 = !{!56, !41, i64 1504}
!141 = !{!56, !41, i64 1512}
!142 = !{!35, !42, i64 140}
!143 = !{!35, !42, i64 136}
!144 = !{!35, !40, i64 230}
!145 = !{!45, !40, i64 14}
!146 = !{!45, !37, i64 88}
!147 = !{!130, !41, i64 20}
!148 = !{!130, !42, i64 16}
!149 = !{!45, !42, i64 76}
!150 = !{!35, !42, i64 156}
!151 = !{!130, !42, i64 12}
!152 = !{!130, !42, i64 4}
!153 = !{!130, !42, i64 8}
!154 = !{!35, !42, i64 144}
!155 = !{!"pointdensity.c:init_pointdensityrangedata"}
!156 = !{!157, !42, i64 8}
!157 = !{!"PointDensityRangeData", !37, i64 0, !42, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !40, i64 36, !40, i64 38, !37, i64 40, !41, i64 48, !41, i64 52, !37, i64 56, !42, i64 64}
!158 = !{!157, !37, i64 0}
!159 = !{!157, !37, i64 16}
!160 = !{!45, !40, i64 2}
!161 = !{!157, !40, i64 36}
!162 = !{!157, !37, i64 24}
!163 = !{!157, !37, i64 40}
!164 = !{!45, !42, i64 4}
!165 = !{!157, !42, i64 32}
!166 = !{!157, !40, i64 38}
!167 = !{!157, !41, i64 48}
!168 = !{!157, !41, i64 52}
!169 = !{!157, !37, i64 56}
!170 = !{!157, !42, i64 64}
!171 = !{!"pointdensity.c:copy_v3_v3"}
!172 = !{!"pointdensity.c:point_data_used"}
!173 = !{!"pointdensity.c:accum_density"}
!174 = !{!"pointdensity.c:mul_v3_fl"}
!175 = !{!"pointdensity.c:len_v3"}
!176 = !{!"pointdensity.c:alloc_point_data"}
!177 = !{!"pointdensity.c:zero_v3"}
!178 = !{!"pointdensity.c:sub_v3_v3"}
!179 = !{!"pointdensity.c:dot_v3v3"}
