; ModuleID = 'blender/source/blender/blenkernel/intern/particle_system.c'
source_filename = "blender/source/blender/blenkernel/intern/particle_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ParticleThreadContext = type { %struct.ParticleSimulationData, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, float, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ParticleThread = type { ptr, ptr, ptr, i32, i32 }
%struct.ParticleTexture = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.BoidParticle = type { ptr, %struct.BoidData, [3 x float], [3 x float], float }
%struct.BoidData = type { float, [3 x float], i16, i16 }
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
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.ParticleTarget = type { ptr, ptr, ptr, i32, i16, i16, float, float }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SPHData = type { [10 x ptr], ptr, float, ptr, ptr, float, i32, float, [3 x float], ptr, ptr }
%struct.ParticleSpring = type { float, [2 x i32], i32 }
%struct.SPHFluidSettings = type { float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i16, [3 x i16] }
%struct.SPHRangeData = type { [512 x %struct.SPHNeighbor], i32, ptr, ptr, ptr, float, float, float, i32 }
%struct.SPHNeighbor = type { ptr, i32 }
%struct.ParticleCollisionElement = type { [4 x ptr], [4 x ptr], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [2 x float], i32, i32, i16, i16 }
%struct.ParticleCollision = type { ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, %struct.ParticleCollisionElement, float, float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, i32 }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BVHTreeRay = type { [3 x float], [3 x float], float }
%struct.ParticleDrawData = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.HairKey = type { [3 x float], float, float, i16, i16 }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.ClothCollSettings = type { ptr, float, float, float, float, float, float, i32, i16, i16, ptr, i16, i16, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.BoidBrainData = type { ptr, ptr, float, float, float, [3 x float], float, ptr, [3 x float], [3 x float], float, ptr }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ParticleInstanceModifierData = type { %struct.ModifierData, ptr, i16, i16, i16, i16, float, float }
%struct.EfData = type { %struct.ParticleTexture, ptr, ptr }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.KDTreeNearest = type { i32, float, [3 x float] }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"psys node elems\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"psys node array\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ParticleThread\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ParticleThreadContext\00", align 1
@__const.psys_get_birth_coordinates.x_vec = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@__const.psys_get_birth_coordinates.utan = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 4
@__const.psys_get_birth_coordinates.vtan = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Boid Data\00", align 1
@PSYS_FRAND_SEED_OFFSET = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_SEED_MULTIPLIER = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_BASE = external local_unnamed_addr global [1024 x float], align 16
@__func__.sph_springhash_build = private unnamed_addr constant [21 x i8] c"sph_springhash_build\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Particle Fluid Springs\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.sph_spring_add = private unnamed_addr constant [15 x i8] c"sph_spring_add\00", align 1
@psys_bvhtree_rwlock = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Boid Settings\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"SPH Fluid Settings\00", align 1
@__const.basic_rotate.rot2 = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@__func__.sph_spring_delete = private unnamed_addr constant [18 x i8] c"sph_spring_delete\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"HairKeys\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"deformWeight\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"do_hair_dynamics vertexCos\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"particles\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"boid particles\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Particle distribution error!\0A\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.15 = private unnamed_addr constant [52 x i8] c"Particle distribution error: Nothing to emit from!\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"particle_distribution_weights\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"particle_distribution_indexes\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"particle_distribution_sum\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"particle_distribution_jitoff\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"jit\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"initjit\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"child_particles\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Shape emission not yet possible!\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Keyed keys\00", align 1
@str = private unnamed_addr constant [86 x i8] c"Can't create particles with the current modifier stack, disable destructive modifiers\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @psys_get_current_display_percentage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 7
  %16 = load i16, ptr %15, align 8, !tbaa !47
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = and i32 %20, 4
  br label %28

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 11
  %24 = load i16, ptr %23, align 8, !tbaa !51
  switch i16 %24, label %25 [
    i16 1, label %28
    i16 3, label %28
  ]

25:                                               ; preds = %22
  %26 = icmp eq i16 %24, 4
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %7, %18, %22, %22, %25
  %29 = phi i32 [ %21, %18 ], [ 0, %7 ], [ 1, %22 ], [ %27, %25 ], [ 1, %22 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %28, %1
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 89
  %33 = load i32, ptr %32, align 4, !tbaa !52
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 19
  %37 = load i16, ptr %36, align 4, !tbaa !53
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.PointCache, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !45
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 30
  %48 = load i16, ptr %47, align 2, !tbaa !54
  %49 = sitofp i16 %48 to float
  %50 = fdiv float %49, 1.000000e+02
  br label %51

51:                                               ; preds = %28, %35, %39, %46
  %52 = phi float [ %50, %46 ], [ 1.000000e+00, %39 ], [ 1.000000e+00, %35 ], [ 1.000000e+00, %28 ]
  ret float %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @psys_reset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %52

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %7, %5
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 9
  %18 = load i16, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !57
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 65
  %26 = load i32, ptr %25, align 4, !tbaa !58
  %27 = mul nsw i32 %26, %26
  %28 = mul nsw i32 %27, %26
  br label %32

29:                                               ; preds = %20, %12
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 63
  %31 = load i32, ptr %30, align 4, !tbaa !59
  br label %32

32:                                               ; preds = %24, %29
  %33 = phi i32 [ %28, %24 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 27
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = sub nsw i32 %33, %35
  %37 = icmp eq i32 %14, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void @psys_free_particles(ptr noundef %0) #16
  store i32 0, ptr %13, align 8, !tbaa !55
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 33
  store i16 0, ptr %40, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = and i32 %42, -1537
  store i32 %43, ptr %41, align 4, !tbaa !50
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  %46 = icmp eq ptr %45, null
  br i1 %46, label %70, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  %50 = icmp eq ptr %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  tail call void %49(ptr noundef nonnull %45) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  br label %70

52:                                               ; preds = %2
  %53 = icmp eq i32 %1, 4
  br i1 %53, label %54, label %70

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %56 = load i32, ptr %55, align 8, !tbaa !55
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !64
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i32 [ %67, %61 ], [ 0, %58 ]
  %63 = phi ptr [ %68, %61 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.ParticleData, ptr %63, i64 0, i32 17
  %65 = load i16, ptr %64, align 4, !tbaa !65
  %66 = or i16 %65, 2
  store i16 %66, ptr %64, align 4, !tbaa !65
  %67 = add nuw nsw i32 %62, 1
  %68 = getelementptr inbounds %struct.ParticleData, ptr %63, i64 1
  %69 = icmp eq i32 %67, %56
  br i1 %69, label %70, label %61, !llvm.loop !68

70:                                               ; preds = %61, %54, %52, %7, %51, %47, %39
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %75(ptr noundef nonnull %72) #16
  store ptr null, ptr %71, align 8, !tbaa !71
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 28
  store i32 0, ptr %77, align 8, !tbaa !73
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !62
  tail call void @psys_free_path_cache(ptr noundef %0, ptr noundef %79) #16
  %80 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %81 = load ptr, ptr %80, align 8, !tbaa !44
  tail call void @BKE_ptcache_invalidate(ptr noundef %81) #16
  %82 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %83 = load ptr, ptr %82, align 8, !tbaa !74
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %86(ptr noundef nonnull %83) #16
  store ptr null, ptr %82, align 8, !tbaa !74
  br label %87

87:                                               ; preds = %85, %76
  %88 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 45
  store i32 0, ptr %88, align 4, !tbaa !75
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  store i32 0, ptr %89, align 8, !tbaa !76
  ret void
}

declare void @psys_free_particles(ptr noundef) local_unnamed_addr #3

declare void @psys_free_path_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_ptcache_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @psys_calc_dmcache(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 130
  %9 = load i16, ptr %8, align 8, !tbaa !81
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !82
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %158

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !57
  %17 = icmp eq i16 %16, 0
  %18 = icmp eq i8 %10, 0
  br i1 %17, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = tail call i32 %21(ptr noundef %1) #16
  br i1 %18, label %23, label %44

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %25 = load i32, ptr %24, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 50
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = tail call ptr %27(ptr noundef %1, i32 noundef 7) #16
  br label %44

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = tail call i32 %31(ptr noundef %1) #16
  br i1 %18, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %35 = load i32, ptr %34, align 8, !tbaa !90
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  %38 = tail call ptr %37(ptr noundef %1, i32 noundef 7) #16
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 54
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  %41 = tail call ptr %40(ptr noundef %1, i32 noundef 7) #16
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr null, ptr %38
  br label %44

44:                                               ; preds = %33, %29, %19, %23
  %45 = phi i32 [ %22, %23 ], [ %22, %19 ], [ %32, %29 ], [ %32, %33 ]
  %46 = phi i32 [ %25, %23 ], [ %22, %19 ], [ %32, %29 ], [ %35, %33 ]
  %47 = phi ptr [ %28, %23 ], [ null, %19 ], [ null, %29 ], [ %43, %33 ]
  %48 = phi ptr [ null, %23 ], [ null, %19 ], [ null, %29 ], [ %41, %33 ]
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %50 = sext i32 %45 to i64
  %51 = shl nsw i64 %50, 4
  %52 = tail call ptr %49(i64 noundef %51, ptr noundef nonnull @.str) #16
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %54 = sext i32 %46 to i64
  %55 = shl nsw i64 %54, 3
  %56 = tail call ptr %53(i64 noundef %55, ptr noundef nonnull @.str.1) #16
  %57 = icmp sgt i32 %45, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %44
  %59 = icmp eq i8 %10, 0
  %60 = icmp eq ptr %47, null
  %61 = icmp ne ptr %48, null
  %62 = zext nneg i32 %45 to i64
  br label %63

63:                                               ; preds = %58, %93
  %64 = phi i64 [ 0, %58 ], [ %94, %93 ]
  %65 = phi ptr [ %52, %58 ], [ %95, %93 ]
  %66 = inttoptr i64 %64 to ptr
  %67 = getelementptr inbounds %struct.LinkNode, ptr %65, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !93
  %68 = trunc i64 %64 to i32
  br i1 %59, label %69, label %81

69:                                               ; preds = %63
  br i1 %60, label %73, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds i32, ptr %47, i64 %64
  %72 = load i32, ptr %71, align 4, !tbaa !95
  br label %73

73:                                               ; preds = %69, %70
  %74 = phi i32 [ %72, %70 ], [ -1, %69 ]
  %75 = icmp ne i32 %74, -1
  %76 = select i1 %61, i1 %75, i1 false
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = sext i32 %74 to i64
  %79 = getelementptr inbounds i32, ptr %48, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !95
  br label %81

81:                                               ; preds = %63, %73, %77
  %82 = phi i32 [ %80, %77 ], [ %74, %73 ], [ %68, %63 ]
  %83 = icmp ne i32 %82, -1
  %84 = icmp slt i32 %82, %46
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = sext i32 %82 to i64
  %88 = getelementptr inbounds ptr, ptr %56, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !72
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store ptr %89, ptr %65, align 8, !tbaa !96
  br label %92

92:                                               ; preds = %86, %91
  store ptr %65, ptr %88, align 8, !tbaa !72
  br label %93

93:                                               ; preds = %92, %81
  %94 = add nuw nsw i64 %64, 1
  %95 = getelementptr inbounds %struct.LinkNode, ptr %65, i64 1
  %96 = icmp eq i64 %94, %62
  br i1 %96, label %97, label %63, !llvm.loop !97

97:                                               ; preds = %93, %44
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %99 = load i32, ptr %98, align 8, !tbaa !55
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %155

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !64
  %104 = icmp eq i8 %10, 0
  br label %105

105:                                              ; preds = %101, %150
  %106 = phi ptr [ %103, %101 ], [ %152, %150 ]
  %107 = phi i32 [ 0, %101 ], [ %151, %150 ]
  %108 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 0, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !98
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 0, i32 10
  store i32 -1, ptr %112, align 4, !tbaa !99
  br label %150

113:                                              ; preds = %105
  br i1 %104, label %119, label %114

114:                                              ; preds = %113
  %115 = icmp slt i32 %109, %46
  %116 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 0, i32 10
  br i1 %115, label %117, label %118

117:                                              ; preds = %114
  store i32 -2, ptr %116, align 4, !tbaa !99
  br label %150

118:                                              ; preds = %114
  store i32 -1, ptr %116, align 4, !tbaa !99
  br label %150

119:                                              ; preds = %113
  %120 = load ptr, ptr %6, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.ParticleSettings, ptr %120, i64 0, i32 8
  %122 = load i16, ptr %121, align 2, !tbaa !57
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = icmp slt i32 %109, %46
  br i1 %125, label %126, label %137

126:                                              ; preds = %124
  %127 = zext nneg i32 %109 to i64
  %128 = getelementptr inbounds ptr, ptr %56, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !72
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.LinkNode, ptr %129, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !93
  %134 = ptrtoint ptr %133 to i64
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 0, i32 10
  store i32 %135, ptr %136, align 4, !tbaa !99
  br label %150

137:                                              ; preds = %126, %124
  %138 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 0, i32 10
  store i32 -1, ptr %138, align 4, !tbaa !99
  br label %150

139:                                              ; preds = %119
  %140 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 0, i32 11
  %141 = icmp slt i32 %109, %46
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = zext nneg i32 %109 to i64
  %144 = getelementptr inbounds ptr, ptr %56, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !72
  br label %146

146:                                              ; preds = %139, %142
  %147 = phi ptr [ %145, %142 ], [ null, %139 ]
  %148 = tail call i32 @psys_particle_dm_face_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %109, ptr noundef nonnull %140, ptr noundef %147) #16
  %149 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 0, i32 10
  store i32 %148, ptr %149, align 4, !tbaa !99
  br label %150

150:                                              ; preds = %118, %117, %131, %137, %146, %111
  %151 = add nuw nsw i32 %107, 1
  %152 = getelementptr inbounds %struct.ParticleData, ptr %106, i64 1
  %153 = load i32, ptr %98, align 8, !tbaa !55
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %105, label %155, !llvm.loop !100

155:                                              ; preds = %150, %97
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %156(ptr noundef %56) #16
  %157 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %157(ptr noundef %52) #16
  br label %172

158:                                              ; preds = %3
  %159 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %160 = load i32, ptr %159, align 8, !tbaa !55
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !64
  br label %165

165:                                              ; preds = %162, %165
  %166 = phi ptr [ %170, %165 ], [ %164, %162 ]
  %167 = phi i32 [ %169, %165 ], [ 0, %162 ]
  %168 = getelementptr inbounds %struct.ParticleData, ptr %166, i64 0, i32 10
  store i32 -1, ptr %168, align 4, !tbaa !99
  %169 = add nuw nsw i32 %167, 1
  %170 = getelementptr inbounds %struct.ParticleData, ptr %166, i64 1
  %171 = icmp eq i32 %169, %160
  br i1 %171, label %172, label %165, !llvm.loop !101

172:                                              ; preds = %165, %158, %155
  ret void
}

declare i32 @psys_particle_dm_face_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @psys_threads_create(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = tail call i32 @BKE_scene_num_threads(ptr noundef %2) #16
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 5
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.2) #16
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %9 = tail call ptr %8(i64 noundef 248, ptr noundef nonnull @.str.3) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !104
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = getelementptr inbounds %struct.ParticleThreadContext, ptr %9, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !111
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 31
  %22 = load i16, ptr %21, align 4, !tbaa !114
  %23 = tail call ptr @give_current_material(ptr noundef %16, i16 noundef signext %22) #16
  %24 = getelementptr inbounds %struct.ParticleThreadContext, ptr %9, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %6, i1 false)
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = zext nneg i32 %3 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %struct.ParticleThread, ptr %7, i64 %29
  store ptr %9, ptr %30, align 8, !tbaa !116
  %31 = getelementptr inbounds %struct.ParticleThread, ptr %7, i64 %29, i32 3
  %32 = trunc i64 %29 to i32
  store i32 %32, ptr %31, align 8, !tbaa !118
  %33 = getelementptr inbounds %struct.ParticleThread, ptr %7, i64 %29, i32 4
  store i32 %3, ptr %33, align 4, !tbaa !119
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, %27
  br i1 %35, label %36, label %28, !llvm.loop !120

36:                                               ; preds = %28, %1
  ret ptr %7
}

declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @psys_threads_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !119
  %5 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %9(ptr noundef nonnull %6) #16
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %15(ptr noundef nonnull %12) #16
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %21(ptr noundef nonnull %18) #16
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 27
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %27(ptr noundef nonnull %24) #16
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 28
  %30 = load ptr, ptr %29, align 8, !tbaa !125
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %33(ptr noundef nonnull %30) #16
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 29
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %39(ptr noundef nonnull %36) #16
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.ParticleSimulationData, ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !127
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %42, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  tail call void @end_latt_deform(ptr noundef nonnull %44) #16
  %47 = load ptr, ptr %41, align 8, !tbaa !127
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 15
  store ptr null, ptr %48, align 8, !tbaa !128
  br label %49

49:                                               ; preds = %46, %40
  %50 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !129
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %54(ptr noundef nonnull %51) #16
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %60(ptr noundef nonnull %57) #16
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !131
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %66(ptr noundef nonnull %63) #16
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 10
  %69 = load ptr, ptr %68, align 8, !tbaa !132
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %72(ptr noundef nonnull %69) #16
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !133
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %78(ptr noundef nonnull %75) #16
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !134
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %84(ptr noundef nonnull %81) #16
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !135
  tail call void @BLI_kdtree_free(ptr noundef %87) #16
  %88 = icmp sgt i32 %4, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = zext nneg i32 %4 to i64
  br label %91

91:                                               ; preds = %89, %102
  %92 = phi i64 [ 0, %89 ], [ %103, %102 ]
  %93 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %92, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !136
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @BLI_rng_free(ptr noundef nonnull %94) #16
  br label %97

97:                                               ; preds = %96, %91
  %98 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %92, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !137
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @BLI_rng_free(ptr noundef nonnull %99) #16
  br label %102

102:                                              ; preds = %97, %101
  %103 = add nuw nsw i64 %92, 1
  %104 = icmp eq i64 %103, %90
  br i1 %104, label %105, label %91, !llvm.loop !138

105:                                              ; preds = %102, %85
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %106(ptr noundef %2) #16
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %107(ptr noundef nonnull %0) #16
  ret void
}

declare void @end_latt_deform(ptr noundef) local_unnamed_addr #3

declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #3

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @initialize_particle(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 200
  %13 = sitofp i64 %12 to float
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !55
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %13, %16
  %18 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 17
  %19 = load i16, ptr %18, align 4, !tbaa !65
  %20 = and i16 %19, -2
  store i16 %20, ptr %18, align 4, !tbaa !65
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 53
  %22 = load float, ptr %21, align 4, !tbaa !139
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 54
  %24 = load float, ptr %23, align 8, !tbaa !140
  %25 = fsub float %24, %22
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %17, float %22)
  %27 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  store float %26, ptr %27, align 4, !tbaa !141
  %28 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 16
  store i32 0, ptr %28, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define dso_local void @psys_get_birth_coordinates(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ParticleTexture, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [4 x float], align 16
  %19 = alloca [3 x float], align 4
  %20 = alloca [4 x float], align 16
  %21 = alloca [3 x [3 x float]], align 16
  %22 = alloca [4 x float], align 16
  %23 = alloca [4 x float], align 16
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x [3 x float]], align 16
  %26 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !112
  %28 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) @__const.psys_get_birth_coordinates.x_vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) @__const.psys_get_birth_coordinates.utan, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(12) @__const.psys_get_birth_coordinates.vtan, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #16
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 11
  %33 = load i16, ptr %32, align 8, !tbaa !51
  %34 = icmp eq i16 %33, 3
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  %38 = icmp ne ptr %37, null
  br label %39

39:                                               ; preds = %35, %5
  %40 = phi i1 [ false, %5 ], [ %38, %35 ]
  br i1 %40, label %49, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 73
  %43 = load float, ptr %42, align 4, !tbaa !144
  %44 = fcmp une float %43, 0.000000e+00
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 12
  %47 = load i16, ptr %46, align 2, !tbaa !145
  %48 = icmp eq i16 %47, 9
  br label %49

49:                                               ; preds = %41, %45, %39
  %50 = phi i1 [ false, %39 ], [ true, %41 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = ptrtoint ptr %1 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 200
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !146
  %60 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !57
  %62 = sext i16 %61 to i32
  %63 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !98
  %65 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 10
  %66 = load i32, ptr %65, align 4, !tbaa !99
  %67 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  %68 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 12
  %69 = load float, ptr %68, align 8, !tbaa !147
  br i1 %50, label %70, label %71

70:                                               ; preds = %49
  call void @psys_particle_on_emitter(ptr noundef %59, i32 noundef %62, i32 noundef %64, i32 noundef %66, ptr noundef nonnull %67, float noundef %69, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef null, ptr noundef null) #16
  br label %72

71:                                               ; preds = %49
  call void @psys_particle_on_emitter(ptr noundef %59, i32 noundef %62, i32 noundef %64, i32 noundef %66, ptr noundef nonnull %67, float noundef %69, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #16
  br label %72

72:                                               ; preds = %71, %70
  call void @psys_get_texture(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 32, float noundef %4) #16
  %73 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %73, ptr noundef nonnull %8) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull %73, ptr noundef nonnull %7) #16
  %74 = load float, ptr %7, align 4, !tbaa !105
  %75 = getelementptr inbounds float, ptr %7, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !105
  %77 = fmul float %76, %76
  %78 = call float @llvm.fmuladd.f32(float %74, float %74, float %77)
  %79 = getelementptr inbounds float, ptr %7, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !105
  %81 = call float @llvm.fmuladd.f32(float %80, float %80, float %78)
  %82 = fcmp ogt float %81, 0x38AA95A5C0000000
  br i1 %82, label %83, label %92

83:                                               ; preds = %72
  %84 = call float @sqrtf(float noundef %81) #16
  %85 = fdiv float 1.000000e+00, %84
  %86 = load float, ptr %7, align 4, !tbaa !105
  %87 = fmul float %86, %85
  store float %87, ptr %7, align 4, !tbaa !105
  %88 = load float, ptr %75, align 4, !tbaa !105
  %89 = fmul float %85, %88
  store float %89, ptr %75, align 4, !tbaa !105
  %90 = load float, ptr %79, align 4, !tbaa !105
  %91 = fmul float %85, %90
  br label %93

92:                                               ; preds = %72
  store float 0.000000e+00, ptr %7, align 4, !tbaa !105
  store float 0.000000e+00, ptr %75, align 4, !tbaa !105
  br label %93

93:                                               ; preds = %83, %92
  %94 = phi float [ 0.000000e+00, %92 ], [ %91, %83 ]
  store float %94, ptr %79, align 4, !tbaa !105
  br i1 %50, label %95, label %157

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 74
  %97 = load float, ptr %96, align 8, !tbaa !148
  %98 = fadd float %97, 0.000000e+00
  %99 = fmul float %98, 0x400921FB60000000
  %100 = call float @cosf(float noundef %99) #16
  %101 = fneg float %100
  %102 = load float, ptr %16, align 4, !tbaa !105
  %103 = fmul float %102, %101
  store float %103, ptr %16, align 4, !tbaa !105
  %104 = getelementptr inbounds float, ptr %16, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !105
  %106 = fmul float %105, %101
  store float %106, ptr %104, align 4, !tbaa !105
  %107 = getelementptr inbounds float, ptr %16, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !105
  %109 = fmul float %108, %101
  store float %109, ptr %107, align 4, !tbaa !105
  %110 = load float, ptr %96, align 8, !tbaa !148
  %111 = fadd float %110, 0.000000e+00
  %112 = fmul float %111, 0x400921FB60000000
  %113 = call float @sinf(float noundef %112) #16
  %114 = fneg float %113
  %115 = load float, ptr %15, align 4, !tbaa !105
  %116 = load float, ptr %16, align 4, !tbaa !105
  %117 = call float @llvm.fmuladd.f32(float %115, float %114, float %116)
  store float %117, ptr %16, align 4, !tbaa !105
  %118 = getelementptr inbounds float, ptr %15, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !105
  %120 = load float, ptr %104, align 4, !tbaa !105
  %121 = call float @llvm.fmuladd.f32(float %119, float %114, float %120)
  store float %121, ptr %104, align 4, !tbaa !105
  %122 = getelementptr inbounds float, ptr %15, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !105
  %124 = load float, ptr %107, align 4, !tbaa !105
  %125 = call float @llvm.fmuladd.f32(float %123, float %114, float %124)
  store float %125, ptr %107, align 4, !tbaa !105
  call void @mul_mat3_m4_v3(ptr noundef nonnull %73, ptr noundef nonnull %16) #16
  %126 = load float, ptr %7, align 4, !tbaa !105
  store float %126, ptr %15, align 4, !tbaa !105
  %127 = load float, ptr %75, align 4, !tbaa !105
  store float %127, ptr %118, align 4, !tbaa !105
  %128 = load float, ptr %79, align 4, !tbaa !105
  store float %128, ptr %122, align 4, !tbaa !105
  %129 = load float, ptr %16, align 4, !tbaa !105
  %130 = load float, ptr %104, align 4, !tbaa !105
  %131 = fmul float %127, %130
  %132 = call float @llvm.fmuladd.f32(float %129, float %126, float %131)
  %133 = load float, ptr %107, align 4, !tbaa !105
  %134 = call float @llvm.fmuladd.f32(float %133, float %128, float %132)
  %135 = fmul float %126, %134
  store float %135, ptr %15, align 4, !tbaa !105
  %136 = fmul float %127, %134
  store float %136, ptr %118, align 4, !tbaa !105
  %137 = fmul float %128, %134
  store float %137, ptr %122, align 4, !tbaa !105
  %138 = fsub float %129, %135
  store float %138, ptr %16, align 4, !tbaa !105
  %139 = fsub float %130, %136
  store float %139, ptr %104, align 4, !tbaa !105
  %140 = fsub float %133, %137
  store float %140, ptr %107, align 4, !tbaa !105
  %141 = fmul float %139, %139
  %142 = call float @llvm.fmuladd.f32(float %138, float %138, float %141)
  %143 = call float @llvm.fmuladd.f32(float %140, float %140, float %142)
  %144 = fcmp ogt float %143, 0x38AA95A5C0000000
  br i1 %144, label %145, label %154

145:                                              ; preds = %95
  %146 = call float @sqrtf(float noundef %143) #16
  %147 = fdiv float 1.000000e+00, %146
  %148 = load float, ptr %16, align 4, !tbaa !105
  %149 = fmul float %148, %147
  store float %149, ptr %16, align 4, !tbaa !105
  %150 = load float, ptr %104, align 4, !tbaa !105
  %151 = fmul float %147, %150
  store float %151, ptr %104, align 4, !tbaa !105
  %152 = load float, ptr %107, align 4, !tbaa !105
  %153 = fmul float %147, %152
  br label %155

154:                                              ; preds = %95
  store float 0.000000e+00, ptr %16, align 4, !tbaa !105
  store float 0.000000e+00, ptr %104, align 4, !tbaa !105
  br label %155

155:                                              ; preds = %145, %154
  %156 = phi float [ 0.000000e+00, %154 ], [ %153, %145 ]
  store float %156, ptr %107, align 4, !tbaa !105
  br label %157

157:                                              ; preds = %155, %93
  %158 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 71
  %159 = load float, ptr %158, align 4, !tbaa !149
  %160 = fcmp une float %159, 0.000000e+00
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = load i16, ptr %32, align 8, !tbaa !51
  %163 = icmp eq i16 %162, 3
  br i1 %163, label %164, label %225

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !143
  %167 = icmp eq ptr %166, null
  br i1 %167, label %225, label %168

168:                                              ; preds = %164, %157
  %169 = add nsw i32 %57, 10
  %170 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 23
  %171 = load i32, ptr %170, align 4, !tbaa !150
  %172 = srem i32 %171, 1024
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !95
  %176 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %173
  %177 = load i32, ptr %176, align 4, !tbaa !95
  %178 = mul i32 %177, %169
  %179 = add i32 %178, %175
  %180 = and i32 %179, 1023
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !105
  %184 = fadd float %183, -5.000000e-01
  %185 = fmul float %184, 2.000000e+00
  store float %185, ptr %11, align 4, !tbaa !105
  %186 = add nsw i32 %57, 11
  %187 = mul i32 %177, %186
  %188 = add i32 %187, %175
  %189 = and i32 %188, 1023
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %190
  %192 = load float, ptr %191, align 4, !tbaa !105
  %193 = fadd float %192, -5.000000e-01
  %194 = fmul float %193, 2.000000e+00
  %195 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float %194, ptr %195, align 4, !tbaa !105
  %196 = add nsw i32 %57, 12
  %197 = mul i32 %177, %196
  %198 = add i32 %197, %175
  %199 = and i32 %198, 1023
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %200
  %202 = load float, ptr %201, align 4, !tbaa !105
  %203 = fadd float %202, -5.000000e-01
  %204 = fmul float %203, 2.000000e+00
  %205 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %204, ptr %205, align 4, !tbaa !105
  call void @mul_mat3_m4_v3(ptr noundef nonnull %73, ptr noundef nonnull %11) #16
  %206 = load float, ptr %11, align 4, !tbaa !105
  %207 = load float, ptr %195, align 4, !tbaa !105
  %208 = fmul float %207, %207
  %209 = call float @llvm.fmuladd.f32(float %206, float %206, float %208)
  %210 = load float, ptr %205, align 4, !tbaa !105
  %211 = call float @llvm.fmuladd.f32(float %210, float %210, float %209)
  %212 = fcmp ogt float %211, 0x38AA95A5C0000000
  br i1 %212, label %213, label %222

213:                                              ; preds = %168
  %214 = call float @sqrtf(float noundef %211) #16
  %215 = fdiv float 1.000000e+00, %214
  %216 = load float, ptr %11, align 4, !tbaa !105
  %217 = fmul float %216, %215
  store float %217, ptr %11, align 4, !tbaa !105
  %218 = load float, ptr %195, align 4, !tbaa !105
  %219 = fmul float %215, %218
  store float %219, ptr %195, align 4, !tbaa !105
  %220 = load float, ptr %205, align 4, !tbaa !105
  %221 = fmul float %215, %220
  br label %223

222:                                              ; preds = %168
  store float 0.000000e+00, ptr %11, align 4, !tbaa !105
  store float 0.000000e+00, ptr %195, align 4, !tbaa !105
  br label %223

223:                                              ; preds = %213, %222
  %224 = phi float [ 0.000000e+00, %222 ], [ %221, %213 ]
  store float %224, ptr %205, align 4, !tbaa !105
  br label %225

225:                                              ; preds = %223, %164, %161
  %226 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 13
  %227 = load i16, ptr %226, align 4, !tbaa !151
  %228 = icmp eq i16 %227, 2
  br i1 %228, label %229, label %286

229:                                              ; preds = %225
  %230 = add nsw i32 %57, 13
  %231 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 23
  %232 = load i32, ptr %231, align 4, !tbaa !150
  %233 = srem i32 %232, 1024
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !95
  %237 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %234
  %238 = load i32, ptr %237, align 4, !tbaa !95
  %239 = mul i32 %238, %230
  %240 = add i32 %239, %236
  %241 = and i32 %240, 1023
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %242
  %244 = load float, ptr %243, align 4, !tbaa !105
  %245 = fadd float %244, -5.000000e-01
  %246 = fmul float %245, 2.000000e+00
  store float %246, ptr %12, align 4, !tbaa !105
  %247 = add nsw i32 %57, 14
  %248 = mul i32 %238, %247
  %249 = add i32 %248, %236
  %250 = and i32 %249, 1023
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %251
  %253 = load float, ptr %252, align 4, !tbaa !105
  %254 = fadd float %253, -5.000000e-01
  %255 = fmul float %254, 2.000000e+00
  %256 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float %255, ptr %256, align 4, !tbaa !105
  %257 = add nsw i32 %57, 15
  %258 = mul i32 %238, %257
  %259 = add i32 %258, %236
  %260 = and i32 %259, 1023
  %261 = zext nneg i32 %260 to i64
  %262 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %261
  %263 = load float, ptr %262, align 4, !tbaa !105
  %264 = fadd float %263, -5.000000e-01
  %265 = fmul float %264, 2.000000e+00
  %266 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %265, ptr %266, align 4, !tbaa !105
  call void @mul_mat3_m4_v3(ptr noundef nonnull %73, ptr noundef nonnull %12) #16
  %267 = load float, ptr %12, align 4, !tbaa !105
  %268 = load float, ptr %256, align 4, !tbaa !105
  %269 = fmul float %268, %268
  %270 = call float @llvm.fmuladd.f32(float %267, float %267, float %269)
  %271 = load float, ptr %266, align 4, !tbaa !105
  %272 = call float @llvm.fmuladd.f32(float %271, float %271, float %270)
  %273 = fcmp ogt float %272, 0x38AA95A5C0000000
  br i1 %273, label %274, label %283

274:                                              ; preds = %229
  %275 = call float @sqrtf(float noundef %272) #16
  %276 = fdiv float 1.000000e+00, %275
  %277 = load float, ptr %12, align 4, !tbaa !105
  %278 = fmul float %277, %276
  store float %278, ptr %12, align 4, !tbaa !105
  %279 = load float, ptr %256, align 4, !tbaa !105
  %280 = fmul float %276, %279
  store float %280, ptr %256, align 4, !tbaa !105
  %281 = load float, ptr %266, align 4, !tbaa !105
  %282 = fmul float %276, %281
  br label %284

283:                                              ; preds = %229
  store float 0.000000e+00, ptr %12, align 4, !tbaa !105
  store float 0.000000e+00, ptr %256, align 4, !tbaa !105
  br label %284

284:                                              ; preds = %274, %283
  %285 = phi float [ 0.000000e+00, %283 ], [ %282, %274 ]
  store float %285, ptr %266, align 4, !tbaa !105
  br label %286

286:                                              ; preds = %284, %225
  %287 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 79
  %288 = load float, ptr %287, align 4, !tbaa !152
  %289 = fcmp une float %288, 0.000000e+00
  br i1 %289, label %290, label %339

290:                                              ; preds = %286
  %291 = add nsw i32 %57, 16
  %292 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 23
  %293 = load i32, ptr %292, align 4, !tbaa !150
  %294 = srem i32 %293, 1024
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !95
  %298 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %295
  %299 = load i32, ptr %298, align 4, !tbaa !95
  %300 = mul i32 %299, %291
  %301 = add i32 %300, %297
  %302 = and i32 %301, 1023
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %303
  %305 = load float, ptr %304, align 4, !tbaa !105
  %306 = fadd float %305, -5.000000e-01
  %307 = fmul float %306, 2.000000e+00
  store float %307, ptr %13, align 16, !tbaa !105
  %308 = add nsw i32 %57, 17
  %309 = mul i32 %299, %308
  %310 = add i32 %309, %297
  %311 = and i32 %310, 1023
  %312 = zext nneg i32 %311 to i64
  %313 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %312
  %314 = load float, ptr %313, align 4, !tbaa !105
  %315 = fadd float %314, -5.000000e-01
  %316 = fmul float %315, 2.000000e+00
  %317 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 1
  store float %316, ptr %317, align 4, !tbaa !105
  %318 = add nsw i32 %57, 18
  %319 = mul i32 %299, %318
  %320 = add i32 %319, %297
  %321 = and i32 %320, 1023
  %322 = zext nneg i32 %321 to i64
  %323 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %322
  %324 = load float, ptr %323, align 4, !tbaa !105
  %325 = fadd float %324, -5.000000e-01
  %326 = fmul float %325, 2.000000e+00
  %327 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 2
  store float %326, ptr %327, align 8, !tbaa !105
  %328 = add nsw i32 %57, 19
  %329 = mul i32 %299, %328
  %330 = add i32 %329, %297
  %331 = and i32 %330, 1023
  %332 = zext nneg i32 %331 to i64
  %333 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %332
  %334 = load float, ptr %333, align 4, !tbaa !105
  %335 = fadd float %334, -5.000000e-01
  %336 = fmul float %335, 2.000000e+00
  %337 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 3
  store float %336, ptr %337, align 4, !tbaa !105
  %338 = call float @normalize_qt(ptr noundef nonnull %13) #16
  call void @mat4_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %73) #16
  call void @mul_qt_qtqt(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %9) #16
  br label %339

339:                                              ; preds = %290, %286
  br i1 %40, label %340, label %466

340:                                              ; preds = %339
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %21) #16
  %341 = load float, ptr %8, align 4, !tbaa !105
  store float %341, ptr %2, align 4, !tbaa !105
  %342 = getelementptr inbounds float, ptr %8, i64 1
  %343 = load float, ptr %342, align 4, !tbaa !105
  %344 = getelementptr inbounds float, ptr %2, i64 1
  store float %343, ptr %344, align 4, !tbaa !105
  %345 = getelementptr inbounds float, ptr %8, i64 2
  %346 = load float, ptr %345, align 4, !tbaa !105
  %347 = getelementptr inbounds float, ptr %2, i64 2
  store float %346, ptr %347, align 4, !tbaa !105
  %348 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  store float 0.000000e+00, ptr %348, align 4, !tbaa !105
  %349 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  store float 0.000000e+00, ptr %349, align 4, !tbaa !105
  %350 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %350, align 4, !tbaa !105
  %351 = load float, ptr %79, align 4, !tbaa !105
  %352 = call float @llvm.fabs.f32(float %351)
  %353 = fcmp oeq float %352, 1.000000e+00
  %354 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  br i1 %353, label %355, label %383

355:                                              ; preds = %340
  %356 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 3
  %357 = load float, ptr %356, align 4, !tbaa !105
  %358 = fsub float %341, %357
  store float %358, ptr %354, align 4, !tbaa !105
  %359 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 3, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !105
  %361 = fsub float %343, %360
  %362 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 1
  store float %361, ptr %362, align 4, !tbaa !105
  %363 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 3, i64 2
  %364 = load float, ptr %363, align 4, !tbaa !105
  %365 = fsub float %346, %364
  %366 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 2
  store float %365, ptr %366, align 4, !tbaa !105
  %367 = fmul float %361, %361
  %368 = call float @llvm.fmuladd.f32(float %358, float %358, float %367)
  %369 = call float @llvm.fmuladd.f32(float %365, float %365, float %368)
  %370 = fcmp ogt float %369, 0x38AA95A5C0000000
  br i1 %370, label %371, label %380

371:                                              ; preds = %355
  %372 = call float @sqrtf(float noundef %369) #16
  %373 = fdiv float 1.000000e+00, %372
  %374 = load float, ptr %354, align 4, !tbaa !105
  %375 = fmul float %374, %373
  store float %375, ptr %354, align 4, !tbaa !105
  %376 = load float, ptr %362, align 4, !tbaa !105
  %377 = fmul float %373, %376
  store float %377, ptr %362, align 4, !tbaa !105
  %378 = load float, ptr %366, align 4, !tbaa !105
  %379 = fmul float %373, %378
  br label %381

380:                                              ; preds = %355
  store float 0.000000e+00, ptr %354, align 4, !tbaa !105
  store float 0.000000e+00, ptr %362, align 4, !tbaa !105
  br label %381

381:                                              ; preds = %371, %380
  %382 = phi float [ 0.000000e+00, %380 ], [ %379, %371 ]
  store float %382, ptr %366, align 4, !tbaa !105
  br label %388

383:                                              ; preds = %340
  %384 = load float, ptr %7, align 4, !tbaa !105
  store float %384, ptr %354, align 4, !tbaa !105
  %385 = load float, ptr %75, align 4, !tbaa !105
  %386 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 1
  store float %385, ptr %386, align 4, !tbaa !105
  %387 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 2
  store float %351, ptr %387, align 4, !tbaa !105
  br label %388

388:                                              ; preds = %383, %381
  %389 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  call void @project_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %11, ptr noundef nonnull %389) #16
  %390 = load float, ptr %389, align 4, !tbaa !105
  %391 = load float, ptr %19, align 4, !tbaa !105
  %392 = fsub float %390, %391
  store float %392, ptr %21, align 16, !tbaa !105
  %393 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 1
  %394 = load float, ptr %393, align 4, !tbaa !105
  %395 = getelementptr inbounds float, ptr %19, i64 1
  %396 = load float, ptr %395, align 4, !tbaa !105
  %397 = fsub float %394, %396
  %398 = getelementptr inbounds float, ptr %21, i64 1
  store float %397, ptr %398, align 4, !tbaa !105
  %399 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 2
  %400 = load float, ptr %399, align 4, !tbaa !105
  %401 = getelementptr inbounds float, ptr %19, i64 2
  %402 = load float, ptr %401, align 4, !tbaa !105
  %403 = fsub float %400, %402
  %404 = getelementptr inbounds float, ptr %21, i64 2
  store float %403, ptr %404, align 8, !tbaa !105
  %405 = fmul float %397, %397
  %406 = call float @llvm.fmuladd.f32(float %392, float %392, float %405)
  %407 = call float @llvm.fmuladd.f32(float %403, float %403, float %406)
  %408 = fcmp ogt float %407, 0x38AA95A5C0000000
  br i1 %408, label %409, label %418

409:                                              ; preds = %388
  %410 = call float @sqrtf(float noundef %407) #16
  %411 = fdiv float 1.000000e+00, %410
  %412 = load float, ptr %21, align 16, !tbaa !105
  %413 = fmul float %412, %411
  store float %413, ptr %21, align 16, !tbaa !105
  %414 = load float, ptr %398, align 4, !tbaa !105
  %415 = fmul float %411, %414
  store float %415, ptr %398, align 4, !tbaa !105
  %416 = load float, ptr %404, align 8, !tbaa !105
  %417 = fmul float %411, %416
  br label %419

418:                                              ; preds = %388
  store float 0.000000e+00, ptr %21, align 16, !tbaa !105
  store float 0.000000e+00, ptr %398, align 4, !tbaa !105
  br label %419

419:                                              ; preds = %409, %418
  %420 = phi float [ 0.000000e+00, %418 ], [ %417, %409 ]
  store float %420, ptr %404, align 8, !tbaa !105
  %421 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %422 = load float, ptr %11, align 4, !tbaa !105
  %423 = fneg float %422
  store float %423, ptr %421, align 8, !tbaa !105
  %424 = getelementptr inbounds float, ptr %11, i64 1
  %425 = load float, ptr %424, align 4, !tbaa !105
  %426 = fneg float %425
  %427 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 1
  store float %426, ptr %427, align 4, !tbaa !105
  %428 = getelementptr inbounds float, ptr %11, i64 2
  %429 = load float, ptr %428, align 4, !tbaa !105
  %430 = fneg float %429
  %431 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 2
  store float %430, ptr %431, align 16, !tbaa !105
  %432 = fmul float %425, %425
  %433 = call float @llvm.fmuladd.f32(float %422, float %422, float %432)
  %434 = call float @llvm.fmuladd.f32(float %429, float %429, float %433)
  %435 = fcmp ogt float %434, 0x38AA95A5C0000000
  br i1 %435, label %436, label %445

436:                                              ; preds = %419
  %437 = call float @sqrtf(float noundef %434) #16
  %438 = fdiv float 1.000000e+00, %437
  %439 = load float, ptr %421, align 8, !tbaa !105
  %440 = fmul float %439, %438
  store float %440, ptr %421, align 8, !tbaa !105
  %441 = load float, ptr %427, align 4, !tbaa !105
  %442 = fmul float %438, %441
  store float %442, ptr %427, align 4, !tbaa !105
  %443 = load float, ptr %431, align 16, !tbaa !105
  %444 = fmul float %438, %443
  br label %446

445:                                              ; preds = %419
  store float 0.000000e+00, ptr %421, align 8, !tbaa !105
  store float 0.000000e+00, ptr %427, align 4, !tbaa !105
  br label %446

446:                                              ; preds = %436, %445
  %447 = phi float [ 0.000000e+00, %445 ], [ %444, %436 ]
  store float %447, ptr %431, align 16, !tbaa !105
  %448 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %449 = load float, ptr %427, align 4, !tbaa !105
  %450 = load float, ptr %404, align 8, !tbaa !105
  %451 = load float, ptr %398, align 4, !tbaa !105
  %452 = fneg float %447
  %453 = fmul float %451, %452
  %454 = call float @llvm.fmuladd.f32(float %449, float %450, float %453)
  store float %454, ptr %448, align 4, !tbaa !105
  %455 = load float, ptr %21, align 16, !tbaa !105
  %456 = load float, ptr %421, align 8, !tbaa !105
  %457 = fneg float %456
  %458 = fmul float %450, %457
  %459 = call float @llvm.fmuladd.f32(float %447, float %455, float %458)
  %460 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  store float %459, ptr %460, align 16, !tbaa !105
  %461 = fneg float %449
  %462 = fmul float %455, %461
  %463 = call float @llvm.fmuladd.f32(float %456, float %451, float %462)
  %464 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  store float %463, ptr %464, align 4, !tbaa !105
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %20, ptr noundef nonnull %21) #16
  %465 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %465, ptr noundef nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #16
  br label %880

466:                                              ; preds = %339
  %467 = fcmp ogt float %3, 0.000000e+00
  br i1 %467, label %468, label %484

468:                                              ; preds = %466
  %469 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %470 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %471 = load float, ptr %469, align 4, !tbaa !105
  %472 = load float, ptr %470, align 4, !tbaa !105
  %473 = fsub float %471, %472
  %474 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !105
  %476 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 1
  %477 = load float, ptr %476, align 4, !tbaa !105
  %478 = fsub float %475, %477
  %479 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %480 = load float, ptr %479, align 4, !tbaa !105
  %481 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %482 = load float, ptr %481, align 4, !tbaa !105
  %483 = fsub float %480, %482
  br label %484

484:                                              ; preds = %468, %466
  %485 = phi float [ %483, %468 ], [ 0.000000e+00, %466 ]
  %486 = phi float [ %478, %468 ], [ 0.000000e+00, %466 ]
  %487 = phi float [ %473, %468 ], [ 0.000000e+00, %466 ]
  %488 = fcmp une float %3, 0.000000e+00
  br i1 %488, label %489, label %511

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 70
  %491 = load float, ptr %490, align 8, !tbaa !153
  %492 = fcmp une float %491, 0.000000e+00
  br i1 %492, label %493, label %511

493:                                              ; preds = %489
  %494 = load float, ptr %8, align 4, !tbaa !105
  %495 = load float, ptr %2, align 4, !tbaa !105
  %496 = fsub float %494, %495
  %497 = getelementptr inbounds float, ptr %8, i64 1
  %498 = load float, ptr %497, align 4, !tbaa !105
  %499 = getelementptr inbounds float, ptr %2, i64 1
  %500 = load float, ptr %499, align 4, !tbaa !105
  %501 = fsub float %498, %500
  %502 = getelementptr inbounds float, ptr %8, i64 2
  %503 = load float, ptr %502, align 4, !tbaa !105
  %504 = getelementptr inbounds float, ptr %2, i64 2
  %505 = load float, ptr %504, align 4, !tbaa !105
  %506 = fsub float %503, %505
  %507 = fdiv float %491, %3
  %508 = fmul float %507, %496
  %509 = fmul float %507, %501
  %510 = fmul float %507, %506
  br label %511

511:                                              ; preds = %493, %489, %484
  %512 = phi float [ %510, %493 ], [ %485, %489 ], [ %485, %484 ]
  %513 = phi float [ %509, %493 ], [ %486, %489 ], [ %486, %484 ]
  %514 = phi float [ %508, %493 ], [ %487, %489 ], [ %487, %484 ]
  %515 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 69
  %516 = load float, ptr %515, align 4, !tbaa !154
  %517 = fcmp une float %516, 0.000000e+00
  br i1 %517, label %518, label %525

518:                                              ; preds = %511
  %519 = load float, ptr %7, align 4, !tbaa !105
  %520 = call float @llvm.fmuladd.f32(float %519, float %516, float %514)
  %521 = load float, ptr %75, align 4, !tbaa !105
  %522 = call float @llvm.fmuladd.f32(float %521, float %516, float %513)
  %523 = load float, ptr %79, align 4, !tbaa !105
  %524 = call float @llvm.fmuladd.f32(float %523, float %516, float %512)
  br label %525

525:                                              ; preds = %518, %511
  %526 = phi float [ %524, %518 ], [ %512, %511 ]
  %527 = phi float [ %522, %518 ], [ %513, %511 ]
  %528 = phi float [ %520, %518 ], [ %514, %511 ]
  %529 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %530 = load ptr, ptr %529, align 8, !tbaa !146
  %531 = icmp eq ptr %530, null
  br i1 %531, label %545, label %532

532:                                              ; preds = %525
  %533 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 73
  %534 = load float, ptr %533, align 4, !tbaa !144
  %535 = fcmp une float %534, 0.000000e+00
  br i1 %535, label %536, label %545

536:                                              ; preds = %532
  %537 = load float, ptr %16, align 4, !tbaa !105
  %538 = call float @llvm.fmuladd.f32(float %537, float %534, float %528)
  %539 = getelementptr inbounds float, ptr %16, i64 1
  %540 = load float, ptr %539, align 4, !tbaa !105
  %541 = call float @llvm.fmuladd.f32(float %540, float %534, float %527)
  %542 = getelementptr inbounds float, ptr %16, i64 2
  %543 = load float, ptr %542, align 4, !tbaa !105
  %544 = call float @llvm.fmuladd.f32(float %543, float %534, float %526)
  br label %545

545:                                              ; preds = %536, %532, %525
  %546 = phi float [ %526, %525 ], [ %544, %536 ], [ %526, %532 ]
  %547 = phi float [ %527, %525 ], [ %541, %536 ], [ %527, %532 ]
  %548 = phi float [ %528, %525 ], [ %538, %536 ], [ %528, %532 ]
  %549 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 76
  %550 = load float, ptr %549, align 8, !tbaa !105
  %551 = fcmp une float %550, 0.000000e+00
  br i1 %551, label %552, label %579

552:                                              ; preds = %545
  %553 = load float, ptr %73, align 4, !tbaa !105
  %554 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 0, i64 1
  %555 = load float, ptr %554, align 4, !tbaa !105
  %556 = fmul float %555, %555
  %557 = call float @llvm.fmuladd.f32(float %553, float %553, float %556)
  %558 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 0, i64 2
  %559 = load float, ptr %558, align 4, !tbaa !105
  %560 = call float @llvm.fmuladd.f32(float %559, float %559, float %557)
  %561 = fcmp ogt float %560, 0x38AA95A5C0000000
  br i1 %561, label %562, label %571

562:                                              ; preds = %552
  %563 = call float @sqrtf(float noundef %560) #16
  %564 = fdiv float 1.000000e+00, %563
  %565 = load float, ptr %73, align 4, !tbaa !105
  %566 = fmul float %565, %564
  %567 = load float, ptr %554, align 4, !tbaa !105
  %568 = fmul float %564, %567
  %569 = load float, ptr %558, align 4, !tbaa !105
  %570 = fmul float %564, %569
  br label %571

571:                                              ; preds = %552, %562
  %572 = phi float [ %570, %562 ], [ 0.000000e+00, %552 ]
  %573 = phi float [ %568, %562 ], [ 0.000000e+00, %552 ]
  %574 = phi float [ %566, %562 ], [ 0.000000e+00, %552 ]
  %575 = load float, ptr %549, align 8, !tbaa !105
  %576 = call float @llvm.fmuladd.f32(float %574, float %575, float %548)
  %577 = call float @llvm.fmuladd.f32(float %573, float %575, float %547)
  %578 = call float @llvm.fmuladd.f32(float %572, float %575, float %546)
  br label %579

579:                                              ; preds = %571, %545
  %580 = phi float [ %578, %571 ], [ %546, %545 ]
  %581 = phi float [ %577, %571 ], [ %547, %545 ]
  %582 = phi float [ %576, %571 ], [ %548, %545 ]
  %583 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 76, i64 1
  %584 = load float, ptr %583, align 4, !tbaa !105
  %585 = fcmp une float %584, 0.000000e+00
  br i1 %585, label %586, label %614

586:                                              ; preds = %579
  %587 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 1
  %588 = load float, ptr %587, align 4, !tbaa !105
  %589 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 1, i64 1
  %590 = load float, ptr %589, align 4, !tbaa !105
  %591 = fmul float %590, %590
  %592 = call float @llvm.fmuladd.f32(float %588, float %588, float %591)
  %593 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 1, i64 2
  %594 = load float, ptr %593, align 4, !tbaa !105
  %595 = call float @llvm.fmuladd.f32(float %594, float %594, float %592)
  %596 = fcmp ogt float %595, 0x38AA95A5C0000000
  br i1 %596, label %597, label %606

597:                                              ; preds = %586
  %598 = call float @sqrtf(float noundef %595) #16
  %599 = fdiv float 1.000000e+00, %598
  %600 = load float, ptr %587, align 4, !tbaa !105
  %601 = fmul float %600, %599
  %602 = load float, ptr %589, align 4, !tbaa !105
  %603 = fmul float %599, %602
  %604 = load float, ptr %593, align 4, !tbaa !105
  %605 = fmul float %599, %604
  br label %606

606:                                              ; preds = %586, %597
  %607 = phi float [ %605, %597 ], [ 0.000000e+00, %586 ]
  %608 = phi float [ %603, %597 ], [ 0.000000e+00, %586 ]
  %609 = phi float [ %601, %597 ], [ 0.000000e+00, %586 ]
  %610 = load float, ptr %583, align 4, !tbaa !105
  %611 = call float @llvm.fmuladd.f32(float %609, float %610, float %582)
  %612 = call float @llvm.fmuladd.f32(float %608, float %610, float %581)
  %613 = call float @llvm.fmuladd.f32(float %607, float %610, float %580)
  br label %614

614:                                              ; preds = %606, %579
  %615 = phi float [ %613, %606 ], [ %580, %579 ]
  %616 = phi float [ %612, %606 ], [ %581, %579 ]
  %617 = phi float [ %611, %606 ], [ %582, %579 ]
  %618 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 76, i64 2
  %619 = load float, ptr %618, align 8, !tbaa !105
  %620 = fcmp une float %619, 0.000000e+00
  br i1 %620, label %621, label %649

621:                                              ; preds = %614
  %622 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 2
  %623 = load float, ptr %622, align 4, !tbaa !105
  %624 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 2, i64 1
  %625 = load float, ptr %624, align 4, !tbaa !105
  %626 = fmul float %625, %625
  %627 = call float @llvm.fmuladd.f32(float %623, float %623, float %626)
  %628 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 2, i64 2
  %629 = load float, ptr %628, align 4, !tbaa !105
  %630 = call float @llvm.fmuladd.f32(float %629, float %629, float %627)
  %631 = fcmp ogt float %630, 0x38AA95A5C0000000
  br i1 %631, label %632, label %641

632:                                              ; preds = %621
  %633 = call float @sqrtf(float noundef %630) #16
  %634 = fdiv float 1.000000e+00, %633
  %635 = load float, ptr %622, align 4, !tbaa !105
  %636 = fmul float %635, %634
  %637 = load float, ptr %624, align 4, !tbaa !105
  %638 = fmul float %634, %637
  %639 = load float, ptr %628, align 4, !tbaa !105
  %640 = fmul float %634, %639
  br label %641

641:                                              ; preds = %621, %632
  %642 = phi float [ %640, %632 ], [ 0.000000e+00, %621 ]
  %643 = phi float [ %638, %632 ], [ 0.000000e+00, %621 ]
  %644 = phi float [ %636, %632 ], [ 0.000000e+00, %621 ]
  %645 = load float, ptr %618, align 8, !tbaa !105
  %646 = call float @llvm.fmuladd.f32(float %644, float %645, float %617)
  %647 = call float @llvm.fmuladd.f32(float %643, float %645, float %616)
  %648 = call float @llvm.fmuladd.f32(float %642, float %645, float %615)
  br label %649

649:                                              ; preds = %641, %614
  %650 = phi float [ %648, %641 ], [ %615, %614 ]
  %651 = phi float [ %647, %641 ], [ %616, %614 ]
  %652 = phi float [ %646, %641 ], [ %617, %614 ]
  %653 = load float, ptr %158, align 4, !tbaa !149
  %654 = fcmp une float %653, 0.000000e+00
  br i1 %654, label %655, label %664

655:                                              ; preds = %649
  %656 = load float, ptr %11, align 4, !tbaa !105
  %657 = call float @llvm.fmuladd.f32(float %656, float %653, float %652)
  %658 = getelementptr inbounds float, ptr %11, i64 1
  %659 = load float, ptr %658, align 4, !tbaa !105
  %660 = call float @llvm.fmuladd.f32(float %659, float %653, float %651)
  %661 = getelementptr inbounds float, ptr %11, i64 2
  %662 = load float, ptr %661, align 4, !tbaa !105
  %663 = call float @llvm.fmuladd.f32(float %662, float %653, float %650)
  br label %664

664:                                              ; preds = %655, %649
  %665 = phi float [ %663, %655 ], [ %650, %649 ]
  %666 = phi float [ %660, %655 ], [ %651, %649 ]
  %667 = phi float [ %657, %655 ], [ %652, %649 ]
  %668 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 72
  %669 = load float, ptr %668, align 8, !tbaa !155
  %670 = fcmp une float %669, 0.000000e+00
  br i1 %670, label %671, label %675

671:                                              ; preds = %664
  %672 = call float @llvm.fmuladd.f32(float %669, float 0.000000e+00, float %667)
  %673 = call float @llvm.fmuladd.f32(float %669, float 0.000000e+00, float %666)
  %674 = call float @llvm.fmuladd.f32(float %669, float 0.000000e+00, float %665)
  br label %675

675:                                              ; preds = %671, %664
  %676 = phi float [ %674, %671 ], [ %665, %664 ]
  %677 = phi float [ %673, %671 ], [ %666, %664 ]
  %678 = phi float [ %672, %671 ], [ %667, %664 ]
  %679 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %680 = load float, ptr %6, align 4, !tbaa !156
  %681 = fmul float %678, %680
  store float %681, ptr %679, align 4, !tbaa !105
  %682 = fmul float %677, %680
  %683 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  store float %682, ptr %683, align 4, !tbaa !105
  %684 = fmul float %676, %680
  %685 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  store float %684, ptr %685, align 4, !tbaa !105
  %686 = load float, ptr %8, align 4, !tbaa !105
  store float %686, ptr %2, align 4, !tbaa !105
  %687 = getelementptr inbounds float, ptr %8, i64 1
  %688 = load float, ptr %687, align 4, !tbaa !105
  %689 = getelementptr inbounds float, ptr %2, i64 1
  store float %688, ptr %689, align 4, !tbaa !105
  %690 = getelementptr inbounds float, ptr %8, i64 2
  %691 = load float, ptr %690, align 4, !tbaa !105
  %692 = getelementptr inbounds float, ptr %2, i64 2
  store float %691, ptr %692, align 4, !tbaa !105
  %693 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  call void @unit_qt(ptr noundef nonnull %693) #16
  %694 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 12
  %695 = load i16, ptr %694, align 2, !tbaa !145
  switch i16 %695, label %716 [
    i16 0, label %841
    i16 1, label %696
    i16 9, label %696
    i16 2, label %700
    i16 3, label %703
    i16 4, label %703
    i16 5, label %703
    i16 6, label %707
    i16 7, label %707
    i16 8, label %707
  ]

696:                                              ; preds = %675, %675
  %697 = load float, ptr %7, align 4, !tbaa !105
  store float %697, ptr %17, align 4, !tbaa !105
  %698 = load float, ptr %75, align 4, !tbaa !105
  %699 = getelementptr inbounds float, ptr %17, i64 1
  store float %698, ptr %699, align 4, !tbaa !105
  br label %729

700:                                              ; preds = %675
  store float %678, ptr %17, align 4, !tbaa !105
  %701 = getelementptr inbounds float, ptr %17, i64 1
  store float %677, ptr %701, align 4, !tbaa !105
  %702 = getelementptr inbounds float, ptr %17, i64 2
  store float %676, ptr %702, align 4, !tbaa !105
  br label %716

703:                                              ; preds = %675, %675, %675
  %704 = sext i16 %695 to i64
  %705 = add nsw i64 %704, -3
  %706 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 %705
  store float 1.000000e+00, ptr %706, align 4, !tbaa !105
  br label %716

707:                                              ; preds = %675, %675, %675
  %708 = sext i16 %695 to i64
  %709 = add nsw i64 %708, -6
  %710 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47, i64 %709
  %711 = load float, ptr %710, align 4, !tbaa !105
  store float %711, ptr %17, align 4, !tbaa !105
  %712 = getelementptr inbounds float, ptr %710, i64 1
  %713 = load float, ptr %712, align 4, !tbaa !105
  %714 = getelementptr inbounds float, ptr %17, i64 1
  store float %713, ptr %714, align 4, !tbaa !105
  %715 = getelementptr inbounds float, ptr %710, i64 2
  br label %729

716:                                              ; preds = %700, %703, %675
  %717 = load float, ptr %17, align 4, !tbaa !105
  %718 = fneg float %717
  store float %718, ptr %17, align 4, !tbaa !105
  %719 = getelementptr inbounds float, ptr %17, i64 1
  %720 = load float, ptr %719, align 4, !tbaa !105
  %721 = fneg float %720
  store float %721, ptr %719, align 4, !tbaa !105
  %722 = getelementptr inbounds float, ptr %17, i64 2
  %723 = load float, ptr %722, align 4, !tbaa !105
  %724 = fneg float %723
  store float %724, ptr %722, align 4, !tbaa !105
  call void @vec_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %17, i16 noundef signext 0, i16 noundef signext 2) #16
  %725 = load float, ptr %287, align 4, !tbaa !152
  %726 = fcmp une float %725, 0.000000e+00
  br i1 %726, label %727, label %728

727:                                              ; preds = %716
  call void @interp_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %13, float noundef %725) #16
  br label %815

728:                                              ; preds = %716
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  br label %815

729:                                              ; preds = %707, %696
  %730 = phi ptr [ %715, %707 ], [ %79, %696 ]
  %731 = load float, ptr %730, align 4, !tbaa !105
  %732 = getelementptr inbounds float, ptr %17, i64 2
  store float %731, ptr %732, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #16
  call void @mat4_to_quat(ptr noundef nonnull %22, ptr noundef nonnull %73) #16
  call void @invert_qt_qt(ptr noundef nonnull %23, ptr noundef nonnull %22) #16
  %733 = load i16, ptr %694, align 2, !tbaa !145
  %734 = icmp eq i16 %733, 9
  br i1 %734, label %765, label %735

735:                                              ; preds = %729
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #16
  %736 = load float, ptr %17, align 4, !tbaa !105
  %737 = fneg float %736
  store float %737, ptr %17, align 4, !tbaa !105
  %738 = getelementptr inbounds float, ptr %17, i64 1
  %739 = load float, ptr %738, align 4, !tbaa !105
  %740 = fneg float %739
  store float %740, ptr %738, align 4, !tbaa !105
  %741 = getelementptr inbounds float, ptr %17, i64 2
  %742 = load float, ptr %741, align 4, !tbaa !105
  %743 = fneg float %742
  store float %743, ptr %741, align 4, !tbaa !105
  store float %737, ptr %24, align 4, !tbaa !105
  %744 = getelementptr inbounds float, ptr %24, i64 1
  store float %740, ptr %744, align 4, !tbaa !105
  %745 = getelementptr inbounds float, ptr %24, i64 2
  store float %743, ptr %745, align 4, !tbaa !105
  call void @mul_qt_v3(ptr noundef nonnull %23, ptr noundef nonnull %24) #16
  %746 = load float, ptr %24, align 4, !tbaa !105
  %747 = load float, ptr %744, align 4, !tbaa !105
  %748 = fmul float %747, %747
  %749 = call float @llvm.fmuladd.f32(float %746, float %746, float %748)
  %750 = load float, ptr %745, align 4, !tbaa !105
  %751 = call float @llvm.fmuladd.f32(float %750, float %750, float %749)
  %752 = fcmp ogt float %751, 0x38AA95A5C0000000
  br i1 %752, label %753, label %762

753:                                              ; preds = %735
  %754 = call float @sqrtf(float noundef %751) #16
  %755 = fdiv float 1.000000e+00, %754
  %756 = load float, ptr %24, align 4, !tbaa !105
  %757 = fmul float %756, %755
  store float %757, ptr %24, align 4, !tbaa !105
  %758 = load float, ptr %744, align 4, !tbaa !105
  %759 = fmul float %755, %758
  store float %759, ptr %744, align 4, !tbaa !105
  %760 = load float, ptr %745, align 4, !tbaa !105
  %761 = fmul float %755, %760
  br label %763

762:                                              ; preds = %735
  store float 0.000000e+00, ptr %24, align 4, !tbaa !105
  store float 0.000000e+00, ptr %744, align 4, !tbaa !105
  br label %763

763:                                              ; preds = %753, %762
  %764 = phi float [ 0.000000e+00, %762 ], [ %761, %753 ]
  store float %764, ptr %745, align 4, !tbaa !105
  call void @vec_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %24, i16 noundef signext 0, i16 noundef signext 2) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #16
  br label %808

765:                                              ; preds = %729
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %25) #16
  %766 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1
  %767 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 2
  %768 = load float, ptr %17, align 4, !tbaa !105
  store float %768, ptr %25, align 16, !tbaa !105
  %769 = getelementptr inbounds float, ptr %17, i64 1
  %770 = load float, ptr %769, align 4, !tbaa !105
  %771 = getelementptr inbounds float, ptr %25, i64 1
  store float %770, ptr %771, align 4, !tbaa !105
  %772 = getelementptr inbounds float, ptr %17, i64 2
  %773 = load float, ptr %772, align 4, !tbaa !105
  %774 = getelementptr inbounds float, ptr %25, i64 2
  store float %773, ptr %774, align 8, !tbaa !105
  call void @mul_qt_v3(ptr noundef nonnull %23, ptr noundef nonnull %25) #16
  %775 = load float, ptr %16, align 4, !tbaa !105
  store float %775, ptr %766, align 4, !tbaa !105
  %776 = getelementptr inbounds float, ptr %16, i64 1
  %777 = load float, ptr %776, align 4, !tbaa !105
  %778 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1, i64 1
  store float %777, ptr %778, align 16, !tbaa !105
  %779 = getelementptr inbounds float, ptr %16, i64 2
  %780 = load float, ptr %779, align 4, !tbaa !105
  %781 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1, i64 2
  store float %780, ptr %781, align 4, !tbaa !105
  call void @mul_qt_v3(ptr noundef nonnull %23, ptr noundef nonnull %766) #16
  %782 = load float, ptr %778, align 16, !tbaa !105
  %783 = load float, ptr %774, align 8, !tbaa !105
  %784 = load float, ptr %781, align 4, !tbaa !105
  %785 = load float, ptr %771, align 4, !tbaa !105
  %786 = fneg float %784
  %787 = fmul float %785, %786
  %788 = call float @llvm.fmuladd.f32(float %782, float %783, float %787)
  store float %788, ptr %767, align 8, !tbaa !105
  %789 = load float, ptr %25, align 16, !tbaa !105
  %790 = load float, ptr %766, align 4, !tbaa !105
  %791 = fneg float %790
  %792 = fmul float %783, %791
  %793 = call float @llvm.fmuladd.f32(float %784, float %789, float %792)
  %794 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 2, i64 1
  store float %793, ptr %794, align 4, !tbaa !105
  %795 = fneg float %782
  %796 = fmul float %789, %795
  %797 = call float @llvm.fmuladd.f32(float %790, float %785, float %796)
  %798 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 2, i64 2
  store float %797, ptr %798, align 16, !tbaa !105
  %799 = fneg float %797
  %800 = fmul float %785, %799
  %801 = call float @llvm.fmuladd.f32(float %793, float %783, float %800)
  store float %801, ptr %766, align 4, !tbaa !105
  %802 = fneg float %788
  %803 = fmul float %783, %802
  %804 = call float @llvm.fmuladd.f32(float %797, float %789, float %803)
  store float %804, ptr %778, align 16, !tbaa !105
  %805 = fneg float %793
  %806 = fmul float %789, %805
  %807 = call float @llvm.fmuladd.f32(float %788, float %785, float %806)
  store float %807, ptr %781, align 4, !tbaa !105
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %25) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %25) #16
  br label %808

808:                                              ; preds = %765, %763
  %809 = load float, ptr %287, align 4, !tbaa !152
  %810 = fcmp une float %809, 0.000000e+00
  br i1 %810, label %811, label %813

811:                                              ; preds = %808
  call void @mul_qt_qtqt(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %23) #16
  %812 = load float, ptr %287, align 4, !tbaa !152
  call void @interp_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %13, float noundef %812) #16
  br label %814

813:                                              ; preds = %808
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  br label %814

814:                                              ; preds = %813, %811
  call void @mul_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %22, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #16
  br label %815

815:                                              ; preds = %727, %728, %814
  %816 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 78
  %817 = load float, ptr %816, align 8, !tbaa !158
  %818 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 80
  %819 = load float, ptr %818, align 8, !tbaa !159
  %820 = fcmp une float %819, 0.000000e+00
  br i1 %820, label %821, label %838

821:                                              ; preds = %815
  %822 = add nsw i32 %57, 20
  %823 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 23
  %824 = load i32, ptr %823, align 4, !tbaa !150
  %825 = srem i32 %824, 1024
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %826
  %828 = load i32, ptr %827, align 4, !tbaa !95
  %829 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %826
  %830 = load i32, ptr %829, align 4, !tbaa !95
  %831 = mul i32 %830, %822
  %832 = add i32 %831, %828
  %833 = and i32 %832, 1023
  %834 = zext nneg i32 %833 to i64
  %835 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %834
  %836 = load float, ptr %835, align 4, !tbaa !105
  %837 = call float @llvm.fmuladd.f32(float %819, float %836, float %817)
  br label %838

838:                                              ; preds = %821, %815
  %839 = phi float [ %837, %821 ], [ %817, %815 ]
  %840 = fmul float %839, 0x400921FB60000000
  call void @axis_angle_to_quat(ptr noundef nonnull %18, ptr noundef nonnull %14, float noundef %840) #16
  call void @mul_qt_qtqt(ptr noundef nonnull %693, ptr noundef nonnull %9, ptr noundef nonnull %18) #16
  br label %841

841:                                              ; preds = %675, %838
  %842 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  store float 0.000000e+00, ptr %842, align 4, !tbaa !105
  %843 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %843, align 4, !tbaa !105
  %844 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %844, align 4, !tbaa !105
  %845 = load i16, ptr %226, align 4, !tbaa !151
  switch i16 %845, label %852 [
    i16 0, label %880
    i16 2, label %846
  ]

846:                                              ; preds = %841
  %847 = load float, ptr %12, align 4, !tbaa !105
  store float %847, ptr %842, align 4, !tbaa !105
  %848 = getelementptr inbounds float, ptr %12, i64 1
  %849 = load float, ptr %848, align 4, !tbaa !105
  store float %849, ptr %843, align 4, !tbaa !105
  %850 = getelementptr inbounds float, ptr %12, i64 2
  %851 = load float, ptr %850, align 4, !tbaa !105
  store float %851, ptr %844, align 4, !tbaa !105
  br label %853

852:                                              ; preds = %841
  call fastcc void @get_angular_velocity_vector(i16 noundef signext %845, ptr noundef nonnull %2, ptr noundef nonnull %842)
  br label %853

853:                                              ; preds = %852, %846
  %854 = load float, ptr %842, align 4, !tbaa !105
  %855 = load float, ptr %843, align 4, !tbaa !105
  %856 = fmul float %855, %855
  %857 = call float @llvm.fmuladd.f32(float %854, float %854, float %856)
  %858 = load float, ptr %844, align 4, !tbaa !105
  %859 = call float @llvm.fmuladd.f32(float %858, float %858, float %857)
  %860 = fcmp ogt float %859, 0x38AA95A5C0000000
  br i1 %860, label %861, label %870

861:                                              ; preds = %853
  %862 = call float @sqrtf(float noundef %859) #16
  %863 = fdiv float 1.000000e+00, %862
  %864 = load float, ptr %842, align 4, !tbaa !105
  %865 = fmul float %864, %863
  store float %865, ptr %842, align 4, !tbaa !105
  %866 = load float, ptr %843, align 4, !tbaa !105
  %867 = fmul float %863, %866
  store float %867, ptr %843, align 4, !tbaa !105
  %868 = load float, ptr %844, align 4, !tbaa !105
  %869 = fmul float %863, %868
  br label %871

870:                                              ; preds = %853
  store float 0.000000e+00, ptr %842, align 4, !tbaa !105
  store float 0.000000e+00, ptr %843, align 4, !tbaa !105
  br label %871

871:                                              ; preds = %861, %870
  %872 = phi float [ 0.000000e+00, %870 ], [ %869, %861 ]
  store float %872, ptr %844, align 4, !tbaa !105
  %873 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 77
  %874 = load float, ptr %873, align 4, !tbaa !160
  %875 = load float, ptr %842, align 4, !tbaa !105
  %876 = fmul float %874, %875
  store float %876, ptr %842, align 4, !tbaa !105
  %877 = load float, ptr %843, align 4, !tbaa !105
  %878 = fmul float %874, %877
  store float %878, ptr %843, align 4, !tbaa !105
  %879 = fmul float %872, %874
  store float %879, ptr %844, align 4, !tbaa !105
  br label %880

880:                                              ; preds = %841, %871, %446
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #16
  ret void
}

declare void @psys_particle_on_emitter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @psys_get_texture(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #8

declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unit_qt(ptr noundef) local_unnamed_addr #3

declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @invert_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @get_angular_velocity_vector(i16 noundef signext %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  switch i16 %0, label %68 [
    i16 1, label %4
    i16 3, label %13
    i16 4, label %31
    i16 5, label %59
    i16 6, label %62
    i16 7, label %65
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !105
  store float %6, ptr %2, align 4, !tbaa !105
  %7 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !105
  %9 = getelementptr inbounds float, ptr %2, i64 1
  store float %8, ptr %9, align 4, !tbaa !105
  %10 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !105
  %12 = getelementptr inbounds float, ptr %2, i64 2
  store float %11, ptr %12, align 4, !tbaa !105
  br label %68

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !105
  %17 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !105
  %19 = fmul float %18, 0.000000e+00
  %20 = fsub float %16, %19
  store float %20, ptr %2, align 4, !tbaa !105
  %21 = load float, ptr %17, align 4, !tbaa !105
  %22 = load float, ptr %14, align 4, !tbaa !105
  %23 = fneg float %22
  %24 = tail call float @llvm.fmuladd.f32(float %21, float 0.000000e+00, float %23)
  %25 = getelementptr inbounds float, ptr %2, i64 1
  store float %24, ptr %25, align 4, !tbaa !105
  %26 = load float, ptr %14, align 4, !tbaa !105
  %27 = load float, ptr %15, align 4, !tbaa !105
  %28 = fmul float %27, -0.000000e+00
  %29 = tail call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %28)
  %30 = getelementptr inbounds float, ptr %2, i64 2
  store float %29, ptr %30, align 4, !tbaa !105
  br label %68

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %33 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !105
  %35 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !105
  %37 = fmul float %36, 0.000000e+00
  %38 = fsub float %34, %37
  %39 = load float, ptr %32, align 4, !tbaa !105
  %40 = fneg float %39
  %41 = tail call float @llvm.fmuladd.f32(float %36, float 0.000000e+00, float %40)
  %42 = fmul float %34, -0.000000e+00
  %43 = tail call float @llvm.fmuladd.f32(float %39, float 0.000000e+00, float %42)
  %44 = fneg float %43
  %45 = fmul float %34, %44
  %46 = tail call float @llvm.fmuladd.f32(float %41, float %36, float %45)
  store float %46, ptr %2, align 4, !tbaa !105
  %47 = load float, ptr %32, align 4, !tbaa !105
  %48 = load float, ptr %35, align 4, !tbaa !105
  %49 = fneg float %38
  %50 = fmul float %48, %49
  %51 = tail call float @llvm.fmuladd.f32(float %43, float %47, float %50)
  %52 = getelementptr inbounds float, ptr %2, i64 1
  store float %51, ptr %52, align 4, !tbaa !105
  %53 = load float, ptr %33, align 4, !tbaa !105
  %54 = load float, ptr %32, align 4, !tbaa !105
  %55 = fneg float %41
  %56 = fmul float %54, %55
  %57 = tail call float @llvm.fmuladd.f32(float %38, float %53, float %56)
  %58 = getelementptr inbounds float, ptr %2, i64 2
  store float %57, ptr %58, align 4, !tbaa !105
  br label %68

59:                                               ; preds = %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !105
  %60 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %60, align 4, !tbaa !105
  %61 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %61, align 4, !tbaa !105
  br label %68

62:                                               ; preds = %3
  %63 = getelementptr inbounds float, ptr %2, i64 1
  store float 1.000000e+00, ptr %63, align 4, !tbaa !105
  %64 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %64, align 4, !tbaa !105
  store float 0.000000e+00, ptr %2, align 4, !tbaa !105
  br label %68

65:                                               ; preds = %3
  %66 = getelementptr inbounds float, ptr %2, i64 2
  store float 1.000000e+00, ptr %66, align 4, !tbaa !105
  %67 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %67, align 4, !tbaa !105
  store float 0.000000e+00, ptr %2, align 4, !tbaa !105
  br label %68

68:                                               ; preds = %3, %65, %62, %59, %31, %13, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reset_particle(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ParticleTexture, align 4
  %6 = alloca %struct.ParticleTexture, align 4
  %7 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 200
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 7
  %19 = load i16, ptr %18, align 8, !tbaa !47
  %20 = icmp ne i16 %19, 2
  %21 = fcmp ogt float %2, 0.000000e+00
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %25 = load float, ptr %24, align 4, !tbaa !141
  %26 = fcmp olt float %25, %3
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 20
  %29 = load float, ptr %28, align 8, !tbaa !161
  %30 = fcmp ult float %25, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !112
  tail call fastcc void @evaluate_emitter_anim(ptr noundef %32, ptr noundef %34, float noundef %25)
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = or i32 %36, 16384
  store i32 %37, ptr %35, align 4, !tbaa !50
  br label %38

38:                                               ; preds = %31, %27, %23, %4
  tail call void @psys_get_birth_coordinates(ptr noundef %0, ptr noundef %1, ptr noundef %1, float noundef %2, float noundef %3)
  %39 = load ptr, ptr %7, align 8, !tbaa !113
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #16
  call void @psys_get_texture(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 15, float noundef 0.000000e+00) #16
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %41, i64 0, i32 7
  %43 = load i16, ptr %42, align 8, !tbaa !47
  switch i16 %43, label %102 [
    i16 0, label %44
    i16 2, label %76
  ]

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ParticleTexture, ptr %5, i64 0, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !162
  %47 = add nsw i32 %15, 125
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %39, i64 0, i32 23
  %49 = load i32, ptr %48, align 4, !tbaa !150
  %50 = srem i32 %49, 1024
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !95
  %54 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %51
  %55 = load i32, ptr %54, align 4, !tbaa !95
  %56 = mul i32 %55, %47
  %57 = add i32 %56, %53
  %58 = and i32 %57, 1023
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !105
  %62 = fcmp olt float %46, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %44
  %64 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 17
  %65 = load i16, ptr %64, align 4, !tbaa !65
  %66 = or i16 %65, 1
  store i16 %66, ptr %64, align 4, !tbaa !65
  br label %67

67:                                               ; preds = %63, %44
  %68 = getelementptr inbounds %struct.ParticleSettings, ptr %41, i64 0, i32 53
  %69 = load float, ptr %68, align 4, !tbaa !139
  %70 = getelementptr inbounds %struct.ParticleSettings, ptr %41, i64 0, i32 54
  %71 = load float, ptr %70, align 8, !tbaa !140
  %72 = fsub float %71, %69
  %73 = getelementptr inbounds %struct.ParticleTexture, ptr %5, i64 0, i32 1
  %74 = load float, ptr %73, align 4, !tbaa !163
  %75 = call float @llvm.fmuladd.f32(float %72, float %74, float %69)
  br label %99

76:                                               ; preds = %38
  %77 = getelementptr inbounds %struct.ParticleTexture, ptr %5, i64 0, i32 3
  %78 = load float, ptr %77, align 4, !tbaa !162
  %79 = add nsw i32 %15, 125
  %80 = getelementptr inbounds %struct.ParticleSystem, ptr %39, i64 0, i32 23
  %81 = load i32, ptr %80, align 4, !tbaa !150
  %82 = srem i32 %81, 1024
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !95
  %86 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %83
  %87 = load i32, ptr %86, align 4, !tbaa !95
  %88 = mul i32 %87, %79
  %89 = add i32 %88, %85
  %90 = and i32 %89, 1023
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !105
  %94 = fcmp olt float %78, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 17
  %97 = load i16, ptr %96, align 4, !tbaa !65
  %98 = or i16 %97, 1
  store i16 %98, ptr %96, align 4, !tbaa !65
  br label %99

99:                                               ; preds = %76, %95, %67
  %100 = phi float [ %75, %67 ], [ 0.000000e+00, %95 ], [ 0.000000e+00, %76 ]
  %101 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  store float %100, ptr %101, align 4, !tbaa !141
  br label %102

102:                                              ; preds = %99, %38
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #16
  %103 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 11
  %104 = load i16, ptr %103, align 8, !tbaa !51
  %105 = icmp eq i16 %104, 3
  br i1 %105, label %106, label %140

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !143
  %109 = icmp eq ptr %108, null
  br i1 %109, label %140, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 2
  %112 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %112, align 4, !tbaa !105
  store float 0.000000e+00, ptr %111, align 4, !tbaa !105
  %113 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 2, i64 2
  store float -1.000000e+00, ptr %113, align 4, !tbaa !105
  %114 = load ptr, ptr %0, align 8, !tbaa !102
  %115 = getelementptr inbounds %struct.Scene, ptr %114, i64 0, i32 40, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !164
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.Scene, ptr %114, i64 0, i32 40, i32 0, i64 2
  %121 = load float, ptr %120, align 8, !tbaa !105
  %122 = fcmp une float %121, 0.000000e+00
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store float %121, ptr %113, align 4, !tbaa !105
  br label %124

124:                                              ; preds = %123, %119, %110
  %125 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !183
  %127 = getelementptr inbounds %struct.BoidSettings, ptr %126, i64 0, i32 6
  %128 = load float, ptr %127, align 8, !tbaa !184
  %129 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 1
  store float %128, ptr %129, align 8, !tbaa !186
  %130 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 1, i32 3
  store i16 0, ptr %130, align 2, !tbaa !189
  %131 = getelementptr inbounds %struct.BoidSettings, ptr %126, i64 0, i32 22
  %132 = load ptr, ptr %131, align 8, !tbaa !190
  %133 = getelementptr inbounds %struct.BoidState, ptr %132, i64 0, i32 6
  %134 = load i32, ptr %133, align 8, !tbaa !191
  %135 = trunc i32 %134 to i16
  %136 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 1, i32 2
  store i16 %135, ptr %136, align 8, !tbaa !193
  %137 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 1, i32 1
  %138 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 1, i32 1, i64 2
  store float 0.000000e+00, ptr %138, align 4, !tbaa !105
  %139 = getelementptr inbounds %struct.BoidParticle, ptr %108, i64 0, i32 1, i32 1, i64 1
  store float 0.000000e+00, ptr %139, align 4, !tbaa !105
  store float 0.000000e+00, ptr %137, align 4, !tbaa !105
  br label %140

140:                                              ; preds = %124, %106, %102
  %141 = load i16, ptr %18, align 8, !tbaa !47
  %142 = icmp eq i16 %141, 2
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 7
  store float 1.000000e+02, ptr %144, align 8, !tbaa !194
  br label %196

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 55
  %147 = load float, ptr %146, align 4, !tbaa !195
  %148 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 56
  %149 = load float, ptr %148, align 8, !tbaa !196
  %150 = add nsw i32 %15, 21
  %151 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 23
  %152 = load i32, ptr %151, align 4, !tbaa !150
  %153 = srem i32 %152, 1024
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !95
  %157 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %154
  %158 = load i32, ptr %157, align 4, !tbaa !95
  %159 = mul i32 %158, %150
  %160 = add i32 %159, %156
  %161 = and i32 %160, 1023
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %162
  %164 = load float, ptr %163, align 4, !tbaa !105
  %165 = fneg float %149
  %166 = call float @llvm.fmuladd.f32(float %165, float %164, float 1.000000e+00)
  %167 = fmul float %147, %166
  %168 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 7
  store float %167, ptr %168, align 8, !tbaa !194
  %169 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %170 = load float, ptr %169, align 4, !tbaa !141
  %171 = fadd float %170, %167
  %172 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  store float %171, ptr %172, align 4, !tbaa !197
  call void @psys_get_texture(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2, float noundef %3) #16
  %173 = load float, ptr %146, align 4, !tbaa !195
  %174 = getelementptr inbounds %struct.ParticleTexture, ptr %6, i64 0, i32 2
  %175 = load float, ptr %174, align 4, !tbaa !198
  %176 = fmul float %173, %175
  store float %176, ptr %168, align 8, !tbaa !194
  %177 = load float, ptr %148, align 8, !tbaa !196
  %178 = fcmp une float %177, 0.000000e+00
  br i1 %178, label %179, label %196

179:                                              ; preds = %145
  %180 = load i32, ptr %151, align 4, !tbaa !150
  %181 = srem i32 %180, 1024
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !95
  %185 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %182
  %186 = load i32, ptr %185, align 4, !tbaa !95
  %187 = mul i32 %186, %150
  %188 = add i32 %187, %184
  %189 = and i32 %188, 1023
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %190
  %192 = load float, ptr %191, align 4, !tbaa !105
  %193 = fneg float %177
  %194 = call float @llvm.fmuladd.f32(float %193, float %192, float 1.000000e+00)
  %195 = fmul float %176, %194
  store float %195, ptr %168, align 8, !tbaa !194
  br label %196

196:                                              ; preds = %145, %179, %143
  %197 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %198 = load float, ptr %197, align 4, !tbaa !141
  %199 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 7
  %200 = load float, ptr %199, align 8, !tbaa !194
  %201 = fadd float %198, %200
  %202 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  store float %201, ptr %202, align 4, !tbaa !197
  %203 = load ptr, ptr %7, align 8, !tbaa !113
  %204 = getelementptr inbounds %struct.ParticleSystem, ptr %203, i64 0, i32 40
  %205 = load ptr, ptr %204, align 8, !tbaa !44
  %206 = icmp eq ptr %205, null
  br i1 %206, label %221, label %207

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.PointCache, ptr %205, i64 0, i32 2
  %209 = load i32, ptr %208, align 8, !tbaa !45
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.PointCache, ptr %205, i64 0, i32 20
  %214 = load ptr, ptr %213, align 8, !tbaa !199
  %215 = icmp eq ptr %214, null
  br i1 %215, label %221, label %216

216:                                              ; preds = %212
  %217 = call float @psys_get_dietime_from_cache(ptr noundef nonnull %205, i32 noundef %15) #16
  %218 = load float, ptr %202, align 4, !tbaa !197
  %219 = fcmp olt float %218, %217
  %220 = select i1 %219, float %218, float %217
  store float %220, ptr %202, align 4, !tbaa !197
  br label %221

221:                                              ; preds = %216, %212, %207, %196
  %222 = load float, ptr %197, align 4, !tbaa !141
  %223 = fcmp ogt float %222, %3
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 18
  store i16 2, ptr %225, align 2, !tbaa !200
  br label %232

226:                                              ; preds = %221
  %227 = load float, ptr %202, align 4, !tbaa !197
  %228 = fcmp ugt float %227, %3
  %229 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 18
  br i1 %228, label %231, label %230

230:                                              ; preds = %226
  store i16 1, ptr %229, align 2, !tbaa !200
  br label %232

231:                                              ; preds = %226
  store i16 3, ptr %229, align 2, !tbaa !200
  br label %232

232:                                              ; preds = %230, %231, %224
  %233 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 4
  store float %3, ptr %233, align 4, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evaluate_emitter_anim(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !202
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @evaluate_emitter_anim(ptr noundef %0, ptr noundef nonnull %5, float noundef %2)
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !203
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %10, float noundef %2, i16 noundef signext 2) #16
  tail call void @BKE_object_where_is_calc_time(ptr noundef %0, ptr noundef %1, float noundef %2) #16
  ret void
}

declare float @psys_get_dietime_from_cache(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @psys_get_target_system(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ParticleTarget, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.ParticleTarget, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = add nsw i32 %7, -1
  %9 = select i1 %5, ptr %0, ptr %4
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 109
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %8) #16
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.ParticleTarget, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !207
  %15 = and i16 %14, -3
  %16 = select i1 %12, i16 0, i16 2
  %17 = or disjoint i16 %15, %16
  store i16 %17, ptr %13, align 4, !tbaa !207
  ret ptr %11
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @psys_count_keyed_targets(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 33
  store i16 0, ptr %6, align 8, !tbaa !61
  %7 = icmp eq ptr %5, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  br label %11

11:                                               ; preds = %8, %47
  %12 = phi i32 [ 1, %8 ], [ %48, %47 ]
  %13 = phi ptr [ %5, %8 ], [ %49, %47 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !112
  %15 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !206
  %20 = add nsw i32 %19, -1
  %21 = select i1 %17, ptr %14, ptr %16
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 109
  %23 = tail call ptr @BLI_findlink(ptr noundef nonnull %22, i32 noundef %20) #16
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 4
  %26 = load i16, ptr %25, align 4, !tbaa !207
  %27 = and i16 %26, -3
  %28 = select i1 %24, i16 0, i16 2
  %29 = or disjoint i16 %27, %28
  store i16 %29, ptr %25, align 4, !tbaa !207
  br i1 %24, label %47, label %30

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %23, i64 0, i32 26
  %32 = load i32, ptr %31, align 8, !tbaa !55
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %6, align 8, !tbaa !61
  %36 = trunc i32 %12 to i16
  %37 = add i16 %35, %36
  store i16 %37, ptr %6, align 8, !tbaa !61
  %38 = load i32, ptr %10, align 4, !tbaa !50
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 7
  %43 = load float, ptr %42, align 4, !tbaa !209
  %44 = fcmp une float %43, 0.000000e+00
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = add i16 %37, 1
  store i16 %46, ptr %6, align 8, !tbaa !61
  br label %47

47:                                               ; preds = %11, %30, %45, %41, %34
  %48 = phi i32 [ %12, %45 ], [ %12, %41 ], [ %12, %34 ], [ 0, %30 ], [ 0, %11 ]
  %49 = load ptr, ptr %13, align 8, !tbaa !210
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %11, !llvm.loop !211

51:                                               ; preds = %47, %1
  %52 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %58, i64 0, i32 120
  %60 = load i32, ptr %59, align 4, !tbaa !212
  %61 = trunc i32 %60 to i16
  br label %62

62:                                               ; preds = %51, %56
  %63 = phi i16 [ %61, %56 ], [ 1, %51 ]
  %64 = load i16, ptr %6, align 8, !tbaa !61
  %65 = mul i16 %64, %63
  store i16 %65, ptr %6, align 8, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_make_temp_pointcache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.PTCacheID, align 8
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #16
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #16
  %15 = load i32, ptr %6, align 8, !tbaa !45
  %16 = and i32 %15, -65
  store i32 %16, ptr %6, align 8, !tbaa !45
  call void @BKE_ptcache_disk_to_mem(ptr noundef nonnull %3) #16
  %17 = load i32, ptr %6, align 8, !tbaa !45
  %18 = or i32 %17, 64
  store i32 %18, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #16
  br label %19

19:                                               ; preds = %14, %10, %2
  ret void
}

declare void @BKE_ptcache_id_from_particles(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_ptcache_disk_to_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_get_pointcache_start_end(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 53
  %8 = load float, ptr %7, align 4, !tbaa !139
  %9 = fptosi float %8 to i32
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  store i32 %10, ptr %2, align 4, !tbaa !95
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 54
  %12 = load float, ptr %11, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 55
  %14 = load float, ptr %13, align 4, !tbaa !195
  %15 = fadd float %12, %14
  %16 = fadd float %15, 1.000000e+00
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !214
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %17)
  store i32 %20, ptr %3, align 4, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_update_particle_tree(ptr noundef %0, float noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 46
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 21
  %10 = load float, ptr %9, align 4, !tbaa !216
  %11 = fcmp une float %10, %1
  br i1 %11, label %12, label %48

12:                                               ; preds = %4, %8
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  tail call void @BLI_kdtree_free(ptr noundef %6) #16
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = tail call ptr @BLI_kdtree_new(i32 noundef %14) #16
  store ptr %15, ptr %5, align 8, !tbaa !215
  %16 = load i32, ptr %13, align 8, !tbaa !55
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  br label %21

21:                                               ; preds = %18, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %18 ]
  %23 = phi ptr [ %42, %40 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 0, i32 17
  %25 = load i16, ptr %24, align 4, !tbaa !65
  %26 = and i16 %25, 3
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 0, i32 18
  %30 = load i16, ptr %29, align 2, !tbaa !200
  %31 = icmp eq i16 %30, 3
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ParticleKey, ptr %23, i64 0, i32 4
  %34 = load float, ptr %33, align 4, !tbaa !201
  %35 = fcmp oeq float %34, %1
  %36 = load ptr, ptr %5, align 8, !tbaa !215
  br i1 %35, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 0, i32 1
  tail call void @BLI_kdtree_insert(ptr noundef %36, i32 noundef %22, ptr noundef nonnull %38) #16
  br label %40

39:                                               ; preds = %32
  tail call void @BLI_kdtree_insert(ptr noundef %36, i32 noundef %22, ptr noundef %23) #16
  br label %40

40:                                               ; preds = %21, %37, %39, %28
  %41 = add nuw nsw i32 %22, 1
  %42 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 1
  %43 = load i32, ptr %13, align 8, !tbaa !55
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %21, label %45, !llvm.loop !217

45:                                               ; preds = %40, %12
  %46 = load ptr, ptr %5, align 8, !tbaa !215
  tail call void @BLI_kdtree_balance(ptr noundef %46) #16
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 21
  store float %1, ptr %47, align 4, !tbaa !216
  br label %48

48:                                               ; preds = %8, %45, %2
  ret void
}

declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #3

declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @psys_sph_init(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  store ptr %4, ptr %1, align 8, !tbaa !72
  %5 = load ptr, ptr %3, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %2, %36
  %10 = phi i64 [ 1, %2 ], [ %33, %36 ]
  %11 = phi ptr [ %7, %2 ], [ %37, %36 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %8, align 8, !tbaa !112
  %15 = getelementptr inbounds %struct.ParticleTarget, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.ParticleTarget, ptr %11, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !206
  %20 = add nsw i32 %19, -1
  %21 = select i1 %17, ptr %14, ptr %16
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 109
  %23 = tail call ptr @BLI_findlink(ptr noundef nonnull %22, i32 noundef %20) #16
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ParticleTarget, ptr %11, i64 0, i32 4
  %26 = load i16, ptr %25, align 4, !tbaa !207
  %27 = and i16 %26, -3
  %28 = select i1 %24, i16 0, i16 2
  %29 = or disjoint i16 %27, %28
  store i16 %29, ptr %25, align 4, !tbaa !207
  br label %30

30:                                               ; preds = %13, %9
  %31 = phi ptr [ null, %9 ], [ %23, %13 ]
  %32 = getelementptr inbounds [10 x ptr], ptr %1, i64 0, i64 %10
  store ptr %31, ptr %32, align 8, !tbaa !72
  %33 = add nuw nsw i64 %10, 1
  br i1 %12, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %11, align 8, !tbaa !210
  br label %36

36:                                               ; preds = %30, %34
  %37 = phi ptr [ %35, %34 ], [ null, %30 ]
  %38 = icmp eq i64 %33, 10
  br i1 %38, label %39, label %9, !llvm.loop !218

39:                                               ; preds = %36
  %40 = tail call i32 @psys_uses_gravity(ptr noundef %0) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 8, !tbaa !102
  %44 = getelementptr inbounds %struct.Scene, ptr %43, i64 0, i32 40
  br label %45

45:                                               ; preds = %39, %42
  %46 = phi ptr [ %44, %42 ], [ null, %39 ]
  %47 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 4
  store ptr %46, ptr %47, align 8, !tbaa !219
  %48 = load ptr, ptr %3, align 8, !tbaa !113
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %48, i64 0, i32 44
  %50 = load i32, ptr %49, align 8, !tbaa !76
  %51 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.sph_springhash_build, i32 noundef %50) #16
  %52 = load i32, ptr %49, align 8, !tbaa !76
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %48, i64 0, i32 43
  %56 = load ptr, ptr %55, align 8, !tbaa !74
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ 0, %54 ], [ %64, %57 ]
  %59 = phi ptr [ %56, %54 ], [ %66, %57 ]
  %60 = getelementptr inbounds %struct.ParticleSpring, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !95
  %62 = getelementptr inbounds %struct.ParticleSpring, ptr %59, i64 0, i32 1, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !95
  %64 = add nuw nsw i64 %58, 1
  %65 = inttoptr i64 %64 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %51, i32 noundef %61, i32 noundef %63, ptr noundef nonnull %65) #16
  %66 = getelementptr inbounds %struct.ParticleSpring, ptr %59, i64 1
  %67 = load i32, ptr %49, align 8, !tbaa !76
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %57, label %70, !llvm.loop !221

70:                                               ; preds = %57, %45
  %71 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 3
  store ptr %51, ptr %71, align 8, !tbaa !222
  %72 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 1
  store ptr null, ptr %72, align 8, !tbaa !223
  %73 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 2
  store float 1.000000e+00, ptr %73, align 8, !tbaa !224
  %74 = load ptr, ptr %3, align 8, !tbaa !113
  %75 = getelementptr inbounds %struct.ParticleSystem, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.ParticleSettings, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !225
  %79 = getelementptr inbounds %struct.SPHFluidSettings, ptr %78, i64 0, i32 15
  %80 = load i16, ptr %79, align 4, !tbaa !226
  %81 = icmp eq i16 %80, 0
  %82 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 9
  %83 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 10
  %84 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 5
  %85 = select i1 %81, ptr @sph_force_cb, ptr @sphclassical_force_cb
  %86 = select i1 %81, ptr @sph_density_accum_cb, ptr @sphclassical_density_accum_cb
  %87 = select i1 %81, float 1.000000e+00, float 5.000000e-01
  store ptr %85, ptr %82, align 8, !tbaa !228
  store ptr %86, ptr %83, align 8, !tbaa !229
  store float %87, ptr %84, align 8, !tbaa !230
  ret void
}

declare i32 @psys_uses_gravity(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @sph_force_cb(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture readnone %3) #2 {
  %5 = alloca %struct.SPHRangeData, align 8
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !223
  %9 = load ptr, ptr %0, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %5) #16
  %14 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 7
  %19 = load float, ptr %18, align 4, !tbaa !231
  %20 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 8
  %21 = load float, ptr %20, align 4, !tbaa !232
  %22 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !233
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float 1.000000e+00, float %19
  %27 = fmul float %21, %26
  %28 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !224
  %30 = fdiv float 1.000000e+00, %29
  %31 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !234
  %33 = load float, ptr %13, align 4, !tbaa !235
  %34 = and i32 %23, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.ParticleData, ptr %8, i64 0, i32 13
  %38 = load float, ptr %37, align 4, !tbaa !236
  %39 = fmul float %38, 4.000000e+00
  br label %40

40:                                               ; preds = %4, %36
  %41 = phi float [ %39, %36 ], [ 1.000000e+00, %4 ]
  %42 = fmul float %33, %41
  %43 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 5
  %44 = load float, ptr %43, align 8, !tbaa !230
  %45 = fmul float %42, %44
  %46 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 11
  %47 = load float, ptr %46, align 4, !tbaa !237
  %48 = and i32 %23, 8
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, float 1.000000e+00, float 0x4013147AE0000000
  %51 = fmul float %50, %47
  %52 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !238
  %54 = and i32 %23, 64
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %40
  %57 = getelementptr inbounds %struct.ParticleData, ptr %8, i64 0, i32 13
  %58 = load float, ptr %57, align 4, !tbaa !236
  %59 = fmul float %58, 0x4004B43960000000
  br label %60

60:                                               ; preds = %40, %56
  %61 = phi float [ %59, %56 ], [ 1.000000e+00, %40 ]
  %62 = fmul float %53, %61
  %63 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 9
  %64 = load float, ptr %63, align 4, !tbaa !239
  %65 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 10
  %66 = load float, ptr %65, align 4, !tbaa !240
  %67 = and i32 %23, 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, float 1.000000e+00, float %64
  %70 = fmul float %66, %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !64
  %73 = ptrtoint ptr %8 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 200
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float 0.000000e+00, ptr %78, align 4, !tbaa !105
  store float 0.000000e+00, ptr %6, align 4, !tbaa !105
  %79 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 2
  store ptr %6, ptr %79, align 8, !tbaa !241
  %80 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 5
  store float %45, ptr %80, align 8, !tbaa !243
  %81 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 4
  store ptr %8, ptr %81, align 8, !tbaa !244
  %82 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 6
  store float %29, ptr %82, align 4, !tbaa !245
  %83 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 1
  store i32 0, ptr %83, align 8, !tbaa !246
  %84 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 3
  %85 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 7
  %86 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 8
  br label %87

87:                                               ; preds = %92, %60
  %88 = phi i64 [ 0, %60 ], [ %106, %92 ]
  %89 = getelementptr inbounds ptr, ptr %0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !72
  %91 = icmp eq ptr %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %87
  store ptr %90, ptr %84, align 8, !tbaa !247
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %90, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !34
  %95 = getelementptr inbounds %struct.ParticleSettings, ptr %94, i64 0, i32 81
  %96 = load float, ptr %95, align 4, !tbaa !248
  %97 = load float, ptr %82, align 4, !tbaa !245
  %98 = fdiv float %96, %97
  store float %98, ptr %85, align 8, !tbaa !249
  %99 = getelementptr inbounds %struct.ParticleSettings, ptr %94, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !250
  %101 = and i32 %100, 65536
  store i32 %101, ptr %86, align 4, !tbaa !251
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 1) #16
  %102 = load ptr, ptr %89, align 8, !tbaa !72
  %103 = getelementptr inbounds %struct.ParticleSystem, ptr %102, i64 0, i32 47
  %104 = load ptr, ptr %103, align 8, !tbaa !252
  %105 = call i32 @BLI_bvhtree_range_query(ptr noundef %104, ptr noundef %1, float noundef %42, ptr noundef nonnull @sph_density_accum_cb, ptr noundef nonnull %5) #16
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #16
  %106 = add nuw nsw i64 %88, 1
  %107 = icmp eq i64 %106, 10
  br i1 %107, label %108, label %87, !llvm.loop !253

108:                                              ; preds = %87, %92
  %109 = load float, ptr %6, align 4, !tbaa !105
  %110 = load float, ptr %78, align 4, !tbaa !105
  %111 = fsub float %109, %51
  %112 = fmul float %64, %111
  %113 = fmul float %70, %110
  %114 = load i32, ptr %83, align 8, !tbaa !246
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %341

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 4
  %118 = getelementptr inbounds float, ptr %1, i64 1
  %119 = getelementptr inbounds float, ptr %1, i64 2
  %120 = getelementptr inbounds float, ptr %2, i64 1
  %121 = getelementptr inbounds float, ptr %2, i64 2
  %122 = fcmp ogt float %19, 0.000000e+00
  %123 = fcmp ogt float %27, 0.000000e+00
  %124 = select i1 %122, i1 true, i1 %123
  %125 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %126 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %127 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %128 = fcmp ogt float %32, 0.000000e+00
  %129 = icmp ne ptr %17, null
  %130 = fmul float %32, -1.000000e+01
  %131 = fmul float %32, -1.000000e+01
  %132 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 14
  %133 = getelementptr inbounds %struct.ParticleData, ptr %8, i64 0, i32 1, i32 4
  %134 = getelementptr inbounds %struct.ParticleData, ptr %8, i64 0, i32 6
  br label %135

135:                                              ; preds = %116, %336
  %136 = phi ptr [ %5, %116 ], [ %338, %336 ]
  %137 = phi i32 [ 0, %116 ], [ %337, %336 ]
  %138 = load ptr, ptr %136, align 8, !tbaa !254
  %139 = getelementptr inbounds %struct.ParticleSystem, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !64
  %141 = getelementptr inbounds %struct.SPHNeighbor, ptr %136, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !256
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ParticleData, ptr %140, i64 %143, i32 1
  %145 = getelementptr inbounds %struct.ParticleData, ptr %140, i64 %143, i32 1, i32 1
  %146 = load float, ptr %117, align 4, !tbaa !257
  %147 = load float, ptr %144, align 4, !tbaa !105
  %148 = load float, ptr %145, align 4, !tbaa !105
  %149 = call float @llvm.fmuladd.f32(float %148, float %146, float %147)
  %150 = getelementptr inbounds float, ptr %144, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !105
  %152 = getelementptr inbounds float, ptr %145, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !105
  %154 = call float @llvm.fmuladd.f32(float %153, float %146, float %151)
  %155 = getelementptr inbounds float, ptr %144, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !105
  %157 = getelementptr inbounds float, ptr %145, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !105
  %159 = call float @llvm.fmuladd.f32(float %158, float %146, float %156)
  %160 = load float, ptr %1, align 4, !tbaa !105
  %161 = fsub float %149, %160
  %162 = load float, ptr %118, align 4, !tbaa !105
  %163 = fsub float %154, %162
  %164 = load float, ptr %119, align 4, !tbaa !105
  %165 = fsub float %159, %164
  %166 = fmul float %163, %163
  %167 = call float @llvm.fmuladd.f32(float %161, float %161, float %166)
  %168 = call float @llvm.fmuladd.f32(float %165, float %165, float %167)
  %169 = fcmp ogt float %168, 0x38AA95A5C0000000
  br i1 %169, label %170, label %176

170:                                              ; preds = %135
  %171 = call float @sqrtf(float noundef %168) #16
  %172 = fdiv float 1.000000e+00, %171
  %173 = fmul float %161, %172
  %174 = fmul float %163, %172
  %175 = fmul float %165, %172
  br label %176

176:                                              ; preds = %135, %170
  %177 = phi float [ %173, %170 ], [ 0.000000e+00, %135 ]
  %178 = phi float [ %174, %170 ], [ 0.000000e+00, %135 ]
  %179 = phi float [ %175, %170 ], [ 0.000000e+00, %135 ]
  %180 = phi float [ %171, %170 ], [ 0.000000e+00, %135 ]
  %181 = fdiv float %180, %45
  %182 = fsub float 1.000000e+00, %181
  %183 = load ptr, ptr %136, align 8, !tbaa !254
  %184 = getelementptr inbounds %struct.ParticleSystem, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  %186 = getelementptr inbounds %struct.ParticleSettings, ptr %185, i64 0, i32 81
  %187 = load float, ptr %186, align 4, !tbaa !248
  %188 = fmul float %182, %187
  %189 = fmul float %30, %188
  %190 = getelementptr inbounds %struct.ParticleSettings, ptr %185, i64 0, i32 5
  %191 = load i32, ptr %190, align 8, !tbaa !250
  %192 = and i32 %191, 65536
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %176
  %195 = getelementptr inbounds %struct.ParticleData, ptr %140, i64 %143, i32 13
  %196 = load float, ptr %195, align 4, !tbaa !236
  %197 = fmul float %189, %196
  br label %198

198:                                              ; preds = %194, %176
  %199 = phi float [ %197, %194 ], [ %189, %176 ]
  %200 = load float, ptr %145, align 4, !tbaa !105
  %201 = load float, ptr %152, align 4, !tbaa !105
  %202 = load float, ptr %157, align 4, !tbaa !105
  %203 = call float @llvm.fmuladd.f32(float %113, float %199, float %112)
  %204 = fneg float %203
  %205 = fmul float %199, %204
  %206 = load float, ptr %2, align 4, !tbaa !105
  %207 = call float @llvm.fmuladd.f32(float %177, float %205, float %206)
  store float %207, ptr %2, align 4, !tbaa !105
  %208 = load float, ptr %120, align 4, !tbaa !105
  %209 = call float @llvm.fmuladd.f32(float %178, float %205, float %208)
  store float %209, ptr %120, align 4, !tbaa !105
  %210 = load float, ptr %121, align 4, !tbaa !105
  %211 = call float @llvm.fmuladd.f32(float %179, float %205, float %210)
  store float %211, ptr %121, align 4, !tbaa !105
  br i1 %124, label %212, label %244

212:                                              ; preds = %198
  %213 = load float, ptr %125, align 4, !tbaa !105
  %214 = fsub float %200, %213
  %215 = load float, ptr %126, align 4, !tbaa !105
  %216 = fsub float %201, %215
  %217 = load float, ptr %127, align 4, !tbaa !105
  %218 = fsub float %202, %217
  %219 = fmul float %178, %216
  %220 = call float @llvm.fmuladd.f32(float %177, float %214, float %219)
  %221 = call float @llvm.fmuladd.f32(float %179, float %218, float %220)
  %222 = fcmp olt float %221, 0.000000e+00
  %223 = and i1 %122, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %212
  %225 = fmul float %199, 5.000000e-01
  %226 = fmul float %19, %225
  %227 = fmul float %226, %221
  %228 = call float @llvm.fmuladd.f32(float %177, float %227, float %207)
  store float %228, ptr %2, align 4, !tbaa !105
  %229 = call float @llvm.fmuladd.f32(float %178, float %227, float %209)
  store float %229, ptr %120, align 4, !tbaa !105
  %230 = call float @llvm.fmuladd.f32(float %179, float %227, float %211)
  store float %230, ptr %121, align 4, !tbaa !105
  br label %231

231:                                              ; preds = %224, %212
  %232 = fcmp ogt float %221, 0.000000e+00
  %233 = select i1 %232, i1 %123, i1 false
  br i1 %233, label %234, label %244

234:                                              ; preds = %231
  %235 = fmul float %199, 5.000000e-01
  %236 = fmul float %27, %235
  %237 = fmul float %236, %221
  %238 = load float, ptr %2, align 4, !tbaa !105
  %239 = call float @llvm.fmuladd.f32(float %177, float %237, float %238)
  store float %239, ptr %2, align 4, !tbaa !105
  %240 = load float, ptr %120, align 4, !tbaa !105
  %241 = call float @llvm.fmuladd.f32(float %178, float %237, float %240)
  store float %241, ptr %120, align 4, !tbaa !105
  %242 = load float, ptr %121, align 4, !tbaa !105
  %243 = call float @llvm.fmuladd.f32(float %179, float %237, float %242)
  store float %243, ptr %121, align 4, !tbaa !105
  br label %244

244:                                              ; preds = %231, %234, %198
  br i1 %128, label %245, label %336

245:                                              ; preds = %244
  %246 = load ptr, ptr %0, align 8, !tbaa !72
  %247 = icmp eq ptr %183, %246
  br i1 %247, label %248, label %326

248:                                              ; preds = %245
  %249 = load i32, ptr %22, align 4, !tbaa !233
  %250 = and i32 %249, 1
  %251 = icmp ne i32 %250, 0
  %252 = select i1 %251, i1 %129, i1 false
  br i1 %252, label %253, label %326

253:                                              ; preds = %248
  %254 = load i32, ptr %141, align 8, !tbaa !256
  %255 = call ptr @BLI_edgehash_lookup(ptr noundef nonnull %17, i32 noundef %77, i32 noundef %254) #16
  %256 = ptrtoint ptr %255 to i64
  %257 = and i64 %256, 4294967295
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %277, label %259

259:                                              ; preds = %253
  %260 = load ptr, ptr %0, align 8, !tbaa !72
  %261 = getelementptr inbounds %struct.ParticleSystem, ptr %260, i64 0, i32 43
  %262 = load ptr, ptr %261, align 8, !tbaa !74
  %263 = shl i64 %256, 32
  %264 = ashr exact i64 %263, 32
  %265 = getelementptr inbounds %struct.ParticleSpring, ptr %262, i64 %264
  %266 = getelementptr inbounds %struct.ParticleSpring, ptr %265, i64 -1
  %267 = fmul float %131, %182
  %268 = load float, ptr %266, align 4, !tbaa !258
  %269 = fsub float %268, %180
  %270 = fmul float %267, %269
  %271 = load float, ptr %2, align 4, !tbaa !105
  %272 = call float @llvm.fmuladd.f32(float %177, float %270, float %271)
  store float %272, ptr %2, align 4, !tbaa !105
  %273 = load float, ptr %120, align 4, !tbaa !105
  %274 = call float @llvm.fmuladd.f32(float %178, float %270, float %273)
  store float %274, ptr %120, align 4, !tbaa !105
  %275 = load float, ptr %121, align 4, !tbaa !105
  %276 = call float @llvm.fmuladd.f32(float %179, float %270, float %275)
  store float %276, ptr %121, align 4, !tbaa !105
  br label %336

277:                                              ; preds = %253
  %278 = load i32, ptr %132, align 4, !tbaa !260
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = load float, ptr %133, align 4, !tbaa !261
  %282 = load float, ptr %134, align 4, !tbaa !141
  %283 = fsub float %281, %282
  %284 = sitofp i32 %278 to float
  %285 = fcmp ugt float %283, %284
  br i1 %285, label %336, label %286

286:                                              ; preds = %280, %277
  %287 = load i32, ptr %141, align 8, !tbaa !256
  %288 = load i32, ptr %22, align 4, !tbaa !233
  %289 = and i32 %288, 2
  %290 = icmp eq i32 %289, 0
  %291 = select i1 %290, float %62, float %180
  %292 = load ptr, ptr %0, align 8, !tbaa !72
  %293 = getelementptr inbounds %struct.ParticleSystem, ptr %292, i64 0, i32 45
  %294 = load i32, ptr %293, align 4, !tbaa !75
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %286
  %297 = getelementptr inbounds %struct.ParticleSystem, ptr %292, i64 0, i32 43
  %298 = load ptr, ptr %297, align 8, !tbaa !74
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %304

300:                                              ; preds = %296, %286
  store i32 256, ptr %293, align 4, !tbaa !75
  %301 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %302 = call ptr %301(i64 noundef 4096, ptr noundef nonnull @.str.5) #16
  %303 = getelementptr inbounds %struct.ParticleSystem, ptr %292, i64 0, i32 43
  store ptr %302, ptr %303, align 8, !tbaa !74
  br label %314

304:                                              ; preds = %296
  %305 = getelementptr inbounds %struct.ParticleSystem, ptr %292, i64 0, i32 44
  %306 = load i32, ptr %305, align 8, !tbaa !76
  %307 = icmp eq i32 %306, %294
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = shl nsw i32 %294, 1
  store i32 %309, ptr %293, align 4, !tbaa !75
  %310 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !72
  %311 = sext i32 %309 to i64
  %312 = shl nsw i64 %311, 4
  %313 = call ptr %310(ptr noundef nonnull %298, i64 noundef %312, ptr noundef nonnull @__func__.sph_spring_add) #16
  store ptr %313, ptr %297, align 8, !tbaa !74
  br label %314

314:                                              ; preds = %300, %304, %308
  %315 = getelementptr inbounds %struct.ParticleSystem, ptr %292, i64 0, i32 43
  %316 = load ptr, ptr %315, align 8, !tbaa !74
  %317 = getelementptr inbounds %struct.ParticleSystem, ptr %292, i64 0, i32 44
  %318 = load i32, ptr %317, align 8, !tbaa !76
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.ParticleSpring, ptr %316, i64 %319
  store float %291, ptr %320, align 4
  %321 = getelementptr inbounds i8, ptr %320, i64 4
  store i32 %77, ptr %321, align 4
  %322 = getelementptr inbounds i8, ptr %320, i64 8
  store i32 %287, ptr %322, align 4
  %323 = getelementptr inbounds i8, ptr %320, i64 12
  store i32 0, ptr %323, align 4
  %324 = load i32, ptr %317, align 8, !tbaa !76
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %317, align 8, !tbaa !76
  br label %336

326:                                              ; preds = %248, %245
  %327 = fmul float %130, %182
  %328 = fsub float %62, %180
  %329 = fmul float %328, %327
  %330 = load float, ptr %2, align 4, !tbaa !105
  %331 = call float @llvm.fmuladd.f32(float %177, float %329, float %330)
  store float %331, ptr %2, align 4, !tbaa !105
  %332 = load float, ptr %120, align 4, !tbaa !105
  %333 = call float @llvm.fmuladd.f32(float %178, float %329, float %332)
  store float %333, ptr %120, align 4, !tbaa !105
  %334 = load float, ptr %121, align 4, !tbaa !105
  %335 = call float @llvm.fmuladd.f32(float %179, float %329, float %334)
  store float %335, ptr %121, align 4, !tbaa !105
  br label %336

336:                                              ; preds = %244, %259, %314, %280, %326
  %337 = add nuw nsw i32 %137, 1
  %338 = getelementptr inbounds %struct.SPHNeighbor, ptr %136, i64 1
  %339 = load i32, ptr %83, align 8, !tbaa !246
  %340 = icmp slt i32 %337, %339
  br i1 %340, label %135, label %341, !llvm.loop !262

341:                                              ; preds = %336, %108
  %342 = getelementptr inbounds %struct.SPHFluidSettings, ptr %13, i64 0, i32 12
  %343 = load float, ptr %342, align 4, !tbaa !263
  %344 = fcmp ogt float %343, 0.000000e+00
  %345 = icmp ne ptr %15, null
  %346 = select i1 %344, i1 %345, i1 false
  br i1 %346, label %347, label %362

347:                                              ; preds = %341
  %348 = fmul float %111, %343
  %349 = load float, ptr %15, align 4, !tbaa !105
  %350 = load float, ptr %2, align 4, !tbaa !105
  %351 = call float @llvm.fmuladd.f32(float %349, float %348, float %350)
  store float %351, ptr %2, align 4, !tbaa !105
  %352 = getelementptr inbounds float, ptr %15, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !105
  %354 = getelementptr inbounds float, ptr %2, i64 1
  %355 = load float, ptr %354, align 4, !tbaa !105
  %356 = call float @llvm.fmuladd.f32(float %353, float %348, float %355)
  store float %356, ptr %354, align 4, !tbaa !105
  %357 = getelementptr inbounds float, ptr %15, i64 2
  %358 = load float, ptr %357, align 4, !tbaa !105
  %359 = getelementptr inbounds float, ptr %2, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !105
  %361 = call float @llvm.fmuladd.f32(float %358, float %348, float %360)
  store float %361, ptr %359, align 4, !tbaa !105
  br label %362

362:                                              ; preds = %347, %341
  %363 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 6
  %364 = load i32, ptr %363, align 4, !tbaa !264
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %362
  %367 = load ptr, ptr %0, align 8, !tbaa !72
  %368 = getelementptr inbounds %struct.ParticleSystem, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !34
  %370 = getelementptr inbounds %struct.ParticleSettings, ptr %369, i64 0, i32 67
  %371 = load i16, ptr %370, align 4, !tbaa !265
  %372 = and i16 %371, 1
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %366
  call fastcc void @sph_particle_courant(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %375

375:                                              ; preds = %374, %366, %362
  %376 = load i32, ptr %363, align 4, !tbaa !264
  %377 = add nsw i32 %376, 1
  store i32 %377, ptr %363, align 4, !tbaa !264
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @sph_density_accum_cb(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) #10 {
  %4 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !247
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = icmp eq ptr %9, %11
  %13 = fcmp olt float %2, 0x3E80000000000000
  %14 = or i1 %13, %12
  br i1 %14, label %49, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !246
  %18 = icmp sgt i32 %17, 511
  br i1 %18, label %49, label %19

19:                                               ; preds = %15
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %20, i32 1
  store i32 %1, ptr %21, align 8, !tbaa !256
  %22 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %20
  store ptr %5, ptr %22, align 8, !tbaa !254
  %23 = add nsw i32 %17, 1
  store i32 %23, ptr %16, align 8, !tbaa !246
  %24 = tail call float @sqrtf(float noundef %2) #16
  %25 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !243
  %27 = fdiv float %24, %26
  %28 = fsub float 1.000000e+00, %27
  %29 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 7
  %30 = load float, ptr %29, align 8, !tbaa !249
  %31 = fmul float %30, %28
  %32 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !251
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 %8, i32 13
  %37 = load float, ptr %36, align 4, !tbaa !236
  %38 = fmul float %31, %37
  br label %39

39:                                               ; preds = %35, %19
  %40 = phi float [ %38, %35 ], [ %31, %19 ]
  %41 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !241
  %43 = load float, ptr %42, align 4, !tbaa !105
  %44 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %43)
  store float %44, ptr %42, align 4, !tbaa !105
  %45 = fmul float %40, %40
  %46 = getelementptr inbounds float, ptr %42, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !105
  %48 = tail call float @llvm.fmuladd.f32(float %45, float %40, float %47)
  store float %48, ptr %46, align 4, !tbaa !105
  br label %49

49:                                               ; preds = %15, %3, %39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sphclassical_force_cb(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture readnone %3) #2 {
  %5 = alloca %struct.SPHRangeData, align 8
  %6 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = load ptr, ptr %0, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %5) #16
  %13 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !219
  %15 = getelementptr inbounds %struct.SPHFluidSettings, ptr %12, i64 0, i32 7
  %16 = load float, ptr %15, align 4, !tbaa !231
  %17 = getelementptr inbounds %struct.SPHFluidSettings, ptr %12, i64 0, i32 11
  %18 = load float, ptr %17, align 4, !tbaa !237
  %19 = getelementptr inbounds %struct.SPHFluidSettings, ptr %12, i64 0, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !233
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, float 1.000000e+00, float 0x4013147AE0000000
  %24 = fmul float %18, %23
  %25 = getelementptr inbounds %struct.SPHFluidSettings, ptr %12, i64 0, i32 9
  %26 = load float, ptr %25, align 4, !tbaa !239
  %27 = fmul float %26, %26
  %28 = load float, ptr %12, align 4, !tbaa !235
  %29 = and i32 %20, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 0, i32 13
  %33 = load float, ptr %32, align 4, !tbaa !236
  %34 = fmul float %33, 4.000000e+00
  br label %35

35:                                               ; preds = %4, %31
  %36 = phi float [ %34, %31 ], [ 1.000000e+00, %4 ]
  %37 = fmul float %28, %36
  %38 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !230
  %40 = fmul float %37, %39
  %41 = fdiv float 1.000000e+00, %40
  %42 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 5
  store float %40, ptr %42, align 8, !tbaa !243
  %43 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 4
  store ptr %7, ptr %43, align 8, !tbaa !244
  %44 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 1
  store i32 0, ptr %44, align 8, !tbaa !246
  %45 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 3
  %46 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 6
  %47 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 7
  %48 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 8
  br label %49

49:                                               ; preds = %54, %35
  %50 = phi i64 [ 0, %35 ], [ %68, %54 ]
  %51 = getelementptr inbounds ptr, ptr %0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %49
  store ptr %52, ptr %45, align 8, !tbaa !247
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %52, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.ParticleSettings, ptr %56, i64 0, i32 81
  %58 = load float, ptr %57, align 4, !tbaa !248
  %59 = load float, ptr %46, align 4, !tbaa !245
  %60 = fdiv float %58, %59
  store float %60, ptr %47, align 8, !tbaa !249
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %56, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !250
  %63 = and i32 %62, 65536
  store i32 %63, ptr %48, align 4, !tbaa !251
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 1) #16
  %64 = load ptr, ptr %51, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct.ParticleSystem, ptr %64, i64 0, i32 47
  %66 = load ptr, ptr %65, align 8, !tbaa !252
  %67 = call i32 @BLI_bvhtree_range_query(ptr noundef %66, ptr noundef %1, float noundef %37, ptr noundef nonnull @sphclassical_neighbour_accum_cb, ptr noundef nonnull %5) #16
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #16
  %68 = add nuw nsw i64 %50, 1
  %69 = icmp eq i64 %68, 10
  br i1 %69, label %70, label %49, !llvm.loop !253

70:                                               ; preds = %49, %54
  %71 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 0, i32 14
  %72 = load float, ptr %71, align 8, !tbaa !266
  %73 = fdiv float %72, %24
  %74 = fmul float %73, %73
  %75 = fmul float %73, %74
  %76 = fmul float %75, %75
  %77 = fmul float %73, %76
  %78 = fadd float %77, -1.000000e+00
  %79 = fmul float %27, %78
  %80 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 2
  %81 = load float, ptr %80, align 8, !tbaa !224
  %82 = load float, ptr %42, align 8, !tbaa !243
  %83 = fmul float %82, %82
  %84 = fmul float %82, %83
  %85 = fdiv float %81, %84
  %86 = fmul float %85, 0x3FAABCEF80000000
  %87 = load i32, ptr %44, align 8, !tbaa !246
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %226

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 4
  %91 = getelementptr inbounds float, ptr %1, i64 1
  %92 = getelementptr inbounds float, ptr %1, i64 2
  %93 = getelementptr inbounds float, ptr %2, i64 1
  %94 = getelementptr inbounds float, ptr %2, i64 2
  %95 = fcmp ogt float %16, 0.000000e+00
  %96 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 0, i32 1, i32 1
  %97 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 0, i32 1, i32 1, i64 1
  %98 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 0, i32 1, i32 1, i64 2
  br label %99

99:                                               ; preds = %89, %221
  %100 = phi ptr [ %5, %89 ], [ %223, %221 ]
  %101 = phi i32 [ 0, %89 ], [ %222, %221 ]
  %102 = load ptr, ptr %100, align 8, !tbaa !254
  %103 = getelementptr inbounds %struct.ParticleSystem, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !64
  %105 = getelementptr inbounds %struct.SPHNeighbor, ptr %100, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !256
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ParticleData, ptr %104, i64 %107
  %109 = icmp eq ptr %108, %7
  br i1 %109, label %221, label %110

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.ParticleData, ptr %104, i64 %107, i32 1
  %112 = getelementptr inbounds %struct.ParticleData, ptr %104, i64 %107, i32 1, i32 1
  %113 = load float, ptr %90, align 4, !tbaa !257
  %114 = load float, ptr %111, align 4, !tbaa !105
  %115 = load float, ptr %112, align 4, !tbaa !105
  %116 = call float @llvm.fmuladd.f32(float %115, float %113, float %114)
  %117 = getelementptr inbounds float, ptr %111, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !105
  %119 = getelementptr inbounds float, ptr %112, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !105
  %121 = call float @llvm.fmuladd.f32(float %120, float %113, float %118)
  %122 = getelementptr inbounds float, ptr %111, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !105
  %124 = getelementptr inbounds float, ptr %112, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !105
  %126 = call float @llvm.fmuladd.f32(float %125, float %113, float %123)
  %127 = load float, ptr %1, align 4, !tbaa !105
  %128 = fsub float %116, %127
  %129 = load float, ptr %91, align 4, !tbaa !105
  %130 = fsub float %121, %129
  %131 = load float, ptr %92, align 4, !tbaa !105
  %132 = fsub float %126, %131
  %133 = fmul float %130, %130
  %134 = call float @llvm.fmuladd.f32(float %128, float %128, float %133)
  %135 = call float @llvm.fmuladd.f32(float %132, float %132, float %134)
  %136 = fcmp ogt float %135, 0x38AA95A5C0000000
  br i1 %136, label %137, label %143

137:                                              ; preds = %110
  %138 = call float @sqrtf(float noundef %135) #16
  %139 = fdiv float 1.000000e+00, %138
  %140 = fmul float %128, %139
  %141 = fmul float %130, %139
  %142 = fmul float %132, %139
  br label %143

143:                                              ; preds = %110, %137
  %144 = phi float [ %140, %137 ], [ 0.000000e+00, %110 ]
  %145 = phi float [ %141, %137 ], [ 0.000000e+00, %110 ]
  %146 = phi float [ %142, %137 ], [ 0.000000e+00, %110 ]
  %147 = phi float [ %138, %137 ], [ 0.000000e+00, %110 ]
  %148 = load float, ptr %42, align 8, !tbaa !243
  %149 = fdiv float %147, %148
  %150 = fcmp ogt float %149, 2.000000e+00
  br i1 %150, label %221, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.ParticleData, ptr %104, i64 %107, i32 14
  %153 = load float, ptr %152, align 8, !tbaa !266
  %154 = fdiv float %153, %24
  %155 = fmul float %154, %154
  %156 = fmul float %154, %155
  %157 = fmul float %156, %156
  %158 = fmul float %154, %157
  %159 = fadd float %158, -1.000000e+00
  %160 = fmul float %27, %159
  %161 = fsub float 2.000000e+00, %149
  %162 = fmul float %161, %161
  %163 = fmul float %162, %162
  %164 = fmul float %161, %162
  %165 = call float @llvm.fmuladd.f32(float %149, float 2.000000e+00, float 1.000000e+00)
  %166 = fmul float %164, -4.000000e+00
  %167 = fmul float %165, %166
  %168 = call float @llvm.fmuladd.f32(float %163, float 2.000000e+00, float %167)
  %169 = fmul float %86, %168
  %170 = load ptr, ptr %100, align 8, !tbaa !254
  %171 = getelementptr inbounds %struct.ParticleSystem, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !34
  %173 = getelementptr inbounds %struct.ParticleSettings, ptr %172, i64 0, i32 5
  %174 = load i32, ptr %173, align 8, !tbaa !250
  %175 = and i32 %174, 65536
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %151
  %178 = getelementptr inbounds %struct.ParticleData, ptr %104, i64 %107, i32 13
  %179 = load float, ptr %178, align 4, !tbaa !236
  %180 = fmul float %169, %179
  br label %181

181:                                              ; preds = %177, %151
  %182 = phi float [ %180, %177 ], [ %169, %151 ]
  %183 = load float, ptr %71, align 8, !tbaa !266
  %184 = fmul float %183, %183
  %185 = fdiv float %79, %184
  %186 = fmul float %153, %153
  %187 = fdiv float %160, %186
  %188 = fadd float %187, %185
  %189 = fmul float %182, %188
  %190 = load float, ptr %2, align 4, !tbaa !105
  %191 = call float @llvm.fmuladd.f32(float %144, float %189, float %190)
  store float %191, ptr %2, align 4, !tbaa !105
  %192 = load float, ptr %93, align 4, !tbaa !105
  %193 = call float @llvm.fmuladd.f32(float %145, float %189, float %192)
  store float %193, ptr %93, align 4, !tbaa !105
  %194 = load float, ptr %94, align 4, !tbaa !105
  %195 = call float @llvm.fmuladd.f32(float %146, float %189, float %194)
  store float %195, ptr %94, align 4, !tbaa !105
  br i1 %95, label %196, label %221

196:                                              ; preds = %181
  %197 = load float, ptr %112, align 4, !tbaa !105
  %198 = load float, ptr %96, align 4, !tbaa !105
  %199 = fsub float %197, %198
  %200 = load float, ptr %119, align 4, !tbaa !105
  %201 = load float, ptr %97, align 4, !tbaa !105
  %202 = fsub float %200, %201
  %203 = load float, ptr %124, align 4, !tbaa !105
  %204 = load float, ptr %98, align 4, !tbaa !105
  %205 = fsub float %203, %204
  %206 = fmul float %145, %202
  %207 = call float @llvm.fmuladd.f32(float %144, float %199, float %206)
  %208 = call float @llvm.fmuladd.f32(float %146, float %205, float %207)
  %209 = fneg float %182
  %210 = fmul float %41, %209
  %211 = fmul float %16, %210
  %212 = load float, ptr %152, align 8, !tbaa !266
  %213 = load float, ptr %71, align 8, !tbaa !266
  %214 = fmul float %213, 5.000000e-01
  %215 = call float @llvm.fmuladd.f32(float %212, float 5.000000e-01, float %214)
  %216 = fdiv float %211, %215
  %217 = fmul float %208, %216
  %218 = call float @llvm.fmuladd.f32(float %144, float %217, float %191)
  store float %218, ptr %2, align 4, !tbaa !105
  %219 = call float @llvm.fmuladd.f32(float %145, float %217, float %193)
  store float %219, ptr %93, align 4, !tbaa !105
  %220 = call float @llvm.fmuladd.f32(float %146, float %217, float %195)
  store float %220, ptr %94, align 4, !tbaa !105
  br label %221

221:                                              ; preds = %181, %196, %143, %99
  %222 = add nuw nsw i32 %101, 1
  %223 = getelementptr inbounds %struct.SPHNeighbor, ptr %100, i64 1
  %224 = load i32, ptr %44, align 8, !tbaa !246
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %99, label %226, !llvm.loop !267

226:                                              ; preds = %221, %70
  %227 = getelementptr inbounds %struct.SPHFluidSettings, ptr %12, i64 0, i32 12
  %228 = load float, ptr %227, align 4, !tbaa !263
  %229 = fcmp ogt float %228, 0.000000e+00
  %230 = icmp ne ptr %14, null
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %249

232:                                              ; preds = %226
  %233 = load float, ptr %71, align 8, !tbaa !266
  %234 = fsub float %233, %24
  %235 = fmul float %228, %234
  %236 = load float, ptr %14, align 4, !tbaa !105
  %237 = load float, ptr %2, align 4, !tbaa !105
  %238 = call float @llvm.fmuladd.f32(float %236, float %235, float %237)
  store float %238, ptr %2, align 4, !tbaa !105
  %239 = getelementptr inbounds float, ptr %14, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !105
  %241 = getelementptr inbounds float, ptr %2, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !105
  %243 = call float @llvm.fmuladd.f32(float %240, float %235, float %242)
  store float %243, ptr %241, align 4, !tbaa !105
  %244 = getelementptr inbounds float, ptr %14, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !105
  %246 = getelementptr inbounds float, ptr %2, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !105
  %248 = call float @llvm.fmuladd.f32(float %245, float %235, float %247)
  store float %248, ptr %246, align 4, !tbaa !105
  br label %249

249:                                              ; preds = %232, %226
  %250 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 6
  %251 = load i32, ptr %250, align 4, !tbaa !264
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %249
  %254 = load ptr, ptr %0, align 8, !tbaa !72
  %255 = getelementptr inbounds %struct.ParticleSystem, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !34
  %257 = getelementptr inbounds %struct.ParticleSettings, ptr %256, i64 0, i32 67
  %258 = load i16, ptr %257, align 4, !tbaa !265
  %259 = and i16 %258, 1
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %253
  call fastcc void @sph_particle_courant(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %262

262:                                              ; preds = %261, %253, %249
  %263 = load i32, ptr %250, align 4, !tbaa !264
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %250, align 4, !tbaa !264
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @sphclassical_density_accum_cb(ptr nocapture noundef readonly %0, i32 noundef %1, float %2) #10 {
  %4 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !247
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = load float, ptr %9, align 4, !tbaa !105
  %13 = load float, ptr %11, align 4, !tbaa !105
  %14 = fsub float %12, %13
  %15 = getelementptr inbounds float, ptr %9, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !105
  %17 = getelementptr inbounds float, ptr %11, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !105
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds float, ptr %9, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !105
  %22 = getelementptr inbounds float, ptr %11, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !105
  %24 = fsub float %21, %23
  %25 = fmul float %19, %19
  %26 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %26)
  %28 = tail call float @sqrtf(float noundef %27) #16
  %29 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !243
  %31 = fdiv float %28, %30
  %32 = fcmp ogt float %31, 2.000000e+00
  br i1 %32, label %69, label %33

33:                                               ; preds = %3
  %34 = fmul float %30, %30
  %35 = fmul float %30, %34
  %36 = fdiv float 0x3F9ABCEF80000000, %35
  %37 = fsub float 2.000000e+00, %31
  %38 = fmul float %37, %37
  %39 = fmul float %38, %38
  %40 = fmul float %36, %39
  %41 = tail call float @llvm.fmuladd.f32(float %31, float 2.000000e+00, float 1.000000e+00)
  %42 = fmul float %41, %40
  %43 = load ptr, ptr %4, align 8, !tbaa !247
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 81
  %47 = load float, ptr %46, align 4, !tbaa !248
  %48 = fmul float %42, %47
  %49 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !251
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %33
  %53 = load ptr, ptr %10, align 8, !tbaa !244
  %54 = getelementptr inbounds %struct.ParticleData, ptr %53, i64 0, i32 13
  %55 = load float, ptr %54, align 4, !tbaa !236
  %56 = fmul float %48, %55
  br label %57

57:                                               ; preds = %52, %33
  %58 = phi float [ %56, %52 ], [ %48, %33 ]
  %59 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !241
  %61 = load float, ptr %60, align 4, !tbaa !105
  %62 = fadd float %58, %61
  store float %62, ptr %60, align 4, !tbaa !105
  %63 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 %8, i32 14
  %64 = load float, ptr %63, align 8, !tbaa !266
  %65 = fdiv float %58, %64
  %66 = getelementptr inbounds float, ptr %60, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !105
  %68 = fadd float %67, %65
  store float %68, ptr %66, align 4, !tbaa !105
  br label %69

69:                                               ; preds = %3, %57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_sph_finalise(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_edgehash_free(ptr noundef nonnull %3, ptr noundef null) #16
  store ptr null, ptr %2, align 8, !tbaa !222
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @psys_sph_density(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.SPHRangeData, align 8
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %1, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = load float, ptr %11, align 4, !tbaa !235
  %13 = getelementptr inbounds %struct.SPHFluidSettings, ptr %11, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !233
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 82
  %19 = load float, ptr %18, align 8, !tbaa !268
  %20 = fmul float %19, 4.000000e+00
  br label %21

21:                                               ; preds = %4, %17
  %22 = phi float [ %20, %17 ], [ 1.000000e+00, %4 ]
  %23 = fmul float %12, %22
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %24 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float 0.000000e+00, ptr %24, align 4, !tbaa !105
  store float 0.000000e+00, ptr %6, align 4, !tbaa !105
  %25 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 2
  store ptr %6, ptr %25, align 8, !tbaa !241
  %26 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 5
  %27 = load float, ptr %26, align 8, !tbaa !230
  %28 = fmul float %23, %27
  %29 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 5
  store float %28, ptr %29, align 8, !tbaa !243
  %30 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !224
  %32 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 6
  store float %31, ptr %32, align 4, !tbaa !245
  %33 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !229
  call fastcc void @sph_evaluate_func(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5, float noundef %23, ptr noundef %34)
  %35 = load ptr, ptr %25, align 8, !tbaa !241
  %36 = load float, ptr %35, align 4, !tbaa !105
  store float %36, ptr %3, align 4, !tbaa !105
  %37 = getelementptr inbounds float, ptr %35, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !105
  %39 = getelementptr inbounds float, ptr %3, i64 1
  store float %38, ptr %39, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sph_evaluate_func(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, float noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !246
  %8 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 6
  %10 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 7
  %11 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 8
  %12 = icmp eq ptr %0, null
  br label %13

13:                                               ; preds = %6, %31
  %14 = phi i64 [ 0, %6 ], [ %36, %31 ]
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  store ptr %16, ptr %8, align 8, !tbaa !247
  %19 = load ptr, ptr %15, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 81
  %23 = load float, ptr %22, align 4, !tbaa !248
  %24 = load float, ptr %9, align 4, !tbaa !245
  %25 = fdiv float %23, %24
  store float %25, ptr %10, align 8, !tbaa !249
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !250
  %28 = and i32 %27, 65536
  store i32 %28, ptr %11, align 4, !tbaa !251
  br i1 %12, label %31, label %29

29:                                               ; preds = %18
  %30 = tail call i32 @BLI_bvhtree_range_query(ptr noundef nonnull %0, ptr noundef %2, float noundef %4, ptr noundef %5, ptr noundef %3) #16
  br label %38

31:                                               ; preds = %18
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 1) #16
  %32 = load ptr, ptr %15, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 47
  %34 = load ptr, ptr %33, align 8, !tbaa !252
  %35 = tail call i32 @BLI_bvhtree_range_query(ptr noundef %34, ptr noundef %2, float noundef %4, ptr noundef %5, ptr noundef %3) #16
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #16
  %36 = add nuw nsw i64 %14, 1
  %37 = icmp eq i64 %36, 10
  br i1 %37, label %38, label %13, !llvm.loop !253

38:                                               ; preds = %31, %13, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_psys_collision_neartest_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #2 {
  %5 = alloca [3 x %struct.ParticleCollisionElement], align 16
  %6 = alloca [3 x %struct.ParticleCollisionElement], align 16
  %7 = alloca %struct.ParticleCollisionElement, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !269
  %10 = getelementptr inbounds %struct.CollisionModifierData, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !272
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.MFace, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.CollisionModifierData, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !274
  %16 = getelementptr inbounds %struct.CollisionModifierData, ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !275
  %18 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !276
  %20 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 11
  %21 = load float, ptr %20, align 4, !tbaa !278
  %22 = fdiv float %19, %21
  %23 = load i32, ptr %13, align 4, !tbaa !279
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.MVert, ptr %15, i64 %24
  store ptr %25, ptr %7, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.MFace, ptr %11, i64 %12, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !281
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MVert, ptr %15, i64 %28
  %30 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 1
  store ptr %29, ptr %30, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.MFace, ptr %11, i64 %12, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !282
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %15, i64 %33
  %35 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 2
  store ptr %34, ptr %35, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.MFace, ptr %11, i64 %12, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !283
  %38 = icmp eq i32 %37, 0
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds %struct.MVert, ptr %15, i64 %39
  %41 = select i1 %38, ptr null, ptr %40
  %42 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 3
  store ptr %41, ptr %42, align 8, !tbaa !72
  %43 = getelementptr inbounds %struct.MVert, ptr %17, i64 %24
  %44 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.MVert, ptr %17, i64 %28
  %46 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 1, i64 1
  store ptr %45, ptr %46, align 8, !tbaa !72
  %47 = getelementptr inbounds %struct.MVert, ptr %17, i64 %33
  %48 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 1, i64 2
  store ptr %47, ptr %48, align 8, !tbaa !72
  %49 = getelementptr inbounds %struct.MVert, ptr %17, i64 %39
  %50 = select i1 %38, ptr null, ptr %49
  %51 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 1, i64 3
  store ptr %50, ptr %51, align 8, !tbaa !72
  %52 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 9
  store i32 3, ptr %52, align 8, !tbaa !284
  %53 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 12
  store i16 0, ptr %53, align 2, !tbaa !285
  %54 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 10
  store i32 %1, ptr %54, align 4, !tbaa !286
  %55 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !287
  %57 = load ptr, ptr %0, align 8, !tbaa !288
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %4
  %60 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 10
  %61 = load i32, ptr %60, align 4, !tbaa !289
  %62 = icmp eq i32 %61, %1
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !290
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %542, label %67

67:                                               ; preds = %63, %59, %4
  %68 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 2
  %69 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13
  %70 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 11
  %71 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 12
  %72 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 3
  %73 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 2
  %74 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 3, i64 1
  %75 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 2, i64 1
  %76 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 3, i64 2
  %77 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 2, i64 2
  %78 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 4
  %79 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 4, i64 1
  %80 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 4, i64 2
  %81 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 5
  %82 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 5, i64 1
  %83 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 5, i64 2
  %84 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 8
  %85 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 8, i64 1
  %86 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 12
  %87 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6
  %88 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6, i64 1
  %89 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6, i64 2
  %90 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 8
  %91 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 15
  %92 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 6
  %93 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18
  %94 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18, i64 1
  %95 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18, i64 2
  %96 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 19
  %97 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 19, i64 1
  %98 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 19, i64 2
  %99 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 19, i64 1
  %100 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 19, i64 2
  %101 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18, i64 1
  %102 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18, i64 2
  %103 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6
  %104 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6, i64 1
  %105 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6, i64 2
  %106 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 7
  %107 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 1
  %108 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 7, i64 1
  %109 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 7, i64 2
  %110 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 9
  %111 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 1, i64 1
  %112 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 8
  %113 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 1, i64 2
  %114 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 8, i64 1
  br label %115

115:                                              ; preds = %536, %67
  %116 = phi float [ %22, %67 ], [ %485, %536 ]
  %117 = load float, ptr %68, align 4, !tbaa !291
  store i16 -1, ptr %70, align 8, !tbaa !293
  store i16 0, ptr %53, align 2, !tbaa !285
  %118 = call fastcc float @collision_newton_rhapson(ptr noundef nonnull %0, float noundef %117, ptr noundef nonnull %7, ptr noundef nonnull @nr_signed_distance_to_plane)
  %119 = fcmp oge float %118, 0.000000e+00
  %120 = fcmp olt float %118, %116
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %184

122:                                              ; preds = %115
  %123 = load i16, ptr %71, align 2, !tbaa !285
  %124 = icmp eq i16 %123, 0
  %125 = load i16, ptr %53, align 2
  %126 = icmp eq i16 %125, 1
  %127 = select i1 %124, i1 true, i1 %126
  br i1 %127, label %128, label %184

128:                                              ; preds = %122
  %129 = load float, ptr %72, align 4, !tbaa !105
  %130 = load float, ptr %73, align 8, !tbaa !105
  %131 = fsub float %129, %130
  %132 = load float, ptr %74, align 8, !tbaa !105
  %133 = load float, ptr %75, align 4, !tbaa !105
  %134 = fsub float %132, %133
  %135 = load float, ptr %76, align 4, !tbaa !105
  %136 = load float, ptr %77, align 8, !tbaa !105
  %137 = fsub float %135, %136
  %138 = load float, ptr %78, align 8, !tbaa !105
  %139 = fsub float %138, %130
  %140 = load float, ptr %79, align 4, !tbaa !105
  %141 = fsub float %140, %133
  %142 = load float, ptr %80, align 8, !tbaa !105
  %143 = fsub float %142, %136
  %144 = load float, ptr %81, align 4, !tbaa !105
  %145 = fsub float %144, %130
  %146 = load float, ptr %82, align 8, !tbaa !105
  %147 = fsub float %146, %133
  %148 = load float, ptr %83, align 4, !tbaa !105
  %149 = fsub float %148, %136
  %150 = fmul float %134, %134
  %151 = call float @llvm.fmuladd.f32(float %131, float %131, float %150)
  %152 = call float @llvm.fmuladd.f32(float %137, float %137, float %151)
  %153 = fmul float %134, %141
  %154 = call float @llvm.fmuladd.f32(float %131, float %139, float %153)
  %155 = call float @llvm.fmuladd.f32(float %137, float %143, float %154)
  %156 = fmul float %134, %147
  %157 = call float @llvm.fmuladd.f32(float %131, float %145, float %156)
  %158 = call float @llvm.fmuladd.f32(float %137, float %149, float %157)
  %159 = fmul float %141, %141
  %160 = call float @llvm.fmuladd.f32(float %139, float %139, float %159)
  %161 = call float @llvm.fmuladd.f32(float %143, float %143, float %160)
  %162 = fmul float %141, %147
  %163 = call float @llvm.fmuladd.f32(float %139, float %145, float %162)
  %164 = call float @llvm.fmuladd.f32(float %143, float %149, float %163)
  %165 = fneg float %155
  %166 = fmul float %155, %165
  %167 = call float @llvm.fmuladd.f32(float %152, float %161, float %166)
  %168 = fdiv float 1.000000e+00, %167
  %169 = fmul float %164, %165
  %170 = call float @llvm.fmuladd.f32(float %161, float %158, float %169)
  %171 = fmul float %168, %170
  %172 = fmul float %158, %165
  %173 = call float @llvm.fmuladd.f32(float %152, float %164, float %172)
  %174 = fmul float %168, %173
  %175 = fcmp ult float %171, 0.000000e+00
  %176 = fcmp ugt float %171, 1.000000e+00
  %177 = or i1 %175, %176
  %178 = fcmp ult float %174, 0.000000e+00
  %179 = select i1 %177, i1 true, i1 %178
  %180 = fadd float %171, %174
  %181 = fcmp ugt float %180, 1.000000e+00
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %184, label %183

183:                                              ; preds = %128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %69, ptr noundef nonnull align 8 dereferenceable(160) %7, i64 160, i1 false), !tbaa.struct !294
  store float %171, ptr %84, align 8, !tbaa !105
  store float %174, ptr %85, align 4, !tbaa !105
  br label %184

184:                                              ; preds = %122, %115, %128, %183
  %185 = phi float [ %116, %115 ], [ %116, %128 ], [ %118, %183 ], [ %116, %122 ]
  %186 = phi i32 [ 0, %115 ], [ 0, %128 ], [ 1, %183 ], [ 0, %122 ]
  %187 = load i16, ptr %86, align 2, !tbaa !297
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %484

189:                                              ; preds = %184
  %190 = load float, ptr %68, align 4, !tbaa !291
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %6) #16
  br label %191

191:                                              ; preds = %189, %281
  %192 = phi i64 [ 0, %189 ], [ %284, %281 ]
  %193 = phi ptr [ null, %189 ], [ %283, %281 ]
  %194 = phi float [ %185, %189 ], [ %282, %281 ]
  %195 = load ptr, ptr %42, align 8, !tbaa !72
  %196 = icmp ne ptr %195, null
  %197 = icmp eq i64 %192, 2
  %198 = and i1 %197, %196
  br i1 %198, label %281, label %199

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192
  %201 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %192
  %202 = load ptr, ptr %201, align 8, !tbaa !72
  store ptr %202, ptr %200, align 16, !tbaa !72
  %203 = add nuw nsw i64 %192, 1
  %204 = icmp eq i64 %203, 3
  %205 = and i64 %203, 4294967295
  %206 = select i1 %204, i64 0, i64 %205
  %207 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !72
  %209 = getelementptr inbounds [4 x ptr], ptr %200, i64 0, i64 1
  store ptr %208, ptr %209, align 8, !tbaa !72
  %210 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 1, i64 %192
  %211 = load ptr, ptr %210, align 8, !tbaa !72
  %212 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192, i32 1
  store ptr %211, ptr %212, align 16, !tbaa !72
  %213 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 1, i64 %206
  %214 = load ptr, ptr %213, align 8, !tbaa !72
  %215 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192, i32 1, i64 1
  store ptr %214, ptr %215, align 8, !tbaa !72
  %216 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192, i32 9
  store i32 2, ptr %216, align 16, !tbaa !284
  %217 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192, i32 12
  store i16 0, ptr %217, align 2, !tbaa !285
  %218 = call fastcc float @collision_newton_rhapson(ptr noundef nonnull %0, float noundef %190, ptr noundef nonnull %200, ptr noundef nonnull @nr_distance_to_edge)
  %219 = fcmp oge float %218, 0.000000e+00
  %220 = fcmp olt float %218, %194
  %221 = select i1 %219, i1 %220, i1 false
  br i1 %221, label %222, label %281

222:                                              ; preds = %199
  %223 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192, i32 3
  %224 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192, i32 2
  %225 = load float, ptr %223, align 4, !tbaa !105
  %226 = load float, ptr %224, align 16, !tbaa !105
  %227 = fsub float %225, %226
  %228 = getelementptr inbounds float, ptr %223, i64 1
  %229 = load float, ptr %228, align 16, !tbaa !105
  %230 = getelementptr inbounds float, ptr %224, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !105
  %232 = fsub float %229, %231
  %233 = getelementptr inbounds float, ptr %223, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !105
  %235 = getelementptr inbounds float, ptr %224, i64 2
  %236 = load float, ptr %235, align 8, !tbaa !105
  %237 = fsub float %234, %236
  %238 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %6, i64 %192, i32 5
  %239 = load float, ptr %238, align 4, !tbaa !105
  %240 = fsub float %239, %226
  %241 = getelementptr inbounds float, ptr %238, i64 1
  %242 = load float, ptr %241, align 8, !tbaa !105
  %243 = fsub float %242, %231
  %244 = getelementptr inbounds float, ptr %238, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !105
  %246 = fsub float %245, %236
  %247 = fmul float %232, %243
  %248 = call float @llvm.fmuladd.f32(float %240, float %227, float %247)
  %249 = call float @llvm.fmuladd.f32(float %246, float %237, float %248)
  %250 = fmul float %232, %232
  %251 = call float @llvm.fmuladd.f32(float %227, float %227, float %250)
  %252 = call float @llvm.fmuladd.f32(float %237, float %237, float %251)
  %253 = fdiv float %249, %252
  %254 = fcmp uge float %253, 0.000000e+00
  %255 = fcmp ule float %253, 1.000000e+00
  %256 = and i1 %254, %255
  br i1 %256, label %257, label %278

257:                                              ; preds = %222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %69, ptr noundef nonnull align 16 dereferenceable(160) %200, i64 160, i1 false), !tbaa.struct !294
  %258 = fneg float %253
  %259 = call float @llvm.fmuladd.f32(float %227, float %258, float %240)
  store float %259, ptr %87, align 4, !tbaa !105
  %260 = call float @llvm.fmuladd.f32(float %232, float %258, float %243)
  store float %260, ptr %88, align 4, !tbaa !105
  %261 = call float @llvm.fmuladd.f32(float %237, float %258, float %246)
  store float %261, ptr %89, align 4, !tbaa !105
  %262 = fmul float %260, %260
  %263 = call float @llvm.fmuladd.f32(float %259, float %259, float %262)
  %264 = call float @llvm.fmuladd.f32(float %261, float %261, float %263)
  %265 = fcmp ogt float %264, 0x38AA95A5C0000000
  br i1 %265, label %266, label %275

266:                                              ; preds = %257
  %267 = call float @sqrtf(float noundef %264) #16
  %268 = fdiv float 1.000000e+00, %267
  %269 = load float, ptr %87, align 4, !tbaa !105
  %270 = fmul float %269, %268
  store float %270, ptr %87, align 4, !tbaa !105
  %271 = load float, ptr %88, align 4, !tbaa !105
  %272 = fmul float %268, %271
  store float %272, ptr %88, align 4, !tbaa !105
  %273 = load float, ptr %89, align 4, !tbaa !105
  %274 = fmul float %268, %273
  br label %276

275:                                              ; preds = %257
  store float 0.000000e+00, ptr %87, align 4, !tbaa !105
  store float 0.000000e+00, ptr %88, align 4, !tbaa !105
  br label %276

276:                                              ; preds = %275, %266
  %277 = phi float [ 0.000000e+00, %275 ], [ %274, %266 ]
  store float %277, ptr %89, align 4, !tbaa !105
  store float %253, ptr %90, align 8, !tbaa !105
  br label %278

278:                                              ; preds = %276, %222
  %279 = phi float [ %218, %276 ], [ %194, %222 ]
  %280 = phi ptr [ %200, %276 ], [ %193, %222 ]
  br i1 %256, label %281, label %286

281:                                              ; preds = %278, %199, %191
  %282 = phi float [ %194, %191 ], [ %194, %199 ], [ %279, %278 ]
  %283 = phi ptr [ %193, %191 ], [ %193, %199 ], [ %280, %278 ]
  %284 = add nuw nsw i64 %192, 1
  %285 = icmp eq i64 %284, 3
  br i1 %285, label %286, label %191, !llvm.loop !298

286:                                              ; preds = %281, %278
  %287 = phi float [ %279, %278 ], [ %282, %281 ]
  %288 = phi ptr [ %280, %278 ], [ %283, %281 ]
  %289 = icmp ne ptr %288, null
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %6) #16
  %290 = load float, ptr %68, align 4, !tbaa !291
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %5) #16
  %291 = fneg float %290
  br label %292

292:                                              ; preds = %286, %473
  %293 = phi i64 [ 0, %286 ], [ %476, %473 ]
  %294 = phi ptr [ null, %286 ], [ %475, %473 ]
  %295 = phi float [ %287, %286 ], [ %474, %473 ]
  %296 = load ptr, ptr %42, align 8, !tbaa !72
  %297 = icmp ne ptr %296, null
  %298 = icmp ne i64 %293, 1
  %299 = and i1 %298, %297
  br i1 %299, label %473, label %300

300:                                              ; preds = %292
  %301 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293
  %302 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %293
  %303 = load ptr, ptr %302, align 8, !tbaa !72
  store ptr %303, ptr %301, align 16, !tbaa !72
  %304 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %7, i64 0, i32 1, i64 %293
  %305 = load ptr, ptr %304, align 8, !tbaa !72
  %306 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 1
  store ptr %305, ptr %306, align 16, !tbaa !72
  %307 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 9
  store i32 1, ptr %307, align 16, !tbaa !284
  %308 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 12
  store i16 0, ptr %308, align 2, !tbaa !285
  %309 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 11
  store i16 -1, ptr %309, align 8, !tbaa !293
  %310 = load float, ptr %91, align 4, !tbaa !299
  %311 = fcmp ogt float %310, 0.000000e+00
  %312 = fmul float %310, 0x3F14F8B580000000
  %313 = select i1 %311, float %312, float 0x3F50624DE0000000
  %314 = load float, ptr %92, align 8, !tbaa !300
  call fastcc void @collision_interpolate_element(ptr noundef nonnull %301, float noundef 0.000000e+00, float noundef %314, ptr noundef %0)
  %315 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 2
  %316 = load float, ptr %315, align 16, !tbaa !105
  %317 = load float, ptr %93, align 4, !tbaa !105
  %318 = fsub float %316, %317
  %319 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 2, i64 1
  %320 = load float, ptr %319, align 4, !tbaa !105
  %321 = load float, ptr %94, align 4, !tbaa !105
  %322 = fsub float %320, %321
  %323 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 2, i64 2
  %324 = load float, ptr %323, align 8, !tbaa !105
  %325 = load float, ptr %95, align 4, !tbaa !105
  %326 = fsub float %324, %325
  %327 = fmul float %322, %322
  %328 = call float @llvm.fmuladd.f32(float %318, float %318, float %327)
  %329 = call float @llvm.fmuladd.f32(float %326, float %326, float %328)
  %330 = call float @sqrtf(float noundef %329) #16
  %331 = fsub float %330, %290
  %332 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 5
  %333 = fsub float 1.000000e+00, %313
  %334 = getelementptr inbounds float, ptr %332, i64 1
  %335 = getelementptr inbounds float, ptr %332, i64 2
  br label %336

336:                                              ; preds = %430, %300
  %337 = phi i32 [ 0, %300 ], [ %434, %430 ]
  %338 = phi float [ %331, %300 ], [ %433, %430 ]
  %339 = phi float [ %313, %300 ], [ %432, %430 ]
  %340 = phi float [ 0.000000e+00, %300 ], [ %431, %430 ]
  %341 = load float, ptr %92, align 8, !tbaa !300
  call fastcc void @collision_interpolate_element(ptr noundef nonnull %301, float noundef %339, float noundef %341, ptr noundef %0)
  call void @interp_v3_v3v3(ptr noundef nonnull %332, ptr noundef nonnull %93, ptr noundef nonnull %96, float noundef %339) #16
  %342 = load float, ptr %315, align 16, !tbaa !105
  %343 = load float, ptr %332, align 4, !tbaa !105
  %344 = fsub float %342, %343
  %345 = load float, ptr %319, align 4, !tbaa !105
  %346 = load float, ptr %334, align 8, !tbaa !105
  %347 = fsub float %345, %346
  %348 = load float, ptr %323, align 8, !tbaa !105
  %349 = load float, ptr %335, align 4, !tbaa !105
  %350 = fsub float %348, %349
  %351 = fmul float %347, %347
  %352 = call float @llvm.fmuladd.f32(float %344, float %344, float %351)
  %353 = call float @llvm.fmuladd.f32(float %350, float %350, float %352)
  %354 = call float @sqrtf(float noundef %353) #16
  %355 = fsub float %354, %290
  %356 = icmp eq i32 %337, 0
  %357 = fcmp olt float %338, 0.000000e+00
  %358 = select i1 %356, i1 %357, i1 false
  %359 = fcmp ogt float %338, %291
  %360 = select i1 %358, i1 %359, i1 false
  br i1 %360, label %361, label %368

361:                                              ; preds = %336
  %362 = load float, ptr %93, align 4, !tbaa !105
  store float %362, ptr %332, align 4, !tbaa !105
  %363 = load float, ptr %101, align 4, !tbaa !105
  %364 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 5, i64 1
  store float %363, ptr %364, align 8, !tbaa !105
  %365 = load float, ptr %102, align 4, !tbaa !105
  %366 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 5, i64 2
  store float %365, ptr %366, align 4, !tbaa !105
  %367 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 12
  store i16 1, ptr %367, align 2, !tbaa !285
  br label %436

368:                                              ; preds = %336
  %369 = fcmp oeq float %355, %338
  br i1 %369, label %370, label %385

370:                                              ; preds = %368
  br i1 %356, label %371, label %436

371:                                              ; preds = %370
  %372 = load float, ptr %92, align 8, !tbaa !300
  call fastcc void @collision_interpolate_element(ptr noundef nonnull %301, float noundef 1.000000e+00, float noundef %372, ptr noundef %0)
  %373 = load float, ptr %315, align 16, !tbaa !105
  %374 = load float, ptr %96, align 4, !tbaa !105
  %375 = fsub float %373, %374
  %376 = load float, ptr %319, align 4, !tbaa !105
  %377 = load float, ptr %99, align 4, !tbaa !105
  %378 = fsub float %376, %377
  %379 = load float, ptr %323, align 8, !tbaa !105
  %380 = load float, ptr %100, align 4, !tbaa !105
  %381 = fsub float %379, %380
  %382 = fmul float %378, %378
  %383 = call float @llvm.fmuladd.f32(float %375, float %375, float %382)
  %384 = call float @llvm.fmuladd.f32(float %381, float %381, float %383)
  br label %426

385:                                              ; preds = %368
  %386 = fsub float %339, %340
  %387 = fsub float %355, %338
  %388 = fdiv float %386, %387
  %389 = fneg float %355
  %390 = call float @llvm.fmuladd.f32(float %389, float %388, float %339)
  %391 = fcmp olt float %390, 0.000000e+00
  %392 = select i1 %356, i1 %391, i1 false
  br i1 %392, label %393, label %407

393:                                              ; preds = %385
  %394 = load float, ptr %92, align 8, !tbaa !300
  call fastcc void @collision_interpolate_element(ptr noundef nonnull %301, float noundef 1.000000e+00, float noundef %394, ptr noundef %0)
  %395 = load float, ptr %315, align 16, !tbaa !105
  %396 = load float, ptr %96, align 4, !tbaa !105
  %397 = fsub float %395, %396
  %398 = load float, ptr %319, align 4, !tbaa !105
  %399 = load float, ptr %97, align 4, !tbaa !105
  %400 = fsub float %398, %399
  %401 = load float, ptr %323, align 8, !tbaa !105
  %402 = load float, ptr %98, align 4, !tbaa !105
  %403 = fsub float %401, %402
  %404 = fmul float %400, %400
  %405 = call float @llvm.fmuladd.f32(float %397, float %397, float %404)
  %406 = call float @llvm.fmuladd.f32(float %403, float %403, float %405)
  br label %426

407:                                              ; preds = %385
  %408 = icmp eq i32 %337, 1
  br i1 %408, label %409, label %413

409:                                              ; preds = %407
  %410 = fcmp olt float %390, 0xBEE4F8B580000000
  %411 = fcmp ogt float %390, 1.000000e+00
  %412 = or i1 %410, %411
  br i1 %412, label %436, label %413

413:                                              ; preds = %409, %407
  %414 = fcmp ole float %355, 0x3EE4F8B580000000
  %415 = fcmp oge float %355, 0xBEE4F8B580000000
  %416 = and i1 %414, %415
  br i1 %416, label %417, label %430

417:                                              ; preds = %413
  %418 = fcmp ult float %390, 0xBEE4F8B580000000
  %419 = fcmp ugt float %390, 1.000000e+00
  %420 = or i1 %418, %419
  %421 = or i1 %391, %420
  %422 = select i1 %420, float -1.000000e+00, float 0.000000e+00
  br i1 %421, label %436, label %423

423:                                              ; preds = %417
  %424 = fcmp ogt float %390, 1.000000e+00
  br i1 %424, label %425, label %436

425:                                              ; preds = %423
  br label %436

426:                                              ; preds = %371, %393
  %427 = phi float [ %406, %393 ], [ %384, %371 ]
  %428 = call float @sqrtf(float noundef %427) #16
  %429 = fsub float %428, %290
  br label %430

430:                                              ; preds = %426, %413
  %431 = phi float [ %339, %413 ], [ 1.000000e+00, %426 ]
  %432 = phi float [ %390, %413 ], [ %333, %426 ]
  %433 = phi float [ %355, %413 ], [ %429, %426 ]
  %434 = add nuw nsw i32 %337, 1
  %435 = icmp eq i32 %434, 10
  br i1 %435, label %436, label %336, !llvm.loop !301

436:                                              ; preds = %370, %409, %430, %417, %361, %423, %425
  %437 = phi float [ 0.000000e+00, %361 ], [ 1.000000e+00, %425 ], [ %390, %423 ], [ %422, %417 ], [ -1.000000e+00, %430 ], [ -1.000000e+00, %409 ], [ -1.000000e+00, %370 ]
  %438 = fcmp oge float %437, 0.000000e+00
  %439 = fcmp olt float %437, %295
  %440 = select i1 %438, i1 %439, i1 false
  br i1 %440, label %441, label %473

441:                                              ; preds = %436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %69, ptr noundef nonnull align 16 dereferenceable(160) %301, i64 160, i1 false), !tbaa.struct !294
  %442 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 5
  %443 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %293, i32 2
  %444 = load float, ptr %442, align 4, !tbaa !105
  %445 = load float, ptr %443, align 16, !tbaa !105
  %446 = fsub float %444, %445
  store float %446, ptr %103, align 4, !tbaa !105
  %447 = getelementptr inbounds float, ptr %442, i64 1
  %448 = load float, ptr %447, align 8, !tbaa !105
  %449 = getelementptr inbounds float, ptr %443, i64 1
  %450 = load float, ptr %449, align 4, !tbaa !105
  %451 = fsub float %448, %450
  store float %451, ptr %104, align 4, !tbaa !105
  %452 = getelementptr inbounds float, ptr %442, i64 2
  %453 = load float, ptr %452, align 4, !tbaa !105
  %454 = getelementptr inbounds float, ptr %443, i64 2
  %455 = load float, ptr %454, align 8, !tbaa !105
  %456 = fsub float %453, %455
  store float %456, ptr %105, align 4, !tbaa !105
  %457 = fmul float %451, %451
  %458 = call float @llvm.fmuladd.f32(float %446, float %446, float %457)
  %459 = call float @llvm.fmuladd.f32(float %456, float %456, float %458)
  %460 = fcmp ogt float %459, 0x38AA95A5C0000000
  br i1 %460, label %461, label %470

461:                                              ; preds = %441
  %462 = call float @sqrtf(float noundef %459) #16
  %463 = fdiv float 1.000000e+00, %462
  %464 = load float, ptr %103, align 4, !tbaa !105
  %465 = fmul float %464, %463
  store float %465, ptr %103, align 4, !tbaa !105
  %466 = load float, ptr %104, align 4, !tbaa !105
  %467 = fmul float %463, %466
  store float %467, ptr %104, align 4, !tbaa !105
  %468 = load float, ptr %105, align 4, !tbaa !105
  %469 = fmul float %463, %468
  br label %471

470:                                              ; preds = %441
  store float 0.000000e+00, ptr %103, align 4, !tbaa !105
  store float 0.000000e+00, ptr %104, align 4, !tbaa !105
  br label %471

471:                                              ; preds = %470, %461
  %472 = phi float [ 0.000000e+00, %470 ], [ %469, %461 ]
  store float %472, ptr %105, align 4, !tbaa !105
  br label %473

473:                                              ; preds = %471, %436, %292
  %474 = phi float [ %295, %292 ], [ %295, %436 ], [ %437, %471 ]
  %475 = phi ptr [ %294, %292 ], [ %294, %436 ], [ %301, %471 ]
  %476 = add nuw nsw i64 %293, 1
  %477 = icmp eq i64 %476, 3
  br i1 %477, label %478, label %292, !llvm.loop !302

478:                                              ; preds = %473
  %479 = zext i1 %289 to i32
  %480 = add nuw nsw i32 %186, %479
  %481 = icmp ne ptr %475, null
  %482 = zext i1 %481 to i32
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %5) #16
  %483 = add nuw nsw i32 %480, %482
  br label %484

484:                                              ; preds = %478, %184
  %485 = phi float [ %474, %478 ], [ %185, %184 ]
  %486 = phi i32 [ %483, %478 ], [ %186, %184 ]
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %536, label %488

488:                                              ; preds = %484
  %489 = load float, ptr %20, align 4, !tbaa !278
  %490 = fmul float %485, %489
  store float %490, ptr %18, align 4, !tbaa !276
  store i32 %1, ptr %3, align 4, !tbaa !303
  %491 = load ptr, ptr %107, align 8, !tbaa !72
  %492 = load float, ptr %491, align 4, !tbaa !105
  store float %492, ptr %106, align 4, !tbaa !105
  %493 = getelementptr inbounds float, ptr %491, i64 1
  %494 = load float, ptr %493, align 4, !tbaa !105
  store float %494, ptr %108, align 4, !tbaa !105
  %495 = getelementptr inbounds float, ptr %491, i64 2
  %496 = load float, ptr %495, align 4, !tbaa !105
  store float %496, ptr %109, align 4, !tbaa !105
  %497 = load i32, ptr %110, align 8, !tbaa !284
  %498 = icmp sgt i32 %497, 1
  br i1 %498, label %499, label %534

499:                                              ; preds = %488
  %500 = load ptr, ptr %111, align 8, !tbaa !72
  %501 = load float, ptr %500, align 4, !tbaa !105
  %502 = load float, ptr %491, align 4, !tbaa !105
  %503 = fsub float %501, %502
  %504 = getelementptr inbounds float, ptr %500, i64 1
  %505 = load float, ptr %504, align 4, !tbaa !105
  %506 = load float, ptr %493, align 4, !tbaa !105
  %507 = fsub float %505, %506
  %508 = getelementptr inbounds float, ptr %500, i64 2
  %509 = load float, ptr %508, align 4, !tbaa !105
  %510 = load float, ptr %495, align 4, !tbaa !105
  %511 = fsub float %509, %510
  %512 = load float, ptr %112, align 8, !tbaa !105
  %513 = call float @llvm.fmuladd.f32(float %503, float %512, float %492)
  store float %513, ptr %106, align 4, !tbaa !105
  %514 = call float @llvm.fmuladd.f32(float %507, float %512, float %494)
  store float %514, ptr %108, align 4, !tbaa !105
  %515 = call float @llvm.fmuladd.f32(float %511, float %512, float %496)
  store float %515, ptr %109, align 4, !tbaa !105
  %516 = icmp eq i32 %497, 2
  br i1 %516, label %534, label %517

517:                                              ; preds = %499
  %518 = load ptr, ptr %113, align 8, !tbaa !72
  %519 = load float, ptr %518, align 4, !tbaa !105
  %520 = load float, ptr %491, align 4, !tbaa !105
  %521 = fsub float %519, %520
  %522 = getelementptr inbounds float, ptr %518, i64 1
  %523 = load float, ptr %522, align 4, !tbaa !105
  %524 = load float, ptr %493, align 4, !tbaa !105
  %525 = fsub float %523, %524
  %526 = getelementptr inbounds float, ptr %518, i64 2
  %527 = load float, ptr %526, align 4, !tbaa !105
  %528 = load float, ptr %495, align 4, !tbaa !105
  %529 = fsub float %527, %528
  %530 = load float, ptr %114, align 4, !tbaa !105
  %531 = call float @llvm.fmuladd.f32(float %521, float %530, float %513)
  store float %531, ptr %106, align 4, !tbaa !105
  %532 = call float @llvm.fmuladd.f32(float %525, float %530, float %514)
  store float %532, ptr %108, align 4, !tbaa !105
  %533 = call float @llvm.fmuladd.f32(float %529, float %530, float %515)
  store float %533, ptr %109, align 4, !tbaa !105
  br label %534

534:                                              ; preds = %488, %499, %517
  %535 = load ptr, ptr %0, align 8, !tbaa !288
  store ptr %535, ptr %55, align 8, !tbaa !287
  br label %536

536:                                              ; preds = %534, %484
  %537 = load ptr, ptr %35, align 8, !tbaa !72
  store ptr %537, ptr %30, align 8, !tbaa !72
  %538 = load ptr, ptr %42, align 8, !tbaa !72
  store ptr %538, ptr %35, align 8, !tbaa !72
  store ptr null, ptr %42, align 8, !tbaa !72
  %539 = load ptr, ptr %48, align 8, !tbaa !72
  store ptr %539, ptr %46, align 8, !tbaa !72
  %540 = load ptr, ptr %51, align 8, !tbaa !72
  store ptr %540, ptr %48, align 8, !tbaa !72
  store ptr null, ptr %51, align 8, !tbaa !72
  %541 = icmp eq ptr %538, null
  br i1 %541, label %542, label %115, !llvm.loop !304

542:                                              ; preds = %536, %63
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_changed_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.PTCacheID, align 8
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #16
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #16
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !51
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = and i32 %11, -1025
  store i32 %12, ptr %10, align 4, !tbaa !50
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 7
  %15 = load i16, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 21
  %19 = load i16, ptr %18, align 8, !tbaa !305
  switch i16 %19, label %20 [
    i16 0, label %21
    i16 6, label %21
    i16 7, label %21
    i16 8, label %21
  ]

20:                                               ; preds = %17
  store i16 6, ptr %18, align 8, !tbaa !305
  br label %21

21:                                               ; preds = %17, %17, %17, %17, %20
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 9
  %23 = load i16, ptr %22, align 4, !tbaa !56
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i16 0, ptr %22, align 4, !tbaa !56
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 17
  %28 = load i16, ptr %27, align 8, !tbaa !306
  switch i16 %28, label %29 [
    i16 0, label %30
    i16 10, label %30
    i16 6, label %30
  ]

29:                                               ; preds = %26
  store i16 10, ptr %27, align 8, !tbaa !306
  br label %30

30:                                               ; preds = %26, %26, %26, %29
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 117
  %32 = load float, ptr %31, align 8, !tbaa !307
  %33 = fcmp olt float %32, 0.000000e+00
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = fcmp ogt float %32, 1.000000e+02
  br i1 %35, label %36, label %38

36:                                               ; preds = %34, %30
  %37 = phi float [ 0.000000e+00, %30 ], [ 1.000000e+02, %34 ]
  store float %37, ptr %31, align 8, !tbaa !307
  br label %38

38:                                               ; preds = %36, %34
  %39 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 118
  %40 = load float, ptr %39, align 4, !tbaa !308
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = fcmp ogt float %40, 1.000000e+02
  br i1 %43, label %44, label %46

44:                                               ; preds = %42, %38
  %45 = phi float [ 0.000000e+00, %38 ], [ 1.000000e+02, %42 ]
  store float %45, ptr %39, align 4, !tbaa !308
  br label %46

46:                                               ; preds = %44, %42
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #16
  br label %77

47:                                               ; preds = %13
  call void @free_hair(ptr noundef %0, ptr noundef %1, i32 noundef 1) #16
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 117
  %49 = load float, ptr %48, align 8, !tbaa !307
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 54
  %53 = load float, ptr %52, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 55
  %55 = load float, ptr %54, align 4, !tbaa !195
  %56 = fadd float %53, %55
  %57 = fcmp olt float %56, 1.000000e+02
  %58 = select i1 %57, float 1.000000e+02, float %56
  %59 = fcmp ogt float %49, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51, %47
  %61 = phi float [ 0.000000e+00, %47 ], [ %58, %51 ]
  store float %61, ptr %48, align 8, !tbaa !307
  br label %62

62:                                               ; preds = %60, %51
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 118
  %64 = load float, ptr %63, align 4, !tbaa !308
  %65 = fcmp olt float %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store float 0.000000e+00, ptr %63, align 4, !tbaa !308
  br label %77

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 54
  %69 = load float, ptr %68, align 8, !tbaa !140
  %70 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 55
  %71 = load float, ptr %70, align 4, !tbaa !195
  %72 = fadd float %69, %71
  %73 = fcmp olt float %72, 1.000000e+02
  %74 = select i1 %73, float 1.000000e+02, float %72
  %75 = fcmp ogt float %64, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store float %74, ptr %63, align 4, !tbaa !308
  br label %77

77:                                               ; preds = %66, %76, %67, %46
  call void @psys_reset(ptr noundef %1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #16
  ret void
}

declare void @BKE_ptcache_id_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @free_hair(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @psys_check_boid_data(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !51
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 56
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.4) #16
  %24 = load i32, ptr %19, align 8, !tbaa !55
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %17
  %27 = load ptr, ptr %2, align 8, !tbaa !64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %34, %28 ], [ 0, %26 ]
  %30 = phi ptr [ %35, %28 ], [ %27, %26 ]
  %31 = phi ptr [ %32, %28 ], [ %23, %26 ]
  %32 = getelementptr inbounds %struct.BoidParticle, ptr %31, i64 1
  %33 = getelementptr inbounds %struct.ParticleData, ptr %30, i64 0, i32 4
  store ptr %31, ptr %33, align 8, !tbaa !143
  %34 = add nuw nsw i32 %29, 1
  %35 = getelementptr inbounds %struct.ParticleData, ptr %30, i64 1
  %36 = icmp eq i32 %34, %24
  br i1 %36, label %55, label %28, !llvm.loop !309

37:                                               ; preds = %9, %5
  %38 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !143
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %42(ptr noundef nonnull %39) #16
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %44 = load i32, ptr %43, align 8, !tbaa !55
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load ptr, ptr %2, align 8, !tbaa !64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ %52, %48 ], [ 0, %46 ]
  %50 = phi ptr [ %53, %48 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 0, i32 4
  store ptr null, ptr %51, align 8, !tbaa !143
  %52 = add nuw nsw i32 %49, 1
  %53 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 1
  %54 = icmp eq i32 %52, %44
  br i1 %54, label %55, label %48, !llvm.loop !310

55:                                               ; preds = %28, %48, %17, %41, %13, %37, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @particle_system_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ParticleSimulationData, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca %struct.PTCacheID, align 8
  %7 = alloca %struct.ParticleSimulationData, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 48
  %11 = load ptr, ptr %10, align 8, !tbaa !311
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ParticleDrawData, ptr %11, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !312
  %16 = and i32 %15, -2
  store i32 %16, ptr %14, align 4, !tbaa !312
  br label %17

17:                                               ; preds = %13, %3
  %18 = tail call i32 @psys_check_enabled(ptr noundef %1, ptr noundef %2) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %1098, label %20

20:                                               ; preds = %17
  %21 = tail call float @BKE_scene_frame_get(ptr noundef %0) #16
  store ptr %0, ptr %7, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !112
  %23 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 2
  store ptr %2, ptr %23, align 8, !tbaa !113
  %24 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %2) #16
  %25 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !146
  %26 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 6
  %27 = load i16, ptr %26, align 4, !tbaa !314
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = and i16 %27, -3
  store i16 %31, ptr %26, align 4, !tbaa !314
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 20
  %33 = load float, ptr %32, align 8, !tbaa !161
  %34 = fcmp oeq float %33, %21
  br i1 %34, label %1098, label %35

35:                                               ; preds = %30, %20
  %36 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = icmp eq ptr %37, null
  br i1 %38, label %1098, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 8
  %41 = load i16, ptr %40, align 2, !tbaa !57
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @DM_ensure_tessface(ptr noundef nonnull %37) #16
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !315
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %9, ptr noundef %46, float noundef %21, i16 noundef signext 1) #16
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = and i32 %48, -16385
  store i32 %49, ptr %47, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 31
  %51 = load i16, ptr %50, align 4, !tbaa !316
  %52 = and i16 %51, 32
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr %22, align 8, !tbaa !112
  %56 = load ptr, ptr %23, align 8, !tbaa !113
  tail call void @psys_changed_type(ptr noundef %55, ptr noundef %56)
  br label %57

57:                                               ; preds = %54, %44
  %58 = load i16, ptr %50, align 4, !tbaa !316
  %59 = and i16 %58, 16
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 27
  store i32 0, ptr %62, align 4, !tbaa !60
  br label %63

63:                                               ; preds = %61, %57
  %64 = load ptr, ptr %23, align 8, !tbaa !113
  %65 = getelementptr inbounds %struct.ParticleSystem, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %66, i64 0, i32 11
  %68 = load i16, ptr %67, align 8, !tbaa !51
  switch i16 %68, label %71 [
    i16 0, label %69
    i16 2, label %69
  ]

69:                                               ; preds = %63, %63
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #16
  %70 = load ptr, ptr %22, align 8, !tbaa !112
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %6, ptr noundef %70, ptr noundef %64) #16
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #16
  br label %76

71:                                               ; preds = %63
  tail call void @free_keyed_keys(ptr noundef %64) #16
  %72 = load ptr, ptr %23, align 8, !tbaa !113
  %73 = getelementptr inbounds %struct.ParticleSystem, ptr %72, i64 0, i32 25
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = and i32 %74, -1025
  store i32 %75, ptr %73, align 4, !tbaa !50
  br label %76

76:                                               ; preds = %71, %69
  %77 = load i16, ptr %67, align 8, !tbaa !51
  switch i16 %77, label %121 [
    i16 3, label %78
    i16 4, label %101
  ]

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.ParticleSettings, ptr %66, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !183
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %84 = call ptr %83(i64 noundef 104, ptr noundef nonnull @.str.6) #16
  store ptr %84, ptr %79, align 8, !tbaa !183
  call void @boid_default_settings(ptr noundef %84) #16
  %85 = load ptr, ptr %79, align 8, !tbaa !183
  %86 = call ptr @boid_new_state(ptr noundef %85) #16
  %87 = getelementptr inbounds %struct.BoidState, ptr %86, i64 0, i32 2
  %88 = call ptr @boid_new_rule(i32 noundef 4) #16
  call void @BLI_addtail(ptr noundef nonnull %87, ptr noundef %88) #16
  %89 = call ptr @boid_new_rule(i32 noundef 5) #16
  call void @BLI_addtail(ptr noundef nonnull %87, ptr noundef %89) #16
  %90 = load ptr, ptr %87, align 8, !tbaa !317
  %91 = getelementptr inbounds %struct.BoidRule, ptr %90, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !318
  %93 = or i32 %92, 1
  store i32 %93, ptr %91, align 4, !tbaa !318
  %94 = getelementptr inbounds %struct.BoidState, ptr %86, i64 0, i32 7
  %95 = load i32, ptr %94, align 4, !tbaa !320
  %96 = or i32 %95, 1
  store i32 %96, ptr %94, align 4, !tbaa !320
  %97 = load ptr, ptr %79, align 8, !tbaa !183
  %98 = getelementptr inbounds %struct.BoidSettings, ptr %97, i64 0, i32 22
  call void @BLI_addtail(ptr noundef nonnull %98, ptr noundef %86) #16
  br label %121

99:                                               ; preds = %78
  %100 = icmp eq i16 %77, 4
  br i1 %100, label %101, label %121

101:                                              ; preds = %76, %99
  %102 = getelementptr inbounds %struct.ParticleSettings, ptr %66, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !225
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %107 = call ptr %106(i64 noundef 68, ptr noundef nonnull @.str.7) #16
  store ptr %107, ptr %102, align 8, !tbaa !225
  %108 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 1
  store float 0.000000e+00, ptr %108, align 4, !tbaa !234
  %109 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 3
  store float 0x3FB99999A0000000, ptr %109, align 4, !tbaa !321
  %110 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 4
  store float 0x3FB99999A0000000, ptr %110, align 4, !tbaa !322
  %111 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 2
  store float 1.000000e+00, ptr %111, align 4, !tbaa !238
  %112 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 7
  store float 2.000000e+00, ptr %112, align 4, !tbaa !231
  %113 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 8
  store float 0x3FB99999A0000000, ptr %113, align 4, !tbaa !232
  %114 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 9
  store float 1.000000e+00, ptr %114, align 4, !tbaa !239
  %115 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 10
  store float 1.000000e+00, ptr %115, align 4, !tbaa !240
  %116 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 11
  store float 1.000000e+00, ptr %116, align 4, !tbaa !237
  %117 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 12
  store float 0.000000e+00, ptr %117, align 4, !tbaa !263
  store float 1.000000e+00, ptr %107, align 4, !tbaa !235
  %118 = getelementptr inbounds %struct.SPHFluidSettings, ptr %107, i64 0, i32 13
  %119 = load i32, ptr %118, align 4, !tbaa !233
  %120 = or i32 %119, 124
  store i32 %120, ptr %118, align 4, !tbaa !233
  br label %121

121:                                              ; preds = %76, %82, %99, %101, %105
  %122 = load ptr, ptr %23, align 8, !tbaa !113
  %123 = getelementptr inbounds %struct.ParticleSystem, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !64
  %125 = icmp eq ptr %124, null
  br i1 %125, label %176, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %122, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %158, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.ParticleSettings, ptr %128, i64 0, i32 11
  %132 = load i16, ptr %131, align 8, !tbaa !51
  %133 = icmp eq i16 %132, 3
  br i1 %133, label %134, label %158

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ParticleData, ptr %124, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !143
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %176

138:                                              ; preds = %134
  %139 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %140 = getelementptr inbounds %struct.ParticleSystem, ptr %122, i64 0, i32 26
  %141 = load i32, ptr %140, align 8, !tbaa !55
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, 56
  %144 = call ptr %139(i64 noundef %143, ptr noundef nonnull @.str.4) #16
  %145 = load i32, ptr %140, align 8, !tbaa !55
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %138
  %148 = load ptr, ptr %123, align 8, !tbaa !64
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i32 [ %155, %149 ], [ 0, %147 ]
  %151 = phi ptr [ %156, %149 ], [ %148, %147 ]
  %152 = phi ptr [ %153, %149 ], [ %144, %147 ]
  %153 = getelementptr inbounds %struct.BoidParticle, ptr %152, i64 1
  %154 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 0, i32 4
  store ptr %152, ptr %154, align 8, !tbaa !143
  %155 = add nuw nsw i32 %150, 1
  %156 = getelementptr inbounds %struct.ParticleData, ptr %151, i64 1
  %157 = icmp eq i32 %155, %145
  br i1 %157, label %176, label %149, !llvm.loop !309

158:                                              ; preds = %130, %126
  %159 = getelementptr inbounds %struct.ParticleData, ptr %124, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !143
  %161 = icmp eq ptr %160, null
  br i1 %161, label %176, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %163(ptr noundef nonnull %160) #16
  %164 = getelementptr inbounds %struct.ParticleSystem, ptr %122, i64 0, i32 26
  %165 = load i32, ptr %164, align 8, !tbaa !55
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load ptr, ptr %123, align 8, !tbaa !64
  br label %169

169:                                              ; preds = %169, %167
  %170 = phi i32 [ %173, %169 ], [ 0, %167 ]
  %171 = phi ptr [ %174, %169 ], [ %168, %167 ]
  %172 = getelementptr inbounds %struct.ParticleData, ptr %171, i64 0, i32 4
  store ptr null, ptr %172, align 8, !tbaa !143
  %173 = add nuw nsw i32 %170, 1
  %174 = getelementptr inbounds %struct.ParticleData, ptr %171, i64 1
  %175 = icmp eq i32 %173, %165
  br i1 %175, label %176, label %169, !llvm.loop !310

176:                                              ; preds = %149, %169, %121, %134, %138, %158, %162
  %177 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 7
  %178 = load i16, ptr %177, align 8, !tbaa !47
  switch i16 %178, label %754 [
    i16 2, label %179
    i16 3, label %746
  ]

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %181 = load i32, ptr %180, align 8, !tbaa !55
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 63
  %185 = load i32, ptr %184, align 4, !tbaa !59
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  call void @psys_free_path_cache(ptr noundef %2, ptr noundef null) #16
  call void @free_hair(ptr noundef %1, ptr noundef %2, i32 noundef 0) #16
  %188 = load i32, ptr %47, align 4, !tbaa !50
  %189 = or i32 %188, 512
  store i32 %189, ptr %47, align 4, !tbaa !50
  br label %349

190:                                              ; preds = %183, %179
  %191 = load i32, ptr %47, align 4, !tbaa !50
  %192 = and i32 %191, 2048
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %347

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %196 = load ptr, ptr %195, align 8, !tbaa !62
  %197 = icmp ne ptr %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.PTCacheEdit, ptr %196, i64 0, i32 14
  %200 = load i32, ptr %199, align 4, !tbaa !323
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %198, %194
  %203 = and i32 %191, 512
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %217, label %205

205:                                              ; preds = %202
  %206 = load i16, ptr %50, align 4, !tbaa !316
  %207 = and i16 %206, 16
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = load ptr, ptr %8, align 8, !tbaa !34
  %211 = getelementptr inbounds %struct.ParticleSettings, ptr %210, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !250
  %213 = and i32 %212, 16
  %214 = icmp eq i32 %213, 0
  %215 = or i1 %197, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %209, %198
  br i1 %193, label %349, label %347

217:                                              ; preds = %205, %202, %209
  %218 = load i16, ptr %50, align 4, !tbaa !316
  call void @free_hair(ptr noundef %1, ptr noundef %2, i32 noundef 0) #16
  %219 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %220 = load ptr, ptr %219, align 8, !tbaa !62
  %221 = icmp eq ptr %220, null
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 6
  %224 = load ptr, ptr %223, align 8, !tbaa !63
  %225 = icmp eq ptr %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  call void %224(ptr noundef nonnull %220) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %219, i8 0, i64 16, i1 false)
  br label %227

227:                                              ; preds = %226, %222, %217
  %228 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 20
  store float 1.000000e+00, ptr %228, align 8, !tbaa !161
  %229 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 26
  %230 = load i16, ptr %229, align 2, !tbaa !326
  %231 = icmp slt i16 %230, 0
  br i1 %231, label %344, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 5
  br label %234

234:                                              ; preds = %232, %339
  %235 = phi i32 [ 0, %232 ], [ %340, %339 ]
  %236 = sitofp i32 %235 to float
  %237 = fmul float %236, 1.000000e+02
  %238 = load ptr, ptr %8, align 8, !tbaa !34
  %239 = getelementptr inbounds %struct.ParticleSettings, ptr %238, i64 0, i32 26
  %240 = load i16, ptr %239, align 2, !tbaa !326
  %241 = sitofp i16 %240 to float
  %242 = fdiv float %237, %241
  %243 = load i32, ptr %233, align 8, !tbaa !250
  %244 = and i32 %243, 16
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %234
  %247 = load ptr, ptr %45, align 8, !tbaa !315
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %9, ptr noundef %247, float noundef %242, i16 noundef signext 2) #16
  br label %248

248:                                              ; preds = %246, %234
  call fastcc void @system_step(ptr noundef nonnull %7, float noundef %242)
  store float %242, ptr %228, align 8, !tbaa !161
  store i16 0, ptr %50, align 4, !tbaa !316
  %249 = load ptr, ptr %22, align 8, !tbaa !112
  %250 = load ptr, ptr %23, align 8, !tbaa !113
  %251 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 50
  %252 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 47
  %253 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %251, ptr noundef nonnull %252) #16
  %254 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %7) #16
  %255 = getelementptr inbounds %struct.ParticleSystem, ptr %250, i64 0, i32 15
  store ptr %254, ptr %255, align 8, !tbaa !128
  %256 = getelementptr inbounds %struct.ParticleSystem, ptr %250, i64 0, i32 26
  %257 = load i32, ptr %256, align 8, !tbaa !55
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %339, label %259

259:                                              ; preds = %248
  %260 = load i32, ptr %256, align 8, !tbaa !55
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %339

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.ParticleSystem, ptr %250, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !64
  %265 = getelementptr inbounds %struct.ParticleSystem, ptr %250, i64 0, i32 2
  %266 = getelementptr inbounds %struct.ParticleSystem, ptr %250, i64 0, i32 2
  br label %267

267:                                              ; preds = %262, %334
  %268 = phi i32 [ 0, %262 ], [ %335, %334 ]
  %269 = phi ptr [ %264, %262 ], [ %336, %334 ]
  %270 = getelementptr inbounds %struct.ParticleData, ptr %269, i64 0, i32 5
  %271 = load i32, ptr %270, align 8, !tbaa !327
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.ParticleData, ptr %269, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !328
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %287

277:                                              ; preds = %273, %267
  %278 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %279 = load ptr, ptr %265, align 8, !tbaa !34
  %280 = getelementptr inbounds %struct.ParticleSettings, ptr %279, i64 0, i32 26
  %281 = load i16, ptr %280, align 2, !tbaa !326
  %282 = sext i16 %281 to i64
  %283 = mul nsw i64 %282, 24
  %284 = add nsw i64 %283, 24
  %285 = call ptr %278(i64 noundef %284, ptr noundef nonnull @.str.8) #16
  %286 = getelementptr inbounds %struct.ParticleData, ptr %269, i64 0, i32 2
  store ptr %285, ptr %286, align 8, !tbaa !328
  store i32 0, ptr %270, align 8, !tbaa !327
  br label %287

287:                                              ; preds = %277, %273
  %288 = getelementptr inbounds %struct.ParticleData, ptr %269, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !328
  %290 = load i32, ptr %270, align 8, !tbaa !327
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.HairKey, ptr %289, i64 %291
  %293 = load float, ptr %269, align 4, !tbaa !105
  store float %293, ptr %292, align 4, !tbaa !105
  %294 = getelementptr inbounds float, ptr %269, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !105
  %296 = getelementptr inbounds float, ptr %292, i64 1
  store float %295, ptr %296, align 4, !tbaa !105
  %297 = getelementptr inbounds float, ptr %269, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !105
  %299 = getelementptr inbounds float, ptr %292, i64 2
  store float %298, ptr %299, align 4, !tbaa !105
  call void @mul_m4_v3(ptr noundef nonnull %251, ptr noundef nonnull %292) #16
  %300 = load i32, ptr %270, align 8, !tbaa !327
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %317, label %302

302:                                              ; preds = %287
  %303 = load float, ptr %289, align 4, !tbaa !105
  %304 = load float, ptr %292, align 4, !tbaa !105
  %305 = fsub float %304, %303
  store float %305, ptr %292, align 4, !tbaa !105
  %306 = getelementptr inbounds float, ptr %289, i64 1
  %307 = load float, ptr %306, align 4, !tbaa !105
  %308 = load float, ptr %296, align 4, !tbaa !105
  %309 = fsub float %308, %307
  store float %309, ptr %296, align 4, !tbaa !105
  %310 = getelementptr inbounds float, ptr %289, i64 2
  %311 = load float, ptr %310, align 4, !tbaa !105
  %312 = load float, ptr %299, align 4, !tbaa !105
  %313 = fsub float %312, %311
  store float %313, ptr %299, align 4, !tbaa !105
  %314 = load ptr, ptr %25, align 8, !tbaa !146
  %315 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %314, i64 0, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !108
  call void @psys_vec_rot_to_face(ptr noundef %316, ptr noundef nonnull %269, ptr noundef nonnull %292) #16
  br label %317

317:                                              ; preds = %302, %287
  %318 = getelementptr inbounds %struct.ParticleKey, ptr %269, i64 0, i32 4
  %319 = load float, ptr %318, align 4, !tbaa !201
  %320 = getelementptr inbounds %struct.HairKey, ptr %289, i64 %291, i32 1
  store float %319, ptr %320, align 4, !tbaa !329
  %321 = fdiv float %319, 1.000000e+02
  %322 = fsub float 1.000000e+00, %321
  %323 = getelementptr inbounds %struct.HairKey, ptr %289, i64 %291, i32 2
  store float %322, ptr %323, align 4, !tbaa !331
  %324 = load i32, ptr %270, align 8, !tbaa !327
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %270, align 8, !tbaa !327
  %326 = load ptr, ptr %266, align 8, !tbaa !34
  %327 = getelementptr inbounds %struct.ParticleSettings, ptr %326, i64 0, i32 26
  %328 = load i16, ptr %327, align 2, !tbaa !326
  %329 = sext i16 %328 to i32
  %330 = icmp eq i32 %324, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %317
  store float 0.000000e+00, ptr %289, align 4, !tbaa !105
  %332 = getelementptr inbounds float, ptr %289, i64 1
  store float 0.000000e+00, ptr %332, align 4, !tbaa !105
  %333 = getelementptr inbounds float, ptr %289, i64 2
  store float 0.000000e+00, ptr %333, align 4, !tbaa !105
  br label %334

334:                                              ; preds = %331, %317
  %335 = add nuw nsw i32 %268, 1
  %336 = getelementptr inbounds %struct.ParticleData, ptr %269, i64 1
  %337 = load i32, ptr %256, align 8, !tbaa !55
  %338 = icmp slt i32 %335, %337
  br i1 %338, label %267, label %339, !llvm.loop !332

339:                                              ; preds = %334, %259, %248
  %340 = add nuw nsw i32 %235, 1
  %341 = load i16, ptr %229, align 2, !tbaa !326
  %342 = sext i16 %341 to i32
  %343 = icmp slt i32 %235, %342
  br i1 %343, label %234, label %344, !llvm.loop !333

344:                                              ; preds = %339, %227
  %345 = load i32, ptr %47, align 4, !tbaa !50
  %346 = or i32 %345, 512
  store i32 %346, ptr %47, align 4, !tbaa !50
  store i16 %218, ptr %50, align 4, !tbaa !316
  br label %349

347:                                              ; preds = %190, %216
  %348 = or i32 %191, 512
  store i32 %348, ptr %47, align 4, !tbaa !50
  br label %349

349:                                              ; preds = %344, %347, %216, %187
  %350 = load i32, ptr %47, align 4, !tbaa !50
  %351 = and i32 %350, 512
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %1082, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %23, align 8, !tbaa !113
  %355 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !34
  %357 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 39
  %358 = load ptr, ptr %357, align 8, !tbaa !43
  %359 = icmp eq ptr %358, null
  br i1 %359, label %384, label %360

360:                                              ; preds = %353
  %361 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 40
  %362 = load ptr, ptr %361, align 8, !tbaa !44
  %363 = getelementptr inbounds %struct.PointCache, ptr %362, i64 0, i32 2
  %364 = load i32, ptr %363, align 8, !tbaa !45
  %365 = and i32 %364, 1
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %381

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.ParticleSettings, ptr %356, i64 0, i32 7
  %369 = load i16, ptr %368, align 8, !tbaa !47
  %370 = icmp eq i16 %369, 2
  br i1 %370, label %371, label %375

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 25
  %373 = load i32, ptr %372, align 4, !tbaa !50
  %374 = and i32 %373, 4
  br label %381

375:                                              ; preds = %367
  %376 = getelementptr inbounds %struct.ParticleSettings, ptr %356, i64 0, i32 11
  %377 = load i16, ptr %376, align 8, !tbaa !51
  switch i16 %377, label %378 [
    i16 1, label %381
    i16 3, label %381
  ]

378:                                              ; preds = %375
  %379 = icmp eq i16 %377, 4
  %380 = zext i1 %379 to i32
  br label %381

381:                                              ; preds = %378, %375, %375, %371, %360
  %382 = phi i32 [ %374, %371 ], [ 0, %360 ], [ 1, %375 ], [ %380, %378 ], [ 1, %375 ]
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %404, label %384

384:                                              ; preds = %381, %353
  %385 = getelementptr inbounds %struct.ParticleSettings, ptr %356, i64 0, i32 89
  %386 = load i32, ptr %385, align 4, !tbaa !52
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.ParticleSettings, ptr %356, i64 0, i32 19
  %390 = load i16, ptr %389, align 4, !tbaa !53
  %391 = icmp eq i16 %390, 0
  br i1 %391, label %392, label %404

392:                                              ; preds = %388, %384
  %393 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 40
  %394 = load ptr, ptr %393, align 8, !tbaa !44
  %395 = getelementptr inbounds %struct.PointCache, ptr %394, i64 0, i32 2
  %396 = load i32, ptr %395, align 8, !tbaa !45
  %397 = and i32 %396, 8
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %404

399:                                              ; preds = %392
  %400 = getelementptr inbounds %struct.ParticleSettings, ptr %356, i64 0, i32 30
  %401 = load i16, ptr %400, align 2, !tbaa !54
  %402 = sitofp i16 %401 to float
  %403 = fdiv float %402, 1.000000e+02
  br label %404

404:                                              ; preds = %381, %388, %392, %399
  %405 = phi float [ %403, %399 ], [ 1.000000e+00, %392 ], [ 1.000000e+00, %388 ], [ 1.000000e+00, %381 ]
  %406 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 3
  %407 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 26
  %408 = load i32, ptr %407, align 8, !tbaa !55
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %464

410:                                              ; preds = %404
  %411 = load ptr, ptr %406, align 8, !tbaa !64
  %412 = getelementptr inbounds %struct.ParticleSettings, ptr %356, i64 0, i32 82
  %413 = load float, ptr %412, align 8, !tbaa !268
  %414 = getelementptr inbounds %struct.ParticleSettings, ptr %356, i64 0, i32 83
  %415 = load float, ptr %414, align 4, !tbaa !334
  %416 = fcmp ogt float %415, 0.000000e+00
  %417 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 23
  %418 = fneg float %415
  %419 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 23
  %420 = load i32, ptr %419, align 4, !tbaa !150
  %421 = srem i32 %420, 1024
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !95
  %425 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %422
  %426 = load i32, ptr %425, align 4, !tbaa !95
  br label %427

427:                                              ; preds = %410, %448
  %428 = phi ptr [ %411, %410 ], [ %462, %448 ]
  %429 = phi i32 [ 0, %410 ], [ %461, %448 ]
  %430 = getelementptr inbounds %struct.ParticleData, ptr %428, i64 0, i32 13
  store float %413, ptr %430, align 4, !tbaa !236
  br i1 %416, label %431, label %448

431:                                              ; preds = %427
  %432 = add nuw nsw i32 %429, 1
  %433 = load i32, ptr %417, align 4, !tbaa !150
  %434 = srem i32 %433, 1024
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !95
  %438 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %435
  %439 = load i32, ptr %438, align 4, !tbaa !95
  %440 = mul i32 %439, %432
  %441 = add i32 %440, %437
  %442 = and i32 %441, 1023
  %443 = zext nneg i32 %442 to i64
  %444 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %443
  %445 = load float, ptr %444, align 4, !tbaa !105
  %446 = call float @llvm.fmuladd.f32(float %418, float %445, float 1.000000e+00)
  %447 = fmul float %413, %446
  store float %447, ptr %430, align 4, !tbaa !236
  br label %448

448:                                              ; preds = %431, %427
  %449 = mul i32 %426, %429
  %450 = add i32 %449, %424
  %451 = and i32 %450, 1023
  %452 = zext nneg i32 %451 to i64
  %453 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %452
  %454 = load float, ptr %453, align 4, !tbaa !105
  %455 = fcmp ogt float %454, %405
  %456 = getelementptr inbounds %struct.ParticleData, ptr %428, i64 0, i32 17
  %457 = load i16, ptr %456, align 4, !tbaa !65
  %458 = and i16 %457, -3
  %459 = select i1 %455, i16 2, i16 0
  %460 = or disjoint i16 %458, %459
  store i16 %460, ptr %456, align 4, !tbaa !65
  %461 = add nuw nsw i32 %429, 1
  %462 = getelementptr inbounds %struct.ParticleData, ptr %428, i64 1
  %463 = icmp eq i32 %461, %408
  br i1 %463, label %464, label %427, !llvm.loop !335

464:                                              ; preds = %448, %404
  %465 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 31
  %466 = load i16, ptr %465, align 4, !tbaa !316
  %467 = and i16 %466, 16
  %468 = icmp eq i16 %467, 0
  br i1 %468, label %478, label %469

469:                                              ; preds = %464
  %470 = load ptr, ptr %22, align 8, !tbaa !112
  %471 = load ptr, ptr %25, align 8, !tbaa !146
  %472 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %471, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !108
  call void @psys_calc_dmcache(ptr noundef %470, ptr noundef %473, ptr noundef %354)
  %474 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 11
  %475 = load ptr, ptr %474, align 8, !tbaa !336
  %476 = icmp eq ptr %475, null
  br i1 %476, label %478, label %477

477:                                              ; preds = %469
  call void @cloth_free_modifier(ptr noundef nonnull %475) #16
  br label %478

478:                                              ; preds = %477, %469, %464
  %479 = load ptr, ptr %355, align 8, !tbaa !34
  %480 = getelementptr inbounds %struct.ParticleSettings, ptr %479, i64 0, i32 7
  %481 = load i16, ptr %480, align 8, !tbaa !47
  %482 = icmp eq i16 %481, 2
  br i1 %482, label %483, label %730

483:                                              ; preds = %478
  %484 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 25
  %485 = load i32, ptr %484, align 4, !tbaa !50
  %486 = and i32 %485, 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %730, label %488

488:                                              ; preds = %483
  %489 = load ptr, ptr %406, align 8, !tbaa !64
  %490 = icmp eq ptr %489, null
  br i1 %490, label %730, label %491

491:                                              ; preds = %488
  %492 = load ptr, ptr %23, align 8, !tbaa !113
  %493 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 12
  %494 = load ptr, ptr %493, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %495 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 11
  %496 = load ptr, ptr %495, align 8, !tbaa !336
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %512

498:                                              ; preds = %491
  %499 = call ptr @modifier_new(i32 noundef 22) #16
  store ptr %499, ptr %495, align 8, !tbaa !336
  %500 = getelementptr inbounds %struct.ClothModifierData, ptr %499, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !338
  %502 = getelementptr inbounds %struct.ClothSimSettings, ptr %501, i64 0, i32 21
  store float 0.000000e+00, ptr %502, align 8, !tbaa !340
  %503 = getelementptr inbounds %struct.ClothSimSettings, ptr %501, i64 0, i32 25
  store float 1.000000e+00, ptr %503, align 8, !tbaa !342
  %504 = getelementptr inbounds %struct.ClothSimSettings, ptr %501, i64 0, i32 29
  %505 = load i32, ptr %504, align 8, !tbaa !343
  %506 = or i32 %505, 8200
  store i32 %506, ptr %504, align 8, !tbaa !343
  %507 = getelementptr inbounds %struct.ClothModifierData, ptr %499, i64 0, i32 4
  %508 = load ptr, ptr %507, align 8, !tbaa !344
  %509 = getelementptr inbounds %struct.ClothCollSettings, ptr %508, i64 0, i32 7
  %510 = load i32, ptr %509, align 8, !tbaa !345
  %511 = and i32 %510, -5
  store i32 %511, ptr %509, align 8, !tbaa !345
  br label %512

512:                                              ; preds = %498, %491
  %513 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 3
  %514 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 26
  %515 = load i32, ptr %514, align 8, !tbaa !55
  %516 = icmp sgt i32 %515, 0
  br i1 %516, label %517, label %529

517:                                              ; preds = %512
  %518 = load ptr, ptr %513, align 8, !tbaa !64
  br label %519

519:                                              ; preds = %517, %519
  %520 = phi i32 [ %525, %519 ], [ 0, %517 ]
  %521 = phi i32 [ %526, %519 ], [ 0, %517 ]
  %522 = phi ptr [ %527, %519 ], [ %518, %517 ]
  %523 = getelementptr inbounds %struct.ParticleData, ptr %522, i64 0, i32 5
  %524 = load i32, ptr %523, align 8, !tbaa !327
  %525 = add nsw i32 %524, %520
  %526 = add nuw nsw i32 %521, 1
  %527 = getelementptr inbounds %struct.ParticleData, ptr %522, i64 1
  %528 = icmp eq i32 %526, %515
  br i1 %528, label %529, label %519, !llvm.loop !347

529:                                              ; preds = %519, %512
  %530 = phi i32 [ 0, %512 ], [ %525, %519 ]
  %531 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 26
  %532 = add nsw i32 %515, %530
  %533 = icmp eq ptr %494, null
  br i1 %533, label %547, label %534

534:                                              ; preds = %529
  %535 = getelementptr inbounds %struct.DerivedMesh, ptr %494, i64 0, i32 23
  %536 = load ptr, ptr %535, align 8, !tbaa !85
  %537 = call i32 %536(ptr noundef nonnull %494) #16
  %538 = icmp eq i32 %532, %537
  br i1 %538, label %539, label %544

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.DerivedMesh, ptr %494, i64 0, i32 24
  %541 = load ptr, ptr %540, align 8, !tbaa !348
  %542 = call i32 %541(ptr noundef nonnull %494) #16
  %543 = icmp eq i32 %530, %542
  br i1 %543, label %547, label %544

544:                                              ; preds = %539, %534
  %545 = getelementptr inbounds %struct.DerivedMesh, ptr %494, i64 0, i32 95
  %546 = load ptr, ptr %545, align 8, !tbaa !349
  call void %546(ptr noundef nonnull %494) #16
  store ptr null, ptr %493, align 8, !tbaa !337
  br label %547

547:                                              ; preds = %544, %539, %529
  %548 = phi ptr [ null, %544 ], [ %494, %539 ], [ null, %529 ]
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %552

550:                                              ; preds = %547
  %551 = call ptr @CDDM_new(i32 noundef %532, i32 noundef %530, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  store ptr %551, ptr %493, align 8, !tbaa !337
  call void @DM_add_vert_layer(ptr noundef %551, i32 noundef 2, i32 noundef 1, ptr noundef null) #16
  br label %552

552:                                              ; preds = %550, %547
  %553 = phi ptr [ %548, %547 ], [ %551, %550 ]
  %554 = call ptr @CDDM_get_verts(ptr noundef %553) #16
  %555 = call ptr @CDDM_get_edges(ptr noundef %553) #16
  %556 = call ptr @DM_get_vert_data_layer(ptr noundef %553, i32 noundef 2) #16
  %557 = load ptr, ptr %495, align 8, !tbaa !336
  %558 = getelementptr inbounds %struct.ClothModifierData, ptr %557, i64 0, i32 3
  %559 = load ptr, ptr %558, align 8, !tbaa !338
  %560 = getelementptr inbounds %struct.ClothSimSettings, ptr %559, i64 0, i32 34
  store i16 1, ptr %560, align 8, !tbaa !350
  %561 = load ptr, ptr %513, align 8, !tbaa !64
  %562 = getelementptr inbounds %struct.ParticleData, ptr %561, i64 0, i32 16
  store i32 1, ptr %562, align 8, !tbaa !142
  %563 = load i32, ptr %531, align 8, !tbaa !55
  %564 = icmp sgt i32 %563, 0
  br i1 %564, label %565, label %692

565:                                              ; preds = %552
  %566 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 2
  br label %567

567:                                              ; preds = %565, %684
  %568 = phi ptr [ %554, %565 ], [ %687, %684 ]
  %569 = phi i32 [ 0, %565 ], [ %688, %684 ]
  %570 = phi ptr [ %561, %565 ], [ %689, %684 ]
  %571 = phi ptr [ %556, %565 ], [ %686, %684 ]
  %572 = phi ptr [ %555, %565 ], [ %685, %684 ]
  %573 = icmp eq i32 %569, 0
  br i1 %573, label %582, label %574

574:                                              ; preds = %567
  %575 = getelementptr %struct.ParticleData, ptr %570, i64 -1, i32 16
  %576 = load i32, ptr %575, align 8, !tbaa !142
  %577 = getelementptr %struct.ParticleData, ptr %570, i64 -1, i32 5
  %578 = load i32, ptr %577, align 8, !tbaa !327
  %579 = add i32 %576, 1
  %580 = add i32 %579, %578
  %581 = getelementptr inbounds %struct.ParticleData, ptr %570, i64 0, i32 16
  store i32 %580, ptr %581, align 8, !tbaa !142
  br label %582

582:                                              ; preds = %574, %567
  %583 = load ptr, ptr %22, align 8, !tbaa !112
  %584 = load ptr, ptr %25, align 8, !tbaa !146
  %585 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %584, i64 0, i32 2
  %586 = load ptr, ptr %585, align 8, !tbaa !108
  %587 = load ptr, ptr %566, align 8, !tbaa !34
  %588 = getelementptr inbounds %struct.ParticleSettings, ptr %587, i64 0, i32 8
  %589 = load i16, ptr %588, align 2, !tbaa !57
  call void @psys_mat_hair_to_object(ptr noundef %583, ptr noundef %586, i16 noundef signext %589, ptr noundef %570, ptr noundef nonnull %5) #16
  %590 = getelementptr inbounds %struct.ParticleData, ptr %570, i64 0, i32 5
  %591 = load i32, ptr %590, align 8, !tbaa !327
  %592 = icmp sgt i32 %591, 0
  br i1 %592, label %593, label %684

593:                                              ; preds = %582
  %594 = getelementptr inbounds %struct.ParticleData, ptr %570, i64 0, i32 2
  %595 = load ptr, ptr %594, align 8, !tbaa !328
  %596 = getelementptr inbounds %struct.ParticleData, ptr %570, i64 0, i32 16
  %597 = getelementptr inbounds %struct.ParticleData, ptr %570, i64 0, i32 16
  br label %598

598:                                              ; preds = %593, %678
  %599 = phi i32 [ 0, %593 ], [ %680, %678 ]
  %600 = phi ptr [ %568, %593 ], [ %655, %678 ]
  %601 = phi ptr [ %595, %593 ], [ %681, %678 ]
  %602 = phi ptr [ %571, %593 ], [ %679, %678 ]
  %603 = phi ptr [ %572, %593 ], [ %663, %678 ]
  %604 = icmp eq i32 %599, 0
  br i1 %604, label %605, label %644

605:                                              ; preds = %598
  %606 = getelementptr inbounds %struct.HairKey, ptr %601, i64 1
  %607 = load float, ptr %601, align 4, !tbaa !105
  %608 = load float, ptr %606, align 4, !tbaa !105
  %609 = fsub float %607, %608
  %610 = getelementptr inbounds float, ptr %601, i64 1
  %611 = load float, ptr %610, align 4, !tbaa !105
  %612 = getelementptr inbounds %struct.HairKey, ptr %601, i64 1, i32 0, i64 1
  %613 = load float, ptr %612, align 4, !tbaa !105
  %614 = fsub float %611, %613
  %615 = getelementptr inbounds float, ptr %601, i64 2
  %616 = load float, ptr %615, align 4, !tbaa !105
  %617 = getelementptr inbounds %struct.HairKey, ptr %601, i64 1, i32 0, i64 2
  %618 = load float, ptr %617, align 4, !tbaa !105
  %619 = fsub float %616, %618
  store float %607, ptr %600, align 4, !tbaa !105
  %620 = load float, ptr %610, align 4, !tbaa !105
  %621 = getelementptr inbounds float, ptr %600, i64 1
  store float %620, ptr %621, align 4, !tbaa !105
  %622 = load float, ptr %615, align 4, !tbaa !105
  %623 = getelementptr inbounds float, ptr %600, i64 2
  store float %622, ptr %623, align 4, !tbaa !105
  %624 = fadd float %607, %609
  store float %624, ptr %600, align 4, !tbaa !105
  %625 = fadd float %614, %620
  store float %625, ptr %621, align 4, !tbaa !105
  %626 = fadd float %619, %622
  store float %626, ptr %623, align 4, !tbaa !105
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %600) #16
  %627 = getelementptr inbounds %struct.MVert, ptr %600, i64 1
  %628 = load i32, ptr %596, align 8, !tbaa !142
  %629 = add nsw i32 %628, -1
  store i32 %629, ptr %603, align 4, !tbaa !351
  %630 = getelementptr inbounds %struct.MEdge, ptr %603, i64 0, i32 1
  store i32 %628, ptr %630, align 4, !tbaa !353
  %631 = getelementptr inbounds %struct.MEdge, ptr %603, i64 1
  %632 = icmp eq ptr %602, null
  br i1 %632, label %644, label %633

633:                                              ; preds = %605
  %634 = getelementptr inbounds %struct.MDeformVert, ptr %602, i64 0, i32 1
  %635 = load i32, ptr %634, align 8, !tbaa !354
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %640

637:                                              ; preds = %633
  %638 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %639 = call ptr %638(i64 noundef 8, ptr noundef nonnull @.str.9) #16
  store ptr %639, ptr %602, align 8, !tbaa !356
  store i32 1, ptr %634, align 8, !tbaa !354
  br label %640

640:                                              ; preds = %637, %633
  %641 = load ptr, ptr %602, align 8, !tbaa !356
  %642 = getelementptr inbounds %struct.MDeformWeight, ptr %641, i64 0, i32 1
  store float 1.000000e+00, ptr %642, align 4, !tbaa !357
  %643 = getelementptr inbounds %struct.MDeformVert, ptr %602, i64 1
  br label %644

644:                                              ; preds = %640, %605, %598
  %645 = phi ptr [ %603, %598 ], [ %631, %640 ], [ %631, %605 ]
  %646 = phi ptr [ %602, %598 ], [ %643, %640 ], [ null, %605 ]
  %647 = phi ptr [ %600, %598 ], [ %627, %640 ], [ %627, %605 ]
  %648 = load float, ptr %601, align 4, !tbaa !105
  store float %648, ptr %647, align 4, !tbaa !105
  %649 = getelementptr inbounds float, ptr %601, i64 1
  %650 = load float, ptr %649, align 4, !tbaa !105
  %651 = getelementptr inbounds float, ptr %647, i64 1
  store float %650, ptr %651, align 4, !tbaa !105
  %652 = getelementptr inbounds float, ptr %601, i64 2
  %653 = load float, ptr %652, align 4, !tbaa !105
  %654 = getelementptr inbounds float, ptr %647, i64 2
  store float %653, ptr %654, align 4, !tbaa !105
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %647) #16
  %655 = getelementptr inbounds %struct.MVert, ptr %647, i64 1
  br i1 %604, label %662, label %656

656:                                              ; preds = %644
  %657 = load i32, ptr %597, align 8, !tbaa !142
  %658 = add nsw i32 %657, %599
  %659 = add nsw i32 %658, -1
  store i32 %659, ptr %645, align 4, !tbaa !351
  %660 = getelementptr inbounds %struct.MEdge, ptr %645, i64 0, i32 1
  store i32 %658, ptr %660, align 4, !tbaa !353
  %661 = getelementptr inbounds %struct.MEdge, ptr %645, i64 1
  br label %662

662:                                              ; preds = %656, %644
  %663 = phi ptr [ %661, %656 ], [ %645, %644 ]
  %664 = icmp eq ptr %646, null
  br i1 %664, label %678, label %665

665:                                              ; preds = %662
  %666 = getelementptr inbounds %struct.MDeformVert, ptr %646, i64 0, i32 1
  %667 = load i32, ptr %666, align 8, !tbaa !354
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %665
  %670 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %671 = call ptr %670(i64 noundef 8, ptr noundef nonnull @.str.9) #16
  store ptr %671, ptr %646, align 8, !tbaa !356
  store i32 1, ptr %666, align 8, !tbaa !354
  br label %672

672:                                              ; preds = %669, %665
  %673 = getelementptr inbounds %struct.HairKey, ptr %601, i64 0, i32 2
  %674 = load float, ptr %673, align 4, !tbaa !331
  %675 = load ptr, ptr %646, align 8, !tbaa !356
  %676 = getelementptr inbounds %struct.MDeformWeight, ptr %675, i64 0, i32 1
  store float %674, ptr %676, align 4, !tbaa !357
  %677 = getelementptr inbounds %struct.MDeformVert, ptr %646, i64 1
  br label %678

678:                                              ; preds = %672, %662
  %679 = phi ptr [ %677, %672 ], [ null, %662 ]
  %680 = add nuw nsw i32 %599, 1
  %681 = getelementptr inbounds %struct.HairKey, ptr %601, i64 1
  %682 = load i32, ptr %590, align 8, !tbaa !327
  %683 = icmp slt i32 %680, %682
  br i1 %683, label %598, label %684, !llvm.loop !359

684:                                              ; preds = %678, %582
  %685 = phi ptr [ %572, %582 ], [ %663, %678 ]
  %686 = phi ptr [ %571, %582 ], [ %679, %678 ]
  %687 = phi ptr [ %568, %582 ], [ %655, %678 ]
  %688 = add nuw nsw i32 %569, 1
  %689 = getelementptr inbounds %struct.ParticleData, ptr %570, i64 1
  %690 = load i32, ptr %531, align 8, !tbaa !55
  %691 = icmp slt i32 %688, %690
  br i1 %691, label %567, label %692, !llvm.loop !360

692:                                              ; preds = %684, %552
  %693 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 13
  %694 = load ptr, ptr %693, align 8, !tbaa !361
  %695 = icmp eq ptr %694, null
  br i1 %695, label %699, label %696

696:                                              ; preds = %692
  %697 = getelementptr inbounds %struct.DerivedMesh, ptr %694, i64 0, i32 95
  %698 = load ptr, ptr %697, align 8, !tbaa !349
  call void %698(ptr noundef nonnull %694) #16
  br label %699

699:                                              ; preds = %696, %692
  %700 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 40
  %701 = load ptr, ptr %700, align 8, !tbaa !44
  %702 = load ptr, ptr %495, align 8, !tbaa !336
  %703 = getelementptr inbounds %struct.ClothModifierData, ptr %702, i64 0, i32 5
  store ptr %701, ptr %703, align 8, !tbaa !362
  %704 = getelementptr inbounds %struct.ParticleSystem, ptr %492, i64 0, i32 2
  %705 = load ptr, ptr %704, align 8, !tbaa !34
  %706 = getelementptr inbounds %struct.ParticleSettings, ptr %705, i64 0, i32 4
  %707 = load ptr, ptr %706, align 8, !tbaa !363
  %708 = getelementptr inbounds %struct.ClothModifierData, ptr %702, i64 0, i32 3
  %709 = load ptr, ptr %708, align 8, !tbaa !338
  %710 = getelementptr inbounds %struct.ClothSimSettings, ptr %709, i64 0, i32 41
  store ptr %707, ptr %710, align 8, !tbaa !364
  %711 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %712 = getelementptr inbounds %struct.DerivedMesh, ptr %553, i64 0, i32 23
  %713 = load ptr, ptr %712, align 8, !tbaa !85
  %714 = call i32 %713(ptr noundef %553) #16
  %715 = sext i32 %714 to i64
  %716 = mul nsw i64 %715, 12
  %717 = call ptr %711(i64 noundef %716, ptr noundef nonnull @.str.10) #16
  %718 = call ptr @CDDM_copy(ptr noundef %553) #16
  store ptr %718, ptr %693, align 8, !tbaa !361
  %719 = getelementptr inbounds %struct.DerivedMesh, ptr %718, i64 0, i32 77
  %720 = load ptr, ptr %719, align 8, !tbaa !365
  call void %720(ptr noundef %718, ptr noundef %717) #16
  %721 = load ptr, ptr %495, align 8, !tbaa !336
  %722 = load ptr, ptr %7, align 8, !tbaa !102
  %723 = load ptr, ptr %22, align 8, !tbaa !112
  call void @clothModifier_do(ptr noundef %721, ptr noundef %722, ptr noundef %723, ptr noundef %553, ptr noundef %717) #16
  %724 = load ptr, ptr %693, align 8, !tbaa !361
  call void @CDDM_apply_vert_coords(ptr noundef %724, ptr noundef %717) #16
  %725 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %725(ptr noundef %717) #16
  %726 = load ptr, ptr %495, align 8, !tbaa !336
  %727 = getelementptr inbounds %struct.ClothModifierData, ptr %726, i64 0, i32 3
  %728 = load ptr, ptr %727, align 8, !tbaa !338
  %729 = getelementptr inbounds %struct.ClothSimSettings, ptr %728, i64 0, i32 41
  store ptr null, ptr %729, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %730

730:                                              ; preds = %478, %483, %488, %699
  %731 = load ptr, ptr %23, align 8, !tbaa !113
  %732 = getelementptr inbounds %struct.ParticleSystem, ptr %731, i64 0, i32 42
  call void @pdEndEffectors(ptr noundef nonnull %732) #16
  %733 = load ptr, ptr %7, align 8, !tbaa !102
  %734 = load ptr, ptr %22, align 8, !tbaa !112
  %735 = load ptr, ptr %23, align 8, !tbaa !113
  %736 = getelementptr inbounds %struct.ParticleSystem, ptr %735, i64 0, i32 2
  %737 = load ptr, ptr %736, align 8, !tbaa !34
  %738 = getelementptr inbounds %struct.ParticleSettings, ptr %737, i64 0, i32 4
  %739 = load ptr, ptr %738, align 8, !tbaa !363
  %740 = call ptr @pdInitEffectors(ptr noundef %733, ptr noundef %734, ptr noundef %735, ptr noundef %739, i8 noundef zeroext 1) #16
  %741 = load ptr, ptr %23, align 8, !tbaa !113
  %742 = getelementptr inbounds %struct.ParticleSystem, ptr %741, i64 0, i32 42
  store ptr %740, ptr %742, align 8, !tbaa !366
  call void @precalc_guides(ptr noundef nonnull %7, ptr noundef %740) #16
  call fastcc void @psys_update_path_cache(ptr noundef nonnull %7, float noundef %21)
  %743 = getelementptr inbounds %struct.ParticleSystem, ptr %354, i64 0, i32 25
  %744 = load i32, ptr %743, align 4, !tbaa !50
  %745 = or i32 %744, 32
  store i32 %745, ptr %743, align 4, !tbaa !50
  br label %1082

746:                                              ; preds = %176
  %747 = load ptr, ptr %23, align 8, !tbaa !113
  %748 = getelementptr inbounds %struct.ParticleSystem, ptr %747, i64 0, i32 3
  %749 = load ptr, ptr %748, align 8, !tbaa !64
  %750 = icmp eq ptr %749, null
  br i1 %750, label %1082, label %751

751:                                              ; preds = %746
  %752 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %752(ptr noundef nonnull %749) #16
  store ptr null, ptr %748, align 8, !tbaa !64
  %753 = getelementptr inbounds %struct.ParticleSystem, ptr %747, i64 0, i32 26
  store i32 0, ptr %753, align 8, !tbaa !55
  br label %1082

754:                                              ; preds = %176
  %755 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 11
  %756 = load i16, ptr %755, align 8, !tbaa !51
  switch i16 %756, label %1081 [
    i16 0, label %757
    i16 2, label %757
  ]

757:                                              ; preds = %754, %754
  %758 = load ptr, ptr %8, align 8, !tbaa !34
  %759 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 39
  %760 = load ptr, ptr %759, align 8, !tbaa !43
  %761 = icmp eq ptr %760, null
  br i1 %761, label %785, label %762

762:                                              ; preds = %757
  %763 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 40
  %764 = load ptr, ptr %763, align 8, !tbaa !44
  %765 = getelementptr inbounds %struct.PointCache, ptr %764, i64 0, i32 2
  %766 = load i32, ptr %765, align 8, !tbaa !45
  %767 = and i32 %766, 1
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %782

769:                                              ; preds = %762
  %770 = getelementptr inbounds %struct.ParticleSettings, ptr %758, i64 0, i32 7
  %771 = load i16, ptr %770, align 8, !tbaa !47
  %772 = icmp eq i16 %771, 2
  br i1 %772, label %773, label %776

773:                                              ; preds = %769
  %774 = load i32, ptr %47, align 4, !tbaa !50
  %775 = and i32 %774, 4
  br label %782

776:                                              ; preds = %769
  %777 = getelementptr inbounds %struct.ParticleSettings, ptr %758, i64 0, i32 11
  %778 = load i16, ptr %777, align 8, !tbaa !51
  switch i16 %778, label %779 [
    i16 1, label %782
    i16 3, label %782
  ]

779:                                              ; preds = %776
  %780 = icmp eq i16 %778, 4
  %781 = zext i1 %780 to i32
  br label %782

782:                                              ; preds = %779, %776, %776, %773, %762
  %783 = phi i32 [ %775, %773 ], [ 0, %762 ], [ 1, %776 ], [ %781, %779 ], [ 1, %776 ]
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %805, label %785

785:                                              ; preds = %782, %757
  %786 = getelementptr inbounds %struct.ParticleSettings, ptr %758, i64 0, i32 89
  %787 = load i32, ptr %786, align 4, !tbaa !52
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %793, label %789

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.ParticleSettings, ptr %758, i64 0, i32 19
  %791 = load i16, ptr %790, align 4, !tbaa !53
  %792 = icmp eq i16 %791, 0
  br i1 %792, label %793, label %805

793:                                              ; preds = %789, %785
  %794 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 40
  %795 = load ptr, ptr %794, align 8, !tbaa !44
  %796 = getelementptr inbounds %struct.PointCache, ptr %795, i64 0, i32 2
  %797 = load i32, ptr %796, align 8, !tbaa !45
  %798 = and i32 %797, 8
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %805

800:                                              ; preds = %793
  %801 = getelementptr inbounds %struct.ParticleSettings, ptr %758, i64 0, i32 30
  %802 = load i16, ptr %801, align 2, !tbaa !54
  %803 = sitofp i16 %802 to float
  %804 = fdiv float %803, 1.000000e+02
  br label %805

805:                                              ; preds = %782, %789, %793, %800
  %806 = phi float [ %804, %800 ], [ 1.000000e+00, %793 ], [ 1.000000e+00, %789 ], [ 1.000000e+00, %782 ]
  %807 = load i16, ptr %50, align 4, !tbaa !316
  %808 = and i16 %807, 16
  %809 = icmp eq i16 %808, 0
  br i1 %809, label %811, label %810

810:                                              ; preds = %805
  call void @psys_reset(ptr noundef %2, i32 noundef 1)
  br label %811

811:                                              ; preds = %810, %805
  %812 = load ptr, ptr %23, align 8, !tbaa !113
  %813 = getelementptr inbounds %struct.ParticleSystem, ptr %812, i64 0, i32 26
  %814 = load i32, ptr %813, align 8, !tbaa !55
  %815 = getelementptr inbounds %struct.ParticleSystem, ptr %812, i64 0, i32 2
  %816 = load ptr, ptr %815, align 8, !tbaa !34
  %817 = getelementptr inbounds %struct.ParticleSettings, ptr %816, i64 0, i32 9
  %818 = load i16, ptr %817, align 4, !tbaa !56
  %819 = icmp eq i16 %818, 2
  br i1 %819, label %820, label %829

820:                                              ; preds = %811
  %821 = getelementptr inbounds %struct.ParticleSettings, ptr %816, i64 0, i32 8
  %822 = load i16, ptr %821, align 2, !tbaa !57
  %823 = icmp eq i16 %822, 0
  br i1 %823, label %829, label %824

824:                                              ; preds = %820
  %825 = getelementptr inbounds %struct.ParticleSettings, ptr %816, i64 0, i32 65
  %826 = load i32, ptr %825, align 4, !tbaa !58
  %827 = mul nsw i32 %826, %826
  %828 = mul nsw i32 %827, %826
  br label %832

829:                                              ; preds = %820, %811
  %830 = getelementptr inbounds %struct.ParticleSettings, ptr %816, i64 0, i32 63
  %831 = load i32, ptr %830, align 4, !tbaa !59
  br label %832

832:                                              ; preds = %829, %824
  %833 = phi i32 [ %831, %829 ], [ %828, %824 ]
  %834 = getelementptr inbounds %struct.ParticleSystem, ptr %812, i64 0, i32 27
  %835 = load i32, ptr %834, align 4, !tbaa !60
  %836 = sub nsw i32 %833, %835
  %837 = icmp eq i32 %836, %814
  br i1 %837, label %839, label %838

838:                                              ; preds = %832
  call fastcc void @realloc_particles(ptr noundef nonnull %7, i32 noundef %836)
  br label %839

839:                                              ; preds = %832, %838
  %840 = icmp eq i32 %836, %814
  br i1 %840, label %841, label %845

841:                                              ; preds = %839
  %842 = load i16, ptr %50, align 4, !tbaa !316
  %843 = and i16 %842, 16
  %844 = icmp eq i16 %843, 0
  br i1 %844, label %852, label %845

845:                                              ; preds = %841, %839
  call void @free_keyed_keys(ptr noundef %2) #16
  %846 = load i16, ptr %40, align 2, !tbaa !57
  %847 = sext i16 %846 to i32
  call fastcc void @distribute_particles(ptr noundef nonnull %7, i32 noundef %847)
  call fastcc void @initialize_all_particles(ptr noundef nonnull %7)
  %848 = load ptr, ptr %25, align 8, !tbaa !146
  %849 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %848, i64 0, i32 6
  %850 = load i16, ptr %849, align 4, !tbaa !314
  %851 = or i16 %850, 1
  store i16 %851, ptr %849, align 4, !tbaa !314
  br label %852

852:                                              ; preds = %845, %841
  %853 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %854 = load i32, ptr %853, align 8, !tbaa !55
  %855 = icmp sgt i32 %854, 0
  br i1 %855, label %856, label %917

856:                                              ; preds = %852
  %857 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %858 = load ptr, ptr %857, align 8, !tbaa !64
  %859 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 82
  %860 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 83
  %861 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 23
  %862 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 23
  br label %863

863:                                              ; preds = %856, %912
  %864 = phi i32 [ 0, %856 ], [ %913, %912 ]
  %865 = phi ptr [ %858, %856 ], [ %914, %912 ]
  %866 = getelementptr inbounds %struct.ParticleData, ptr %865, i64 0, i32 17
  %867 = load i16, ptr %866, align 4, !tbaa !65
  %868 = and i16 %867, 1
  %869 = icmp eq i16 %868, 0
  br i1 %869, label %870, label %912

870:                                              ; preds = %863
  %871 = load float, ptr %859, align 8, !tbaa !268
  %872 = getelementptr inbounds %struct.ParticleData, ptr %865, i64 0, i32 13
  store float %871, ptr %872, align 4, !tbaa !236
  %873 = load float, ptr %860, align 4, !tbaa !334
  %874 = fcmp ogt float %873, 0.000000e+00
  br i1 %874, label %875, label %893

875:                                              ; preds = %870
  %876 = add nuw nsw i32 %864, 1
  %877 = load i32, ptr %861, align 4, !tbaa !150
  %878 = srem i32 %877, 1024
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %879
  %881 = load i32, ptr %880, align 4, !tbaa !95
  %882 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %879
  %883 = load i32, ptr %882, align 4, !tbaa !95
  %884 = mul i32 %883, %876
  %885 = add i32 %884, %881
  %886 = and i32 %885, 1023
  %887 = zext nneg i32 %886 to i64
  %888 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %887
  %889 = load float, ptr %888, align 4, !tbaa !105
  %890 = fneg float %873
  %891 = call float @llvm.fmuladd.f32(float %890, float %889, float 1.000000e+00)
  %892 = fmul float %871, %891
  store float %892, ptr %872, align 4, !tbaa !236
  br label %893

893:                                              ; preds = %875, %870
  call void @reset_particle(ptr noundef nonnull %7, ptr noundef %865, float noundef 0.000000e+00, float noundef %21)
  %894 = load i32, ptr %862, align 4, !tbaa !150
  %895 = srem i32 %894, 1024
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %896
  %898 = load i32, ptr %897, align 4, !tbaa !95
  %899 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %896
  %900 = load i32, ptr %899, align 4, !tbaa !95
  %901 = mul i32 %900, %864
  %902 = add i32 %901, %898
  %903 = and i32 %902, 1023
  %904 = zext nneg i32 %903 to i64
  %905 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %904
  %906 = load float, ptr %905, align 4, !tbaa !105
  %907 = fcmp ogt float %906, %806
  %908 = load i16, ptr %866, align 4, !tbaa !65
  %909 = and i16 %908, -3
  %910 = select i1 %907, i16 2, i16 0
  %911 = or disjoint i16 %909, %910
  store i16 %911, ptr %866, align 4, !tbaa !65
  br label %912

912:                                              ; preds = %893, %863
  %913 = add nuw nsw i32 %864, 1
  %914 = getelementptr inbounds %struct.ParticleData, ptr %865, i64 1
  %915 = load i32, ptr %853, align 8, !tbaa !55
  %916 = icmp slt i32 %913, %915
  br i1 %916, label %863, label %917, !llvm.loop !367

917:                                              ; preds = %912, %852
  %918 = load i16, ptr %755, align 8, !tbaa !51
  %919 = icmp eq i16 %918, 2
  br i1 %919, label %920, label %1082

920:                                              ; preds = %917
  call void @psys_count_keyed_targets(ptr noundef nonnull %7)
  %921 = load ptr, ptr %23, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %922 = getelementptr inbounds %struct.ParticleSystem, ptr %921, i64 0, i32 26
  %923 = load i32, ptr %922, align 8, !tbaa !55
  %924 = getelementptr inbounds %struct.ParticleSystem, ptr %921, i64 0, i32 33
  %925 = load i16, ptr %924, align 8, !tbaa !61
  %926 = sext i16 %925 to i32
  %927 = load ptr, ptr %7, align 8, !tbaa !102
  store ptr %927, ptr %4, align 8, !tbaa !102
  %928 = icmp eq i16 %925, 0
  br i1 %928, label %929, label %933

929:                                              ; preds = %920
  call void @free_keyed_keys(ptr noundef %921) #16
  %930 = getelementptr inbounds %struct.ParticleSystem, ptr %921, i64 0, i32 25
  %931 = load i32, ptr %930, align 4, !tbaa !50
  %932 = and i32 %931, -1025
  store i32 %932, ptr %930, align 4, !tbaa !50
  br label %1078

933:                                              ; preds = %920
  %934 = icmp eq i32 %923, 0
  br i1 %934, label %962, label %935

935:                                              ; preds = %933
  %936 = getelementptr inbounds %struct.ParticleSystem, ptr %921, i64 0, i32 3
  %937 = load ptr, ptr %936, align 8, !tbaa !64
  %938 = getelementptr inbounds %struct.ParticleData, ptr %937, i64 0, i32 5
  %939 = load i32, ptr %938, align 8, !tbaa !327
  %940 = icmp eq i32 %939, %926
  br i1 %940, label %962, label %941

941:                                              ; preds = %935
  call void @free_keyed_keys(ptr noundef %921) #16
  %942 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %943 = mul nsw i32 %923, %926
  %944 = sext i32 %943 to i64
  %945 = mul nsw i64 %944, 56
  %946 = call ptr %942(i64 noundef %945, ptr noundef nonnull @.str.24) #16
  %947 = load i32, ptr %922, align 8, !tbaa !55
  %948 = icmp sgt i32 %947, 0
  br i1 %948, label %949, label %962

949:                                              ; preds = %941
  %950 = load ptr, ptr %936, align 8, !tbaa !64
  %951 = sext i16 %925 to i64
  br label %952

952:                                              ; preds = %949, %952
  %953 = phi ptr [ %950, %949 ], [ %960, %952 ]
  %954 = phi ptr [ %946, %949 ], [ %958, %952 ]
  %955 = phi i32 [ 0, %949 ], [ %959, %952 ]
  %956 = getelementptr inbounds %struct.ParticleData, ptr %953, i64 0, i32 3
  store ptr %954, ptr %956, align 8, !tbaa !368
  %957 = getelementptr inbounds %struct.ParticleData, ptr %953, i64 0, i32 5
  store i32 %926, ptr %957, align 8, !tbaa !327
  %958 = getelementptr inbounds %struct.ParticleKey, ptr %954, i64 %951
  %959 = add nuw nsw i32 %955, 1
  %960 = getelementptr inbounds %struct.ParticleData, ptr %953, i64 1
  %961 = icmp eq i32 %959, %947
  br i1 %961, label %962, label %952, !llvm.loop !369

962:                                              ; preds = %952, %941, %935, %933
  %963 = getelementptr inbounds %struct.ParticleSystem, ptr %921, i64 0, i32 25
  %964 = load i32, ptr %963, align 4, !tbaa !50
  %965 = and i32 %964, -1025
  store i32 %965, ptr %963, align 4, !tbaa !50
  %966 = getelementptr inbounds %struct.ParticleSystem, ptr %921, i64 0, i32 17
  %967 = add nsw i32 %926, -1
  %968 = icmp sgt i16 %925, 0
  br i1 %968, label %969, label %1075

969:                                              ; preds = %962
  %970 = load ptr, ptr %966, align 8, !tbaa !208
  %971 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 1
  %972 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 2
  %973 = getelementptr inbounds %struct.ParticleSystem, ptr %921, i64 0, i32 3
  %974 = icmp eq i16 %925, 1
  %975 = add nsw i32 %926, -1
  %976 = sitofp i32 %975 to float
  br label %977

977:                                              ; preds = %969, %1071
  %978 = phi ptr [ %970, %969 ], [ %1072, %1071 ]
  %979 = phi i32 [ 0, %969 ], [ %1073, %1071 ]
  %980 = getelementptr inbounds %struct.ParticleTarget, ptr %978, i64 0, i32 2
  %981 = load ptr, ptr %980, align 8, !tbaa !204
  %982 = icmp eq ptr %981, null
  %983 = load ptr, ptr %22, align 8
  %984 = select i1 %982, ptr %983, ptr %981
  store ptr %984, ptr %971, align 8, !tbaa !112
  %985 = getelementptr inbounds %struct.Object, ptr %984, i64 0, i32 109
  %986 = getelementptr inbounds %struct.ParticleTarget, ptr %978, i64 0, i32 3
  %987 = load i32, ptr %986, align 8, !tbaa !206
  %988 = add nsw i32 %987, -1
  %989 = call ptr @BLI_findlink(ptr noundef nonnull %985, i32 noundef %988) #16
  store ptr %989, ptr %972, align 8, !tbaa !113
  %990 = getelementptr inbounds %struct.ParticleSystem, ptr %989, i64 0, i32 25
  %991 = load i32, ptr %990, align 4, !tbaa !50
  %992 = and i32 %991, 1024
  %993 = and i32 %991, -1025
  store i32 %993, ptr %990, align 4, !tbaa !50
  %994 = load i32, ptr %922, align 8, !tbaa !55
  %995 = icmp sgt i32 %994, 0
  br i1 %995, label %996, label %1046

996:                                              ; preds = %977
  %997 = load ptr, ptr %973, align 8, !tbaa !64
  %998 = sext i32 %979 to i64
  %999 = getelementptr inbounds %struct.ParticleTarget, ptr %978, i64 0, i32 6
  %1000 = getelementptr inbounds %struct.ParticleTarget, ptr %978, i64 0, i32 7
  %1001 = icmp slt i32 %979, %967
  %1002 = sitofp i32 %979 to float
  %1003 = fdiv float %1002, %976
  br label %1004

1004:                                             ; preds = %996, %1041
  %1005 = phi ptr [ %997, %996 ], [ %1043, %1041 ]
  %1006 = phi i32 [ 0, %996 ], [ %1042, %1041 ]
  %1007 = getelementptr inbounds %struct.ParticleData, ptr %1005, i64 0, i32 3
  %1008 = load ptr, ptr %1007, align 8, !tbaa !368
  %1009 = getelementptr inbounds %struct.ParticleKey, ptr %1008, i64 %998
  %1010 = getelementptr inbounds %struct.ParticleKey, ptr %1008, i64 %998, i32 4
  store float -1.000000e+00, ptr %1010, align 4, !tbaa !257
  %1011 = load ptr, ptr %972, align 8, !tbaa !113
  %1012 = getelementptr inbounds %struct.ParticleSystem, ptr %1011, i64 0, i32 26
  %1013 = load i32, ptr %1012, align 8, !tbaa !55
  %1014 = srem i32 %1006, %1013
  %1015 = call i32 @psys_get_particle_state(ptr noundef nonnull %4, i32 noundef %1014, ptr noundef %1009, i32 noundef 1) #16
  %1016 = load i32, ptr %963, align 4, !tbaa !50
  %1017 = and i32 %1016, 8
  %1018 = icmp eq i32 %1017, 0
  %1019 = getelementptr inbounds %struct.ParticleData, ptr %1005, i64 0, i32 6
  %1020 = load float, ptr %1019, align 4, !tbaa !141
  br i1 %1018, label %1035, label %1021

1021:                                             ; preds = %1004
  %1022 = load float, ptr %999, align 8, !tbaa !370
  %1023 = fadd float %1020, %1022
  store float %1023, ptr %1010, align 4, !tbaa !257
  %1024 = load float, ptr %1000, align 4, !tbaa !209
  %1025 = fcmp une float %1024, 0.000000e+00
  %1026 = select i1 %1025, i1 %1001, i1 false
  br i1 %1026, label %1027, label %1041

1027:                                             ; preds = %1021
  %1028 = getelementptr inbounds %struct.ParticleKey, ptr %1009, i64 1
  call void @copy_particle_key(ptr noundef nonnull %1028, ptr noundef %1009, i32 noundef 1) #16
  %1029 = load float, ptr %1019, align 4, !tbaa !141
  %1030 = load float, ptr %999, align 8, !tbaa !370
  %1031 = fadd float %1029, %1030
  %1032 = load float, ptr %1000, align 4, !tbaa !209
  %1033 = fadd float %1031, %1032
  %1034 = getelementptr inbounds %struct.ParticleKey, ptr %1009, i64 1, i32 4
  store float %1033, ptr %1034, align 4, !tbaa !257
  br label %1041

1035:                                             ; preds = %1004
  br i1 %974, label %1040, label %1036

1036:                                             ; preds = %1035
  %1037 = getelementptr inbounds %struct.ParticleData, ptr %1005, i64 0, i32 7
  %1038 = load float, ptr %1037, align 8, !tbaa !194
  %1039 = call float @llvm.fmuladd.f32(float %1003, float %1038, float %1020)
  store float %1039, ptr %1010, align 4, !tbaa !257
  br label %1041

1040:                                             ; preds = %1035
  store float %1020, ptr %1010, align 4, !tbaa !257
  br label %1041

1041:                                             ; preds = %1040, %1036, %1027, %1021
  %1042 = add nuw nsw i32 %1006, 1
  %1043 = getelementptr inbounds %struct.ParticleData, ptr %1005, i64 1
  %1044 = load i32, ptr %922, align 8, !tbaa !55
  %1045 = icmp slt i32 %1042, %1044
  br i1 %1045, label %1004, label %1046, !llvm.loop !371

1046:                                             ; preds = %1041, %977
  %1047 = load i32, ptr %963, align 4, !tbaa !50
  %1048 = and i32 %1047, 8
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1056, label %1050

1050:                                             ; preds = %1046
  %1051 = getelementptr inbounds %struct.ParticleTarget, ptr %978, i64 0, i32 7
  %1052 = load float, ptr %1051, align 4, !tbaa !209
  %1053 = fcmp une float %1052, 0.000000e+00
  br i1 %1053, label %1054, label %1056

1054:                                             ; preds = %1050
  %1055 = add nsw i32 %979, 1
  br label %1056

1056:                                             ; preds = %1054, %1050, %1046
  %1057 = phi i32 [ %1055, %1054 ], [ %979, %1050 ], [ %979, %1046 ]
  %1058 = load ptr, ptr %972, align 8, !tbaa !113
  %1059 = getelementptr inbounds %struct.ParticleSystem, ptr %1058, i64 0, i32 25
  %1060 = load i32, ptr %1059, align 4, !tbaa !50
  %1061 = or i32 %1060, %992
  store i32 %1061, ptr %1059, align 4, !tbaa !50
  %1062 = load ptr, ptr %978, align 8, !tbaa !210
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1069, label %1064

1064:                                             ; preds = %1056
  %1065 = getelementptr inbounds %struct.ParticleTarget, ptr %1062, i64 0, i32 4
  %1066 = load i16, ptr %1065, align 4, !tbaa !207
  %1067 = and i16 %1066, 2
  %1068 = icmp eq i16 %1067, 0
  br i1 %1068, label %1069, label %1071

1069:                                             ; preds = %1064, %1056
  %1070 = load ptr, ptr %966, align 8, !tbaa !208
  br label %1071

1071:                                             ; preds = %1069, %1064
  %1072 = phi ptr [ %1070, %1069 ], [ %1062, %1064 ]
  %1073 = add nsw i32 %1057, 1
  %1074 = icmp slt i32 %1073, %926
  br i1 %1074, label %977, label %1075, !llvm.loop !372

1075:                                             ; preds = %1071, %962
  %1076 = load i32, ptr %963, align 4, !tbaa !50
  %1077 = or i32 %1076, 1024
  store i32 %1077, ptr %963, align 4, !tbaa !50
  br label %1078

1078:                                             ; preds = %929, %1075
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  %1079 = fptosi float %21 to i32
  %1080 = sitofp i32 %1079 to float
  call fastcc void @psys_update_path_cache(ptr noundef nonnull %7, float noundef %1080)
  br label %1082

1081:                                             ; preds = %754
  call fastcc void @system_step(ptr noundef nonnull %7, float noundef %21)
  br label %1082

1082:                                             ; preds = %751, %746, %917, %1078, %1081, %349, %730
  %1083 = load i32, ptr %47, align 4, !tbaa !50
  %1084 = and i32 %1083, 16384
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1089, label %1086

1086:                                             ; preds = %1082
  call fastcc void @evaluate_emitter_anim(ptr noundef %0, ptr noundef %1, float noundef %21)
  %1087 = load i32, ptr %47, align 4, !tbaa !50
  %1088 = and i32 %1087, -16385
  store i32 %1088, ptr %47, align 4, !tbaa !50
  br label %1089

1089:                                             ; preds = %1086, %1082
  %1090 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 20
  store float %21, ptr %1090, align 8, !tbaa !161
  store i16 0, ptr %50, align 4, !tbaa !316
  %1091 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 39
  %1092 = load ptr, ptr %1091, align 8, !tbaa !43
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1094, label %1098

1094:                                             ; preds = %1089
  %1095 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 19
  %1096 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1097 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %1095, ptr noundef nonnull %1096) #16
  br label %1098

1098:                                             ; preds = %1089, %1094, %35, %30, %17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #16
  ret void
}

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #3

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @system_step(ptr noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.SPHRangeData, align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.BoidBrainData, align 8
  %6 = alloca %struct.ParticleTexture, align 4
  %7 = alloca %struct.SPHData, align 8
  %8 = alloca %struct.PTCacheID, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 40
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 100, ptr %10, align 4, !tbaa !95
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 7
  %18 = load i16, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %72, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !45
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 20
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %26) #16
  br label %27

27:                                               ; preds = %20, %25
  %28 = load i32, ptr %21, align 8, !tbaa !45
  %29 = and i32 %28, 9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 5
  %34 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 6
  %35 = load ptr, ptr %13, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 53
  %37 = load float, ptr %36, align 4, !tbaa !139
  %38 = fptosi float %37 to i32
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 1)
  store i32 %39, ptr %33, align 4, !tbaa !95
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 54
  %41 = load float, ptr %40, align 8, !tbaa !140
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 55
  %43 = load float, ptr %42, align 4, !tbaa !195
  %44 = fadd float %41, %43
  %45 = fadd float %44, 1.000000e+00
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds %struct.Scene, ptr %32, i64 0, i32 22, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !214
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 %46)
  store i32 %49, ptr %34, align 4, !tbaa !95
  br label %50

50:                                               ; preds = %31, %27
  %51 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !112
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %8, ptr noundef %52, ptr noundef %12) #16
  %53 = load ptr, ptr %0, align 8, !tbaa !102
  call void @BKE_ptcache_id_time(ptr noundef nonnull %8, ptr noundef %53, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null) #16
  %54 = load i32, ptr %9, align 4, !tbaa !95
  %55 = sitofp i32 %54 to float
  %56 = fcmp oeq float %55, %1
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load ptr, ptr %0, align 8, !tbaa !102
  %59 = call i32 @BKE_ptcache_id_reset(ptr noundef %58, ptr noundef nonnull %8, i32 noundef 2) #16
  %60 = load i32, ptr %9, align 4, !tbaa !95
  call void @BKE_ptcache_validate(ptr noundef %16, i32 noundef %60) #16
  %61 = load i32, ptr %21, align 8, !tbaa !45
  %62 = and i32 %61, -259
  store i32 %62, ptr %21, align 8, !tbaa !45
  br label %63

63:                                               ; preds = %57, %50
  %64 = load i32, ptr %9, align 4, !tbaa !95
  %65 = sitofp i32 %64 to float
  %66 = fcmp ogt float %65, %1
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %10, align 4, !tbaa !95
  %69 = sitofp i32 %68 to float
  %70 = fcmp olt float %69, %1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %63, %71, %67, %2
  %73 = phi float [ %69, %71 ], [ %1, %67 ], [ %1, %2 ], [ %65, %63 ]
  %74 = phi ptr [ %8, %71 ], [ %8, %67 ], [ null, %2 ], [ %8, %63 ]
  %75 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 26
  %76 = load i32, ptr %75, align 8, !tbaa !55
  %77 = load ptr, ptr %11, align 8, !tbaa !113
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %77, i64 0, i32 26
  %79 = load i32, ptr %78, align 8, !tbaa !55
  %80 = icmp eq ptr %74, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.ParticleSystem, ptr %77, i64 0, i32 40
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct.PointCache, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !45
  %86 = and i32 %85, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.PTCacheID, ptr %74, i64 0, i32 25
  %90 = load ptr, ptr %89, align 8, !tbaa !373
  %91 = getelementptr inbounds %struct.PointCache, ptr %90, i64 0, i32 11
  %92 = load i32, ptr %91, align 4, !tbaa !374
  br label %117

93:                                               ; preds = %81, %72
  %94 = getelementptr inbounds %struct.ParticleSystem, ptr %77, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = getelementptr inbounds %struct.ParticleSettings, ptr %95, i64 0, i32 9
  %97 = load i16, ptr %96, align 4, !tbaa !56
  %98 = icmp eq i16 %97, 2
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.ParticleSettings, ptr %95, i64 0, i32 8
  %101 = load i16, ptr %100, align 2, !tbaa !57
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ParticleSettings, ptr %95, i64 0, i32 65
  %105 = load i32, ptr %104, align 4, !tbaa !58
  %106 = mul nsw i32 %105, %105
  %107 = mul nsw i32 %106, %105
  %108 = getelementptr inbounds %struct.ParticleSystem, ptr %77, i64 0, i32 27
  %109 = load i32, ptr %108, align 4, !tbaa !60
  %110 = sub nsw i32 %107, %109
  br label %117

111:                                              ; preds = %99, %93
  %112 = getelementptr inbounds %struct.ParticleSettings, ptr %95, i64 0, i32 63
  %113 = load i32, ptr %112, align 4, !tbaa !59
  %114 = getelementptr inbounds %struct.ParticleSystem, ptr %77, i64 0, i32 27
  %115 = load i32, ptr %114, align 4, !tbaa !60
  %116 = sub nsw i32 %113, %115
  br label %117

117:                                              ; preds = %111, %103, %88
  %118 = phi i32 [ %92, %88 ], [ %110, %103 ], [ %116, %111 ]
  %119 = icmp eq i32 %118, %79
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call fastcc void @realloc_particles(ptr noundef %0, i32 noundef %118)
  br label %121

121:                                              ; preds = %117, %120
  %122 = icmp eq i32 %118, %79
  br i1 %122, label %123, label %128

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 31
  %125 = load i16, ptr %124, align 4, !tbaa !316
  %126 = and i16 %125, 16
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %162, label %128

128:                                              ; preds = %123, %121
  %129 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 8
  %130 = load i16, ptr %129, align 2, !tbaa !57
  %131 = sext i16 %130 to i32
  call fastcc void @distribute_particles(ptr noundef %0, i32 noundef %131)
  call fastcc void @initialize_all_particles(ptr noundef %0)
  %132 = load ptr, ptr %11, align 8, !tbaa !113
  %133 = getelementptr inbounds %struct.ParticleSystem, ptr %132, i64 0, i32 26
  %134 = load i32, ptr %133, align 8, !tbaa !55
  %135 = icmp slt i32 %76, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.ParticleSystem, ptr %132, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !64
  %139 = sext i32 %76 to i64
  %140 = getelementptr inbounds %struct.ParticleData, ptr %138, i64 %139
  br label %141

141:                                              ; preds = %136, %141
  %142 = phi ptr [ %145, %141 ], [ %140, %136 ]
  %143 = phi i32 [ %144, %141 ], [ %76, %136 ]
  call void @reset_particle(ptr noundef %0, ptr noundef %142, float noundef 0.000000e+00, float noundef %1)
  %144 = add i32 %143, 1
  %145 = getelementptr inbounds %struct.ParticleData, ptr %142, i64 1
  %146 = icmp eq i32 %144, %134
  br i1 %146, label %147, label %141, !llvm.loop !375

147:                                              ; preds = %141, %128
  %148 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 43
  %149 = load ptr, ptr %148, align 8, !tbaa !74
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %152(ptr noundef nonnull %149) #16
  store ptr null, ptr %148, align 8, !tbaa !74
  br label %153

153:                                              ; preds = %151, %147
  %154 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 45
  store i32 0, ptr %154, align 4, !tbaa !75
  %155 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 44
  store i32 0, ptr %155, align 8, !tbaa !76
  %156 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !146
  %158 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %157, i64 0, i32 6
  %159 = load i16, ptr %158, align 4, !tbaa !314
  %160 = or i16 %159, 1
  store i16 %160, ptr %158, align 4, !tbaa !314
  %161 = fptoui float %1 to i32
  call void @BKE_ptcache_id_clear(ptr noundef %74, i32 noundef 3, i32 noundef %161) #16
  br label %162

162:                                              ; preds = %153, %123
  br i1 %80, label %239, label %163

163:                                              ; preds = %162
  %164 = call i32 @BKE_ptcache_read(ptr noundef nonnull %74, float noundef %73) #16
  %165 = add i32 %164, -1
  %166 = icmp ult i32 %165, 2
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = icmp eq i32 %164, 2
  call fastcc void @cached_step(ptr noundef %0, float noundef %1)
  call fastcc void @update_children(ptr noundef %0)
  call fastcc void @psys_update_path_cache(ptr noundef %0, float noundef %1)
  %169 = fptosi float %73 to i32
  call void @BKE_ptcache_validate(ptr noundef %16, i32 noundef %169) #16
  br i1 %168, label %170, label %1104

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !45
  %173 = and i32 %172, 258
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %1104, label %175

175:                                              ; preds = %170
  %176 = call i32 @BKE_ptcache_write(ptr noundef nonnull %74, i32 noundef %169) #16
  br label %1104

177:                                              ; preds = %163
  %178 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !45
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %216, label %182

182:                                              ; preds = %177
  %183 = load i32, ptr %75, align 8, !tbaa !55
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !64
  br label %188

188:                                              ; preds = %188, %185
  %189 = phi i32 [ %194, %188 ], [ 0, %185 ]
  %190 = phi ptr [ %195, %188 ], [ %187, %185 ]
  %191 = getelementptr inbounds %struct.ParticleData, ptr %190, i64 0, i32 17
  %192 = load i16, ptr %191, align 4, !tbaa !65
  %193 = or i16 %192, 2
  store i16 %193, ptr %191, align 4, !tbaa !65
  %194 = add nuw nsw i32 %189, 1
  %195 = getelementptr inbounds %struct.ParticleData, ptr %190, i64 1
  %196 = icmp eq i32 %194, %183
  br i1 %196, label %197, label %188, !llvm.loop !68

197:                                              ; preds = %188, %182
  %198 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 4
  %199 = load ptr, ptr %198, align 8, !tbaa !71
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %202(ptr noundef nonnull %199) #16
  store ptr null, ptr %198, align 8, !tbaa !71
  br label %203

203:                                              ; preds = %201, %197
  %204 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 28
  store i32 0, ptr %204, align 8, !tbaa !73
  %205 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !62
  call void @psys_free_path_cache(ptr noundef %12, ptr noundef %206) #16
  %207 = load ptr, ptr %15, align 8, !tbaa !44
  call void @BKE_ptcache_invalidate(ptr noundef %207) #16
  %208 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 43
  %209 = load ptr, ptr %208, align 8, !tbaa !74
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %203
  %212 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %212(ptr noundef nonnull %209) #16
  store ptr null, ptr %208, align 8, !tbaa !74
  br label %213

213:                                              ; preds = %203, %211
  %214 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 45
  store i32 0, ptr %214, align 4, !tbaa !75
  %215 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 44
  store i32 0, ptr %215, align 8, !tbaa !76
  br label %1104

216:                                              ; preds = %177
  %217 = icmp eq i32 %164, 3
  br i1 %217, label %218, label %223

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 4
  %220 = load i32, ptr %219, align 8, !tbaa !376
  %221 = sitofp i32 %220 to float
  %222 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 20
  store float %221, ptr %222, align 8, !tbaa !161
  call fastcc void @cached_step(ptr noundef %0, float noundef %221)
  br label %223

223:                                              ; preds = %218, %216
  %224 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 20
  %225 = load float, ptr %224, align 8, !tbaa !161
  %226 = load i32, ptr %9, align 4, !tbaa !95
  %227 = sitofp i32 %226 to float
  %228 = fcmp oeq float %225, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %223
  %230 = load i32, ptr %178, align 8, !tbaa !45
  %231 = and i32 %230, 2
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 8
  %235 = load i32, ptr %234, align 8, !tbaa !377
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %233, %229
  %238 = call i32 @BKE_ptcache_write(ptr noundef nonnull %74, i32 noundef %226) #16
  br label %240

239:                                              ; preds = %162
  call void @BKE_ptcache_invalidate(ptr noundef %16) #16
  br label %240

240:                                              ; preds = %237, %233, %223, %239
  %241 = load ptr, ptr %13, align 8, !tbaa !34
  %242 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 39
  %243 = load ptr, ptr %242, align 8, !tbaa !43
  %244 = icmp eq ptr %243, null
  br i1 %244, label %268, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr %15, align 8, !tbaa !44
  %247 = getelementptr inbounds %struct.PointCache, ptr %246, i64 0, i32 2
  %248 = load i32, ptr %247, align 8, !tbaa !45
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.ParticleSettings, ptr %241, i64 0, i32 7
  %253 = load i16, ptr %252, align 8, !tbaa !47
  %254 = icmp eq i16 %253, 2
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 25
  %257 = load i32, ptr %256, align 4, !tbaa !50
  %258 = and i32 %257, 4
  br label %265

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.ParticleSettings, ptr %241, i64 0, i32 11
  %261 = load i16, ptr %260, align 8, !tbaa !51
  switch i16 %261, label %262 [
    i16 1, label %265
    i16 3, label %265
  ]

262:                                              ; preds = %259
  %263 = icmp eq i16 %261, 4
  %264 = zext i1 %263 to i32
  br label %265

265:                                              ; preds = %262, %259, %259, %255, %245
  %266 = phi i32 [ %258, %255 ], [ 0, %245 ], [ 1, %259 ], [ %264, %262 ], [ 1, %259 ]
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %287, label %268

268:                                              ; preds = %265, %240
  %269 = getelementptr inbounds %struct.ParticleSettings, ptr %241, i64 0, i32 89
  %270 = load i32, ptr %269, align 4, !tbaa !52
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.ParticleSettings, ptr %241, i64 0, i32 19
  %274 = load i16, ptr %273, align 4, !tbaa !53
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %272, %268
  %277 = load ptr, ptr %15, align 8, !tbaa !44
  %278 = getelementptr inbounds %struct.PointCache, ptr %277, i64 0, i32 2
  %279 = load i32, ptr %278, align 8, !tbaa !45
  %280 = and i32 %279, 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.ParticleSettings, ptr %241, i64 0, i32 30
  %284 = load i16, ptr %283, align 2, !tbaa !54
  %285 = sitofp i16 %284 to float
  %286 = fdiv float %285, 1.000000e+02
  br label %287

287:                                              ; preds = %265, %272, %276, %282
  %288 = phi float [ %286, %282 ], [ 1.000000e+00, %276 ], [ 1.000000e+00, %272 ], [ 1.000000e+00, %265 ]
  %289 = load i32, ptr %75, align 8, !tbaa !55
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %320

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !64
  %294 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 23
  %295 = load i32, ptr %294, align 4, !tbaa !150
  %296 = srem i32 %295, 1024
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !95
  %300 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %297
  %301 = load i32, ptr %300, align 4, !tbaa !95
  br label %302

302:                                              ; preds = %291, %302
  %303 = phi ptr [ %293, %291 ], [ %318, %302 ]
  %304 = phi i32 [ 0, %291 ], [ %317, %302 ]
  %305 = mul i32 %301, %304
  %306 = add i32 %305, %299
  %307 = and i32 %306, 1023
  %308 = zext nneg i32 %307 to i64
  %309 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %308
  %310 = load float, ptr %309, align 4, !tbaa !105
  %311 = fcmp ogt float %310, %288
  %312 = getelementptr inbounds %struct.ParticleData, ptr %303, i64 0, i32 17
  %313 = load i16, ptr %312, align 4, !tbaa !65
  %314 = and i16 %313, -3
  %315 = select i1 %311, i16 2, i16 0
  %316 = or disjoint i16 %314, %315
  store i16 %316, ptr %312, align 4, !tbaa !65
  %317 = add nuw nsw i32 %304, 1
  %318 = getelementptr inbounds %struct.ParticleData, ptr %303, i64 1
  %319 = icmp eq i32 %317, %289
  br i1 %319, label %320, label %302, !llvm.loop !378

320:                                              ; preds = %302, %287
  %321 = icmp eq i32 %289, 0
  br i1 %321, label %1092, label %322

322:                                              ; preds = %320
  %323 = fptosi float %1 to i32
  %324 = load i32, ptr %9, align 4, !tbaa !95
  %325 = icmp eq i32 %324, %323
  br i1 %325, label %326, label %334

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 53
  %328 = load float, ptr %327, align 4, !tbaa !139
  %329 = sitofp i32 %324 to float
  %330 = fcmp olt float %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = fptosi float %328 to i32
  %333 = sub nsw i32 %332, %324
  br label %334

334:                                              ; preds = %331, %326, %322
  %335 = phi i32 [ %333, %331 ], [ 0, %326 ], [ 0, %322 ]
  %336 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 67
  %337 = load i16, ptr %336, align 4, !tbaa !265
  %338 = and i16 %337, 1
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 22
  %342 = load i16, ptr %341, align 2, !tbaa !379
  %343 = sext i16 %342 to i32
  %344 = add nsw i32 %343, 1
  %345 = sitofp i32 %344 to float
  %346 = fdiv float 1.000000e+00, %345
  %347 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 49
  store float %346, ptr %347, align 8, !tbaa !380
  br label %362

348:                                              ; preds = %334
  br i1 %325, label %349, label %357

349:                                              ; preds = %348
  %350 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 22
  %351 = load i16, ptr %350, align 2, !tbaa !379
  %352 = sext i16 %351 to i32
  %353 = add nsw i32 %352, 1
  %354 = sitofp i32 %353 to float
  %355 = fdiv float 1.000000e+00, %354
  %356 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 49
  store float %355, ptr %356, align 8, !tbaa !380
  br label %362

357:                                              ; preds = %348
  %358 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 49
  %359 = load float, ptr %358, align 8, !tbaa !380
  %360 = fcmp olt float %359, 0x3F8446F860000000
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  store float 0x3F8446F860000000, ptr %358, align 8, !tbaa !380
  br label %362

362:                                              ; preds = %349, %361, %357, %340
  %363 = icmp slt i32 %335, 1
  br i1 %363, label %364, label %1092

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 49
  %366 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 5
  %367 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %368 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %369 = getelementptr inbounds %struct.BoidBrainData, ptr %5, i64 0, i32 1
  %370 = getelementptr inbounds %struct.BoidBrainData, ptr %5, i64 0, i32 3
  %371 = getelementptr inbounds %struct.BoidBrainData, ptr %5, i64 0, i32 4
  %372 = getelementptr inbounds %struct.BoidBrainData, ptr %5, i64 0, i32 2
  %373 = getelementptr inbounds %struct.BoidBrainData, ptr %5, i64 0, i32 11
  %374 = getelementptr inbounds %struct.ParticleTexture, ptr %6, i64 0, i32 4
  %375 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %376 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 2
  %377 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 5
  %378 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 5
  %379 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 4
  %380 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 2
  %381 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 6
  %382 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 1
  %383 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 3
  %384 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 7
  %385 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 8
  %386 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %387 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 8
  %388 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 8, i64 1
  %389 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 8, i64 2
  %390 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 7
  %391 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %392 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 8
  %393 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 8, i64 1
  %394 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 8, i64 2
  %395 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 7
  %396 = getelementptr inbounds %struct.SPHData, ptr %7, i64 0, i32 3
  %397 = getelementptr inbounds %struct.BoidBrainData, ptr %5, i64 0, i32 7
  %398 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %399 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %400 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %401 = getelementptr inbounds %struct.ParticleTexture, ptr %6, i64 0, i32 4
  %402 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 20
  br label %403

403:                                              ; preds = %364, %1089
  %404 = phi i32 [ %335, %364 ], [ %1090, %1089 ]
  %405 = load float, ptr %365, align 8, !tbaa !380
  %406 = fcmp ugt float %405, 1.000000e+00
  br i1 %406, label %1089, label %407

407:                                              ; preds = %403
  %408 = sitofp i32 %404 to float
  %409 = fadd float %408, %1
  br label %410

410:                                              ; preds = %407, %1085
  %411 = phi float [ %405, %407 ], [ %1086, %1085 ]
  %412 = phi float [ %405, %407 ], [ %1087, %1085 ]
  store float 0.000000e+00, ptr %366, align 8, !tbaa !381
  %413 = fadd float %409, %412
  %414 = fadd float %413, -1.000000e+00
  %415 = load ptr, ptr %11, align 8, !tbaa !113
  %416 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 2
  %417 = load ptr, ptr %416, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #16
  %418 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 20
  %419 = load float, ptr %418, align 8, !tbaa !161
  %420 = fsub float %414, %419
  %421 = call float @psys_get_timestep(ptr noundef %0) #16
  %422 = fmul float %420, %421
  %423 = fcmp olt float %420, 0.000000e+00
  br i1 %423, label %424, label %472

424:                                              ; preds = %410
  %425 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 26
  %426 = load i32, ptr %425, align 8, !tbaa !55
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %1045

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !64
  %431 = getelementptr inbounds %struct.ParticleSettings, ptr %417, i64 0, i32 82
  %432 = getelementptr inbounds %struct.ParticleSettings, ptr %417, i64 0, i32 83
  %433 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 23
  br label %434

434:                                              ; preds = %428, %467
  %435 = phi ptr [ %430, %428 ], [ %469, %467 ]
  %436 = phi i32 [ 0, %428 ], [ %468, %467 ]
  %437 = getelementptr inbounds %struct.ParticleData, ptr %435, i64 0, i32 17
  %438 = load i16, ptr %437, align 4, !tbaa !65
  %439 = and i16 %438, 1
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %441, label %467

441:                                              ; preds = %434
  call void @psys_get_texture(ptr noundef %0, ptr noundef %435, ptr noundef nonnull %6, i32 noundef 8, float noundef %414) #16
  %442 = load float, ptr %431, align 8, !tbaa !268
  %443 = load float, ptr %401, align 4, !tbaa !382
  %444 = fmul float %442, %443
  %445 = getelementptr inbounds %struct.ParticleData, ptr %435, i64 0, i32 13
  store float %444, ptr %445, align 4, !tbaa !236
  %446 = load float, ptr %432, align 4, !tbaa !334
  %447 = fcmp ogt float %446, 0.000000e+00
  br i1 %447, label %448, label %466

448:                                              ; preds = %441
  %449 = add nuw nsw i32 %436, 1
  %450 = load i32, ptr %433, align 4, !tbaa !150
  %451 = srem i32 %450, 1024
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %452
  %454 = load i32, ptr %453, align 4, !tbaa !95
  %455 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %452
  %456 = load i32, ptr %455, align 4, !tbaa !95
  %457 = mul i32 %456, %449
  %458 = add i32 %457, %454
  %459 = and i32 %458, 1023
  %460 = zext nneg i32 %459 to i64
  %461 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %460
  %462 = load float, ptr %461, align 4, !tbaa !105
  %463 = fneg float %446
  %464 = call float @llvm.fmuladd.f32(float %463, float %462, float 1.000000e+00)
  %465 = fmul float %444, %464
  store float %465, ptr %445, align 4, !tbaa !236
  br label %466

466:                                              ; preds = %448, %441
  call void @reset_particle(ptr noundef %0, ptr noundef %435, float noundef %422, float noundef %414)
  br label %467

467:                                              ; preds = %466, %434
  %468 = add nuw nsw i32 %436, 1
  %469 = getelementptr inbounds %struct.ParticleData, ptr %435, i64 1
  %470 = load i32, ptr %425, align 8, !tbaa !55
  %471 = icmp slt i32 %468, %470
  br i1 %471, label %434, label %1045, !llvm.loop !383

472:                                              ; preds = %410
  %473 = fptosi float %414 to i32
  %474 = add nsw i32 %473, 31415926
  %475 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 23
  %476 = load i32, ptr %475, align 4, !tbaa !150
  %477 = add nsw i32 %476, %474
  call void @BLI_srandom(i32 noundef %477) #16
  %478 = load i32, ptr %475, align 4, !tbaa !150
  %479 = add nsw i32 %478, %474
  %480 = call ptr @BLI_rng_new_srandom(i32 noundef %479) #16
  %481 = load ptr, ptr %11, align 8, !tbaa !113
  %482 = getelementptr inbounds %struct.ParticleSystem, ptr %481, i64 0, i32 42
  call void @pdEndEffectors(ptr noundef nonnull %482) #16
  %483 = load ptr, ptr %0, align 8, !tbaa !102
  %484 = load ptr, ptr %367, align 8, !tbaa !112
  %485 = load ptr, ptr %11, align 8, !tbaa !113
  %486 = getelementptr inbounds %struct.ParticleSystem, ptr %485, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !34
  %488 = getelementptr inbounds %struct.ParticleSettings, ptr %487, i64 0, i32 4
  %489 = load ptr, ptr %488, align 8, !tbaa !363
  %490 = call ptr @pdInitEffectors(ptr noundef %483, ptr noundef %484, ptr noundef %485, ptr noundef %489, i8 noundef zeroext 1) #16
  %491 = load ptr, ptr %11, align 8, !tbaa !113
  %492 = getelementptr inbounds %struct.ParticleSystem, ptr %491, i64 0, i32 42
  store ptr %490, ptr %492, align 8, !tbaa !366
  call void @precalc_guides(ptr noundef nonnull %0, ptr noundef %490) #16
  %493 = getelementptr inbounds %struct.ParticleSettings, ptr %417, i64 0, i32 7
  %494 = load i16, ptr %493, align 8, !tbaa !47
  %495 = icmp eq i16 %494, 2
  br i1 %495, label %500, label %496

496:                                              ; preds = %472
  %497 = load ptr, ptr %0, align 8, !tbaa !102
  %498 = load ptr, ptr %367, align 8, !tbaa !112
  %499 = call ptr @get_collider_cache(ptr noundef %497, ptr noundef %498, ptr noundef null) #16
  store ptr %499, ptr %368, align 8, !tbaa !384
  br label %500

500:                                              ; preds = %496, %472
  %501 = getelementptr inbounds %struct.ParticleSettings, ptr %417, i64 0, i32 11
  %502 = load i16, ptr %501, align 8, !tbaa !51
  switch i16 %502, label %539 [
    i16 3, label %503
    i16 4, label %521
  ]

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 17
  %505 = load ptr, ptr %504, align 8, !tbaa !208
  store ptr %0, ptr %5, align 8, !tbaa !385
  store ptr %417, ptr %369, align 8, !tbaa !387
  store float %414, ptr %370, align 4, !tbaa !388
  store float %420, ptr %371, align 8, !tbaa !389
  store float %421, ptr %372, align 8, !tbaa !390
  store ptr %480, ptr %373, align 8, !tbaa !391
  call void @psys_update_particle_tree(ptr noundef %415, float noundef %414)
  call void @boids_precalc_rules(ptr noundef %417, float noundef %414) #16
  %506 = icmp eq ptr %505, null
  br i1 %506, label %539, label %507

507:                                              ; preds = %503, %518
  %508 = phi ptr [ %519, %518 ], [ %505, %503 ]
  %509 = getelementptr inbounds %struct.ParticleTarget, ptr %508, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !204
  %511 = icmp eq ptr %510, null
  br i1 %511, label %518, label %512

512:                                              ; preds = %507
  %513 = getelementptr inbounds %struct.Object, ptr %510, i64 0, i32 109
  %514 = getelementptr inbounds %struct.ParticleTarget, ptr %508, i64 0, i32 3
  %515 = load i32, ptr %514, align 8, !tbaa !206
  %516 = add nsw i32 %515, -1
  %517 = call ptr @BLI_findlink(ptr noundef nonnull %513, i32 noundef %516) #16
  call void @psys_update_particle_tree(ptr noundef %517, float noundef %414)
  br label %518

518:                                              ; preds = %512, %507
  %519 = load ptr, ptr %508, align 8, !tbaa !210
  %520 = icmp eq ptr %519, null
  br i1 %520, label %539, label %507, !llvm.loop !392

521:                                              ; preds = %500
  %522 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 17
  %523 = load ptr, ptr %522, align 8, !tbaa !208
  call fastcc void @psys_update_particle_bvhtree(ptr noundef %415, float noundef %414)
  %524 = icmp eq ptr %523, null
  br i1 %524, label %539, label %525

525:                                              ; preds = %521, %536
  %526 = phi ptr [ %537, %536 ], [ %523, %521 ]
  %527 = getelementptr inbounds %struct.ParticleTarget, ptr %526, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !204
  %529 = icmp eq ptr %528, null
  br i1 %529, label %536, label %530

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.Object, ptr %528, i64 0, i32 109
  %532 = getelementptr inbounds %struct.ParticleTarget, ptr %526, i64 0, i32 3
  %533 = load i32, ptr %532, align 8, !tbaa !206
  %534 = add nsw i32 %533, -1
  %535 = call ptr @BLI_findlink(ptr noundef nonnull %531, i32 noundef %534) #16
  call fastcc void @psys_update_particle_bvhtree(ptr noundef %535, float noundef %414)
  br label %536

536:                                              ; preds = %530, %525
  %537 = load ptr, ptr %526, align 8, !tbaa !210
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %525, !llvm.loop !393

539:                                              ; preds = %536, %518, %521, %503, %500
  %540 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 3
  %541 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 26
  %542 = load i32, ptr %541, align 8, !tbaa !55
  %543 = icmp sgt i32 %542, 0
  br i1 %543, label %544, label %640

544:                                              ; preds = %539
  %545 = load ptr, ptr %540, align 8, !tbaa !64
  %546 = getelementptr inbounds %struct.ParticleSettings, ptr %417, i64 0, i32 82
  %547 = getelementptr inbounds %struct.ParticleSettings, ptr %417, i64 0, i32 83
  %548 = getelementptr inbounds %struct.ParticleSettings, ptr %417, i64 0, i32 5
  %549 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 40
  br label %550

550:                                              ; preds = %544, %635
  %551 = phi ptr [ %545, %544 ], [ %637, %635 ]
  %552 = phi i32 [ 0, %544 ], [ %636, %635 ]
  %553 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 17
  %554 = load i16, ptr %553, align 4, !tbaa !65
  %555 = and i16 %554, 3
  %556 = icmp eq i16 %555, 0
  br i1 %556, label %557, label %635

557:                                              ; preds = %550
  %558 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 1
  call void @copy_particle_key(ptr noundef nonnull %558, ptr noundef %551, i32 noundef 1) #16
  call void @psys_get_texture(ptr noundef nonnull %0, ptr noundef %551, ptr noundef nonnull %6, i32 noundef 8, float noundef %414) #16
  %559 = load float, ptr %546, align 8, !tbaa !268
  %560 = load float, ptr %374, align 4, !tbaa !382
  %561 = fmul float %559, %560
  %562 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 13
  store float %561, ptr %562, align 4, !tbaa !236
  %563 = load float, ptr %547, align 4, !tbaa !334
  %564 = fcmp ogt float %563, 0.000000e+00
  br i1 %564, label %565, label %583

565:                                              ; preds = %557
  %566 = add nuw nsw i32 %552, 1
  %567 = load i32, ptr %475, align 4, !tbaa !150
  %568 = srem i32 %567, 1024
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %569
  %571 = load i32, ptr %570, align 4, !tbaa !95
  %572 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %569
  %573 = load i32, ptr %572, align 4, !tbaa !95
  %574 = mul i32 %573, %566
  %575 = add i32 %574, %571
  %576 = and i32 %575, 1023
  %577 = zext nneg i32 %576 to i64
  %578 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %577
  %579 = load float, ptr %578, align 4, !tbaa !105
  %580 = fneg float %563
  %581 = call float @llvm.fmuladd.f32(float %580, float %579, float 1.000000e+00)
  %582 = fmul float %561, %581
  store float %582, ptr %562, align 4, !tbaa !236
  br label %583

583:                                              ; preds = %565, %557
  %584 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 6
  %585 = load float, ptr %584, align 4, !tbaa !141
  %586 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 8
  %587 = load float, ptr %586, align 4, !tbaa !197
  %588 = getelementptr inbounds %struct.ParticleKey, ptr %551, i64 0, i32 4
  store float %420, ptr %588, align 4, !tbaa !201
  %589 = fcmp ugt float %587, %414
  br i1 %589, label %598, label %590

590:                                              ; preds = %583
  %591 = load float, ptr %418, align 8, !tbaa !161
  %592 = fcmp olt float %591, %587
  br i1 %592, label %593, label %598

593:                                              ; preds = %590
  %594 = fcmp ogt float %585, %591
  %595 = select i1 %594, float %585, float %591
  %596 = fsub float %587, %595
  store float %596, ptr %588, align 4, !tbaa !201
  %597 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 18
  store i16 4, ptr %597, align 2, !tbaa !200
  br label %606

598:                                              ; preds = %590, %583
  %599 = fcmp ugt float %585, %414
  br i1 %599, label %606, label %600

600:                                              ; preds = %598
  %601 = load float, ptr %418, align 8, !tbaa !161
  %602 = fcmp ult float %585, %601
  br i1 %602, label %606, label %603

603:                                              ; preds = %600
  call void @reset_particle(ptr noundef nonnull %0, ptr noundef %551, float noundef %422, float noundef %414)
  %604 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 18
  store i16 3, ptr %604, align 2, !tbaa !200
  %605 = fsub float %414, %585
  store float %605, ptr %588, align 4, !tbaa !201
  br label %606

606:                                              ; preds = %603, %600, %598, %593
  %607 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 0, i32 18
  %608 = load i16, ptr %607, align 2, !tbaa !200
  %609 = icmp eq i16 %608, 2
  br i1 %609, label %610, label %622

610:                                              ; preds = %606
  %611 = load i32, ptr %548, align 8, !tbaa !250
  %612 = and i32 %611, 32
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %625

614:                                              ; preds = %610
  %615 = load ptr, ptr %549, align 8, !tbaa !44
  %616 = getelementptr inbounds %struct.PointCache, ptr %615, i64 0, i32 3
  %617 = load i32, ptr %616, align 4, !tbaa !394
  %618 = sitofp i32 %617 to float
  %619 = fadd float %414, %618
  %620 = load float, ptr %584, align 4, !tbaa !141
  %621 = fcmp ogt float %619, %620
  br i1 %621, label %625, label %622

622:                                              ; preds = %614, %606
  %623 = load i16, ptr %501, align 8, !tbaa !51
  %624 = icmp eq i16 %623, 0
  br i1 %624, label %625, label %626

625:                                              ; preds = %622, %610, %614
  call void @reset_particle(ptr noundef nonnull %0, ptr noundef %551, float noundef %422, float noundef %414)
  br label %626

626:                                              ; preds = %625, %622
  %627 = load i16, ptr %607, align 2, !tbaa !200
  %628 = add i16 %627, -3
  %629 = icmp ult i16 %628, 2
  br i1 %629, label %630, label %634

630:                                              ; preds = %626
  %631 = load i16, ptr %553, align 4, !tbaa !65
  %632 = and i16 %631, 3
  %633 = icmp eq i16 %632, 0
  br i1 %633, label %635, label %634

634:                                              ; preds = %630, %626
  store float -1.000000e+00, ptr %588, align 4, !tbaa !201
  br label %635

635:                                              ; preds = %634, %630, %550
  %636 = add nuw nsw i32 %552, 1
  %637 = getelementptr inbounds %struct.ParticleData, ptr %551, i64 1
  %638 = load i32, ptr %541, align 8, !tbaa !55
  %639 = icmp slt i32 %636, %638
  br i1 %639, label %550, label %640, !llvm.loop !395

640:                                              ; preds = %635, %539
  %641 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 26
  %642 = load i16, ptr %501, align 8, !tbaa !51
  switch i16 %642, label %1021 [
    i16 1, label %646
    i16 3, label %643
    i16 4, label %693
  ]

643:                                              ; preds = %640
  %644 = load i32, ptr %641, align 8, !tbaa !55
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %670, label %1021

646:                                              ; preds = %640
  %647 = load i32, ptr %641, align 8, !tbaa !55
  %648 = icmp sgt i32 %647, 0
  br i1 %648, label %649, label %1021

649:                                              ; preds = %646, %665
  %650 = phi i64 [ %666, %665 ], [ 0, %646 ]
  %651 = load ptr, ptr %540, align 8, !tbaa !64
  %652 = getelementptr inbounds %struct.ParticleData, ptr %651, i64 %650
  %653 = getelementptr inbounds %struct.ParticleKey, ptr %652, i64 0, i32 4
  %654 = load float, ptr %653, align 4, !tbaa !201
  %655 = fcmp ogt float %654, 0.000000e+00
  br i1 %655, label %656, label %665

656:                                              ; preds = %649
  %657 = trunc i64 %650 to i32
  call fastcc void @basic_integrate(ptr noundef nonnull %0, i32 noundef %657, float noundef %654, float noundef %414)
  %658 = load ptr, ptr %399, align 8, !tbaa !384
  %659 = icmp eq ptr %658, null
  br i1 %659, label %663, label %660

660:                                              ; preds = %656
  %661 = load float, ptr %653, align 4, !tbaa !201
  %662 = trunc i64 %650 to i32
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %662, float noundef %661, float noundef %414)
  br label %663

663:                                              ; preds = %660, %656
  %664 = load float, ptr %653, align 4, !tbaa !201
  call fastcc void @basic_rotate(ptr noundef %417, ptr noundef %652, float noundef %664, float noundef %421)
  br label %665

665:                                              ; preds = %663, %649
  %666 = add nuw nsw i64 %650, 1
  %667 = load i32, ptr %641, align 8, !tbaa !55
  %668 = sext i32 %667 to i64
  %669 = icmp slt i64 %666, %668
  br i1 %669, label %649, label %1021, !llvm.loop !396

670:                                              ; preds = %643, %688
  %671 = phi i64 [ %689, %688 ], [ 0, %643 ]
  %672 = load ptr, ptr %540, align 8, !tbaa !64
  %673 = getelementptr inbounds %struct.ParticleData, ptr %672, i64 %671
  %674 = getelementptr inbounds %struct.ParticleKey, ptr %673, i64 0, i32 4
  %675 = load float, ptr %674, align 4, !tbaa !201
  %676 = fcmp ogt float %675, 0.000000e+00
  br i1 %676, label %677, label %688

677:                                              ; preds = %670
  store ptr null, ptr %397, align 8, !tbaa !397
  %678 = trunc i64 %671 to i32
  call void @boid_brain(ptr noundef nonnull %5, i32 noundef %678, ptr noundef %673) #16
  %679 = getelementptr inbounds %struct.ParticleData, ptr %672, i64 %671, i32 18
  %680 = load i16, ptr %679, align 2, !tbaa !200
  %681 = icmp eq i16 %680, 4
  br i1 %681, label %688, label %682

682:                                              ; preds = %677
  call void @boid_body(ptr noundef nonnull %5, ptr noundef %673) #16
  %683 = load ptr, ptr %398, align 8, !tbaa !384
  %684 = icmp eq ptr %683, null
  br i1 %684, label %688, label %685

685:                                              ; preds = %682
  %686 = load float, ptr %674, align 4, !tbaa !201
  %687 = trunc i64 %671 to i32
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %687, float noundef %686, float noundef %414)
  br label %688

688:                                              ; preds = %685, %682, %677, %670
  %689 = add nuw nsw i64 %671, 1
  %690 = load i32, ptr %641, align 8, !tbaa !55
  %691 = sext i32 %690 to i64
  %692 = icmp slt i64 %689, %691
  br i1 %692, label %670, label %1021, !llvm.loop !398

693:                                              ; preds = %640
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #16
  %694 = load ptr, ptr %11, align 8, !tbaa !113
  %695 = getelementptr inbounds %struct.ParticleSystem, ptr %694, i64 0, i32 2
  %696 = load ptr, ptr %695, align 8, !tbaa !34
  call void @psys_sph_init(ptr noundef nonnull %0, ptr noundef nonnull %7)
  %697 = getelementptr inbounds %struct.ParticleSettings, ptr %696, i64 0, i32 3
  %698 = load ptr, ptr %697, align 8, !tbaa !225
  %699 = getelementptr inbounds %struct.SPHFluidSettings, ptr %698, i64 0, i32 15
  %700 = load i16, ptr %699, align 4, !tbaa !226
  %701 = icmp eq i16 %700, 0
  %702 = load i32, ptr %641, align 8, !tbaa !55
  %703 = icmp sgt i32 %702, 0
  br i1 %701, label %705, label %704

704:                                              ; preds = %693
  br i1 %703, label %887, label %884

705:                                              ; preds = %693
  br i1 %703, label %706, label %756

706:                                              ; preds = %705
  %707 = getelementptr inbounds %struct.ParticleSettings, ptr %696, i64 0, i32 67
  br label %708

708:                                              ; preds = %706, %751
  %709 = phi i64 [ 0, %706 ], [ %752, %751 ]
  %710 = load ptr, ptr %540, align 8, !tbaa !64
  %711 = getelementptr inbounds %struct.ParticleData, ptr %710, i64 %709
  %712 = getelementptr inbounds %struct.ParticleKey, ptr %711, i64 0, i32 4
  %713 = load float, ptr %712, align 4, !tbaa !201
  %714 = fcmp ogt float %713, 0.000000e+00
  br i1 %714, label %715, label %751

715:                                              ; preds = %708
  %716 = trunc i64 %709 to i32
  call fastcc void @basic_integrate(ptr noundef nonnull %0, i32 noundef %716, float noundef %713, float noundef %414)
  %717 = load float, ptr %712, align 4, !tbaa !201
  call fastcc void @sph_integrate(ptr noundef nonnull %0, ptr noundef %711, float noundef %717, ptr noundef nonnull %7)
  %718 = load ptr, ptr %391, align 8, !tbaa !384
  %719 = icmp eq ptr %718, null
  br i1 %719, label %723, label %720

720:                                              ; preds = %715
  %721 = load float, ptr %712, align 4, !tbaa !201
  %722 = trunc i64 %709 to i32
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %722, float noundef %721, float noundef %414)
  br label %723

723:                                              ; preds = %720, %715
  %724 = load float, ptr %712, align 4, !tbaa !201
  call fastcc void @basic_rotate(ptr noundef %696, ptr noundef %711, float noundef %724, float noundef %421)
  %725 = load i16, ptr %707, align 4, !tbaa !265
  %726 = and i16 %725, 1
  %727 = icmp eq i16 %726, 0
  br i1 %727, label %751, label %728

728:                                              ; preds = %723
  %729 = getelementptr inbounds %struct.ParticleData, ptr %710, i64 %709, i32 1, i32 1
  %730 = load float, ptr %729, align 4, !tbaa !105
  %731 = load float, ptr %392, align 4, !tbaa !105
  %732 = fsub float %730, %731
  %733 = getelementptr inbounds %struct.ParticleData, ptr %710, i64 %709, i32 1, i32 1, i64 1
  %734 = load float, ptr %733, align 4, !tbaa !105
  %735 = load float, ptr %393, align 8, !tbaa !105
  %736 = fsub float %734, %735
  %737 = getelementptr inbounds %struct.ParticleData, ptr %710, i64 %709, i32 1, i32 1, i64 2
  %738 = load float, ptr %737, align 4, !tbaa !105
  %739 = load float, ptr %394, align 4, !tbaa !105
  %740 = fsub float %738, %739
  %741 = fmul float %736, %736
  %742 = call float @llvm.fmuladd.f32(float %732, float %732, float %741)
  %743 = call float @llvm.fmuladd.f32(float %740, float %740, float %742)
  %744 = call float @sqrtf(float noundef %743) #16
  %745 = load float, ptr %366, align 8, !tbaa !381
  %746 = fmul float %422, %744
  %747 = load float, ptr %395, align 8, !tbaa !399
  %748 = fdiv float %746, %747
  %749 = fcmp olt float %745, %748
  br i1 %749, label %750, label %751

750:                                              ; preds = %728
  store float %748, ptr %366, align 8, !tbaa !381
  br label %751

751:                                              ; preds = %750, %728, %723, %708
  %752 = add nuw nsw i64 %709, 1
  %753 = load i32, ptr %641, align 8, !tbaa !55
  %754 = sext i32 %753 to i64
  %755 = icmp slt i64 %752, %754
  br i1 %755, label %708, label %756, !llvm.loop !400

756:                                              ; preds = %751, %705
  %757 = load ptr, ptr %416, align 8, !tbaa !34
  %758 = getelementptr inbounds %struct.ParticleSettings, ptr %757, i64 0, i32 3
  %759 = load ptr, ptr %758, align 8, !tbaa !225
  %760 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 43
  %761 = getelementptr inbounds %struct.SPHFluidSettings, ptr %759, i64 0, i32 4
  %762 = load float, ptr %761, align 4, !tbaa !322
  %763 = getelementptr inbounds %struct.SPHFluidSettings, ptr %759, i64 0, i32 3
  %764 = load float, ptr %763, align 4, !tbaa !321
  %765 = fmul float %421, 2.500000e+01
  %766 = getelementptr inbounds %struct.SPHFluidSettings, ptr %759, i64 0, i32 13
  %767 = load i32, ptr %766, align 4, !tbaa !233
  %768 = and i32 %767, 1
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %1016, label %770

770:                                              ; preds = %756
  %771 = load ptr, ptr %760, align 8, !tbaa !74
  %772 = getelementptr inbounds %struct.SPHFluidSettings, ptr %759, i64 0, i32 1
  %773 = load float, ptr %772, align 4, !tbaa !234
  %774 = fcmp oeq float %773, 0.000000e+00
  br i1 %774, label %1016, label %775

775:                                              ; preds = %770
  %776 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 44
  %777 = load i32, ptr %776, align 8, !tbaa !76
  %778 = icmp sgt i32 %777, 0
  br i1 %778, label %779, label %782

779:                                              ; preds = %775
  %780 = fmul float %765, %762
  %781 = fneg float %764
  br label %789

782:                                              ; preds = %847, %775
  %783 = phi i32 [ %777, %775 ], [ %850, %847 ]
  %784 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 44
  %785 = icmp sgt i32 %783, 0
  br i1 %785, label %786, label %1016

786:                                              ; preds = %782
  %787 = getelementptr inbounds %struct.ParticleSystem, ptr %415, i64 0, i32 45
  %788 = zext nneg i32 %783 to i64
  br label %852

789:                                              ; preds = %779, %847
  %790 = phi ptr [ %771, %779 ], [ %849, %847 ]
  %791 = phi i32 [ 0, %779 ], [ %848, %847 ]
  %792 = load ptr, ptr %540, align 8, !tbaa !64
  %793 = getelementptr inbounds %struct.ParticleSpring, ptr %790, i64 0, i32 1
  %794 = load i32, ptr %793, align 4, !tbaa !95
  %795 = zext i32 %794 to i64
  %796 = getelementptr inbounds %struct.ParticleSpring, ptr %790, i64 0, i32 1, i64 1
  %797 = load i32, ptr %796, align 4, !tbaa !95
  %798 = zext i32 %797 to i64
  %799 = getelementptr inbounds %struct.ParticleData, ptr %792, i64 %798, i32 1
  %800 = getelementptr inbounds %struct.ParticleData, ptr %792, i64 %795, i32 1
  %801 = load float, ptr %799, align 4, !tbaa !105
  %802 = load float, ptr %800, align 4, !tbaa !105
  %803 = fsub float %801, %802
  %804 = getelementptr inbounds float, ptr %799, i64 1
  %805 = load float, ptr %804, align 4, !tbaa !105
  %806 = getelementptr inbounds float, ptr %800, i64 1
  %807 = load float, ptr %806, align 4, !tbaa !105
  %808 = fsub float %805, %807
  %809 = getelementptr inbounds float, ptr %799, i64 2
  %810 = load float, ptr %809, align 4, !tbaa !105
  %811 = getelementptr inbounds float, ptr %800, i64 2
  %812 = load float, ptr %811, align 4, !tbaa !105
  %813 = fsub float %810, %812
  %814 = fmul float %808, %808
  %815 = call float @llvm.fmuladd.f32(float %803, float %803, float %814)
  %816 = call float @llvm.fmuladd.f32(float %813, float %813, float %815)
  %817 = fcmp ogt float %816, 0x38AA95A5C0000000
  br i1 %817, label %818, label %820

818:                                              ; preds = %789
  %819 = call float @sqrtf(float noundef %816) #16
  br label %820

820:                                              ; preds = %818, %789
  %821 = phi float [ %819, %818 ], [ 0.000000e+00, %789 ]
  %822 = load float, ptr %790, align 4, !tbaa !258
  %823 = fmul float %780, %822
  %824 = fadd float %822, %823
  %825 = fcmp ogt float %821, %824
  br i1 %825, label %826, label %830

826:                                              ; preds = %820
  %827 = fsub float %821, %822
  %828 = fsub float %827, %823
  %829 = fmul float %764, %828
  br label %836

830:                                              ; preds = %820
  %831 = fsub float %822, %823
  %832 = fcmp olt float %821, %831
  br i1 %832, label %833, label %839

833:                                              ; preds = %830
  %834 = fsub float %831, %821
  %835 = fmul float %834, %781
  br label %836

836:                                              ; preds = %826, %833
  %837 = phi float [ %835, %833 ], [ %829, %826 ]
  %838 = call float @llvm.fmuladd.f32(float %837, float %765, float %822)
  store float %838, ptr %790, align 4, !tbaa !258
  br label %839

839:                                              ; preds = %836, %830
  %840 = getelementptr inbounds %struct.ParticleData, ptr %792, i64 %795, i32 13
  %841 = load float, ptr %840, align 4, !tbaa !236
  %842 = fmul float %841, 4.000000e+00
  %843 = load float, ptr %790, align 4, !tbaa !258
  %844 = fcmp ogt float %843, %842
  br i1 %844, label %845, label %847

845:                                              ; preds = %839
  %846 = getelementptr inbounds %struct.ParticleSpring, ptr %790, i64 0, i32 2
  store i32 1, ptr %846, align 4, !tbaa !401
  br label %847

847:                                              ; preds = %845, %839
  %848 = add nuw nsw i32 %791, 1
  %849 = getelementptr inbounds %struct.ParticleSpring, ptr %790, i64 1
  %850 = load i32, ptr %776, align 8, !tbaa !76
  %851 = icmp slt i32 %848, %850
  br i1 %851, label %789, label %782, !llvm.loop !402

852:                                              ; preds = %786, %882
  %853 = phi i64 [ %788, %786 ], [ %854, %882 ]
  %854 = add nsw i64 %853, -1
  %855 = load ptr, ptr %760, align 8, !tbaa !74
  %856 = getelementptr inbounds %struct.ParticleSpring, ptr %855, i64 %854, i32 2
  %857 = load i32, ptr %856, align 4, !tbaa !401
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %882, label %859

859:                                              ; preds = %852
  %860 = load i32, ptr %784, align 8, !tbaa !76
  %861 = zext i32 %860 to i64
  %862 = icmp eq i64 %853, %861
  br i1 %862, label %868, label %863

863:                                              ; preds = %859
  %864 = getelementptr inbounds %struct.ParticleSpring, ptr %855, i64 %854
  %865 = sext i32 %860 to i64
  %866 = getelementptr %struct.ParticleSpring, ptr %855, i64 %865
  %867 = getelementptr %struct.ParticleSpring, ptr %866, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %864, ptr noundef nonnull align 4 dereferenceable(16) %867, i64 16, i1 false), !tbaa.struct !403
  br label %868

868:                                              ; preds = %863, %859
  %869 = load i32, ptr %784, align 8, !tbaa !76
  %870 = add nsw i32 %869, -1
  store i32 %870, ptr %784, align 8, !tbaa !76
  %871 = load i32, ptr %787, align 4, !tbaa !75
  %872 = sdiv i32 %871, 2
  %873 = icmp sle i32 %869, %872
  %874 = icmp sgt i32 %871, 256
  %875 = and i1 %874, %873
  br i1 %875, label %876, label %882

876:                                              ; preds = %868
  store i32 %872, ptr %787, align 4, !tbaa !75
  %877 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !72
  %878 = load ptr, ptr %760, align 8, !tbaa !74
  %879 = zext nneg i32 %872 to i64
  %880 = shl nuw nsw i64 %879, 4
  %881 = call ptr %877(ptr noundef %878, i64 noundef %880, ptr noundef nonnull @__func__.sph_spring_delete) #16
  store ptr %881, ptr %760, align 8, !tbaa !74
  br label %882

882:                                              ; preds = %876, %868, %852
  %883 = icmp sgt i64 %853, 1
  br i1 %883, label %852, label %1016, !llvm.loop !404

884:                                              ; preds = %895, %704
  %885 = load i32, ptr %641, align 8, !tbaa !55
  %886 = icmp sgt i32 %885, 0
  br i1 %886, label %905, label %900

887:                                              ; preds = %704, %895
  %888 = phi i64 [ %896, %895 ], [ 0, %704 ]
  %889 = load ptr, ptr %540, align 8, !tbaa !64
  %890 = getelementptr inbounds %struct.ParticleData, ptr %889, i64 %888, i32 0, i32 4
  %891 = load float, ptr %890, align 4, !tbaa !201
  %892 = fcmp ogt float %891, 0.000000e+00
  br i1 %892, label %893, label %895

893:                                              ; preds = %887
  %894 = trunc i64 %888 to i32
  call fastcc void @basic_integrate(ptr noundef nonnull %0, i32 noundef %894, float noundef %891, float noundef %414)
  br label %895

895:                                              ; preds = %893, %887
  %896 = add nuw nsw i64 %888, 1
  %897 = load i32, ptr %641, align 8, !tbaa !55
  %898 = sext i32 %897 to i64
  %899 = icmp slt i64 %896, %898
  br i1 %899, label %887, label %884, !llvm.loop !405

900:                                              ; preds = %965, %884
  %901 = load i32, ptr %641, align 8, !tbaa !55
  %902 = icmp sgt i32 %901, 0
  br i1 %902, label %903, label %1016

903:                                              ; preds = %900
  %904 = getelementptr inbounds %struct.ParticleSettings, ptr %696, i64 0, i32 67
  br label %970

905:                                              ; preds = %884, %965
  %906 = phi i64 [ %966, %965 ], [ 0, %884 ]
  %907 = load ptr, ptr %540, align 8, !tbaa !64
  %908 = getelementptr inbounds %struct.ParticleData, ptr %907, i64 %906
  %909 = getelementptr inbounds %struct.ParticleKey, ptr %908, i64 0, i32 4
  %910 = load float, ptr %909, align 4, !tbaa !201
  %911 = fcmp ogt float %910, 0.000000e+00
  br i1 %911, label %912, label %965

912:                                              ; preds = %905
  %913 = load ptr, ptr %7, align 8, !tbaa !72
  %914 = getelementptr inbounds %struct.ParticleSystem, ptr %913, i64 0, i32 2
  %915 = load ptr, ptr %914, align 8, !tbaa !34
  %916 = getelementptr inbounds %struct.ParticleSettings, ptr %915, i64 0, i32 3
  %917 = load ptr, ptr %916, align 8, !tbaa !225
  %918 = load float, ptr %917, align 4, !tbaa !235
  %919 = getelementptr inbounds %struct.SPHFluidSettings, ptr %917, i64 0, i32 13
  %920 = load i32, ptr %919, align 4, !tbaa !233
  %921 = and i32 %920, 16
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %927, label %923

923:                                              ; preds = %912
  %924 = getelementptr inbounds %struct.ParticleSettings, ptr %915, i64 0, i32 82
  %925 = load float, ptr %924, align 8, !tbaa !268
  %926 = fmul float %925, 4.000000e+00
  br label %927

927:                                              ; preds = %923, %912
  %928 = phi float [ %926, %923 ], [ 1.000000e+00, %912 ]
  %929 = fmul float %918, %928
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store float 0.000000e+00, ptr %4, align 4, !tbaa !105
  store float 0.000000e+00, ptr %375, align 4, !tbaa !105
  store ptr %4, ptr %376, align 8, !tbaa !241
  %930 = load float, ptr %377, align 8, !tbaa !230
  %931 = fmul float %929, %930
  store float %931, ptr %378, align 8, !tbaa !243
  store ptr %908, ptr %379, align 8, !tbaa !244
  %932 = load float, ptr %380, align 8, !tbaa !224
  store float %932, ptr %381, align 4, !tbaa !245
  store i32 0, ptr %382, align 8, !tbaa !246
  br label %933

933:                                              ; preds = %938, %927
  %934 = phi i64 [ 0, %927 ], [ %952, %938 ]
  %935 = getelementptr inbounds ptr, ptr %7, i64 %934
  %936 = load ptr, ptr %935, align 8, !tbaa !72
  %937 = icmp eq ptr %936, null
  br i1 %937, label %954, label %938

938:                                              ; preds = %933
  store ptr %936, ptr %383, align 8, !tbaa !247
  %939 = getelementptr inbounds %struct.ParticleSystem, ptr %936, i64 0, i32 2
  %940 = load ptr, ptr %939, align 8, !tbaa !34
  %941 = getelementptr inbounds %struct.ParticleSettings, ptr %940, i64 0, i32 81
  %942 = load float, ptr %941, align 4, !tbaa !248
  %943 = load float, ptr %381, align 4, !tbaa !245
  %944 = fdiv float %942, %943
  store float %944, ptr %384, align 8, !tbaa !249
  %945 = getelementptr inbounds %struct.ParticleSettings, ptr %940, i64 0, i32 5
  %946 = load i32, ptr %945, align 8, !tbaa !250
  %947 = and i32 %946, 65536
  store i32 %947, ptr %385, align 4, !tbaa !251
  call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 1) #16
  %948 = load ptr, ptr %935, align 8, !tbaa !72
  %949 = getelementptr inbounds %struct.ParticleSystem, ptr %948, i64 0, i32 47
  %950 = load ptr, ptr %949, align 8, !tbaa !252
  %951 = call i32 @BLI_bvhtree_range_query(ptr noundef %950, ptr noundef %908, float noundef %929, ptr noundef nonnull @sphclassical_density_accum_cb, ptr noundef nonnull %3) #16
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #16
  %952 = add nuw nsw i64 %934, 1
  %953 = icmp eq i64 %952, 10
  br i1 %953, label %954, label %933, !llvm.loop !253

954:                                              ; preds = %933, %938
  %955 = load float, ptr %4, align 4, !tbaa !105
  %956 = getelementptr inbounds %struct.SPHFluidSettings, ptr %917, i64 0, i32 11
  %957 = load float, ptr %956, align 4, !tbaa !237
  %958 = fmul float %957, 0x3FECCCCCC0000000
  %959 = fcmp ogt float %955, %958
  %960 = select i1 %959, float %955, float %958
  %961 = fmul float %957, 0x3FF19999A0000000
  %962 = fcmp olt float %960, %961
  %963 = select i1 %962, float %960, float %961
  %964 = getelementptr inbounds %struct.ParticleData, ptr %907, i64 %906, i32 14
  store float %963, ptr %964, align 8, !tbaa !266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %3) #16
  br label %965

965:                                              ; preds = %954, %905
  %966 = add nuw nsw i64 %906, 1
  %967 = load i32, ptr %641, align 8, !tbaa !55
  %968 = sext i32 %967 to i64
  %969 = icmp slt i64 %966, %968
  br i1 %969, label %905, label %900, !llvm.loop !406

970:                                              ; preds = %903, %1011
  %971 = phi i64 [ 0, %903 ], [ %1012, %1011 ]
  %972 = load ptr, ptr %540, align 8, !tbaa !64
  %973 = getelementptr inbounds %struct.ParticleData, ptr %972, i64 %971
  %974 = getelementptr inbounds %struct.ParticleKey, ptr %973, i64 0, i32 4
  %975 = load float, ptr %974, align 4, !tbaa !201
  %976 = fcmp ogt float %975, 0.000000e+00
  br i1 %976, label %977, label %1011

977:                                              ; preds = %970
  call fastcc void @sph_integrate(ptr noundef nonnull %0, ptr noundef %973, float noundef %975, ptr noundef nonnull %7)
  %978 = load ptr, ptr %386, align 8, !tbaa !384
  %979 = icmp eq ptr %978, null
  br i1 %979, label %983, label %980

980:                                              ; preds = %977
  %981 = load float, ptr %974, align 4, !tbaa !201
  %982 = trunc i64 %971 to i32
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %982, float noundef %981, float noundef %414)
  br label %983

983:                                              ; preds = %980, %977
  %984 = load float, ptr %974, align 4, !tbaa !201
  call fastcc void @basic_rotate(ptr noundef %696, ptr noundef %973, float noundef %984, float noundef %421)
  %985 = load i16, ptr %904, align 4, !tbaa !265
  %986 = and i16 %985, 1
  %987 = icmp eq i16 %986, 0
  br i1 %987, label %1011, label %988

988:                                              ; preds = %983
  %989 = getelementptr inbounds %struct.ParticleData, ptr %972, i64 %971, i32 1, i32 1
  %990 = load float, ptr %989, align 4, !tbaa !105
  %991 = load float, ptr %387, align 4, !tbaa !105
  %992 = fsub float %990, %991
  %993 = getelementptr inbounds %struct.ParticleData, ptr %972, i64 %971, i32 1, i32 1, i64 1
  %994 = load float, ptr %993, align 4, !tbaa !105
  %995 = load float, ptr %388, align 8, !tbaa !105
  %996 = fsub float %994, %995
  %997 = getelementptr inbounds %struct.ParticleData, ptr %972, i64 %971, i32 1, i32 1, i64 2
  %998 = load float, ptr %997, align 4, !tbaa !105
  %999 = load float, ptr %389, align 4, !tbaa !105
  %1000 = fsub float %998, %999
  %1001 = fmul float %996, %996
  %1002 = call float @llvm.fmuladd.f32(float %992, float %992, float %1001)
  %1003 = call float @llvm.fmuladd.f32(float %1000, float %1000, float %1002)
  %1004 = call float @sqrtf(float noundef %1003) #16
  %1005 = load float, ptr %366, align 8, !tbaa !381
  %1006 = fmul float %422, %1004
  %1007 = load float, ptr %390, align 8, !tbaa !399
  %1008 = fdiv float %1006, %1007
  %1009 = fcmp olt float %1005, %1008
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %988
  store float %1008, ptr %366, align 8, !tbaa !381
  br label %1011

1011:                                             ; preds = %1010, %988, %983, %970
  %1012 = add nuw nsw i64 %971, 1
  %1013 = load i32, ptr %641, align 8, !tbaa !55
  %1014 = sext i32 %1013 to i64
  %1015 = icmp slt i64 %1012, %1014
  br i1 %1015, label %970, label %1016, !llvm.loop !407

1016:                                             ; preds = %1011, %882, %900, %782, %770, %756
  %1017 = load ptr, ptr %396, align 8, !tbaa !222
  %1018 = icmp eq ptr %1017, null
  br i1 %1018, label %1020, label %1019

1019:                                             ; preds = %1016
  call void @BLI_edgehash_free(ptr noundef nonnull %1017, ptr noundef null) #16
  store ptr null, ptr %396, align 8, !tbaa !222
  br label %1020

1020:                                             ; preds = %1019, %1016
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #16
  br label %1021

1021:                                             ; preds = %688, %665, %643, %646, %1020, %640
  %1022 = load i32, ptr %641, align 8, !tbaa !55
  %1023 = icmp sgt i32 %1022, 0
  br i1 %1023, label %1024, label %1044

1024:                                             ; preds = %1021
  %1025 = load ptr, ptr %540, align 8, !tbaa !64
  %1026 = zext nneg i32 %1022 to i64
  br label %1027

1027:                                             ; preds = %1024, %1041
  %1028 = phi i64 [ 0, %1024 ], [ %1042, %1041 ]
  %1029 = getelementptr inbounds %struct.ParticleData, ptr %1025, i64 %1028, i32 0, i32 4
  %1030 = load float, ptr %1029, align 4, !tbaa !201
  %1031 = fcmp ogt float %1030, 0.000000e+00
  br i1 %1031, label %1032, label %1041

1032:                                             ; preds = %1027
  %1033 = getelementptr inbounds %struct.ParticleData, ptr %1025, i64 %1028, i32 18
  %1034 = load i16, ptr %1033, align 2, !tbaa !200
  %1035 = icmp eq i16 %1034, 4
  br i1 %1035, label %1036, label %1039

1036:                                             ; preds = %1032
  store i16 1, ptr %1033, align 2, !tbaa !200
  %1037 = getelementptr inbounds %struct.ParticleData, ptr %1025, i64 %1028, i32 8
  %1038 = load float, ptr %1037, align 4, !tbaa !197
  br label %1039

1039:                                             ; preds = %1032, %1036
  %1040 = phi float [ %1038, %1036 ], [ %414, %1032 ]
  store float %1040, ptr %1029, align 4, !tbaa !201
  br label %1041

1041:                                             ; preds = %1039, %1027
  %1042 = add nuw nsw i64 %1028, 1
  %1043 = icmp eq i64 %1042, %1026
  br i1 %1043, label %1044, label %1027, !llvm.loop !408

1044:                                             ; preds = %1041, %1021
  call void @free_collider_cache(ptr noundef nonnull %400) #16
  call void @BLI_rng_free(ptr noundef %480) #16
  br label %1045

1045:                                             ; preds = %467, %424, %1044
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #16
  store float %414, ptr %402, align 8, !tbaa !161
  %1046 = load i16, ptr %336, align 4, !tbaa !265
  %1047 = and i16 %1046, 1
  %1048 = icmp eq i16 %1047, 0
  br i1 %1048, label %1085, label %1049

1049:                                             ; preds = %1045
  %1050 = load float, ptr %366, align 8, !tbaa !381
  %1051 = fcmp oeq float %1050, 0.000000e+00
  br i1 %1051, label %1059, label %1052

1052:                                             ; preds = %1049
  %1053 = load float, ptr %365, align 8, !tbaa !380
  %1054 = load ptr, ptr %13, align 8, !tbaa !34
  %1055 = getelementptr inbounds %struct.ParticleSettings, ptr %1054, i64 0, i32 58
  %1056 = load float, ptr %1055, align 8, !tbaa !409
  %1057 = fdiv float %1056, %1050
  %1058 = fmul float %1053, %1057
  br label %1059

1059:                                             ; preds = %1052, %1049
  %1060 = phi float [ %1058, %1052 ], [ 1.000000e+00, %1049 ]
  %1061 = fcmp olt float %1060, 0x3F8446F860000000
  br i1 %1061, label %1072, label %1062

1062:                                             ; preds = %1059
  %1063 = load ptr, ptr %13, align 8, !tbaa !34
  %1064 = getelementptr inbounds %struct.ParticleSettings, ptr %1063, i64 0, i32 22
  %1065 = load i16, ptr %1064, align 2, !tbaa !379
  %1066 = sext i16 %1065 to i32
  %1067 = add nsw i32 %1066, 1
  %1068 = sitofp i32 %1067 to float
  %1069 = fdiv float 1.000000e+00, %1068
  %1070 = fcmp ogt float %1060, %1069
  br i1 %1070, label %1071, label %1072

1071:                                             ; preds = %1062
  br label %1072

1072:                                             ; preds = %1059, %1062, %1071
  %1073 = phi float [ %1069, %1071 ], [ %1060, %1062 ], [ 0x3F8446F860000000, %1059 ]
  %1074 = load float, ptr %365, align 8, !tbaa !380
  %1075 = fcmp ogt float %1073, %1074
  %1076 = fmul float %1074, 0x3FECCCCCC0000000
  %1077 = call float @llvm.fmuladd.f32(float %1073, float 0x3FB99999A0000000, float %1076)
  %1078 = select i1 %1075, float %1077, float %1073
  store float %1078, ptr %365, align 8, !tbaa !380
  %1079 = fcmp oeq float %412, 1.000000e+00
  %1080 = call float @llvm.fmuladd.f32(float %1078, float 1.500000e+00, float %412)
  %1081 = fcmp ult float %1080, 1.000000e+00
  %1082 = select i1 %1079, i1 true, i1 %1081
  %1083 = fsub float 1.000000e+00, %412
  %1084 = select i1 %1082, float %1078, float %1083
  br label %1085

1085:                                             ; preds = %1045, %1072
  %1086 = phi float [ %1084, %1072 ], [ %411, %1045 ]
  %1087 = fadd float %412, %1086
  %1088 = fcmp ugt float %1087, 1.000000e+00
  br i1 %1088, label %1089, label %410, !llvm.loop !410

1089:                                             ; preds = %1085, %403
  %1090 = add i32 %404, 1
  %1091 = icmp eq i32 %404, 0
  br i1 %1091, label %1092, label %403, !llvm.loop !411

1092:                                             ; preds = %1089, %362, %320
  br i1 %80, label %1099, label %1093

1093:                                             ; preds = %1092
  %1094 = fptosi float %73 to i32
  call void @BKE_ptcache_validate(ptr noundef %16, i32 noundef %1094) #16
  %1095 = load i32, ptr %9, align 4, !tbaa !95
  %1096 = icmp eq i32 %1095, %1094
  br i1 %1096, label %1099, label %1097

1097:                                             ; preds = %1093
  %1098 = call i32 @BKE_ptcache_write(ptr noundef nonnull %74, i32 noundef %1094) #16
  br label %1099

1099:                                             ; preds = %1093, %1097, %1092
  call fastcc void @update_children(ptr noundef %0)
  %1100 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 15
  %1101 = load ptr, ptr %1100, align 8, !tbaa !128
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1104, label %1103

1103:                                             ; preds = %1099
  call void @end_latt_deform(ptr noundef nonnull %1101) #16
  store ptr null, ptr %1100, align 8, !tbaa !128
  br label %1104

1104:                                             ; preds = %213, %175, %170, %167, %1099, %1103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #16
  ret void
}

declare void @free_keyed_keys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @distribute_particles(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca %struct.ListBase, align 8
  %22 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !112
  %28 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = tail call ptr @psys_get_modifier(ptr noundef %27, ptr noundef %29) #16
  br label %31

31:                                               ; preds = %2, %25
  %32 = phi ptr [ %30, %25 ], [ %23, %2 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %1643, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = icmp eq ptr %36, null
  br i1 %37, label %1663, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %22, align 8, !tbaa !146
  %40 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !102
  %43 = tail call i32 @BKE_scene_num_threads(ptr noundef %42) #16
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %45 = sext i32 %43 to i64
  %46 = shl nsw i64 %45, 5
  %47 = tail call ptr %44(i64 noundef %46, ptr noundef nonnull @.str.2) #16
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %49 = tail call ptr %48(i64 noundef 248, ptr noundef nonnull @.str.3) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !104
  %50 = getelementptr inbounds %struct.ParticleSimulationData, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  %52 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !108
  %54 = getelementptr inbounds %struct.ParticleThreadContext, ptr %49, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !111
  %55 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !112
  %57 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !113
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %60, i64 0, i32 31
  %62 = load i16, ptr %61, align 4, !tbaa !114
  %63 = tail call ptr @give_current_material(ptr noundef %56, i16 noundef signext %62) #16
  %64 = getelementptr inbounds %struct.ParticleThreadContext, ptr %49, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr align 8 %47, i8 0, i64 %46, i1 false)
  %65 = icmp sgt i32 %43, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %38
  %67 = zext nneg i32 %43 to i64
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %74, %68 ]
  %70 = getelementptr inbounds %struct.ParticleThread, ptr %47, i64 %69
  store ptr %49, ptr %70, align 8, !tbaa !116
  %71 = getelementptr inbounds %struct.ParticleThread, ptr %47, i64 %69, i32 3
  %72 = trunc i64 %69 to i32
  store i32 %72, ptr %71, align 8, !tbaa !118
  %73 = getelementptr inbounds %struct.ParticleThread, ptr %47, i64 %69, i32 4
  store i32 %43, ptr %73, align 4, !tbaa !119
  %74 = add nuw nsw i64 %69, 1
  %75 = icmp eq i64 %74, %67
  br i1 %75, label %76, label %68, !llvm.loop !120

76:                                               ; preds = %68, %38
  %77 = load ptr, ptr %0, align 8, !tbaa !102
  %78 = load ptr, ptr %47, align 8, !tbaa !116
  %79 = getelementptr inbounds %struct.ParticleSimulationData, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !412
  %81 = getelementptr inbounds %struct.ParticleSimulationData, ptr %78, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !127
  %83 = getelementptr inbounds %struct.ParticleThread, ptr %47, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #16
  %85 = icmp eq ptr %80, null
  %86 = icmp eq ptr %82, null
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %1621, label %88

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  %91 = icmp eq ptr %90, null
  br i1 %91, label %1621, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 26
  %94 = load i32, ptr %93, align 8, !tbaa !55
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %1621, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 11
  %98 = load i32, ptr %97, align 8, !tbaa !82
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 52
  %102 = load ptr, ptr %101, align 8, !tbaa !91
  %103 = tail call ptr %102(ptr noundef %41, i32 noundef 7) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %1621

107:                                              ; preds = %100, %96
  %108 = icmp eq i32 %1, 4
  br i1 %108, label %109, label %225

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 19
  %111 = load i16, ptr %110, align 4, !tbaa !53
  %112 = icmp eq i16 %111, 2
  br i1 %112, label %815, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 23
  %115 = load i32, ptr %114, align 4, !tbaa !150
  %116 = add nsw i32 %115, 31415926
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 24
  %118 = load i32, ptr %117, align 8, !tbaa !413
  %119 = add nsw i32 %116, %118
  tail call void @BLI_srandom(i32 noundef %119) #16
  %120 = load ptr, ptr %89, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.ParticleSettings, ptr %120, i64 0, i32 19
  %122 = load i16, ptr %121, align 4, !tbaa !53
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 39
  %126 = load ptr, ptr %125, align 8, !tbaa !43
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct.ParticleSettings, ptr %120, i64 0, i32 90
  %129 = getelementptr inbounds %struct.ParticleSettings, ptr %120, i64 0, i32 89
  %130 = select i1 %127, ptr %129, ptr %128
  %131 = load i32, ptr %130, align 4, !tbaa !95
  %132 = getelementptr inbounds %struct.Scene, ptr %77, i64 0, i32 22
  %133 = tail call i32 @get_render_child_particle_number(ptr noundef nonnull %132, i32 noundef %131) #16
  br label %134

134:                                              ; preds = %124, %113
  %135 = phi i32 [ %133, %124 ], [ 0, %113 ]
  %136 = load i32, ptr %93, align 8, !tbaa !55
  %137 = load ptr, ptr %89, align 8, !tbaa !34
  %138 = getelementptr inbounds %struct.ParticleSettings, ptr %137, i64 0, i32 19
  %139 = load i16, ptr %138, align 4, !tbaa !53
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 39
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = icmp eq ptr %143, null
  %145 = getelementptr inbounds %struct.ParticleSettings, ptr %137, i64 0, i32 90
  %146 = getelementptr inbounds %struct.ParticleSettings, ptr %137, i64 0, i32 89
  %147 = select i1 %144, ptr %146, ptr %145
  %148 = load i32, ptr %147, align 4, !tbaa !95
  %149 = getelementptr inbounds %struct.Scene, ptr %77, i64 0, i32 22
  %150 = tail call i32 @get_render_child_particle_number(ptr noundef nonnull %149, i32 noundef %148) #16
  br label %151

151:                                              ; preds = %141, %134
  %152 = phi i32 [ %150, %141 ], [ 0, %134 ]
  %153 = mul nsw i32 %152, %136
  %154 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !71
  %156 = icmp eq ptr %155, null
  br i1 %156, label %172, label %157

157:                                              ; preds = %151
  %158 = load ptr, ptr %89, align 8, !tbaa !34
  %159 = getelementptr inbounds %struct.ParticleSettings, ptr %158, i64 0, i32 19
  %160 = load i16, ptr %159, align 4, !tbaa !53
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 28
  %164 = load i32, ptr %163, align 8, !tbaa !73
  %165 = icmp eq i32 %164, %153
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = sext i32 %153 to i64
  %168 = shl nsw i64 %167, 6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %155, i8 0, i64 %168, i1 false)
  br label %185

169:                                              ; preds = %162, %157
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %170(ptr noundef nonnull %155) #16
  store ptr null, ptr %154, align 8, !tbaa !71
  %171 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 28
  store i32 0, ptr %171, align 8, !tbaa !73
  br label %172

172:                                              ; preds = %169, %151
  %173 = load ptr, ptr %89, align 8, !tbaa !34
  %174 = getelementptr inbounds %struct.ParticleSettings, ptr %173, i64 0, i32 19
  %175 = load i16, ptr %174, align 4, !tbaa !53
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 28
  store i32 %153, ptr %178, align 8, !tbaa !73
  %179 = icmp eq i32 %153, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %182 = sext i32 %153 to i64
  %183 = shl nsw i64 %182, 6
  %184 = tail call ptr %181(i64 noundef %183, ptr noundef nonnull @.str.22) #16
  store ptr %184, ptr %154, align 8, !tbaa !71
  br label %185

185:                                              ; preds = %166, %172, %177, %180
  %186 = icmp sgt i32 %135, 0
  br i1 %186, label %187, label %224

187:                                              ; preds = %185
  %188 = load ptr, ptr %154, align 8, !tbaa !71
  br label %189

189:                                              ; preds = %187, %220
  %190 = phi ptr [ %221, %220 ], [ %188, %187 ]
  %191 = phi i32 [ %222, %220 ], [ 0, %187 ]
  %192 = load i32, ptr %93, align 8, !tbaa !55
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %189, %215
  %195 = phi ptr [ %217, %215 ], [ %190, %189 ]
  %196 = phi i32 [ %216, %215 ], [ 0, %189 ]
  %197 = getelementptr inbounds %struct.ChildParticle, ptr %195, i64 0, i32 1
  store i32 %196, ptr %197, align 4, !tbaa !414
  %198 = getelementptr inbounds %struct.ChildParticle, ptr %195, i64 0, i32 4
  %199 = getelementptr inbounds %struct.ChildParticle, ptr %195, i64 0, i32 4, i64 1
  %200 = getelementptr inbounds %struct.ChildParticle, ptr %195, i64 0, i32 4, i64 2
  br label %201

201:                                              ; preds = %194, %201
  %202 = tail call float @BLI_frand() #16
  %203 = tail call float @llvm.fmuladd.f32(float %202, float 2.000000e+00, float -1.000000e+00)
  store float %203, ptr %198, align 4, !tbaa !105
  %204 = tail call float @BLI_frand() #16
  %205 = tail call float @llvm.fmuladd.f32(float %204, float 2.000000e+00, float -1.000000e+00)
  store float %205, ptr %199, align 4, !tbaa !105
  %206 = tail call float @BLI_frand() #16
  %207 = tail call float @llvm.fmuladd.f32(float %206, float 2.000000e+00, float -1.000000e+00)
  store float %207, ptr %200, align 4, !tbaa !105
  %208 = load float, ptr %198, align 4, !tbaa !105
  %209 = load float, ptr %199, align 4, !tbaa !105
  %210 = fmul float %209, %209
  %211 = tail call float @llvm.fmuladd.f32(float %208, float %208, float %210)
  %212 = tail call float @llvm.fmuladd.f32(float %207, float %207, float %211)
  %213 = tail call float @sqrtf(float noundef %212) #16
  %214 = fcmp ult float %213, 1.000000e+00
  br i1 %214, label %215, label %201, !llvm.loop !416

215:                                              ; preds = %201
  store i32 -1, ptr %195, align 4, !tbaa !417
  %216 = add nuw nsw i32 %196, 1
  %217 = getelementptr inbounds %struct.ChildParticle, ptr %195, i64 1
  %218 = load i32, ptr %93, align 8, !tbaa !55
  %219 = icmp slt i32 %216, %218
  br i1 %219, label %194, label %220, !llvm.loop !418

220:                                              ; preds = %215, %189
  %221 = phi ptr [ %190, %189 ], [ %217, %215 ]
  %222 = add nuw nsw i32 %191, 1
  %223 = icmp eq i32 %222, %135
  br i1 %223, label %224, label %189, !llvm.loop !419

224:                                              ; preds = %220, %185
  tail call void @psys_calc_dmcache(ptr noundef %80, ptr noundef %41, ptr noundef %82)
  br label %1621

225:                                              ; preds = %107
  %226 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 9
  %227 = load i16, ptr %226, align 4, !tbaa !56
  %228 = icmp eq i16 %227, 2
  %229 = icmp ne i32 %1, 0
  %230 = and i1 %229, %228
  br i1 %230, label %231, label %815

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 23
  %233 = load i32, ptr %232, align 4, !tbaa !150
  %234 = add nsw i32 %233, 31415926
  tail call void @BLI_srandom(i32 noundef %234) #16
  %235 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 19
  %236 = load ptr, ptr %235, align 8, !tbaa !77
  %237 = tail call ptr @CDDM_from_mesh(ptr noundef %236) #16
  tail call void @DM_ensure_tessface(ptr noundef %237) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %238 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 50
  %239 = load ptr, ptr %238, align 8, !tbaa !88
  %240 = tail call ptr %239(ptr noundef %237, i32 noundef 0) #16
  %241 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 23
  %242 = load ptr, ptr %241, align 8, !tbaa !85
  %243 = tail call i32 %242(ptr noundef %237) #16
  %244 = load ptr, ptr %89, align 8, !tbaa !34
  %245 = getelementptr inbounds %struct.ParticleSettings, ptr %244, i64 0, i32 8
  %246 = load i16, ptr %245, align 2, !tbaa !57
  %247 = getelementptr inbounds %struct.ParticleSettings, ptr %244, i64 0, i32 65
  %248 = load i32, ptr %247, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %249 = icmp sgt i32 %243, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %231
  %251 = load float, ptr %240, align 4, !tbaa !105
  store float %251, ptr %3, align 4, !tbaa !105
  %252 = getelementptr inbounds float, ptr %240, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !105
  %254 = getelementptr inbounds float, ptr %3, i64 1
  store float %253, ptr %254, align 4, !tbaa !105
  %255 = getelementptr inbounds float, ptr %240, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !105
  %257 = getelementptr inbounds float, ptr %3, i64 2
  store float %256, ptr %257, align 4, !tbaa !105
  %258 = load float, ptr %240, align 4, !tbaa !105
  store float %258, ptr %4, align 4, !tbaa !105
  %259 = load float, ptr %252, align 4, !tbaa !105
  %260 = getelementptr inbounds float, ptr %4, i64 1
  store float %259, ptr %260, align 4, !tbaa !105
  %261 = load float, ptr %255, align 4, !tbaa !105
  %262 = getelementptr inbounds float, ptr %4, i64 2
  store float %261, ptr %262, align 4, !tbaa !105
  %263 = icmp eq i32 %243, 1
  br i1 %263, label %275, label %264

264:                                              ; preds = %250, %264
  %265 = phi ptr [ %267, %264 ], [ %240, %250 ]
  %266 = phi i32 [ %268, %264 ], [ 1, %250 ]
  %267 = getelementptr inbounds %struct.MVert, ptr %265, i64 1
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %267) #16
  %268 = add nuw nsw i32 %266, 1
  %269 = icmp eq i32 %268, %243
  br i1 %269, label %275, label %264, !llvm.loop !420

270:                                              ; preds = %231
  store float 0.000000e+00, ptr %3, align 4, !tbaa !105
  %271 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %271, align 4, !tbaa !105
  %272 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %272, align 4, !tbaa !105
  store float 0.000000e+00, ptr %4, align 4, !tbaa !105
  %273 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %273, align 4, !tbaa !105
  %274 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %274, align 4, !tbaa !105
  br label %275

275:                                              ; preds = %264, %250, %270
  %276 = load float, ptr %4, align 4, !tbaa !105
  %277 = load float, ptr %3, align 4, !tbaa !105
  %278 = fsub float %276, %277
  store float %278, ptr %5, align 4, !tbaa !105
  %279 = getelementptr inbounds float, ptr %4, i64 1
  %280 = load float, ptr %279, align 4, !tbaa !105
  %281 = getelementptr inbounds float, ptr %3, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !105
  %283 = fsub float %280, %282
  %284 = getelementptr inbounds float, ptr %5, i64 1
  store float %283, ptr %284, align 4, !tbaa !105
  %285 = getelementptr inbounds float, ptr %4, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !105
  %287 = getelementptr inbounds float, ptr %3, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !105
  %289 = fsub float %286, %288
  %290 = getelementptr inbounds float, ptr %5, i64 2
  store float %289, ptr %290, align 4, !tbaa !105
  %291 = call float @llvm.fabs.f32(float %278)
  %292 = call float @llvm.fabs.f32(float %283)
  %293 = call float @llvm.fabs.f32(float %289)
  %294 = fcmp ogt float %291, %292
  %295 = fcmp ogt float %291, %293
  %296 = select i1 %295, i32 0, i32 2
  %297 = fcmp ogt float %292, %293
  %298 = select i1 %297, i32 1, i32 2
  %299 = select i1 %294, i32 %296, i32 %298
  %300 = freeze i32 %299
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %301
  %303 = load float, ptr %302, align 4, !tbaa !105
  %304 = sitofp i32 %248 to float
  %305 = fdiv float %303, %304
  %306 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %301
  store i32 %248, ptr %306, align 4, !tbaa !95
  %307 = add i32 %300, 1
  %308 = icmp eq i32 %307, 3
  %309 = select i1 %308, i32 0, i32 %307
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %310
  %312 = load float, ptr %311, align 4, !tbaa !105
  %313 = fdiv float %312, %305
  %314 = call float @llvm.ceil.f32(float %313)
  %315 = fptosi float %314 to i32
  %316 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %310
  store i32 %315, ptr %316, align 4, !tbaa !95
  %317 = add nuw nsw i32 %300, 2
  %318 = urem i32 %317, 3
  %319 = zext nneg i32 %318 to i64
  %320 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %319
  %321 = load float, ptr %320, align 4, !tbaa !105
  %322 = fdiv float %321, %305
  %323 = call float @llvm.ceil.f32(float %322)
  %324 = fptosi float %323 to i32
  %325 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %319
  store i32 %324, ptr %325, align 4, !tbaa !95
  %326 = load i32, ptr %316, align 4, !tbaa !95
  %327 = call i32 @llvm.smin.i32(i32 %326, i32 %248)
  store i32 %327, ptr %316, align 4, !tbaa !95
  %328 = load i32, ptr %325, align 4, !tbaa !95
  %329 = call i32 @llvm.smin.i32(i32 %328, i32 %248)
  store i32 %329, ptr %325, align 4, !tbaa !95
  %330 = load i32, ptr %6, align 4
  %331 = call i32 @llvm.smax.i32(i32 %330, i32 1)
  store i32 %331, ptr %6, align 4, !tbaa !95
  %332 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  %333 = load i32, ptr %332, align 4
  %334 = call i32 @llvm.smax.i32(i32 %333, i32 1)
  store i32 %334, ptr %332, align 4, !tbaa !95
  %335 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  %336 = load i32, ptr %335, align 4
  %337 = call i32 @llvm.smax.i32(i32 %336, i32 1)
  store i32 %337, ptr %335, align 4, !tbaa !95
  %338 = fcmp olt float %305, %278
  %339 = fmul float %305, 5.000000e-01
  %340 = fmul float %278, 5.000000e-01
  %341 = select i1 %338, float %339, float %340
  %342 = fadd float %277, %341
  store float %342, ptr %3, align 4, !tbaa !105
  %343 = fcmp olt float %305, %283
  %344 = fmul float %283, 5.000000e-01
  %345 = select i1 %343, float %339, float %344
  %346 = fadd float %282, %345
  store float %346, ptr %281, align 4, !tbaa !105
  %347 = fcmp olt float %305, %289
  %348 = fmul float %289, 5.000000e-01
  %349 = select i1 %347, float %339, float %348
  %350 = fadd float %288, %349
  store float %350, ptr %287, align 4, !tbaa !105
  %351 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !64
  %353 = icmp sgt i32 %248, 0
  br i1 %353, label %354, label %385

354:                                              ; preds = %275, %382
  %355 = phi ptr [ %377, %382 ], [ %352, %275 ]
  %356 = phi i32 [ %383, %382 ], [ 0, %275 ]
  %357 = sitofp i32 %356 to float
  %358 = call float @llvm.fmuladd.f32(float %357, float %305, float %342)
  br label %359

359:                                              ; preds = %354, %379
  %360 = phi ptr [ %355, %354 ], [ %377, %379 ]
  %361 = phi i32 [ 0, %354 ], [ %380, %379 ]
  %362 = sitofp i32 %361 to float
  %363 = call float @llvm.fmuladd.f32(float %362, float %305, float %346)
  br label %364

364:                                              ; preds = %359, %364
  %365 = phi ptr [ %360, %359 ], [ %377, %364 ]
  %366 = phi i32 [ 0, %359 ], [ %376, %364 ]
  %367 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 0, i32 11
  store float %358, ptr %367, align 8, !tbaa !105
  %368 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 0, i32 11, i64 1
  store float %363, ptr %368, align 4, !tbaa !105
  %369 = sitofp i32 %366 to float
  %370 = call float @llvm.fmuladd.f32(float %369, float %305, float %350)
  %371 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 0, i32 11, i64 2
  store float %370, ptr %371, align 8, !tbaa !105
  %372 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 0, i32 17
  %373 = load i16, ptr %372, align 4, !tbaa !65
  %374 = or i16 %373, 1
  store i16 %374, ptr %372, align 4, !tbaa !65
  %375 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 0, i32 16
  store i32 0, ptr %375, align 8, !tbaa !142
  %376 = add nuw nsw i32 %366, 1
  %377 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 1
  %378 = icmp eq i32 %376, %248
  br i1 %378, label %379, label %364, !llvm.loop !421

379:                                              ; preds = %364
  %380 = add nuw nsw i32 %361, 1
  %381 = icmp eq i32 %380, %248
  br i1 %381, label %382, label %359, !llvm.loop !422

382:                                              ; preds = %379
  %383 = add nuw nsw i32 %356, 1
  %384 = icmp eq i32 %383, %248
  br i1 %384, label %385, label %354, !llvm.loop !423

385:                                              ; preds = %382, %275
  %386 = icmp eq i16 %246, 0
  br i1 %386, label %387, label %430

387:                                              ; preds = %385
  %388 = fsub float %342, %339
  store float %388, ptr %3, align 4, !tbaa !105
  %389 = fsub float %346, %339
  store float %389, ptr %281, align 4, !tbaa !105
  %390 = fsub float %350, %339
  store float %390, ptr %287, align 4, !tbaa !105
  %391 = icmp sgt i32 %243, 0
  br i1 %391, label %392, label %664

392:                                              ; preds = %387
  %393 = add nsw i32 %331, -1
  %394 = sitofp i32 %393 to float
  %395 = add nsw i32 %334, -1
  %396 = sitofp i32 %395 to float
  %397 = add nsw i32 %337, -1
  %398 = sitofp i32 %397 to float
  br label %399

399:                                              ; preds = %392, %399
  %400 = phi ptr [ %240, %392 ], [ %428, %399 ]
  %401 = phi i32 [ 0, %392 ], [ %427, %399 ]
  %402 = load float, ptr %400, align 4, !tbaa !105
  %403 = fsub float %402, %388
  %404 = getelementptr inbounds float, ptr %400, i64 1
  %405 = load float, ptr %404, align 4, !tbaa !105
  %406 = fsub float %405, %389
  %407 = getelementptr inbounds float, ptr %400, i64 2
  %408 = load float, ptr %407, align 4, !tbaa !105
  %409 = fsub float %408, %390
  %410 = fdiv float %403, %278
  %411 = fdiv float %406, %283
  %412 = fdiv float %409, %289
  %413 = fmul float %410, %394
  %414 = fptosi float %413 to i32
  %415 = mul nsw i32 %248, %414
  %416 = fmul float %411, %396
  %417 = fptosi float %416 to i32
  %418 = add nsw i32 %415, %417
  %419 = mul nsw i32 %418, %248
  %420 = fmul float %412, %398
  %421 = fptosi float %420 to i32
  %422 = add nsw i32 %419, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.ParticleData, ptr %352, i64 %423, i32 17
  %425 = load i16, ptr %424, align 4, !tbaa !65
  %426 = and i16 %425, -2
  store i16 %426, ptr %424, align 4, !tbaa !65
  %427 = add nuw nsw i32 %401, 1
  %428 = getelementptr inbounds %struct.MVert, ptr %400, i64 1
  %429 = icmp eq i32 %427, %243
  br i1 %429, label %664, label %399, !llvm.loop !424

430:                                              ; preds = %385
  %431 = icmp eq i16 %246, 1
  %432 = icmp eq i16 %246, 2
  %433 = icmp ult i16 %246, 3
  br i1 %433, label %434, label %664

434:                                              ; preds = %430
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  %435 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 25
  %436 = load ptr, ptr %435, align 8, !tbaa !89
  %437 = call i32 %436(ptr noundef %237) #16
  %438 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 52
  %439 = load ptr, ptr %438, align 8, !tbaa !91
  %440 = call ptr %439(ptr noundef %237, i32 noundef 4) #16
  %441 = mul nsw i32 %248, %248
  %442 = mul nsw i32 %248, %248
  %443 = mul nsw i32 %248, %248
  %444 = getelementptr inbounds float, ptr %7, i64 1
  %445 = getelementptr inbounds float, ptr %7, i64 2
  %446 = getelementptr inbounds float, ptr %8, i64 1
  %447 = getelementptr inbounds float, ptr %8, i64 2
  %448 = icmp sgt i32 %437, 0
  %449 = getelementptr inbounds float, ptr %9, i64 1
  %450 = getelementptr inbounds float, ptr %9, i64 2
  %451 = getelementptr inbounds float, ptr %10, i64 1
  %452 = getelementptr inbounds float, ptr %10, i64 2
  %453 = getelementptr inbounds float, ptr %11, i64 1
  %454 = getelementptr inbounds float, ptr %11, i64 2
  %455 = getelementptr inbounds float, ptr %12, i64 1
  %456 = getelementptr inbounds float, ptr %12, i64 2
  %457 = load i32, ptr %6, align 4
  %458 = icmp sgt i32 %457, 0
  %459 = zext nneg i32 %457 to i64
  br label %463

460:                                              ; preds = %660, %468
  %461 = icmp ult i64 %464, 2
  %462 = and i1 %431, %461
  br i1 %462, label %463, label %663, !llvm.loop !425

463:                                              ; preds = %434, %460
  %464 = phi i64 [ 0, %434 ], [ %472, %460 ]
  %465 = trunc i64 %464 to i32
  switch i32 %465, label %467 [
    i32 0, label %468
    i32 1, label %466
  ]

466:                                              ; preds = %463
  br label %468

467:                                              ; preds = %463
  br label %468

468:                                              ; preds = %463, %467, %466
  %469 = phi i32 [ %248, %466 ], [ 1, %467 ], [ %442, %463 ]
  %470 = phi i32 [ 1, %466 ], [ %443, %467 ], [ %248, %463 ]
  %471 = phi i32 [ %441, %466 ], [ %248, %467 ], [ 1, %463 ]
  %472 = add nuw nsw i64 %464, 1
  %473 = icmp eq i64 %472, 3
  %474 = and i64 %472, 4294967295
  %475 = select i1 %473, i64 0, i64 %474
  %476 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %475
  %477 = load i32, ptr %476, align 4, !tbaa !95
  %478 = icmp sgt i32 %477, 0
  br i1 %478, label %479, label %460

479:                                              ; preds = %468
  %480 = trunc i64 %464 to i32
  %481 = add i32 %480, 2
  %482 = urem i32 %481, 3
  %483 = zext nneg i32 %482 to i64
  %484 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !95
  %486 = icmp sgt i32 %485, 0
  %487 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %464
  %488 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %464
  %489 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %464
  %490 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %464
  %491 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %464
  %492 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %464
  %493 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %464
  %494 = sext i32 %469 to i64
  %495 = sext i32 %469 to i64
  %496 = sext i32 %469 to i64
  %497 = sext i32 %471 to i64
  %498 = sext i32 %470 to i64
  %499 = zext nneg i32 %477 to i64
  %500 = zext nneg i32 %485 to i64
  %501 = trunc i64 %464 to i32
  %502 = trunc i64 %464 to i32
  br label %503

503:                                              ; preds = %479, %660
  %504 = phi i64 [ 0, %479 ], [ %661, %660 ]
  br i1 %486, label %505, label %660

505:                                              ; preds = %503
  %506 = mul nsw i64 %504, %498
  %507 = load float, ptr %487, align 4, !tbaa !105
  %508 = fcmp olt float %305, %507
  %509 = fmul float %507, 5.000000e-01
  %510 = select i1 %508, float %339, float %509
  %511 = call float @llvm.fmuladd.f32(float %305, float 0x3F50624DE0000000, float %507)
  br label %512

512:                                              ; preds = %505, %657
  %513 = phi i64 [ 0, %505 ], [ %658, %657 ]
  %514 = load ptr, ptr %351, align 8, !tbaa !64
  %515 = getelementptr inbounds %struct.ParticleData, ptr %514, i64 %506
  %516 = mul nsw i64 %513, %497
  %517 = getelementptr inbounds %struct.ParticleData, ptr %515, i64 %516
  %518 = getelementptr inbounds %struct.ParticleData, ptr %515, i64 %516, i32 11
  %519 = load float, ptr %518, align 4, !tbaa !105
  store float %519, ptr %7, align 4, !tbaa !105
  %520 = getelementptr inbounds float, ptr %518, i64 1
  %521 = load float, ptr %520, align 4, !tbaa !105
  store float %521, ptr %444, align 4, !tbaa !105
  %522 = getelementptr inbounds float, ptr %518, i64 2
  %523 = load float, ptr %522, align 4, !tbaa !105
  store float %523, ptr %445, align 4, !tbaa !105
  %524 = load float, ptr %488, align 4, !tbaa !105
  %525 = fsub float %524, %510
  store float %525, ptr %488, align 4, !tbaa !105
  %526 = load float, ptr %7, align 4, !tbaa !105
  store float %526, ptr %8, align 4, !tbaa !105
  %527 = load float, ptr %444, align 4, !tbaa !105
  store float %527, ptr %446, align 4, !tbaa !105
  %528 = load float, ptr %445, align 4, !tbaa !105
  store float %528, ptr %447, align 4, !tbaa !105
  %529 = load float, ptr %489, align 4, !tbaa !105
  %530 = fadd float %511, %529
  store float %530, ptr %489, align 4, !tbaa !105
  %531 = call float @llvm.fmuladd.f32(float %305, float 0xBF50624DE0000000, float %525)
  store float %531, ptr %488, align 4, !tbaa !105
  br i1 %448, label %532, label %625

532:                                              ; preds = %512, %621
  %533 = phi i32 [ %622, %621 ], [ 0, %512 ]
  %534 = phi ptr [ %623, %621 ], [ %440, %512 ]
  %535 = load i32, ptr %534, align 4, !tbaa !279
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds %struct.MVert, ptr %240, i64 %536
  %538 = load float, ptr %537, align 4, !tbaa !105
  store float %538, ptr %9, align 4, !tbaa !105
  %539 = getelementptr inbounds float, ptr %537, i64 1
  %540 = load float, ptr %539, align 4, !tbaa !105
  store float %540, ptr %449, align 4, !tbaa !105
  %541 = getelementptr inbounds float, ptr %537, i64 2
  %542 = load float, ptr %541, align 4, !tbaa !105
  store float %542, ptr %450, align 4, !tbaa !105
  %543 = getelementptr inbounds %struct.MFace, ptr %534, i64 0, i32 1
  %544 = load i32, ptr %543, align 4, !tbaa !281
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds %struct.MVert, ptr %240, i64 %545
  %547 = load float, ptr %546, align 4, !tbaa !105
  store float %547, ptr %10, align 4, !tbaa !105
  %548 = getelementptr inbounds float, ptr %546, i64 1
  %549 = load float, ptr %548, align 4, !tbaa !105
  store float %549, ptr %451, align 4, !tbaa !105
  %550 = getelementptr inbounds float, ptr %546, i64 2
  %551 = load float, ptr %550, align 4, !tbaa !105
  store float %551, ptr %452, align 4, !tbaa !105
  %552 = getelementptr inbounds %struct.MFace, ptr %534, i64 0, i32 2
  %553 = load i32, ptr %552, align 4, !tbaa !282
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds %struct.MVert, ptr %240, i64 %554
  %556 = load float, ptr %555, align 4, !tbaa !105
  store float %556, ptr %11, align 4, !tbaa !105
  %557 = getelementptr inbounds float, ptr %555, i64 1
  %558 = load float, ptr %557, align 4, !tbaa !105
  store float %558, ptr %453, align 4, !tbaa !105
  %559 = getelementptr inbounds float, ptr %555, i64 2
  %560 = load float, ptr %559, align 4, !tbaa !105
  store float %560, ptr %454, align 4, !tbaa !105
  %561 = call zeroext i8 @isect_axial_line_tri_v3(i32 noundef %501, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %13) #16
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %585, label %563

563:                                              ; preds = %532
  %564 = load float, ptr %13, align 4, !tbaa !105
  br i1 %431, label %565, label %575

565:                                              ; preds = %563
  %566 = load i32, ptr %491, align 4, !tbaa !95
  %567 = sitofp i32 %566 to float
  %568 = fmul float %564, %567
  %569 = fptosi float %568 to i32
  %570 = mul nsw i32 %469, %569
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.ParticleData, ptr %517, i64 %571, i32 17
  %573 = load i16, ptr %572, align 4, !tbaa !65
  %574 = and i16 %573, -2
  store i16 %574, ptr %572, align 4, !tbaa !65
  br label %621

575:                                              ; preds = %563
  %576 = load i32, ptr %490, align 4, !tbaa !95
  %577 = sitofp i32 %576 to float
  %578 = fmul float %564, %577
  %579 = fptosi float %578 to i32
  %580 = mul nsw i32 %469, %579
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.ParticleData, ptr %517, i64 %581, i32 16
  %583 = load i32, ptr %582, align 8, !tbaa !142
  %584 = add nsw i32 %583, 1
  store i32 %584, ptr %582, align 8, !tbaa !142
  br label %621

585:                                              ; preds = %532
  %586 = getelementptr inbounds %struct.MFace, ptr %534, i64 0, i32 3
  %587 = load i32, ptr %586, align 4, !tbaa !283
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %621, label %589

589:                                              ; preds = %585
  %590 = zext i32 %587 to i64
  %591 = getelementptr inbounds %struct.MVert, ptr %240, i64 %590
  %592 = load float, ptr %591, align 4, !tbaa !105
  store float %592, ptr %12, align 16, !tbaa !105
  %593 = getelementptr inbounds float, ptr %591, i64 1
  %594 = load float, ptr %593, align 4, !tbaa !105
  store float %594, ptr %455, align 4, !tbaa !105
  %595 = getelementptr inbounds float, ptr %591, i64 2
  %596 = load float, ptr %595, align 4, !tbaa !105
  store float %596, ptr %456, align 8, !tbaa !105
  %597 = call zeroext i8 @isect_axial_line_tri_v3(i32 noundef %502, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %13) #16
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %621, label %599

599:                                              ; preds = %589
  %600 = load float, ptr %13, align 4, !tbaa !105
  br i1 %431, label %601, label %611

601:                                              ; preds = %599
  %602 = load i32, ptr %493, align 4, !tbaa !95
  %603 = sitofp i32 %602 to float
  %604 = fmul float %600, %603
  %605 = fptosi float %604 to i32
  %606 = mul nsw i32 %469, %605
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds %struct.ParticleData, ptr %517, i64 %607, i32 17
  %609 = load i16, ptr %608, align 4, !tbaa !65
  %610 = and i16 %609, -2
  store i16 %610, ptr %608, align 4, !tbaa !65
  br label %621

611:                                              ; preds = %599
  %612 = load i32, ptr %492, align 4, !tbaa !95
  %613 = sitofp i32 %612 to float
  %614 = fmul float %600, %613
  %615 = fptosi float %614 to i32
  %616 = mul nsw i32 %469, %615
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.ParticleData, ptr %517, i64 %617, i32 16
  %619 = load i32, ptr %618, align 8, !tbaa !142
  %620 = add nsw i32 %619, 1
  store i32 %620, ptr %618, align 8, !tbaa !142
  br label %621

621:                                              ; preds = %611, %601, %589, %585, %575, %565
  %622 = add nuw nsw i32 %533, 1
  %623 = getelementptr inbounds %struct.MFace, ptr %534, i64 1
  %624 = icmp eq i32 %622, %437
  br i1 %624, label %625, label %532, !llvm.loop !426

625:                                              ; preds = %621, %512
  br i1 %432, label %626, label %657

626:                                              ; preds = %625
  %627 = getelementptr inbounds %struct.ParticleData, ptr %515, i64 %516, i32 16
  %628 = load i32, ptr %627, align 8, !tbaa !142
  %629 = srem i32 %628, 2
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %633, label %631

631:                                              ; preds = %626
  %632 = add nsw i32 %628, 1
  store i32 %632, ptr %627, align 8, !tbaa !142
  br label %633

633:                                              ; preds = %631, %626
  br i1 %458, label %634, label %657

634:                                              ; preds = %633, %649
  %635 = phi i64 [ %655, %649 ], [ 0, %633 ]
  %636 = phi i32 [ %654, %649 ], [ %629, %633 ]
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %644

638:                                              ; preds = %634
  %639 = mul nsw i64 %635, %494
  %640 = getelementptr inbounds %struct.ParticleData, ptr %517, i64 %639, i32 16
  %641 = load i32, ptr %640, align 8, !tbaa !142
  %642 = and i32 %641, 1
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %649, label %644

644:                                              ; preds = %638, %634
  %645 = mul nsw i64 %635, %496
  %646 = getelementptr inbounds %struct.ParticleData, ptr %517, i64 %645, i32 17
  %647 = load i16, ptr %646, align 4, !tbaa !65
  %648 = and i16 %647, -2
  store i16 %648, ptr %646, align 4, !tbaa !65
  br label %649

649:                                              ; preds = %644, %638
  %650 = mul nsw i64 %635, %495
  %651 = getelementptr inbounds %struct.ParticleData, ptr %517, i64 %650, i32 16
  %652 = load i32, ptr %651, align 8, !tbaa !142
  %653 = add nsw i32 %652, %636
  %654 = srem i32 %653, 2
  %655 = add nuw nsw i64 %635, 1
  %656 = icmp eq i64 %655, %459
  br i1 %656, label %657, label %634, !llvm.loop !427

657:                                              ; preds = %649, %633, %625
  %658 = add nuw nsw i64 %513, 1
  %659 = icmp eq i64 %658, %500
  br i1 %659, label %660, label %512, !llvm.loop !428

660:                                              ; preds = %657, %503
  %661 = add nuw nsw i64 %504, 1
  %662 = icmp eq i64 %661, %499
  br i1 %662, label %460, label %503, !llvm.loop !429

663:                                              ; preds = %460
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %664

664:                                              ; preds = %399, %387, %663, %430
  %665 = load ptr, ptr %89, align 8, !tbaa !34
  %666 = getelementptr inbounds %struct.ParticleSettings, ptr %665, i64 0, i32 5
  %667 = load i32, ptr %666, align 8, !tbaa !250
  %668 = and i32 %667, 16777216
  %669 = icmp ne i32 %668, 0
  %670 = icmp sgt i32 %248, 0
  %671 = select i1 %669, i1 %670, i1 false
  br i1 %671, label %672, label %709

672:                                              ; preds = %664
  %673 = load ptr, ptr %351, align 8, !tbaa !64
  br label %674

674:                                              ; preds = %672, %706
  %675 = phi ptr [ %673, %672 ], [ %701, %706 ]
  %676 = phi i32 [ 0, %672 ], [ %707, %706 ]
  br label %677

677:                                              ; preds = %674, %703
  %678 = phi ptr [ %701, %703 ], [ %675, %674 ]
  %679 = phi i32 [ %704, %703 ], [ 0, %674 ]
  %680 = and i32 %679, 1
  %681 = icmp eq i32 %680, 0
  br label %682

682:                                              ; preds = %677, %699
  %683 = phi ptr [ %678, %677 ], [ %701, %699 ]
  %684 = phi i32 [ 0, %677 ], [ %700, %699 ]
  br i1 %681, label %689, label %685

685:                                              ; preds = %682
  %686 = getelementptr inbounds %struct.ParticleData, ptr %683, i64 0, i32 11
  %687 = load float, ptr %686, align 8, !tbaa !105
  %688 = fadd float %339, %687
  store float %688, ptr %686, align 8, !tbaa !105
  br label %689

689:                                              ; preds = %685, %682
  %690 = and i32 %684, 1
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %699, label %692

692:                                              ; preds = %689
  %693 = getelementptr inbounds %struct.ParticleData, ptr %683, i64 0, i32 11
  %694 = load float, ptr %693, align 8, !tbaa !105
  %695 = fadd float %339, %694
  store float %695, ptr %693, align 8, !tbaa !105
  %696 = getelementptr inbounds %struct.ParticleData, ptr %683, i64 0, i32 11, i64 1
  %697 = load float, ptr %696, align 4, !tbaa !105
  %698 = fadd float %339, %697
  store float %698, ptr %696, align 4, !tbaa !105
  br label %699

699:                                              ; preds = %692, %689
  %700 = add nuw nsw i32 %684, 1
  %701 = getelementptr inbounds %struct.ParticleData, ptr %683, i64 1
  %702 = icmp eq i32 %700, %248
  br i1 %702, label %703, label %682, !llvm.loop !430

703:                                              ; preds = %699
  %704 = add nuw nsw i32 %679, 1
  %705 = icmp eq i32 %704, %248
  br i1 %705, label %706, label %677, !llvm.loop !431

706:                                              ; preds = %703
  %707 = add nuw nsw i32 %676, 1
  %708 = icmp eq i32 %707, %248
  br i1 %708, label %709, label %674, !llvm.loop !432

709:                                              ; preds = %706, %664
  %710 = and i32 %667, 67108864
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %750, label %712

712:                                              ; preds = %709
  %713 = load i32, ptr %6, align 4, !tbaa !95
  %714 = icmp sgt i32 %713, 0
  br i1 %714, label %715, label %750

715:                                              ; preds = %712
  %716 = load i32, ptr %332, align 4, !tbaa !95
  %717 = icmp sgt i32 %716, 0
  %718 = load i32, ptr %335, align 4
  %719 = icmp sgt i32 %718, 0
  %720 = sext i32 %248 to i64
  %721 = sext i32 %248 to i64
  %722 = zext nneg i32 %713 to i64
  %723 = zext nneg i32 %716 to i64
  br label %724

724:                                              ; preds = %715, %747
  %725 = phi i64 [ 0, %715 ], [ %748, %747 ]
  br i1 %717, label %726, label %747

726:                                              ; preds = %724
  %727 = load ptr, ptr %351, align 8, !tbaa !64
  %728 = mul nsw i64 %725, %721
  br label %729

729:                                              ; preds = %726, %744
  %730 = phi i64 [ 0, %726 ], [ %745, %744 ]
  br i1 %719, label %731, label %744

731:                                              ; preds = %729
  %732 = add nsw i64 %730, %728
  %733 = mul nsw i64 %732, %720
  %734 = getelementptr inbounds %struct.ParticleData, ptr %727, i64 %733
  br label %735

735:                                              ; preds = %731, %735
  %736 = phi ptr [ %742, %735 ], [ %734, %731 ]
  %737 = phi i32 [ %741, %735 ], [ 0, %731 ]
  %738 = getelementptr inbounds %struct.ParticleData, ptr %736, i64 0, i32 17
  %739 = load i16, ptr %738, align 4, !tbaa !65
  %740 = xor i16 %739, 1
  store i16 %740, ptr %738, align 4, !tbaa !65
  %741 = add nuw nsw i32 %737, 1
  %742 = getelementptr inbounds %struct.ParticleData, ptr %736, i64 1
  %743 = icmp eq i32 %741, %718
  br i1 %743, label %744, label %735, !llvm.loop !433

744:                                              ; preds = %735, %729
  %745 = add nuw nsw i64 %730, 1
  %746 = icmp eq i64 %745, %723
  br i1 %746, label %747, label %729, !llvm.loop !434

747:                                              ; preds = %744, %724
  %748 = add nuw nsw i64 %725, 1
  %749 = icmp eq i64 %748, %722
  br i1 %749, label %750, label %724, !llvm.loop !435

750:                                              ; preds = %747, %712, %709
  %751 = getelementptr inbounds %struct.ParticleSettings, ptr %665, i64 0, i32 61
  %752 = load float, ptr %751, align 4, !tbaa !436
  %753 = fcmp ogt float %752, 0.000000e+00
  br i1 %753, label %754, label %812

754:                                              ; preds = %750
  %755 = fmul float %305, %752
  %756 = load i32, ptr %93, align 8, !tbaa !55
  %757 = icmp sgt i32 %756, 0
  br i1 %757, label %758, label %812

758:                                              ; preds = %754
  %759 = load ptr, ptr %351, align 8, !tbaa !64
  br label %760

760:                                              ; preds = %758, %808
  %761 = phi ptr [ %810, %808 ], [ %759, %758 ]
  %762 = phi i32 [ %809, %808 ], [ 0, %758 ]
  %763 = getelementptr inbounds %struct.ParticleData, ptr %761, i64 0, i32 17
  %764 = load i16, ptr %763, align 4, !tbaa !65
  %765 = and i16 %764, 1
  %766 = icmp eq i16 %765, 0
  br i1 %766, label %767, label %808

767:                                              ; preds = %760
  %768 = add nuw nsw i32 %762, 31
  %769 = load i32, ptr %232, align 4, !tbaa !150
  %770 = srem i32 %769, 1024
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %771
  %773 = load i32, ptr %772, align 4, !tbaa !95
  %774 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %771
  %775 = load i32, ptr %774, align 4, !tbaa !95
  %776 = mul i32 %775, %768
  %777 = add i32 %776, %773
  %778 = and i32 %777, 1023
  %779 = zext nneg i32 %778 to i64
  %780 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %779
  %781 = load float, ptr %780, align 4, !tbaa !105
  %782 = fadd float %781, -5.000000e-01
  %783 = getelementptr inbounds %struct.ParticleData, ptr %761, i64 0, i32 11
  %784 = load float, ptr %783, align 8, !tbaa !105
  %785 = call float @llvm.fmuladd.f32(float %755, float %782, float %784)
  store float %785, ptr %783, align 8, !tbaa !105
  %786 = add nuw nsw i32 %762, 32
  %787 = mul i32 %775, %786
  %788 = add i32 %787, %773
  %789 = and i32 %788, 1023
  %790 = zext nneg i32 %789 to i64
  %791 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %790
  %792 = load float, ptr %791, align 4, !tbaa !105
  %793 = fadd float %792, -5.000000e-01
  %794 = getelementptr inbounds %struct.ParticleData, ptr %761, i64 0, i32 11, i64 1
  %795 = load float, ptr %794, align 4, !tbaa !105
  %796 = call float @llvm.fmuladd.f32(float %755, float %793, float %795)
  store float %796, ptr %794, align 4, !tbaa !105
  %797 = add nuw nsw i32 %762, 33
  %798 = mul i32 %775, %797
  %799 = add i32 %798, %773
  %800 = and i32 %799, 1023
  %801 = zext nneg i32 %800 to i64
  %802 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %801
  %803 = load float, ptr %802, align 4, !tbaa !105
  %804 = fadd float %803, -5.000000e-01
  %805 = getelementptr inbounds %struct.ParticleData, ptr %761, i64 0, i32 11, i64 2
  %806 = load float, ptr %805, align 8, !tbaa !105
  %807 = call float @llvm.fmuladd.f32(float %755, float %804, float %806)
  store float %807, ptr %805, align 8, !tbaa !105
  br label %808

808:                                              ; preds = %767, %760
  %809 = add nuw nsw i32 %762, 1
  %810 = getelementptr inbounds %struct.ParticleData, ptr %761, i64 1
  %811 = icmp eq i32 %809, %756
  br i1 %811, label %812, label %760, !llvm.loop !437

812:                                              ; preds = %808, %754, %750
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  %813 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 95
  %814 = load ptr, ptr %813, align 8, !tbaa !349
  call void %814(ptr noundef %237) #16
  br label %1621

815:                                              ; preds = %225, %109
  br i1 %108, label %816, label %865

816:                                              ; preds = %815
  %817 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 23
  %818 = load i32, ptr %817, align 4, !tbaa !150
  %819 = add nsw i32 %818, 31415926
  %820 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 24
  %821 = load i32, ptr %820, align 8, !tbaa !413
  %822 = add nsw i32 %819, %821
  tail call void @BLI_srandom(i32 noundef %822) #16
  tail call void @DM_ensure_tessface(ptr noundef %41) #16
  %823 = tail call ptr @BLI_kdtree_new(i32 noundef %94) #16
  %824 = icmp sgt i32 %94, 0
  br i1 %824, label %825, label %846

825:                                              ; preds = %816
  %826 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 3
  %827 = load ptr, ptr %826, align 8, !tbaa !64
  %828 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 8
  %829 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 19
  br label %830

830:                                              ; preds = %825, %830
  %831 = phi ptr [ %827, %825 ], [ %844, %830 ]
  %832 = phi i32 [ 0, %825 ], [ %843, %830 ]
  %833 = load i16, ptr %828, align 2, !tbaa !57
  %834 = sext i16 %833 to i32
  %835 = getelementptr inbounds %struct.ParticleData, ptr %831, i64 0, i32 9
  %836 = load i32, ptr %835, align 8, !tbaa !98
  %837 = getelementptr inbounds %struct.ParticleData, ptr %831, i64 0, i32 10
  %838 = load i32, ptr %837, align 4, !tbaa !99
  %839 = getelementptr inbounds %struct.ParticleData, ptr %831, i64 0, i32 11
  %840 = getelementptr inbounds %struct.ParticleData, ptr %831, i64 0, i32 12
  %841 = load float, ptr %840, align 8, !tbaa !147
  call void @psys_particle_on_dm(ptr noundef %41, i32 noundef %834, i32 noundef %836, i32 noundef %838, ptr noundef nonnull %839, float noundef %841, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef nonnull %16, ptr noundef null) #16
  %842 = load ptr, ptr %829, align 8, !tbaa !77
  call void @BKE_mesh_orco_verts_transform(ptr noundef %842, ptr noundef nonnull %16, i32 noundef 1, i32 noundef 1) #16
  call void @BLI_kdtree_insert(ptr noundef %823, i32 noundef %832, ptr noundef nonnull %16) #16
  %843 = add nuw nsw i32 %832, 1
  %844 = getelementptr inbounds %struct.ParticleData, ptr %831, i64 1
  %845 = icmp eq i32 %843, %94
  br i1 %845, label %846, label %830, !llvm.loop !438

846:                                              ; preds = %830, %816
  call void @BLI_kdtree_balance(ptr noundef %823) #16
  %847 = load i32, ptr %93, align 8, !tbaa !55
  %848 = load ptr, ptr %89, align 8, !tbaa !34
  %849 = getelementptr inbounds %struct.ParticleSettings, ptr %848, i64 0, i32 19
  %850 = load i16, ptr %849, align 4, !tbaa !53
  %851 = icmp eq i16 %850, 0
  br i1 %851, label %862, label %852

852:                                              ; preds = %846
  %853 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 39
  %854 = load ptr, ptr %853, align 8, !tbaa !43
  %855 = icmp eq ptr %854, null
  %856 = getelementptr inbounds %struct.ParticleSettings, ptr %848, i64 0, i32 90
  %857 = getelementptr inbounds %struct.ParticleSettings, ptr %848, i64 0, i32 89
  %858 = select i1 %855, ptr %857, ptr %856
  %859 = load i32, ptr %858, align 4, !tbaa !95
  %860 = getelementptr inbounds %struct.Scene, ptr %77, i64 0, i32 22
  %861 = call i32 @get_render_child_particle_number(ptr noundef nonnull %860, i32 noundef %859) #16
  br label %862

862:                                              ; preds = %852, %846
  %863 = phi i32 [ %861, %852 ], [ 0, %846 ]
  %864 = mul nsw i32 %863, %847
  br label %931

865:                                              ; preds = %815
  %866 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 9
  %867 = load i16, ptr %866, align 4, !tbaa !56
  %868 = sext i16 %867 to i32
  %869 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 23
  %870 = load i32, ptr %869, align 4, !tbaa !150
  %871 = add nsw i32 %870, 31415926
  tail call void @BLI_srandom(i32 noundef %871) #16
  %872 = load ptr, ptr %89, align 8, !tbaa !34
  %873 = getelementptr inbounds %struct.ParticleSettings, ptr %872, i64 0, i32 130
  %874 = load i16, ptr %873, align 8, !tbaa !81
  %875 = icmp eq i16 %874, 0
  br i1 %875, label %876, label %880

876:                                              ; preds = %865
  %877 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 19
  %878 = load ptr, ptr %877, align 8, !tbaa !77
  %879 = tail call ptr @CDDM_from_mesh(ptr noundef %878) #16
  br label %880

880:                                              ; preds = %876, %865
  %881 = phi ptr [ %879, %876 ], [ %41, %865 ]
  %882 = icmp eq i32 %1, 0
  br i1 %882, label %884, label %883

883:                                              ; preds = %880
  tail call void @DM_ensure_tessface(ptr noundef %881) #16
  br label %884

884:                                              ; preds = %883, %880
  %885 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %881, i32 noundef 14) #16
  %886 = icmp eq i8 %885, 0
  br i1 %886, label %887, label %889

887:                                              ; preds = %884
  %888 = tail call ptr @BKE_mesh_orco_verts_get(ptr noundef %80) #16
  tail call void @DM_add_vert_layer(ptr noundef %881, i32 noundef 14, i32 noundef 0, ptr noundef %888) #16
  br label %889

889:                                              ; preds = %887, %884
  br i1 %882, label %890, label %931

890:                                              ; preds = %889
  %891 = getelementptr inbounds %struct.DerivedMesh, ptr %881, i64 0, i32 50
  %892 = load ptr, ptr %891, align 8, !tbaa !88
  %893 = tail call ptr %892(ptr noundef %881, i32 noundef 0) #16
  %894 = load ptr, ptr %891, align 8, !tbaa !88
  %895 = tail call ptr %894(ptr noundef %881, i32 noundef 14) #16
  %896 = getelementptr inbounds %struct.DerivedMesh, ptr %881, i64 0, i32 23
  %897 = load ptr, ptr %896, align 8, !tbaa !85
  %898 = tail call i32 %897(ptr noundef %881) #16
  %899 = tail call ptr @BLI_kdtree_new(i32 noundef %898) #16
  %900 = icmp sgt i32 %898, 0
  br i1 %900, label %901, label %930

901:                                              ; preds = %890
  %902 = icmp eq ptr %895, null
  %903 = getelementptr inbounds float, ptr %14, i64 1
  %904 = getelementptr inbounds float, ptr %14, i64 2
  %905 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 19
  %906 = getelementptr inbounds float, ptr %14, i64 1
  %907 = getelementptr inbounds float, ptr %14, i64 2
  %908 = zext nneg i32 %898 to i64
  br label %909

909:                                              ; preds = %901, %926
  %910 = phi i64 [ 0, %901 ], [ %928, %926 ]
  br i1 %902, label %919, label %911

911:                                              ; preds = %909
  %912 = getelementptr inbounds [3 x float], ptr %895, i64 %910
  %913 = load float, ptr %912, align 4, !tbaa !105
  store float %913, ptr %14, align 4, !tbaa !105
  %914 = getelementptr inbounds float, ptr %912, i64 1
  %915 = load float, ptr %914, align 4, !tbaa !105
  store float %915, ptr %903, align 4, !tbaa !105
  %916 = getelementptr inbounds float, ptr %912, i64 2
  %917 = load float, ptr %916, align 4, !tbaa !105
  store float %917, ptr %904, align 4, !tbaa !105
  %918 = load ptr, ptr %905, align 8, !tbaa !77
  call void @BKE_mesh_orco_verts_transform(ptr noundef %918, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 1) #16
  br label %926

919:                                              ; preds = %909
  %920 = getelementptr inbounds %struct.MVert, ptr %893, i64 %910
  %921 = load float, ptr %920, align 4, !tbaa !105
  store float %921, ptr %14, align 4, !tbaa !105
  %922 = getelementptr inbounds float, ptr %920, i64 1
  %923 = load float, ptr %922, align 4, !tbaa !105
  store float %923, ptr %906, align 4, !tbaa !105
  %924 = getelementptr inbounds float, ptr %920, i64 2
  %925 = load float, ptr %924, align 4, !tbaa !105
  store float %925, ptr %907, align 4, !tbaa !105
  br label %926

926:                                              ; preds = %919, %911
  %927 = trunc i64 %910 to i32
  call void @BLI_kdtree_insert(ptr noundef %899, i32 noundef %927, ptr noundef nonnull %14) #16
  %928 = add nuw nsw i64 %910, 1
  %929 = icmp eq i64 %928, %908
  br i1 %929, label %930, label %909, !llvm.loop !439

930:                                              ; preds = %926, %890
  call void @BLI_kdtree_balance(ptr noundef %899) #16
  br label %931

931:                                              ; preds = %930, %889, %862
  %932 = phi i32 [ 4, %862 ], [ 0, %930 ], [ %1, %889 ]
  %933 = phi i32 [ 1, %862 ], [ %868, %930 ], [ %868, %889 ]
  %934 = phi i32 [ %864, %862 ], [ %94, %930 ], [ %94, %889 ]
  %935 = phi i32 [ 1, %862 ], [ 0, %930 ], [ 0, %889 ]
  %936 = phi ptr [ %41, %862 ], [ %881, %930 ], [ %881, %889 ]
  %937 = phi ptr [ %823, %862 ], [ %899, %930 ], [ null, %889 ]
  %938 = phi i32 [ 1, %862 ], [ 0, %930 ], [ %1, %889 ]
  %939 = icmp eq i32 %938, 0
  %940 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 25
  %941 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 23
  %942 = select i1 %939, ptr %941, ptr %940
  %943 = load ptr, ptr %942, align 8, !tbaa !72
  %944 = call i32 %943(ptr noundef %936) #16
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %946, label %1005

946:                                              ; preds = %931
  %947 = load i32, ptr %93, align 8, !tbaa !55
  br i1 %108, label %948, label %979

948:                                              ; preds = %946
  %949 = load ptr, ptr %89, align 8, !tbaa !34
  %950 = getelementptr inbounds %struct.ParticleSettings, ptr %949, i64 0, i32 19
  %951 = load i16, ptr %950, align 4, !tbaa !53
  %952 = icmp eq i16 %951, 0
  br i1 %952, label %963, label %953

953:                                              ; preds = %948
  %954 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 39
  %955 = load ptr, ptr %954, align 8, !tbaa !43
  %956 = icmp eq ptr %955, null
  %957 = getelementptr inbounds %struct.ParticleSettings, ptr %949, i64 0, i32 90
  %958 = getelementptr inbounds %struct.ParticleSettings, ptr %949, i64 0, i32 89
  %959 = select i1 %956, ptr %958, ptr %957
  %960 = load i32, ptr %959, align 4, !tbaa !95
  %961 = getelementptr inbounds %struct.Scene, ptr %77, i64 0, i32 22
  %962 = call i32 @get_render_child_particle_number(ptr noundef nonnull %961, i32 noundef %960) #16
  br label %963

963:                                              ; preds = %953, %948
  %964 = phi i32 [ %962, %953 ], [ 0, %948 ]
  %965 = mul i32 %964, %947
  %966 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 4
  %967 = load ptr, ptr %966, align 8, !tbaa !71
  %968 = icmp ne ptr %967, null
  %969 = icmp sgt i32 %965, 0
  %970 = select i1 %968, i1 %969, i1 false
  br i1 %970, label %971, label %992

971:                                              ; preds = %963, %971
  %972 = phi ptr [ %977, %971 ], [ %967, %963 ]
  %973 = phi i32 [ %976, %971 ], [ 0, %963 ]
  %974 = getelementptr inbounds %struct.ChildParticle, ptr %972, i64 0, i32 4
  %975 = getelementptr inbounds %struct.ChildParticle, ptr %972, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %975, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %974, i8 0, i64 20, i1 false)
  store i32 -1, ptr %972, align 4, !tbaa !417
  %976 = add nuw nsw i32 %973, 1
  %977 = getelementptr inbounds %struct.ChildParticle, ptr %972, i64 1
  %978 = icmp eq i32 %976, %965
  br i1 %978, label %992, label %971, !llvm.loop !440

979:                                              ; preds = %946
  %980 = icmp sgt i32 %947, 0
  br i1 %980, label %981, label %992

981:                                              ; preds = %979
  %982 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 3
  %983 = load ptr, ptr %982, align 8, !tbaa !64
  br label %984

984:                                              ; preds = %984, %981
  %985 = phi i32 [ %989, %984 ], [ 0, %981 ]
  %986 = phi ptr [ %990, %984 ], [ %983, %981 ]
  %987 = getelementptr inbounds %struct.ParticleData, ptr %986, i64 0, i32 11
  %988 = getelementptr inbounds %struct.ParticleData, ptr %986, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %987, i8 0, i64 20, i1 false)
  store i32 -1, ptr %988, align 8, !tbaa !98
  %989 = add nuw nsw i32 %985, 1
  %990 = getelementptr inbounds %struct.ParticleData, ptr %986, i64 1
  %991 = icmp eq i32 %989, %947
  br i1 %991, label %992, label %984, !llvm.loop !441

992:                                              ; preds = %984, %971, %963, %979
  %993 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !442
  %994 = and i32 %993, 1
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %999, label %996

996:                                              ; preds = %992
  %997 = load ptr, ptr @stderr, align 8, !tbaa !72
  %998 = call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %997) #17
  br label %999

999:                                              ; preds = %996, %992
  %1000 = icmp eq ptr %936, %41
  br i1 %1000, label %1004, label %1001

1001:                                             ; preds = %999
  %1002 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 95
  %1003 = load ptr, ptr %1002, align 8, !tbaa !349
  call void %1003(ptr noundef %936) #16
  br label %1004

1004:                                             ; preds = %1001, %999
  call void @BLI_kdtree_free(ptr noundef %937) #16
  br label %1621

1005:                                             ; preds = %931
  %1006 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %1007 = sext i32 %944 to i64
  %1008 = shl nsw i64 %1007, 2
  %1009 = call ptr %1006(i64 noundef %1008, ptr noundef nonnull @.str.16) #16
  %1010 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %1011 = sext i32 %934 to i64
  %1012 = shl nsw i64 %1011, 2
  %1013 = call ptr %1010(i64 noundef %1012, ptr noundef nonnull @.str.17) #16
  %1014 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %1015 = add nsw i32 %944, 1
  %1016 = sext i32 %1015 to i64
  %1017 = shl nsw i64 %1016, 2
  %1018 = call ptr %1014(i64 noundef %1017, ptr noundef nonnull @.str.18) #16
  %1019 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %1020 = call ptr %1019(i64 noundef %1008, ptr noundef nonnull @.str.19) #16
  %1021 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 5
  %1022 = load i32, ptr %1021, align 8, !tbaa !250
  %1023 = and i32 %1022, 256
  %1024 = icmp ne i32 %1023, 0
  %1025 = or i1 %108, %1024
  %1026 = icmp ne i32 %938, 0
  %1027 = and i1 %1026, %1025
  br i1 %1027, label %1028, label %1173

1028:                                             ; preds = %1005
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #16
  %1029 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 50
  %1030 = load ptr, ptr %1029, align 8, !tbaa !88
  %1031 = call ptr %1030(ptr noundef %936, i32 noundef 14) #16
  %1032 = icmp sgt i32 %944, 0
  br i1 %1032, label %1033, label %1055

1033:                                             ; preds = %1028
  %1034 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 48
  %1035 = icmp eq ptr %1031, null
  %1036 = getelementptr inbounds float, ptr %17, i64 1
  %1037 = getelementptr inbounds float, ptr %17, i64 2
  %1038 = getelementptr inbounds float, ptr %18, i64 1
  %1039 = getelementptr inbounds float, ptr %18, i64 2
  %1040 = getelementptr inbounds float, ptr %19, i64 1
  %1041 = getelementptr inbounds float, ptr %19, i64 2
  %1042 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 19
  %1043 = getelementptr inbounds float, ptr %20, i64 1
  %1044 = getelementptr inbounds float, ptr %20, i64 2
  %1045 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 46
  %1046 = getelementptr inbounds float, ptr %17, i64 1
  %1047 = getelementptr inbounds float, ptr %17, i64 2
  %1048 = getelementptr inbounds float, ptr %18, i64 1
  %1049 = getelementptr inbounds float, ptr %18, i64 2
  %1050 = getelementptr inbounds float, ptr %19, i64 1
  %1051 = getelementptr inbounds float, ptr %19, i64 2
  %1052 = getelementptr inbounds float, ptr %20, i64 1
  %1053 = getelementptr inbounds float, ptr %20, i64 2
  %1054 = zext nneg i32 %944 to i64
  br label %1061

1055:                                             ; preds = %1156, %1028
  %1056 = phi float [ 0.000000e+00, %1028 ], [ %1159, %1156 ]
  %1057 = phi float [ 0.000000e+00, %1028 ], [ %1161, %1156 ]
  %1058 = icmp sgt i32 %944, 0
  br i1 %1058, label %1059, label %1171

1059:                                             ; preds = %1055
  %1060 = zext nneg i32 %944 to i64
  br label %1164

1061:                                             ; preds = %1033, %1156
  %1062 = phi i64 [ 0, %1033 ], [ %1162, %1156 ]
  %1063 = phi float [ 0.000000e+00, %1033 ], [ %1161, %1156 ]
  %1064 = phi float [ 0.000000e+00, %1033 ], [ %1159, %1156 ]
  %1065 = load ptr, ptr %1034, align 8, !tbaa !444
  %1066 = trunc i64 %1062 to i32
  %1067 = call ptr %1065(ptr noundef %936, i32 noundef %1066, i32 noundef 4) #16
  br i1 %1035, label %1110, label %1068

1068:                                             ; preds = %1061
  %1069 = load i32, ptr %1067, align 4, !tbaa !279
  %1070 = zext i32 %1069 to i64
  %1071 = getelementptr inbounds [3 x float], ptr %1031, i64 %1070
  %1072 = load float, ptr %1071, align 4, !tbaa !105
  store float %1072, ptr %17, align 4, !tbaa !105
  %1073 = getelementptr inbounds float, ptr %1071, i64 1
  %1074 = load float, ptr %1073, align 4, !tbaa !105
  store float %1074, ptr %1036, align 4, !tbaa !105
  %1075 = getelementptr inbounds float, ptr %1071, i64 2
  %1076 = load float, ptr %1075, align 4, !tbaa !105
  store float %1076, ptr %1037, align 4, !tbaa !105
  %1077 = getelementptr inbounds %struct.MFace, ptr %1067, i64 0, i32 1
  %1078 = load i32, ptr %1077, align 4, !tbaa !281
  %1079 = zext i32 %1078 to i64
  %1080 = getelementptr inbounds [3 x float], ptr %1031, i64 %1079
  %1081 = load float, ptr %1080, align 4, !tbaa !105
  store float %1081, ptr %18, align 4, !tbaa !105
  %1082 = getelementptr inbounds float, ptr %1080, i64 1
  %1083 = load float, ptr %1082, align 4, !tbaa !105
  store float %1083, ptr %1038, align 4, !tbaa !105
  %1084 = getelementptr inbounds float, ptr %1080, i64 2
  %1085 = load float, ptr %1084, align 4, !tbaa !105
  store float %1085, ptr %1039, align 4, !tbaa !105
  %1086 = getelementptr inbounds %struct.MFace, ptr %1067, i64 0, i32 2
  %1087 = load i32, ptr %1086, align 4, !tbaa !282
  %1088 = zext i32 %1087 to i64
  %1089 = getelementptr inbounds [3 x float], ptr %1031, i64 %1088
  %1090 = load float, ptr %1089, align 4, !tbaa !105
  store float %1090, ptr %19, align 4, !tbaa !105
  %1091 = getelementptr inbounds float, ptr %1089, i64 1
  %1092 = load float, ptr %1091, align 4, !tbaa !105
  store float %1092, ptr %1040, align 4, !tbaa !105
  %1093 = getelementptr inbounds float, ptr %1089, i64 2
  %1094 = load float, ptr %1093, align 4, !tbaa !105
  store float %1094, ptr %1041, align 4, !tbaa !105
  %1095 = load ptr, ptr %1042, align 8, !tbaa !77
  call void @BKE_mesh_orco_verts_transform(ptr noundef %1095, ptr noundef nonnull %17, i32 noundef 1, i32 noundef 1) #16
  %1096 = load ptr, ptr %1042, align 8, !tbaa !77
  call void @BKE_mesh_orco_verts_transform(ptr noundef %1096, ptr noundef nonnull %18, i32 noundef 1, i32 noundef 1) #16
  %1097 = load ptr, ptr %1042, align 8, !tbaa !77
  call void @BKE_mesh_orco_verts_transform(ptr noundef %1097, ptr noundef nonnull %19, i32 noundef 1, i32 noundef 1) #16
  %1098 = getelementptr inbounds %struct.MFace, ptr %1067, i64 0, i32 3
  %1099 = load i32, ptr %1098, align 4, !tbaa !283
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1148, label %1101

1101:                                             ; preds = %1068
  %1102 = zext i32 %1099 to i64
  %1103 = getelementptr inbounds [3 x float], ptr %1031, i64 %1102
  %1104 = load float, ptr %1103, align 4, !tbaa !105
  store float %1104, ptr %20, align 4, !tbaa !105
  %1105 = getelementptr inbounds float, ptr %1103, i64 1
  %1106 = load float, ptr %1105, align 4, !tbaa !105
  store float %1106, ptr %1043, align 4, !tbaa !105
  %1107 = getelementptr inbounds float, ptr %1103, i64 2
  %1108 = load float, ptr %1107, align 4, !tbaa !105
  store float %1108, ptr %1044, align 4, !tbaa !105
  %1109 = load ptr, ptr %1042, align 8, !tbaa !77
  call void @BKE_mesh_orco_verts_transform(ptr noundef %1109, ptr noundef nonnull %20, i32 noundef 1, i32 noundef 1) #16
  br label %1148

1110:                                             ; preds = %1061
  %1111 = load ptr, ptr %1045, align 8, !tbaa !445
  %1112 = load i32, ptr %1067, align 4, !tbaa !279
  %1113 = call ptr %1111(ptr noundef %936, i32 noundef %1112, i32 noundef 0) #16
  %1114 = load ptr, ptr %1045, align 8, !tbaa !445
  %1115 = getelementptr inbounds %struct.MFace, ptr %1067, i64 0, i32 1
  %1116 = load i32, ptr %1115, align 4, !tbaa !281
  %1117 = call ptr %1114(ptr noundef %936, i32 noundef %1116, i32 noundef 0) #16
  %1118 = load ptr, ptr %1045, align 8, !tbaa !445
  %1119 = getelementptr inbounds %struct.MFace, ptr %1067, i64 0, i32 2
  %1120 = load i32, ptr %1119, align 4, !tbaa !282
  %1121 = call ptr %1118(ptr noundef %936, i32 noundef %1120, i32 noundef 0) #16
  %1122 = load float, ptr %1113, align 4, !tbaa !105
  store float %1122, ptr %17, align 4, !tbaa !105
  %1123 = getelementptr inbounds float, ptr %1113, i64 1
  %1124 = load float, ptr %1123, align 4, !tbaa !105
  store float %1124, ptr %1046, align 4, !tbaa !105
  %1125 = getelementptr inbounds float, ptr %1113, i64 2
  %1126 = load float, ptr %1125, align 4, !tbaa !105
  store float %1126, ptr %1047, align 4, !tbaa !105
  %1127 = load float, ptr %1117, align 4, !tbaa !105
  store float %1127, ptr %18, align 4, !tbaa !105
  %1128 = getelementptr inbounds float, ptr %1117, i64 1
  %1129 = load float, ptr %1128, align 4, !tbaa !105
  store float %1129, ptr %1048, align 4, !tbaa !105
  %1130 = getelementptr inbounds float, ptr %1117, i64 2
  %1131 = load float, ptr %1130, align 4, !tbaa !105
  store float %1131, ptr %1049, align 4, !tbaa !105
  %1132 = load float, ptr %1121, align 4, !tbaa !105
  store float %1132, ptr %19, align 4, !tbaa !105
  %1133 = getelementptr inbounds float, ptr %1121, i64 1
  %1134 = load float, ptr %1133, align 4, !tbaa !105
  store float %1134, ptr %1050, align 4, !tbaa !105
  %1135 = getelementptr inbounds float, ptr %1121, i64 2
  %1136 = load float, ptr %1135, align 4, !tbaa !105
  store float %1136, ptr %1051, align 4, !tbaa !105
  %1137 = getelementptr inbounds %struct.MFace, ptr %1067, i64 0, i32 3
  %1138 = load i32, ptr %1137, align 4, !tbaa !283
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1148, label %1140

1140:                                             ; preds = %1110
  %1141 = load ptr, ptr %1045, align 8, !tbaa !445
  %1142 = call ptr %1141(ptr noundef %936, i32 noundef %1138, i32 noundef 0) #16
  %1143 = load float, ptr %1142, align 4, !tbaa !105
  store float %1143, ptr %20, align 4, !tbaa !105
  %1144 = getelementptr inbounds float, ptr %1142, i64 1
  %1145 = load float, ptr %1144, align 4, !tbaa !105
  store float %1145, ptr %1052, align 4, !tbaa !105
  %1146 = getelementptr inbounds float, ptr %1142, i64 2
  %1147 = load float, ptr %1146, align 4, !tbaa !105
  store float %1147, ptr %1053, align 4, !tbaa !105
  br label %1148

1148:                                             ; preds = %1140, %1110, %1101, %1068
  %1149 = getelementptr inbounds %struct.MFace, ptr %1067, i64 0, i32 3
  %1150 = load i32, ptr %1149, align 4, !tbaa !283
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1154, label %1152

1152:                                             ; preds = %1148
  %1153 = call float @area_quad_v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  br label %1156

1154:                                             ; preds = %1148
  %1155 = call float @area_tri_v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #16
  br label %1156

1156:                                             ; preds = %1154, %1152
  %1157 = phi float [ %1153, %1152 ], [ %1155, %1154 ]
  %1158 = fcmp ogt float %1157, %1064
  %1159 = select i1 %1158, float %1157, float %1064
  %1160 = getelementptr inbounds float, ptr %1009, i64 %1062
  store float %1157, ptr %1160, align 4, !tbaa !105
  %1161 = fadd float %1063, %1157
  %1162 = add nuw nsw i64 %1062, 1
  %1163 = icmp eq i64 %1162, %1054
  br i1 %1163, label %1055, label %1061, !llvm.loop !446

1164:                                             ; preds = %1059, %1164
  %1165 = phi i64 [ 0, %1059 ], [ %1169, %1164 ]
  %1166 = getelementptr inbounds float, ptr %1009, i64 %1165
  %1167 = load float, ptr %1166, align 4, !tbaa !105
  %1168 = fdiv float %1167, %1057
  store float %1168, ptr %1166, align 4, !tbaa !105
  %1169 = add nuw nsw i64 %1165, 1
  %1170 = icmp eq i64 %1169, %1060
  br i1 %1170, label %1171, label %1164, !llvm.loop !447

1171:                                             ; preds = %1164, %1055
  %1172 = fdiv float %1056, %1057
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #16
  br label %1185

1173:                                             ; preds = %1005
  %1174 = call i32 @llvm.smin.i32(i32 %944, i32 %934)
  %1175 = sitofp i32 %1174 to float
  %1176 = fdiv float 1.000000e+00, %1175
  %1177 = icmp sgt i32 %944, 0
  br i1 %1177, label %1178, label %1185

1178:                                             ; preds = %1173
  %1179 = zext nneg i32 %944 to i64
  br label %1180

1180:                                             ; preds = %1178, %1180
  %1181 = phi i64 [ 0, %1178 ], [ %1183, %1180 ]
  %1182 = getelementptr inbounds float, ptr %1009, i64 %1181
  store float %1176, ptr %1182, align 4, !tbaa !105
  %1183 = add nuw nsw i64 %1181, 1
  %1184 = icmp eq i64 %1183, %1179
  br i1 %1184, label %1185, label %1180, !llvm.loop !448

1185:                                             ; preds = %1180, %1173, %1171
  %1186 = phi float [ %1172, %1171 ], [ %1176, %1173 ], [ %1176, %1180 ]
  %1187 = call ptr @psys_cache_vgroup(ptr noundef %936, ptr noundef %82, i32 noundef 0) #16
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1248, label %1189

1189:                                             ; preds = %1185
  %1190 = icmp sgt i32 %944, 0
  br i1 %939, label %1195, label %1191

1191:                                             ; preds = %1189
  br i1 %1190, label %1192, label %1246

1192:                                             ; preds = %1191
  %1193 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 48
  %1194 = zext nneg i32 %944 to i64
  br label %1207

1195:                                             ; preds = %1189
  br i1 %1190, label %1196, label %1246

1196:                                             ; preds = %1195
  %1197 = zext nneg i32 %944 to i64
  br label %1198

1198:                                             ; preds = %1196, %1198
  %1199 = phi i64 [ 0, %1196 ], [ %1205, %1198 ]
  %1200 = getelementptr inbounds float, ptr %1187, i64 %1199
  %1201 = load float, ptr %1200, align 4, !tbaa !105
  %1202 = getelementptr inbounds float, ptr %1009, i64 %1199
  %1203 = load float, ptr %1202, align 4, !tbaa !105
  %1204 = fmul float %1201, %1203
  store float %1204, ptr %1202, align 4, !tbaa !105
  %1205 = add nuw nsw i64 %1199, 1
  %1206 = icmp eq i64 %1205, %1197
  br i1 %1206, label %1246, label %1198, !llvm.loop !449

1207:                                             ; preds = %1192, %1239
  %1208 = phi i64 [ 0, %1192 ], [ %1244, %1239 ]
  %1209 = load ptr, ptr %1193, align 8, !tbaa !444
  %1210 = trunc i64 %1208 to i32
  %1211 = call ptr %1209(ptr noundef %936, i32 noundef %1210, i32 noundef 4) #16
  %1212 = load i32, ptr %1211, align 4, !tbaa !279
  %1213 = zext i32 %1212 to i64
  %1214 = getelementptr inbounds float, ptr %1187, i64 %1213
  %1215 = load float, ptr %1214, align 4, !tbaa !105
  %1216 = getelementptr inbounds %struct.MFace, ptr %1211, i64 0, i32 1
  %1217 = load i32, ptr %1216, align 4, !tbaa !281
  %1218 = zext i32 %1217 to i64
  %1219 = getelementptr inbounds float, ptr %1187, i64 %1218
  %1220 = load float, ptr %1219, align 4, !tbaa !105
  %1221 = fadd float %1215, %1220
  %1222 = getelementptr inbounds %struct.MFace, ptr %1211, i64 0, i32 2
  %1223 = load i32, ptr %1222, align 4, !tbaa !282
  %1224 = zext i32 %1223 to i64
  %1225 = getelementptr inbounds float, ptr %1187, i64 %1224
  %1226 = load float, ptr %1225, align 4, !tbaa !105
  %1227 = fadd float %1221, %1226
  %1228 = getelementptr inbounds %struct.MFace, ptr %1211, i64 0, i32 3
  %1229 = load i32, ptr %1228, align 4, !tbaa !283
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1237, label %1231

1231:                                             ; preds = %1207
  %1232 = zext i32 %1229 to i64
  %1233 = getelementptr inbounds float, ptr %1187, i64 %1232
  %1234 = load float, ptr %1233, align 4, !tbaa !105
  %1235 = fadd float %1227, %1234
  %1236 = fmul float %1235, 2.500000e-01
  br label %1239

1237:                                             ; preds = %1207
  %1238 = fdiv float %1227, 3.000000e+00
  br label %1239

1239:                                             ; preds = %1237, %1231
  %1240 = phi float [ %1236, %1231 ], [ %1238, %1237 ]
  %1241 = getelementptr inbounds float, ptr %1009, i64 %1208
  %1242 = load float, ptr %1241, align 4, !tbaa !105
  %1243 = fmul float %1240, %1242
  store float %1243, ptr %1241, align 4, !tbaa !105
  %1244 = add nuw nsw i64 %1208, 1
  %1245 = icmp eq i64 %1244, %1194
  br i1 %1245, label %1246, label %1207, !llvm.loop !450

1246:                                             ; preds = %1239, %1198, %1191, %1195
  %1247 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1247(ptr noundef nonnull %1187) #16
  br label %1248

1248:                                             ; preds = %1246, %1185
  %1249 = icmp sgt i32 %944, 0
  br i1 %1249, label %1250, label %1260

1250:                                             ; preds = %1248
  %1251 = zext nneg i32 %944 to i64
  br label %1252

1252:                                             ; preds = %1250, %1252
  %1253 = phi i64 [ 0, %1250 ], [ %1258, %1252 ]
  %1254 = phi float [ 0.000000e+00, %1250 ], [ %1257, %1252 ]
  %1255 = getelementptr inbounds float, ptr %1009, i64 %1253
  %1256 = load float, ptr %1255, align 4, !tbaa !105
  %1257 = fadd float %1254, %1256
  %1258 = add nuw nsw i64 %1253, 1
  %1259 = icmp eq i64 %1258, %1251
  br i1 %1259, label %1260, label %1252, !llvm.loop !451

1260:                                             ; preds = %1252, %1248
  %1261 = phi float [ 0.000000e+00, %1248 ], [ %1257, %1252 ]
  %1262 = fcmp ogt float %1261, 0.000000e+00
  %1263 = fdiv float 1.000000e+00, %1261
  %1264 = select i1 %1262, float %1263, float 0.000000e+00
  store float 0.000000e+00, ptr %1018, align 4, !tbaa !105
  %1265 = icmp sgt i32 %944, 0
  br i1 %1265, label %1266, label %1278

1266:                                             ; preds = %1260
  %1267 = zext nneg i32 %944 to i64
  %1268 = load float, ptr %1018, align 4
  br label %1269

1269:                                             ; preds = %1266, %1269
  %1270 = phi float [ %1268, %1266 ], [ %1274, %1269 ]
  %1271 = phi i64 [ 0, %1266 ], [ %1275, %1269 ]
  %1272 = getelementptr inbounds float, ptr %1009, i64 %1271
  %1273 = load float, ptr %1272, align 4, !tbaa !105
  %1274 = call float @llvm.fmuladd.f32(float %1273, float %1264, float %1270)
  %1275 = add nuw nsw i64 %1271, 1
  %1276 = getelementptr inbounds float, ptr %1018, i64 %1275
  store float %1274, ptr %1276, align 4, !tbaa !105
  %1277 = icmp eq i64 %1275, %1267
  br i1 %1277, label %1278, label %1269, !llvm.loop !452

1278:                                             ; preds = %1269, %1260
  %1279 = load i32, ptr %1021, align 8, !tbaa !250
  %1280 = and i32 %1279, 128
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1282, label %1287

1282:                                             ; preds = %1278
  %1283 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 48
  %1284 = load i16, ptr %1283, align 4, !tbaa !453
  %1285 = and i16 %1284, 1
  %1286 = icmp eq i16 %1285, 0
  br i1 %1286, label %1334, label %1287

1287:                                             ; preds = %1282, %1278
  %1288 = icmp sgt i32 %934, 0
  br i1 %1288, label %1289, label %1384

1289:                                             ; preds = %1287
  %1290 = getelementptr inbounds float, ptr %1018, i64 %1007
  %1291 = icmp slt i32 %944, 0
  %1292 = add nsw i32 %944, -1
  %1293 = zext nneg i32 %934 to i64
  br label %1294

1294:                                             ; preds = %1289, %1325
  %1295 = phi i64 [ 0, %1289 ], [ %1332, %1325 ]
  %1296 = call float @BLI_frand() #16
  %1297 = load float, ptr %1290, align 4, !tbaa !105
  %1298 = fmul float %1296, %1297
  %1299 = fcmp oeq float %1298, 0.000000e+00
  %1300 = or i1 %1299, %1291
  br i1 %1300, label %1325, label %1301

1301:                                             ; preds = %1294, %1321
  %1302 = phi i32 [ %1323, %1321 ], [ %944, %1294 ]
  %1303 = phi i32 [ %1322, %1321 ], [ 0, %1294 ]
  %1304 = add nsw i32 %1302, %1303
  %1305 = sdiv i32 %1304, 2
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds float, ptr %1018, i64 %1306
  %1308 = load float, ptr %1307, align 4, !tbaa !105
  %1309 = fcmp olt float %1308, %1298
  br i1 %1309, label %1310, label %1314

1310:                                             ; preds = %1301
  %1311 = getelementptr float, ptr %1307, i64 1
  %1312 = load float, ptr %1311, align 4, !tbaa !105
  %1313 = fcmp ult float %1312, %1298
  br i1 %1313, label %1314, label %1325

1314:                                             ; preds = %1310, %1301
  %1315 = fcmp ult float %1308, %1298
  br i1 %1315, label %1318, label %1316

1316:                                             ; preds = %1314
  %1317 = add nsw i32 %1305, -1
  br label %1321

1318:                                             ; preds = %1314
  br i1 %1309, label %1319, label %1325

1319:                                             ; preds = %1318
  %1320 = add nsw i32 %1305, 1
  br label %1321

1321:                                             ; preds = %1319, %1316
  %1322 = phi i32 [ %1303, %1316 ], [ %1320, %1319 ]
  %1323 = phi i32 [ %1317, %1316 ], [ %1302, %1319 ]
  %1324 = icmp sgt i32 %1322, %1323
  br i1 %1324, label %1325, label %1301, !llvm.loop !454

1325:                                             ; preds = %1321, %1310, %1318, %1294
  %1326 = phi i32 [ 0, %1294 ], [ %1305, %1318 ], [ %1305, %1310 ], [ %1322, %1321 ]
  %1327 = getelementptr inbounds i32, ptr %1013, i64 %1295
  %1328 = icmp sgt i32 %944, %1326
  %1329 = select i1 %1328, i32 %1326, i32 %1292
  store i32 %1329, ptr %1327, align 4, !tbaa !95
  %1330 = sext i32 %1329 to i64
  %1331 = getelementptr inbounds float, ptr %1020, i64 %1330
  store float %1298, ptr %1331, align 4, !tbaa !105
  %1332 = add nuw nsw i64 %1295, 1
  %1333 = icmp eq i64 %1332, %1293
  br i1 %1333, label %1384, label %1294, !llvm.loop !455

1334:                                             ; preds = %1282
  %1335 = icmp slt i32 %934, 2
  %1336 = sitofp i32 %934 to double
  %1337 = fdiv double 1.000000e+00, %1336
  %1338 = select i1 %1335, double 5.000000e-01, double %1337
  %1339 = icmp sgt i32 %934, 0
  br i1 %1339, label %1340, label %1384

1340:                                             ; preds = %1334
  %1341 = add nsw i32 %944, -1
  %1342 = add nsw i32 %934, -1
  %1343 = sext i32 %944 to i64
  %1344 = zext i32 %1342 to i64
  %1345 = zext nneg i32 %934 to i64
  br label %1346

1346:                                             ; preds = %1340, %1376
  %1347 = phi i64 [ 0, %1340 ], [ %1381, %1376 ]
  %1348 = phi double [ 0x3EB0C6F7A0B5ED8D, %1340 ], [ %1382, %1376 ]
  %1349 = phi i32 [ 0, %1340 ], [ %1364, %1376 ]
  %1350 = sext i32 %1349 to i64
  %1351 = call i32 @llvm.smax.i32(i32 %1349, i32 %944)
  br label %1352

1352:                                             ; preds = %1346, %1355
  %1353 = phi i64 [ %1350, %1346 ], [ %1356, %1355 ]
  %1354 = icmp slt i64 %1353, %1343
  br i1 %1354, label %1355, label %1363

1355:                                             ; preds = %1352
  %1356 = add nsw i64 %1353, 1
  %1357 = getelementptr inbounds float, ptr %1018, i64 %1356
  %1358 = load float, ptr %1357, align 4, !tbaa !105
  %1359 = fpext float %1358 to double
  %1360 = fcmp ogt double %1348, %1359
  br i1 %1360, label %1352, label %1361, !llvm.loop !456

1361:                                             ; preds = %1355
  %1362 = trunc i64 %1353 to i32
  br label %1363

1363:                                             ; preds = %1352, %1361
  %1364 = phi i32 [ %1362, %1361 ], [ %1351, %1352 ]
  %1365 = call i32 @llvm.smin.i32(i32 %1341, i32 %1364)
  %1366 = getelementptr inbounds i32, ptr %1013, i64 %1347
  store i32 %1365, ptr %1366, align 4, !tbaa !95
  %1367 = icmp eq i64 %1347, %1344
  br i1 %1367, label %1368, label %1376

1368:                                             ; preds = %1363
  %1369 = sext i32 %1365 to i64
  %1370 = getelementptr inbounds float, ptr %1009, i64 %1369
  %1371 = load float, ptr %1370, align 4, !tbaa !105
  %1372 = fcmp oeq float %1371, 0.000000e+00
  br i1 %1372, label %1373, label %1376

1373:                                             ; preds = %1368
  %1374 = getelementptr i32, ptr %1366, i64 -1
  %1375 = load i32, ptr %1374, align 4, !tbaa !95
  store i32 %1375, ptr %1366, align 4, !tbaa !95
  br label %1376

1376:                                             ; preds = %1373, %1368, %1363
  %1377 = fptrunc double %1348 to float
  %1378 = load i32, ptr %1366, align 4, !tbaa !95
  %1379 = sext i32 %1378 to i64
  %1380 = getelementptr inbounds float, ptr %1020, i64 %1379
  store float %1377, ptr %1380, align 4, !tbaa !105
  %1381 = add nuw nsw i64 %1347, 1
  %1382 = fadd double %1338, %1348
  %1383 = icmp eq i64 %1381, %1345
  br i1 %1383, label %1384, label %1346, !llvm.loop !457

1384:                                             ; preds = %1325, %1376, %1287, %1334
  %1385 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1385(ptr noundef nonnull %1018) #16
  %1386 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 7
  %1387 = load i16, ptr %1386, align 8, !tbaa !47
  %1388 = icmp eq i16 %1387, 2
  br i1 %1388, label %1389, label %1418

1389:                                             ; preds = %1384
  %1390 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 19
  %1391 = load i16, ptr %1390, align 4, !tbaa !53
  %1392 = icmp eq i16 %1391, 2
  br i1 %1392, label %1393, label %1397

1393:                                             ; preds = %1389
  %1394 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 91
  %1395 = load float, ptr %1394, align 4, !tbaa !458
  %1396 = fcmp une float %1395, 0.000000e+00
  br i1 %1396, label %1418, label %1397

1397:                                             ; preds = %1393, %1389
  br i1 %939, label %1398, label %1404

1398:                                             ; preds = %1397
  %1399 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 5
  %1400 = load i32, ptr %1399, align 8, !tbaa !459
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1414, label %1402

1402:                                             ; preds = %1398
  %1403 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 50
  br label %1410

1404:                                             ; preds = %1397
  %1405 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 7
  %1406 = load i32, ptr %1405, align 8, !tbaa !460
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1414, label %1408

1408:                                             ; preds = %1404
  %1409 = getelementptr inbounds %struct.DerivedMesh, ptr %936, i64 0, i32 52
  br label %1410

1410:                                             ; preds = %1402, %1408
  %1411 = phi ptr [ %1409, %1408 ], [ %1403, %1402 ]
  %1412 = load ptr, ptr %1411, align 8, !tbaa !72
  %1413 = call ptr %1412(ptr noundef %936, i32 noundef 7) #16
  br label %1414

1414:                                             ; preds = %1410, %1404, %1398
  %1415 = phi ptr [ null, %1398 ], [ null, %1404 ], [ %1413, %1410 ]
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %1418, label %1417

1417:                                             ; preds = %1414
  call void @qsort_r(ptr noundef %1013, i64 noundef %1011, i64 noundef 4, ptr noundef nonnull @distribute_compare_orig_index, ptr noundef nonnull %1415) #16
  br label %1418

1418:                                             ; preds = %1417, %1414, %1393, %1384
  %1419 = icmp eq i32 %933, 0
  %1420 = add i32 %938, -1
  %1421 = icmp ult i32 %1420, 2
  %1422 = and i1 %1419, %1421
  br i1 %1422, label %1423, label %1547

1423:                                             ; preds = %1418
  %1424 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 64
  %1425 = load i32, ptr %1424, align 8, !tbaa !461
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1427, label %1434

1427:                                             ; preds = %1423
  %1428 = sdiv i32 %934, %944
  %1429 = load i32, ptr %1021, align 8, !tbaa !250
  %1430 = lshr i32 %1429, 8
  %1431 = and i32 %1430, 1
  %1432 = shl i32 %1428, %1431
  %1433 = call i32 @llvm.smax.i32(i32 %1432, i32 3)
  br label %1434

1434:                                             ; preds = %1427, %1423
  %1435 = phi i32 [ %1433, %1427 ], [ %1425, %1423 ]
  %1436 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %1437 = shl nsw i32 %1435, 1
  %1438 = add nsw i32 %1437, 2
  %1439 = sext i32 %1438 to i64
  %1440 = shl nsw i64 %1439, 2
  %1441 = call ptr %1436(i64 noundef %1440, ptr noundef nonnull @.str.20) #16
  %1442 = icmp slt i32 %1435, 25
  %1443 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 23
  %1444 = load i32, ptr %1443, align 4, !tbaa !150
  %1445 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 59
  %1446 = load float, ptr %1445, align 4, !tbaa !462
  br i1 %1442, label %1447, label %1499

1447:                                             ; preds = %1434
  %1448 = sitofp i32 %1435 to float
  %1449 = call float @sqrtf(float noundef %1448) #16
  %1450 = fdiv float 1.000000e+00, %1449
  %1451 = fdiv float 1.000000e+00, %1448
  %1452 = call float @sqrtf(float noundef %1448) #16
  %1453 = fdiv float %1452, %1448
  %1454 = add nsw i32 %1435, 31415926
  %1455 = add nsw i32 %1454, %1444
  %1456 = call ptr @BLI_rng_new(i32 noundef %1455) #16
  %1457 = icmp sgt i32 %1435, 0
  br i1 %1457, label %1458, label %1487

1458:                                             ; preds = %1447
  %1459 = fmul float %1446, %1450
  %1460 = fmul float %1448, 2.000000e+00
  %1461 = zext nneg i32 %1437 to i64
  br label %1462

1462:                                             ; preds = %1462, %1458
  %1463 = phi i64 [ 0, %1458 ], [ %1485, %1462 ]
  %1464 = phi float [ 0.000000e+00, %1458 ], [ %1484, %1462 ]
  %1465 = call float @BLI_rng_get_float(ptr noundef %1456) #16
  %1466 = fsub float 5.000000e-01, %1465
  %1467 = call float @llvm.fmuladd.f32(float %1459, float %1466, float %1464)
  %1468 = getelementptr inbounds float, ptr %1441, i64 %1463
  store float %1467, ptr %1468, align 4, !tbaa !105
  %1469 = trunc i64 %1463 to i32
  %1470 = sitofp i32 %1469 to float
  %1471 = fdiv float %1470, %1460
  %1472 = call float @BLI_rng_get_float(ptr noundef %1456) #16
  %1473 = fsub float 5.000000e-01, %1472
  %1474 = call float @llvm.fmuladd.f32(float %1459, float %1473, float %1471)
  %1475 = or disjoint i64 %1463, 1
  %1476 = getelementptr inbounds float, ptr %1441, i64 %1475
  store float %1474, ptr %1476, align 4, !tbaa !105
  %1477 = load float, ptr %1468, align 4, !tbaa !105
  %1478 = call float @llvm.floor.f32(float %1477)
  %1479 = fsub float %1477, %1478
  store float %1479, ptr %1468, align 4, !tbaa !105
  %1480 = call float @llvm.floor.f32(float %1474)
  %1481 = fsub float %1474, %1480
  store float %1481, ptr %1476, align 4, !tbaa !105
  %1482 = fadd float %1453, %1464
  %1483 = call float @llvm.floor.f32(float %1482)
  %1484 = fsub float %1482, %1483
  %1485 = add nuw nsw i64 %1463, 2
  %1486 = icmp ult i64 %1485, %1461
  br i1 %1486, label %1462, label %1487, !llvm.loop !463

1487:                                             ; preds = %1462, %1447
  %1488 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %1489 = sext i32 %1435 to i64
  %1490 = shl nsw i64 %1489, 3
  %1491 = add nsw i64 %1490, 12
  %1492 = call ptr %1488(i64 noundef %1491, ptr noundef nonnull @.str.21) #16
  br label %1493

1493:                                             ; preds = %1493, %1487
  %1494 = phi i32 [ 0, %1487 ], [ %1495, %1493 ]
  call void @BLI_jitterate1(ptr noundef %1441, ptr noundef %1492, i32 noundef %1435, float noundef %1450) #16
  call void @BLI_jitterate1(ptr noundef %1441, ptr noundef %1492, i32 noundef %1435, float noundef %1450) #16
  call void @BLI_jitterate2(ptr noundef %1441, ptr noundef %1492, i32 noundef %1435, float noundef %1451) #16
  %1495 = add nuw nsw i32 %1494, 1
  %1496 = icmp eq i32 %1495, 4
  br i1 %1496, label %1497, label %1493, !llvm.loop !464

1497:                                             ; preds = %1493
  %1498 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1498(ptr noundef %1492) #16
  call void @BLI_rng_free(ptr noundef %1456) #16
  br label %1544

1499:                                             ; preds = %1434
  %1500 = add nuw nsw i32 %1435, 31415927
  %1501 = add nsw i32 %1500, %1444
  %1502 = call ptr @BLI_rng_new(i32 noundef %1501) #16
  %1503 = call double @BLI_rng_get_double(ptr noundef %1502) #16
  %1504 = fpext float %1446 to double
  %1505 = fadd double %1503, %1504
  %1506 = call double @BLI_rng_get_double(ptr noundef %1502) #16
  %1507 = fadd double %1506, %1504
  call void @BLI_rng_free(ptr noundef %1502) #16
  %1508 = add nuw nsw i32 %1435, 1
  %1509 = sitofp i32 %1508 to double
  %1510 = zext nneg i32 %1508 to i64
  br label %1511

1511:                                             ; preds = %1527, %1499
  %1512 = phi i64 [ 0, %1499 ], [ %1542, %1527 ]
  %1513 = icmp eq i64 %1512, 0
  br i1 %1513, label %1527, label %1514

1514:                                             ; preds = %1511
  %1515 = trunc i64 %1512 to i32
  br label %1516

1516:                                             ; preds = %1516, %1514
  %1517 = phi i32 [ %1525, %1516 ], [ %1515, %1514 ]
  %1518 = phi double [ %1524, %1516 ], [ 5.000000e-01, %1514 ]
  %1519 = phi double [ %1523, %1516 ], [ 0.000000e+00, %1514 ]
  %1520 = and i32 %1517, 1
  %1521 = icmp eq i32 %1520, 0
  %1522 = select i1 %1521, double -0.000000e+00, double %1518
  %1523 = fadd double %1519, %1522
  %1524 = fmul double %1518, 5.000000e-01
  %1525 = lshr i32 %1517, 1
  %1526 = icmp ult i32 %1517, 2
  br i1 %1526, label %1527, label %1516, !llvm.loop !465

1527:                                             ; preds = %1516, %1511
  %1528 = phi double [ 0.000000e+00, %1511 ], [ %1523, %1516 ]
  %1529 = trunc i64 %1512 to i32
  %1530 = sitofp i32 %1529 to double
  %1531 = fdiv double %1530, %1509
  %1532 = fadd double %1505, %1531
  %1533 = call double @fmod(double noundef %1532, double noundef 1.000000e+00) #16
  %1534 = fptrunc double %1533 to float
  %1535 = shl nuw nsw i64 %1512, 1
  %1536 = getelementptr inbounds float, ptr %1441, i64 %1535
  store float %1534, ptr %1536, align 4, !tbaa !105
  %1537 = fadd double %1507, %1528
  %1538 = call double @fmod(double noundef %1537, double noundef 1.000000e+00) #16
  %1539 = fptrunc double %1538 to float
  %1540 = or disjoint i64 %1535, 1
  %1541 = getelementptr inbounds float, ptr %1441, i64 %1540
  store float %1539, ptr %1541, align 4, !tbaa !105
  %1542 = add nuw nsw i64 %1512, 1
  %1543 = icmp eq i64 %1542, %1510
  br i1 %1543, label %1544, label %1511, !llvm.loop !466

1544:                                             ; preds = %1527, %1497
  %1545 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 23
  %1546 = load i32, ptr %1545, align 4, !tbaa !150
  call void @BLI_array_randomize(ptr noundef %1441, i32 noundef 8, i32 noundef %1435, i32 noundef %1546) #16
  br label %1547

1547:                                             ; preds = %1544, %1418
  %1548 = phi i32 [ %1435, %1544 ], [ 1, %1418 ]
  %1549 = phi ptr [ %1441, %1544 ], [ null, %1418 ]
  %1550 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 3
  store ptr %937, ptr %1550, align 8, !tbaa !135
  %1551 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 4
  store ptr null, ptr %1551, align 8, !tbaa !134
  %1552 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 5
  store i32 0, ptr %1552, align 8, !tbaa !467
  store ptr %82, ptr %81, align 8, !tbaa !127
  %1553 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 10
  store ptr %1013, ptr %1553, align 8, !tbaa !132
  %1554 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 6
  store ptr %1549, ptr %1554, align 8, !tbaa !129
  %1555 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 12
  store i32 %1548, ptr %1555, align 8, !tbaa !468
  %1556 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 7
  store ptr %1020, ptr %1556, align 8, !tbaa !130
  %1557 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 8
  store ptr %1009, ptr %1557, align 8, !tbaa !131
  %1558 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 9
  store float %1186, ptr %1558, align 8, !tbaa !469
  %1559 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 13
  store i32 %932, ptr %1559, align 4, !tbaa !470
  %1560 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 14
  store i32 %935, ptr %1560, align 8, !tbaa !471
  %1561 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 15
  store i32 %933, ptr %1561, align 4, !tbaa !472
  %1562 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 1
  store ptr %936, ptr %1562, align 8, !tbaa !111
  %1563 = getelementptr inbounds %struct.ParticleThreadContext, ptr %78, i64 0, i32 16
  store ptr null, ptr %1563, align 8, !tbaa !473
  br i1 %108, label %1564, label %1601

1564:                                             ; preds = %1547
  %1565 = call i32 @psys_render_simplify_distribution(ptr noundef %78, i32 noundef %934) #16
  %1566 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 4
  %1567 = load ptr, ptr %1566, align 8, !tbaa !71
  %1568 = icmp eq ptr %1567, null
  br i1 %1568, label %1584, label %1569

1569:                                             ; preds = %1564
  %1570 = load ptr, ptr %89, align 8, !tbaa !34
  %1571 = getelementptr inbounds %struct.ParticleSettings, ptr %1570, i64 0, i32 19
  %1572 = load i16, ptr %1571, align 4, !tbaa !53
  %1573 = icmp eq i16 %1572, 0
  br i1 %1573, label %1581, label %1574

1574:                                             ; preds = %1569
  %1575 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 28
  %1576 = load i32, ptr %1575, align 8, !tbaa !73
  %1577 = icmp eq i32 %1576, %1565
  br i1 %1577, label %1578, label %1581

1578:                                             ; preds = %1574
  %1579 = sext i32 %1565 to i64
  %1580 = shl nsw i64 %1579, 6
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1567, i8 0, i64 %1580, i1 false)
  br label %1597

1581:                                             ; preds = %1574, %1569
  %1582 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1582(ptr noundef nonnull %1567) #16
  store ptr null, ptr %1566, align 8, !tbaa !71
  %1583 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 28
  store i32 0, ptr %1583, align 8, !tbaa !73
  br label %1584

1584:                                             ; preds = %1581, %1564
  %1585 = load ptr, ptr %89, align 8, !tbaa !34
  %1586 = getelementptr inbounds %struct.ParticleSettings, ptr %1585, i64 0, i32 19
  %1587 = load i16, ptr %1586, align 4, !tbaa !53
  %1588 = icmp eq i16 %1587, 0
  br i1 %1588, label %1597, label %1589

1589:                                             ; preds = %1584
  %1590 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 28
  store i32 %1565, ptr %1590, align 8, !tbaa !73
  %1591 = icmp eq i32 %1565, 0
  br i1 %1591, label %1597, label %1592

1592:                                             ; preds = %1589
  %1593 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %1594 = sext i32 %1565 to i64
  %1595 = shl nsw i64 %1594, 6
  %1596 = call ptr %1593(i64 noundef %1595, ptr noundef nonnull @.str.22) #16
  store ptr %1596, ptr %1566, align 8, !tbaa !71
  br label %1597

1597:                                             ; preds = %1578, %1584, %1589, %1592
  %1598 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 28
  %1599 = load i32, ptr %1598, align 8, !tbaa !73
  %1600 = icmp slt i32 %1599, 10000
  br i1 %1600, label %1601, label %1602

1601:                                             ; preds = %1597, %1547
  br label %1602

1602:                                             ; preds = %1601, %1597
  %1603 = phi i32 [ 1, %1601 ], [ %84, %1597 ]
  %1604 = load ptr, ptr %81, align 8, !tbaa !127
  %1605 = getelementptr inbounds %struct.ParticleSystem, ptr %1604, i64 0, i32 23
  %1606 = load i32, ptr %1605, align 4, !tbaa !150
  %1607 = add nsw i32 %1606, 31415926
  %1608 = icmp sgt i32 %1603, 0
  br i1 %1608, label %1609, label %1618

1609:                                             ; preds = %1602
  %1610 = zext nneg i32 %1603 to i64
  br label %1611

1611:                                             ; preds = %1609, %1611
  %1612 = phi i64 [ 0, %1609 ], [ %1616, %1611 ]
  %1613 = call ptr @BLI_rng_new(i32 noundef %1607) #16
  %1614 = getelementptr inbounds %struct.ParticleThread, ptr %47, i64 %1612, i32 1
  store ptr %1613, ptr %1614, align 8, !tbaa !136
  %1615 = getelementptr inbounds %struct.ParticleThread, ptr %47, i64 %1612, i32 4
  store i32 %1603, ptr %1615, align 4, !tbaa !119
  %1616 = add nuw nsw i64 %1612, 1
  %1617 = icmp eq i64 %1616, %1610
  br i1 %1617, label %1618, label %1611, !llvm.loop !474

1618:                                             ; preds = %1611, %1602
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  %1619 = load i32, ptr %83, align 4, !tbaa !119
  %1620 = icmp sgt i32 %1619, 1
  br i1 %1620, label %1622, label %1630

1621:                                             ; preds = %92, %76, %88, %105, %812, %1004, %224
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  br label %1642

1622:                                             ; preds = %1618
  call void @BLI_init_threads(ptr noundef nonnull %21, ptr noundef nonnull @distribute_threads_exec_cb, i32 noundef %1619) #16
  %1623 = zext nneg i32 %1619 to i64
  br label %1624

1624:                                             ; preds = %1622, %1624
  %1625 = phi i64 [ 0, %1622 ], [ %1627, %1624 ]
  %1626 = getelementptr inbounds %struct.ParticleThread, ptr %47, i64 %1625
  call void @BLI_insert_thread(ptr noundef nonnull %21, ptr noundef nonnull %1626) #16
  %1627 = add nuw nsw i64 %1625, 1
  %1628 = icmp eq i64 %1627, %1623
  br i1 %1628, label %1629, label %1624, !llvm.loop !475

1629:                                             ; preds = %1624
  call void @BLI_end_threads(ptr noundef nonnull %21) #16
  br label %1632

1630:                                             ; preds = %1618
  %1631 = call ptr @distribute_threads_exec_cb(ptr noundef nonnull %47)
  br label %1632

1632:                                             ; preds = %1630, %1629
  %1633 = load ptr, ptr %55, align 8, !tbaa !112
  %1634 = load ptr, ptr %57, align 8, !tbaa !113
  call void @psys_calc_dmcache(ptr noundef %1633, ptr noundef %41, ptr noundef %1634)
  %1635 = load ptr, ptr %47, align 8, !tbaa !116
  %1636 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1635, i64 0, i32 1
  %1637 = load ptr, ptr %1636, align 8, !tbaa !111
  %1638 = icmp eq ptr %1637, %41
  br i1 %1638, label %1642, label %1639

1639:                                             ; preds = %1632
  %1640 = getelementptr inbounds %struct.DerivedMesh, ptr %1637, i64 0, i32 95
  %1641 = load ptr, ptr %1640, align 8, !tbaa !349
  call void %1641(ptr noundef %1637) #16
  br label %1642

1642:                                             ; preds = %1632, %1639, %1621
  call void @psys_threads_free(ptr noundef nonnull %47)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #16
  br label %1718

1643:                                             ; preds = %31
  %1644 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %1645 = load ptr, ptr %1644, align 8, !tbaa !113
  %1646 = getelementptr inbounds %struct.ParticleSystem, ptr %1645, i64 0, i32 26
  %1647 = load i32, ptr %1646, align 8, !tbaa !55
  %1648 = icmp sgt i32 %1647, 0
  br i1 %1648, label %1649, label %1660

1649:                                             ; preds = %1643
  %1650 = getelementptr inbounds %struct.ParticleSystem, ptr %1645, i64 0, i32 3
  %1651 = load ptr, ptr %1650, align 8, !tbaa !64
  br label %1652

1652:                                             ; preds = %1649, %1652
  %1653 = phi i32 [ %1657, %1652 ], [ 0, %1649 ]
  %1654 = phi ptr [ %1658, %1652 ], [ %1651, %1649 ]
  %1655 = getelementptr inbounds %struct.ParticleData, ptr %1654, i64 0, i32 11
  %1656 = getelementptr inbounds %struct.ParticleData, ptr %1654, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1655, i8 0, i64 20, i1 false)
  store i32 -1, ptr %1656, align 8, !tbaa !98
  %1657 = add nuw nsw i32 %1653, 1
  %1658 = getelementptr inbounds %struct.ParticleData, ptr %1654, i64 1
  %1659 = icmp eq i32 %1657, %1647
  br i1 %1659, label %1660, label %1652, !llvm.loop !441

1660:                                             ; preds = %1652, %1643
  %1661 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1662 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 33, i64 1, ptr %1661) #17
  br label %1718

1663:                                             ; preds = %34
  %1664 = load ptr, ptr %0, align 8, !tbaa !102
  %1665 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %1666 = load ptr, ptr %1665, align 8, !tbaa !113
  %1667 = icmp eq i32 %1, 4
  %1668 = getelementptr inbounds %struct.ParticleSystem, ptr %1666, i64 0, i32 26
  %1669 = load i32, ptr %1668, align 8, !tbaa !55
  br i1 %1667, label %1670, label %1702

1670:                                             ; preds = %1663
  %1671 = getelementptr inbounds %struct.ParticleSystem, ptr %1666, i64 0, i32 2
  %1672 = load ptr, ptr %1671, align 8, !tbaa !34
  %1673 = getelementptr inbounds %struct.ParticleSettings, ptr %1672, i64 0, i32 19
  %1674 = load i16, ptr %1673, align 4, !tbaa !53
  %1675 = icmp eq i16 %1674, 0
  br i1 %1675, label %1686, label %1676

1676:                                             ; preds = %1670
  %1677 = getelementptr inbounds %struct.ParticleSystem, ptr %1666, i64 0, i32 39
  %1678 = load ptr, ptr %1677, align 8, !tbaa !43
  %1679 = icmp eq ptr %1678, null
  %1680 = getelementptr inbounds %struct.ParticleSettings, ptr %1672, i64 0, i32 90
  %1681 = getelementptr inbounds %struct.ParticleSettings, ptr %1672, i64 0, i32 89
  %1682 = select i1 %1679, ptr %1681, ptr %1680
  %1683 = load i32, ptr %1682, align 4, !tbaa !95
  %1684 = getelementptr inbounds %struct.Scene, ptr %1664, i64 0, i32 22
  %1685 = tail call i32 @get_render_child_particle_number(ptr noundef nonnull %1684, i32 noundef %1683) #16
  br label %1686

1686:                                             ; preds = %1676, %1670
  %1687 = phi i32 [ %1685, %1676 ], [ 0, %1670 ]
  %1688 = mul i32 %1687, %1669
  %1689 = getelementptr inbounds %struct.ParticleSystem, ptr %1666, i64 0, i32 4
  %1690 = load ptr, ptr %1689, align 8, !tbaa !71
  %1691 = icmp ne ptr %1690, null
  %1692 = icmp sgt i32 %1688, 0
  %1693 = select i1 %1691, i1 %1692, i1 false
  br i1 %1693, label %1694, label %1715

1694:                                             ; preds = %1686, %1694
  %1695 = phi ptr [ %1700, %1694 ], [ %1690, %1686 ]
  %1696 = phi i32 [ %1699, %1694 ], [ 0, %1686 ]
  %1697 = getelementptr inbounds %struct.ChildParticle, ptr %1695, i64 0, i32 4
  %1698 = getelementptr inbounds %struct.ChildParticle, ptr %1695, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1698, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1697, i8 0, i64 20, i1 false)
  store i32 -1, ptr %1695, align 4, !tbaa !417
  %1699 = add nuw nsw i32 %1696, 1
  %1700 = getelementptr inbounds %struct.ChildParticle, ptr %1695, i64 1
  %1701 = icmp eq i32 %1699, %1688
  br i1 %1701, label %1715, label %1694, !llvm.loop !440

1702:                                             ; preds = %1663
  %1703 = icmp sgt i32 %1669, 0
  br i1 %1703, label %1704, label %1715

1704:                                             ; preds = %1702
  %1705 = getelementptr inbounds %struct.ParticleSystem, ptr %1666, i64 0, i32 3
  %1706 = load ptr, ptr %1705, align 8, !tbaa !64
  br label %1707

1707:                                             ; preds = %1707, %1704
  %1708 = phi i32 [ %1712, %1707 ], [ 0, %1704 ]
  %1709 = phi ptr [ %1713, %1707 ], [ %1706, %1704 ]
  %1710 = getelementptr inbounds %struct.ParticleData, ptr %1709, i64 0, i32 11
  %1711 = getelementptr inbounds %struct.ParticleData, ptr %1709, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1710, i8 0, i64 20, i1 false)
  store i32 -1, ptr %1711, align 8, !tbaa !98
  %1712 = add nuw nsw i32 %1708, 1
  %1713 = getelementptr inbounds %struct.ParticleData, ptr %1709, i64 1
  %1714 = icmp eq i32 %1712, %1669
  br i1 %1714, label %1715, label %1707, !llvm.loop !441

1715:                                             ; preds = %1707, %1694, %1686, %1702
  %1716 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1717 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 29, i64 1, ptr %1716) #17
  br label %1718

1718:                                             ; preds = %1642, %1660, %1715
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @initialize_all_particles(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 27
  store i32 0, ptr %4, align 4, !tbaa !60
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %12 = ptrtoint ptr %6 to i64
  %13 = sitofp i32 %8 to float
  br label %14

14:                                               ; preds = %10, %39
  %15 = phi ptr [ %6, %10 ], [ %41, %39 ]
  %16 = phi i32 [ 0, %10 ], [ %40, %39 ]
  %17 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 0, i32 17
  %18 = load i16, ptr %17, align 4, !tbaa !65
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load ptr, ptr %11, align 8, !tbaa !34
  %23 = ptrtoint ptr %15 to i64
  %24 = sub i64 %23, %12
  %25 = sdiv exact i64 %24, 200
  %26 = sitofp i64 %25 to float
  %27 = fdiv float %26, %13
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 53
  %29 = load float, ptr %28, align 4, !tbaa !139
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 54
  %31 = load float, ptr %30, align 8, !tbaa !140
  %32 = fsub float %31, %29
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %27, float %29)
  %34 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 0, i32 6
  store float %33, ptr %34, align 4, !tbaa !141
  %35 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 0, i32 16
  store i32 0, ptr %35, align 8, !tbaa !142
  br label %39

36:                                               ; preds = %14
  %37 = load i32, ptr %4, align 4, !tbaa !60
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %4, align 4, !tbaa !60
  br label %39

39:                                               ; preds = %21, %36
  %40 = add nuw nsw i32 %16, 1
  %41 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 1
  %42 = icmp eq i32 %40, %8
  br i1 %42, label %43, label %14, !llvm.loop !476

43:                                               ; preds = %39, %1
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %45 = icmp eq i32 %8, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %4, align 4, !tbaa !60
  %48 = icmp eq i32 %47, %8
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !143
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %54(ptr noundef nonnull %51) #16
  br label %55

55:                                               ; preds = %53, %49
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %57 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void %56(ptr noundef %57) #16
  store ptr null, ptr %5, align 8, !tbaa !64
  store i32 0, ptr %4, align 4, !tbaa !60
  store i32 0, ptr %44, align 8, !tbaa !55
  br label %58

58:                                               ; preds = %55, %46, %43
  %59 = load i32, ptr %4, align 4, !tbaa !60
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %121, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %44, align 8, !tbaa !55
  %63 = sub nsw i32 %62, %59
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %65 = sext i32 %63 to i64
  %66 = mul nsw i64 %65, 200
  %67 = tail call ptr %64(i64 noundef %66, ptr noundef nonnull @.str.11) #16
  %68 = icmp sgt i32 %63, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  %70 = load ptr, ptr %5, align 8, !tbaa !64
  br label %71

71:                                               ; preds = %69, %82
  %72 = phi ptr [ %84, %82 ], [ %70, %69 ]
  %73 = phi ptr [ %85, %82 ], [ %67, %69 ]
  %74 = phi i32 [ %83, %82 ], [ 0, %69 ]
  br label %75

75:                                               ; preds = %75, %71
  %76 = phi ptr [ %81, %75 ], [ %72, %71 ]
  %77 = getelementptr inbounds %struct.ParticleData, ptr %76, i64 0, i32 17
  %78 = load i16, ptr %77, align 4, !tbaa !65
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  %81 = getelementptr inbounds %struct.ParticleData, ptr %76, i64 1
  br i1 %80, label %82, label %75, !llvm.loop !477

82:                                               ; preds = %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %73, ptr noundef nonnull align 8 dereferenceable(200) %76, i64 200, i1 false)
  %83 = add nuw nsw i32 %74, 1
  %84 = getelementptr inbounds %struct.ParticleData, ptr %76, i64 1
  %85 = getelementptr inbounds %struct.ParticleData, ptr %73, i64 1
  %86 = icmp eq i32 %83, %63
  br i1 %86, label %87, label %71, !llvm.loop !478

87:                                               ; preds = %82, %61
  %88 = load ptr, ptr %5, align 8, !tbaa !64
  %89 = getelementptr inbounds %struct.ParticleData, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !143
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %93(ptr noundef nonnull %90) #16
  br label %94

94:                                               ; preds = %92, %87
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %96 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void %95(ptr noundef %96) #16
  store ptr %67, ptr %5, align 8, !tbaa !64
  %97 = load i32, ptr %4, align 4, !tbaa !60
  %98 = load i32, ptr %44, align 8, !tbaa !55
  %99 = sub nsw i32 %98, %97
  store i32 %99, ptr %44, align 8, !tbaa !55
  %100 = getelementptr inbounds %struct.ParticleData, ptr %67, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !143
  %102 = icmp eq ptr %101, null
  br i1 %102, label %121, label %103

103:                                              ; preds = %94
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %105 = sext i32 %99 to i64
  %106 = mul nsw i64 %105, 56
  %107 = tail call ptr %104(i64 noundef %106, ptr noundef nonnull @.str.12) #16
  %108 = load i32, ptr %44, align 8, !tbaa !55
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load ptr, ptr %5, align 8, !tbaa !64
  br label %112

112:                                              ; preds = %110, %112
  %113 = phi ptr [ %116, %112 ], [ %107, %110 ]
  %114 = phi ptr [ %119, %112 ], [ %111, %110 ]
  %115 = phi i32 [ %118, %112 ], [ 0, %110 ]
  %116 = getelementptr inbounds %struct.BoidParticle, ptr %113, i64 1
  %117 = getelementptr inbounds %struct.ParticleData, ptr %114, i64 0, i32 4
  store ptr %113, ptr %117, align 8, !tbaa !143
  %118 = add nuw nsw i32 %115, 1
  %119 = getelementptr inbounds %struct.ParticleData, ptr %114, i64 1
  %120 = icmp eq i32 %118, %108
  br i1 %120, label %121, label %112, !llvm.loop !479

121:                                              ; preds = %112, %103, %94, %58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psys_update_path_cache(ptr noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %0, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 18
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 19
  %12 = load i16, ptr %11, align 4, !tbaa !53
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 39
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 90
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 89
  %24 = select i1 %21, ptr %23, ptr %22
  %25 = load i32, ptr %24, align 4, !tbaa !95
  %26 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22
  %27 = tail call i32 @get_render_child_particle_number(ptr noundef nonnull %26, i32 noundef %25) #16
  %28 = mul nsw i32 %27, %18
  %29 = icmp eq i32 %16, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %14, %2
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  %32 = load i16, ptr %31, align 4, !tbaa !316
  %33 = and i16 %32, 16
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %14
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i1 [ false, %35 ], [ true, %30 ]
  br i1 %37, label %38, label %57

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  %40 = load i16, ptr %39, align 4, !tbaa !316
  %41 = and i16 %40, 64
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 36
  %45 = load i16, ptr %44, align 4, !tbaa !296
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %102, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !112
  %50 = icmp eq ptr %49, null
  br i1 %50, label %102, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 27
  %53 = load i32, ptr %52, align 8, !tbaa !481
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %102, label %56

56:                                               ; preds = %51, %38
  br i1 %37, label %61, label %57

57:                                               ; preds = %36, %56
  %58 = load ptr, ptr %3, align 8, !tbaa !113
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %58, i64 0, i32 26
  %60 = load i32, ptr %59, align 8, !tbaa !55
  tail call fastcc void @realloc_particles(ptr noundef nonnull %0, i32 noundef %60)
  br label %61

61:                                               ; preds = %57, %56
  %62 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %63 = load i32, ptr %62, align 8, !tbaa !55
  %64 = load ptr, ptr %5, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.ParticleSettings, ptr %64, i64 0, i32 19
  %66 = load i16, ptr %65, align 4, !tbaa !53
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %0, align 8, !tbaa !102
  %70 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 39
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %64, i64 0, i32 90
  %74 = getelementptr inbounds %struct.ParticleSettings, ptr %64, i64 0, i32 89
  %75 = select i1 %72, ptr %74, ptr %73
  %76 = load i32, ptr %75, align 4, !tbaa !95
  %77 = getelementptr inbounds %struct.Scene, ptr %69, i64 0, i32 22
  %78 = tail call i32 @get_render_child_particle_number(ptr noundef nonnull %77, i32 noundef %76) #16
  br label %79

79:                                               ; preds = %61, %68
  %80 = phi i32 [ %78, %68 ], [ 0, %61 ]
  %81 = mul nsw i32 %80, %63
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %5, align 8, !tbaa !34
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %84, i64 0, i32 7
  %86 = load i16, ptr %85, align 8, !tbaa !47
  %87 = icmp eq i16 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %90 = load i32, ptr %89, align 4, !tbaa !50
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88, %83
  tail call fastcc void @distribute_particles(ptr noundef nonnull %0, i32 noundef 4)
  %94 = load i16, ptr %11, align 4, !tbaa !53
  %95 = icmp eq i16 %94, 2
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 91
  %98 = load float, ptr %97, align 4, !tbaa !458
  %99 = fcmp une float %98, 0.000000e+00
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  tail call void @psys_find_parents(ptr noundef nonnull %0) #16
  br label %102

101:                                              ; preds = %79
  tail call void @psys_free_children(ptr noundef %4) #16
  br label %102

102:                                              ; preds = %43, %47, %51, %101, %93, %96, %100, %88
  %103 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 7
  %104 = load i16, ptr %103, align 8, !tbaa !47
  %105 = icmp eq i16 %104, 2
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %108 = load i32, ptr %107, align 4, !tbaa !50
  %109 = and i32 %108, 1024
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 40
  %113 = load ptr, ptr %112, align 8, !tbaa !44
  %114 = getelementptr inbounds %struct.PointCache, ptr %113, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !45
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %163, label %118

118:                                              ; preds = %106, %102, %111
  %119 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 21
  %120 = load i16, ptr %119, align 8, !tbaa !305
  %121 = icmp eq i16 %120, 6
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = add i16 %120, -7
  %124 = icmp ult i16 %123, 2
  %125 = and i1 %105, %124
  br i1 %125, label %126, label %163

126:                                              ; preds = %122, %118
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 39
  %128 = load ptr, ptr %127, align 8, !tbaa !43
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 17
  %132 = load i16, ptr %131, align 8, !tbaa !306
  %133 = icmp eq i16 %132, 10
  br i1 %133, label %134, label %163

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 40
  %136 = load ptr, ptr %135, align 8, !tbaa !44
  %137 = getelementptr inbounds %struct.PointCache, ptr %136, i64 0, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !45
  %139 = and i32 %138, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %134
  %142 = load ptr, ptr %0, align 8, !tbaa !102
  %143 = tail call i32 @psys_in_edit_mode(ptr noundef %142, ptr noundef %4) #16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %141
  %146 = load i16, ptr %10, align 8, !tbaa !482
  %147 = and i16 %146, 16
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %145
  %150 = load i16, ptr %11, align 4, !tbaa !53
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %154 = load i32, ptr %153, align 4, !tbaa !50
  %155 = and i32 %154, 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %135, align 8, !tbaa !44
  %159 = getelementptr inbounds %struct.PointCache, ptr %158, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !45
  %161 = and i32 %160, 1
  %162 = xor i32 %161, 1
  br label %163

163:                                              ; preds = %152, %157, %145, %134, %130, %122, %111, %141, %149, %126
  %164 = phi i32 [ 0, %126 ], [ 0, %149 ], [ 0, %141 ], [ 1, %111 ], [ 1, %122 ], [ 1, %130 ], [ 1, %134 ], [ 1, %145 ], [ 1, %152 ], [ %162, %157 ]
  %165 = load ptr, ptr %0, align 8, !tbaa !102
  %166 = getelementptr inbounds %struct.Scene, ptr %165, i64 0, i32 5
  %167 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %168 = ptrtoint ptr %4 to i64
  br label %169

169:                                              ; preds = %200, %163
  %170 = phi i32 [ %164, %163 ], [ %201, %200 ]
  %171 = phi ptr [ %166, %163 ], [ %172, %200 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !72
  %173 = icmp eq ptr %172, null
  br i1 %173, label %203, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.Base, ptr %172, i64 0, i32 7
  %176 = load ptr, ptr %175, align 8, !tbaa !484
  %177 = tail call ptr @modifiers_findByType(ptr noundef %176, i32 noundef 20) #16
  %178 = icmp eq ptr %177, null
  br i1 %178, label %200, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %177, i64 0, i32 3
  %181 = load i16, ptr %180, align 2, !tbaa !486
  %182 = and i16 %181, 4
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %199, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %177, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !488
  %187 = load ptr, ptr %167, align 8, !tbaa !112
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %177, i64 0, i32 2
  %191 = load i16, ptr %190, align 8, !tbaa !489
  %192 = sext i16 %191 to i64
  %193 = getelementptr inbounds %struct.Object, ptr %187, i64 0, i32 109
  %194 = load ptr, ptr %193, align 8, !tbaa !490
  %195 = ptrtoint ptr %194 to i64
  %196 = sub i64 %168, %195
  %197 = sdiv exact i64 %196, 656
  %198 = icmp eq i64 %197, %192
  br i1 %198, label %200, label %199

199:                                              ; preds = %189, %184, %179
  br label %200

200:                                              ; preds = %199, %189, %174
  %201 = phi i32 [ %170, %174 ], [ %170, %199 ], [ 0, %189 ]
  %202 = phi i1 [ true, %174 ], [ true, %199 ], [ false, %189 ]
  br i1 %202, label %169, label %203, !llvm.loop !491

203:                                              ; preds = %200, %169
  %204 = phi i32 [ %201, %200 ], [ %170, %169 ]
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %203
  tail call void @psys_cache_paths(ptr noundef nonnull %0, float noundef %1) #16
  %207 = load i16, ptr %11, align 4, !tbaa !53
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  %211 = load i32, ptr %210, align 8, !tbaa !73
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %229, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr %5, align 8, !tbaa !34
  %215 = getelementptr inbounds %struct.ParticleSettings, ptr %214, i64 0, i32 7
  %216 = load i16, ptr %215, align 8, !tbaa !47
  %217 = icmp eq i16 %216, 2
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = and i32 %220, 512
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %213, %218
  tail call void @psys_cache_child_paths(ptr noundef nonnull %0, float noundef %1, i32 noundef 0) #16
  br label %229

224:                                              ; preds = %203
  %225 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 7
  %226 = load ptr, ptr %225, align 8, !tbaa !492
  %227 = icmp eq ptr %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  tail call void @psys_free_path_cache(ptr noundef %4, ptr noundef null) #16
  br label %229

229:                                              ; preds = %209, %224, %228, %206, %223, %218
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @sph_particle_courant(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.SPHRangeData, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !246
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %80

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8, !tbaa !246
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.SPHRangeData, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 0, i32 1, i32 0, i64 1
  %14 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 0, i32 1, i32 0, i64 2
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %54, %15 ]
  %17 = phi float [ 0.000000e+00, %9 ], [ %44, %15 ]
  %18 = phi float [ 0.000000e+00, %9 ], [ %53, %15 ]
  %19 = phi float [ 0.000000e+00, %9 ], [ %50, %15 ]
  %20 = phi float [ 0.000000e+00, %9 ], [ %47, %15 ]
  %21 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %1, i64 0, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !254
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %1, i64 0, i64 %16, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !256
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 %27, i32 1
  %29 = load float, ptr %12, align 4, !tbaa !105
  %30 = load float, ptr %28, align 4, !tbaa !105
  %31 = fsub float %29, %30
  %32 = load float, ptr %13, align 4, !tbaa !105
  %33 = getelementptr inbounds float, ptr %28, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !105
  %35 = fsub float %32, %34
  %36 = load float, ptr %14, align 4, !tbaa !105
  %37 = getelementptr inbounds float, ptr %28, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !105
  %39 = fsub float %36, %38
  %40 = fmul float %35, %35
  %41 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %39, float %41)
  %43 = tail call float @sqrtf(float noundef %42) #16
  %44 = fadd float %17, %43
  %45 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 %27, i32 1, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !105
  %47 = fadd float %20, %46
  %48 = getelementptr inbounds float, ptr %45, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !105
  %50 = fadd float %19, %49
  %51 = getelementptr inbounds float, ptr %45, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !105
  %53 = fadd float %18, %52
  %54 = add nuw nsw i64 %16, 1
  %55 = load i32, ptr %3, align 8, !tbaa !246
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %15, label %58, !llvm.loop !493

58:                                               ; preds = %15, %6
  %59 = phi float [ 0.000000e+00, %6 ], [ %47, %15 ]
  %60 = phi float [ 0.000000e+00, %6 ], [ %50, %15 ]
  %61 = phi float [ 0.000000e+00, %6 ], [ %53, %15 ]
  %62 = phi float [ 0.000000e+00, %6 ], [ %44, %15 ]
  %63 = phi i32 [ %7, %6 ], [ %55, %15 ]
  %64 = load ptr, ptr %0, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct.ParticleSystem, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !225
  %69 = load float, ptr %68, align 4, !tbaa !235
  %70 = fadd float %62, %69
  %71 = sitofp i32 %63 to float
  %72 = fdiv float %70, %71
  %73 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 7
  store float %72, ptr %73, align 8, !tbaa !399
  %74 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 8
  %75 = fdiv float 1.000000e+00, %71
  %76 = fmul float %59, %75
  store float %76, ptr %74, align 4, !tbaa !105
  %77 = fmul float %60, %75
  %78 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 8, i64 1
  store float %77, ptr %78, align 4, !tbaa !105
  %79 = fmul float %61, %75
  br label %84

80:                                               ; preds = %2
  %81 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 7
  store float 0x47EFFFFFE0000000, ptr %81, align 8, !tbaa !399
  %82 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 8
  store float 0.000000e+00, ptr %82, align 4, !tbaa !105
  %83 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 8, i64 1
  store float 0.000000e+00, ptr %83, align 4, !tbaa !105
  br label %84

84:                                               ; preds = %80, %58
  %85 = phi float [ 0.000000e+00, %80 ], [ %79, %58 ]
  %86 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 8, i64 2
  store float %85, ptr %86, align 4, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @sphclassical_neighbour_accum_cb(ptr nocapture noundef %0, i32 noundef %1, float %2) #10 {
  %4 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !246
  %7 = icmp sgt i32 %6, 511
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !247
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !244
  %16 = load float, ptr %13, align 4, !tbaa !105
  %17 = load float, ptr %15, align 4, !tbaa !105
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds float, ptr %13, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !105
  %21 = getelementptr inbounds float, ptr %15, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !105
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds float, ptr %13, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !105
  %26 = getelementptr inbounds float, ptr %15, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !105
  %28 = fsub float %25, %27
  %29 = fmul float %23, %23
  %30 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %30)
  %32 = tail call float @sqrtf(float noundef %31) #16
  %33 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 5
  %34 = load float, ptr %33, align 8, !tbaa !243
  %35 = fdiv float %32, %34
  %36 = fcmp ogt float %35, 2.000000e+00
  br i1 %36, label %44, label %37

37:                                               ; preds = %8
  %38 = load i32, ptr %5, align 8, !tbaa !246
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %39, i32 1
  store i32 %1, ptr %40, align 8, !tbaa !256
  %41 = load ptr, ptr %4, align 8, !tbaa !247
  %42 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %39
  store ptr %41, ptr %42, align 8, !tbaa !254
  %43 = add nsw i32 %38, 1
  store i32 %43, ptr %5, align 8, !tbaa !246
  br label %44

44:                                               ; preds = %8, %3, %37
  ret void
}

declare i32 @BLI_bvhtree_range_query(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc float @collision_newton_rhapson(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 11
  store i16 -1, ptr %6, align 8, !tbaa !293
  %7 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 15
  %8 = load float, ptr %7, align 4, !tbaa !299
  %9 = fcmp ogt float %8, 0.000000e+00
  %10 = fmul float %8, 0x3F14F8B580000000
  %11 = select i1 %9, float %10, float 0x3F50624DE0000000
  %12 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 6
  %13 = load float, ptr %12, align 8, !tbaa !300
  tail call fastcc void @collision_interpolate_element(ptr noundef %2, float noundef 0.000000e+00, float noundef %13, ptr noundef %0)
  %14 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18
  %15 = call float %3(ptr noundef nonnull %14, float noundef %1, ptr noundef %2, ptr noundef nonnull %5) #16, !callees !494
  %16 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 5
  %17 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 19
  %18 = fneg float %1
  %19 = fsub float 1.000000e+00, %11
  br label %20

20:                                               ; preds = %4, %92
  %21 = phi i32 [ 0, %4 ], [ %96, %92 ]
  %22 = phi float [ %15, %4 ], [ %95, %92 ]
  %23 = phi float [ %11, %4 ], [ %94, %92 ]
  %24 = phi float [ 0.000000e+00, %4 ], [ %93, %92 ]
  %25 = load float, ptr %12, align 8, !tbaa !300
  call fastcc void @collision_interpolate_element(ptr noundef %2, float noundef %23, float noundef %25, ptr noundef %0)
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %17, float noundef %23) #16
  %26 = call float %3(ptr noundef nonnull %16, float noundef %1, ptr noundef %2, ptr noundef nonnull %5) #16, !callees !494
  %27 = icmp eq i32 %21, 0
  %28 = fcmp olt float %22, 0.000000e+00
  %29 = select i1 %27, i1 %28, i1 false
  %30 = fcmp ogt float %22, %18
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %49

32:                                               ; preds = %20
  %33 = load float, ptr %14, align 4, !tbaa !105
  store float %33, ptr %16, align 4, !tbaa !105
  %34 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !105
  %36 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 5, i64 1
  store float %35, ptr %36, align 4, !tbaa !105
  %37 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !105
  %39 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 5, i64 2
  store float %38, ptr %39, align 4, !tbaa !105
  %40 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6
  %41 = load float, ptr %5, align 4, !tbaa !105
  store float %41, ptr %40, align 4, !tbaa !105
  %42 = getelementptr inbounds float, ptr %5, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6, i64 1
  store float %43, ptr %44, align 4, !tbaa !105
  %45 = getelementptr inbounds float, ptr %5, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !105
  %47 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6, i64 2
  store float %46, ptr %47, align 4, !tbaa !105
  %48 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 12
  store i16 1, ptr %48, align 2, !tbaa !285
  br label %98

49:                                               ; preds = %20
  %50 = fcmp oeq float %26, %22
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br i1 %27, label %89, label %98

52:                                               ; preds = %49
  %53 = fsub float %23, %24
  %54 = fsub float %26, %22
  %55 = fdiv float %53, %54
  %56 = fneg float %26
  %57 = call float @llvm.fmuladd.f32(float %56, float %55, float %23)
  %58 = fcmp olt float %57, 0.000000e+00
  %59 = select i1 %27, i1 %58, i1 false
  br i1 %59, label %89, label %60

60:                                               ; preds = %52
  %61 = icmp eq i32 %21, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = fcmp olt float %57, 0xBEE4F8B580000000
  %64 = fcmp ogt float %57, 1.000000e+00
  %65 = or i1 %63, %64
  br i1 %65, label %98, label %66

66:                                               ; preds = %60, %62
  %67 = fcmp ole float %26, 0x3EE4F8B580000000
  %68 = fcmp oge float %26, 0xBEE4F8B580000000
  %69 = and i1 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = fcmp oge float %57, 0xBEE4F8B580000000
  %72 = fcmp ole float %57, 1.000000e+00
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = icmp eq ptr %3, @nr_signed_distance_to_plane
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6
  %78 = load float, ptr %5, align 4, !tbaa !105
  store float %78, ptr %77, align 4, !tbaa !105
  %79 = getelementptr inbounds float, ptr %5, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !105
  %81 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6, i64 1
  store float %80, ptr %81, align 4, !tbaa !105
  %82 = getelementptr inbounds float, ptr %5, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !105
  %84 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6, i64 2
  store float %83, ptr %84, align 4, !tbaa !105
  br label %85

85:                                               ; preds = %76, %74
  br i1 %58, label %98, label %86

86:                                               ; preds = %85
  %87 = fcmp ogt float %57, 1.000000e+00
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  br label %98

89:                                               ; preds = %52, %51
  %90 = load float, ptr %12, align 8, !tbaa !300
  call fastcc void @collision_interpolate_element(ptr noundef %2, float noundef 1.000000e+00, float noundef %90, ptr noundef %0)
  %91 = call float %3(ptr noundef nonnull %17, float noundef %1, ptr noundef %2, ptr noundef nonnull %5) #16
  br label %92

92:                                               ; preds = %89, %66
  %93 = phi float [ %23, %66 ], [ 1.000000e+00, %89 ]
  %94 = phi float [ %57, %66 ], [ %19, %89 ]
  %95 = phi float [ %26, %66 ], [ %91, %89 ]
  %96 = add nuw nsw i32 %21, 1
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %20, !llvm.loop !301

98:                                               ; preds = %92, %62, %51, %70, %88, %86, %85, %32
  %99 = phi float [ 0.000000e+00, %32 ], [ 1.000000e+00, %88 ], [ %57, %86 ], [ 0.000000e+00, %85 ], [ -1.000000e+00, %70 ], [ -1.000000e+00, %51 ], [ -1.000000e+00, %62 ], [ -1.000000e+00, %92 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret float %99
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal float @nr_signed_distance_to_plane(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #12 {
  %5 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2
  %7 = load float, ptr %5, align 4, !tbaa !105
  %8 = load float, ptr %6, align 4, !tbaa !105
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !105
  %12 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !105
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !105
  %17 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !105
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !105
  %22 = fsub float %21, %8
  %23 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 4, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !105
  %25 = fsub float %24, %13
  %26 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 4, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !105
  %28 = fsub float %27, %18
  %29 = load float, ptr %0, align 4, !tbaa !105
  %30 = fsub float %29, %8
  %31 = getelementptr inbounds float, ptr %0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !105
  %33 = fsub float %32, %13
  %34 = getelementptr inbounds float, ptr %0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !105
  %36 = fsub float %35, %18
  %37 = fneg float %19
  %38 = fmul float %25, %37
  %39 = tail call float @llvm.fmuladd.f32(float %14, float %28, float %38)
  store float %39, ptr %3, align 4, !tbaa !105
  %40 = fneg float %9
  %41 = fmul float %28, %40
  %42 = tail call float @llvm.fmuladd.f32(float %19, float %22, float %41)
  %43 = getelementptr inbounds float, ptr %3, i64 1
  store float %42, ptr %43, align 4, !tbaa !105
  %44 = fneg float %14
  %45 = fmul float %22, %44
  %46 = tail call float @llvm.fmuladd.f32(float %9, float %25, float %45)
  %47 = getelementptr inbounds float, ptr %3, i64 2
  store float %46, ptr %47, align 4, !tbaa !105
  %48 = fmul float %42, %42
  %49 = tail call float @llvm.fmuladd.f32(float %39, float %39, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %49)
  %51 = fcmp ogt float %50, 0x38AA95A5C0000000
  br i1 %51, label %52, label %61

52:                                               ; preds = %4
  %53 = tail call float @sqrtf(float noundef %50) #16
  %54 = fdiv float 1.000000e+00, %53
  %55 = load float, ptr %3, align 4, !tbaa !105
  %56 = fmul float %55, %54
  store float %56, ptr %3, align 4, !tbaa !105
  %57 = load float, ptr %43, align 4, !tbaa !105
  %58 = fmul float %54, %57
  store float %58, ptr %43, align 4, !tbaa !105
  %59 = load float, ptr %47, align 4, !tbaa !105
  %60 = fmul float %54, %59
  br label %62

61:                                               ; preds = %4
  store float 0.000000e+00, ptr %3, align 4, !tbaa !105
  store float 0.000000e+00, ptr %43, align 4, !tbaa !105
  br label %62

62:                                               ; preds = %52, %61
  %63 = phi float [ 0.000000e+00, %61 ], [ %60, %52 ]
  store float %63, ptr %47, align 4, !tbaa !105
  %64 = load float, ptr %3, align 4, !tbaa !105
  %65 = load float, ptr %43, align 4, !tbaa !105
  %66 = fmul float %33, %65
  %67 = tail call float @llvm.fmuladd.f32(float %30, float %64, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %36, float %63, float %67)
  %69 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 11
  %70 = load i16, ptr %69, align 8, !tbaa !293
  %71 = icmp eq i16 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = fcmp olt float %68, 0.000000e+00
  %74 = zext i1 %73 to i16
  store i16 %74, ptr %69, align 8, !tbaa !293
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i16, ptr %69, align 8, !tbaa !293
  %77 = icmp eq i16 %76, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = fneg float %64
  store float %79, ptr %3, align 4, !tbaa !105
  %80 = fneg float %65
  store float %80, ptr %43, align 4, !tbaa !105
  %81 = fneg float %63
  store float %81, ptr %47, align 4, !tbaa !105
  %82 = fneg float %68
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi float [ %82, %78 ], [ %68, %75 ]
  %85 = fsub float %84, %1
  ret float %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @collision_interpolate_element(ptr nocapture noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #6 {
  %5 = fsub float 1.000000e+00, %2
  %6 = tail call float @llvm.fmuladd.f32(float %1, float %5, float %2)
  %7 = getelementptr inbounds %struct.ParticleCollision, ptr %3, i64 0, i32 7
  %8 = load float, ptr %7, align 4, !tbaa !495
  %9 = getelementptr inbounds %struct.ParticleCollision, ptr %3, i64 0, i32 8
  %10 = load float, ptr %9, align 8, !tbaa !496
  %11 = fsub float %10, %8
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %8)
  %13 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !284
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %0, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = load float, ptr %18, align 4, !tbaa !105
  %22 = load float, ptr %20, align 4, !tbaa !105
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %12, float %21)
  store float %23, ptr %17, align 4, !tbaa !105
  %24 = getelementptr inbounds float, ptr %18, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !105
  %26 = getelementptr inbounds float, ptr %20, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !105
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %12, float %25)
  %29 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 2, i64 1
  store float %28, ptr %29, align 4, !tbaa !105
  %30 = getelementptr inbounds float, ptr %18, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !105
  %32 = getelementptr inbounds float, ptr %20, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !105
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %12, float %31)
  %35 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 2, i64 2
  store float %34, ptr %35, align 4, !tbaa !105
  %36 = icmp eq i32 %14, 1
  br i1 %36, label %80, label %37

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = load float, ptr %40, align 4, !tbaa !105
  %44 = load float, ptr %42, align 4, !tbaa !105
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %12, float %43)
  store float %45, ptr %38, align 4, !tbaa !105
  %46 = getelementptr inbounds float, ptr %40, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !105
  %48 = getelementptr inbounds float, ptr %42, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !105
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %12, float %47)
  %51 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 3, i64 1
  store float %50, ptr %51, align 4, !tbaa !105
  %52 = getelementptr inbounds float, ptr %40, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !105
  %54 = getelementptr inbounds float, ptr %42, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !105
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %12, float %53)
  %57 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 3, i64 2
  store float %56, ptr %57, align 4, !tbaa !105
  %58 = icmp sgt i32 %14, 2
  br i1 %58, label %59, label %80

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 4
  %61 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !72
  %65 = load float, ptr %62, align 4, !tbaa !105
  %66 = load float, ptr %64, align 4, !tbaa !105
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %12, float %65)
  store float %67, ptr %60, align 4, !tbaa !105
  %68 = getelementptr inbounds float, ptr %62, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !105
  %70 = getelementptr inbounds float, ptr %64, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !105
  %72 = tail call float @llvm.fmuladd.f32(float %71, float %12, float %69)
  %73 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 4, i64 1
  store float %72, ptr %73, align 4, !tbaa !105
  %74 = getelementptr inbounds float, ptr %62, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !105
  %76 = getelementptr inbounds float, ptr %64, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !105
  %78 = tail call float @llvm.fmuladd.f32(float %77, float %12, float %75)
  %79 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 4, i64 2
  store float %78, ptr %79, align 4, !tbaa !105
  br label %80

80:                                               ; preds = %16, %59, %37, %4
  ret void
}

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal float @nr_distance_to_edge(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #12 {
  %5 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2
  %7 = load float, ptr %5, align 4, !tbaa !105
  %8 = load float, ptr %6, align 4, !tbaa !105
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !105
  %12 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !105
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !105
  %17 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !105
  %19 = fsub float %16, %18
  %20 = load float, ptr %0, align 4, !tbaa !105
  %21 = fsub float %20, %8
  %22 = getelementptr inbounds float, ptr %0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !105
  %24 = fsub float %23, %13
  %25 = getelementptr inbounds float, ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !105
  %27 = fsub float %26, %18
  %28 = fsub float %20, %7
  %29 = fsub float %23, %11
  %30 = fsub float %26, %16
  %31 = fneg float %27
  %32 = fmul float %29, %31
  %33 = tail call float @llvm.fmuladd.f32(float %24, float %30, float %32)
  %34 = fneg float %21
  %35 = fmul float %30, %34
  %36 = tail call float @llvm.fmuladd.f32(float %27, float %28, float %35)
  %37 = fneg float %24
  %38 = fmul float %28, %37
  %39 = tail call float @llvm.fmuladd.f32(float %21, float %29, float %38)
  %40 = fmul float %36, %36
  %41 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %39, float %41)
  %43 = tail call float @sqrtf(float noundef %42) #16
  %44 = fmul float %14, %14
  %45 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %45)
  %47 = tail call float @sqrtf(float noundef %46) #16
  %48 = fdiv float %43, %47
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = fsub float %49, %1
  ret float %50
}

declare void @boid_default_settings(ptr noundef) local_unnamed_addr #3

declare ptr @boid_new_state(ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @boid_new_rule(i32 noundef) local_unnamed_addr #3

declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @cached_step(ptr noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.ParticleTexture, align 4
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #16
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 42
  tail call void @pdEndEffectors(ptr noundef nonnull %8) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = load ptr, ptr %4, align 8, !tbaa !113
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !363
  %17 = tail call ptr @pdInitEffectors(ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef %16, i8 noundef zeroext 1) #16
  %18 = load ptr, ptr %4, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 42
  store ptr %17, ptr %19, align 8, !tbaa !366
  tail call void @precalc_guides(ptr noundef nonnull %0, ptr noundef %17) #16
  %20 = load ptr, ptr %6, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 39
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 40
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.PointCache, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 7
  %33 = load i16, ptr %32, align 8, !tbaa !47
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 25
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = and i32 %37, 4
  br label %45

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 11
  %41 = load i16, ptr %40, align 8, !tbaa !51
  switch i16 %41, label %42 [
    i16 1, label %45
    i16 3, label %45
  ]

42:                                               ; preds = %39
  %43 = icmp eq i16 %41, 4
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %42, %39, %39, %35, %24
  %46 = phi i32 [ %38, %35 ], [ 0, %24 ], [ 1, %39 ], [ %44, %42 ], [ 1, %39 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45, %2
  %49 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 89
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 19
  %54 = load i16, ptr %53, align 4, !tbaa !53
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 40
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = getelementptr inbounds %struct.PointCache, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !45
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 30
  %65 = load i16, ptr %64, align 2, !tbaa !54
  %66 = sitofp i16 %65 to float
  %67 = fdiv float %66, 1.000000e+02
  br label %68

68:                                               ; preds = %45, %52, %56, %63
  %69 = phi float [ %67, %63 ], [ 1.000000e+00, %56 ], [ 1.000000e+00, %52 ], [ 1.000000e+00, %45 ]
  %70 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 26
  %71 = load i32, ptr %70, align 8, !tbaa !55
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %163

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !64
  %76 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 82
  %77 = getelementptr inbounds %struct.ParticleTexture, ptr %3, i64 0, i32 4
  %78 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 83
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 23
  %80 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 15
  %81 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 5
  %82 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 40
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 23
  br label %84

84:                                               ; preds = %73, %139
  %85 = phi ptr [ %75, %73 ], [ %160, %139 ]
  %86 = phi i32 [ 0, %73 ], [ %159, %139 ]
  call void @psys_get_texture(ptr noundef nonnull %0, ptr noundef %85, ptr noundef nonnull %3, i32 noundef 8, float noundef %1) #16
  %87 = load float, ptr %76, align 8, !tbaa !268
  %88 = load float, ptr %77, align 4, !tbaa !382
  %89 = fmul float %87, %88
  %90 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 0, i32 13
  store float %89, ptr %90, align 4, !tbaa !236
  %91 = load float, ptr %78, align 4, !tbaa !334
  %92 = fcmp ogt float %91, 0.000000e+00
  br i1 %92, label %93, label %111

93:                                               ; preds = %84
  %94 = add nuw nsw i32 %86, 1
  %95 = load i32, ptr %79, align 4, !tbaa !150
  %96 = srem i32 %95, 1024
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !95
  %100 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %97
  %101 = load i32, ptr %100, align 4, !tbaa !95
  %102 = mul i32 %101, %94
  %103 = add i32 %102, %99
  %104 = and i32 %103, 1023
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !105
  %108 = fneg float %91
  %109 = call float @llvm.fmuladd.f32(float %108, float %107, float 1.000000e+00)
  %110 = fmul float %89, %109
  store float %110, ptr %90, align 4, !tbaa !236
  br label %111

111:                                              ; preds = %93, %84
  %112 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %0) #16
  store ptr %112, ptr %80, align 8, !tbaa !128
  %113 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 0, i32 6
  %114 = load float, ptr %113, align 4, !tbaa !141
  %115 = fcmp ogt float %114, %1
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 0, i32 18
  store i16 2, ptr %117, align 2, !tbaa !200
  %118 = load i32, ptr %81, align 8, !tbaa !250
  %119 = and i32 %118, 32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %82, align 8, !tbaa !44
  %123 = getelementptr inbounds %struct.PointCache, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !45
  %125 = and i32 %124, 512
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  call void @reset_particle(ptr noundef nonnull %0, ptr noundef %85, float noundef 0.000000e+00, float noundef %1)
  br label %135

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 0, i32 8
  %130 = load float, ptr %129, align 4, !tbaa !197
  %131 = fcmp ugt float %130, %1
  %132 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 0, i32 18
  br i1 %131, label %134, label %133

133:                                              ; preds = %128
  store i16 1, ptr %132, align 2, !tbaa !200
  br label %135

134:                                              ; preds = %128
  store i16 3, ptr %132, align 2, !tbaa !200
  br label %135

135:                                              ; preds = %133, %134, %116, %121, %127
  %136 = load ptr, ptr %80, align 8, !tbaa !128
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  call void @end_latt_deform(ptr noundef nonnull %136) #16
  store ptr null, ptr %80, align 8, !tbaa !128
  br label %139

139:                                              ; preds = %138, %135
  %140 = load i32, ptr %83, align 4, !tbaa !150
  %141 = srem i32 %140, 1024
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !95
  %145 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %142
  %146 = load i32, ptr %145, align 4, !tbaa !95
  %147 = mul i32 %146, %86
  %148 = add i32 %147, %144
  %149 = and i32 %148, 1023
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %150
  %152 = load float, ptr %151, align 4, !tbaa !105
  %153 = fcmp ogt float %152, %69
  %154 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 0, i32 17
  %155 = load i16, ptr %154, align 4, !tbaa !65
  %156 = and i16 %155, -3
  %157 = select i1 %153, i16 2, i16 0
  %158 = or disjoint i16 %156, %157
  store i16 %158, ptr %154, align 4, !tbaa !65
  %159 = add nuw nsw i32 %86, 1
  %160 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 1
  %161 = load i32, ptr %70, align 8, !tbaa !55
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %84, label %163, !llvm.loop !497

163:                                              ; preds = %139, %68
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_children(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !47
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @psys_free_children(ptr noundef %3) #16
  br label %38

15:                                               ; preds = %9, %1
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 19
  %17 = load i16, ptr %16, align 4, !tbaa !53
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 28
  %21 = load i32, ptr %20, align 8, !tbaa !73
  %22 = load ptr, ptr %0, align 8, !tbaa !102
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %24 = load i32, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 39
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 90
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 89
  %30 = select i1 %27, ptr %29, ptr %28
  %31 = load i32, ptr %30, align 4, !tbaa !95
  %32 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22
  %33 = tail call i32 @get_render_child_particle_number(ptr noundef nonnull %32, i32 noundef %31) #16
  %34 = mul nsw i32 %33, %24
  %35 = icmp eq i32 %21, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %19
  tail call fastcc void @distribute_particles(ptr noundef nonnull %0, i32 noundef 4)
  br label %38

37:                                               ; preds = %15
  tail call void @psys_free_children(ptr noundef %3) #16
  br label %38

38:                                               ; preds = %37, %19, %36, %14
  ret void
}

declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_ptcache_free_mem(ptr noundef) local_unnamed_addr #3

declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #3

declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #3

declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @precalc_guides(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @psys_free_children(ptr noundef) local_unnamed_addr #3

declare i32 @get_render_child_particle_number(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @psys_get_timestep(ptr noundef) local_unnamed_addr #3

declare void @BLI_srandom(i32 noundef) local_unnamed_addr #3

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #3

declare ptr @get_collider_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @boids_precalc_rules(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @psys_update_particle_bvhtree(ptr noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 1) #16
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !252
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 22
  %10 = load float, ptr %9, align 8, !tbaa !498
  %11 = fcmp oeq float %10, %1
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #16
  br i1 %11, label %69, label %13

12:                                               ; preds = %4
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #16
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !55
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi ptr [ %31, %20 ], [ %19, %18 ]
  %22 = phi i32 [ %29, %20 ], [ 0, %18 ]
  %23 = phi i32 [ %30, %20 ], [ 0, %18 ]
  %24 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 17
  %25 = load i16, ptr %24, align 4, !tbaa !65
  %26 = and i16 %25, 3
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %22, %28
  %30 = add nuw nsw i32 %23, 1
  %31 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 1
  %32 = icmp eq i32 %30, %16
  br i1 %32, label %33, label %20, !llvm.loop !499

33:                                               ; preds = %20, %13
  %34 = phi i32 [ 0, %13 ], [ %29, %20 ]
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 2) #16
  %36 = load ptr, ptr %5, align 8, !tbaa !252
  tail call void @BLI_bvhtree_free(ptr noundef %36) #16
  %37 = tail call ptr @BLI_bvhtree_new(i32 noundef %34, float noundef 0.000000e+00, i8 noundef zeroext 4, i8 noundef zeroext 6) #16
  store ptr %37, ptr %5, align 8, !tbaa !252
  %38 = load i32, ptr %35, align 8, !tbaa !55
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = load ptr, ptr %14, align 8, !tbaa !64
  br label %42

42:                                               ; preds = %40, %61
  %43 = phi ptr [ %63, %61 ], [ %41, %40 ]
  %44 = phi i32 [ %62, %61 ], [ 0, %40 ]
  %45 = getelementptr inbounds %struct.ParticleData, ptr %43, i64 0, i32 17
  %46 = load i16, ptr %45, align 4, !tbaa !65
  %47 = and i16 %46, 3
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ParticleData, ptr %43, i64 0, i32 18
  %51 = load i16, ptr %50, align 2, !tbaa !200
  %52 = icmp eq i16 %51, 3
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ParticleKey, ptr %43, i64 0, i32 4
  %55 = load float, ptr %54, align 4, !tbaa !201
  %56 = fcmp oeq float %55, %1
  %57 = load ptr, ptr %5, align 8, !tbaa !252
  br i1 %56, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ParticleData, ptr %43, i64 0, i32 1
  tail call void @BLI_bvhtree_insert(ptr noundef %57, i32 noundef %44, ptr noundef nonnull %59, i32 noundef 1) #16
  br label %61

60:                                               ; preds = %53
  tail call void @BLI_bvhtree_insert(ptr noundef %57, i32 noundef %44, ptr noundef %43, i32 noundef 1) #16
  br label %61

61:                                               ; preds = %42, %58, %60, %49
  %62 = add nuw nsw i32 %44, 1
  %63 = getelementptr inbounds %struct.ParticleData, ptr %43, i64 1
  %64 = load i32, ptr %35, align 8, !tbaa !55
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %42, label %66, !llvm.loop !500

66:                                               ; preds = %61, %33
  %67 = load ptr, ptr %5, align 8, !tbaa !252
  tail call void @BLI_bvhtree_balance(ptr noundef %67) #16
  %68 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 22
  store float %1, ptr %68, align 8, !tbaa !498
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #16
  br label %69

69:                                               ; preds = %8, %66, %2
  ret void
}

declare void @copy_particle_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @basic_integrate(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.ParticleKey, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.EfData, align 8
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  %16 = tail call float @psys_get_timestep(ptr noundef %0) #16
  %17 = fmul float %16, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #16
  call void @psys_get_texture(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %7, i32 noundef 3136, float noundef %3) #16
  %18 = getelementptr inbounds %struct.EfData, ptr %7, i64 0, i32 2
  store ptr %15, ptr %18, align 8, !tbaa !501
  %19 = getelementptr inbounds %struct.EfData, ptr %7, i64 0, i32 1
  store ptr %0, ptr %19, align 8, !tbaa !503
  %20 = call i32 @psys_uses_gravity(ptr noundef %0) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !47
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !363
  %29 = getelementptr inbounds %struct.EffectorWeights, ptr %28, i64 0, i32 3
  %30 = load i16, ptr %29, align 4, !tbaa !504
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %26, %22
  store float 0.000000e+00, ptr %6, align 4, !tbaa !105
  %34 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %34, align 4, !tbaa !105
  %35 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %35, align 4, !tbaa !105
  %36 = load ptr, ptr %0, align 8, !tbaa !102
  %37 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 40
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !363
  %40 = getelementptr inbounds %struct.EffectorWeights, ptr %39, i64 0, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !506
  %42 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 6
  %43 = load float, ptr %42, align 8, !tbaa !507
  %44 = fmul float %41, %43
  %45 = load float, ptr %37, align 4, !tbaa !105
  %46 = call float @llvm.fmuladd.f32(float %45, float %44, float 0.000000e+00)
  store float %46, ptr %6, align 4, !tbaa !105
  %47 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 40, i32 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !105
  %49 = call float @llvm.fmuladd.f32(float %48, float %44, float 0.000000e+00)
  store float %49, ptr %34, align 4, !tbaa !105
  %50 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 40, i32 0, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !105
  %52 = call float @llvm.fmuladd.f32(float %51, float %44, float 0.000000e+00)
  store float %52, ptr %35, align 4, !tbaa !105
  br label %53

53:                                               ; preds = %33, %26, %4
  %54 = phi ptr [ %6, %33 ], [ null, %26 ], [ null, %4 ]
  %55 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 3
  %56 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 1
  %57 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 1, i32 3
  %58 = load float, ptr %57, align 4, !tbaa !105
  store float %58, ptr %55, align 4, !tbaa !105
  %59 = getelementptr inbounds float, ptr %57, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !105
  %61 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 3, i64 1
  store float %60, ptr %61, align 4, !tbaa !105
  %62 = getelementptr inbounds float, ptr %57, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !105
  %64 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 3, i64 2
  store float %63, ptr %64, align 4, !tbaa !105
  call fastcc void @integrate_particle(ptr noundef %11, ptr noundef %15, float noundef %17, ptr noundef %54, ptr noundef nonnull @basic_force_cb, ptr noundef nonnull %7)
  %65 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 87
  %66 = load float, ptr %65, align 4, !tbaa !508
  %67 = fcmp une float %66, 0.000000e+00
  br i1 %67, label %68, label %83

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1
  %70 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 5
  %71 = load float, ptr %70, align 4, !tbaa !509
  %72 = fmul float %66, %71
  %73 = fmul float %72, -2.500000e+01
  %74 = call float @llvm.fmuladd.f32(float %73, float %17, float 1.000000e+00)
  %75 = load float, ptr %69, align 4, !tbaa !105
  %76 = fmul float %75, %74
  store float %76, ptr %69, align 4, !tbaa !105
  %77 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !105
  %79 = fmul float %78, %74
  store float %79, ptr %77, align 4, !tbaa !105
  %80 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !105
  %82 = fmul float %74, %81
  store float %82, ptr %80, align 4, !tbaa !105
  br label %83

83:                                               ; preds = %68, %53
  %84 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 6
  %85 = load float, ptr %84, align 4, !tbaa !141
  %86 = fsub float %3, %85
  %87 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 7
  %88 = load float, ptr %87, align 8, !tbaa !194
  %89 = fdiv float %86, %88
  %90 = fcmp olt float %89, 0.000000e+00
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = fcmp ogt float %89, 1.000000e+00
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %83, %91, %93
  %95 = phi float [ 1.000000e+00, %93 ], [ %89, %91 ], [ 0.000000e+00, %83 ]
  %96 = load float, ptr %15, align 4, !tbaa !105
  store float %96, ptr %5, align 4, !tbaa !105
  %97 = getelementptr inbounds float, ptr %15, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !105
  %99 = getelementptr inbounds float, ptr %5, i64 1
  store float %98, ptr %99, align 4, !tbaa !105
  %100 = getelementptr inbounds float, ptr %15, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !105
  %102 = getelementptr inbounds float, ptr %5, i64 2
  store float %101, ptr %102, align 4, !tbaa !105
  %103 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1
  %104 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1
  %105 = load float, ptr %104, align 4, !tbaa !105
  store float %105, ptr %103, align 4, !tbaa !105
  %106 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !105
  %108 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1, i64 1
  store float %107, ptr %108, align 4, !tbaa !105
  %109 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !105
  %111 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1, i64 2
  store float %110, ptr %111, align 4, !tbaa !105
  %112 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 4
  %113 = load float, ptr %112, align 4, !tbaa !201
  %114 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  store float %113, ptr %114, align 4, !tbaa !257
  %115 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 7
  %116 = load i16, ptr %115, align 8, !tbaa !47
  %117 = icmp eq i16 %116, 2
  br i1 %117, label %144, label %118

118:                                              ; preds = %94
  %119 = load ptr, ptr %8, align 8, !tbaa !113
  %120 = getelementptr inbounds %struct.ParticleSystem, ptr %119, i64 0, i32 42
  %121 = load ptr, ptr %120, align 8, !tbaa !366
  %122 = call i32 @do_guides(ptr noundef %121, ptr noundef nonnull %5, i32 noundef %1, float noundef %95) #16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %118
  %125 = load float, ptr %5, align 4, !tbaa !105
  store float %125, ptr %15, align 4, !tbaa !105
  %126 = load float, ptr %99, align 4, !tbaa !105
  store float %126, ptr %97, align 4, !tbaa !105
  %127 = load float, ptr %102, align 4, !tbaa !105
  store float %127, ptr %100, align 4, !tbaa !105
  %128 = load float, ptr %5, align 4, !tbaa !105
  %129 = load float, ptr %56, align 4, !tbaa !105
  %130 = fsub float %128, %129
  store float %130, ptr %104, align 4, !tbaa !105
  %131 = load float, ptr %99, align 4, !tbaa !105
  %132 = getelementptr inbounds float, ptr %56, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !105
  %134 = fsub float %131, %133
  store float %134, ptr %106, align 4, !tbaa !105
  %135 = load float, ptr %102, align 4, !tbaa !105
  %136 = getelementptr inbounds float, ptr %56, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !105
  %138 = fsub float %135, %137
  store float %138, ptr %109, align 4, !tbaa !105
  %139 = fdiv float 1.000000e+00, %17
  %140 = fmul float %139, %130
  store float %140, ptr %104, align 4, !tbaa !105
  %141 = fmul float %139, %134
  store float %141, ptr %106, align 4, !tbaa !105
  %142 = fmul float %139, %138
  store float %142, ptr %109, align 4, !tbaa !105
  %143 = load float, ptr %114, align 4, !tbaa !257
  store float %143, ptr %112, align 4, !tbaa !201
  br label %144

144:                                              ; preds = %118, %124, %94
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @collision_check(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.ParticleCollision, align 8
  %13 = alloca %struct.BVHTreeRayHit, align 4
  %14 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #16
  %22 = tail call float @psys_get_timestep(ptr noundef %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %12, i8 0, i64 328, i1 false)
  %23 = fmul float %22, %2
  %24 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 14
  store float %23, ptr %24, align 8, !tbaa !510
  %25 = fdiv float 1.000000e+00, %23
  %26 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 15
  store float %25, ptr %26, align 4, !tbaa !299
  %27 = fdiv float 1.000000e+00, %22
  %28 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 16
  store float %27, ptr %28, align 8, !tbaa !511
  %29 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 9
  store float %3, ptr %29, align 4, !tbaa !512
  %30 = load ptr, ptr %14, align 8, !tbaa !113
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %30, i64 0, i32 20
  %32 = load float, ptr %31, align 8, !tbaa !161
  %33 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 10
  store float %32, ptr %33, align 8, !tbaa !513
  %34 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 22
  %35 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 1
  %36 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 1
  %37 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 1, i32 1
  %38 = load float, ptr %35, align 4, !tbaa !105
  %39 = load float, ptr %37, align 4, !tbaa !105
  %40 = fsub float %38, %39
  store float %40, ptr %34, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !105
  %43 = getelementptr inbounds float, ptr %37, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !105
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 22, i64 1
  store float %45, ptr %46, align 4, !tbaa !105
  %47 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 1, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !105
  %49 = getelementptr inbounds float, ptr %37, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !105
  %51 = fsub float %48, %50
  %52 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 22, i64 2
  store float %51, ptr %52, align 8, !tbaa !105
  %53 = fmul float %25, %40
  store float %53, ptr %34, align 8, !tbaa !105
  %54 = fmul float %25, %45
  store float %54, ptr %46, align 4, !tbaa !105
  %55 = fmul float %25, %51
  store float %55, ptr %52, align 8, !tbaa !105
  %56 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 18
  %57 = load float, ptr %36, align 4, !tbaa !105
  store float %57, ptr %56, align 8, !tbaa !105
  %58 = getelementptr inbounds float, ptr %36, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !105
  %60 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 18, i64 1
  store float %59, ptr %60, align 4, !tbaa !105
  %61 = getelementptr inbounds float, ptr %36, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !105
  %63 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 18, i64 2
  store float %62, ptr %63, align 8, !tbaa !105
  %64 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 19
  %65 = load float, ptr %21, align 4, !tbaa !105
  store float %65, ptr %64, align 4, !tbaa !105
  %66 = getelementptr inbounds float, ptr %21, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !105
  %68 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 19, i64 1
  store float %67, ptr %68, align 8, !tbaa !105
  %69 = getelementptr inbounds float, ptr %21, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !105
  %71 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 19, i64 2
  store float %70, ptr %71, align 4, !tbaa !105
  %72 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 20
  %73 = load float, ptr %37, align 4, !tbaa !105
  store float %73, ptr %72, align 8, !tbaa !105
  %74 = load float, ptr %43, align 4, !tbaa !105
  %75 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 20, i64 1
  store float %74, ptr %75, align 4, !tbaa !105
  %76 = load float, ptr %49, align 4, !tbaa !105
  %77 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 20, i64 2
  store float %76, ptr %77, align 8, !tbaa !105
  %78 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 21
  %79 = load float, ptr %35, align 4, !tbaa !105
  store float %79, ptr %78, align 4, !tbaa !105
  %80 = load float, ptr %41, align 4, !tbaa !105
  %81 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 21, i64 1
  store float %80, ptr %81, align 8, !tbaa !105
  %82 = load float, ptr %47, align 4, !tbaa !105
  %83 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 21, i64 2
  store float %82, ptr %83, align 4, !tbaa !105
  %84 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 6
  store float 0.000000e+00, ptr %84, align 8, !tbaa !300
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !250
  %87 = and i32 %86, 8192
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %4
  %90 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 11
  %91 = load i16, ptr %90, align 8, !tbaa !51
  %92 = icmp eq i16 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %4
  %94 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 13
  %95 = load float, ptr %94, align 4, !tbaa !236
  br label %96

96:                                               ; preds = %89, %93
  %97 = phi float [ %95, %93 ], [ 0x3F50624DE0000000, %89 ]
  %98 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 17
  store float %97, ptr %98, align 4, !tbaa !514
  %99 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 11
  %100 = load i16, ptr %99, align 8, !tbaa !51
  %101 = icmp eq i16 %100, 3
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !183
  %105 = load i32, ptr %104, align 8, !tbaa !515
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 24
  store i32 1, ptr %109, align 8, !tbaa !516
  %110 = load float, ptr %69, align 8, !tbaa !105
  %111 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 23
  store float %110, ptr %111, align 4, !tbaa !517
  %112 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !143
  %114 = load ptr, ptr %113, align 8, !tbaa !518
  %115 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 3
  store ptr %114, ptr %115, align 8, !tbaa !519
  br label %116

116:                                              ; preds = %108, %102, %96
  %117 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %118 = getelementptr inbounds float, ptr %11, i64 1
  %119 = getelementptr inbounds float, ptr %11, i64 2
  %120 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 11
  %121 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %13, i64 0, i32 3
  %122 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 12
  %123 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 3
  %124 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 4
  %125 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 6
  %126 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 5
  %127 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 7
  %128 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 8
  %129 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13
  %130 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 1
  %131 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %13, i64 0, i32 3
  %132 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 11
  %133 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 7
  %134 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 7, i64 1
  %135 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 7, i64 2
  %136 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 6
  %137 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 6, i64 1
  %138 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 6, i64 2
  %139 = getelementptr inbounds float, ptr %6, i64 1
  %140 = getelementptr inbounds float, ptr %6, i64 2
  %141 = getelementptr inbounds float, ptr %7, i64 1
  %142 = getelementptr inbounds float, ptr %7, i64 2
  %143 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 3
  %144 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 3, i64 2
  %145 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 3, i64 1
  %146 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 13
  %147 = getelementptr inbounds float, ptr %9, i64 1
  %148 = getelementptr inbounds float, ptr %9, i64 2
  %149 = getelementptr inbounds float, ptr %10, i64 1
  %150 = getelementptr inbounds float, ptr %10, i64 2
  %151 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 24
  %152 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 4
  %153 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %154 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 23
  %155 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 23
  %156 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %157 = getelementptr inbounds float, ptr %5, i64 1
  %158 = getelementptr inbounds float, ptr %5, i64 2
  %159 = getelementptr inbounds float, ptr %8, i64 1
  %160 = getelementptr inbounds float, ptr %8, i64 2
  %161 = getelementptr inbounds float, ptr %8, i64 1
  %162 = getelementptr inbounds float, ptr %8, i64 2
  %163 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 2
  %164 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 12
  %165 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 7
  %166 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 8
  %167 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 9
  %168 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13
  %169 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2
  %170 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 1
  %171 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 1
  %172 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 2
  %173 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3
  %174 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 0, i64 1
  %175 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 1, i64 1
  %176 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3, i64 1
  %177 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3, i64 2
  %178 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 4
  %179 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 0, i64 2
  %180 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 1, i64 2
  %181 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 4, i64 1
  %182 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 4, i64 2
  %183 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 9
  %184 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3
  %185 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2
  %186 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3, i64 1
  %187 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 1
  %188 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3, i64 2
  %189 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 2
  %190 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 4
  %191 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 4, i64 1
  %192 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 4, i64 2
  %193 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 11
  %194 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 8
  %195 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 8, i64 1
  %196 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3
  %197 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2
  %198 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3, i64 1
  %199 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 1
  %200 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 3, i64 2
  %201 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 2
  %202 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 8
  %203 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2
  %204 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 1
  %205 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 2, i64 2
  %206 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 7
  %207 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 7, i64 1
  %208 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 7, i64 2
  br label %209

209:                                              ; preds = %116, %847
  %210 = phi i32 [ 0, %116 ], [ %282, %847 ]
  %211 = load ptr, ptr %117, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %212 = load ptr, ptr %211, align 8, !tbaa !213
  %213 = icmp eq ptr %212, null
  br i1 %213, label %278, label %214

214:                                              ; preds = %209
  %215 = load float, ptr %64, align 4, !tbaa !105
  %216 = load float, ptr %56, align 8, !tbaa !105
  %217 = fsub float %215, %216
  store float %217, ptr %11, align 4, !tbaa !105
  %218 = load float, ptr %68, align 8, !tbaa !105
  %219 = load float, ptr %60, align 4, !tbaa !105
  %220 = fsub float %218, %219
  store float %220, ptr %118, align 4, !tbaa !105
  %221 = load float, ptr %71, align 4, !tbaa !105
  %222 = load float, ptr %63, align 8, !tbaa !105
  %223 = fsub float %221, %222
  store float %223, ptr %119, align 4, !tbaa !105
  store i32 -1, ptr %13, align 4, !tbaa !303
  %224 = fmul float %220, %220
  %225 = call float @llvm.fmuladd.f32(float %217, float %217, float %224)
  %226 = call float @llvm.fmuladd.f32(float %223, float %223, float %225)
  %227 = call float @sqrtf(float noundef %226) #16
  store float %227, ptr %120, align 4, !tbaa !278
  store float %227, ptr %121, align 4, !tbaa !276
  store i16 0, ptr %122, align 2, !tbaa !297
  %228 = fcmp oeq float %227, 0.000000e+00
  br i1 %228, label %229, label %230

229:                                              ; preds = %214
  store float 0x3EB0C6F7A0000000, ptr %120, align 4, !tbaa !278
  store float 0x3EB0C6F7A0000000, ptr %121, align 4, !tbaa !276
  br label %230

230:                                              ; preds = %229, %214
  %231 = load ptr, ptr %211, align 8, !tbaa !72
  %232 = icmp eq ptr %231, null
  br i1 %232, label %274, label %233

233:                                              ; preds = %230, %271
  %234 = phi ptr [ %272, %271 ], [ %231, %230 ]
  %235 = getelementptr inbounds %struct.ColliderCache, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !520
  %237 = load ptr, ptr %123, align 8, !tbaa !519
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %271, label %239

239:                                              ; preds = %233
  %240 = load ptr, ptr %124, align 8, !tbaa !522
  %241 = icmp eq ptr %236, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load float, ptr %125, align 4, !tbaa !141
  %244 = load float, ptr %29, align 4, !tbaa !512
  %245 = fcmp uge float %243, %244
  %246 = load float, ptr %33, align 8
  %247 = fcmp ult float %243, %246
  %248 = select i1 %245, i1 true, i1 %247
  br i1 %248, label %249, label %271

249:                                              ; preds = %242, %239
  store ptr %236, ptr %12, align 8, !tbaa !288
  %250 = getelementptr inbounds %struct.ColliderCache, ptr %234, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !523
  store ptr %251, ptr %126, align 8, !tbaa !269
  %252 = load float, ptr %33, align 8, !tbaa !513
  %253 = getelementptr inbounds %struct.CollisionModifierData, ptr %251, i64 0, i32 10
  %254 = load float, ptr %253, align 8, !tbaa !524
  %255 = fsub float %252, %254
  %256 = getelementptr inbounds %struct.CollisionModifierData, ptr %251, i64 0, i32 11
  %257 = load float, ptr %256, align 4, !tbaa !525
  %258 = fsub float %257, %254
  %259 = fdiv float %255, %258
  store float %259, ptr %127, align 4, !tbaa !495
  %260 = load float, ptr %29, align 4, !tbaa !512
  %261 = fsub float %260, %254
  %262 = fdiv float %261, %258
  store float %262, ptr %128, align 8, !tbaa !496
  %263 = icmp eq ptr %251, null
  br i1 %263, label %271, label %264

264:                                              ; preds = %249
  %265 = getelementptr inbounds %struct.CollisionModifierData, ptr %251, i64 0, i32 12
  %266 = load ptr, ptr %265, align 8, !tbaa !526
  %267 = icmp eq ptr %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %264
  %269 = load float, ptr %98, align 4, !tbaa !514
  %270 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %266, ptr noundef nonnull %56, ptr noundef nonnull %11, float noundef %269, ptr noundef nonnull %13, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %12) #16
  br label %271

271:                                              ; preds = %242, %268, %264, %249, %233
  %272 = load ptr, ptr %234, align 8, !tbaa !72
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %233, !llvm.loop !527

274:                                              ; preds = %271, %230
  %275 = load i32, ptr %13, align 4, !tbaa !303
  %276 = icmp sgt i32 %275, -1
  %277 = zext i1 %276 to i32
  br label %278

278:                                              ; preds = %209, %274
  %279 = phi i32 [ %277, %274 ], [ 0, %209 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %849, label %281

281:                                              ; preds = %278
  %282 = add nuw nsw i32 %210, 1
  %283 = icmp eq i32 %282, 10
  br i1 %283, label %284, label %502

284:                                              ; preds = %281
  %285 = load float, ptr %165, align 4, !tbaa !495
  %286 = load float, ptr %166, align 8, !tbaa !496
  %287 = fsub float %286, %285
  %288 = fadd float %285, %287
  %289 = load i32, ptr %167, align 8, !tbaa !284
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %341

291:                                              ; preds = %284
  %292 = load ptr, ptr %168, align 8, !tbaa !72
  %293 = load ptr, ptr %170, align 8, !tbaa !72
  %294 = load float, ptr %292, align 4, !tbaa !105
  %295 = load float, ptr %293, align 4, !tbaa !105
  %296 = call float @llvm.fmuladd.f32(float %295, float %288, float %294)
  store float %296, ptr %169, align 8, !tbaa !105
  %297 = getelementptr inbounds float, ptr %292, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !105
  %299 = getelementptr inbounds float, ptr %293, i64 1
  %300 = load float, ptr %299, align 4, !tbaa !105
  %301 = call float @llvm.fmuladd.f32(float %300, float %288, float %298)
  store float %301, ptr %171, align 4, !tbaa !105
  %302 = getelementptr inbounds float, ptr %292, i64 2
  %303 = load float, ptr %302, align 4, !tbaa !105
  %304 = getelementptr inbounds float, ptr %293, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !105
  %306 = call float @llvm.fmuladd.f32(float %305, float %288, float %303)
  store float %306, ptr %172, align 8, !tbaa !105
  %307 = icmp eq i32 %289, 1
  br i1 %307, label %341, label %308

308:                                              ; preds = %291
  %309 = load ptr, ptr %174, align 8, !tbaa !72
  %310 = load ptr, ptr %175, align 8, !tbaa !72
  %311 = load float, ptr %309, align 4, !tbaa !105
  %312 = load float, ptr %310, align 4, !tbaa !105
  %313 = call float @llvm.fmuladd.f32(float %312, float %288, float %311)
  store float %313, ptr %173, align 4, !tbaa !105
  %314 = getelementptr inbounds float, ptr %309, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !105
  %316 = getelementptr inbounds float, ptr %310, i64 1
  %317 = load float, ptr %316, align 4, !tbaa !105
  %318 = call float @llvm.fmuladd.f32(float %317, float %288, float %315)
  store float %318, ptr %176, align 8, !tbaa !105
  %319 = getelementptr inbounds float, ptr %309, i64 2
  %320 = load float, ptr %319, align 4, !tbaa !105
  %321 = getelementptr inbounds float, ptr %310, i64 2
  %322 = load float, ptr %321, align 4, !tbaa !105
  %323 = call float @llvm.fmuladd.f32(float %322, float %288, float %320)
  store float %323, ptr %177, align 4, !tbaa !105
  %324 = icmp sgt i32 %289, 2
  br i1 %324, label %325, label %341

325:                                              ; preds = %308
  %326 = load ptr, ptr %179, align 8, !tbaa !72
  %327 = load ptr, ptr %180, align 8, !tbaa !72
  %328 = load float, ptr %326, align 4, !tbaa !105
  %329 = load float, ptr %327, align 4, !tbaa !105
  %330 = call float @llvm.fmuladd.f32(float %329, float %288, float %328)
  store float %330, ptr %178, align 8, !tbaa !105
  %331 = getelementptr inbounds float, ptr %326, i64 1
  %332 = load float, ptr %331, align 4, !tbaa !105
  %333 = getelementptr inbounds float, ptr %327, i64 1
  %334 = load float, ptr %333, align 4, !tbaa !105
  %335 = call float @llvm.fmuladd.f32(float %334, float %288, float %332)
  store float %335, ptr %181, align 4, !tbaa !105
  %336 = getelementptr inbounds float, ptr %326, i64 2
  %337 = load float, ptr %336, align 4, !tbaa !105
  %338 = getelementptr inbounds float, ptr %327, i64 2
  %339 = load float, ptr %338, align 4, !tbaa !105
  %340 = call float @llvm.fmuladd.f32(float %339, float %288, float %337)
  store float %340, ptr %182, align 8, !tbaa !105
  br label %341

341:                                              ; preds = %284, %291, %308, %325
  %342 = load i32, ptr %183, align 8, !tbaa !284
  switch i32 %342, label %494 [
    i32 1, label %343
    i32 2, label %378
    i32 3, label %430
  ]

343:                                              ; preds = %341
  %344 = load float, ptr %56, align 8, !tbaa !105
  %345 = load float, ptr %203, align 8, !tbaa !105
  %346 = fsub float %344, %345
  store float %346, ptr %21, align 4, !tbaa !105
  %347 = load float, ptr %60, align 4, !tbaa !105
  %348 = load float, ptr %204, align 4, !tbaa !105
  %349 = fsub float %347, %348
  store float %349, ptr %66, align 4, !tbaa !105
  %350 = load float, ptr %63, align 8, !tbaa !105
  %351 = load float, ptr %205, align 8, !tbaa !105
  %352 = fsub float %350, %351
  store float %352, ptr %69, align 4, !tbaa !105
  %353 = fmul float %349, %349
  %354 = call float @llvm.fmuladd.f32(float %346, float %346, float %353)
  %355 = call float @llvm.fmuladd.f32(float %352, float %352, float %354)
  %356 = fcmp ogt float %355, 0x38AA95A5C0000000
  br i1 %356, label %357, label %366

357:                                              ; preds = %343
  %358 = call float @sqrtf(float noundef %355) #16
  %359 = fdiv float 1.000000e+00, %358
  %360 = load float, ptr %21, align 4, !tbaa !105
  %361 = fmul float %360, %359
  store float %361, ptr %21, align 4, !tbaa !105
  %362 = load float, ptr %66, align 4, !tbaa !105
  %363 = fmul float %359, %362
  store float %363, ptr %66, align 4, !tbaa !105
  %364 = load float, ptr %69, align 4, !tbaa !105
  %365 = fmul float %359, %364
  br label %367

366:                                              ; preds = %343
  store float 0.000000e+00, ptr %21, align 4, !tbaa !105
  store float 0.000000e+00, ptr %66, align 4, !tbaa !105
  br label %367

367:                                              ; preds = %366, %357
  %368 = phi float [ 0.000000e+00, %366 ], [ %365, %357 ]
  store float %368, ptr %69, align 4, !tbaa !105
  %369 = load float, ptr %98, align 4, !tbaa !514
  %370 = load float, ptr %203, align 8, !tbaa !105
  %371 = load float, ptr %21, align 4, !tbaa !105
  %372 = call float @llvm.fmuladd.f32(float %371, float %369, float %370)
  store float %372, ptr %21, align 4, !tbaa !105
  %373 = load float, ptr %204, align 4, !tbaa !105
  %374 = load float, ptr %66, align 4, !tbaa !105
  %375 = call float @llvm.fmuladd.f32(float %374, float %369, float %373)
  store float %375, ptr %66, align 4, !tbaa !105
  %376 = load float, ptr %205, align 8, !tbaa !105
  %377 = call float @llvm.fmuladd.f32(float %368, float %369, float %376)
  br label %492

378:                                              ; preds = %341
  %379 = load float, ptr %196, align 4, !tbaa !105
  %380 = load float, ptr %197, align 8, !tbaa !105
  %381 = fsub float %379, %380
  %382 = load float, ptr %198, align 8, !tbaa !105
  %383 = load float, ptr %199, align 4, !tbaa !105
  %384 = fsub float %382, %383
  %385 = load float, ptr %200, align 4, !tbaa !105
  %386 = load float, ptr %201, align 8, !tbaa !105
  %387 = fsub float %385, %386
  %388 = load float, ptr %56, align 8, !tbaa !105
  %389 = fsub float %388, %380
  %390 = load float, ptr %60, align 4, !tbaa !105
  %391 = fsub float %390, %383
  %392 = load float, ptr %63, align 8, !tbaa !105
  %393 = fsub float %392, %386
  %394 = fmul float %384, %391
  %395 = call float @llvm.fmuladd.f32(float %389, float %381, float %394)
  %396 = call float @llvm.fmuladd.f32(float %393, float %387, float %395)
  %397 = fmul float %384, %384
  %398 = call float @llvm.fmuladd.f32(float %381, float %381, float %397)
  %399 = call float @llvm.fmuladd.f32(float %387, float %387, float %398)
  %400 = fneg float %396
  %401 = fdiv float %400, %399
  %402 = call float @llvm.fmuladd.f32(float %381, float %401, float %389)
  %403 = call float @llvm.fmuladd.f32(float %384, float %401, float %391)
  %404 = call float @llvm.fmuladd.f32(float %387, float %401, float %393)
  %405 = fmul float %403, %403
  %406 = call float @llvm.fmuladd.f32(float %402, float %402, float %405)
  %407 = call float @llvm.fmuladd.f32(float %404, float %404, float %406)
  %408 = fcmp ogt float %407, 0x38AA95A5C0000000
  br i1 %408, label %409, label %415

409:                                              ; preds = %378
  %410 = call float @sqrtf(float noundef %407) #16
  %411 = fdiv float 1.000000e+00, %410
  %412 = fmul float %402, %411
  %413 = fmul float %403, %411
  %414 = fmul float %404, %411
  br label %415

415:                                              ; preds = %409, %378
  %416 = phi float [ %412, %409 ], [ 0.000000e+00, %378 ]
  %417 = phi float [ %413, %409 ], [ 0.000000e+00, %378 ]
  %418 = phi float [ %414, %409 ], [ 0.000000e+00, %378 ]
  %419 = load float, ptr %202, align 8, !tbaa !105
  %420 = load float, ptr %197, align 8, !tbaa !105
  %421 = call float @llvm.fmuladd.f32(float %381, float %419, float %420)
  store float %421, ptr %21, align 4, !tbaa !105
  %422 = load float, ptr %199, align 4, !tbaa !105
  %423 = call float @llvm.fmuladd.f32(float %384, float %419, float %422)
  store float %423, ptr %66, align 4, !tbaa !105
  %424 = load float, ptr %201, align 8, !tbaa !105
  %425 = call float @llvm.fmuladd.f32(float %387, float %419, float %424)
  store float %425, ptr %69, align 4, !tbaa !105
  %426 = load float, ptr %98, align 4, !tbaa !514
  %427 = call float @llvm.fmuladd.f32(float %416, float %426, float %421)
  store float %427, ptr %21, align 4, !tbaa !105
  %428 = call float @llvm.fmuladd.f32(float %417, float %426, float %423)
  store float %428, ptr %66, align 4, !tbaa !105
  %429 = call float @llvm.fmuladd.f32(float %418, float %426, float %425)
  br label %492

430:                                              ; preds = %341
  %431 = load float, ptr %184, align 4, !tbaa !105
  %432 = load float, ptr %185, align 8, !tbaa !105
  %433 = fsub float %431, %432
  %434 = load float, ptr %186, align 8, !tbaa !105
  %435 = load float, ptr %187, align 4, !tbaa !105
  %436 = fsub float %434, %435
  %437 = load float, ptr %188, align 4, !tbaa !105
  %438 = load float, ptr %189, align 8, !tbaa !105
  %439 = fsub float %437, %438
  %440 = load float, ptr %190, align 8, !tbaa !105
  %441 = fsub float %440, %432
  %442 = load float, ptr %191, align 4, !tbaa !105
  %443 = fsub float %442, %435
  %444 = load float, ptr %192, align 8, !tbaa !105
  %445 = fsub float %444, %438
  %446 = fneg float %439
  %447 = fmul float %443, %446
  %448 = call float @llvm.fmuladd.f32(float %436, float %445, float %447)
  %449 = fneg float %433
  %450 = fmul float %445, %449
  %451 = call float @llvm.fmuladd.f32(float %439, float %441, float %450)
  %452 = fneg float %436
  %453 = fmul float %441, %452
  %454 = call float @llvm.fmuladd.f32(float %433, float %443, float %453)
  %455 = fmul float %451, %451
  %456 = call float @llvm.fmuladd.f32(float %448, float %448, float %455)
  %457 = call float @llvm.fmuladd.f32(float %454, float %454, float %456)
  %458 = fcmp ogt float %457, 0x38AA95A5C0000000
  br i1 %458, label %459, label %465

459:                                              ; preds = %430
  %460 = call float @sqrtf(float noundef %457) #16
  %461 = fdiv float 1.000000e+00, %460
  %462 = fmul float %448, %461
  %463 = fmul float %451, %461
  %464 = fmul float %454, %461
  br label %465

465:                                              ; preds = %459, %430
  %466 = phi float [ %463, %459 ], [ 0.000000e+00, %430 ]
  %467 = phi float [ %462, %459 ], [ 0.000000e+00, %430 ]
  %468 = phi float [ %464, %459 ], [ 0.000000e+00, %430 ]
  %469 = load i16, ptr %193, align 8, !tbaa !293
  %470 = icmp eq i16 %469, 1
  %471 = fneg float %467
  %472 = fneg float %466
  %473 = fneg float %468
  %474 = select i1 %470, float %473, float %468
  %475 = select i1 %470, float %472, float %466
  %476 = select i1 %470, float %471, float %467
  %477 = load float, ptr %98, align 4, !tbaa !514
  %478 = load float, ptr %185, align 8, !tbaa !105
  %479 = call float @llvm.fmuladd.f32(float %476, float %477, float %478)
  store float %479, ptr %21, align 4, !tbaa !105
  %480 = load float, ptr %187, align 4, !tbaa !105
  %481 = call float @llvm.fmuladd.f32(float %475, float %477, float %480)
  store float %481, ptr %66, align 4, !tbaa !105
  %482 = load float, ptr %189, align 8, !tbaa !105
  %483 = call float @llvm.fmuladd.f32(float %474, float %477, float %482)
  store float %483, ptr %69, align 4, !tbaa !105
  %484 = load float, ptr %194, align 8, !tbaa !105
  %485 = call float @llvm.fmuladd.f32(float %433, float %484, float %479)
  store float %485, ptr %21, align 4, !tbaa !105
  %486 = call float @llvm.fmuladd.f32(float %436, float %484, float %481)
  store float %486, ptr %66, align 4, !tbaa !105
  %487 = call float @llvm.fmuladd.f32(float %439, float %484, float %483)
  store float %487, ptr %69, align 4, !tbaa !105
  %488 = load float, ptr %195, align 4, !tbaa !105
  %489 = call float @llvm.fmuladd.f32(float %441, float %488, float %485)
  store float %489, ptr %21, align 4, !tbaa !105
  %490 = call float @llvm.fmuladd.f32(float %443, float %488, float %486)
  store float %490, ptr %66, align 4, !tbaa !105
  %491 = call float @llvm.fmuladd.f32(float %445, float %488, float %487)
  br label %492

492:                                              ; preds = %465, %415, %367
  %493 = phi float [ %377, %367 ], [ %429, %415 ], [ %491, %465 ]
  store float %493, ptr %69, align 4, !tbaa !105
  br label %494

494:                                              ; preds = %492, %341
  %495 = load float, ptr %206, align 4, !tbaa !105
  store float %495, ptr %35, align 4, !tbaa !105
  %496 = load float, ptr %207, align 8, !tbaa !105
  store float %496, ptr %41, align 4, !tbaa !105
  %497 = load float, ptr %208, align 4, !tbaa !105
  store float %497, ptr %47, align 4, !tbaa !105
  %498 = load float, ptr %28, align 8, !tbaa !511
  %499 = fmul float %495, %498
  store float %499, ptr %35, align 4, !tbaa !105
  %500 = fmul float %496, %498
  store float %500, ptr %41, align 4, !tbaa !105
  %501 = fmul float %497, %498
  store float %501, ptr %47, align 4, !tbaa !105
  br label %847

502:                                              ; preds = %281
  %503 = load i32, ptr %85, align 8, !tbaa !250
  %504 = and i32 %503, 16384
  %505 = load ptr, ptr %130, align 8, !tbaa !287
  %506 = getelementptr inbounds %struct.Object, ptr %505, i64 0, i32 110
  %507 = load ptr, ptr %506, align 8, !tbaa !528
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %508 = load float, ptr %131, align 4, !tbaa !276
  %509 = load float, ptr %132, align 4, !tbaa !278
  %510 = fdiv float %508, %509
  %511 = load float, ptr %84, align 8, !tbaa !300
  %512 = fsub float 1.000000e+00, %511
  %513 = call float @llvm.fmuladd.f32(float %510, float %512, float %511)
  %514 = fsub float %513, %511
  %515 = load float, ptr %24, align 8, !tbaa !510
  %516 = fmul float %515, %514
  %517 = fsub float 1.000000e+00, %513
  %518 = fmul float %515, %517
  %519 = call float @BLI_frand() #16
  %520 = getelementptr inbounds %struct.PartDeflect, ptr %507, i64 0, i32 21
  %521 = load float, ptr %520, align 4, !tbaa !529
  %522 = fcmp uge float %519, %521
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %56, ptr noundef nonnull %64, float noundef %510) #16
  br i1 %522, label %523, label %546

523:                                              ; preds = %502
  %524 = and i32 %503, 4096
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %523
  %527 = load i32, ptr %507, align 8, !tbaa !531
  %528 = and i32 %527, 16
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %546, label %530

530:                                              ; preds = %526, %523
  %531 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 18
  store i16 4, ptr %531, align 2, !tbaa !200
  %532 = load float, ptr %33, align 8, !tbaa !513
  %533 = load float, ptr %29, align 4, !tbaa !512
  %534 = fsub float %533, %532
  %535 = call float @llvm.fmuladd.f32(float %534, float %513, float %532)
  %536 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 8
  store float %535, ptr %536, align 4, !tbaa !197
  %537 = load float, ptr %5, align 4, !tbaa !105
  store float %537, ptr %21, align 4, !tbaa !105
  %538 = getelementptr inbounds float, ptr %5, i64 1
  %539 = load float, ptr %538, align 4, !tbaa !105
  store float %539, ptr %66, align 4, !tbaa !105
  %540 = getelementptr inbounds float, ptr %5, i64 2
  %541 = load float, ptr %540, align 4, !tbaa !105
  store float %541, ptr %69, align 4, !tbaa !105
  call void @interp_v3_v3v3(ptr noundef nonnull %35, ptr noundef nonnull %37, ptr noundef nonnull %35, float noundef %513) #16
  %542 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 2
  %543 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 1, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %542, ptr noundef nonnull %543, ptr noundef nonnull %542, float noundef %513) #16
  %544 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 3
  %545 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 1, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %544, ptr noundef nonnull %545, ptr noundef nonnull %544, float noundef %513) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %849

546:                                              ; preds = %526, %502
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %547 = getelementptr inbounds %struct.PartDeflect, ptr %507, i64 0, i32 19
  %548 = load float, ptr %547, align 4, !tbaa !532
  %549 = getelementptr inbounds %struct.PartDeflect, ptr %507, i64 0, i32 20
  %550 = load float, ptr %549, align 8, !tbaa !533
  %551 = fmul float %550, 2.000000e+00
  %552 = call float @BLI_frand() #16
  %553 = fadd float %552, -5.000000e-01
  %554 = call float @llvm.fmuladd.f32(float %551, float %553, float %548)
  %555 = getelementptr inbounds %struct.PartDeflect, ptr %507, i64 0, i32 22
  %556 = load float, ptr %555, align 8, !tbaa !534
  %557 = getelementptr inbounds %struct.PartDeflect, ptr %507, i64 0, i32 23
  %558 = load float, ptr %557, align 4, !tbaa !535
  %559 = fmul float %558, 2.000000e+00
  %560 = call float @BLI_frand() #16
  %561 = fadd float %560, -5.000000e-01
  %562 = call float @llvm.fmuladd.f32(float %559, float %561, float %556)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %563 = fcmp olt float %554, 0.000000e+00
  br i1 %563, label %567, label %564

564:                                              ; preds = %546
  %565 = fcmp ogt float %554, 1.000000e+00
  br i1 %565, label %566, label %567

566:                                              ; preds = %564
  br label %567

567:                                              ; preds = %566, %564, %546
  %568 = phi float [ 1.000000e+00, %566 ], [ %554, %564 ], [ 0.000000e+00, %546 ]
  %569 = fcmp olt float %562, 0.000000e+00
  br i1 %569, label %573, label %570

570:                                              ; preds = %567
  %571 = fcmp ogt float %562, 1.000000e+00
  br i1 %571, label %572, label %573

572:                                              ; preds = %570
  br label %573

573:                                              ; preds = %572, %570, %567
  %574 = phi float [ 1.000000e+00, %572 ], [ %562, %570 ], [ 0.000000e+00, %567 ]
  %575 = load float, ptr %72, align 8, !tbaa !105
  %576 = load float, ptr %34, align 8, !tbaa !105
  %577 = call float @llvm.fmuladd.f32(float %576, float %516, float %575)
  %578 = load float, ptr %75, align 4, !tbaa !105
  %579 = load float, ptr %46, align 4, !tbaa !105
  %580 = call float @llvm.fmuladd.f32(float %579, float %516, float %578)
  %581 = load float, ptr %77, align 8, !tbaa !105
  %582 = load float, ptr %52, align 8, !tbaa !105
  %583 = call float @llvm.fmuladd.f32(float %582, float %516, float %581)
  %584 = load float, ptr %28, align 8, !tbaa !511
  %585 = load float, ptr %133, align 4, !tbaa !105
  %586 = fmul float %584, %585
  store float %586, ptr %133, align 4, !tbaa !105
  %587 = load float, ptr %134, align 8, !tbaa !105
  %588 = fmul float %584, %587
  store float %588, ptr %134, align 8, !tbaa !105
  %589 = load float, ptr %135, align 4, !tbaa !105
  %590 = fmul float %584, %589
  store float %590, ptr %135, align 4, !tbaa !105
  %591 = load float, ptr %136, align 8, !tbaa !105
  %592 = load float, ptr %137, align 4, !tbaa !105
  %593 = fmul float %580, %592
  %594 = call float @llvm.fmuladd.f32(float %591, float %577, float %593)
  %595 = load float, ptr %138, align 8, !tbaa !105
  %596 = call float @llvm.fmuladd.f32(float %595, float %583, float %594)
  %597 = fneg float %596
  %598 = call float @llvm.fmuladd.f32(float %591, float %597, float %577)
  store float %598, ptr %6, align 4, !tbaa !105
  %599 = call float @llvm.fmuladd.f32(float %592, float %597, float %580)
  store float %599, ptr %139, align 4, !tbaa !105
  %600 = call float @llvm.fmuladd.f32(float %595, float %597, float %583)
  store float %600, ptr %140, align 4, !tbaa !105
  %601 = fmul float %588, %592
  %602 = call float @llvm.fmuladd.f32(float %591, float %586, float %601)
  %603 = call float @llvm.fmuladd.f32(float %595, float %590, float %602)
  %604 = fneg float %603
  %605 = call float @llvm.fmuladd.f32(float %591, float %604, float %586)
  store float %605, ptr %7, align 4, !tbaa !105
  %606 = call float @llvm.fmuladd.f32(float %592, float %604, float %588)
  store float %606, ptr %141, align 4, !tbaa !105
  %607 = call float @llvm.fmuladd.f32(float %595, float %604, float %590)
  store float %607, ptr %142, align 4, !tbaa !105
  %608 = fcmp ogt float %574, 0.000000e+00
  br i1 %608, label %609, label %661

609:                                              ; preds = %573
  %610 = icmp eq i32 %504, 0
  br i1 %610, label %660, label %611

611:                                              ; preds = %609
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  %612 = load float, ptr %144, align 4, !tbaa !105
  %613 = load float, ptr %145, align 4, !tbaa !105
  %614 = fneg float %595
  %615 = fmul float %613, %614
  %616 = call float @llvm.fmuladd.f32(float %592, float %612, float %615)
  %617 = load float, ptr %143, align 4, !tbaa !105
  %618 = fneg float %591
  %619 = fmul float %612, %618
  %620 = call float @llvm.fmuladd.f32(float %595, float %617, float %619)
  %621 = fneg float %592
  %622 = fmul float %617, %621
  %623 = call float @llvm.fmuladd.f32(float %591, float %613, float %622)
  %624 = load float, ptr %146, align 4, !tbaa !236
  %625 = fmul float %616, %624
  %626 = fmul float %620, %624
  %627 = fmul float %624, %623
  %628 = fsub float %598, %605
  store float %628, ptr %9, align 4, !tbaa !105
  %629 = fsub float %599, %606
  store float %629, ptr %147, align 4, !tbaa !105
  %630 = fsub float %600, %607
  store float %630, ptr %148, align 4, !tbaa !105
  %631 = call float @llvm.fmuladd.f32(float %625, float 0xBFD99999A0000000, float %628)
  store float %631, ptr %9, align 4, !tbaa !105
  %632 = call float @llvm.fmuladd.f32(float %626, float 0xBFD99999A0000000, float %629)
  store float %632, ptr %147, align 4, !tbaa !105
  %633 = call float @llvm.fmuladd.f32(float %627, float 0xBFD99999A0000000, float %630)
  store float %633, ptr %148, align 4, !tbaa !105
  %634 = fmul float %631, 0x3FE6DB6DC0000000
  store float %634, ptr %9, align 4, !tbaa !105
  %635 = fmul float %632, 0x3FE6DB6DC0000000
  store float %635, ptr %147, align 4, !tbaa !105
  %636 = fmul float %633, 0x3FE6DB6DC0000000
  store float %636, ptr %148, align 4, !tbaa !105
  %637 = call float @llvm.fmuladd.f32(float %574, float 0xBF847AE140000000, float 1.000000e+00)
  %638 = fmul float %637, %634
  store float %638, ptr %9, align 4, !tbaa !105
  %639 = fmul float %637, %635
  store float %639, ptr %147, align 4, !tbaa !105
  %640 = fmul float %637, %636
  store float %640, ptr %148, align 4, !tbaa !105
  %641 = fneg float %638
  %642 = fneg float %639
  %643 = fneg float %640
  %644 = fadd float %605, %638
  store float %644, ptr %9, align 4, !tbaa !105
  %645 = fadd float %606, %639
  store float %645, ptr %147, align 4, !tbaa !105
  %646 = fadd float %607, %640
  store float %646, ptr %148, align 4, !tbaa !105
  %647 = fmul float %592, %640
  %648 = call float @llvm.fmuladd.f32(float %642, float %595, float %647)
  store float %648, ptr %10, align 4, !tbaa !105
  %649 = fmul float %595, %638
  %650 = call float @llvm.fmuladd.f32(float %643, float %591, float %649)
  store float %650, ptr %149, align 4, !tbaa !105
  %651 = fmul float %591, %639
  %652 = call float @llvm.fmuladd.f32(float %641, float %592, float %651)
  store float %652, ptr %150, align 4, !tbaa !105
  %653 = load float, ptr %146, align 4, !tbaa !236
  %654 = fcmp ogt float %653, 0x3F50624DE0000000
  %655 = select i1 %654, float %653, float 0x3F50624DE0000000
  %656 = fdiv float 1.000000e+00, %655
  %657 = fmul float %648, %656
  store float %657, ptr %10, align 4, !tbaa !105
  %658 = fmul float %650, %656
  store float %658, ptr %149, align 4, !tbaa !105
  %659 = fmul float %652, %656
  store float %659, ptr %150, align 4, !tbaa !105
  call void @interp_v3_v3v3(ptr noundef nonnull %143, ptr noundef nonnull %143, ptr noundef nonnull %10, float noundef %574) #16
  call void @interp_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %9, float noundef %574) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %661

660:                                              ; preds = %609
  call void @interp_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %574) #16
  br label %661

661:                                              ; preds = %660, %611, %573
  %662 = fcmp olt float %596, 0.000000e+00
  br i1 %662, label %663, label %669

663:                                              ; preds = %661
  %664 = getelementptr inbounds %struct.PartDeflect, ptr %507, i64 0, i32 24
  %665 = load float, ptr %664, align 8, !tbaa !536
  %666 = fadd float %596, %665
  %667 = fcmp ogt float %666, 0.000000e+00
  br i1 %667, label %668, label %669

668:                                              ; preds = %663
  br label %669

669:                                              ; preds = %668, %663, %661
  %670 = phi float [ 0.000000e+00, %668 ], [ %666, %663 ], [ %596, %661 ]
  %671 = fsub float 1.000000e+00, %568
  %672 = fmul float %671, %670
  %673 = select i1 %522, float 1.000000e+00, float %568
  %674 = fmul float %673, %603
  br i1 %522, label %675, label %694

675:                                              ; preds = %669
  %676 = fcmp ogt float %674, 0.000000e+00
  %677 = fcmp ogt float %672, 0.000000e+00
  %678 = select i1 %676, i1 %677, i1 false
  %679 = fcmp ogt float %674, %672
  %680 = select i1 %678, i1 %679, i1 false
  br i1 %680, label %687, label %681

681:                                              ; preds = %675
  %682 = fcmp olt float %674, 0.000000e+00
  %683 = fcmp olt float %672, 0.000000e+00
  %684 = select i1 %682, i1 %683, i1 false
  %685 = fcmp olt float %674, %672
  %686 = select i1 %684, i1 %685, i1 false
  br i1 %686, label %687, label %694

687:                                              ; preds = %681, %675
  %688 = load float, ptr %136, align 8, !tbaa !105
  %689 = fmul float %674, %688
  %690 = load float, ptr %137, align 4, !tbaa !105
  %691 = fmul float %674, %690
  %692 = load float, ptr %138, align 8, !tbaa !105
  %693 = fmul float %674, %692
  br label %711

694:                                              ; preds = %681, %669
  %695 = fcmp ogt float %672, 0.000000e+00
  %696 = load float, ptr %136, align 8, !tbaa !105
  %697 = load float, ptr %137, align 4, !tbaa !105
  %698 = load float, ptr %138, align 8, !tbaa !105
  br i1 %695, label %699, label %705

699:                                              ; preds = %694
  %700 = select i1 %522, float 1.000000e+00, float -1.000000e+00
  %701 = call float @llvm.fmuladd.f32(float %700, float %672, float %674)
  %702 = fmul float %701, %696
  %703 = fmul float %701, %697
  %704 = fmul float %701, %698
  br label %711

705:                                              ; preds = %694
  %706 = select i1 %522, float -1.000000e+00, float 1.000000e+00
  %707 = call float @llvm.fmuladd.f32(float %706, float %672, float %674)
  %708 = fmul float %707, %696
  %709 = fmul float %707, %697
  %710 = fmul float %707, %698
  br label %711

711:                                              ; preds = %705, %699, %687
  %712 = phi float [ %693, %687 ], [ %704, %699 ], [ %710, %705 ]
  %713 = phi float [ %691, %687 ], [ %703, %699 ], [ %709, %705 ]
  %714 = phi float [ %689, %687 ], [ %702, %699 ], [ %708, %705 ]
  %715 = load float, ptr %6, align 4, !tbaa !105
  %716 = fadd float %714, %715
  %717 = load float, ptr %139, align 4, !tbaa !105
  %718 = fadd float %713, %717
  %719 = load float, ptr %140, align 4, !tbaa !105
  %720 = fadd float %712, %719
  %721 = load i32, ptr %151, align 8, !tbaa !516
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %734, label %723

723:                                              ; preds = %711
  %724 = load ptr, ptr %152, align 8, !tbaa !143
  %725 = getelementptr inbounds %struct.BoidParticle, ptr %724, i64 0, i32 1, i32 3
  %726 = load i16, ptr %725, align 2, !tbaa !189
  %727 = icmp eq i16 %726, 1
  br i1 %727, label %732, label %728

728:                                              ; preds = %723
  %729 = load float, ptr %153, align 4, !tbaa !105
  %730 = load float, ptr %154, align 4, !tbaa !517
  %731 = fcmp ugt float %729, %730
  br i1 %731, label %734, label %732

732:                                              ; preds = %728, %723
  %733 = load float, ptr %155, align 4, !tbaa !517
  store float %733, ptr %156, align 4, !tbaa !105
  br label %734

734:                                              ; preds = %732, %728, %711
  %735 = phi float [ %720, %711 ], [ 0.000000e+00, %732 ], [ %720, %728 ]
  %736 = load float, ptr %5, align 4, !tbaa !105
  %737 = call float @llvm.fmuladd.f32(float %716, float %518, float %736)
  store float %737, ptr %21, align 4, !tbaa !105
  %738 = load float, ptr %157, align 4, !tbaa !105
  %739 = call float @llvm.fmuladd.f32(float %718, float %518, float %738)
  store float %739, ptr %66, align 4, !tbaa !105
  %740 = load float, ptr %158, align 4, !tbaa !105
  %741 = call float @llvm.fmuladd.f32(float %735, float %518, float %740)
  store float %741, ptr %69, align 4, !tbaa !105
  %742 = fmul float %518, 5.000000e-01
  %743 = fmul float %518, %742
  %744 = load float, ptr %34, align 8, !tbaa !105
  %745 = call float @llvm.fmuladd.f32(float %744, float %743, float %737)
  store float %745, ptr %21, align 4, !tbaa !105
  %746 = load float, ptr %46, align 4, !tbaa !105
  %747 = call float @llvm.fmuladd.f32(float %746, float %743, float %739)
  store float %747, ptr %66, align 4, !tbaa !105
  %748 = load float, ptr %52, align 8, !tbaa !105
  %749 = call float @llvm.fmuladd.f32(float %748, float %743, float %741)
  store float %749, ptr %69, align 4, !tbaa !105
  %750 = load float, ptr %34, align 8, !tbaa !105
  %751 = call float @llvm.fmuladd.f32(float %750, float %518, float %716)
  store float %751, ptr %35, align 4, !tbaa !105
  %752 = load float, ptr %46, align 4, !tbaa !105
  %753 = call float @llvm.fmuladd.f32(float %752, float %518, float %718)
  store float %753, ptr %41, align 4, !tbaa !105
  %754 = load float, ptr %52, align 8, !tbaa !105
  %755 = call float @llvm.fmuladd.f32(float %754, float %518, float %735)
  store float %755, ptr %47, align 4, !tbaa !105
  br i1 %522, label %756, label %820

756:                                              ; preds = %734
  %757 = call fastcc float @collision_point_distance_with_normal(ptr noundef nonnull %5, ptr noundef nonnull %129, float noundef -1.000000e+00, ptr noundef nonnull %12, ptr noundef nonnull %8)
  %758 = load float, ptr %98, align 4, !tbaa !514
  %759 = fadd float %758, 0x3F1A36E2E0000000
  %760 = fcmp olt float %757, %759
  br i1 %760, label %761, label %772

761:                                              ; preds = %756
  %762 = fsub float %759, %757
  %763 = load float, ptr %8, align 4, !tbaa !105
  %764 = load float, ptr %5, align 4, !tbaa !105
  %765 = call float @llvm.fmuladd.f32(float %763, float %762, float %764)
  store float %765, ptr %5, align 4, !tbaa !105
  %766 = load float, ptr %159, align 4, !tbaa !105
  %767 = load float, ptr %157, align 4, !tbaa !105
  %768 = call float @llvm.fmuladd.f32(float %766, float %762, float %767)
  store float %768, ptr %157, align 4, !tbaa !105
  %769 = load float, ptr %160, align 4, !tbaa !105
  %770 = load float, ptr %158, align 4, !tbaa !105
  %771 = call float @llvm.fmuladd.f32(float %769, float %762, float %770)
  store float %771, ptr %158, align 4, !tbaa !105
  br label %772

772:                                              ; preds = %761, %756
  %773 = load float, ptr %8, align 4, !tbaa !105
  %774 = load float, ptr %161, align 4, !tbaa !105
  %775 = fmul float %718, %774
  %776 = call float @llvm.fmuladd.f32(float %773, float %716, float %775)
  %777 = load float, ptr %162, align 4, !tbaa !105
  %778 = call float @llvm.fmuladd.f32(float %777, float %735, float %776)
  %779 = fcmp olt float %778, 0.000000e+00
  br i1 %779, label %780, label %785

780:                                              ; preds = %772
  %781 = fneg float %778
  %782 = call float @llvm.fmuladd.f32(float %773, float %781, float %716)
  %783 = call float @llvm.fmuladd.f32(float %774, float %781, float %718)
  %784 = call float @llvm.fmuladd.f32(float %777, float %781, float %735)
  br label %785

785:                                              ; preds = %780, %772
  %786 = phi float [ %782, %780 ], [ %716, %772 ]
  %787 = phi float [ %783, %780 ], [ %718, %772 ]
  %788 = phi float [ %784, %780 ], [ %735, %772 ]
  %789 = call fastcc float @collision_point_distance_with_normal(ptr noundef nonnull %21, ptr noundef nonnull %129, float noundef 1.000000e+00, ptr noundef nonnull %12, ptr noundef nonnull %8)
  %790 = load float, ptr %98, align 4, !tbaa !514
  %791 = fadd float %790, 0x3F1A36E2E0000000
  %792 = fcmp olt float %789, %791
  br i1 %792, label %793, label %804

793:                                              ; preds = %785
  %794 = fsub float %791, %789
  %795 = load float, ptr %8, align 4, !tbaa !105
  %796 = load float, ptr %21, align 4, !tbaa !105
  %797 = call float @llvm.fmuladd.f32(float %795, float %794, float %796)
  store float %797, ptr %21, align 4, !tbaa !105
  %798 = load float, ptr %161, align 4, !tbaa !105
  %799 = load float, ptr %66, align 4, !tbaa !105
  %800 = call float @llvm.fmuladd.f32(float %798, float %794, float %799)
  store float %800, ptr %66, align 4, !tbaa !105
  %801 = load float, ptr %162, align 4, !tbaa !105
  %802 = load float, ptr %69, align 4, !tbaa !105
  %803 = call float @llvm.fmuladd.f32(float %801, float %794, float %802)
  store float %803, ptr %69, align 4, !tbaa !105
  br label %804

804:                                              ; preds = %793, %785
  %805 = load float, ptr %8, align 4, !tbaa !105
  %806 = load float, ptr %35, align 4, !tbaa !105
  %807 = load float, ptr %161, align 4, !tbaa !105
  %808 = load float, ptr %41, align 4, !tbaa !105
  %809 = fmul float %807, %808
  %810 = call float @llvm.fmuladd.f32(float %805, float %806, float %809)
  %811 = load float, ptr %162, align 4, !tbaa !105
  %812 = load float, ptr %47, align 4, !tbaa !105
  %813 = call float @llvm.fmuladd.f32(float %811, float %812, float %810)
  %814 = fcmp olt float %813, 0.000000e+00
  br i1 %814, label %815, label %820

815:                                              ; preds = %804
  %816 = fneg float %813
  %817 = call float @llvm.fmuladd.f32(float %805, float %816, float %806)
  store float %817, ptr %35, align 4, !tbaa !105
  %818 = call float @llvm.fmuladd.f32(float %807, float %816, float %808)
  store float %818, ptr %41, align 4, !tbaa !105
  %819 = call float @llvm.fmuladd.f32(float %811, float %816, float %812)
  store float %819, ptr %47, align 4, !tbaa !105
  br label %820

820:                                              ; preds = %815, %804, %734
  %821 = phi float [ %786, %815 ], [ %786, %804 ], [ %716, %734 ]
  %822 = phi float [ %787, %815 ], [ %787, %804 ], [ %718, %734 ]
  %823 = phi float [ %788, %815 ], [ %788, %804 ], [ %735, %734 ]
  %824 = getelementptr inbounds %struct.PartDeflect, ptr %507, i64 0, i32 24
  %825 = load float, ptr %824, align 8, !tbaa !536
  %826 = fneg float %825
  %827 = load float, ptr %136, align 8, !tbaa !105
  %828 = load float, ptr %35, align 4, !tbaa !105
  %829 = call float @llvm.fmuladd.f32(float %827, float %826, float %828)
  store float %829, ptr %35, align 4, !tbaa !105
  %830 = load float, ptr %137, align 4, !tbaa !105
  %831 = load float, ptr %41, align 4, !tbaa !105
  %832 = call float @llvm.fmuladd.f32(float %830, float %826, float %831)
  store float %832, ptr %41, align 4, !tbaa !105
  %833 = load float, ptr %138, align 8, !tbaa !105
  %834 = load float, ptr %47, align 4, !tbaa !105
  %835 = call float @llvm.fmuladd.f32(float %833, float %826, float %834)
  store float %835, ptr %47, align 4, !tbaa !105
  %836 = load float, ptr %5, align 4, !tbaa !105
  store float %836, ptr %56, align 8, !tbaa !105
  %837 = load float, ptr %157, align 4, !tbaa !105
  store float %837, ptr %60, align 4, !tbaa !105
  %838 = load float, ptr %158, align 4, !tbaa !105
  store float %838, ptr %63, align 8, !tbaa !105
  %839 = load float, ptr %21, align 4, !tbaa !105
  store float %839, ptr %64, align 4, !tbaa !105
  %840 = load float, ptr %66, align 4, !tbaa !105
  store float %840, ptr %68, align 8, !tbaa !105
  %841 = load float, ptr %69, align 4, !tbaa !105
  store float %841, ptr %71, align 4, !tbaa !105
  store float %821, ptr %72, align 8, !tbaa !105
  store float %822, ptr %75, align 4, !tbaa !105
  store float %823, ptr %77, align 8, !tbaa !105
  %842 = load float, ptr %35, align 4, !tbaa !105
  store float %842, ptr %78, align 4, !tbaa !105
  %843 = load float, ptr %41, align 4, !tbaa !105
  store float %843, ptr %81, align 8, !tbaa !105
  %844 = load float, ptr %47, align 4, !tbaa !105
  store float %844, ptr %83, align 4, !tbaa !105
  store float %513, ptr %84, align 8, !tbaa !300
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  %845 = load ptr, ptr %130, align 8, !tbaa !287
  store ptr %845, ptr %163, align 8, !tbaa !537
  %846 = load i32, ptr %13, align 4, !tbaa !303
  store i32 %846, ptr %164, align 8, !tbaa !538
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %847

847:                                              ; preds = %820, %494
  %848 = icmp eq i32 %282, 10
  br i1 %848, label %849, label %209, !llvm.loop !539

849:                                              ; preds = %847, %278, %530
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %12) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @basic_rotate(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.basic_rotate.rot2, i64 16, i1 false)
  %8 = fmul float %2, %3
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !250
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 2
  tail call void @unit_qt(ptr noundef nonnull %14) #16
  br label %203

15:                                               ; preds = %4
  %16 = and i32 %10, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !105
  %21 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !105
  %23 = fmul float %22, %22
  %24 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %23)
  %25 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !105
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %24)
  %28 = tail call float @sqrtf(float noundef %27) #16
  %29 = fcmp oeq float %28, 0.000000e+00
  br label %30

30:                                               ; preds = %15, %18
  %31 = phi i1 [ %29, %18 ], [ true, %15 ]
  %32 = load i32, ptr %9, align 8, !tbaa !250
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %179, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 13
  %37 = load i16, ptr %36, align 4, !tbaa !151
  switch i16 %37, label %179 [
    i16 1, label %38
    i16 3, label %38
    i16 4, label %38
  ]

38:                                               ; preds = %35, %35, %35
  %39 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !105
  %41 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !105
  %43 = fmul float %42, %42
  %44 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %43)
  %45 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !105
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %44)
  %48 = tail call float @sqrtf(float noundef %47) #16
  %49 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !105
  %51 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !105
  %53 = fmul float %52, %52
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %53)
  %55 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !105
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %54)
  %58 = tail call float @sqrtf(float noundef %57) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %59 = fcmp oeq float %48, 0.000000e+00
  %60 = fcmp oeq float %58, 0.000000e+00
  %61 = select i1 %59, i1 true, i1 %60
  %62 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  br i1 %61, label %63, label %66

63:                                               ; preds = %38
  store float 0.000000e+00, ptr %62, align 4, !tbaa !105
  %64 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %64, align 4, !tbaa !105
  %65 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %65, align 4, !tbaa !105
  br label %125

66:                                               ; preds = %38
  %67 = load float, ptr %41, align 4, !tbaa !105
  %68 = load float, ptr %55, align 4, !tbaa !105
  %69 = load float, ptr %45, align 4, !tbaa !105
  %70 = load float, ptr %51, align 4, !tbaa !105
  %71 = fneg float %69
  %72 = fmul float %70, %71
  %73 = tail call float @llvm.fmuladd.f32(float %67, float %68, float %72)
  store float %73, ptr %62, align 4, !tbaa !105
  %74 = load float, ptr %49, align 4, !tbaa !105
  %75 = load float, ptr %39, align 4, !tbaa !105
  %76 = fneg float %75
  %77 = fmul float %68, %76
  %78 = tail call float @llvm.fmuladd.f32(float %69, float %74, float %77)
  %79 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  store float %78, ptr %79, align 4, !tbaa !105
  %80 = fneg float %67
  %81 = fmul float %74, %80
  %82 = tail call float @llvm.fmuladd.f32(float %75, float %70, float %81)
  %83 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  store float %82, ptr %83, align 4, !tbaa !105
  %84 = fmul float %78, %78
  %85 = tail call float @llvm.fmuladd.f32(float %73, float %73, float %84)
  %86 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %85)
  %87 = fcmp ogt float %86, 0x38AA95A5C0000000
  br i1 %87, label %88, label %97

88:                                               ; preds = %66
  %89 = tail call float @sqrtf(float noundef %86) #16
  %90 = fdiv float 1.000000e+00, %89
  %91 = load float, ptr %62, align 4, !tbaa !105
  %92 = fmul float %91, %90
  store float %92, ptr %62, align 4, !tbaa !105
  %93 = load float, ptr %79, align 4, !tbaa !105
  %94 = fmul float %90, %93
  store float %94, ptr %79, align 4, !tbaa !105
  %95 = load float, ptr %83, align 4, !tbaa !105
  %96 = fmul float %90, %95
  br label %98

97:                                               ; preds = %66
  store float 0.000000e+00, ptr %62, align 4, !tbaa !105
  store float 0.000000e+00, ptr %79, align 4, !tbaa !105
  br label %98

98:                                               ; preds = %88, %97
  %99 = phi float [ 0.000000e+00, %97 ], [ %96, %88 ]
  store float %99, ptr %83, align 4, !tbaa !105
  %100 = load float, ptr %39, align 4, !tbaa !105
  %101 = load float, ptr %49, align 4, !tbaa !105
  %102 = load float, ptr %41, align 4, !tbaa !105
  %103 = load float, ptr %51, align 4, !tbaa !105
  %104 = fmul float %102, %103
  %105 = tail call float @llvm.fmuladd.f32(float %100, float %101, float %104)
  %106 = load float, ptr %45, align 4, !tbaa !105
  %107 = load float, ptr %55, align 4, !tbaa !105
  %108 = tail call float @llvm.fmuladd.f32(float %106, float %107, float %105)
  %109 = fmul float %48, %58
  %110 = fdiv float %108, %109
  %111 = fcmp ugt float %110, -1.000000e+00
  br i1 %111, label %112, label %116

112:                                              ; preds = %98
  %113 = fcmp ult float %110, 1.000000e+00
  br i1 %113, label %114, label %116

114:                                              ; preds = %112
  %115 = tail call float @acosf(float noundef %110) #16
  br label %116

116:                                              ; preds = %98, %112, %114
  %117 = phi float [ %115, %114 ], [ 0x400921FB60000000, %98 ], [ 0.000000e+00, %112 ]
  %118 = fdiv float %117, %8
  %119 = load float, ptr %62, align 4, !tbaa !105
  %120 = fmul float %119, %118
  store float %120, ptr %62, align 4, !tbaa !105
  %121 = load float, ptr %79, align 4, !tbaa !105
  %122 = fmul float %118, %121
  store float %122, ptr %79, align 4, !tbaa !105
  %123 = load float, ptr %83, align 4, !tbaa !105
  %124 = fmul float %118, %123
  store float %124, ptr %83, align 4, !tbaa !105
  br label %125

125:                                              ; preds = %116, %63
  %126 = load i16, ptr %36, align 4, !tbaa !151
  switch i16 %126, label %175 [
    i16 1, label %127
    i16 3, label %133
    i16 4, label %145
    i16 5, label %166
    i16 6, label %169
    i16 7, label %172
  ]

127:                                              ; preds = %125
  %128 = load float, ptr %49, align 4, !tbaa !105
  store float %128, ptr %7, align 4, !tbaa !105
  %129 = load float, ptr %51, align 4, !tbaa !105
  %130 = getelementptr inbounds float, ptr %7, i64 1
  store float %129, ptr %130, align 4, !tbaa !105
  %131 = load float, ptr %55, align 4, !tbaa !105
  %132 = getelementptr inbounds float, ptr %7, i64 2
  store float %131, ptr %132, align 4, !tbaa !105
  br label %175

133:                                              ; preds = %125
  %134 = load float, ptr %51, align 4, !tbaa !105
  %135 = load float, ptr %55, align 4, !tbaa !105
  %136 = fmul float %135, 0.000000e+00
  %137 = fsub float %134, %136
  store float %137, ptr %7, align 4, !tbaa !105
  %138 = load float, ptr %49, align 4, !tbaa !105
  %139 = fneg float %138
  %140 = tail call float @llvm.fmuladd.f32(float %135, float 0.000000e+00, float %139)
  %141 = getelementptr inbounds float, ptr %7, i64 1
  store float %140, ptr %141, align 4, !tbaa !105
  %142 = fmul float %134, -0.000000e+00
  %143 = tail call float @llvm.fmuladd.f32(float %138, float 0.000000e+00, float %142)
  %144 = getelementptr inbounds float, ptr %7, i64 2
  store float %143, ptr %144, align 4, !tbaa !105
  br label %175

145:                                              ; preds = %125
  %146 = load float, ptr %51, align 4, !tbaa !105
  %147 = load float, ptr %55, align 4, !tbaa !105
  %148 = fmul float %147, 0.000000e+00
  %149 = fsub float %146, %148
  %150 = load float, ptr %49, align 4, !tbaa !105
  %151 = fneg float %150
  %152 = tail call float @llvm.fmuladd.f32(float %147, float 0.000000e+00, float %151)
  %153 = fmul float %146, -0.000000e+00
  %154 = tail call float @llvm.fmuladd.f32(float %150, float 0.000000e+00, float %153)
  %155 = fneg float %154
  %156 = fmul float %146, %155
  %157 = tail call float @llvm.fmuladd.f32(float %152, float %147, float %156)
  store float %157, ptr %7, align 4, !tbaa !105
  %158 = fneg float %149
  %159 = fmul float %147, %158
  %160 = tail call float @llvm.fmuladd.f32(float %154, float %150, float %159)
  %161 = getelementptr inbounds float, ptr %7, i64 1
  store float %160, ptr %161, align 4, !tbaa !105
  %162 = fneg float %152
  %163 = fmul float %150, %162
  %164 = tail call float @llvm.fmuladd.f32(float %149, float %146, float %163)
  %165 = getelementptr inbounds float, ptr %7, i64 2
  store float %164, ptr %165, align 4, !tbaa !105
  br label %175

166:                                              ; preds = %125
  store float 1.000000e+00, ptr %7, align 4, !tbaa !105
  %167 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %167, align 4, !tbaa !105
  %168 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %168, align 4, !tbaa !105
  br label %175

169:                                              ; preds = %125
  %170 = getelementptr inbounds float, ptr %7, i64 1
  store float 1.000000e+00, ptr %170, align 4, !tbaa !105
  %171 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %171, align 4, !tbaa !105
  store float 0.000000e+00, ptr %7, align 4, !tbaa !105
  br label %175

172:                                              ; preds = %125
  %173 = getelementptr inbounds float, ptr %7, i64 2
  store float 1.000000e+00, ptr %173, align 4, !tbaa !105
  %174 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %174, align 4, !tbaa !105
  store float 0.000000e+00, ptr %7, align 4, !tbaa !105
  br label %175

175:                                              ; preds = %125, %127, %133, %145, %166, %169, %172
  %176 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 77
  %177 = load float, ptr %176, align 4, !tbaa !160
  %178 = fmul float %8, %177
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %178) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %179

179:                                              ; preds = %35, %175, %30
  %180 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  %181 = load float, ptr %180, align 4, !tbaa !105
  %182 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !105
  %184 = fmul float %183, %183
  %185 = call float @llvm.fmuladd.f32(float %181, float %181, float %184)
  %186 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !105
  %188 = call float @llvm.fmuladd.f32(float %187, float %187, float %185)
  %189 = call float @sqrtf(float noundef %188) #16
  %190 = fcmp oeq float %189, 0.000000e+00
  br i1 %190, label %196, label %191

191:                                              ; preds = %179
  %192 = load i32, ptr %9, align 8, !tbaa !250
  %193 = and i32 %192, 16384
  %194 = icmp eq i32 %193, 0
  %195 = select i1 %194, i1 true, i1 %31
  br i1 %195, label %196, label %197

196:                                              ; preds = %191, %179
  call void @unit_qt(ptr noundef nonnull %5) #16
  br label %199

197:                                              ; preds = %191
  %198 = fmul float %8, %189
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %180, float noundef %198) #16
  br label %199

199:                                              ; preds = %197, %196
  %200 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 2
  %201 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %200, ptr noundef nonnull %5, ptr noundef nonnull %201) #16
  call void @mul_qt_qtqt(ptr noundef nonnull %200, ptr noundef nonnull %6, ptr noundef nonnull %200) #16
  %202 = call float @normalize_qt(ptr noundef nonnull %200) #16
  br label %203

203:                                              ; preds = %199, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void
}

declare void @boid_brain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @boid_body(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @sph_integrate(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 81
  %11 = load float, ptr %10, align 4, !tbaa !248
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !250
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %18 = load float, ptr %17, align 4, !tbaa !236
  br label %19

19:                                               ; preds = %4, %16
  %20 = phi float [ %18, %16 ], [ 1.000000e+00, %4 ]
  %21 = fmul float %11, %20
  %22 = tail call float @psys_get_timestep(ptr noundef %0) #16
  %23 = fmul float %22, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %24 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 1
  store ptr %1, ptr %24, align 8, !tbaa !223
  %25 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 2
  store float %21, ptr %25, align 8, !tbaa !224
  %26 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 6
  store i32 0, ptr %26, align 4, !tbaa !264
  %27 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %30 = load float, ptr %27, align 4, !tbaa !105
  %31 = load float, ptr %29, align 4, !tbaa !105
  %32 = fsub float %30, %31
  store float %32, ptr %5, align 4, !tbaa !105
  %33 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !105
  %35 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !105
  %37 = fsub float %34, %36
  %38 = getelementptr inbounds float, ptr %5, i64 1
  store float %37, ptr %38, align 4, !tbaa !105
  %39 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !105
  %41 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !105
  %43 = fsub float %40, %42
  %44 = getelementptr inbounds float, ptr %5, i64 2
  store float %43, ptr %44, align 4, !tbaa !105
  %45 = fdiv float 1.000000e+00, %23
  %46 = fmul float %45, %32
  store float %46, ptr %5, align 4, !tbaa !105
  %47 = fmul float %45, %37
  store float %47, ptr %38, align 4, !tbaa !105
  %48 = fmul float %45, %43
  store float %48, ptr %44, align 4, !tbaa !105
  tail call void @copy_particle_key(ptr noundef %1, ptr noundef nonnull %28, i32 noundef 0) #16
  %49 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !228
  call fastcc void @integrate_particle(ptr noundef %9, ptr noundef %1, float noundef %23, ptr noundef nonnull %5, ptr noundef %50, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

declare void @free_collider_cache(ptr noundef) local_unnamed_addr #3

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @integrate_particle(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #2 {
  %7 = alloca [5 x %struct.ParticleKey], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !250
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 81
  %15 = load float, ptr %14, align 4, !tbaa !248
  br i1 %13, label %20, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %18 = load float, ptr %17, align 4, !tbaa !236
  %19 = fmul float %15, %18
  br label %20

20:                                               ; preds = %6, %16
  %21 = phi float [ %19, %16 ], [ %15, %6 ]
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 33
  %23 = load i16, ptr %22, align 8, !tbaa !540
  %24 = sext i16 %23 to i32
  %25 = load float, ptr %1, align 4, !tbaa !105
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !105
  %28 = getelementptr inbounds float, ptr %1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !105
  %30 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 4
  %31 = load float, ptr %30, align 4, !tbaa !261
  %32 = fcmp olt float %31, 0.000000e+00
  %33 = icmp eq i16 %23, 3
  %34 = select i1 %32, i1 %33, i1 false
  %35 = select i1 %34, i32 0, i32 %24
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i32 2, i32 1
  %38 = icmp eq i32 %35, 2
  %39 = select i1 %38, i32 4, i32 %37
  %40 = zext nneg i32 %39 to i64
  br label %41

41:                                               ; preds = %20, %41
  %42 = phi i64 [ 0, %20 ], [ %44, %41 ]
  %43 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 %42
  call void @copy_particle_key(ptr noundef nonnull %43, ptr noundef %1, i32 noundef 1) #16
  %44 = add nuw nsw i64 %42, 1
  %45 = icmp eq i64 %44, %40
  br i1 %45, label %46, label %41, !llvm.loop !541

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1
  %48 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 4
  store float 0.000000e+00, ptr %48, align 4, !tbaa !257
  %49 = getelementptr inbounds float, ptr %8, i64 1
  %50 = getelementptr inbounds float, ptr %8, i64 2
  %51 = getelementptr inbounds float, ptr %9, i64 1
  %52 = getelementptr inbounds float, ptr %9, i64 2
  %53 = fdiv float 1.000000e+00, %21
  %54 = icmp eq ptr %3, null
  %55 = getelementptr inbounds float, ptr %3, i64 1
  %56 = getelementptr inbounds float, ptr %3, i64 2
  %57 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %58 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %59 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 1
  %60 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %61 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %62 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %63 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 0, i64 1
  %64 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 0, i64 2
  %65 = fdiv float 1.000000e+00, %2
  %66 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %67 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  %68 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  %69 = getelementptr inbounds float, ptr %7, i64 1
  %70 = getelementptr inbounds float, ptr %7, i64 2
  %71 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %72 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %73 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %74 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %75 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  %76 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  %77 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3
  %78 = getelementptr inbounds float, ptr %7, i64 1
  %79 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 0, i64 1
  %80 = getelementptr inbounds float, ptr %7, i64 2
  %81 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 0, i64 2
  %82 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 1
  %83 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 1, i64 1
  %84 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 1, i64 2
  %85 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 4
  %86 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %87 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  %88 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  %89 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2
  %90 = getelementptr inbounds float, ptr %7, i64 1
  %91 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 0, i64 1
  %92 = getelementptr inbounds float, ptr %7, i64 2
  %93 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 0, i64 2
  %94 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1
  %95 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1, i64 1
  %96 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1, i64 2
  %97 = fmul float %2, 5.000000e-01
  %98 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 4
  %99 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %100 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  %101 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  %102 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1
  %103 = getelementptr inbounds float, ptr %7, i64 1
  %104 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 0, i64 1
  %105 = getelementptr inbounds float, ptr %7, i64 2
  %106 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 0, i64 2
  %107 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1
  %108 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 1
  %109 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 2
  %110 = fmul float %2, 5.000000e-01
  %111 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 4
  %112 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1
  %113 = getelementptr inbounds float, ptr %7, i64 1
  %114 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 1
  %115 = getelementptr inbounds float, ptr %7, i64 2
  %116 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 2
  %117 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %118 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %119 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  %120 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %121 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  %122 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %123 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1
  %124 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %125 = fmul float %2, 5.000000e-01
  %126 = getelementptr inbounds float, ptr %7, i64 1
  %127 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  %128 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 0, i64 1
  %129 = getelementptr inbounds float, ptr %7, i64 2
  %130 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  %131 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 0, i64 2
  %132 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1
  %133 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 1
  %134 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 2
  %135 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 4
  %136 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %137 = getelementptr inbounds float, ptr %7, i64 1
  %138 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  %139 = getelementptr inbounds float, ptr %7, i64 2
  %140 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  %141 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %142 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %143 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %144 = zext nneg i32 %39 to i64
  br label %145

145:                                              ; preds = %46, %362
  %146 = phi i64 [ 0, %46 ], [ %381, %362 ]
  %147 = phi float [ 0.000000e+00, %46 ], [ %380, %362 ]
  %148 = phi float [ 0.000000e+00, %46 ], [ %379, %362 ]
  %149 = phi float [ 0.000000e+00, %46 ], [ %378, %362 ]
  %150 = phi float [ 0.000000e+00, %46 ], [ %377, %362 ]
  %151 = phi float [ 0.000000e+00, %46 ], [ %376, %362 ]
  %152 = phi float [ 0.000000e+00, %46 ], [ %375, %362 ]
  %153 = phi float [ 0.000000e+00, %46 ], [ %374, %362 ]
  %154 = phi float [ 0.000000e+00, %46 ], [ %373, %362 ]
  %155 = phi float [ 0.000000e+00, %46 ], [ %372, %362 ]
  %156 = phi float [ 0.000000e+00, %46 ], [ %371, %362 ]
  %157 = phi float [ 0.000000e+00, %46 ], [ %370, %362 ]
  %158 = phi float [ 0.000000e+00, %46 ], [ %369, %362 ]
  %159 = phi float [ 0.000000e+00, %46 ], [ %368, %362 ]
  %160 = phi float [ 0.000000e+00, %46 ], [ %367, %362 ]
  %161 = phi float [ 0.000000e+00, %46 ], [ %366, %362 ]
  %162 = phi float [ 0.000000e+00, %46 ], [ %365, %362 ]
  %163 = phi float [ 0.000000e+00, %46 ], [ %364, %362 ]
  %164 = phi float [ 0.000000e+00, %46 ], [ %363, %362 ]
  store float 0.000000e+00, ptr %8, align 4, !tbaa !105
  store float 0.000000e+00, ptr %49, align 4, !tbaa !105
  store float 0.000000e+00, ptr %50, align 4, !tbaa !105
  store float 0.000000e+00, ptr %9, align 4, !tbaa !105
  store float 0.000000e+00, ptr %51, align 4, !tbaa !105
  store float 0.000000e+00, ptr %52, align 4, !tbaa !105
  %165 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 %146
  call void %4(ptr noundef %5, ptr noundef nonnull %165, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %166 = load float, ptr %8, align 4, !tbaa !105
  %167 = fmul float %53, %166
  %168 = load float, ptr %49, align 4, !tbaa !105
  %169 = fmul float %53, %168
  %170 = load float, ptr %50, align 4, !tbaa !105
  %171 = fmul float %53, %170
  br i1 %54, label %179, label %172

172:                                              ; preds = %145
  %173 = load float, ptr %3, align 4, !tbaa !105
  %174 = fadd float %167, %173
  %175 = load float, ptr %55, align 4, !tbaa !105
  %176 = fadd float %169, %175
  %177 = load float, ptr %56, align 4, !tbaa !105
  %178 = fadd float %171, %177
  br label %179

179:                                              ; preds = %172, %145
  %180 = phi float [ %167, %145 ], [ %174, %172 ]
  %181 = phi float [ %169, %145 ], [ %176, %172 ]
  %182 = phi float [ %171, %145 ], [ %178, %172 ]
  %183 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 %146, i32 1
  %184 = load float, ptr %9, align 4, !tbaa !105
  %185 = load float, ptr %183, align 4, !tbaa !105
  %186 = fadd float %184, %185
  store float %186, ptr %183, align 4, !tbaa !105
  %187 = load float, ptr %51, align 4, !tbaa !105
  %188 = getelementptr inbounds float, ptr %183, i64 1
  %189 = load float, ptr %188, align 8, !tbaa !105
  %190 = fadd float %187, %189
  store float %190, ptr %188, align 8, !tbaa !105
  %191 = load float, ptr %52, align 4, !tbaa !105
  %192 = getelementptr inbounds float, ptr %183, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !105
  %194 = fadd float %191, %193
  store float %194, ptr %192, align 4, !tbaa !105
  switch i32 %35, label %362 [
    i32 0, label %195
    i32 1, label %208
    i32 2, label %238
    i32 3, label %343
  ]

195:                                              ; preds = %179
  %196 = load float, ptr %7, align 16, !tbaa !105
  %197 = load float, ptr %136, align 4, !tbaa !105
  %198 = call float @llvm.fmuladd.f32(float %197, float %2, float %196)
  store float %198, ptr %1, align 4, !tbaa !105
  %199 = load float, ptr %137, align 4, !tbaa !105
  %200 = load float, ptr %138, align 16, !tbaa !105
  %201 = call float @llvm.fmuladd.f32(float %200, float %2, float %199)
  store float %201, ptr %26, align 4, !tbaa !105
  %202 = load float, ptr %139, align 8, !tbaa !105
  %203 = load float, ptr %140, align 4, !tbaa !105
  %204 = call float @llvm.fmuladd.f32(float %203, float %2, float %202)
  store float %204, ptr %28, align 4, !tbaa !105
  %205 = call float @llvm.fmuladd.f32(float %180, float %2, float %197)
  store float %205, ptr %141, align 4, !tbaa !105
  %206 = call float @llvm.fmuladd.f32(float %181, float %2, float %200)
  store float %206, ptr %142, align 4, !tbaa !105
  %207 = call float @llvm.fmuladd.f32(float %182, float %2, float %203)
  store float %207, ptr %143, align 4, !tbaa !105
  br label %362

208:                                              ; preds = %179
  %209 = icmp eq i64 %146, 0
  %210 = load float, ptr %7, align 16, !tbaa !105
  br i1 %209, label %211, label %223

211:                                              ; preds = %208
  %212 = load float, ptr %124, align 4, !tbaa !105
  %213 = call float @llvm.fmuladd.f32(float %212, float %125, float %210)
  store float %213, ptr %123, align 8, !tbaa !105
  %214 = load float, ptr %126, align 4, !tbaa !105
  %215 = load float, ptr %127, align 16, !tbaa !105
  %216 = call float @llvm.fmuladd.f32(float %215, float %125, float %214)
  store float %216, ptr %128, align 4, !tbaa !105
  %217 = load float, ptr %129, align 8, !tbaa !105
  %218 = load float, ptr %130, align 4, !tbaa !105
  %219 = call float @llvm.fmuladd.f32(float %218, float %125, float %217)
  store float %219, ptr %131, align 16, !tbaa !105
  %220 = call float @llvm.fmuladd.f32(float %180, float %125, float %212)
  store float %220, ptr %132, align 4, !tbaa !105
  %221 = call float @llvm.fmuladd.f32(float %181, float %125, float %215)
  store float %221, ptr %133, align 8, !tbaa !105
  %222 = call float @llvm.fmuladd.f32(float %182, float %125, float %218)
  store float %222, ptr %134, align 4, !tbaa !105
  store float %125, ptr %135, align 4, !tbaa !257
  br label %362

223:                                              ; preds = %208
  %224 = load float, ptr %112, align 4, !tbaa !105
  %225 = call float @llvm.fmuladd.f32(float %224, float %2, float %210)
  store float %225, ptr %1, align 4, !tbaa !105
  %226 = load float, ptr %113, align 4, !tbaa !105
  %227 = load float, ptr %114, align 8, !tbaa !105
  %228 = call float @llvm.fmuladd.f32(float %227, float %2, float %226)
  store float %228, ptr %26, align 4, !tbaa !105
  %229 = load float, ptr %115, align 8, !tbaa !105
  %230 = load float, ptr %116, align 4, !tbaa !105
  %231 = call float @llvm.fmuladd.f32(float %230, float %2, float %229)
  store float %231, ptr %28, align 4, !tbaa !105
  %232 = load float, ptr %118, align 4, !tbaa !105
  %233 = call float @llvm.fmuladd.f32(float %180, float %2, float %232)
  store float %233, ptr %117, align 4, !tbaa !105
  %234 = load float, ptr %119, align 16, !tbaa !105
  %235 = call float @llvm.fmuladd.f32(float %181, float %2, float %234)
  store float %235, ptr %120, align 4, !tbaa !105
  %236 = load float, ptr %121, align 4, !tbaa !105
  %237 = call float @llvm.fmuladd.f32(float %182, float %2, float %236)
  store float %237, ptr %122, align 4, !tbaa !105
  br label %362

238:                                              ; preds = %179
  %239 = trunc i64 %146 to i32
  switch i32 %239, label %362 [
    i32 0, label %240
    i32 1, label %259
    i32 2, label %281
    i32 3, label %303
  ]

240:                                              ; preds = %238
  %241 = load float, ptr %99, align 4, !tbaa !105
  %242 = load float, ptr %100, align 16, !tbaa !105
  %243 = load float, ptr %101, align 4, !tbaa !105
  %244 = fmul float %241, %2
  %245 = fmul float %242, %2
  %246 = fmul float %243, %2
  %247 = fmul float %180, %2
  %248 = fmul float %181, %2
  %249 = fmul float %182, %2
  %250 = load float, ptr %7, align 16, !tbaa !105
  %251 = call float @llvm.fmuladd.f32(float %244, float 5.000000e-01, float %250)
  store float %251, ptr %102, align 8, !tbaa !105
  %252 = load float, ptr %103, align 4, !tbaa !105
  %253 = call float @llvm.fmuladd.f32(float %245, float 5.000000e-01, float %252)
  store float %253, ptr %104, align 4, !tbaa !105
  %254 = load float, ptr %105, align 8, !tbaa !105
  %255 = call float @llvm.fmuladd.f32(float %246, float 5.000000e-01, float %254)
  store float %255, ptr %106, align 16, !tbaa !105
  %256 = call float @llvm.fmuladd.f32(float %247, float 5.000000e-01, float %241)
  store float %256, ptr %107, align 4, !tbaa !105
  %257 = call float @llvm.fmuladd.f32(float %248, float 5.000000e-01, float %242)
  store float %257, ptr %108, align 8, !tbaa !105
  %258 = call float @llvm.fmuladd.f32(float %249, float 5.000000e-01, float %243)
  store float %258, ptr %109, align 4, !tbaa !105
  store float %110, ptr %111, align 4, !tbaa !257
  br label %362

259:                                              ; preds = %238
  %260 = load float, ptr %86, align 4, !tbaa !105
  %261 = call float @llvm.fmuladd.f32(float %155, float 5.000000e-01, float %260)
  %262 = load float, ptr %87, align 16, !tbaa !105
  %263 = call float @llvm.fmuladd.f32(float %154, float 5.000000e-01, float %262)
  %264 = load float, ptr %88, align 4, !tbaa !105
  %265 = call float @llvm.fmuladd.f32(float %153, float 5.000000e-01, float %264)
  %266 = fmul float %261, %2
  %267 = fmul float %263, %2
  %268 = fmul float %265, %2
  %269 = fmul float %180, %2
  %270 = fmul float %181, %2
  %271 = fmul float %182, %2
  %272 = load float, ptr %7, align 16, !tbaa !105
  %273 = call float @llvm.fmuladd.f32(float %266, float 5.000000e-01, float %272)
  store float %273, ptr %89, align 16, !tbaa !105
  %274 = load float, ptr %90, align 4, !tbaa !105
  %275 = call float @llvm.fmuladd.f32(float %267, float 5.000000e-01, float %274)
  store float %275, ptr %91, align 4, !tbaa !105
  %276 = load float, ptr %92, align 8, !tbaa !105
  %277 = call float @llvm.fmuladd.f32(float %268, float 5.000000e-01, float %276)
  store float %277, ptr %93, align 8, !tbaa !105
  %278 = call float @llvm.fmuladd.f32(float %269, float 5.000000e-01, float %260)
  store float %278, ptr %94, align 4, !tbaa !105
  %279 = call float @llvm.fmuladd.f32(float %270, float 5.000000e-01, float %262)
  store float %279, ptr %95, align 16, !tbaa !105
  %280 = call float @llvm.fmuladd.f32(float %271, float 5.000000e-01, float %264)
  store float %280, ptr %96, align 4, !tbaa !105
  store float %97, ptr %98, align 4, !tbaa !257
  br label %362

281:                                              ; preds = %238
  %282 = load float, ptr %74, align 4, !tbaa !105
  %283 = call float @llvm.fmuladd.f32(float %152, float 5.000000e-01, float %282)
  %284 = load float, ptr %75, align 16, !tbaa !105
  %285 = call float @llvm.fmuladd.f32(float %151, float 5.000000e-01, float %284)
  %286 = load float, ptr %76, align 4, !tbaa !105
  %287 = call float @llvm.fmuladd.f32(float %150, float 5.000000e-01, float %286)
  %288 = fmul float %283, %2
  %289 = fmul float %285, %2
  %290 = fmul float %287, %2
  %291 = fmul float %180, %2
  %292 = fmul float %181, %2
  %293 = fmul float %182, %2
  %294 = load float, ptr %7, align 16, !tbaa !105
  %295 = fadd float %288, %294
  store float %295, ptr %77, align 8, !tbaa !105
  %296 = load float, ptr %78, align 4, !tbaa !105
  %297 = fadd float %289, %296
  store float %297, ptr %79, align 4, !tbaa !105
  %298 = load float, ptr %80, align 8, !tbaa !105
  %299 = fadd float %290, %298
  store float %299, ptr %81, align 16, !tbaa !105
  %300 = fadd float %291, %282
  store float %300, ptr %82, align 4, !tbaa !105
  %301 = fadd float %292, %284
  store float %301, ptr %83, align 8, !tbaa !105
  %302 = fadd float %293, %286
  store float %302, ptr %84, align 4, !tbaa !105
  store float %2, ptr %85, align 4, !tbaa !257
  br label %362

303:                                              ; preds = %238
  %304 = load float, ptr %66, align 4, !tbaa !105
  %305 = fadd float %149, %304
  %306 = load float, ptr %67, align 16, !tbaa !105
  %307 = fadd float %148, %306
  %308 = load float, ptr %68, align 4, !tbaa !105
  %309 = fadd float %147, %308
  %310 = fmul float %305, %2
  %311 = fmul float %307, %2
  %312 = fmul float %309, %2
  %313 = fmul float %180, %2
  %314 = fmul float %181, %2
  %315 = fmul float %182, %2
  %316 = load float, ptr %7, align 16, !tbaa !105
  %317 = call float @llvm.fmuladd.f32(float %164, float 0x3FC5555560000000, float %316)
  store float %317, ptr %1, align 4, !tbaa !105
  %318 = load float, ptr %69, align 4, !tbaa !105
  %319 = call float @llvm.fmuladd.f32(float %163, float 0x3FC5555560000000, float %318)
  store float %319, ptr %26, align 4, !tbaa !105
  %320 = load float, ptr %70, align 8, !tbaa !105
  %321 = call float @llvm.fmuladd.f32(float %162, float 0x3FC5555560000000, float %320)
  store float %321, ptr %28, align 4, !tbaa !105
  %322 = call float @llvm.fmuladd.f32(float %161, float 0x3FD5555560000000, float %317)
  store float %322, ptr %1, align 4, !tbaa !105
  %323 = call float @llvm.fmuladd.f32(float %160, float 0x3FD5555560000000, float %319)
  store float %323, ptr %26, align 4, !tbaa !105
  %324 = call float @llvm.fmuladd.f32(float %159, float 0x3FD5555560000000, float %321)
  store float %324, ptr %28, align 4, !tbaa !105
  %325 = call float @llvm.fmuladd.f32(float %158, float 0x3FD5555560000000, float %322)
  store float %325, ptr %1, align 4, !tbaa !105
  %326 = call float @llvm.fmuladd.f32(float %157, float 0x3FD5555560000000, float %323)
  store float %326, ptr %26, align 4, !tbaa !105
  %327 = call float @llvm.fmuladd.f32(float %156, float 0x3FD5555560000000, float %324)
  store float %327, ptr %28, align 4, !tbaa !105
  %328 = call float @llvm.fmuladd.f32(float %310, float 0x3FC5555560000000, float %325)
  store float %328, ptr %1, align 4, !tbaa !105
  %329 = call float @llvm.fmuladd.f32(float %311, float 0x3FC5555560000000, float %326)
  store float %329, ptr %26, align 4, !tbaa !105
  %330 = call float @llvm.fmuladd.f32(float %312, float 0x3FC5555560000000, float %327)
  store float %330, ptr %28, align 4, !tbaa !105
  %331 = call float @llvm.fmuladd.f32(float %155, float 0x3FC5555560000000, float %304)
  store float %331, ptr %71, align 4, !tbaa !105
  %332 = call float @llvm.fmuladd.f32(float %154, float 0x3FC5555560000000, float %306)
  store float %332, ptr %72, align 4, !tbaa !105
  %333 = call float @llvm.fmuladd.f32(float %153, float 0x3FC5555560000000, float %308)
  store float %333, ptr %73, align 4, !tbaa !105
  %334 = call float @llvm.fmuladd.f32(float %152, float 0x3FD5555560000000, float %331)
  store float %334, ptr %71, align 4, !tbaa !105
  %335 = call float @llvm.fmuladd.f32(float %151, float 0x3FD5555560000000, float %332)
  store float %335, ptr %72, align 4, !tbaa !105
  %336 = call float @llvm.fmuladd.f32(float %150, float 0x3FD5555560000000, float %333)
  store float %336, ptr %73, align 4, !tbaa !105
  %337 = call float @llvm.fmuladd.f32(float %149, float 0x3FD5555560000000, float %334)
  store float %337, ptr %71, align 4, !tbaa !105
  %338 = call float @llvm.fmuladd.f32(float %148, float 0x3FD5555560000000, float %335)
  store float %338, ptr %72, align 4, !tbaa !105
  %339 = call float @llvm.fmuladd.f32(float %147, float 0x3FD5555560000000, float %336)
  store float %339, ptr %73, align 4, !tbaa !105
  %340 = call float @llvm.fmuladd.f32(float %313, float 0x3FC5555560000000, float %337)
  store float %340, ptr %71, align 4, !tbaa !105
  %341 = call float @llvm.fmuladd.f32(float %314, float 0x3FC5555560000000, float %338)
  store float %341, ptr %72, align 4, !tbaa !105
  %342 = call float @llvm.fmuladd.f32(float %315, float 0x3FC5555560000000, float %339)
  store float %342, ptr %73, align 4, !tbaa !105
  br label %362

343:                                              ; preds = %179
  %344 = load float, ptr %58, align 4, !tbaa !105
  %345 = call float @llvm.fmuladd.f32(float %180, float %2, float %344)
  store float %345, ptr %57, align 4, !tbaa !105
  %346 = load float, ptr %59, align 4, !tbaa !105
  %347 = call float @llvm.fmuladd.f32(float %181, float %2, float %346)
  store float %347, ptr %60, align 4, !tbaa !105
  %348 = load float, ptr %61, align 4, !tbaa !105
  %349 = call float @llvm.fmuladd.f32(float %182, float %2, float %348)
  store float %349, ptr %62, align 4, !tbaa !105
  %350 = load float, ptr %47, align 4, !tbaa !105
  %351 = call float @llvm.fmuladd.f32(float %345, float %2, float %350)
  store float %351, ptr %1, align 4, !tbaa !105
  %352 = load float, ptr %63, align 4, !tbaa !105
  %353 = call float @llvm.fmuladd.f32(float %347, float %2, float %352)
  store float %353, ptr %26, align 4, !tbaa !105
  %354 = load float, ptr %64, align 4, !tbaa !105
  %355 = call float @llvm.fmuladd.f32(float %349, float %2, float %354)
  store float %355, ptr %28, align 4, !tbaa !105
  %356 = fsub float %351, %25
  store float %356, ptr %57, align 4, !tbaa !105
  %357 = fsub float %353, %27
  store float %357, ptr %60, align 4, !tbaa !105
  %358 = fsub float %355, %29
  store float %358, ptr %62, align 4, !tbaa !105
  %359 = fmul float %65, %356
  store float %359, ptr %57, align 4, !tbaa !105
  %360 = fmul float %65, %357
  store float %360, ptr %60, align 4, !tbaa !105
  %361 = fmul float %65, %358
  store float %361, ptr %62, align 4, !tbaa !105
  br label %362

362:                                              ; preds = %195, %343, %179, %223, %211, %303, %238, %281, %259, %240
  %363 = phi float [ %164, %179 ], [ %164, %343 ], [ %164, %238 ], [ %164, %303 ], [ %164, %281 ], [ %164, %259 ], [ %244, %240 ], [ %164, %211 ], [ %164, %223 ], [ %164, %195 ]
  %364 = phi float [ %163, %179 ], [ %163, %343 ], [ %163, %238 ], [ %163, %303 ], [ %163, %281 ], [ %163, %259 ], [ %245, %240 ], [ %163, %211 ], [ %163, %223 ], [ %163, %195 ]
  %365 = phi float [ %162, %179 ], [ %162, %343 ], [ %162, %238 ], [ %162, %303 ], [ %162, %281 ], [ %162, %259 ], [ %246, %240 ], [ %162, %211 ], [ %162, %223 ], [ %162, %195 ]
  %366 = phi float [ %161, %179 ], [ %161, %343 ], [ %161, %238 ], [ %161, %303 ], [ %161, %281 ], [ %266, %259 ], [ %161, %240 ], [ %161, %211 ], [ %161, %223 ], [ %161, %195 ]
  %367 = phi float [ %160, %179 ], [ %160, %343 ], [ %160, %238 ], [ %160, %303 ], [ %160, %281 ], [ %267, %259 ], [ %160, %240 ], [ %160, %211 ], [ %160, %223 ], [ %160, %195 ]
  %368 = phi float [ %159, %179 ], [ %159, %343 ], [ %159, %238 ], [ %159, %303 ], [ %159, %281 ], [ %268, %259 ], [ %159, %240 ], [ %159, %211 ], [ %159, %223 ], [ %159, %195 ]
  %369 = phi float [ %158, %179 ], [ %158, %343 ], [ %158, %238 ], [ %158, %303 ], [ %288, %281 ], [ %158, %259 ], [ %158, %240 ], [ %158, %211 ], [ %158, %223 ], [ %158, %195 ]
  %370 = phi float [ %157, %179 ], [ %157, %343 ], [ %157, %238 ], [ %157, %303 ], [ %289, %281 ], [ %157, %259 ], [ %157, %240 ], [ %157, %211 ], [ %157, %223 ], [ %157, %195 ]
  %371 = phi float [ %156, %179 ], [ %156, %343 ], [ %156, %238 ], [ %156, %303 ], [ %290, %281 ], [ %156, %259 ], [ %156, %240 ], [ %156, %211 ], [ %156, %223 ], [ %156, %195 ]
  %372 = phi float [ %155, %179 ], [ %155, %343 ], [ %155, %238 ], [ %155, %303 ], [ %155, %281 ], [ %155, %259 ], [ %247, %240 ], [ %155, %211 ], [ %155, %223 ], [ %155, %195 ]
  %373 = phi float [ %154, %179 ], [ %154, %343 ], [ %154, %238 ], [ %154, %303 ], [ %154, %281 ], [ %154, %259 ], [ %248, %240 ], [ %154, %211 ], [ %154, %223 ], [ %154, %195 ]
  %374 = phi float [ %153, %179 ], [ %153, %343 ], [ %153, %238 ], [ %153, %303 ], [ %153, %281 ], [ %153, %259 ], [ %249, %240 ], [ %153, %211 ], [ %153, %223 ], [ %153, %195 ]
  %375 = phi float [ %152, %179 ], [ %152, %343 ], [ %152, %238 ], [ %152, %303 ], [ %152, %281 ], [ %269, %259 ], [ %152, %240 ], [ %152, %211 ], [ %152, %223 ], [ %152, %195 ]
  %376 = phi float [ %151, %179 ], [ %151, %343 ], [ %151, %238 ], [ %151, %303 ], [ %151, %281 ], [ %270, %259 ], [ %151, %240 ], [ %151, %211 ], [ %151, %223 ], [ %151, %195 ]
  %377 = phi float [ %150, %179 ], [ %150, %343 ], [ %150, %238 ], [ %150, %303 ], [ %150, %281 ], [ %271, %259 ], [ %150, %240 ], [ %150, %211 ], [ %150, %223 ], [ %150, %195 ]
  %378 = phi float [ %149, %179 ], [ %149, %343 ], [ %149, %238 ], [ %149, %303 ], [ %291, %281 ], [ %149, %259 ], [ %149, %240 ], [ %149, %211 ], [ %149, %223 ], [ %149, %195 ]
  %379 = phi float [ %148, %179 ], [ %148, %343 ], [ %148, %238 ], [ %148, %303 ], [ %292, %281 ], [ %148, %259 ], [ %148, %240 ], [ %148, %211 ], [ %148, %223 ], [ %148, %195 ]
  %380 = phi float [ %147, %179 ], [ %147, %343 ], [ %147, %238 ], [ %147, %303 ], [ %293, %281 ], [ %147, %259 ], [ %147, %240 ], [ %147, %211 ], [ %147, %223 ], [ %147, %195 ]
  %381 = add nuw nsw i64 %146, 1
  %382 = icmp eq i64 %381, %144
  br i1 %382, label %383, label %145, !llvm.loop !542

383:                                              ; preds = %362
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @basic_force_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.EffectedPoint, align 8
  %6 = getelementptr inbounds %struct.EfData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !503
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.EfData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !501
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @pd_point_from_particle(ptr noundef %7, ptr noundef %13, ptr noundef %1, ptr noundef nonnull %5) #16
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 7
  %15 = load i16, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !363
  %20 = getelementptr inbounds %struct.EffectorWeights, ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 4, !tbaa !504
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %17, %4
  %25 = load ptr, ptr %8, align 8, !tbaa !113
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 42
  %27 = load ptr, ptr %26, align 8, !tbaa !366
  %28 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !384
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !363
  call void @pdDoEffectors(ptr noundef %27, ptr noundef %29, ptr noundef %31, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #16
  br label %32

32:                                               ; preds = %24, %17
  %33 = getelementptr inbounds %struct.ParticleTexture, ptr %0, i64 0, i32 7
  %34 = load float, ptr %33, align 4, !tbaa !543
  %35 = load float, ptr %2, align 4, !tbaa !105
  %36 = fmul float %34, %35
  store float %36, ptr %2, align 4, !tbaa !105
  %37 = getelementptr inbounds float, ptr %2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !105
  %39 = fmul float %34, %38
  store float %39, ptr %37, align 4, !tbaa !105
  %40 = getelementptr inbounds float, ptr %2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !105
  %42 = fmul float %34, %41
  store float %42, ptr %40, align 4, !tbaa !105
  %43 = load float, ptr %33, align 4, !tbaa !543
  %44 = load float, ptr %3, align 4, !tbaa !105
  %45 = fmul float %43, %44
  store float %45, ptr %3, align 4, !tbaa !105
  %46 = getelementptr inbounds float, ptr %3, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !105
  %48 = fmul float %43, %47
  store float %48, ptr %46, align 4, !tbaa !105
  %49 = getelementptr inbounds float, ptr %3, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !105
  %51 = fmul float %43, %50
  store float %51, ptr %49, align 4, !tbaa !105
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 85
  %53 = load float, ptr %52, align 4, !tbaa !544
  %54 = fcmp une float %53, 0.000000e+00
  br i1 %54, label %55, label %81

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %57 = fneg float %53
  %58 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 13
  %59 = load float, ptr %58, align 4, !tbaa !236
  %60 = fmul float %59, %57
  %61 = fmul float %59, %60
  %62 = load float, ptr %56, align 4, !tbaa !105
  %63 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !105
  %65 = fmul float %64, %64
  %66 = call float @llvm.fmuladd.f32(float %62, float %62, float %65)
  %67 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !105
  %69 = call float @llvm.fmuladd.f32(float %68, float %68, float %66)
  %70 = call float @sqrtf(float noundef %69) #16
  %71 = fmul float %61, %70
  %72 = load float, ptr %56, align 4, !tbaa !105
  %73 = load float, ptr %2, align 4, !tbaa !105
  %74 = call float @llvm.fmuladd.f32(float %72, float %71, float %73)
  store float %74, ptr %2, align 4, !tbaa !105
  %75 = load float, ptr %63, align 4, !tbaa !105
  %76 = load float, ptr %37, align 4, !tbaa !105
  %77 = call float @llvm.fmuladd.f32(float %75, float %71, float %76)
  store float %77, ptr %37, align 4, !tbaa !105
  %78 = load float, ptr %67, align 4, !tbaa !105
  %79 = load float, ptr %40, align 4, !tbaa !105
  %80 = call float @llvm.fmuladd.f32(float %78, float %71, float %79)
  store float %80, ptr %40, align 4, !tbaa !105
  br label %81

81:                                               ; preds = %55, %32
  %82 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 86
  %83 = load float, ptr %82, align 8, !tbaa !545
  %84 = fcmp une float %83, 0.000000e+00
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = call float @BLI_frand() #16
  %87 = fadd float %86, -5.000000e-01
  %88 = load float, ptr %82, align 8, !tbaa !545
  %89 = load float, ptr %2, align 4, !tbaa !105
  %90 = call float @llvm.fmuladd.f32(float %87, float %88, float %89)
  store float %90, ptr %2, align 4, !tbaa !105
  %91 = call float @BLI_frand() #16
  %92 = fadd float %91, -5.000000e-01
  %93 = load float, ptr %82, align 8, !tbaa !545
  %94 = load float, ptr %37, align 4, !tbaa !105
  %95 = call float @llvm.fmuladd.f32(float %92, float %93, float %94)
  store float %95, ptr %37, align 4, !tbaa !105
  %96 = call float @BLI_frand() #16
  %97 = fadd float %96, -5.000000e-01
  %98 = load float, ptr %82, align 8, !tbaa !545
  %99 = load float, ptr %40, align 4, !tbaa !105
  %100 = call float @llvm.fmuladd.f32(float %97, float %98, float %99)
  store float %100, ptr %40, align 4, !tbaa !105
  br label %101

101:                                              ; preds = %85, %81
  %102 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 5
  %103 = load i32, ptr %102, align 8, !tbaa !250
  %104 = and i32 %103, 16384
  %105 = icmp ne i32 %104, 0
  %106 = getelementptr inbounds %struct.EffectedPoint, ptr %5, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = icmp ne ptr %107, null
  %109 = select i1 %105, i1 %108, i1 false
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.ParticleKey, ptr %13, i64 0, i32 3
  %112 = load float, ptr %107, align 4, !tbaa !105
  store float %112, ptr %111, align 4, !tbaa !105
  %113 = getelementptr inbounds float, ptr %107, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !105
  %115 = getelementptr inbounds %struct.ParticleKey, ptr %13, i64 0, i32 3, i64 1
  store float %114, ptr %115, align 4, !tbaa !105
  %116 = getelementptr inbounds float, ptr %107, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !105
  %118 = getelementptr inbounds %struct.ParticleKey, ptr %13, i64 0, i32 3, i64 2
  store float %117, ptr %118, align 4, !tbaa !105
  br label %119

119:                                              ; preds = %110, %101
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret void
}

declare i32 @do_guides(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @pd_point_from_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BLI_frand() local_unnamed_addr #3

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @collision_point_distance_with_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #10 {
  %6 = fcmp ult float %2, 0.000000e+00
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call fastcc void @collision_interpolate_element(ptr noundef %1, float noundef 0.000000e+00, float noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %7, %5
  %9 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !284
  switch i32 %10, label %101 [
    i32 1, label %11
    i32 2, label %45
    i32 3, label %99
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2
  %13 = load float, ptr %0, align 4, !tbaa !105
  %14 = load float, ptr %12, align 4, !tbaa !105
  %15 = fsub float %13, %14
  store float %15, ptr %4, align 4, !tbaa !105
  %16 = getelementptr inbounds float, ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !105
  %18 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !105
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %4, i64 1
  store float %20, ptr %21, align 4, !tbaa !105
  %22 = getelementptr inbounds float, ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !105
  %24 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !105
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %4, i64 2
  store float %26, ptr %27, align 4, !tbaa !105
  %28 = fmul float %20, %20
  %29 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %29)
  %31 = fcmp ogt float %30, 0x38AA95A5C0000000
  br i1 %31, label %32, label %41

32:                                               ; preds = %11
  %33 = tail call float @sqrtf(float noundef %30) #16
  %34 = fdiv float 1.000000e+00, %33
  %35 = load float, ptr %4, align 4, !tbaa !105
  %36 = fmul float %35, %34
  store float %36, ptr %4, align 4, !tbaa !105
  %37 = load float, ptr %21, align 4, !tbaa !105
  %38 = fmul float %34, %37
  store float %38, ptr %21, align 4, !tbaa !105
  %39 = load float, ptr %27, align 4, !tbaa !105
  %40 = fmul float %34, %39
  br label %42

41:                                               ; preds = %11
  store float 0.000000e+00, ptr %4, align 4, !tbaa !105
  store float 0.000000e+00, ptr %21, align 4, !tbaa !105
  br label %42

42:                                               ; preds = %32, %41
  %43 = phi float [ 0.000000e+00, %41 ], [ %40, %32 ]
  %44 = phi float [ 0.000000e+00, %41 ], [ %33, %32 ]
  store float %43, ptr %27, align 4, !tbaa !105
  br label %101

45:                                               ; preds = %8
  %46 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 3
  %47 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2
  %48 = load float, ptr %46, align 4, !tbaa !105
  %49 = load float, ptr %47, align 4, !tbaa !105
  %50 = fsub float %48, %49
  %51 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 3, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !105
  %53 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !105
  %55 = fsub float %52, %54
  %56 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 3, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !105
  %58 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !105
  %60 = fsub float %57, %59
  %61 = load float, ptr %0, align 4, !tbaa !105
  %62 = fsub float %61, %49
  %63 = getelementptr inbounds float, ptr %0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !105
  %65 = fsub float %64, %54
  %66 = getelementptr inbounds float, ptr %0, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !105
  %68 = fsub float %67, %59
  %69 = fmul float %55, %65
  %70 = tail call float @llvm.fmuladd.f32(float %62, float %50, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %60, float %70)
  %72 = fmul float %55, %55
  %73 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %73)
  %75 = fneg float %71
  %76 = fdiv float %75, %74
  %77 = tail call float @llvm.fmuladd.f32(float %50, float %76, float %62)
  store float %77, ptr %4, align 4, !tbaa !105
  %78 = tail call float @llvm.fmuladd.f32(float %55, float %76, float %65)
  %79 = getelementptr inbounds float, ptr %4, i64 1
  store float %78, ptr %79, align 4, !tbaa !105
  %80 = tail call float @llvm.fmuladd.f32(float %60, float %76, float %68)
  %81 = getelementptr inbounds float, ptr %4, i64 2
  store float %80, ptr %81, align 4, !tbaa !105
  %82 = fmul float %78, %78
  %83 = tail call float @llvm.fmuladd.f32(float %77, float %77, float %82)
  %84 = tail call float @llvm.fmuladd.f32(float %80, float %80, float %83)
  %85 = fcmp ogt float %84, 0x38AA95A5C0000000
  br i1 %85, label %86, label %95

86:                                               ; preds = %45
  %87 = tail call float @sqrtf(float noundef %84) #16
  %88 = fdiv float 1.000000e+00, %87
  %89 = load float, ptr %4, align 4, !tbaa !105
  %90 = fmul float %89, %88
  store float %90, ptr %4, align 4, !tbaa !105
  %91 = load float, ptr %79, align 4, !tbaa !105
  %92 = fmul float %88, %91
  store float %92, ptr %79, align 4, !tbaa !105
  %93 = load float, ptr %81, align 4, !tbaa !105
  %94 = fmul float %88, %93
  br label %96

95:                                               ; preds = %45
  store float 0.000000e+00, ptr %4, align 4, !tbaa !105
  store float 0.000000e+00, ptr %79, align 4, !tbaa !105
  br label %96

96:                                               ; preds = %86, %95
  %97 = phi float [ 0.000000e+00, %95 ], [ %94, %86 ]
  %98 = phi float [ 0.000000e+00, %95 ], [ %87, %86 ]
  store float %97, ptr %81, align 4, !tbaa !105
  br label %101

99:                                               ; preds = %8
  %100 = tail call float @nr_signed_distance_to_plane(ptr noundef %0, float noundef 0.000000e+00, ptr noundef %1, ptr noundef %4)
  br label %101

101:                                              ; preds = %8, %99, %96, %42
  %102 = phi float [ %100, %99 ], [ %98, %96 ], [ %44, %42 ], [ 0.000000e+00, %8 ]
  ret float %102
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #8

declare void @psys_vec_rot_to_face(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cloth_free_modifier(ptr noundef) local_unnamed_addr #3

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #3

declare ptr @CDDM_new(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #3

declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @psys_mat_hair_to_object(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

declare void @clothModifier_do(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @realloc_particles(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 9
  %10 = load i16, ptr %9, align 4, !tbaa !56
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !57
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 65
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = mul nsw i32 %18, %18
  %20 = mul nsw i32 %19, %18
  br label %24

21:                                               ; preds = %12, %8
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 63
  %23 = load i32, ptr %22, align 4, !tbaa !59
  br label %24

24:                                               ; preds = %2, %16, %21
  %25 = phi i32 [ %20, %16 ], [ %23, %21 ], [ %1, %2 ]
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %27 = load i32, ptr %26, align 8, !tbaa !55
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %141, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef nonnull %31) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %38

38:                                               ; preds = %37, %33, %29
  %39 = icmp eq i32 %25, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %42 = sext i32 %25 to i64
  %43 = mul nsw i64 %42, 200
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.11) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %148, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %47, i64 0, i32 11
  %49 = load i16, ptr %48, align 8, !tbaa !51
  %50 = icmp eq i16 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %53 = mul nsw i64 %42, 56
  %54 = tail call ptr %52(i64 noundef %53, ptr noundef nonnull @.str.12) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %57(ptr noundef nonnull %44) #16
  br label %148

58:                                               ; preds = %46, %51, %38
  %59 = phi ptr [ %44, %51 ], [ %44, %46 ], [ null, %38 ]
  %60 = phi ptr [ %54, %51 ], [ null, %46 ], [ null, %38 ]
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  %63 = icmp eq ptr %62, null
  br i1 %63, label %128, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr %26, align 8, !tbaa !55
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 %25)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = sext i32 %66 to i64
  %70 = mul nsw i64 %69, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %59, ptr nonnull align 8 %62, i64 %70, i1 false)
  %71 = load ptr, ptr %61, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.ParticleData, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !143
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = mul nsw i64 %69, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr nonnull align 8 %73, i64 %76, i1 false)
  br label %77

77:                                               ; preds = %68, %75, %64
  %78 = load ptr, ptr %61, align 8, !tbaa !64
  %79 = getelementptr inbounds %struct.ParticleData, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !368
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %83(ptr noundef nonnull %80) #16
  br label %84

84:                                               ; preds = %82, %77
  %85 = load ptr, ptr %61, align 8, !tbaa !64
  %86 = getelementptr inbounds %struct.ParticleData, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !143
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %90(ptr noundef nonnull %87) #16
  br label %91

91:                                               ; preds = %89, %84
  %92 = icmp sgt i32 %66, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %91, %101
  %94 = phi i32 [ %102, %101 ], [ 0, %91 ]
  %95 = phi ptr [ %103, %101 ], [ %59, %91 ]
  %96 = getelementptr inbounds %struct.ParticleData, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !368
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  store ptr null, ptr %96, align 8, !tbaa !368
  %100 = getelementptr inbounds %struct.ParticleData, ptr %95, i64 0, i32 5
  store i32 0, ptr %100, align 8, !tbaa !327
  br label %101

101:                                              ; preds = %93, %99
  %102 = add nuw nsw i32 %94, 1
  %103 = getelementptr inbounds %struct.ParticleData, ptr %95, i64 1
  %104 = icmp eq i32 %102, %66
  br i1 %104, label %105, label %93, !llvm.loop !546

105:                                              ; preds = %101, %91
  %106 = load i32, ptr %26, align 8, !tbaa !55
  %107 = icmp slt i32 %66, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load ptr, ptr %61, align 8, !tbaa !64
  %110 = sext i32 %66 to i64
  %111 = getelementptr inbounds %struct.ParticleData, ptr %109, i64 %110
  br label %112

112:                                              ; preds = %108, %120
  %113 = phi i32 [ %121, %120 ], [ %66, %108 ]
  %114 = phi ptr [ %122, %120 ], [ %111, %108 ]
  %115 = getelementptr inbounds %struct.ParticleData, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !328
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %119(ptr noundef nonnull %116) #16
  br label %120

120:                                              ; preds = %112, %118
  %121 = add nsw i32 %113, 1
  %122 = getelementptr inbounds %struct.ParticleData, ptr %114, i64 1
  %123 = load i32, ptr %26, align 8, !tbaa !55
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %112, label %125, !llvm.loop !547

125:                                              ; preds = %120, %105
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %127 = load ptr, ptr %61, align 8, !tbaa !64
  tail call void %126(ptr noundef %127) #16
  tail call void @psys_free_pdd(ptr noundef %4) #16
  br label %128

128:                                              ; preds = %125, %58
  store ptr %59, ptr %61, align 8, !tbaa !64
  store i32 %25, ptr %26, align 8, !tbaa !55
  %129 = icmp ne ptr %60, null
  %130 = icmp sgt i32 %25, 0
  %131 = and i1 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128, %132
  %133 = phi i32 [ %138, %132 ], [ 0, %128 ]
  %134 = phi ptr [ %139, %132 ], [ %59, %128 ]
  %135 = phi ptr [ %136, %132 ], [ %60, %128 ]
  %136 = getelementptr inbounds %struct.BoidParticle, ptr %135, i64 1
  %137 = getelementptr inbounds %struct.ParticleData, ptr %134, i64 0, i32 4
  store ptr %135, ptr %137, align 8, !tbaa !143
  %138 = add nuw nsw i32 %133, 1
  %139 = getelementptr inbounds %struct.ParticleData, ptr %134, i64 1
  %140 = icmp eq i32 %138, %25
  br i1 %140, label %141, label %132, !llvm.loop !548

141:                                              ; preds = %132, %128, %24
  %142 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !71
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %146(ptr noundef nonnull %143) #16
  store ptr null, ptr %142, align 8, !tbaa !71
  %147 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  store i32 0, ptr %147, align 8, !tbaa !73
  br label %148

148:                                              ; preds = %141, %145, %40, %56
  ret void
}

declare void @psys_free_pdd(ptr noundef) local_unnamed_addr #3

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @distribute_threads_exec_cb(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !470
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %67

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %19 = zext nneg i32 %10 to i64
  br label %20

20:                                               ; preds = %12, %43
  %21 = phi i64 [ 0, %12 ], [ %44, %43 ]
  %22 = phi ptr [ %14, %12 ], [ %45, %43 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !116
  %24 = getelementptr inbounds %struct.ParticleThreadContext, ptr %23, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %15, align 8, !tbaa !136
  %29 = getelementptr inbounds i32, ptr %25, i64 %21
  %30 = load i32, ptr %29, align 4, !tbaa !95
  %31 = shl nsw i32 %30, 1
  tail call void @BLI_rng_skip(ptr noundef %28, i32 noundef %31) #16
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i32, ptr %16, align 8, !tbaa !118
  %34 = trunc i64 %21 to i32
  %35 = add nsw i32 %33, %34
  %36 = load i32, ptr %17, align 4, !tbaa !119
  %37 = srem i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = trunc i64 %21 to i32
  tail call fastcc void @distribute_threads_exec(ptr noundef nonnull %0, ptr noundef null, ptr noundef %22, i32 noundef %40)
  br label %43

41:                                               ; preds = %32
  %42 = load ptr, ptr %18, align 8, !tbaa !136
  tail call void @BLI_rng_skip(ptr noundef %42, i32 noundef 2) #16
  br label %43

43:                                               ; preds = %39, %41
  %44 = add nuw nsw i64 %21, 1
  %45 = getelementptr inbounds %struct.ChildParticle, ptr %22, i64 1
  %46 = icmp eq i64 %44, %19
  br i1 %46, label %67, label %20, !llvm.loop !549

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %49 = load i32, ptr %48, align 8, !tbaa !55
  %50 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !118
  %52 = icmp slt i32 %51, %49
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds %struct.ParticleData, ptr %55, i64 %56
  %58 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  br label %59

59:                                               ; preds = %53, %59
  %60 = phi i32 [ %51, %53 ], [ %63, %59 ]
  %61 = phi ptr [ %57, %53 ], [ %65, %59 ]
  tail call fastcc void @distribute_threads_exec(ptr noundef nonnull %0, ptr noundef %61, ptr noundef null, i32 noundef %60)
  %62 = load i32, ptr %58, align 4, !tbaa !119
  %63 = add nsw i32 %62, %60
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.ParticleData, ptr %61, i64 %64
  %66 = icmp slt i32 %63, %49
  br i1 %66, label %59, label %67, !llvm.loop !550

67:                                               ; preds = %59, %43, %47, %8
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #3

declare void @psys_particle_on_dm(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mesh_orco_verts_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_mesh_orco_verts_get(ptr noundef) local_unnamed_addr #3

declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @psys_cache_vgroup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @qsort_r(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @distribute_compare_orig_index(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #13 {
  %4 = load i32, ptr %0, align 4, !tbaa !95
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !95
  %8 = load i32, ptr %1, align 4, !tbaa !95
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !95
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = icmp eq i32 %7, %11
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = icmp ult ptr %0, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = icmp ne ptr %0, %1
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %17, %15, %3
  %21 = phi i32 [ -1, %3 ], [ -1, %15 ], [ %19, %17 ], [ 1, %13 ]
  ret i32 %21
}

declare void @BLI_array_randomize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @psys_render_simplify_distribution(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #3

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @isect_axial_line_tri_v3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #3

declare void @BLI_jitterate1(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @BLI_jitterate2(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare double @BLI_rng_get_double(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #8

declare void @BLI_rng_skip(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @distribute_threads_exec(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x [3 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca float, align 4
  %21 = alloca [10 x %struct.KDTreeNearest], align 16
  %22 = alloca [10 x i32], align 16
  %23 = alloca [10 x float], align 16
  %24 = load ptr, ptr %0, align 8, !tbaa !116
  %25 = getelementptr inbounds %struct.ParticleSimulationData, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !412
  %27 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #16
  %29 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 13
  %30 = load i32, ptr %29, align 4, !tbaa !470
  %31 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 14
  %32 = load i32, ptr %31, align 8, !tbaa !471
  %33 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 15
  %34 = load i32, ptr %33, align 4, !tbaa !472
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !132
  %39 = sext i32 %3 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !95
  %42 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  store i32 %41, ptr %42, align 8, !tbaa !98
  %43 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  store float 1.000000e+00, ptr %43, align 8, !tbaa !105
  %44 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 3
  store float 0.000000e+00, ptr %44, align 4, !tbaa !105
  %45 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 2
  store float 0.000000e+00, ptr %45, align 8, !tbaa !105
  %46 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !105
  br label %473

47:                                               ; preds = %4
  %48 = icmp eq i32 %30, 2
  %49 = icmp ult i32 %30, 3
  br i1 %49, label %50, label %312

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !132
  %53 = sext i32 %3 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !95
  %56 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  store i32 %55, ptr %56, align 8, !tbaa !98
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 48
  %58 = load ptr, ptr %57, align 8, !tbaa !444
  %59 = tail call ptr %58(ptr noundef %28, i32 noundef %55, i32 noundef 4) #16
  switch i32 %34, label %193 [
    i32 0, label %60
    i32 1, label %156
  ]

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 12
  %62 = load i32, ptr %61, align 8, !tbaa !468
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.MFace, ptr %59, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !283
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  br i1 %67, label %83, label %69

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  store float 0.000000e+00, ptr %13, align 16, !tbaa !105
  %70 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float 0.000000e+00, ptr %70, align 4, !tbaa !105
  %71 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float 0.000000e+00, ptr %71, align 8, !tbaa !105
  %72 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 1
  store float 1.000000e+00, ptr %72, align 4, !tbaa !105
  %73 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %73, align 16, !tbaa !105
  %74 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %74, align 4, !tbaa !105
  %75 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 2
  store float 1.000000e+00, ptr %75, align 8, !tbaa !105
  %76 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %76, align 4, !tbaa !105
  %77 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %77, align 16, !tbaa !105
  store float 5.000000e-01, ptr %14, align 4, !tbaa !105
  %78 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  store float 5.000000e-01, ptr %78, align 4, !tbaa !105
  %79 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  store float 0.000000e+00, ptr %79, align 4, !tbaa !105
  %80 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 3
  store float 0.000000e+00, ptr %80, align 4, !tbaa !105
  %81 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 3, i64 1
  store float 1.000000e+00, ptr %81, align 8, !tbaa !105
  %82 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %82, align 4, !tbaa !105
  call void @interp_weights_poly_v3(ptr noundef nonnull %68, ptr noundef nonnull %13, i32 noundef 4, ptr noundef nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #16
  br label %193

83:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  store float 0.000000e+00, ptr %11, align 16, !tbaa !105
  %84 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float 0.000000e+00, ptr %84, align 4, !tbaa !105
  %85 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 0.000000e+00, ptr %85, align 8, !tbaa !105
  %86 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1
  store float 1.000000e+00, ptr %86, align 4, !tbaa !105
  %87 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %87, align 16, !tbaa !105
  %88 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %88, align 4, !tbaa !105
  %89 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2
  store float 1.000000e+00, ptr %89, align 8, !tbaa !105
  %90 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %90, align 4, !tbaa !105
  %91 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %91, align 16, !tbaa !105
  store float 0x3FE5555540000000, ptr %12, align 4, !tbaa !105
  %92 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float 0x3FD5555560000000, ptr %92, align 4, !tbaa !105
  %93 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float 0.000000e+00, ptr %93, align 4, !tbaa !105
  call void @interp_weights_poly_v3(ptr noundef nonnull %68, ptr noundef nonnull %11, i32 noundef 3, ptr noundef nonnull %12) #16
  %94 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 3
  store float 0.000000e+00, ptr %94, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #16
  br label %193

95:                                               ; preds = %60
  %96 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !130
  %98 = sext i32 %55 to i64
  %99 = getelementptr inbounds float, ptr %97, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !105
  %101 = fpext float %100 to double
  %102 = sitofp i32 %62 to float
  %103 = fpext float %102 to double
  %104 = tail call double @fmod(double noundef %101, double noundef %103) #16
  %105 = fptrunc double %104 to float
  %106 = load ptr, ptr %96, align 8, !tbaa !130
  %107 = getelementptr inbounds float, ptr %106, i64 %98
  store float %105, ptr %107, align 4, !tbaa !105
  %108 = fcmp uno float %105, 0.000000e+00
  br i1 %108, label %193, label %109

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !129
  %112 = fptosi float %105 to i32
  %113 = shl nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, ptr %111, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !105
  %117 = or disjoint i32 %113, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, ptr %111, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !105
  %121 = getelementptr inbounds %struct.MFace, ptr %59, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !283
  %123 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %109
  %126 = fadd float %116, %120
  %127 = fcmp ogt float %126, 1.000000e+00
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = fsub float 1.000000e+00, %120
  br label %132

130:                                              ; preds = %125
  %131 = fsub float 1.000000e+00, %116
  br label %132

132:                                              ; preds = %130, %128, %109
  %133 = phi float [ %120, %109 ], [ %129, %128 ], [ %120, %130 ]
  %134 = phi float [ %116, %109 ], [ %116, %128 ], [ %131, %130 ]
  store float 0.000000e+00, ptr %9, align 16, !tbaa !105
  %135 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0.000000e+00, ptr %135, align 4, !tbaa !105
  %136 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %136, align 8, !tbaa !105
  %137 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 1
  store float 1.000000e+00, ptr %137, align 4, !tbaa !105
  %138 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %138, align 16, !tbaa !105
  %139 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %139, align 4, !tbaa !105
  %140 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 2
  store float 1.000000e+00, ptr %140, align 8, !tbaa !105
  %141 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %141, align 4, !tbaa !105
  %142 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %142, align 16, !tbaa !105
  store float %134, ptr %10, align 4, !tbaa !105
  %143 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %133, ptr %143, align 4, !tbaa !105
  %144 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %144, align 4, !tbaa !105
  br i1 %124, label %149, label %145

145:                                              ; preds = %132
  %146 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 3
  store float 0.000000e+00, ptr %146, align 4, !tbaa !105
  %147 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 3, i64 1
  store float 1.000000e+00, ptr %147, align 8, !tbaa !105
  %148 = getelementptr inbounds [4 x [3 x float]], ptr %9, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %148, align 4, !tbaa !105
  call void @interp_weights_poly_v3(ptr noundef nonnull %123, ptr noundef nonnull %9, i32 noundef 4, ptr noundef nonnull %10) #16
  br label %151

149:                                              ; preds = %132
  call void @interp_weights_poly_v3(ptr noundef nonnull %123, ptr noundef nonnull %9, i32 noundef 3, ptr noundef nonnull %10) #16
  %150 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 3
  store float 0.000000e+00, ptr %150, align 4, !tbaa !105
  br label %151

151:                                              ; preds = %145, %149
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #16
  %152 = load ptr, ptr %96, align 8, !tbaa !130
  %153 = getelementptr inbounds float, ptr %152, i64 %98
  %154 = load float, ptr %153, align 4, !tbaa !105
  %155 = fadd float %154, 1.000000e+00
  store float %155, ptr %153, align 4, !tbaa !105
  br label %193

156:                                              ; preds = %50
  %157 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !136
  %159 = tail call float @BLI_rng_get_float(ptr noundef %158) #16
  %160 = load ptr, ptr %157, align 8, !tbaa !136
  %161 = tail call float @BLI_rng_get_float(ptr noundef %160) #16
  %162 = getelementptr inbounds %struct.MFace, ptr %59, i64 0, i32 3
  %163 = load i32, ptr %162, align 4, !tbaa !283
  %164 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %156
  %167 = fadd float %159, %161
  %168 = fcmp ogt float %167, 1.000000e+00
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = fsub float 1.000000e+00, %161
  br label %173

171:                                              ; preds = %166
  %172 = fsub float 1.000000e+00, %159
  br label %173

173:                                              ; preds = %171, %169, %156
  %174 = phi float [ %161, %156 ], [ %170, %169 ], [ %161, %171 ]
  %175 = phi float [ %159, %156 ], [ %159, %169 ], [ %172, %171 ]
  store float 0.000000e+00, ptr %7, align 16, !tbaa !105
  %176 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %176, align 4, !tbaa !105
  %177 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %177, align 8, !tbaa !105
  %178 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1
  store float 1.000000e+00, ptr %178, align 4, !tbaa !105
  %179 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %179, align 16, !tbaa !105
  %180 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %180, align 4, !tbaa !105
  %181 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2
  store float 1.000000e+00, ptr %181, align 8, !tbaa !105
  %182 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %182, align 4, !tbaa !105
  %183 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %183, align 16, !tbaa !105
  store float %175, ptr %8, align 4, !tbaa !105
  %184 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %174, ptr %184, align 4, !tbaa !105
  %185 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %185, align 4, !tbaa !105
  br i1 %165, label %190, label %186

186:                                              ; preds = %173
  %187 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3
  store float 0.000000e+00, ptr %187, align 4, !tbaa !105
  %188 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3, i64 1
  store float 1.000000e+00, ptr %188, align 8, !tbaa !105
  %189 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %189, align 4, !tbaa !105
  call void @interp_weights_poly_v3(ptr noundef nonnull %164, ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull %8) #16
  br label %192

190:                                              ; preds = %173
  call void @interp_weights_poly_v3(ptr noundef nonnull %164, ptr noundef nonnull %7, i32 noundef 3, ptr noundef nonnull %8) #16
  %191 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 3
  store float 0.000000e+00, ptr %191, align 4, !tbaa !105
  br label %192

192:                                              ; preds = %186, %190
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #16
  br label %193

193:                                              ; preds = %83, %69, %151, %95, %50, %192
  %194 = phi i32 [ 2, %50 ], [ 0, %192 ], [ 2, %69 ], [ 2, %83 ], [ 2, %95 ], [ 2, %151 ]
  %195 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 12
  store float 0.000000e+00, ptr %195, align 8, !tbaa !147
  br i1 %48, label %196, label %473

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 50
  %198 = load ptr, ptr %197, align 8, !tbaa !88
  %199 = call ptr %198(ptr noundef %28, i32 noundef 0) #16
  %200 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 25
  %201 = load ptr, ptr %200, align 8, !tbaa !89
  %202 = call i32 %201(ptr noundef %28) #16
  %203 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  call void @psys_interpolate_face(ptr noundef %199, ptr noundef %59, ptr noundef null, ptr noundef null, ptr noundef nonnull %203, ptr noundef nonnull %17, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %204 = load float, ptr %15, align 4, !tbaa !105
  %205 = getelementptr inbounds float, ptr %15, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !105
  %207 = fmul float %206, %206
  %208 = call float @llvm.fmuladd.f32(float %204, float %204, float %207)
  %209 = getelementptr inbounds float, ptr %15, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !105
  %211 = call float @llvm.fmuladd.f32(float %210, float %210, float %208)
  %212 = fcmp ogt float %211, 0x38AA95A5C0000000
  br i1 %212, label %213, label %222

213:                                              ; preds = %196
  %214 = call float @sqrtf(float noundef %211) #16
  %215 = fdiv float 1.000000e+00, %214
  %216 = load float, ptr %15, align 4, !tbaa !105
  %217 = fmul float %216, %215
  store float %217, ptr %15, align 4, !tbaa !105
  %218 = load float, ptr %205, align 4, !tbaa !105
  %219 = fmul float %215, %218
  store float %219, ptr %205, align 4, !tbaa !105
  %220 = load float, ptr %209, align 4, !tbaa !105
  %221 = fmul float %215, %220
  br label %223

222:                                              ; preds = %196
  store float 0.000000e+00, ptr %15, align 4, !tbaa !105
  store float 0.000000e+00, ptr %205, align 4, !tbaa !105
  br label %223

223:                                              ; preds = %213, %222
  %224 = phi float [ 0.000000e+00, %222 ], [ %221, %213 ]
  store float %224, ptr %209, align 4, !tbaa !105
  %225 = load float, ptr %15, align 4, !tbaa !105
  %226 = fmul float %225, -1.000000e+02
  store float %226, ptr %15, align 4, !tbaa !105
  %227 = load float, ptr %205, align 4, !tbaa !105
  %228 = fmul float %227, -1.000000e+02
  store float %228, ptr %205, align 4, !tbaa !105
  %229 = fmul float %224, -1.000000e+02
  store float %229, ptr %209, align 4, !tbaa !105
  %230 = load float, ptr %17, align 4, !tbaa !105
  %231 = fadd float %226, %230
  store float %231, ptr %18, align 4, !tbaa !105
  %232 = getelementptr inbounds float, ptr %17, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !105
  %234 = fadd float %228, %233
  %235 = getelementptr inbounds float, ptr %18, i64 1
  store float %234, ptr %235, align 4, !tbaa !105
  %236 = getelementptr inbounds float, ptr %17, i64 2
  %237 = load float, ptr %236, align 4, !tbaa !105
  %238 = fadd float %229, %237
  %239 = getelementptr inbounds float, ptr %18, i64 2
  store float %238, ptr %239, align 4, !tbaa !105
  %240 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 52
  %241 = load ptr, ptr %240, align 8, !tbaa !91
  %242 = call ptr %241(ptr noundef %28, i32 noundef 4) #16
  %243 = icmp sgt i32 %202, 0
  br i1 %243, label %244, label %294

244:                                              ; preds = %223, %286
  %245 = phi float [ %288, %286 ], [ 2.000000e+00, %223 ]
  %246 = phi i32 [ %289, %286 ], [ 0, %223 ]
  %247 = phi ptr [ %290, %286 ], [ %242, %223 ]
  %248 = phi i32 [ %287, %286 ], [ 0, %223 ]
  %249 = load i32, ptr %56, align 8, !tbaa !98
  %250 = icmp eq i32 %246, %249
  br i1 %250, label %286, label %251

251:                                              ; preds = %244
  %252 = load i32, ptr %247, align 4, !tbaa !279
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.MVert, ptr %199, i64 %253
  %255 = getelementptr inbounds %struct.MFace, ptr %247, i64 0, i32 1
  %256 = load i32, ptr %255, align 4, !tbaa !281
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.MVert, ptr %199, i64 %257
  %259 = getelementptr inbounds %struct.MFace, ptr %247, i64 0, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !282
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.MVert, ptr %199, i64 %261
  %263 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %258, ptr noundef %262, ptr noundef %254, ptr noundef nonnull %20, ptr noundef null) #16
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %251
  %266 = load float, ptr %20, align 4, !tbaa !105
  %267 = fcmp olt float %266, %245
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = fmul float %266, 5.000000e+01
  store float %269, ptr %195, align 8, !tbaa !147
  br label %270

270:                                              ; preds = %265, %268, %251
  %271 = phi i32 [ 1, %268 ], [ %248, %265 ], [ %248, %251 ]
  %272 = phi float [ %266, %268 ], [ %245, %265 ], [ %245, %251 ]
  %273 = getelementptr inbounds %struct.MFace, ptr %247, i64 0, i32 3
  %274 = load i32, ptr %273, align 4, !tbaa !283
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %270
  %277 = zext i32 %274 to i64
  %278 = getelementptr inbounds %struct.MVert, ptr %199, i64 %277
  %279 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %278, ptr noundef %254, ptr noundef %262, ptr noundef nonnull %20, ptr noundef null) #16
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = load float, ptr %20, align 4, !tbaa !105
  %283 = fcmp olt float %282, %272
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = fmul float %282, 5.000000e+01
  store float %285, ptr %195, align 8, !tbaa !147
  br label %286

286:                                              ; preds = %270, %281, %284, %276, %244
  %287 = phi i32 [ %248, %244 ], [ 1, %284 ], [ %271, %281 ], [ %271, %276 ], [ %271, %270 ]
  %288 = phi float [ %245, %244 ], [ %282, %284 ], [ %272, %281 ], [ %272, %276 ], [ %272, %270 ]
  %289 = add nuw nsw i32 %246, 1
  %290 = getelementptr inbounds %struct.MFace, ptr %247, i64 1
  %291 = icmp eq i32 %289, %202
  br i1 %291, label %292, label %244, !llvm.loop !551

292:                                              ; preds = %286
  %293 = icmp eq i32 %287, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %223, %292
  store float 0.000000e+00, ptr %195, align 8, !tbaa !147
  br label %473

295:                                              ; preds = %292
  switch i32 %34, label %473 [
    i32 0, label %296
    i32 1, label %308
  ]

296:                                              ; preds = %295
  %297 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 6
  %298 = load ptr, ptr %297, align 8, !tbaa !129
  %299 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 12
  %300 = load i32, ptr %299, align 8, !tbaa !468
  %301 = shl nsw i32 %300, 1
  %302 = srem i32 %3, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, ptr %298, i64 %303
  %305 = load float, ptr %304, align 4, !tbaa !105
  %306 = load float, ptr %195, align 8, !tbaa !147
  %307 = fmul float %305, %306
  store float %307, ptr %195, align 8, !tbaa !147
  br label %473

308:                                              ; preds = %295
  %309 = call float @BLI_frand() #16
  %310 = load float, ptr %195, align 8, !tbaa !147
  %311 = fmul float %309, %310
  store float %311, ptr %195, align 8, !tbaa !147
  br label %473

312:                                              ; preds = %47
  %313 = icmp eq i32 %30, 4
  br i1 %313, label %314, label %473

314:                                              ; preds = %312
  %315 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 10
  %316 = load ptr, ptr %315, align 8, !tbaa !132
  %317 = sext i32 %3 to i64
  %318 = getelementptr inbounds i32, ptr %316, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !95
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %324, label %321

321:                                              ; preds = %314
  store i32 0, ptr %2, align 4, !tbaa !417
  %322 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4
  %323 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %323, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %322, i8 0, i64 16, i1 false)
  br label %471

324:                                              ; preds = %314
  %325 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 48
  %326 = load ptr, ptr %325, align 8, !tbaa !444
  %327 = tail call ptr %326(ptr noundef %28, i32 noundef %319, i32 noundef 4) #16
  %328 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !136
  %330 = tail call float @BLI_rng_get_float(ptr noundef %329) #16
  %331 = load ptr, ptr %328, align 8, !tbaa !136
  %332 = tail call float @BLI_rng_get_float(ptr noundef %331) #16
  %333 = getelementptr inbounds %struct.MFace, ptr %327, i64 0, i32 3
  %334 = load i32, ptr %333, align 4, !tbaa !283
  %335 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %336 = icmp eq i32 %334, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %324
  %338 = fadd float %330, %332
  %339 = fcmp ogt float %338, 1.000000e+00
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = fsub float 1.000000e+00, %332
  br label %344

342:                                              ; preds = %337
  %343 = fsub float 1.000000e+00, %330
  br label %344

344:                                              ; preds = %342, %340, %324
  %345 = phi float [ %332, %324 ], [ %341, %340 ], [ %332, %342 ]
  %346 = phi float [ %330, %324 ], [ %330, %340 ], [ %343, %342 ]
  store float 0.000000e+00, ptr %5, align 16, !tbaa !105
  %347 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0.000000e+00, ptr %347, align 4, !tbaa !105
  %348 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %348, align 8, !tbaa !105
  %349 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  store float 1.000000e+00, ptr %349, align 4, !tbaa !105
  %350 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %350, align 16, !tbaa !105
  %351 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %351, align 4, !tbaa !105
  %352 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  store float 1.000000e+00, ptr %352, align 8, !tbaa !105
  %353 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %353, align 4, !tbaa !105
  %354 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %354, align 16, !tbaa !105
  store float %346, ptr %6, align 4, !tbaa !105
  %355 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %345, ptr %355, align 4, !tbaa !105
  %356 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %356, align 4, !tbaa !105
  br i1 %336, label %361, label %357

357:                                              ; preds = %344
  %358 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  store float 0.000000e+00, ptr %358, align 4, !tbaa !105
  %359 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 1
  store float 1.000000e+00, ptr %359, align 8, !tbaa !105
  %360 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %360, align 4, !tbaa !105
  call void @interp_weights_poly_v3(ptr noundef nonnull %335, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %6) #16
  br label %363

361:                                              ; preds = %344
  call void @interp_weights_poly_v3(ptr noundef nonnull %335, ptr noundef nonnull %5, i32 noundef 3, ptr noundef nonnull %6) #16
  %362 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4, i64 3
  store float 0.000000e+00, ptr %362, align 4, !tbaa !105
  br label %363

363:                                              ; preds = %357, %361
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #16
  %364 = load ptr, ptr %315, align 8, !tbaa !132
  %365 = getelementptr inbounds i32, ptr %364, i64 %317
  %366 = load i32, ptr %365, align 4, !tbaa !95
  store i32 %366, ptr %2, align 4, !tbaa !417
  %367 = getelementptr inbounds %struct.ParticleThreadContext, ptr %24, i64 0, i32 3
  %368 = load ptr, ptr %367, align 8, !tbaa !135
  %369 = icmp eq ptr %368, null
  br i1 %369, label %471, label %370

370:                                              ; preds = %363
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %23) #16
  %371 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 5
  %372 = load float, ptr %371, align 4, !tbaa !552
  call void @psys_particle_on_dm(ptr noundef %28, i32 noundef %32, i32 noundef %366, i32 noundef -2, ptr noundef nonnull %335, float noundef %372, ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef null, ptr noundef null, ptr noundef nonnull %16, ptr noundef null) #16
  %373 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %374 = load ptr, ptr %373, align 8, !tbaa !77
  call void @BKE_mesh_orco_verts_transform(ptr noundef %374, ptr noundef nonnull %16, i32 noundef 1, i32 noundef 1) #16
  %375 = load ptr, ptr %367, align 8, !tbaa !135
  %376 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %375, ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %21, i32 noundef 3) #16
  %377 = add nsw i32 %376, -1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %21, i64 0, i64 %378, i32 1
  %380 = load float, ptr %379, align 4, !tbaa !553
  %381 = icmp sgt i32 %376, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %370
  %383 = zext nneg i32 %376 to i64
  br label %404

384:                                              ; preds = %404
  %385 = trunc i64 %417 to i32
  br label %386

386:                                              ; preds = %384, %370
  %387 = phi i32 [ 0, %370 ], [ %385, %384 ]
  %388 = icmp ult i32 %387, 10
  br i1 %388, label %389, label %419

389:                                              ; preds = %386
  %390 = shl nuw nsw i32 %387, 2
  %391 = zext nneg i32 %390 to i64
  %392 = getelementptr i8, ptr %22, i64 %391
  %393 = sub nsw i32 9, %387
  %394 = zext i32 %393 to i64
  %395 = shl nuw nsw i64 %394, 2
  %396 = add nuw nsw i64 %395, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %392, i8 -1, i64 %396, i1 false), !tbaa !95
  %397 = shl nuw nsw i32 %387, 2
  %398 = zext nneg i32 %397 to i64
  %399 = getelementptr i8, ptr %23, i64 %398
  %400 = sub nsw i32 9, %387
  %401 = zext i32 %400 to i64
  %402 = shl nuw nsw i64 %401, 2
  %403 = add nuw nsw i64 %402, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %399, i8 0, i64 %403, i1 false), !tbaa !105
  br label %419

404:                                              ; preds = %382, %404
  %405 = phi i64 [ 0, %382 ], [ %417, %404 ]
  %406 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %21, i64 0, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !555
  %408 = getelementptr inbounds [10 x i32], ptr %22, i64 0, i64 %405
  store i32 %407, ptr %408, align 4, !tbaa !95
  %409 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %21, i64 0, i64 %405, i32 1
  %410 = load float, ptr %409, align 4, !tbaa !553
  %411 = fmul float %410, -6.000000e+00
  %412 = fdiv float %411, %380
  %413 = fpext float %412 to double
  %414 = call double @exp2(double %413) #16
  %415 = fptrunc double %414 to float
  %416 = getelementptr inbounds [10 x float], ptr %23, i64 0, i64 %405
  store float %415, ptr %416, align 4, !tbaa !105
  %417 = add nuw nsw i64 %405, 1
  %418 = icmp eq i64 %417, %383
  br i1 %418, label %384, label %404, !llvm.loop !556

419:                                              ; preds = %389, %386
  %420 = icmp sgt i32 %376, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %419
  %422 = zext nneg i32 %376 to i64
  br label %429

423:                                              ; preds = %444, %419
  %424 = phi i32 [ 0, %419 ], [ %445, %444 ]
  %425 = phi float [ 0.000000e+00, %419 ], [ %446, %444 ]
  %426 = icmp slt i32 %424, 4
  br i1 %426, label %427, label %458

427:                                              ; preds = %423
  %428 = sext i32 %424 to i64
  br label %451

429:                                              ; preds = %421, %444
  %430 = phi i64 [ 0, %421 ], [ %447, %444 ]
  %431 = phi float [ 0.000000e+00, %421 ], [ %446, %444 ]
  %432 = phi i32 [ 0, %421 ], [ %445, %444 ]
  %433 = getelementptr inbounds [10 x i32], ptr %22, i64 0, i64 %430
  %434 = load i32, ptr %433, align 4, !tbaa !95
  %435 = icmp sgt i32 %434, -1
  br i1 %435, label %436, label %444

436:                                              ; preds = %429
  %437 = sext i32 %432 to i64
  %438 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2, i64 %437
  store i32 %434, ptr %438, align 4, !tbaa !95
  %439 = getelementptr inbounds [10 x float], ptr %23, i64 0, i64 %430
  %440 = load float, ptr %439, align 4, !tbaa !105
  %441 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 3, i64 %437
  store float %440, ptr %441, align 4, !tbaa !105
  %442 = fadd float %431, %440
  %443 = add nsw i32 %432, 1
  br label %444

444:                                              ; preds = %429, %436
  %445 = phi i32 [ %443, %436 ], [ %432, %429 ]
  %446 = phi float [ %442, %436 ], [ %431, %429 ]
  %447 = add nuw nsw i64 %430, 1
  %448 = icmp ult i64 %447, %422
  %449 = icmp slt i32 %445, 4
  %450 = select i1 %448, i1 %449, i1 false
  br i1 %450, label %429, label %423, !llvm.loop !557

451:                                              ; preds = %427, %451
  %452 = phi i64 [ %428, %427 ], [ %455, %451 ]
  %453 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2, i64 %452
  store i32 -1, ptr %453, align 4, !tbaa !95
  %454 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 3, i64 %452
  store float 0.000000e+00, ptr %454, align 4, !tbaa !105
  %455 = add nsw i64 %452, 1
  %456 = and i64 %455, 4294967295
  %457 = icmp eq i64 %456, 4
  br i1 %457, label %458, label %451, !llvm.loop !558

458:                                              ; preds = %451, %423
  %459 = fcmp ogt float %425, 0.000000e+00
  br i1 %459, label %460, label %467

460:                                              ; preds = %458, %460
  %461 = phi i64 [ %465, %460 ], [ 0, %458 ]
  %462 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 3, i64 %461
  %463 = load float, ptr %462, align 4, !tbaa !105
  %464 = fdiv float %463, %425
  store float %464, ptr %462, align 4, !tbaa !105
  %465 = add nuw nsw i64 %461, 1
  %466 = icmp eq i64 %465, 4
  br i1 %466, label %467, label %460, !llvm.loop !559

467:                                              ; preds = %460, %458
  %468 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  %469 = load i32, ptr %468, align 4, !tbaa !95
  %470 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 1
  store i32 %469, ptr %470, align 4, !tbaa !414
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %21) #16
  br label %471

471:                                              ; preds = %363, %467, %321
  %472 = phi i32 [ 2, %321 ], [ 0, %467 ], [ 0, %363 ]
  br i1 %320, label %473, label %479

473:                                              ; preds = %193, %296, %308, %295, %294, %471, %312, %36
  %474 = phi i32 [ 2, %36 ], [ %472, %471 ], [ 2, %312 ], [ %194, %294 ], [ %194, %295 ], [ %194, %308 ], [ %194, %296 ], [ %194, %193 ]
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !136
  call void @BLI_rng_skip(ptr noundef %478, i32 noundef %474) #16
  br label %479

479:                                              ; preds = %473, %476, %471
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  ret void
}

declare void @psys_interpolate_face(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @isect_line_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @psys_find_parents(ptr noundef) local_unnamed_addr #3

declare i32 @psys_in_edit_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @psys_cache_paths(ptr noundef, float noundef) local_unnamed_addr #3

declare void @psys_cache_child_paths(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

declare double @exp2(double) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { cold }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !40, i64 296, !40, i64 300, !40, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !37, i64 348, !37, i64 540, !42, i64 564, !42, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !40, i64 648, !40, i64 652}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"float", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!35, !36, i64 568}
!44 = !{!35, !36, i64 576}
!45 = !{!46, !41, i64 16}
!46 = !{!"PointCache", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !42, i64 60, !42, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !36, i64 1280, !39, i64 1288, !36, i64 1304, !36, i64 1312}
!47 = !{!48, !42, i64 160}
!48 = !{!"ParticleSettings", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !41, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !41, i64 176, !41, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 248, !40, i64 256, !40, i64 260, !40, i64 264, !42, i64 268, !42, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !37, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !37, i64 342, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !37, i64 376, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !37, i64 416, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !41, i64 444, !41, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !40, i64 480, !40, i64 484, !40, i64 488, !40, i64 492, !40, i64 496, !40, i64 500, !40, i64 504, !40, i64 508, !40, i64 512, !40, i64 516, !40, i64 520, !40, i64 524, !40, i64 528, !40, i64 532, !40, i64 536, !40, i64 540, !40, i64 544, !40, i64 548, !37, i64 552, !40, i64 560, !40, i64 564, !41, i64 568, !41, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !42, i64 792, !37, i64 794}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!50 = !{!35, !41, i64 316}
!51 = !{!48, !42, i64 168}
!52 = !{!48, !41, i64 444}
!53 = !{!48, !42, i64 188}
!54 = !{!48, !42, i64 210}
!55 = !{!35, !41, i64 320}
!56 = !{!48, !42, i64 164}
!57 = !{!48, !42, i64 162}
!58 = !{!48, !41, i64 332}
!59 = !{!48, !41, i64 324}
!60 = !{!35, !41, i64 324}
!61 = !{!35, !42, i64 344}
!62 = !{!35, !36, i64 40}
!63 = !{!35, !36, i64 48}
!64 = !{!35, !36, i64 24}
!65 = !{!66, !42, i64 196}
!66 = !{!"ParticleData", !67, i64 0, !67, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !41, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !41, i64 152, !41, i64 156, !37, i64 160, !40, i64 176, !40, i64 180, !40, i64 184, !41, i64 188, !41, i64 192, !42, i64 196, !42, i64 198}
!67 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !40, i64 52}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!35, !36, i64 32}
!72 = !{!36, !36, i64 0}
!73 = !{!35, !41, i64 328}
!74 = !{!35, !36, i64 608}
!75 = !{!35, !41, i64 620}
!76 = !{!35, !41, i64 616}
!77 = !{!78, !36, i64 296}
!78 = !{!"Object", !49, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !79, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !40, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !80, i64 1304, !80, i64 1312, !41, i64 1320, !41, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!79 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!80 = !{!"long", !37, i64 0}
!81 = !{!48, !42, i64 792}
!82 = !{!83, !41, i64 1024}
!83 = !{!"DerivedMesh", !84, i64 0, !84, i64 200, !84, i64 400, !84, i64 600, !84, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !36, i64 1032, !36, i64 1040, !41, i64 1048, !40, i64 1052, !41, i64 1056, !41, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!84 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!85 = !{!83, !36, i64 1104}
!86 = !{!87, !41, i64 1280}
!87 = !{!"Mesh", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !84, i64 480, !84, i64 680, !84, i64 880, !84, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !42, i64 1348, !42, i64 1350, !40, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !42, i64 1366, !36, i64 1368}
!88 = !{!83, !36, i64 1320}
!89 = !{!83, !36, i64 1120}
!90 = !{!87, !41, i64 1296}
!91 = !{!83, !36, i64 1336}
!92 = !{!83, !36, i64 1352}
!93 = !{!94, !36, i64 8}
!94 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!95 = !{!41, !41, i64 0}
!96 = !{!94, !36, i64 0}
!97 = distinct !{!97, !69, !70}
!98 = !{!66, !41, i64 152}
!99 = !{!66, !41, i64 156}
!100 = distinct !{!100, !69, !70}
!101 = distinct !{!101, !69, !70}
!102 = !{!103, !36, i64 0}
!103 = !{!"ParticleSimulationData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40}
!104 = !{i64 0, i64 8, !72, i64 8, i64 8, !72, i64 16, i64 8, !72, i64 24, i64 8, !72, i64 32, i64 8, !72, i64 40, i64 4, !105}
!105 = !{!40, !40, i64 0}
!106 = !{!107, !36, i64 24}
!107 = !{!"ParticleThreadContext", !103, i64 0, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !40, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240}
!108 = !{!109, !36, i64 120}
!109 = !{!"ParticleSystemModifierData", !110, i64 0, !36, i64 112, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142}
!110 = !{!"ModifierData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!111 = !{!107, !36, i64 48}
!112 = !{!103, !36, i64 8}
!113 = !{!103, !36, i64 16}
!114 = !{!48, !42, i64 212}
!115 = !{!107, !36, i64 56}
!116 = !{!117, !36, i64 0}
!117 = !{!"ParticleThread", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28}
!118 = !{!117, !41, i64 24}
!119 = !{!117, !41, i64 28}
!120 = distinct !{!120, !69, !70}
!121 = !{!107, !36, i64 192}
!122 = !{!107, !36, i64 200}
!123 = !{!107, !36, i64 208}
!124 = !{!107, !36, i64 216}
!125 = !{!107, !36, i64 224}
!126 = !{!107, !36, i64 232}
!127 = !{!107, !36, i64 16}
!128 = !{!35, !36, i64 136}
!129 = !{!107, !36, i64 88}
!130 = !{!107, !36, i64 96}
!131 = !{!107, !36, i64 104}
!132 = !{!107, !36, i64 120}
!133 = !{!107, !36, i64 128}
!134 = !{!107, !36, i64 72}
!135 = !{!107, !36, i64 64}
!136 = !{!117, !36, i64 8}
!137 = !{!117, !36, i64 16}
!138 = distinct !{!138, !69, !70}
!139 = !{!48, !40, i64 284}
!140 = !{!48, !40, i64 288}
!141 = !{!66, !40, i64 140}
!142 = !{!66, !41, i64 192}
!143 = !{!66, !36, i64 128}
!144 = !{!48, !40, i64 364}
!145 = !{!48, !42, i64 170}
!146 = !{!103, !36, i64 24}
!147 = !{!66, !40, i64 176}
!148 = !{!48, !40, i64 368}
!149 = !{!48, !40, i64 356}
!150 = !{!35, !41, i64 308}
!151 = !{!48, !42, i64 172}
!152 = !{!48, !40, i64 396}
!153 = !{!48, !40, i64 352}
!154 = !{!48, !40, i64 348}
!155 = !{!48, !40, i64 360}
!156 = !{!157, !40, i64 0}
!157 = !{!"ParticleTexture", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56}
!158 = !{!48, !40, i64 392}
!159 = !{!48, !40, i64 400}
!160 = !{!48, !40, i64 388}
!161 = !{!35, !40, i64 296}
!162 = !{!157, !40, i64 12}
!163 = !{!157, !40, i64 4}
!164 = !{!165, !41, i64 4628}
!165 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !166, i64 280, !175, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !39, i64 4384, !176, i64 4400, !177, i64 4416, !180, i64 4600, !36, i64 4608, !181, i64 4616, !36, i64 4640, !80, i64 4648, !80, i64 4656, !168, i64 4664, !169, i64 4824, !182, i64 4888, !36, i64 4952}
!166 = !{!"RenderData", !167, i64 0, !36, i64 248, !36, i64 256, !170, i64 264, !171, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !172, i64 544, !172, i64 560, !173, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !41, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !40, i64 660, !40, i64 664, !42, i64 668, !42, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !40, i64 2528, !40, i64 2532, !42, i64 2536, !42, i64 2538, !40, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !41, i64 2576, !40, i64 2580, !37, i64 2584, !174, i64 2616, !41, i64 3976, !41, i64 3980}
!167 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !168, i64 24, !169, i64 184}
!168 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!169 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!170 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!171 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !40, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!172 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!173 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!174 = !{!"BakeData", !167, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!175 = !{!"AudioData", !41, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !40, i64 24, !40, i64 28}
!176 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!177 = !{!"GameData", !176, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !178, i64 40, !42, i64 64, !42, i64 66, !40, i64 68, !179, i64 72, !40, i64 128, !40, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!178 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!179 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !41, i64 40, !40, i64 44, !40, i64 48, !42, i64 52, !42, i64 54}
!180 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!181 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!182 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!183 = !{!48, !36, i64 128}
!184 = !{!185, !40, i64 24}
!185 = !{!"BoidSettings", !41, i64 0, !41, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !39, i64 88}
!186 = !{!187, !40, i64 8}
!187 = !{!"BoidParticle", !36, i64 0, !188, i64 8, !37, i64 28, !37, i64 40, !40, i64 52}
!188 = !{!"BoidData", !40, i64 0, !37, i64 4, !42, i64 16, !42, i64 18}
!189 = !{!187, !42, i64 26}
!190 = !{!185, !36, i64 88}
!191 = !{!192, !41, i64 96}
!192 = !{!"BoidState", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 32, !39, i64 48, !37, i64 64, !41, i64 96, !41, i64 100, !41, i64 104, !40, i64 108, !41, i64 112, !41, i64 116, !40, i64 120, !40, i64 124}
!193 = !{!187, !42, i64 24}
!194 = !{!66, !40, i64 144}
!195 = !{!48, !40, i64 292}
!196 = !{!48, !40, i64 296}
!197 = !{!66, !40, i64 148}
!198 = !{!157, !40, i64 8}
!199 = !{!46, !36, i64 1288}
!200 = !{!66, !42, i64 198}
!201 = !{!66, !40, i64 52}
!202 = !{!78, !36, i64 216}
!203 = !{!78, !36, i64 120}
!204 = !{!205, !36, i64 16}
!205 = !{!"ParticleTarget", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36}
!206 = !{!205, !41, i64 24}
!207 = !{!205, !42, i64 28}
!208 = !{!35, !36, i64 152}
!209 = !{!205, !40, i64 36}
!210 = !{!205, !36, i64 0}
!211 = distinct !{!211, !69, !70}
!212 = !{!48, !41, i64 572}
!213 = !{!39, !36, i64 0}
!214 = !{!165, !41, i64 688}
!215 = !{!35, !36, i64 624}
!216 = !{!35, !40, i64 300}
!217 = distinct !{!217, !69, !70}
!218 = distinct !{!218, !69, !70}
!219 = !{!220, !36, i64 104}
!220 = !{!"SPHData", !37, i64 0, !36, i64 80, !40, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !41, i64 116, !40, i64 120, !37, i64 124, !36, i64 136, !36, i64 144}
!221 = distinct !{!221, !69, !70}
!222 = !{!220, !36, i64 96}
!223 = !{!220, !36, i64 80}
!224 = !{!220, !40, i64 88}
!225 = !{!48, !36, i64 136}
!226 = !{!227, !42, i64 60}
!227 = !{!"SPHFluidSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 56, !42, i64 60, !37, i64 62}
!228 = !{!220, !36, i64 136}
!229 = !{!220, !36, i64 144}
!230 = !{!220, !40, i64 112}
!231 = !{!227, !40, i64 28}
!232 = !{!227, !40, i64 32}
!233 = !{!227, !41, i64 52}
!234 = !{!227, !40, i64 4}
!235 = !{!227, !40, i64 0}
!236 = !{!66, !40, i64 180}
!237 = !{!227, !40, i64 44}
!238 = !{!227, !40, i64 8}
!239 = !{!227, !40, i64 36}
!240 = !{!227, !40, i64 40}
!241 = !{!242, !36, i64 8200}
!242 = !{!"SPHRangeData", !37, i64 0, !41, i64 8192, !36, i64 8200, !36, i64 8208, !36, i64 8216, !40, i64 8224, !40, i64 8228, !40, i64 8232, !41, i64 8236}
!243 = !{!242, !40, i64 8224}
!244 = !{!242, !36, i64 8216}
!245 = !{!242, !40, i64 8228}
!246 = !{!242, !41, i64 8192}
!247 = !{!242, !36, i64 8208}
!248 = !{!48, !40, i64 404}
!249 = !{!242, !40, i64 8232}
!250 = !{!48, !41, i64 152}
!251 = !{!242, !41, i64 8236}
!252 = !{!35, !36, i64 632}
!253 = distinct !{!253, !69, !70}
!254 = !{!255, !36, i64 0}
!255 = !{!"SPHNeighbor", !36, i64 0, !41, i64 8}
!256 = !{!255, !41, i64 8}
!257 = !{!67, !40, i64 52}
!258 = !{!259, !40, i64 0}
!259 = !{!"ParticleSpring", !40, i64 0, !37, i64 4, !41, i64 12}
!260 = !{!227, !41, i64 56}
!261 = !{!66, !40, i64 108}
!262 = distinct !{!262, !69, !70}
!263 = !{!227, !40, i64 48}
!264 = !{!220, !41, i64 116}
!265 = !{!48, !42, i64 340}
!266 = !{!66, !40, i64 184}
!267 = distinct !{!267, !69, !70}
!268 = !{!48, !40, i64 408}
!269 = !{!270, !36, i64 40}
!270 = !{!"ParticleCollision", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !41, i64 72, !271, i64 80, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !37, i64 268, !37, i64 280, !37, i64 292, !37, i64 304, !40, i64 316, !41, i64 320}
!271 = !{!"ParticleCollisionElement", !37, i64 0, !37, i64 32, !37, i64 64, !37, i64 76, !37, i64 88, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !41, i64 144, !41, i64 148, !42, i64 152, !42, i64 154}
!272 = !{!273, !36, i64 160}
!273 = !{!"CollisionModifierData", !110, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !40, i64 176, !40, i64 180, !36, i64 184}
!274 = !{!273, !36, i64 112}
!275 = !{!273, !36, i64 152}
!276 = !{!277, !40, i64 28}
!277 = !{!"BVHTreeRayHit", !41, i64 0, !37, i64 4, !37, i64 16, !40, i64 28, !41, i64 32}
!278 = !{!270, !40, i64 68}
!279 = !{!280, !41, i64 0}
!280 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !37, i64 18, !37, i64 19}
!281 = !{!280, !41, i64 4}
!282 = !{!280, !41, i64 8}
!283 = !{!280, !41, i64 12}
!284 = !{!271, !41, i64 144}
!285 = !{!271, !42, i64 154}
!286 = !{!271, !41, i64 148}
!287 = !{!270, !36, i64 8}
!288 = !{!270, !36, i64 0}
!289 = !{!270, !41, i64 228}
!290 = !{!270, !41, i64 224}
!291 = !{!292, !40, i64 24}
!292 = !{!"BVHTreeRay", !37, i64 0, !37, i64 12, !40, i64 24}
!293 = !{!271, !42, i64 152}
!294 = !{i64 0, i64 32, !295, i64 32, i64 32, !295, i64 64, i64 12, !295, i64 76, i64 12, !295, i64 88, i64 12, !295, i64 100, i64 12, !295, i64 112, i64 12, !295, i64 124, i64 12, !295, i64 136, i64 8, !295, i64 144, i64 4, !95, i64 148, i64 4, !95, i64 152, i64 2, !296, i64 154, i64 2, !296}
!295 = !{!37, !37, i64 0}
!296 = !{!42, !42, i64 0}
!297 = !{!270, !42, i64 234}
!298 = distinct !{!298, !69, !70}
!299 = !{!270, !40, i64 244}
!300 = !{!270, !40, i64 48}
!301 = distinct !{!301, !69, !70}
!302 = distinct !{!302, !69, !70}
!303 = !{!277, !41, i64 0}
!304 = distinct !{!304, !69, !70}
!305 = !{!48, !42, i64 192}
!306 = !{!48, !42, i64 184}
!307 = !{!48, !40, i64 560}
!308 = !{!48, !40, i64 564}
!309 = distinct !{!309, !69, !70}
!310 = distinct !{!310, !69, !70}
!311 = !{!35, !36, i64 640}
!312 = !{!313, !41, i64 76}
!313 = !{!"ParticleDrawData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!314 = !{!109, !42, i64 140}
!315 = !{!48, !36, i64 120}
!316 = !{!35, !42, i64 340}
!317 = !{!192, !36, i64 16}
!318 = !{!319, !41, i64 20}
!319 = !{!"BoidRule", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24}
!320 = !{!192, !41, i64 100}
!321 = !{!227, !40, i64 12}
!322 = !{!227, !40, i64 16}
!323 = !{!324, !41, i64 308}
!324 = !{!"PTCacheEdit", !39, i64 0, !36, i64 16, !36, i64 24, !325, i64 32, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !39, i64 280, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !37, i64 312, !37, i64 315}
!325 = !{!"PTCacheID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!326 = !{!48, !42, i64 202}
!327 = !{!66, !41, i64 136}
!328 = !{!66, !36, i64 112}
!329 = !{!330, !40, i64 12}
!330 = !{!"HairKey", !37, i64 0, !40, i64 12, !40, i64 16, !42, i64 20, !42, i64 22}
!331 = !{!330, !40, i64 16}
!332 = distinct !{!332, !69, !70}
!333 = distinct !{!333, !69, !70}
!334 = !{!48, !40, i64 412}
!335 = distinct !{!335, !69, !70}
!336 = !{!35, !36, i64 104}
!337 = !{!35, !36, i64 112}
!338 = !{!339, !36, i64 128}
!339 = !{!"ClothModifierData", !110, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152}
!340 = !{!341, !40, i64 96}
!341 = !{!"ClothSimSettings", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !37, i64 156, !36, i64 160}
!342 = !{!341, !40, i64 112}
!343 = !{!341, !41, i64 128}
!344 = !{!339, !36, i64 136}
!345 = !{!346, !41, i64 32}
!346 = !{!"ClothCollSettings", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !42, i64 36, !42, i64 38, !36, i64 40, !42, i64 48, !42, i64 50, !41, i64 52}
!347 = distinct !{!347, !69, !70}
!348 = !{!83, !36, i64 1112}
!349 = !{!83, !36, i64 1680}
!350 = !{!341, !42, i64 144}
!351 = !{!352, !41, i64 0}
!352 = !{!"MEdge", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 9, !42, i64 10}
!353 = !{!352, !41, i64 4}
!354 = !{!355, !41, i64 8}
!355 = !{!"MDeformVert", !36, i64 0, !41, i64 8, !41, i64 12}
!356 = !{!355, !36, i64 0}
!357 = !{!358, !40, i64 4}
!358 = !{!"MDeformWeight", !41, i64 0, !40, i64 4}
!359 = distinct !{!359, !69, !70}
!360 = distinct !{!360, !69, !70}
!361 = !{!35, !36, i64 120}
!362 = !{!339, !36, i64 144}
!363 = !{!48, !36, i64 144}
!364 = !{!341, !36, i64 160}
!365 = !{!83, !36, i64 1536}
!366 = !{!35, !36, i64 600}
!367 = distinct !{!367, !69, !70}
!368 = !{!66, !36, i64 120}
!369 = distinct !{!369, !69, !70}
!370 = !{!205, !40, i64 32}
!371 = distinct !{!371, !69, !70}
!372 = distinct !{!372, !69, !70}
!373 = !{!325, !36, i64 176}
!374 = !{!46, !41, i64 52}
!375 = distinct !{!375, !69, !70}
!376 = !{!46, !41, i64 24}
!377 = !{!46, !41, i64 40}
!378 = distinct !{!378, !69, !70}
!379 = !{!48, !42, i64 194}
!380 = !{!35, !40, i64 648}
!381 = !{!103, !40, i64 40}
!382 = !{!157, !40, i64 16}
!383 = distinct !{!383, !69, !70}
!384 = !{!103, !36, i64 32}
!385 = !{!386, !36, i64 0}
!386 = !{!"BoidBrainData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !40, i64 40, !36, i64 48, !37, i64 56, !37, i64 68, !40, i64 80, !36, i64 88}
!387 = !{!386, !36, i64 8}
!388 = !{!386, !40, i64 20}
!389 = !{!386, !40, i64 24}
!390 = !{!386, !40, i64 16}
!391 = !{!386, !36, i64 88}
!392 = distinct !{!392, !69, !70}
!393 = distinct !{!393, !69, !70}
!394 = !{!46, !41, i64 20}
!395 = distinct !{!395, !69, !70}
!396 = distinct !{!396, !69, !70}
!397 = !{!386, !36, i64 48}
!398 = distinct !{!398, !69, !70}
!399 = !{!220, !40, i64 120}
!400 = distinct !{!400, !69, !70}
!401 = !{!259, !41, i64 12}
!402 = distinct !{!402, !69, !70}
!403 = !{i64 0, i64 4, !105, i64 4, i64 8, !295, i64 12, i64 4, !95}
!404 = distinct !{!404, !69, !70}
!405 = distinct !{!405, !69, !70}
!406 = distinct !{!406, !69, !70}
!407 = distinct !{!407, !69, !70}
!408 = distinct !{!408, !69, !70}
!409 = !{!48, !40, i64 304}
!410 = distinct !{!410, !69, !70}
!411 = distinct !{!411, !69, !70}
!412 = !{!107, !36, i64 8}
!413 = !{!35, !41, i64 312}
!414 = !{!415, !41, i64 4}
!415 = !{!"ChildParticle", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 24, !37, i64 40, !40, i64 56, !40, i64 60}
!416 = distinct !{!416, !69, !70}
!417 = !{!415, !41, i64 0}
!418 = distinct !{!418, !69, !70}
!419 = distinct !{!419, !69, !70}
!420 = distinct !{!420, !69, !70}
!421 = distinct !{!421, !69, !70}
!422 = distinct !{!422, !69, !70}
!423 = distinct !{!423, !69, !70}
!424 = distinct !{!424, !69, !70}
!425 = distinct !{!425, !69, !70}
!426 = distinct !{!426, !69, !70}
!427 = distinct !{!427, !69, !70}
!428 = distinct !{!428, !69, !70}
!429 = distinct !{!429, !69, !70}
!430 = distinct !{!430, !69, !70}
!431 = distinct !{!431, !69, !70}
!432 = distinct !{!432, !69, !70}
!433 = distinct !{!433, !69, !70}
!434 = distinct !{!434, !69, !70}
!435 = distinct !{!435, !69, !70}
!436 = !{!48, !40, i64 316}
!437 = distinct !{!437, !69, !70}
!438 = distinct !{!438, !69, !70}
!439 = distinct !{!439, !69, !70}
!440 = distinct !{!440, !69, !70}
!441 = distinct !{!441, !69, !70}
!442 = !{!443, !41, i64 2100}
!443 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!444 = !{!83, !36, i64 1304}
!445 = !{!83, !36, i64 1288}
!446 = distinct !{!446, !69, !70}
!447 = distinct !{!447, !69, !70}
!448 = distinct !{!448, !69, !70}
!449 = distinct !{!449, !69, !70}
!450 = distinct !{!450, !69, !70}
!451 = distinct !{!451, !69, !70}
!452 = distinct !{!452, !69, !70}
!453 = !{!48, !42, i64 268}
!454 = distinct !{!454, !69, !70}
!455 = distinct !{!455, !69, !70}
!456 = distinct !{!456, !69, !70}
!457 = distinct !{!457, !69, !70}
!458 = !{!48, !40, i64 452}
!459 = !{!83, !41, i64 1000}
!460 = !{!83, !41, i64 1008}
!461 = !{!48, !41, i64 328}
!462 = !{!48, !40, i64 308}
!463 = distinct !{!463, !69, !70}
!464 = distinct !{!464, !69, !70}
!465 = distinct !{!465, !69, !70}
!466 = distinct !{!466, !69, !70}
!467 = !{!107, !41, i64 80}
!468 = !{!107, !41, i64 136}
!469 = !{!107, !40, i64 112}
!470 = !{!107, !41, i64 140}
!471 = !{!107, !41, i64 144}
!472 = !{!107, !41, i64 148}
!473 = !{!107, !36, i64 152}
!474 = distinct !{!474, !69, !70}
!475 = distinct !{!475, !69, !70}
!476 = distinct !{!476, !69, !70}
!477 = distinct !{!477, !69, !70}
!478 = distinct !{!478, !69, !70}
!479 = distinct !{!479, !69, !70}
!480 = !{!165, !36, i64 264}
!481 = !{!78, !41, i64 432}
!482 = !{!483, !42, i64 0}
!483 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !37, i64 8, !36, i64 120, !40, i64 128, !40, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !36, i64 160}
!484 = !{!485, !36, i64 32}
!485 = !{!"Base", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!486 = !{!487, !42, i64 122}
!487 = !{!"ParticleInstanceModifierData", !110, i64 0, !36, i64 112, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !40, i64 128, !40, i64 132}
!488 = !{!487, !36, i64 112}
!489 = !{!487, !42, i64 120}
!490 = !{!78, !36, i64 1224}
!491 = distinct !{!491, !69, !70}
!492 = !{!35, !36, i64 56}
!493 = distinct !{!493, !69, !70}
!494 = distinct !{ptr @nr_distance_to_edge, null, ptr @nr_signed_distance_to_plane}
!495 = !{!270, !40, i64 52}
!496 = !{!270, !40, i64 56}
!497 = distinct !{!497, !69, !70}
!498 = !{!35, !40, i64 304}
!499 = distinct !{!499, !69, !70}
!500 = distinct !{!500, !69, !70}
!501 = !{!502, !36, i64 72}
!502 = !{!"EfData", !157, i64 0, !36, i64 64, !36, i64 72}
!503 = !{!502, !36, i64 64}
!504 = !{!505, !42, i64 68}
!505 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !40, i64 64, !42, i64 68, !37, i64 70, !41, i64 76}
!506 = !{!505, !40, i64 64}
!507 = !{!502, !40, i64 24}
!508 = !{!48, !40, i64 436}
!509 = !{!502, !40, i64 20}
!510 = !{!270, !40, i64 240}
!511 = !{!270, !40, i64 248}
!512 = !{!270, !40, i64 60}
!513 = !{!270, !40, i64 64}
!514 = !{!270, !40, i64 252}
!515 = !{!185, !41, i64 0}
!516 = !{!270, !41, i64 320}
!517 = !{!270, !40, i64 316}
!518 = !{!187, !36, i64 0}
!519 = !{!270, !36, i64 24}
!520 = !{!521, !36, i64 16}
!521 = !{!"ColliderCache", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!522 = !{!270, !36, i64 32}
!523 = !{!521, !36, i64 24}
!524 = !{!273, !40, i64 176}
!525 = !{!273, !40, i64 180}
!526 = !{!273, !36, i64 184}
!527 = distinct !{!527, !69, !70}
!528 = !{!78, !36, i64 1240}
!529 = !{!530, !40, i64 68}
!530 = !{!"PartDeflect", !41, i64 0, !42, i64 4, !42, i64 6, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !36, i64 128, !36, i64 136, !40, i64 144, !41, i64 148, !36, i64 152}
!531 = !{!530, !41, i64 0}
!532 = !{!530, !40, i64 60}
!533 = !{!530, !40, i64 64}
!534 = !{!530, !40, i64 72}
!535 = !{!530, !40, i64 76}
!536 = !{!530, !40, i64 80}
!537 = !{!270, !36, i64 16}
!538 = !{!270, !41, i64 72}
!539 = distinct !{!539, !69, !70}
!540 = !{!48, !42, i64 216}
!541 = distinct !{!541, !69, !70}
!542 = distinct !{!542, !69, !70}
!543 = !{!502, !40, i64 28}
!544 = !{!48, !40, i64 428}
!545 = !{!48, !40, i64 432}
!546 = distinct !{!546, !69, !70}
!547 = distinct !{!547, !69, !70}
!548 = distinct !{!548, !69, !70}
!549 = distinct !{!549, !69, !70}
!550 = distinct !{!550, !69, !70}
!551 = distinct !{!551, !69, !70}
!552 = !{!415, !40, i64 56}
!553 = !{!554, !40, i64 4}
!554 = !{!"KDTreeNearest", !41, i64 0, !40, i64 4, !37, i64 8}
!555 = !{!554, !41, i64 0}
!556 = distinct !{!556, !69, !70}
!557 = distinct !{!557, !69, !70}
!558 = distinct !{!558, !69, !70}
!559 = distinct !{!559, !69, !70}
