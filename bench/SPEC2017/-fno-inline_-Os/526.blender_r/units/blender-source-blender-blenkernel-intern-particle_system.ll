; ModuleID = 'blender/source/blender/blenkernel/intern/particle_system.c'
source_filename = "blender/source/blender/blenkernel/intern/particle_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.SPHData = type { [10 x ptr], ptr, float, ptr, ptr, float, i32, float, [3 x float], ptr, ptr }
%struct.SPHFluidSettings = type { float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i16, [3 x i16] }
%struct.ParticleSpring = type { float, [2 x i32], i32 }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ParticleInstanceModifierData = type { %struct.ModifierData, ptr, i16, i16, i16, i16, float, float }
%struct.BoidBrainData = type { ptr, ptr, float, float, float, [3 x float], float, ptr, [3 x float], [3 x float], float, ptr }
%struct.EfData = type { %struct.ParticleTexture, ptr, ptr }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.ClothCollSettings = type { ptr, float, float, float, float, float, float, i32, i16, i16, ptr, i16, i16, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @psys_get_current_display_percentage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @particles_are_dynamic(ptr noundef nonnull %0) #21, !range !44
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 89
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 19
  %16 = load i16, ptr %15, align 4, !tbaa !48
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !50
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 30
  %27 = load i16, ptr %26, align 2, !tbaa !52
  %28 = sitofp i16 %27 to float
  %29 = fdiv float %28, 1.000000e+02
  br label %30

30:                                               ; preds = %7, %14, %18, %25
  %31 = phi float [ %29, %25 ], [ 1.000000e+00, %18 ], [ 1.000000e+00, %14 ], [ 1.000000e+00, %7 ]
  ret float %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @particles_are_dynamic(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !53 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 7
  %12 = load i16, ptr %11, align 8, !tbaa !54
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %16 = load i32, ptr %15, align 4, !tbaa !55
  %17 = and i32 %16, 4
  br label %24

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !56
  switch i16 %20, label %21 [
    i16 1, label %24
    i16 3, label %24
  ]

21:                                               ; preds = %18
  %22 = icmp eq i16 %20, 4
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %18, %18, %1, %14
  %25 = phi i32 [ %17, %14 ], [ 0, %1 ], [ 1, %18 ], [ %23, %21 ], [ 1, %18 ]
  ret i32 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_reset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %9 = load i32, ptr %8, align 4, !tbaa !55
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %7, %5
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = tail call fastcc i32 @tot_particles(ptr noundef %0, ptr noundef null) #21
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @psys_free_particles(ptr noundef nonnull %0) #22
  store i32 0, ptr %13, align 8, !tbaa !57
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 33
  store i16 0, ptr %19, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = and i32 %21, -1537
  store i32 %22, ptr %20, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef nonnull %24) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %49

31:                                               ; preds = %2
  %32 = icmp eq i32 %1, 4
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %35 = load i32, ptr %34, align 8, !tbaa !57
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i32 [ %46, %40 ], [ 0, %37 ]
  %42 = phi ptr [ %47, %40 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 0, i32 17
  %44 = load i16, ptr %43, align 4, !tbaa !62
  %45 = or i16 %44, 2
  store i16 %45, ptr %43, align 4, !tbaa !62
  %46 = add nuw nsw i32 %41, 1
  %47 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 1
  %48 = icmp eq i32 %46, %35
  br i1 %48, label %49, label %40, !llvm.loop !65

49:                                               ; preds = %40, %33, %31, %7, %30, %26, %18
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %54(ptr noundef nonnull %51) #22
  store ptr null, ptr %50, align 8, !tbaa !67
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 28
  store i32 0, ptr %56, align 8, !tbaa !69
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  tail call void @psys_free_path_cache(ptr noundef nonnull %0, ptr noundef %58) #22
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  tail call void @BKE_ptcache_invalidate(ptr noundef %60) #22
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %65(ptr noundef nonnull %62) #22
  store ptr null, ptr %61, align 8, !tbaa !70
  br label %66

66:                                               ; preds = %64, %55
  %67 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 45
  store i32 0, ptr %67, align 4, !tbaa !71
  %68 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  store i32 0, ptr %68, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tot_particles(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !73 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !76
  br label %40

16:                                               ; preds = %4, %2
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 9
  %20 = load i16, ptr %19, align 4, !tbaa !77
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !78
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 65
  %28 = load i32, ptr %27, align 4, !tbaa !79
  %29 = mul nsw i32 %28, %28
  %30 = mul nsw i32 %29, %28
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 27
  %32 = load i32, ptr %31, align 4, !tbaa !80
  %33 = sub nsw i32 %30, %32
  br label %40

34:                                               ; preds = %22, %16
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 63
  %36 = load i32, ptr %35, align 4, !tbaa !81
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 27
  %38 = load i32, ptr %37, align 4, !tbaa !80
  %39 = sub nsw i32 %36, %38
  br label %40

40:                                               ; preds = %34, %26, %11
  %41 = phi i32 [ %15, %11 ], [ %33, %26 ], [ %39, %34 ]
  ret i32 %41
}

; Function Attrs: optsize
declare void @psys_free_particles(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_free_path_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_ptcache_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_calc_dmcache(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 130
  %9 = load i16, ptr %8, align 8, !tbaa !86
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !87
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %158

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !78
  %17 = icmp eq i16 %16, 0
  %18 = icmp eq i8 %10, 0
  br i1 %17, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = tail call i32 %21(ptr noundef nonnull %1) #22
  br i1 %18, label %23, label %44

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %25 = load i32, ptr %24, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 50
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = tail call ptr %27(ptr noundef nonnull %1, i32 noundef 7) #22
  br label %44

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %31 = load ptr, ptr %30, align 8, !tbaa !94
  %32 = tail call i32 %31(ptr noundef nonnull %1) #22
  br i1 %18, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %35 = load i32, ptr %34, align 8, !tbaa !95
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !96
  %38 = tail call ptr %37(ptr noundef nonnull %1, i32 noundef 7) #22
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 54
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = tail call ptr %40(ptr noundef nonnull %1, i32 noundef 7) #22
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr null, ptr %38
  br label %44

44:                                               ; preds = %33, %29, %19, %23
  %45 = phi i32 [ %22, %23 ], [ %22, %19 ], [ %32, %29 ], [ %32, %33 ]
  %46 = phi i32 [ %25, %23 ], [ %22, %19 ], [ %32, %29 ], [ %35, %33 ]
  %47 = phi ptr [ %28, %23 ], [ null, %19 ], [ null, %29 ], [ %43, %33 ]
  %48 = phi ptr [ null, %23 ], [ null, %19 ], [ null, %29 ], [ %41, %33 ]
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %50 = sext i32 %45 to i64
  %51 = shl nsw i64 %50, 4
  %52 = tail call ptr %49(i64 noundef %51, ptr noundef nonnull @.str) #22
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %54 = sext i32 %46 to i64
  %55 = shl nsw i64 %54, 3
  %56 = tail call ptr %53(i64 noundef %55, ptr noundef nonnull @.str.1) #22
  %57 = icmp sgt i32 %45, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %44
  %59 = icmp eq i8 %10, 0
  %60 = icmp eq ptr %47, null
  %61 = icmp ne ptr %48, null
  %62 = zext nneg i32 %45 to i64
  br label %63

63:                                               ; preds = %58, %91
  %64 = phi i64 [ 0, %58 ], [ %92, %91 ]
  %65 = phi ptr [ %52, %58 ], [ %93, %91 ]
  %66 = inttoptr i64 %64 to ptr
  %67 = getelementptr inbounds %struct.LinkNode, ptr %65, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !98
  %68 = trunc i64 %64 to i32
  br i1 %59, label %69, label %79

69:                                               ; preds = %63
  br i1 %60, label %91, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds i32, ptr %47, i64 %64
  %72 = load i32, ptr %71, align 4, !tbaa !100
  %73 = icmp ne i32 %72, -1
  %74 = select i1 %61, i1 %73, i1 false
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = sext i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %48, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !100
  br label %79

79:                                               ; preds = %63, %70, %75
  %80 = phi i32 [ %78, %75 ], [ %72, %70 ], [ %68, %63 ]
  %81 = icmp ne i32 %80, -1
  %82 = icmp slt i32 %80, %46
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = sext i32 %80 to i64
  %86 = getelementptr inbounds ptr, ptr %56, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store ptr %87, ptr %65, align 8, !tbaa !101
  br label %90

90:                                               ; preds = %84, %89
  store ptr %65, ptr %86, align 8, !tbaa !68
  br label %91

91:                                               ; preds = %90, %69, %79
  %92 = add nuw nsw i64 %64, 1
  %93 = getelementptr inbounds %struct.LinkNode, ptr %65, i64 1
  %94 = icmp eq i64 %92, %62
  br i1 %94, label %95, label %63, !llvm.loop !102

95:                                               ; preds = %91, %44
  %96 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %97 = load i32, ptr %96, align 8, !tbaa !57
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %155

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !61
  %102 = icmp eq i8 %10, 0
  br label %103

103:                                              ; preds = %99, %150
  %104 = phi i32 [ %97, %99 ], [ %151, %150 ]
  %105 = phi ptr [ %101, %99 ], [ %153, %150 ]
  %106 = phi i32 [ 0, %99 ], [ %152, %150 ]
  %107 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !103
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 10
  store i32 -1, ptr %111, align 4, !tbaa !104
  br label %150

112:                                              ; preds = %103
  br i1 %102, label %118, label %113

113:                                              ; preds = %112
  %114 = icmp slt i32 %108, %46
  %115 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 10
  br i1 %114, label %116, label %117

116:                                              ; preds = %113
  store i32 -2, ptr %115, align 4, !tbaa !104
  br label %150

117:                                              ; preds = %113
  store i32 -1, ptr %115, align 4, !tbaa !104
  br label %150

118:                                              ; preds = %112
  %119 = load ptr, ptr %6, align 8, !tbaa !34
  %120 = getelementptr inbounds %struct.ParticleSettings, ptr %119, i64 0, i32 8
  %121 = load i16, ptr %120, align 2, !tbaa !78
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %118
  %124 = icmp slt i32 %108, %46
  br i1 %124, label %125, label %136

125:                                              ; preds = %123
  %126 = zext nneg i32 %108 to i64
  %127 = getelementptr inbounds ptr, ptr %56, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !68
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.LinkNode, ptr %128, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !98
  %133 = ptrtoint ptr %132 to i64
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 10
  store i32 %134, ptr %135, align 4, !tbaa !104
  br label %150

136:                                              ; preds = %125, %123
  %137 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 10
  store i32 -1, ptr %137, align 4, !tbaa !104
  br label %150

138:                                              ; preds = %118
  %139 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 11
  %140 = icmp slt i32 %108, %46
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = zext nneg i32 %108 to i64
  %143 = getelementptr inbounds ptr, ptr %56, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !68
  br label %145

145:                                              ; preds = %138, %141
  %146 = phi ptr [ %144, %141 ], [ null, %138 ]
  %147 = tail call i32 @psys_particle_dm_face_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %108, ptr noundef nonnull %139, ptr noundef %146) #22
  %148 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 0, i32 10
  store i32 %147, ptr %148, align 4, !tbaa !104
  %149 = load i32, ptr %96, align 8, !tbaa !57
  br label %150

150:                                              ; preds = %117, %116, %130, %136, %145, %110
  %151 = phi i32 [ %104, %117 ], [ %104, %116 ], [ %104, %130 ], [ %104, %136 ], [ %149, %145 ], [ %104, %110 ]
  %152 = add nuw nsw i32 %106, 1
  %153 = getelementptr inbounds %struct.ParticleData, ptr %105, i64 1
  %154 = icmp slt i32 %152, %151
  br i1 %154, label %103, label %155, !llvm.loop !105

155:                                              ; preds = %150, %95
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %156(ptr noundef %56) #22
  %157 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %157(ptr noundef %52) #22
  br label %172

158:                                              ; preds = %3
  %159 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %160 = load i32, ptr %159, align 8, !tbaa !57
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !61
  br label %165

165:                                              ; preds = %162, %165
  %166 = phi ptr [ %170, %165 ], [ %164, %162 ]
  %167 = phi i32 [ %169, %165 ], [ 0, %162 ]
  %168 = getelementptr inbounds %struct.ParticleData, ptr %166, i64 0, i32 10
  store i32 -1, ptr %168, align 4, !tbaa !104
  %169 = add nuw nsw i32 %167, 1
  %170 = getelementptr inbounds %struct.ParticleData, ptr %166, i64 1
  %171 = icmp eq i32 %169, %160
  br i1 %171, label %172, label %165, !llvm.loop !106

172:                                              ; preds = %165, %158, %155
  ret void
}

; Function Attrs: optsize
declare i32 @psys_particle_dm_face_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @psys_threads_create(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !107
  %3 = tail call i32 @BKE_scene_num_threads(ptr noundef %2) #22
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 5
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.2) #22
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %9 = tail call ptr %8(i64 noundef 248, ptr noundef nonnull @.str.3) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !109
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.ParticleThreadContext, ptr %9, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 31
  %22 = load i16, ptr %21, align 4, !tbaa !119
  %23 = tail call ptr @give_current_material(ptr noundef %16, i16 noundef signext %22) #22
  %24 = getelementptr inbounds %struct.ParticleThreadContext, ptr %9, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !120
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %6, i1 false)
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = zext nneg i32 %3 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %struct.ParticleThread, ptr %7, i64 %29
  store ptr %9, ptr %30, align 8, !tbaa !121
  %31 = getelementptr inbounds %struct.ParticleThread, ptr %7, i64 %29, i32 3
  %32 = trunc i64 %29 to i32
  store i32 %32, ptr %31, align 8, !tbaa !123
  %33 = getelementptr inbounds %struct.ParticleThread, ptr %7, i64 %29, i32 4
  store i32 %3, ptr %33, align 4, !tbaa !124
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, %27
  br i1 %35, label %36, label %28, !llvm.loop !125

36:                                               ; preds = %28, %1
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_threads_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !124
  %5 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %9(ptr noundef nonnull %6) #22
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %15(ptr noundef nonnull %12) #22
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %21(ptr noundef nonnull %18) #22
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 27
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %27(ptr noundef nonnull %24) #22
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 28
  %30 = load ptr, ptr %29, align 8, !tbaa !130
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %33(ptr noundef nonnull %30) #22
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 29
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %39(ptr noundef nonnull %36) #22
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.ParticleSimulationData, ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %42, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !133
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  tail call void @end_latt_deform(ptr noundef nonnull %44) #22
  %47 = load ptr, ptr %41, align 8, !tbaa !132
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 15
  store ptr null, ptr %48, align 8, !tbaa !133
  br label %49

49:                                               ; preds = %46, %40
  %50 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !134
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %54(ptr noundef nonnull %51) #22
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !135
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %60(ptr noundef nonnull %57) #22
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !136
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %66(ptr noundef nonnull %63) #22
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 10
  %69 = load ptr, ptr %68, align 8, !tbaa !137
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %72(ptr noundef nonnull %69) #22
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !138
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %78(ptr noundef nonnull %75) #22
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !139
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %84(ptr noundef nonnull %81) #22
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !140
  tail call void @BLI_kdtree_free(ptr noundef %87) #22
  %88 = icmp sgt i32 %4, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = zext nneg i32 %4 to i64
  br label %91

91:                                               ; preds = %89, %102
  %92 = phi i64 [ 0, %89 ], [ %103, %102 ]
  %93 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %92, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !141
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @BLI_rng_free(ptr noundef nonnull %94) #22
  br label %97

97:                                               ; preds = %96, %91
  %98 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %92, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !142
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @BLI_rng_free(ptr noundef nonnull %99) #22
  br label %102

102:                                              ; preds = %97, %101
  %103 = add nuw nsw i64 %92, 1
  %104 = icmp eq i64 %103, %90
  br i1 %104, label %105, label %91, !llvm.loop !143

105:                                              ; preds = %102, %85
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %106(ptr noundef %2) #22
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %107(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @initialize_particle(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 200
  %13 = sitofp i64 %12 to float
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %13, %16
  %18 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 17
  %19 = load i16, ptr %18, align 4, !tbaa !62
  %20 = and i16 %19, -2
  store i16 %20, ptr %18, align 4, !tbaa !62
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 53
  %22 = load float, ptr %21, align 4, !tbaa !144
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 54
  %24 = load float, ptr %23, align 8, !tbaa !145
  %25 = fsub float %24, %22
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %17, float %22)
  %27 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  store float %26, ptr %27, align 4, !tbaa !146
  %28 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 16
  store i32 0, ptr %28, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_get_birth_coordinates(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ParticleTexture, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [4 x float], align 16
  %22 = alloca [3 x float], align 4
  %23 = alloca [4 x float], align 16
  %24 = alloca [3 x [3 x float]], align 16
  %25 = alloca [4 x float], align 16
  %26 = alloca [4 x float], align 16
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x [3 x float]], align 16
  %29 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !117
  %31 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 4 dereferenceable(12) @__const.psys_get_birth_coordinates.x_vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, ptr noundef nonnull align 4 dereferenceable(12) @__const.psys_get_birth_coordinates.utan, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) @__const.psys_get_birth_coordinates.vtan, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %20, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #23
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 11
  %36 = load i16, ptr %35, align 8, !tbaa !56
  %37 = icmp eq i16 %36, 3
  br i1 %37, label %38, label %50

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !148
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = ptrtoint ptr %1 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 200
  %49 = trunc i64 %48 to i32
  br label %87

50:                                               ; preds = %5, %38
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 73
  %52 = load float, ptr %51, align 4, !tbaa !149
  %53 = fcmp une float %52, 0.000000e+00
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !61
  %57 = ptrtoint ptr %1 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 200
  %61 = trunc i64 %60 to i32
  br label %73

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 12
  %64 = load i16, ptr %63, align 2, !tbaa !150
  %65 = icmp eq i16 %64, 9
  %66 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = ptrtoint ptr %1 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 200
  %72 = trunc i64 %71 to i32
  br i1 %65, label %73, label %87

73:                                               ; preds = %54, %62
  %74 = phi i32 [ %61, %54 ], [ %72, %62 ]
  %75 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !151
  %77 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 8
  %78 = load i16, ptr %77, align 2, !tbaa !78
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !103
  %82 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 10
  %83 = load i32, ptr %82, align 4, !tbaa !104
  %84 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  %85 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 12
  %86 = load float, ptr %85, align 8, !tbaa !152
  call void @psys_particle_on_emitter(ptr noundef %76, i32 noundef %79, i32 noundef %81, i32 noundef %83, ptr noundef nonnull %84, float noundef %86, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #22
  br label %102

87:                                               ; preds = %42, %62
  %88 = phi i32 [ %49, %42 ], [ %72, %62 ]
  %89 = phi i1 [ true, %42 ], [ false, %62 ]
  %90 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !151
  %92 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 8
  %93 = load i16, ptr %92, align 2, !tbaa !78
  %94 = sext i16 %93 to i32
  %95 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !103
  %97 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 10
  %98 = load i32, ptr %97, align 4, !tbaa !104
  %99 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  %100 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 12
  %101 = load float, ptr %100, align 8, !tbaa !152
  call void @psys_particle_on_emitter(ptr noundef %91, i32 noundef %94, i32 noundef %96, i32 noundef %98, ptr noundef nonnull %99, float noundef %101, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #22
  br label %102

102:                                              ; preds = %87, %73
  %103 = phi i32 [ %88, %87 ], [ %74, %73 ]
  %104 = phi i1 [ false, %87 ], [ true, %73 ]
  %105 = phi i1 [ %89, %87 ], [ false, %73 ]
  call void @psys_get_texture(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 32, float noundef %4) #22
  %106 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %106, ptr noundef nonnull %8) #22
  call void @mul_mat3_m4_v3(ptr noundef nonnull %106, ptr noundef nonnull %7) #22
  %107 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #21
  br i1 %104, label %108, label %122

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 74
  %110 = load float, ptr %109, align 8, !tbaa !153
  %111 = fadd float %110, 0.000000e+00
  %112 = fmul float %111, 0x400921FB60000000
  %113 = call float @cosf(float noundef %112) #22
  %114 = fneg float %113
  call fastcc void @mul_v3_fl(ptr noundef nonnull %19, float noundef %114) #21
  %115 = load float, ptr %109, align 8, !tbaa !153
  %116 = fadd float %115, 0.000000e+00
  %117 = fmul float %116, 0x400921FB60000000
  %118 = call float @sinf(float noundef %117) #22
  %119 = fneg float %118
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %19, ptr noundef nonnull %18, float noundef %119) #21
  call void @mul_mat3_m4_v3(ptr noundef nonnull %106, ptr noundef nonnull %19) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %7) #21
  %120 = call fastcc float @dot_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %7) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %18, float noundef %120) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %18) #21
  %121 = call fastcc float @normalize_v3(ptr noundef nonnull %19) #21
  br label %122

122:                                              ; preds = %108, %102
  %123 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 71
  %124 = load float, ptr %123, align 4, !tbaa !154
  %125 = fcmp une float %124, 0.000000e+00
  br i1 %125, label %133, label %126

126:                                              ; preds = %122
  %127 = load i16, ptr %35, align 8, !tbaa !56
  %128 = icmp eq i16 %127, 3
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !148
  %132 = icmp eq ptr %131, null
  br i1 %132, label %149, label %133

133:                                              ; preds = %129, %122
  %134 = add nsw i32 %103, 10
  %135 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %134) #21
  %136 = fadd float %135, -5.000000e-01
  %137 = fmul float %136, 2.000000e+00
  store float %137, ptr %12, align 4, !tbaa !110
  %138 = add nsw i32 %103, 11
  %139 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %138) #21
  %140 = fadd float %139, -5.000000e-01
  %141 = fmul float %140, 2.000000e+00
  %142 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float %141, ptr %142, align 4, !tbaa !110
  %143 = add nsw i32 %103, 12
  %144 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %143) #21
  %145 = fadd float %144, -5.000000e-01
  %146 = fmul float %145, 2.000000e+00
  %147 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %146, ptr %147, align 4, !tbaa !110
  call void @mul_mat3_m4_v3(ptr noundef nonnull %106, ptr noundef nonnull %12) #22
  %148 = call fastcc float @normalize_v3(ptr noundef nonnull %12) #21
  br label %149

149:                                              ; preds = %133, %129, %126
  %150 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 13
  %151 = load i16, ptr %150, align 4, !tbaa !155
  %152 = icmp eq i16 %151, 2
  br i1 %152, label %153, label %169

153:                                              ; preds = %149
  %154 = add nsw i32 %103, 13
  %155 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %154) #21
  %156 = fadd float %155, -5.000000e-01
  %157 = fmul float %156, 2.000000e+00
  store float %157, ptr %13, align 4, !tbaa !110
  %158 = add nsw i32 %103, 14
  %159 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %158) #21
  %160 = fadd float %159, -5.000000e-01
  %161 = fmul float %160, 2.000000e+00
  %162 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float %161, ptr %162, align 4, !tbaa !110
  %163 = add nsw i32 %103, 15
  %164 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %163) #21
  %165 = fadd float %164, -5.000000e-01
  %166 = fmul float %165, 2.000000e+00
  %167 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float %166, ptr %167, align 4, !tbaa !110
  call void @mul_mat3_m4_v3(ptr noundef nonnull %106, ptr noundef nonnull %13) #22
  %168 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #21
  br label %169

169:                                              ; preds = %153, %149
  %170 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 79
  %171 = load float, ptr %170, align 4, !tbaa !156
  %172 = fcmp une float %171, 0.000000e+00
  br i1 %172, label %173, label %194

173:                                              ; preds = %169
  %174 = add nsw i32 %103, 16
  %175 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %174) #21
  %176 = fadd float %175, -5.000000e-01
  %177 = fmul float %176, 2.000000e+00
  store float %177, ptr %14, align 16, !tbaa !110
  %178 = add nsw i32 %103, 17
  %179 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %178) #21
  %180 = fadd float %179, -5.000000e-01
  %181 = fmul float %180, 2.000000e+00
  %182 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 1
  store float %181, ptr %182, align 4, !tbaa !110
  %183 = add nsw i32 %103, 18
  %184 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %183) #21
  %185 = fadd float %184, -5.000000e-01
  %186 = fmul float %185, 2.000000e+00
  %187 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 2
  store float %186, ptr %187, align 8, !tbaa !110
  %188 = add nsw i32 %103, 19
  %189 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %188) #21
  %190 = fadd float %189, -5.000000e-01
  %191 = fmul float %190, 2.000000e+00
  %192 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  store float %191, ptr %192, align 4, !tbaa !110
  %193 = call float @normalize_qt(ptr noundef nonnull %14) #22
  call void @mat4_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %106) #22
  call void @mul_qt_qtqt(ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %10) #22
  br label %194

194:                                              ; preds = %173, %169
  br i1 %105, label %195, label %213

195:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %24) #23
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %8) #21
  %196 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  call fastcc void @zero_v3(ptr noundef nonnull %196) #21
  %197 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !110
  %199 = call float @llvm.fabs.f32(float %198)
  %200 = fcmp oeq float %199, 1.000000e+00
  %201 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  br i1 %200, label %202, label %205

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %201, ptr noundef nonnull %8, ptr noundef nonnull %203) #21
  %204 = call fastcc float @normalize_v3(ptr noundef nonnull %201) #21
  br label %206

205:                                              ; preds = %195
  call fastcc void @copy_v3_v3(ptr noundef nonnull %201, ptr noundef nonnull %7) #21
  br label %206

206:                                              ; preds = %205, %202
  %207 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  call void @project_v3_v3v3(ptr noundef nonnull %22, ptr noundef nonnull %12, ptr noundef nonnull %207) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %24, ptr noundef nonnull %207, ptr noundef nonnull %22) #21
  %208 = call fastcc float @normalize_v3(ptr noundef nonnull %24) #21
  %209 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 2
  call fastcc void @negate_v3_v3(ptr noundef nonnull %209, ptr noundef nonnull %12) #21
  %210 = call fastcc float @normalize_v3(ptr noundef nonnull %209) #21
  %211 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %211, ptr noundef nonnull %209, ptr noundef nonnull %24) #21
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %23, ptr noundef nonnull %24) #22
  %212 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %212, ptr noundef nonnull %23) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #23
  br label %330

213:                                              ; preds = %194
  %214 = fcmp ogt float %3, 0.000000e+00
  br i1 %214, label %215, label %218

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %217 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %216, ptr noundef nonnull %217) #21
  br label %218

218:                                              ; preds = %215, %213
  %219 = fcmp une float %3, 0.000000e+00
  br i1 %219, label %220, label %226

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 70
  %222 = load float, ptr %221, align 8, !tbaa !157
  %223 = fcmp une float %222, 0.000000e+00
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2) #21
  %225 = fdiv float %222, %3
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %225) #21
  br label %226

226:                                              ; preds = %224, %220, %218
  %227 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 69
  %228 = load float, ptr %227, align 4, !tbaa !158
  %229 = fcmp une float %228, 0.000000e+00
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %7, float noundef %228) #21
  br label %231

231:                                              ; preds = %230, %226
  %232 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !151
  %234 = icmp eq ptr %233, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 73
  %237 = load float, ptr %236, align 4, !tbaa !149
  %238 = fcmp une float %237, 0.000000e+00
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %19, float noundef %237) #21
  br label %240

240:                                              ; preds = %239, %235, %231
  %241 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 76
  %242 = load float, ptr %241, align 8, !tbaa !110
  %243 = fcmp une float %242, 0.000000e+00
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %106) #21
  %246 = load float, ptr %241, align 8, !tbaa !110
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %15, float noundef %246) #21
  br label %247

247:                                              ; preds = %244, %240
  %248 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 76, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !110
  %250 = fcmp une float %249, 0.000000e+00
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47, i64 1
  %253 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %252) #21
  %254 = load float, ptr %248, align 4, !tbaa !110
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %15, float noundef %254) #21
  br label %255

255:                                              ; preds = %251, %247
  %256 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 76, i64 2
  %257 = load float, ptr %256, align 8, !tbaa !110
  %258 = fcmp une float %257, 0.000000e+00
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47, i64 2
  %261 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %260) #21
  %262 = load float, ptr %256, align 8, !tbaa !110
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %15, float noundef %262) #21
  br label %263

263:                                              ; preds = %259, %255
  %264 = load float, ptr %123, align 4, !tbaa !154
  %265 = fcmp une float %264, 0.000000e+00
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %12, float noundef %264) #21
  br label %267

267:                                              ; preds = %266, %263
  %268 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 72
  %269 = load float, ptr %268, align 8, !tbaa !159
  %270 = fcmp une float %269, 0.000000e+00
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %16, float noundef %269) #21
  br label %272

272:                                              ; preds = %271, %267
  %273 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %274 = load float, ptr %6, align 4, !tbaa !160
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %273, ptr noundef nonnull %9, float noundef %274) #21
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %8) #21
  %275 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  call void @unit_qt(ptr noundef nonnull %275) #22
  %276 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 12
  %277 = load i16, ptr %276, align 2, !tbaa !150
  switch i16 %277, label %287 [
    i16 0, label %321
    i16 1, label %292
    i16 9, label %292
    i16 2, label %278
    i16 3, label %279
    i16 4, label %279
    i16 5, label %279
    i16 6, label %283
    i16 7, label %283
    i16 8, label %283
  ]

278:                                              ; preds = %272
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %9) #21
  br label %287

279:                                              ; preds = %272, %272, %272
  %280 = zext nneg i16 %277 to i64
  %281 = add nsw i64 %280, -3
  %282 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 %281
  store float 1.000000e+00, ptr %282, align 4, !tbaa !110
  br label %287

283:                                              ; preds = %272, %272, %272
  %284 = zext nneg i16 %277 to i64
  %285 = add nsw i64 %284, -6
  %286 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47, i64 %285
  br label %292

287:                                              ; preds = %278, %279, %272
  call fastcc void @negate_v3(ptr noundef nonnull %20) #21
  call void @vec_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %20, i16 noundef signext 0, i16 noundef signext 2) #22
  %288 = load float, ptr %170, align 4, !tbaa !156
  %289 = fcmp une float %288, 0.000000e+00
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  call void @interp_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, float noundef %288) #22
  br label %308

291:                                              ; preds = %287
  call void @copy_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  br label %308

292:                                              ; preds = %272, %272, %283
  %293 = phi ptr [ %286, %283 ], [ %7, %272 ], [ %7, %272 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %293) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #23
  call void @mat4_to_quat(ptr noundef nonnull %25, ptr noundef nonnull %106) #22
  call void @invert_qt_qt(ptr noundef nonnull %26, ptr noundef nonnull %25) #22
  %294 = load i16, ptr %276, align 2, !tbaa !150
  %295 = icmp eq i16 %294, 9
  br i1 %295, label %298, label %296

296:                                              ; preds = %292
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #23
  call fastcc void @negate_v3(ptr noundef nonnull %20) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %20) #21
  call void @mul_qt_v3(ptr noundef nonnull %26, ptr noundef nonnull %27) #22
  %297 = call fastcc float @normalize_v3(ptr noundef nonnull %27) #21
  call void @vec_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %27, i16 noundef signext 0, i16 noundef signext 2) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #23
  br label %301

298:                                              ; preds = %292
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %28) #23
  %299 = getelementptr inbounds [3 x [3 x float]], ptr %28, i64 0, i64 1
  %300 = getelementptr inbounds [3 x [3 x float]], ptr %28, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %20) #21
  call void @mul_qt_v3(ptr noundef nonnull %26, ptr noundef nonnull %28) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %299, ptr noundef nonnull %19) #21
  call void @mul_qt_v3(ptr noundef nonnull %26, ptr noundef nonnull %299) #22
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %300, ptr noundef nonnull %299, ptr noundef nonnull %28) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %299, ptr noundef nonnull %300, ptr noundef nonnull %28) #21
  call void @mat3_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %28) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %28) #23
  br label %301

301:                                              ; preds = %298, %296
  %302 = load float, ptr %170, align 4, !tbaa !156
  %303 = fcmp une float %302, 0.000000e+00
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  call void @mul_qt_qtqt(ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %26) #22
  %305 = load float, ptr %170, align 4, !tbaa !156
  call void @interp_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, float noundef %305) #22
  br label %307

306:                                              ; preds = %301
  call void @copy_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  br label %307

307:                                              ; preds = %306, %304
  call void @mul_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %25, ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #23
  br label %308

308:                                              ; preds = %290, %291, %307
  %309 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 78
  %310 = load float, ptr %309, align 8, !tbaa !162
  %311 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 80
  %312 = load float, ptr %311, align 8, !tbaa !163
  %313 = fcmp une float %312, 0.000000e+00
  br i1 %313, label %314, label %318

314:                                              ; preds = %308
  %315 = add nsw i32 %103, 20
  %316 = call fastcc float @psys_frand(ptr noundef nonnull %32, i32 noundef %315) #21
  %317 = call float @llvm.fmuladd.f32(float %312, float %316, float %310)
  br label %318

318:                                              ; preds = %314, %308
  %319 = phi float [ %317, %314 ], [ %310, %308 ]
  %320 = fmul float %319, 0x400921FB60000000
  call void @axis_angle_to_quat(ptr noundef nonnull %21, ptr noundef nonnull %17, float noundef %320) #22
  call void @mul_qt_qtqt(ptr noundef nonnull %275, ptr noundef nonnull %10, ptr noundef nonnull %21) #22
  br label %321

321:                                              ; preds = %272, %318
  %322 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  call fastcc void @zero_v3(ptr noundef nonnull %322) #21
  %323 = load i16, ptr %150, align 4, !tbaa !155
  switch i16 %323, label %325 [
    i16 0, label %330
    i16 2, label %324
  ]

324:                                              ; preds = %321
  call fastcc void @copy_v3_v3(ptr noundef nonnull %322, ptr noundef nonnull %13) #21
  br label %326

325:                                              ; preds = %321
  call fastcc void @get_angular_velocity_vector(i16 noundef signext %323, ptr noundef %2, ptr noundef nonnull %322) #21
  br label %326

326:                                              ; preds = %325, %324
  %327 = call fastcc float @normalize_v3(ptr noundef nonnull %322) #21
  %328 = getelementptr inbounds %struct.ParticleSettings, ptr %34, i64 0, i32 77
  %329 = load float, ptr %328, align 4, !tbaa !164
  call fastcc void @mul_v3_fl(ptr noundef nonnull %322, float noundef %329) #21
  br label %330

330:                                              ; preds = %321, %326, %206
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #23
  ret void
}

; Function Attrs: optsize
declare void @psys_particle_on_emitter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_get_texture(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !165 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #21
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !166 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !110
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !110
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !110
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !167 {
  %4 = load float, ptr %1, align 4, !tbaa !110
  %5 = load float, ptr %0, align 4, !tbaa !110
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !110
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !110
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !110
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !110
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !110
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !110
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !168 {
  %3 = load float, ptr %1, align 4, !tbaa !110
  store float %3, ptr %0, align 4, !tbaa !110
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !110
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !110
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !110
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !169 {
  %3 = load float, ptr %0, align 4, !tbaa !110
  %4 = load float, ptr %1, align 4, !tbaa !110
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !110
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !110
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !110
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !110
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !170 {
  %3 = load float, ptr %1, align 4, !tbaa !110
  %4 = load float, ptr %0, align 4, !tbaa !110
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !110
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !110
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !110
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !110
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !110
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !110
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @psys_frand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !171 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !172
  %5 = srem i32 %4, 1024
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !100
  %9 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !100
  %11 = mul i32 %10, %1
  %12 = add i32 %11, %8
  %13 = and i32 %12, 1023
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !110
  ret float %16
}

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !173 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !110
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !174 {
  %4 = load float, ptr %1, align 4, !tbaa !110
  %5 = load float, ptr %2, align 4, !tbaa !110
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !110
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !110
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !110
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !110
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !110
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !110
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !175 {
  %3 = load float, ptr %1, align 4, !tbaa !110
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !110
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !110
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !110
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !110
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !176 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !110
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !110
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !110
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !110
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !110
  %15 = load float, ptr %8, align 4, !tbaa !110
  %16 = load float, ptr %2, align 4, !tbaa !110
  %17 = load float, ptr %1, align 4, !tbaa !110
  %18 = load float, ptr %6, align 4, !tbaa !110
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !110
  %23 = load float, ptr %1, align 4, !tbaa !110
  %24 = load float, ptr %10, align 4, !tbaa !110
  %25 = load float, ptr %4, align 4, !tbaa !110
  %26 = load float, ptr %2, align 4, !tbaa !110
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !177 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #21
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #22
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #21
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #21
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !178 {
  %4 = load float, ptr %1, align 4, !tbaa !110
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !110
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !110
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !110
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !110
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !179 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !110
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !110
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !110
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @invert_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @get_angular_velocity_vector(i16 noundef signext %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !PGOFuncName !180 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  switch i16 %0, label %21 [
    i16 1, label %7
    i16 3, label %9
    i16 4, label %12
    i16 5, label %15
    i16 6, label %17
    i16 7, label %19
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %8) #21
  br label %21

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !110
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %10, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call fastcc void @cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  br label %21

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !110
  %13 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 1.000000e+00, ptr %13, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %5) #21
  call fastcc void @cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  br label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !110
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %2, align 4, !tbaa !110
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %18, align 4, !tbaa !110
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !110
  br label %21

19:                                               ; preds = %3
  %20 = getelementptr inbounds float, ptr %2, i64 2
  store float 1.000000e+00, ptr %20, align 4, !tbaa !110
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !110
  br label %21

21:                                               ; preds = %3, %19, %17, %15, %12, %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reset_particle(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ParticleTexture, align 4
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #23
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 200
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 7
  %18 = load i16, ptr %17, align 8, !tbaa !54
  %19 = icmp ne i16 %18, 2
  %20 = fcmp ogt float %2, 0.000000e+00
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !146
  %25 = fcmp olt float %24, %3
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 20
  %28 = load float, ptr %27, align 8, !tbaa !181
  %29 = fcmp ult float %24, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  tail call fastcc void @evaluate_emitter_anim(ptr noundef %31, ptr noundef %33, float noundef %24) #21
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 25
  %35 = load i32, ptr %34, align 4, !tbaa !55
  %36 = or i32 %35, 16384
  store i32 %36, ptr %34, align 4, !tbaa !55
  br label %37

37:                                               ; preds = %30, %26, %22, %4
  tail call void @psys_get_birth_coordinates(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %1, float noundef %2, float noundef %3) #21
  tail call fastcc void @initialize_particle_texture(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %14) #21
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 11
  %39 = load i16, ptr %38, align 8, !tbaa !56
  %40 = icmp eq i16 %39, 3
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !148
  %44 = icmp eq ptr %43, null
  br i1 %44, label %73, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.BoidParticle, ptr %43, i64 0, i32 2
  store <2 x float> zeroinitializer, ptr %46, align 4, !tbaa !110
  %47 = getelementptr inbounds %struct.BoidParticle, ptr %43, i64 0, i32 2, i64 2
  store float -1.000000e+00, ptr %47, align 4, !tbaa !110
  %48 = load ptr, ptr %0, align 8, !tbaa !107
  %49 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 40, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !182
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 40, i32 0, i64 2
  %55 = load float, ptr %54, align 8, !tbaa !110
  %56 = fcmp une float %55, 0.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store float %55, ptr %47, align 4, !tbaa !110
  br label %58

58:                                               ; preds = %57, %53, %45
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !201
  %61 = getelementptr inbounds %struct.BoidSettings, ptr %60, i64 0, i32 6
  %62 = load float, ptr %61, align 8, !tbaa !202
  %63 = getelementptr inbounds %struct.BoidParticle, ptr %43, i64 0, i32 1
  store float %62, ptr %63, align 8, !tbaa !204
  %64 = getelementptr inbounds %struct.BoidParticle, ptr %43, i64 0, i32 1, i32 3
  store i16 0, ptr %64, align 2, !tbaa !207
  %65 = getelementptr inbounds %struct.BoidSettings, ptr %60, i64 0, i32 22
  %66 = load ptr, ptr %65, align 8, !tbaa !208
  %67 = getelementptr inbounds %struct.BoidState, ptr %66, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !209
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds %struct.BoidParticle, ptr %43, i64 0, i32 1, i32 2
  store i16 %69, ptr %70, align 8, !tbaa !211
  %71 = getelementptr inbounds %struct.BoidParticle, ptr %43, i64 0, i32 1, i32 1
  %72 = getelementptr inbounds %struct.BoidParticle, ptr %43, i64 0, i32 1, i32 1, i64 2
  store float 0.000000e+00, ptr %72, align 4, !tbaa !110
  store <2 x float> zeroinitializer, ptr %71, align 4, !tbaa !110
  br label %73

73:                                               ; preds = %58, %41, %37
  %74 = load i16, ptr %17, align 8, !tbaa !54
  %75 = icmp eq i16 %74, 2
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 7
  store float 1.000000e+02, ptr %77, align 8, !tbaa !212
  br label %104

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 55
  %80 = load float, ptr %79, align 4, !tbaa !213
  %81 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 56
  %82 = load float, ptr %81, align 8, !tbaa !214
  %83 = add nsw i32 %14, 21
  %84 = tail call fastcc float @psys_frand(ptr noundef nonnull %7, i32 noundef %83) #21
  %85 = fneg float %82
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %84, float 1.000000e+00)
  %87 = fmul float %80, %86
  %88 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 7
  store float %87, ptr %88, align 8, !tbaa !212
  %89 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %90 = load float, ptr %89, align 4, !tbaa !146
  %91 = fadd float %90, %87
  %92 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  store float %91, ptr %92, align 4, !tbaa !215
  call void @psys_get_texture(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2, float noundef %3) #22
  %93 = load float, ptr %79, align 4, !tbaa !213
  %94 = getelementptr inbounds %struct.ParticleTexture, ptr %5, i64 0, i32 2
  %95 = load float, ptr %94, align 4, !tbaa !216
  %96 = fmul float %93, %95
  store float %96, ptr %88, align 8, !tbaa !212
  %97 = load float, ptr %81, align 8, !tbaa !214
  %98 = fcmp une float %97, 0.000000e+00
  br i1 %98, label %99, label %104

99:                                               ; preds = %78
  %100 = call fastcc float @psys_frand(ptr noundef nonnull %7, i32 noundef %83) #21
  %101 = fneg float %97
  %102 = call float @llvm.fmuladd.f32(float %101, float %100, float 1.000000e+00)
  %103 = fmul float %96, %102
  store float %103, ptr %88, align 8, !tbaa !212
  br label %104

104:                                              ; preds = %78, %99, %76
  %105 = phi float [ %96, %78 ], [ %103, %99 ], [ 1.000000e+02, %76 ]
  %106 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %107 = load float, ptr %106, align 4, !tbaa !146
  %108 = fadd float %107, %105
  %109 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  store float %108, ptr %109, align 4, !tbaa !215
  %110 = load ptr, ptr %6, align 8, !tbaa !118
  %111 = getelementptr inbounds %struct.ParticleSystem, ptr %110, i64 0, i32 40
  %112 = load ptr, ptr %111, align 8, !tbaa !49
  %113 = icmp eq ptr %112, null
  br i1 %113, label %129, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.PointCache, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !50
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.PointCache, ptr %112, i64 0, i32 20
  %121 = load ptr, ptr %120, align 8, !tbaa !217
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = call float @psys_get_dietime_from_cache(ptr noundef nonnull %112, i32 noundef %14) #22
  %125 = load float, ptr %109, align 4, !tbaa !215
  %126 = fcmp olt float %125, %124
  %127 = select i1 %126, float %125, float %124
  store float %127, ptr %109, align 4, !tbaa !215
  %128 = load float, ptr %106, align 4, !tbaa !146
  br label %129

129:                                              ; preds = %123, %119, %114, %104
  %130 = phi float [ %127, %123 ], [ %108, %119 ], [ %108, %114 ], [ %108, %104 ]
  %131 = phi float [ %128, %123 ], [ %107, %119 ], [ %107, %114 ], [ %107, %104 ]
  %132 = fcmp ogt float %131, %3
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 18
  store i16 2, ptr %134, align 2, !tbaa !218
  br label %140

135:                                              ; preds = %129
  %136 = fcmp ugt float %130, %3
  %137 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 18
  br i1 %136, label %139, label %138

138:                                              ; preds = %135
  store i16 1, ptr %137, align 2, !tbaa !218
  br label %140

139:                                              ; preds = %135
  store i16 3, ptr %137, align 2, !tbaa !218
  br label %140

140:                                              ; preds = %138, %139, %133
  %141 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 4
  store float %3, ptr %141, align 4, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @evaluate_emitter_anim(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !220 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @evaluate_emitter_anim(ptr noundef %0, ptr noundef nonnull %5, float noundef %2) #21
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !222
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %10, float noundef %2, i16 noundef signext 2) #22
  tail call void @BKE_object_where_is_calc_time(ptr noundef %0, ptr noundef nonnull %1, float noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_particle_texture(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !223 {
  %4 = alloca %struct.ParticleTexture, align 4
  %5 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #23
  call void @psys_get_texture(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 15, float noundef 0.000000e+00) #22
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 7
  %10 = load i16, ptr %9, align 8, !tbaa !54
  switch i16 %10, label %43 [
    i16 0, label %11
    i16 2, label %30
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ParticleTexture, ptr %4, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !224
  %14 = add nsw i32 %2, 125
  %15 = call fastcc float @psys_frand(ptr noundef nonnull %6, i32 noundef %14) #21
  %16 = fcmp olt float %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 17
  %19 = load i16, ptr %18, align 4, !tbaa !62
  %20 = or i16 %19, 1
  store i16 %20, ptr %18, align 4, !tbaa !62
  br label %21

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 53
  %23 = load float, ptr %22, align 4, !tbaa !144
  %24 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 54
  %25 = load float, ptr %24, align 8, !tbaa !145
  %26 = fsub float %25, %23
  %27 = getelementptr inbounds %struct.ParticleTexture, ptr %4, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !225
  %29 = call float @llvm.fmuladd.f32(float %26, float %28, float %23)
  br label %40

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.ParticleTexture, ptr %4, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !224
  %33 = add nsw i32 %2, 125
  %34 = call fastcc float @psys_frand(ptr noundef nonnull %6, i32 noundef %33) #21
  %35 = fcmp olt float %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 17
  %38 = load i16, ptr %37, align 4, !tbaa !62
  %39 = or i16 %38, 1
  store i16 %39, ptr %37, align 4, !tbaa !62
  br label %40

40:                                               ; preds = %30, %36, %21
  %41 = phi float [ %29, %21 ], [ 0.000000e+00, %36 ], [ 0.000000e+00, %30 ]
  %42 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  store float %41, ptr %42, align 4, !tbaa !146
  br label %43

43:                                               ; preds = %40, %3
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare float @psys_get_dietime_from_cache(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @psys_get_target_system(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ParticleTarget, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.ParticleTarget, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !228
  %8 = add nsw i32 %7, -1
  %9 = select i1 %5, ptr %0, ptr %4
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 109
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %8) #22
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.ParticleTarget, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !229
  %15 = and i16 %14, -3
  %16 = select i1 %12, i16 0, i16 2
  %17 = or disjoint i16 %15, %16
  store i16 %17, ptr %13, align 4, !tbaa !229
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_count_keyed_targets(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !230
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 33
  store i16 0, ptr %6, align 8, !tbaa !58
  %7 = icmp eq ptr %5, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  br label %11

11:                                               ; preds = %8, %33
  %12 = phi i16 [ 1, %8 ], [ %34, %33 ]
  %13 = phi ptr [ %5, %8 ], [ %35, %33 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !117
  %15 = tail call ptr @psys_get_target_system(ptr noundef %14, ptr noundef nonnull %13) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i16, ptr %6, align 8, !tbaa !58
  %23 = add i16 %22, %12
  store i16 %23, ptr %6, align 8, !tbaa !58
  %24 = load i32, ptr %10, align 4, !tbaa !55
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 7
  %29 = load float, ptr %28, align 4, !tbaa !231
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = add i16 %23, 1
  store i16 %32, ptr %6, align 8, !tbaa !58
  br label %33

33:                                               ; preds = %11, %17, %31, %27, %21
  %34 = phi i16 [ %12, %31 ], [ %12, %27 ], [ %12, %21 ], [ 0, %17 ], [ 0, %11 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !232
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11, !llvm.loop !233

37:                                               ; preds = %33, %1
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  %39 = load i32, ptr %38, align 4, !tbaa !55
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %44, i64 0, i32 120
  %46 = load i32, ptr %45, align 4, !tbaa !234
  %47 = trunc i32 %46 to i16
  br label %48

48:                                               ; preds = %37, %42
  %49 = phi i16 [ %47, %42 ], [ 1, %37 ]
  %50 = load i16, ptr %6, align 8, !tbaa !58
  %51 = mul i16 %50, %49
  store i16 %51, ptr %6, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_make_temp_pointcache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.PTCacheID, align 8
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #21, !range !235
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #23
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %1) #22
  %15 = load i32, ptr %6, align 8, !tbaa !50
  %16 = and i32 %15, -65
  store i32 %16, ptr %6, align 8, !tbaa !50
  call void @BKE_ptcache_disk_to_mem(ptr noundef nonnull %3) #22
  %17 = load i32, ptr %6, align 8, !tbaa !50
  %18 = or i32 %17, 64
  store i32 %18, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #23
  br label %19

19:                                               ; preds = %14, %10, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !237
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_ptcache_id_from_particles(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_ptcache_disk_to_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_get_pointcache_start_end(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 53
  %8 = load float, ptr %7, align 4, !tbaa !144
  %9 = fptosi float %8 to i32
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  store i32 %10, ptr %2, align 4, !tbaa !100
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 54
  %12 = load float, ptr %11, align 8, !tbaa !145
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 55
  %14 = load float, ptr %13, align 4, !tbaa !213
  %15 = fadd float %12, %14
  %16 = fadd float %15, 1.000000e+00
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !238
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %17)
  store i32 %20, ptr %3, align 4, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_update_particle_tree(ptr noundef %0, float noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 46
  %6 = load ptr, ptr %5, align 8, !tbaa !239
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 21
  %10 = load float, ptr %9, align 4, !tbaa !240
  %11 = fcmp une float %10, %1
  br i1 %11, label %12, label %49

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  tail call void @BLI_kdtree_free(ptr noundef %6) #22
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = tail call ptr @BLI_kdtree_new(i32 noundef %14) #22
  store ptr %15, ptr %5, align 8, !tbaa !239
  %16 = load i32, ptr %13, align 8, !tbaa !57
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  br label %21

21:                                               ; preds = %18, %39
  %22 = phi i32 [ %40, %39 ], [ 0, %18 ]
  %23 = phi ptr [ %41, %39 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 0, i32 17
  %25 = load i16, ptr %24, align 4, !tbaa !62
  %26 = and i16 %25, 3
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 0, i32 18
  %30 = load i16, ptr %29, align 2, !tbaa !218
  %31 = icmp eq i16 %30, 3
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ParticleKey, ptr %23, i64 0, i32 4
  %34 = load float, ptr %33, align 4, !tbaa !219
  %35 = fcmp oeq float %34, %1
  %36 = load ptr, ptr %5, align 8, !tbaa !239
  %37 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 0, i32 1
  %38 = select i1 %35, ptr %37, ptr %23
  tail call void @BLI_kdtree_insert(ptr noundef %36, i32 noundef %22, ptr noundef nonnull %38) #22
  br label %39

39:                                               ; preds = %32, %21, %28
  %40 = add nuw nsw i32 %22, 1
  %41 = getelementptr inbounds %struct.ParticleData, ptr %23, i64 1
  %42 = load i32, ptr %13, align 8, !tbaa !57
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %21, label %44, !llvm.loop !241

44:                                               ; preds = %39
  %45 = load ptr, ptr %5, align 8, !tbaa !239
  br label %46

46:                                               ; preds = %44, %12
  %47 = phi ptr [ %45, %44 ], [ %15, %12 ]
  tail call void @BLI_kdtree_balance(ptr noundef %47) #22
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 21
  store float %1, ptr %48, align 4, !tbaa !240
  br label %49

49:                                               ; preds = %8, %46, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_sph_init(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  store ptr %4, ptr %1, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  %7 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %2, %19
  %9 = phi i64 [ 1, %2 ], [ %21, %19 ]
  %10 = phi ptr [ %6, %2 ], [ %20, %19 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds [10 x ptr], ptr %1, i64 0, i64 %9
  store ptr null, ptr %13, align 8, !tbaa !68
  br label %19

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !117
  %16 = tail call ptr @psys_get_target_system(ptr noundef %15, ptr noundef nonnull %10) #21
  %17 = getelementptr inbounds [10 x ptr], ptr %1, i64 0, i64 %9
  store ptr %16, ptr %17, align 8, !tbaa !68
  %18 = load ptr, ptr %10, align 8, !tbaa !232
  br label %19

19:                                               ; preds = %12, %14
  %20 = phi ptr [ %18, %14 ], [ null, %12 ]
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, 10
  br i1 %22, label %23, label %8, !llvm.loop !242

23:                                               ; preds = %19
  %24 = tail call i32 @psys_uses_gravity(ptr noundef %0) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 40
  br label %29

29:                                               ; preds = %23, %26
  %30 = phi ptr [ %28, %26 ], [ null, %23 ]
  %31 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 4
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %3, align 8, !tbaa !118
  %33 = tail call fastcc ptr @sph_springhash_build(ptr noundef %32) #21
  %34 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !243
  %35 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 1
  store ptr null, ptr %35, align 8, !tbaa !245
  %36 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 2
  store float 1.000000e+00, ptr %36, align 8, !tbaa !246
  %37 = load ptr, ptr %3, align 8, !tbaa !118
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !247
  %42 = getelementptr inbounds %struct.SPHFluidSettings, ptr %41, i64 0, i32 15
  %43 = load i16, ptr %42, align 4, !tbaa !248
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %44, ptr @sph_force_cb, ptr @sphclassical_force_cb
  %46 = select i1 %44, ptr @sph_density_accum_cb, ptr @sphclassical_density_accum_cb
  %47 = select i1 %44, float 1.000000e+00, float 5.000000e-01
  %48 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 9
  store ptr %45, ptr %48, align 8
  %49 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 10
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 5
  store float %47, ptr %50, align 8
  ret void
}

; Function Attrs: optsize
declare i32 @psys_uses_gravity(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sph_springhash_build(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !250 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.sph_springhash_build, i32 noundef %3) #22
  %5 = load i32, ptr %2, align 8, !tbaa !72
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %12 = phi ptr [ %9, %7 ], [ %19, %10 ]
  %13 = getelementptr inbounds %struct.ParticleSpring, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !100
  %15 = getelementptr inbounds %struct.ParticleSpring, ptr %12, i64 0, i32 1, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = add nuw nsw i64 %11, 1
  %18 = inttoptr i64 %17 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %4, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %18) #22
  %19 = getelementptr inbounds %struct.ParticleSpring, ptr %12, i64 1
  %20 = load i32, ptr %2, align 8, !tbaa !72
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %10, label %23, !llvm.loop !251

23:                                               ; preds = %10, %1
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sph_force_cb(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture readnone %3) #2 !PGOFuncName !252 {
  %5 = alloca %struct.SPHRangeData, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [2 x float], align 8
  %11 = alloca %struct.ParticleSpring, align 4
  %12 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !245
  %14 = load ptr, ptr %0, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %5) #23
  %19 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !253
  %21 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %23 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 7
  %24 = load float, ptr %23, align 4, !tbaa !254
  %25 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 8
  %26 = load float, ptr %25, align 4, !tbaa !255
  %27 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 13
  %28 = load i32, ptr %27, align 4, !tbaa !256
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, float 1.000000e+00, float %24
  %32 = fmul float %26, %31
  %33 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 2
  %34 = load float, ptr %33, align 8, !tbaa !246
  %35 = fdiv float 1.000000e+00, %34
  %36 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !257
  %38 = load float, ptr %18, align 4, !tbaa !258
  %39 = and i32 %28, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 13
  %43 = load float, ptr %42, align 4, !tbaa !259
  %44 = fmul float %43, 4.000000e+00
  br label %45

45:                                               ; preds = %4, %41
  %46 = phi float [ %44, %41 ], [ 1.000000e+00, %4 ]
  %47 = fmul float %38, %46
  %48 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 5
  %49 = load float, ptr %48, align 8, !tbaa !260
  %50 = fmul float %47, %49
  %51 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 11
  %52 = load float, ptr %51, align 4, !tbaa !261
  %53 = and i32 %28, 8
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, float 1.000000e+00, float 0x4013147AE0000000
  %56 = fmul float %55, %52
  %57 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 2
  %58 = load float, ptr %57, align 4, !tbaa !262
  %59 = and i32 %28, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 13
  %63 = load float, ptr %62, align 4, !tbaa !259
  %64 = fmul float %63, 0x4004B43960000000
  br label %65

65:                                               ; preds = %45, %61
  %66 = phi float [ %64, %61 ], [ 1.000000e+00, %45 ]
  %67 = fmul float %58, %66
  %68 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 9
  %69 = load float, ptr %68, align 4, !tbaa !263
  %70 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 10
  %71 = load float, ptr %70, align 4, !tbaa !264
  %72 = and i32 %28, 4
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, float 1.000000e+00, float %69
  %75 = fmul float %71, %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !61
  %78 = ptrtoint ptr %13 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 200
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !110
  %84 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 2
  store ptr %10, ptr %84, align 8, !tbaa !265
  %85 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 5
  store float %50, ptr %85, align 8, !tbaa !267
  %86 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 4
  store ptr %13, ptr %86, align 8, !tbaa !268
  %87 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 6
  store float %34, ptr %87, align 4, !tbaa !269
  call fastcc void @sph_evaluate_func(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %47, ptr noundef nonnull @sph_density_accum_cb) #21
  %88 = load float, ptr %10, align 8, !tbaa !110
  %89 = load float, ptr %83, align 4, !tbaa !110
  %90 = fsub float %88, %56
  %91 = fmul float %69, %90
  %92 = fmul float %75, %89
  %93 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !270
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %213

96:                                               ; preds = %65
  %97 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 4
  %98 = fcmp ogt float %24, 0.000000e+00
  %99 = fcmp ogt float %32, 0.000000e+00
  %100 = select i1 %98, i1 true, i1 %99
  %101 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %102 = fcmp ogt float %37, 0.000000e+00
  %103 = icmp ne ptr %22, null
  %104 = fmul float %37, -1.000000e+01
  %105 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 14
  %106 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 1, i32 4
  %107 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 6
  %108 = getelementptr inbounds %struct.ParticleSpring, ptr %11, i64 0, i32 1
  %109 = getelementptr inbounds %struct.ParticleSpring, ptr %11, i64 0, i32 1, i64 1
  %110 = getelementptr inbounds %struct.ParticleSpring, ptr %11, i64 0, i32 2
  br label %111

111:                                              ; preds = %96, %208
  %112 = phi ptr [ %5, %96 ], [ %210, %208 ]
  %113 = phi i32 [ 0, %96 ], [ %209, %208 ]
  %114 = load ptr, ptr %112, align 8, !tbaa !271
  %115 = getelementptr inbounds %struct.ParticleSystem, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  %117 = getelementptr inbounds %struct.SPHNeighbor, ptr %112, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !273
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %119, i32 1
  %121 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %119, i32 1, i32 1
  %122 = load float, ptr %97, align 4, !tbaa !274
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %9, ptr noundef nonnull %120, ptr noundef nonnull %121, float noundef %122) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %1) #21
  %123 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #21
  %124 = fdiv float %123, %50
  %125 = fsub float 1.000000e+00, %124
  %126 = load ptr, ptr %112, align 8, !tbaa !271
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = getelementptr inbounds %struct.ParticleSettings, ptr %128, i64 0, i32 81
  %130 = load float, ptr %129, align 4, !tbaa !275
  %131 = fmul float %125, %130
  %132 = fmul float %35, %131
  %133 = getelementptr inbounds %struct.ParticleSettings, ptr %128, i64 0, i32 5
  %134 = load i32, ptr %133, align 8, !tbaa !276
  %135 = and i32 %134, 65536
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %111
  %138 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %119, i32 13
  %139 = load float, ptr %138, align 4, !tbaa !259
  %140 = fmul float %132, %139
  br label %141

141:                                              ; preds = %137, %111
  %142 = phi float [ %140, %137 ], [ %132, %111 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %121) #21
  %143 = call float @llvm.fmuladd.f32(float %92, float %142, float %91)
  %144 = fneg float %143
  %145 = fmul float %142, %144
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %7, float noundef %145) #21
  br i1 %100, label %146, label %161

146:                                              ; preds = %141
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %101) #21
  %147 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  %148 = fcmp olt float %147, 0.000000e+00
  %149 = and i1 %98, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = fmul float %142, 5.000000e-01
  %152 = fmul float %24, %151
  %153 = fmul float %152, %147
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %7, float noundef %153) #21
  br label %154

154:                                              ; preds = %150, %146
  %155 = fcmp ogt float %147, 0.000000e+00
  %156 = select i1 %155, i1 %99, i1 false
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = fmul float %142, 5.000000e-01
  %159 = fmul float %32, %158
  %160 = fmul float %159, %147
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %7, float noundef %160) #21
  br label %161

161:                                              ; preds = %154, %157, %141
  br i1 %102, label %162, label %208

162:                                              ; preds = %161
  %163 = load ptr, ptr %0, align 8, !tbaa !68
  %164 = icmp eq ptr %126, %163
  br i1 %164, label %165, label %204

165:                                              ; preds = %162
  %166 = load i32, ptr %27, align 4, !tbaa !256
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %168, i1 %103, i1 false
  br i1 %169, label %170, label %204

170:                                              ; preds = %165
  %171 = load i32, ptr %117, align 8, !tbaa !273
  %172 = call ptr @BLI_edgehash_lookup(ptr noundef nonnull %22, i32 noundef %82, i32 noundef %171) #22
  %173 = ptrtoint ptr %172 to i64
  %174 = and i64 %173, 4294967295
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr %0, align 8, !tbaa !68
  %178 = getelementptr inbounds %struct.ParticleSystem, ptr %177, i64 0, i32 43
  %179 = load ptr, ptr %178, align 8, !tbaa !70
  %180 = shl i64 %173, 32
  %181 = ashr exact i64 %180, 32
  %182 = getelementptr inbounds %struct.ParticleSpring, ptr %179, i64 %181
  %183 = getelementptr inbounds %struct.ParticleSpring, ptr %182, i64 -1
  %184 = fmul float %104, %125
  %185 = load float, ptr %183, align 4, !tbaa !277
  %186 = fsub float %185, %123
  %187 = fmul float %184, %186
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %7, float noundef %187) #21
  br label %208

188:                                              ; preds = %170
  %189 = load i32, ptr %105, align 4, !tbaa !279
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load float, ptr %106, align 4, !tbaa !280
  %193 = load float, ptr %107, align 4, !tbaa !146
  %194 = fsub float %192, %193
  %195 = sitofp i32 %189 to float
  %196 = fcmp ugt float %194, %195
  br i1 %196, label %208, label %197

197:                                              ; preds = %191, %188
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #23
  store i32 %82, ptr %108, align 4, !tbaa !100
  %198 = load i32, ptr %117, align 8, !tbaa !273
  store i32 %198, ptr %109, align 4, !tbaa !100
  %199 = load i32, ptr %27, align 4, !tbaa !256
  %200 = and i32 %199, 2
  %201 = icmp eq i32 %200, 0
  %202 = select i1 %201, float %67, float %123
  store float %202, ptr %11, align 4, !tbaa !277
  store i32 0, ptr %110, align 4, !tbaa !281
  %203 = load ptr, ptr %0, align 8, !tbaa !68
  call fastcc void @sph_spring_add(ptr noundef %203, ptr noundef nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #23
  br label %208

204:                                              ; preds = %165, %162
  %205 = fmul float %104, %125
  %206 = fsub float %67, %123
  %207 = fmul float %206, %205
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %7, float noundef %207) #21
  br label %208

208:                                              ; preds = %161, %176, %197, %191, %204
  %209 = add nuw nsw i32 %113, 1
  %210 = getelementptr inbounds %struct.SPHNeighbor, ptr %112, i64 1
  %211 = load i32, ptr %93, align 8, !tbaa !270
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %111, label %213, !llvm.loop !282

213:                                              ; preds = %208, %65
  %214 = getelementptr inbounds %struct.SPHFluidSettings, ptr %18, i64 0, i32 12
  %215 = load float, ptr %214, align 4, !tbaa !283
  %216 = fcmp ogt float %215, 0.000000e+00
  %217 = icmp ne ptr %20, null
  %218 = select i1 %216, i1 %217, i1 false
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = fmul float %90, %215
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %20, float noundef %220) #21
  br label %221

221:                                              ; preds = %219, %213
  %222 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 6
  %223 = load i32, ptr %222, align 4, !tbaa !284
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %221
  %226 = load ptr, ptr %0, align 8, !tbaa !68
  %227 = getelementptr inbounds %struct.ParticleSystem, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !34
  %229 = getelementptr inbounds %struct.ParticleSettings, ptr %228, i64 0, i32 67
  %230 = load i16, ptr %229, align 4, !tbaa !285
  %231 = and i16 %230, 1
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %225
  call fastcc void @sph_particle_courant(ptr noundef nonnull %0, ptr noundef nonnull %5) #21
  %234 = load i32, ptr %222, align 4, !tbaa !284
  br label %235

235:                                              ; preds = %233, %225, %221
  %236 = phi i32 [ %234, %233 ], [ 0, %225 ], [ %223, %221 ]
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %222, align 4, !tbaa !284
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @sph_density_accum_cb(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) #13 !PGOFuncName !286 {
  %4 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  %12 = icmp eq ptr %9, %11
  %13 = fcmp olt float %2, 0x3E80000000000000
  %14 = or i1 %13, %12
  br i1 %14, label %49, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !270
  %18 = icmp sgt i32 %17, 511
  br i1 %18, label %49, label %19

19:                                               ; preds = %15
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %20, i32 1
  store i32 %1, ptr %21, align 8, !tbaa !273
  %22 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %20
  store ptr %5, ptr %22, align 8, !tbaa !271
  %23 = add nsw i32 %17, 1
  store i32 %23, ptr %16, align 8, !tbaa !270
  %24 = tail call float @sqrtf(float noundef %2) #22
  %25 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !267
  %27 = fdiv float %24, %26
  %28 = fsub float 1.000000e+00, %27
  %29 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 7
  %30 = load float, ptr %29, align 8, !tbaa !288
  %31 = fmul float %30, %28
  %32 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !289
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.ParticleData, ptr %7, i64 %8, i32 13
  %37 = load float, ptr %36, align 4, !tbaa !259
  %38 = fmul float %31, %37
  br label %39

39:                                               ; preds = %35, %19
  %40 = phi float [ %38, %35 ], [ %31, %19 ]
  %41 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !265
  %43 = fmul float %40, %40
  %44 = load <2 x float>, ptr %42, align 4, !tbaa !110
  %45 = insertelement <2 x float> poison, float %40, i64 0
  %46 = insertelement <2 x float> %45, float %43, i64 1
  %47 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %47, <2 x float> %44)
  store <2 x float> %48, ptr %42, align 4, !tbaa !110
  br label %49

49:                                               ; preds = %15, %3, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sphclassical_force_cb(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture readnone %3) #2 !PGOFuncName !290 {
  %5 = alloca %struct.SPHRangeData, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !245
  %11 = load ptr, ptr %0, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %5) #23
  %16 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %18 = getelementptr inbounds %struct.SPHFluidSettings, ptr %15, i64 0, i32 7
  %19 = load float, ptr %18, align 4, !tbaa !254
  %20 = getelementptr inbounds %struct.SPHFluidSettings, ptr %15, i64 0, i32 11
  %21 = load float, ptr %20, align 4, !tbaa !261
  %22 = getelementptr inbounds %struct.SPHFluidSettings, ptr %15, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !256
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float 1.000000e+00, float 0x4013147AE0000000
  %27 = fmul float %21, %26
  %28 = getelementptr inbounds %struct.SPHFluidSettings, ptr %15, i64 0, i32 9
  %29 = load float, ptr %28, align 4, !tbaa !263
  %30 = tail call fastcc float @pow2(float noundef %29) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  %31 = load float, ptr %15, align 4, !tbaa !258
  %32 = and i32 %23, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.ParticleData, ptr %10, i64 0, i32 13
  %36 = load float, ptr %35, align 4, !tbaa !259
  %37 = fmul float %36, 4.000000e+00
  br label %38

38:                                               ; preds = %4, %34
  %39 = phi float [ %37, %34 ], [ 1.000000e+00, %4 ]
  %40 = fmul float %31, %39
  %41 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 5
  %42 = load float, ptr %41, align 8, !tbaa !260
  %43 = fmul float %40, %42
  %44 = fdiv float 1.000000e+00, %43
  %45 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 5
  store float %43, ptr %45, align 8, !tbaa !267
  %46 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 4
  store ptr %10, ptr %46, align 8, !tbaa !268
  call fastcc void @sph_evaluate_func(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %40, ptr noundef nonnull @sphclassical_neighbour_accum_cb) #21
  %47 = getelementptr inbounds %struct.ParticleData, ptr %10, i64 0, i32 14
  %48 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 2
  %49 = load float, ptr %48, align 8, !tbaa !246
  %50 = load float, ptr %45, align 8, !tbaa !267
  %51 = call fastcc float @pow3(float noundef %50) #21
  %52 = fdiv float %49, %51
  %53 = fmul float %52, 0x3FAABCEF80000000
  %54 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !270
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %141

57:                                               ; preds = %38
  %58 = load float, ptr %47, align 8, !tbaa !291
  %59 = fdiv float %58, %27
  %60 = call fastcc float @pow7(float noundef %59) #21
  %61 = fadd float %60, -1.000000e+00
  %62 = fmul float %30, %61
  %63 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 4
  %64 = fcmp ogt float %19, 0.000000e+00
  %65 = getelementptr inbounds %struct.ParticleData, ptr %10, i64 0, i32 1, i32 1
  %66 = insertelement <2 x float> poison, float %62, i64 0
  br label %67

67:                                               ; preds = %57, %136
  %68 = phi ptr [ %5, %57 ], [ %138, %136 ]
  %69 = phi i32 [ 0, %57 ], [ %137, %136 ]
  %70 = load ptr, ptr %68, align 8, !tbaa !271
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !61
  %73 = getelementptr inbounds %struct.SPHNeighbor, ptr %68, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !273
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ParticleData, ptr %72, i64 %75
  %77 = icmp eq ptr %76, %10
  br i1 %77, label %136, label %78

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.ParticleData, ptr %72, i64 %75, i32 1
  %80 = getelementptr inbounds %struct.ParticleData, ptr %72, i64 %75, i32 1, i32 1
  %81 = load float, ptr %63, align 4, !tbaa !274
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %8, ptr noundef nonnull %79, ptr noundef nonnull %80, float noundef %81) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %1) #21
  %82 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #21
  %83 = load float, ptr %45, align 8, !tbaa !267
  %84 = fdiv float %82, %83
  %85 = fcmp ogt float %84, 2.000000e+00
  br i1 %85, label %136, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.ParticleData, ptr %72, i64 %75, i32 14
  %88 = load float, ptr %87, align 8, !tbaa !291
  %89 = fdiv float %88, %27
  %90 = call fastcc float @pow7(float noundef %89) #21
  %91 = fadd float %90, -1.000000e+00
  %92 = fmul float %30, %91
  %93 = fsub float 2.000000e+00, %84
  %94 = call fastcc float @pow4(float noundef %93) #21
  %95 = call fastcc float @pow3(float noundef %93) #21
  %96 = call float @llvm.fmuladd.f32(float %84, float 2.000000e+00, float 1.000000e+00)
  %97 = fmul float %95, -4.000000e+00
  %98 = fmul float %96, %97
  %99 = call float @llvm.fmuladd.f32(float %94, float 2.000000e+00, float %98)
  %100 = fmul float %53, %99
  %101 = load ptr, ptr %68, align 8, !tbaa !271
  %102 = getelementptr inbounds %struct.ParticleSystem, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = getelementptr inbounds %struct.ParticleSettings, ptr %103, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !276
  %106 = and i32 %105, 65536
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %86
  %109 = getelementptr inbounds %struct.ParticleData, ptr %72, i64 %75, i32 13
  %110 = load float, ptr %109, align 4, !tbaa !259
  %111 = fmul float %100, %110
  br label %112

112:                                              ; preds = %108, %86
  %113 = phi float [ %111, %108 ], [ %100, %86 ]
  %114 = load float, ptr %47, align 8, !tbaa !291
  %115 = call fastcc float @pow2(float noundef %114) #21
  %116 = call fastcc float @pow2(float noundef %88) #21
  %117 = insertelement <2 x float> %66, float %92, i64 1
  %118 = insertelement <2 x float> poison, float %115, i64 0
  %119 = insertelement <2 x float> %118, float %116, i64 1
  %120 = fdiv <2 x float> %117, %119
  %121 = shufflevector <2 x float> %120, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %122 = fadd <2 x float> %120, %121
  %123 = extractelement <2 x float> %122, i64 0
  %124 = fmul float %113, %123
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %7, float noundef %124) #21
  br i1 %64, label %125, label %136

125:                                              ; preds = %112
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %80, ptr noundef nonnull %65) #21
  %126 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  %127 = fneg float %113
  %128 = fmul float %44, %127
  %129 = fmul float %19, %128
  %130 = load float, ptr %87, align 8, !tbaa !291
  %131 = load float, ptr %47, align 8, !tbaa !291
  %132 = fmul float %131, 5.000000e-01
  %133 = call float @llvm.fmuladd.f32(float %130, float 5.000000e-01, float %132)
  %134 = fdiv float %129, %133
  %135 = fmul float %126, %134
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %7, float noundef %135) #21
  br label %136

136:                                              ; preds = %112, %125, %78, %67
  %137 = add nuw nsw i32 %69, 1
  %138 = getelementptr inbounds %struct.SPHNeighbor, ptr %68, i64 1
  %139 = load i32, ptr %54, align 8, !tbaa !270
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %67, label %141, !llvm.loop !292

141:                                              ; preds = %136, %38
  %142 = getelementptr inbounds %struct.SPHFluidSettings, ptr %15, i64 0, i32 12
  %143 = load float, ptr %142, align 4, !tbaa !283
  %144 = fcmp ogt float %143, 0.000000e+00
  %145 = icmp ne ptr %17, null
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load float, ptr %47, align 8, !tbaa !291
  %149 = fsub float %148, %27
  %150 = fmul float %143, %149
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %17, float noundef %150) #21
  br label %151

151:                                              ; preds = %147, %141
  %152 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !284
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load ptr, ptr %0, align 8, !tbaa !68
  %157 = getelementptr inbounds %struct.ParticleSystem, ptr %156, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !34
  %159 = getelementptr inbounds %struct.ParticleSettings, ptr %158, i64 0, i32 67
  %160 = load i16, ptr %159, align 4, !tbaa !285
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %155
  call fastcc void @sph_particle_courant(ptr noundef nonnull %0, ptr noundef nonnull %5) #21
  %164 = load i32, ptr %152, align 4, !tbaa !284
  br label %165

165:                                              ; preds = %163, %155, %151
  %166 = phi i32 [ %164, %163 ], [ 0, %155 ], [ %153, %151 ]
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %152, align 4, !tbaa !284
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @sphclassical_density_accum_cb(ptr nocapture noundef readonly %0, i32 noundef %1, float %2) #13 !PGOFuncName !293 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !287
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.ParticleData, ptr %8, i64 %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  %11 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !268
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %10, ptr noundef %12) #21
  %13 = call fastcc float @len_v3(ptr noundef nonnull %4) #21
  %14 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !267
  %16 = fdiv float %13, %15
  %17 = fcmp ogt float %16, 2.000000e+00
  br i1 %17, label %52, label %18

18:                                               ; preds = %3
  %19 = tail call fastcc float @pow3(float noundef %15) #21
  %20 = fdiv float 0x3F9ABCEF80000000, %19
  %21 = fsub float 2.000000e+00, %16
  %22 = tail call fastcc float @pow4(float noundef %21) #21
  %23 = fmul float %20, %22
  %24 = tail call float @llvm.fmuladd.f32(float %16, float 2.000000e+00, float 1.000000e+00)
  %25 = fmul float %24, %23
  %26 = load ptr, ptr %5, align 8, !tbaa !287
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 81
  %30 = load float, ptr %29, align 4, !tbaa !275
  %31 = fmul float %25, %30
  %32 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !289
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %18
  %36 = load ptr, ptr %11, align 8, !tbaa !268
  %37 = getelementptr inbounds %struct.ParticleData, ptr %36, i64 0, i32 13
  %38 = load float, ptr %37, align 4, !tbaa !259
  %39 = fmul float %31, %38
  br label %40

40:                                               ; preds = %35, %18
  %41 = phi float [ %39, %35 ], [ %31, %18 ]
  %42 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !265
  %44 = load float, ptr %43, align 4, !tbaa !110
  %45 = fadd float %41, %44
  store float %45, ptr %43, align 4, !tbaa !110
  %46 = getelementptr inbounds %struct.ParticleData, ptr %8, i64 %9, i32 14
  %47 = load float, ptr %46, align 8, !tbaa !291
  %48 = fdiv float %41, %47
  %49 = getelementptr inbounds float, ptr %43, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !110
  %51 = fadd float %50, %48
  store float %51, ptr %49, align 4, !tbaa !110
  br label %52

52:                                               ; preds = %3, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_sph_finalise(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_edgehash_free(ptr noundef nonnull %3, ptr noundef null) #22
  store ptr null, ptr %2, align 8, !tbaa !243
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_sph_density(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.SPHRangeData, align 8
  %6 = alloca [2 x float], align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = load float, ptr %11, align 4, !tbaa !258
  %13 = getelementptr inbounds %struct.SPHFluidSettings, ptr %11, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !256
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 82
  %19 = load float, ptr %18, align 8, !tbaa !294
  %20 = fmul float %19, 4.000000e+00
  br label %21

21:                                               ; preds = %4, %17
  %22 = phi float [ %20, %17 ], [ 1.000000e+00, %4 ]
  %23 = fmul float %12, %22
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !110
  %24 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 2
  store ptr %6, ptr %24, align 8, !tbaa !265
  %25 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !260
  %27 = fmul float %23, %26
  %28 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 5
  store float %27, ptr %28, align 8, !tbaa !267
  %29 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 2
  %30 = load float, ptr %29, align 8, !tbaa !246
  %31 = getelementptr inbounds %struct.SPHRangeData, ptr %5, i64 0, i32 6
  store float %30, ptr %31, align 4, !tbaa !269
  %32 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !295
  call fastcc void @sph_evaluate_func(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5, float noundef %23, ptr noundef %33) #21
  %34 = load ptr, ptr %24, align 8, !tbaa !265
  %35 = load float, ptr %34, align 4, !tbaa !110
  store float %35, ptr %3, align 4, !tbaa !110
  %36 = getelementptr inbounds float, ptr %34, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !110
  %38 = getelementptr inbounds float, ptr %3, i64 1
  store float %37, ptr %38, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sph_evaluate_func(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, float noundef %4, ptr noundef %5) unnamed_addr #2 !PGOFuncName !296 {
  %7 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !270
  %8 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 6
  %10 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 7
  %11 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 8
  %12 = icmp eq ptr %0, null
  br label %13

13:                                               ; preds = %6, %31
  %14 = phi i64 [ 0, %6 ], [ %36, %31 ]
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  store ptr %16, ptr %8, align 8, !tbaa !287
  %19 = load ptr, ptr %15, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 81
  %23 = load float, ptr %22, align 4, !tbaa !275
  %24 = load float, ptr %9, align 4, !tbaa !269
  %25 = fdiv float %23, %24
  store float %25, ptr %10, align 8, !tbaa !288
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !276
  %28 = and i32 %27, 65536
  store i32 %28, ptr %11, align 4, !tbaa !289
  br i1 %12, label %31, label %29

29:                                               ; preds = %18
  %30 = tail call i32 @BLI_bvhtree_range_query(ptr noundef nonnull %0, ptr noundef %2, float noundef %4, ptr noundef %5, ptr noundef nonnull %3) #22
  br label %38

31:                                               ; preds = %18
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 1) #22
  %32 = load ptr, ptr %15, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 47
  %34 = load ptr, ptr %33, align 8, !tbaa !297
  %35 = tail call i32 @BLI_bvhtree_range_query(ptr noundef %34, ptr noundef %2, float noundef %4, ptr noundef %5, ptr noundef nonnull %3) #22
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #22
  %36 = add nuw nsw i64 %14, 1
  %37 = icmp eq i64 %36, 10
  br i1 %37, label %38, label %13, !llvm.loop !298

38:                                               ; preds = %31, %13, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_psys_collision_neartest_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #2 {
  %5 = alloca %struct.ParticleCollisionElement, align 8
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #23
  %7 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !299
  %9 = getelementptr inbounds %struct.CollisionModifierData, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !302
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.MFace, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.CollisionModifierData, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !304
  %15 = getelementptr inbounds %struct.CollisionModifierData, ptr %8, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %17 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !306
  %19 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 11
  %20 = load float, ptr %19, align 4, !tbaa !308
  %21 = fdiv float %18, %20
  store float %21, ptr %6, align 4, !tbaa !110
  %22 = load i32, ptr %12, align 4, !tbaa !309
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MVert, ptr %14, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.MFace, ptr %10, i64 %11, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !311
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MVert, ptr %14, i64 %27
  %29 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.MFace, ptr %10, i64 %11, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !312
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.MVert, ptr %14, i64 %32
  %34 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  store ptr %33, ptr %34, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct.MFace, ptr %10, i64 %11, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !313
  %37 = icmp eq i32 %36, 0
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.MVert, ptr %14, i64 %38
  %40 = select i1 %37, ptr null, ptr %39
  %41 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  store ptr %40, ptr %41, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.MVert, ptr %16, i64 %23
  %43 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !68
  %44 = getelementptr inbounds %struct.MVert, ptr %16, i64 %27
  %45 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 0, i32 1, i64 1
  store ptr %44, ptr %45, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.MVert, ptr %16, i64 %32
  %47 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 0, i32 1, i64 2
  store ptr %46, ptr %47, align 8, !tbaa !68
  %48 = getelementptr inbounds %struct.MVert, ptr %16, i64 %38
  %49 = select i1 %37, ptr null, ptr %48
  %50 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 0, i32 1, i64 3
  store ptr %49, ptr %50, align 8, !tbaa !68
  %51 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 0, i32 9
  store i32 3, ptr %51, align 8, !tbaa !314
  %52 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 0, i32 12
  store i16 0, ptr %52, align 2, !tbaa !315
  %53 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 0, i32 10
  store i32 %1, ptr %53, align 4, !tbaa !316
  %54 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !317
  %56 = load ptr, ptr %0, align 8, !tbaa !318
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %4
  %59 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 10
  %60 = load i32, ptr %59, align 4, !tbaa !319
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !320
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %95, label %66

66:                                               ; preds = %62, %58, %4
  %67 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 2
  %68 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13
  %69 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 12
  br label %70

70:                                               ; preds = %90, %66
  %71 = load float, ptr %67, align 4, !tbaa !321
  %72 = call fastcc i32 @collision_sphere_to_tri(ptr noundef nonnull %0, float noundef %71, ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !323
  %73 = load i16, ptr %69, align 2, !tbaa !324
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load float, ptr %67, align 4, !tbaa !321
  %77 = call fastcc i32 @collision_sphere_to_edges(ptr noundef nonnull %0, float noundef %76, ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !323
  %78 = add nuw nsw i32 %77, %72
  %79 = load float, ptr %67, align 4, !tbaa !321
  %80 = call fastcc i32 @collision_sphere_to_verts(ptr noundef nonnull %0, float noundef %79, ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !323
  %81 = add nuw nsw i32 %78, %80
  br label %82

82:                                               ; preds = %75, %70
  %83 = phi i32 [ %81, %75 ], [ %72, %70 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load float, ptr %19, align 4, !tbaa !308
  %87 = load float, ptr %6, align 4, !tbaa !110
  %88 = fmul float %86, %87
  store float %88, ptr %17, align 4, !tbaa !306
  store i32 %1, ptr %3, align 4, !tbaa !325
  call fastcc void @collision_point_velocity(ptr noundef nonnull %68) #21
  %89 = load ptr, ptr %0, align 8, !tbaa !318
  store ptr %89, ptr %54, align 8, !tbaa !317
  br label %90

90:                                               ; preds = %85, %82
  %91 = load ptr, ptr %34, align 8, !tbaa !68
  store ptr %91, ptr %29, align 8, !tbaa !68
  %92 = load ptr, ptr %41, align 8, !tbaa !68
  store ptr %92, ptr %34, align 8, !tbaa !68
  store ptr null, ptr %41, align 8, !tbaa !68
  %93 = load <2 x ptr>, ptr %47, align 8, !tbaa !68
  store <2 x ptr> %93, ptr %45, align 8, !tbaa !68
  store ptr null, ptr %50, align 8, !tbaa !68
  %94 = icmp eq ptr %92, null
  br i1 %94, label %95, label %70, !llvm.loop !326

95:                                               ; preds = %90, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @collision_sphere_to_tri(ptr noundef %0, float noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #2 !PGOFuncName !327 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 11
  store i16 -1, ptr %9, align 8, !tbaa !328
  %10 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 12
  store i16 0, ptr %10, align 2, !tbaa !315
  %11 = tail call fastcc float @collision_newton_rhapson(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef nonnull @nr_signed_distance_to_plane) #21
  %12 = fcmp ult float %11, 0.000000e+00
  br i1 %12, label %62, label %13

13:                                               ; preds = %4
  %14 = load float, ptr %3, align 4, !tbaa !110
  %15 = fcmp olt float %11, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 12
  %18 = load i16, ptr %17, align 2, !tbaa !315
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i16, ptr %10, align 2, !tbaa !315
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %62

23:                                               ; preds = %20, %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %24 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3
  %25 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull %25) #21
  %26 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %26, ptr noundef nonnull %25) #21
  %27 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef nonnull %25) #21
  %28 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5) #21
  %29 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %30 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #21
  %31 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  %32 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %33 = fneg float %29
  %34 = fmul float %29, %33
  %35 = tail call float @llvm.fmuladd.f32(float %28, float %31, float %34)
  %36 = fdiv float 1.000000e+00, %35
  %37 = insertelement <2 x float> poison, float %32, i64 0
  %38 = insertelement <2 x float> %37, float %30, i64 1
  %39 = insertelement <2 x float> poison, float %33, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x float> %38, %40
  %42 = insertelement <2 x float> poison, float %31, i64 0
  %43 = insertelement <2 x float> %42, float %28, i64 1
  %44 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %44, <2 x float> %41)
  %46 = insertelement <2 x float> poison, float %36, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = fmul <2 x float> %47, %45
  %49 = extractelement <2 x float> %48, i64 0
  %50 = fcmp ult float %49, 0.000000e+00
  %51 = fcmp ugt float %49, 1.000000e+00
  %52 = or i1 %50, %51
  %53 = extractelement <2 x float> %48, i64 1
  %54 = fcmp ult float %53, 0.000000e+00
  %55 = select i1 %52, i1 true, i1 %54
  %56 = fadd float %53, %49
  %57 = fcmp ugt float %56, 1.000000e+00
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %61, label %59

59:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %8, ptr noundef nonnull align 8 dereferenceable(160) %2, i64 160, i1 false), !tbaa.struct !329
  %60 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 8
  store <2 x float> %48, ptr %60, align 8, !tbaa !110
  store float %11, ptr %3, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  br label %62

61:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  br label %62

62:                                               ; preds = %4, %13, %20, %61, %59
  %63 = phi i32 [ 1, %59 ], [ 0, %61 ], [ 0, %20 ], [ 0, %13 ], [ 0, %4 ]
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @collision_sphere_to_edges(ptr noundef %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #2 !PGOFuncName !332 {
  %5 = alloca [3 x %struct.ParticleCollisionElement], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %5) #23
  %8 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %10 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6
  %11 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 8
  br label %12

12:                                               ; preds = %4, %56
  %13 = phi i64 [ 0, %4 ], [ %23, %56 ]
  %14 = phi ptr [ null, %4 ], [ %57, %56 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !68
  %16 = icmp ne ptr %15, null
  %17 = icmp eq i64 %13, 2
  %18 = and i1 %17, %16
  br i1 %18, label %59, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13
  %21 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %13
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  store ptr %22, ptr %20, align 16, !tbaa !68
  %23 = add nuw nsw i64 %13, 1
  %24 = and i64 %23, 4294967295
  %25 = select i1 %17, i64 0, i64 %24
  %26 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds [4 x ptr], ptr %20, i64 0, i64 1
  store ptr %27, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 1, i64 %13
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13, i32 1
  store ptr %30, ptr %31, align 16, !tbaa !68
  %32 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 1, i64 %25
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13, i32 1, i64 1
  store ptr %33, ptr %34, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13, i32 9
  store i32 2, ptr %35, align 16, !tbaa !314
  %36 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13, i32 12
  store i16 0, ptr %36, align 2, !tbaa !315
  %37 = call fastcc float @collision_newton_rhapson(ptr noundef %0, float noundef %1, ptr noundef nonnull %20, ptr noundef nonnull @nr_distance_to_edge) #21
  %38 = fcmp ult float %37, 0.000000e+00
  br i1 %38, label %56, label %39

39:                                               ; preds = %19
  %40 = load float, ptr %3, align 4, !tbaa !110
  %41 = fcmp olt float %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %43 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13, i32 3
  %44 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %43, ptr noundef nonnull %44) #21
  %45 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %13, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %45, ptr noundef nonnull %44) #21
  %46 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  %47 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  %48 = fdiv float %46, %47
  %49 = fcmp olt float %48, 0.000000e+00
  %50 = fcmp ogt float %48, 1.000000e+00
  %51 = or i1 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %8, ptr noundef nonnull align 16 dereferenceable(160) %20, i64 160, i1 false), !tbaa.struct !329
  %53 = fneg float %48
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %53) #21
  %54 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #21
  store float %48, ptr %11, align 8, !tbaa !110
  store float %37, ptr %3, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  br label %56

55:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  br label %59

56:                                               ; preds = %52, %19, %39
  %57 = phi ptr [ %20, %52 ], [ %14, %19 ], [ %14, %39 ]
  %58 = icmp eq i64 %23, 3
  br i1 %58, label %59, label %12, !llvm.loop !333

59:                                               ; preds = %12, %56, %55
  %60 = phi ptr [ %14, %55 ], [ %14, %12 ], [ %57, %56 ]
  %61 = icmp ne ptr %60, null
  %62 = zext i1 %61 to i32
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %5) #23
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @collision_sphere_to_verts(ptr noundef %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #2 !PGOFuncName !334 {
  %5 = alloca [3 x %struct.ParticleCollisionElement], align 16
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13
  %7 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %8 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 13, i32 6
  br label %9

9:                                                ; preds = %4, %34
  %10 = phi i64 [ 0, %4 ], [ %36, %34 ]
  %11 = phi ptr [ null, %4 ], [ %35, %34 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !68
  %13 = icmp ne ptr %12, null
  %14 = icmp ne i64 %10, 1
  %15 = and i1 %14, %13
  br i1 %15, label %34, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %10
  %18 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %10
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  store ptr %19, ptr %17, align 16, !tbaa !68
  %20 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 1, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %10, i32 1
  store ptr %21, ptr %22, align 16, !tbaa !68
  %23 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %10, i32 9
  store i32 1, ptr %23, align 16, !tbaa !314
  %24 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %10, i32 12
  store i16 0, ptr %24, align 2, !tbaa !315
  %25 = call fastcc float @collision_newton_rhapson(ptr noundef %0, float noundef %1, ptr noundef nonnull %17, ptr noundef nonnull @nr_distance_to_vert) #21
  %26 = fcmp ult float %25, 0.000000e+00
  br i1 %26, label %34, label %27

27:                                               ; preds = %16
  %28 = load float, ptr %3, align 4, !tbaa !110
  %29 = fcmp olt float %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 16 dereferenceable(160) %17, i64 160, i1 false), !tbaa.struct !329
  %31 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %10, i32 5
  %32 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %5, i64 %10, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %31, ptr noundef nonnull %32) #21
  %33 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #21
  store float %25, ptr %3, align 4, !tbaa !110
  br label %34

34:                                               ; preds = %16, %27, %30, %9
  %35 = phi ptr [ %11, %9 ], [ %17, %30 ], [ %11, %27 ], [ %11, %16 ]
  %36 = add nuw nsw i64 %10, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %9, !llvm.loop !335

38:                                               ; preds = %34
  %39 = icmp ne ptr %35, null
  %40 = zext i1 %39 to i32
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %5) #23
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @collision_point_velocity(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !336 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 7
  %4 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %5) #21
  %6 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !314
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = load ptr, ptr %4, align 8, !tbaa !68
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef %11, ptr noundef %12) #21
  %13 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 8
  %14 = load float, ptr %13, align 8, !tbaa !110
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %2, float noundef %14) #21
  %15 = load i32, ptr %6, align 8, !tbaa !314
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = load ptr, ptr %4, align 8, !tbaa !68
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef %19, ptr noundef %20) #21
  %21 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 8, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !110
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %2, float noundef %22) #21
  br label %23

23:                                               ; preds = %9, %17, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_changed_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.PTCacheID, align 8
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #23
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #22
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !55
  %12 = and i32 %11, -1025
  store i32 %12, ptr %10, align 4, !tbaa !55
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 7
  %15 = load i16, ptr %14, align 8, !tbaa !54
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 21
  %19 = load i16, ptr %18, align 8, !tbaa !337
  switch i16 %19, label %20 [
    i16 0, label %21
    i16 6, label %21
    i16 7, label %21
    i16 8, label %21
  ]

20:                                               ; preds = %17
  store i16 6, ptr %18, align 8, !tbaa !337
  br label %21

21:                                               ; preds = %17, %17, %17, %17, %20
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 9
  %23 = load i16, ptr %22, align 4, !tbaa !77
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i16 0, ptr %22, align 4, !tbaa !77
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 17
  %28 = load i16, ptr %27, align 8, !tbaa !338
  switch i16 %28, label %29 [
    i16 0, label %30
    i16 10, label %30
    i16 6, label %30
  ]

29:                                               ; preds = %26
  store i16 10, ptr %27, align 8, !tbaa !338
  br label %30

30:                                               ; preds = %26, %26, %26, %29
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 117
  %32 = load float, ptr %31, align 8, !tbaa !339
  %33 = fcmp olt float %32, 0.000000e+00
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = fcmp ogt float %32, 1.000000e+02
  br i1 %35, label %36, label %38

36:                                               ; preds = %34, %30
  %37 = phi float [ 0.000000e+00, %30 ], [ 1.000000e+02, %34 ]
  store float %37, ptr %31, align 8, !tbaa !339
  br label %38

38:                                               ; preds = %36, %34
  %39 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 118
  %40 = load float, ptr %39, align 4, !tbaa !340
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = fcmp ogt float %40, 1.000000e+02
  br i1 %43, label %44, label %46

44:                                               ; preds = %42, %38
  %45 = phi float [ 0.000000e+00, %38 ], [ 1.000000e+02, %42 ]
  store float %45, ptr %39, align 4, !tbaa !340
  br label %46

46:                                               ; preds = %44, %42
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #22
  br label %77

47:                                               ; preds = %13
  call void @free_hair(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #22
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 117
  %49 = load float, ptr %48, align 8, !tbaa !339
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 54
  %53 = load float, ptr %52, align 8, !tbaa !145
  %54 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 55
  %55 = load float, ptr %54, align 4, !tbaa !213
  %56 = fadd float %53, %55
  %57 = fcmp olt float %56, 1.000000e+02
  %58 = select i1 %57, float 1.000000e+02, float %56
  %59 = fcmp ogt float %49, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51, %47
  %61 = phi float [ 0.000000e+00, %47 ], [ %58, %51 ]
  store float %61, ptr %48, align 8, !tbaa !339
  br label %62

62:                                               ; preds = %60, %51
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 118
  %64 = load float, ptr %63, align 4, !tbaa !340
  %65 = fcmp olt float %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store float 0.000000e+00, ptr %63, align 4, !tbaa !340
  br label %77

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 54
  %69 = load float, ptr %68, align 8, !tbaa !145
  %70 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 55
  %71 = load float, ptr %70, align 4, !tbaa !213
  %72 = fadd float %69, %71
  %73 = fcmp olt float %72, 1.000000e+02
  %74 = select i1 %73, float 1.000000e+02, float %72
  %75 = fcmp ogt float %64, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store float %74, ptr %63, align 4, !tbaa !340
  br label %77

77:                                               ; preds = %66, %76, %67, %46
  call void @psys_reset(ptr noundef nonnull %1, i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_id_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_hair(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_check_boid_data(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !56
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 56
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.4) #22
  %24 = load i32, ptr %19, align 8, !tbaa !57
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %17
  %27 = load ptr, ptr %2, align 8, !tbaa !61
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %34, %28 ], [ 0, %26 ]
  %30 = phi ptr [ %35, %28 ], [ %27, %26 ]
  %31 = phi ptr [ %32, %28 ], [ %23, %26 ]
  %32 = getelementptr inbounds %struct.BoidParticle, ptr %31, i64 1
  %33 = getelementptr inbounds %struct.ParticleData, ptr %30, i64 0, i32 4
  store ptr %31, ptr %33, align 8, !tbaa !148
  %34 = add nuw nsw i32 %29, 1
  %35 = getelementptr inbounds %struct.ParticleData, ptr %30, i64 1
  %36 = icmp eq i32 %34, %24
  br i1 %36, label %55, label %28, !llvm.loop !341

37:                                               ; preds = %9, %5
  %38 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !148
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %42(ptr noundef nonnull %39) #22
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %44 = load i32, ptr %43, align 8, !tbaa !57
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load ptr, ptr %2, align 8, !tbaa !61
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ %52, %48 ], [ 0, %46 ]
  %50 = phi ptr [ %53, %48 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 0, i32 4
  store ptr null, ptr %51, align 8, !tbaa !148
  %52 = add nuw nsw i32 %49, 1
  %53 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 1
  %54 = icmp eq i32 %52, %44
  br i1 %54, label %55, label %48, !llvm.loop !342

55:                                               ; preds = %28, %48, %17, %41, %13, %37, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @particle_system_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ParticleSimulationData, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #23
  %5 = getelementptr inbounds i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 48
  %9 = load ptr, ptr %8, align 8, !tbaa !343
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ParticleDrawData, ptr %9, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !344
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 4, !tbaa !344
  br label %15

15:                                               ; preds = %11, %3
  %16 = tail call i32 @psys_check_enabled(ptr noundef %1, ptr noundef nonnull %2) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %213, label %18

18:                                               ; preds = %15
  %19 = tail call float @BKE_scene_frame_get(ptr noundef %0) #22
  store ptr %0, ptr %4, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !117
  %21 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 2
  store ptr %2, ptr %21, align 8, !tbaa !118
  %22 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %2) #22
  %23 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !151
  %24 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %22, i64 0, i32 6
  %25 = load i16, ptr %24, align 4, !tbaa !346
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = and i16 %25, -3
  store i16 %29, ptr %24, align 4, !tbaa !346
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 20
  %31 = load float, ptr %30, align 8, !tbaa !181
  %32 = fcmp oeq float %31, %19
  br i1 %32, label %213, label %33

33:                                               ; preds = %28, %18
  %34 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %22, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !113
  %36 = icmp eq ptr %35, null
  br i1 %36, label %213, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 8
  %39 = load i16, ptr %38, align 2, !tbaa !78
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @DM_ensure_tessface(ptr noundef nonnull %35) #22
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !347
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %44, float noundef %19, i16 noundef signext 1) #22
  %45 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %46 = load i32, ptr %45, align 4, !tbaa !55
  %47 = and i32 %46, -16385
  store i32 %47, ptr %45, align 4, !tbaa !55
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 31
  %49 = load i16, ptr %48, align 4, !tbaa !348
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  tail call void @psys_changed_type(ptr noundef %1, ptr noundef nonnull %2) #21
  %53 = load i16, ptr %48, align 4, !tbaa !348
  br label %54

54:                                               ; preds = %52, %42
  %55 = phi i16 [ %53, %52 ], [ %49, %42 ]
  %56 = and i16 %55, 16
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 27
  store i32 0, ptr %59, align 4, !tbaa !80
  br label %60

60:                                               ; preds = %58, %54
  call fastcc void @psys_prepare_physics(ptr noundef nonnull %4) #21
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 7
  %62 = load i16, ptr %61, align 8, !tbaa !54
  switch i16 %62, label %128 [
    i16 2, label %63
    i16 3, label %127
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %65 = load i32, ptr %64, align 8, !tbaa !57
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 63
  %69 = load i32, ptr %68, align 4, !tbaa !81
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  tail call void @psys_free_path_cache(ptr noundef nonnull %2, ptr noundef null) #22
  tail call void @free_hair(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #22
  %72 = load i32, ptr %45, align 4, !tbaa !55
  %73 = or i32 %72, 512
  store i32 %73, ptr %45, align 4, !tbaa !55
  br label %122

74:                                               ; preds = %67, %63
  %75 = tail call fastcc i32 @hair_needs_recalc(ptr noundef nonnull %2) #21, !range !323
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %116, label %77

77:                                               ; preds = %74
  %78 = load i16, ptr %48, align 4, !tbaa !348
  tail call void @free_hair(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #22
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !59
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void %84(ptr noundef nonnull %80) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  br label %87

87:                                               ; preds = %86, %82, %77
  %88 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 20
  store float 1.000000e+00, ptr %88, align 8, !tbaa !181
  %89 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 26
  %90 = load i16, ptr %89, align 2, !tbaa !349
  %91 = icmp slt i16 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 5
  br label %94

94:                                               ; preds = %92, %108
  %95 = phi i32 [ 0, %92 ], [ %109, %108 ]
  %96 = sitofp i32 %95 to float
  %97 = fmul float %96, 1.000000e+02
  %98 = load ptr, ptr %6, align 8, !tbaa !34
  %99 = getelementptr inbounds %struct.ParticleSettings, ptr %98, i64 0, i32 26
  %100 = load i16, ptr %99, align 2, !tbaa !349
  %101 = sitofp i16 %100 to float
  %102 = fdiv float %97, %101
  %103 = load i32, ptr %93, align 8, !tbaa !276
  %104 = and i32 %103, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load ptr, ptr %43, align 8, !tbaa !347
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %107, float noundef %102, i16 noundef signext 2) #22
  br label %108

108:                                              ; preds = %106, %94
  call fastcc void @system_step(ptr noundef nonnull %4, float noundef %102) #21
  store float %102, ptr %88, align 8, !tbaa !181
  store i16 0, ptr %48, align 4, !tbaa !348
  call fastcc void @save_hair(ptr noundef nonnull %4) #21
  %109 = add nuw nsw i32 %95, 1
  %110 = load i16, ptr %89, align 2, !tbaa !349
  %111 = sext i16 %110 to i32
  %112 = icmp slt i32 %95, %111
  br i1 %112, label %94, label %113, !llvm.loop !350

113:                                              ; preds = %108, %87
  %114 = load i32, ptr %45, align 4, !tbaa !55
  %115 = or i32 %114, 512
  store i32 %115, ptr %45, align 4, !tbaa !55
  store i16 %78, ptr %48, align 4, !tbaa !348
  br label %122

116:                                              ; preds = %74
  %117 = load i32, ptr %45, align 4, !tbaa !55
  %118 = and i32 %117, 2048
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = or i32 %117, 512
  store i32 %121, ptr %45, align 4, !tbaa !55
  br label %122

122:                                              ; preds = %113, %120, %116, %71
  %123 = phi i32 [ %115, %113 ], [ %121, %120 ], [ %117, %116 ], [ %73, %71 ]
  %124 = and i32 %123, 512
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %197, label %126

126:                                              ; preds = %122
  call fastcc void @hair_step(ptr noundef nonnull %4, float noundef %19) #21
  br label %197

127:                                              ; preds = %60
  call fastcc void @particles_fluid_step(ptr noundef nonnull %4) #21
  br label %197

128:                                              ; preds = %60
  %129 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 11
  %130 = load i16, ptr %129, align 8, !tbaa !56
  switch i16 %130, label %196 [
    i16 0, label %131
    i16 2, label %131
  ]

131:                                              ; preds = %128, %128
  %132 = tail call float @psys_get_current_display_percentage(ptr noundef nonnull %2) #21
  %133 = load i16, ptr %48, align 4, !tbaa !348
  %134 = and i16 %133, 16
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  tail call void @psys_reset(ptr noundef nonnull %2, i32 noundef 1) #21
  br label %137

137:                                              ; preds = %136, %131
  %138 = call fastcc i32 @emit_particles(ptr noundef nonnull %4, ptr noundef null) #21
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i16, ptr %48, align 4, !tbaa !348
  %142 = and i16 %141, 16
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %140, %137
  tail call void @free_keyed_keys(ptr noundef nonnull %2) #22
  %145 = load i16, ptr %38, align 2, !tbaa !78
  %146 = sext i16 %145 to i32
  call fastcc void @distribute_particles(ptr noundef nonnull %4, i32 noundef %146) #21
  call fastcc void @initialize_all_particles(ptr noundef nonnull %4) #21
  %147 = load ptr, ptr %23, align 8, !tbaa !151
  %148 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %147, i64 0, i32 6
  %149 = load i16, ptr %148, align 4, !tbaa !346
  %150 = or i16 %149, 1
  store i16 %150, ptr %148, align 4, !tbaa !346
  br label %151

151:                                              ; preds = %144, %140
  %152 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %153 = load i32, ptr %152, align 8, !tbaa !57
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !61
  %158 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 82
  %159 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 83
  br label %160

160:                                              ; preds = %155, %185
  %161 = phi i32 [ 0, %155 ], [ %186, %185 ]
  %162 = phi ptr [ %157, %155 ], [ %187, %185 ]
  %163 = getelementptr inbounds %struct.ParticleData, ptr %162, i64 0, i32 17
  %164 = load i16, ptr %163, align 4, !tbaa !62
  %165 = and i16 %164, 1
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %160
  %168 = load float, ptr %158, align 8, !tbaa !294
  %169 = getelementptr inbounds %struct.ParticleData, ptr %162, i64 0, i32 13
  store float %168, ptr %169, align 4, !tbaa !259
  %170 = load float, ptr %159, align 4, !tbaa !351
  %171 = fcmp ogt float %170, 0.000000e+00
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = add nuw nsw i32 %161, 1
  %174 = call fastcc float @psys_frand(ptr noundef nonnull %2, i32 noundef %173) #21
  %175 = fneg float %170
  %176 = call float @llvm.fmuladd.f32(float %175, float %174, float 1.000000e+00)
  %177 = fmul float %168, %176
  store float %177, ptr %169, align 4, !tbaa !259
  br label %178

178:                                              ; preds = %172, %167
  call void @reset_particle(ptr noundef nonnull %4, ptr noundef nonnull %162, float noundef 0.000000e+00, float noundef %19) #21
  %179 = call fastcc float @psys_frand(ptr noundef nonnull %2, i32 noundef %161) #21
  %180 = fcmp ogt float %179, %132
  %181 = load i16, ptr %163, align 4, !tbaa !62
  %182 = and i16 %181, -3
  %183 = select i1 %180, i16 2, i16 0
  %184 = or disjoint i16 %182, %183
  store i16 %184, ptr %163, align 4, !tbaa !62
  br label %185

185:                                              ; preds = %178, %160
  %186 = add nuw nsw i32 %161, 1
  %187 = getelementptr inbounds %struct.ParticleData, ptr %162, i64 1
  %188 = load i32, ptr %152, align 8, !tbaa !57
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %160, label %190, !llvm.loop !352

190:                                              ; preds = %185, %151
  %191 = load i16, ptr %129, align 8, !tbaa !56
  %192 = icmp eq i16 %191, 2
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  call void @psys_count_keyed_targets(ptr noundef nonnull %4) #21
  call fastcc void @set_keyed_keys(ptr noundef nonnull %4) #21
  %194 = fptosi float %19 to i32
  %195 = sitofp i32 %194 to float
  call fastcc void @psys_update_path_cache(ptr noundef nonnull %4, float noundef %195) #21
  br label %197

196:                                              ; preds = %128
  call fastcc void @system_step(ptr noundef nonnull %4, float noundef %19) #21
  br label %197

197:                                              ; preds = %190, %193, %196, %122, %126, %127
  %198 = load i32, ptr %45, align 4, !tbaa !55
  %199 = and i32 %198, 16384
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %197
  call fastcc void @evaluate_emitter_anim(ptr noundef %0, ptr noundef %1, float noundef %19) #21
  %202 = load i32, ptr %45, align 4, !tbaa !55
  %203 = and i32 %202, -16385
  store i32 %203, ptr %45, align 4, !tbaa !55
  br label %204

204:                                              ; preds = %201, %197
  %205 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 20
  store float %19, ptr %205, align 8, !tbaa !181
  store i16 0, ptr %48, align 4, !tbaa !348
  %206 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 39
  %207 = load ptr, ptr %206, align 8, !tbaa !43
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 19
  %211 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %212 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %210, ptr noundef nonnull %211) #22
  br label %213

213:                                              ; preds = %204, %209, %33, %28, %15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_prepare_physics(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !353 {
  %2 = alloca %struct.PTCacheID, align 8
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 11
  %8 = load i16, ptr %7, align 8, !tbaa !56
  switch i16 %8, label %12 [
    i16 0, label %9
    i16 2, label %9
  ]

9:                                                ; preds = %1, %1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #23
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %2, ptr noundef %11, ptr noundef nonnull %4) #22
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #23
  br label %17

12:                                               ; preds = %1
  tail call void @free_keyed_keys(ptr noundef nonnull %4) #22
  %13 = load ptr, ptr %3, align 8, !tbaa !118
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = and i32 %15, -1025
  store i32 %16, ptr %14, align 4, !tbaa !55
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i16, ptr %7, align 8, !tbaa !56
  switch i16 %18, label %47 [
    i16 3, label %19
    i16 4, label %40
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !201
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %25 = call ptr %24(i64 noundef 104, ptr noundef nonnull @.str.6) #22
  store ptr %25, ptr %20, align 8, !tbaa !201
  call void @boid_default_settings(ptr noundef %25) #22
  %26 = load ptr, ptr %20, align 8, !tbaa !201
  %27 = call ptr @boid_new_state(ptr noundef %26) #22
  %28 = getelementptr inbounds %struct.BoidState, ptr %27, i64 0, i32 2
  %29 = call ptr @boid_new_rule(i32 noundef 4) #22
  call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %29) #22
  %30 = call ptr @boid_new_rule(i32 noundef 5) #22
  call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %30) #22
  %31 = load ptr, ptr %28, align 8, !tbaa !354
  %32 = getelementptr inbounds %struct.BoidRule, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !355
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !355
  %35 = getelementptr inbounds %struct.BoidState, ptr %27, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !357
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !357
  %38 = load ptr, ptr %20, align 8, !tbaa !201
  %39 = getelementptr inbounds %struct.BoidSettings, ptr %38, i64 0, i32 22
  call void @BLI_addtail(ptr noundef nonnull %39, ptr noundef %27) #22
  br label %47

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !247
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %46 = call ptr %45(i64 noundef 68, ptr noundef nonnull @.str.7) #22
  store ptr %46, ptr %41, align 8, !tbaa !247
  call fastcc void @fluid_default_settings(ptr noundef nonnull %6) #21
  br label %47

47:                                               ; preds = %17, %19, %40, %44, %23
  %48 = load ptr, ptr %3, align 8, !tbaa !118
  call void @psys_check_boid_data(ptr noundef %48) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @hair_needs_recalc(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !358 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PTCacheEdit, ptr %8, i64 0, i32 14
  %12 = load i32, ptr %11, align 4, !tbaa !359
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10, %6
  %15 = and i32 %3, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 31
  %19 = load i16, ptr %18, align 4, !tbaa !348
  %20 = and i16 %19, 16
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !276
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %9, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %10, %1
  br label %31

31:                                               ; preds = %22, %14, %17, %30
  %32 = phi i32 [ 0, %30 ], [ 1, %17 ], [ 1, %14 ], [ 1, %22 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @system_step(ptr noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !361 {
  %3 = alloca %struct.PTCacheID, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  store i32 0, ptr %4, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  store i32 100, ptr %5, align 4, !tbaa !100
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 7
  %13 = load i16, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %47, label %15

15:                                               ; preds = %2
  tail call fastcc void @psys_clear_temp_pointcache(ptr noundef nonnull %7) #21
  %16 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !50
  %18 = and i32 %17, 9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 8, !tbaa !107
  %22 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 5
  %23 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 6
  tail call void @psys_get_pointcache_start_end(ptr noundef %21, ptr noundef nonnull %7, ptr noundef nonnull %22, ptr noundef nonnull %23) #21
  br label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !117
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %3, ptr noundef %26, ptr noundef nonnull %7) #22
  %27 = load ptr, ptr %0, align 8, !tbaa !107
  call void @BKE_ptcache_id_time(ptr noundef nonnull %3, ptr noundef %27, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #22
  %28 = load i32, ptr %4, align 4, !tbaa !100
  %29 = sitofp i32 %28 to float
  %30 = fcmp oeq float %29, %1
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !107
  %33 = call i32 @BKE_ptcache_id_reset(ptr noundef %32, ptr noundef nonnull %3, i32 noundef 2) #22
  %34 = load i32, ptr %4, align 4, !tbaa !100
  call void @BKE_ptcache_validate(ptr noundef nonnull %11, i32 noundef %34) #22
  %35 = load i32, ptr %16, align 8, !tbaa !50
  %36 = and i32 %35, -259
  store i32 %36, ptr %16, align 8, !tbaa !50
  %37 = load i32, ptr %4, align 4, !tbaa !100
  %38 = sitofp i32 %37 to float
  br label %39

39:                                               ; preds = %31, %24
  %40 = phi float [ %38, %31 ], [ %29, %24 ]
  %41 = fcmp ogt float %40, %1
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %5, align 4, !tbaa !100
  %44 = sitofp i32 %43 to float
  %45 = fcmp olt float %44, %1
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %39, %46, %42, %2
  %48 = phi float [ %44, %46 ], [ %1, %42 ], [ %1, %2 ], [ %40, %39 ]
  %49 = phi ptr [ %3, %46 ], [ %3, %42 ], [ null, %2 ], [ %3, %39 ]
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 26
  %51 = load i32, ptr %50, align 8, !tbaa !57
  %52 = call fastcc i32 @emit_particles(ptr noundef nonnull %0, ptr noundef %49) #21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 31
  %56 = load i16, ptr %55, align 4, !tbaa !348
  %57 = and i16 %56, 16
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54, %47
  %60 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !78
  %62 = sext i16 %61 to i32
  call fastcc void @distribute_particles(ptr noundef nonnull %0, i32 noundef %62) #21
  call fastcc void @initialize_all_particles(ptr noundef nonnull %0) #21
  call fastcc void @reset_all_particles(ptr noundef nonnull %0, float noundef %1, i32 noundef %51) #21
  %63 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 43
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %67(ptr noundef nonnull %64) #22
  store ptr null, ptr %63, align 8, !tbaa !70
  br label %68

68:                                               ; preds = %66, %59
  %69 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 45
  store i32 0, ptr %69, align 4, !tbaa !71
  %70 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 44
  store i32 0, ptr %70, align 8, !tbaa !72
  %71 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !151
  %73 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %72, i64 0, i32 6
  %74 = load i16, ptr %73, align 4, !tbaa !346
  %75 = or i16 %74, 1
  store i16 %75, ptr %73, align 4, !tbaa !346
  %76 = fptoui float %1 to i32
  call void @BKE_ptcache_id_clear(ptr noundef %49, i32 noundef 3, i32 noundef %76) #22
  br label %77

77:                                               ; preds = %68, %54
  %78 = icmp eq ptr %49, null
  br i1 %78, label %122, label %79

79:                                               ; preds = %77
  %80 = call i32 @BKE_ptcache_read(ptr noundef nonnull %49, float noundef %48) #22
  %81 = add i32 %80, -1
  %82 = icmp ult i32 %81, 2
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = icmp eq i32 %80, 2
  call fastcc void @cached_step(ptr noundef nonnull %0, float noundef %1) #21
  call fastcc void @update_children(ptr noundef nonnull %0) #21
  call fastcc void @psys_update_path_cache(ptr noundef nonnull %0, float noundef %1) #21
  %85 = fptosi float %48 to i32
  call void @BKE_ptcache_validate(ptr noundef %11, i32 noundef %85) #22
  br i1 %84, label %86, label %216

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !50
  %89 = and i32 %88, 258
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %216, label %91

91:                                               ; preds = %86
  %92 = call i32 @BKE_ptcache_write(ptr noundef nonnull %49, i32 noundef %85) #22
  br label %216

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !50
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  call void @psys_reset(ptr noundef nonnull %7, i32 noundef 4) #21
  br label %216

99:                                               ; preds = %93
  %100 = icmp eq i32 %80, 3
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !362
  %104 = sitofp i32 %103 to float
  %105 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 20
  store float %104, ptr %105, align 8, !tbaa !181
  call fastcc void @cached_step(ptr noundef nonnull %0, float noundef %104) #21
  br label %106

106:                                              ; preds = %101, %99
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 20
  %108 = load float, ptr %107, align 8, !tbaa !181
  %109 = load i32, ptr %4, align 4, !tbaa !100
  %110 = sitofp i32 %109 to float
  %111 = fcmp oeq float %108, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load i32, ptr %94, align 8, !tbaa !50
  %114 = and i32 %113, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 8
  %118 = load i32, ptr %117, align 8, !tbaa !363
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %112
  %121 = call i32 @BKE_ptcache_write(ptr noundef nonnull %49, i32 noundef %109) #22
  br label %123

122:                                              ; preds = %77
  call void @BKE_ptcache_invalidate(ptr noundef %11) #22
  br label %123

123:                                              ; preds = %120, %116, %106, %122
  %124 = call float @psys_get_current_display_percentage(ptr noundef nonnull %7) #21
  %125 = load i32, ptr %50, align 8, !tbaa !57
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !61
  br label %130

130:                                              ; preds = %127, %130
  %131 = phi ptr [ %141, %130 ], [ %129, %127 ]
  %132 = phi i32 [ %140, %130 ], [ 0, %127 ]
  %133 = call fastcc float @psys_frand(ptr noundef nonnull %7, i32 noundef %132) #21
  %134 = fcmp ogt float %133, %124
  %135 = getelementptr inbounds %struct.ParticleData, ptr %131, i64 0, i32 17
  %136 = load i16, ptr %135, align 4, !tbaa !62
  %137 = and i16 %136, -3
  %138 = select i1 %134, i16 2, i16 0
  %139 = or disjoint i16 %137, %138
  store i16 %139, ptr %135, align 4, !tbaa !62
  %140 = add nuw nsw i32 %132, 1
  %141 = getelementptr inbounds %struct.ParticleData, ptr %131, i64 1
  %142 = icmp eq i32 %140, %125
  br i1 %142, label %145, label %130, !llvm.loop !364

143:                                              ; preds = %123
  %144 = icmp eq i32 %125, 0
  br i1 %144, label %204, label %145

145:                                              ; preds = %130, %143
  %146 = fptosi float %1 to i32
  %147 = load i32, ptr %4, align 4, !tbaa !100
  %148 = icmp eq i32 %147, %146
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 53
  %151 = load float, ptr %150, align 4, !tbaa !144
  %152 = sitofp i32 %146 to float
  %153 = fcmp olt float %151, %152
  %154 = fptosi float %151 to i32
  %155 = sub nsw i32 %154, %146
  %156 = select i1 %153, i32 %155, i32 0
  %157 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 67
  br label %168

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 67
  %160 = load i16, ptr %159, align 4, !tbaa !285
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 49
  %165 = load float, ptr %164, align 8, !tbaa !365
  %166 = fcmp olt float %165, 0x3F8446F860000000
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  store float 0x3F8446F860000000, ptr %164, align 8, !tbaa !365
  br label %174

168:                                              ; preds = %149, %158
  %169 = phi ptr [ %159, %158 ], [ %157, %149 ]
  %170 = phi i32 [ 0, %158 ], [ %156, %149 ]
  %171 = call fastcc float @get_base_time_step(ptr noundef nonnull %9) #21
  %172 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 49
  store float %171, ptr %172, align 8, !tbaa !365
  %173 = icmp slt i32 %170, 1
  br i1 %173, label %174, label %204

174:                                              ; preds = %163, %167, %168
  %175 = phi i32 [ %170, %168 ], [ 0, %167 ], [ 0, %163 ]
  %176 = phi ptr [ %169, %168 ], [ %159, %167 ], [ %159, %163 ]
  %177 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 49
  %178 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 5
  %179 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 20
  br label %180

180:                                              ; preds = %174, %201
  %181 = phi i32 [ %175, %174 ], [ %202, %201 ]
  %182 = load float, ptr %177, align 8, !tbaa !365
  %183 = fcmp ugt float %182, 1.000000e+00
  br i1 %183, label %201, label %184

184:                                              ; preds = %180
  %185 = sitofp i32 %181 to float
  %186 = fadd float %185, %1
  br label %187

187:                                              ; preds = %184, %197
  %188 = phi float [ %182, %184 ], [ %198, %197 ]
  %189 = phi float [ %182, %184 ], [ %199, %197 ]
  store float 0.000000e+00, ptr %178, align 8, !tbaa !366
  %190 = fadd float %186, %189
  %191 = fadd float %190, -1.000000e+00
  call fastcc void @dynamics_step(ptr noundef %0, float noundef %191) #21
  store float %191, ptr %179, align 8, !tbaa !181
  %192 = load i16, ptr %176, align 4, !tbaa !285
  %193 = and i16 %192, 1
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %187
  %196 = call fastcc float @update_timestep(ptr noundef nonnull %7, ptr noundef nonnull %0, float noundef %189) #21
  br label %197

197:                                              ; preds = %187, %195
  %198 = phi float [ %196, %195 ], [ %188, %187 ]
  %199 = fadd float %189, %198
  %200 = fcmp ugt float %199, 1.000000e+00
  br i1 %200, label %201, label %187, !llvm.loop !367

201:                                              ; preds = %197, %180
  %202 = add i32 %181, 1
  %203 = icmp eq i32 %181, 0
  br i1 %203, label %204, label %180, !llvm.loop !368

204:                                              ; preds = %201, %168, %143
  br i1 %78, label %211, label %205

205:                                              ; preds = %204
  %206 = fptosi float %48 to i32
  call void @BKE_ptcache_validate(ptr noundef %11, i32 noundef %206) #22
  %207 = load i32, ptr %4, align 4, !tbaa !100
  %208 = icmp eq i32 %207, %206
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = call i32 @BKE_ptcache_write(ptr noundef nonnull %49, i32 noundef %206) #22
  br label %211

211:                                              ; preds = %205, %209, %204
  call fastcc void @update_children(ptr noundef %0) #21
  %212 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 15
  %213 = load ptr, ptr %212, align 8, !tbaa !133
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  call void @end_latt_deform(ptr noundef nonnull %213) #22
  store ptr null, ptr %212, align 8, !tbaa !133
  br label %216

216:                                              ; preds = %98, %91, %86, %83, %211, %215
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_hair(ptr noundef %0) unnamed_addr #2 !PGOFuncName !369 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 50
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %8 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %9 = tail call ptr @psys_create_lattice_deform_data(ptr noundef %0) #22
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 15
  store ptr %9, ptr %10, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %18 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %14, %66
  %20 = phi i32 [ 0, %14 ], [ %67, %66 ]
  %21 = phi ptr [ %16, %14 ], [ %68, %66 ]
  %22 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !370
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !371
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %25, %19
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %31 = load ptr, ptr %17, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 26
  %33 = load i16, ptr %32, align 2, !tbaa !349
  %34 = sext i16 %33 to i64
  %35 = mul nsw i64 %34, 24
  %36 = add nsw i64 %35, 24
  %37 = tail call ptr %30(i64 noundef %36, ptr noundef nonnull @.str.8) #22
  %38 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !371
  store i32 0, ptr %22, align 8, !tbaa !370
  br label %39

39:                                               ; preds = %29, %25
  %40 = phi i32 [ 0, %29 ], [ %23, %25 ]
  %41 = phi ptr [ %37, %29 ], [ %27, %25 ]
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.HairKey, ptr %41, i64 %42
  tail call fastcc void @copy_v3_v3(ptr noundef %43, ptr noundef nonnull %21) #21
  tail call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef %43) #22
  %44 = load i32, ptr %22, align 8, !tbaa !370
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  tail call fastcc void @sub_v3_v3(ptr noundef %43, ptr noundef %41) #21
  %47 = load ptr, ptr %18, align 8, !tbaa !151
  %48 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !113
  tail call void @psys_vec_rot_to_face(ptr noundef %49, ptr noundef nonnull %21, ptr noundef %43) #22
  %50 = load i32, ptr %22, align 8, !tbaa !370
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i32 [ %50, %46 ], [ 0, %39 ]
  %53 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 4
  %54 = load float, ptr %53, align 4, !tbaa !219
  %55 = getelementptr inbounds %struct.HairKey, ptr %41, i64 %42, i32 1
  store float %54, ptr %55, align 4, !tbaa !372
  %56 = fdiv float %54, 1.000000e+02
  %57 = fsub float 1.000000e+00, %56
  %58 = getelementptr inbounds %struct.HairKey, ptr %41, i64 %42, i32 2
  store float %57, ptr %58, align 4, !tbaa !374
  %59 = add nsw i32 %52, 1
  store i32 %59, ptr %22, align 8, !tbaa !370
  %60 = load ptr, ptr %17, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %60, i64 0, i32 26
  %62 = load i16, ptr %61, align 2, !tbaa !349
  %63 = sext i16 %62 to i32
  %64 = icmp eq i32 %52, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  tail call fastcc void @zero_v3(ptr noundef nonnull %41) #21
  br label %66

66:                                               ; preds = %51, %65
  %67 = add nuw nsw i32 %20, 1
  %68 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 1
  %69 = load i32, ptr %11, align 8, !tbaa !57
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %19, label %71, !llvm.loop !375

71:                                               ; preds = %66, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hair_step(ptr noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !376 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = tail call float @psys_get_current_display_percentage(ptr noundef %4) #21
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 8, !tbaa !61
  %13 = load ptr, ptr %5, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 82
  %15 = load float, ptr %14, align 8, !tbaa !294
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 83
  %17 = load float, ptr %16, align 4, !tbaa !351
  %18 = fcmp ogt float %17, 0.000000e+00
  %19 = fneg float %17
  br label %20

20:                                               ; preds = %11, %29
  %21 = phi ptr [ %12, %11 ], [ %38, %29 ]
  %22 = phi i32 [ 0, %11 ], [ %37, %29 ]
  %23 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 13
  store float %15, ptr %23, align 4, !tbaa !259
  br i1 %18, label %24, label %29

24:                                               ; preds = %20
  %25 = add nuw nsw i32 %22, 1
  %26 = tail call fastcc float @psys_frand(ptr noundef nonnull %4, i32 noundef %25) #21
  %27 = tail call float @llvm.fmuladd.f32(float %19, float %26, float 1.000000e+00)
  %28 = fmul float %15, %27
  store float %28, ptr %23, align 4, !tbaa !259
  br label %29

29:                                               ; preds = %24, %20
  %30 = tail call fastcc float @psys_frand(ptr noundef %4, i32 noundef %22) #21
  %31 = fcmp ogt float %30, %6
  %32 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 17
  %33 = load i16, ptr %32, align 4, !tbaa !62
  %34 = and i16 %33, -3
  %35 = select i1 %31, i16 2, i16 0
  %36 = or disjoint i16 %34, %35
  store i16 %36, ptr %32, align 4, !tbaa !62
  %37 = add nuw nsw i32 %22, 1
  %38 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 1
  %39 = icmp eq i32 %37, %9
  br i1 %39, label %40, label %20, !llvm.loop !377

40:                                               ; preds = %29, %2
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  %42 = load i16, ptr %41, align 4, !tbaa !348
  %43 = and i16 %42, 16
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !117
  %48 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !151
  %50 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  tail call void @psys_calc_dmcache(ptr noundef %47, ptr noundef %51, ptr noundef nonnull %4) #21
  %52 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !378
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  tail call void @cloth_free_modifier(ptr noundef nonnull %53) #22
  br label %56

56:                                               ; preds = %45, %55, %40
  %57 = load ptr, ptr %5, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.ParticleSettings, ptr %57, i64 0, i32 7
  %59 = load i16, ptr %58, align 8, !tbaa !54
  %60 = icmp eq i16 %59, 2
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %63 = load i32, ptr %62, align 4, !tbaa !55
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %7, align 8, !tbaa !61
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call fastcc void @do_hair_dynamics(ptr noundef %0) #21
  br label %70

70:                                               ; preds = %69, %66, %61, %56
  tail call fastcc void @psys_update_effectors(ptr noundef %0) #21
  tail call fastcc void @psys_update_path_cache(ptr noundef %0, float noundef %1) #21
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %72 = load i32, ptr %71, align 4, !tbaa !55
  %73 = or i32 %72, 32
  store i32 %73, ptr %71, align 4, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @particles_fluid_step(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !379 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %8(ptr noundef nonnull %5) #22
  store ptr null, ptr %4, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  store i32 0, ptr %9, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @emit_particles(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !380 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = tail call fastcc i32 @tot_particles(ptr noundef %4, ptr noundef %1) #21
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call fastcc void @realloc_particles(ptr noundef nonnull %0, i32 noundef %7) #21
  br label %10

10:                                               ; preds = %9, %2
  %11 = sub nsw i32 %7, %6
  ret i32 %11
}

; Function Attrs: optsize
declare void @free_keyed_keys(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @distribute_particles(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !381 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = tail call ptr @psys_get_modifier(ptr noundef %8, ptr noundef %10) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2, %6
  %14 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %15 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  tail call fastcc void @distribute_particles_on_dm(ptr noundef nonnull %0, i32 noundef %1) #21
  br label %26

19:                                               ; preds = %6
  tail call fastcc void @distribute_particles_on_shape(ptr noundef nonnull %0) #21
  br label %26

20:                                               ; preds = %13
  %21 = load ptr, ptr %0, align 8, !tbaa !107
  %22 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  tail call fastcc void @distribute_invalid(ptr noundef %21, ptr noundef %23, i32 noundef %1) #21
  %24 = load ptr, ptr @stderr, align 8, !tbaa !68
  %25 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 29, i64 1, ptr %24) #24
  br label %26

26:                                               ; preds = %18, %19, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_all_particles(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !382 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 27
  store i32 0, ptr %4, align 4, !tbaa !80
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8, !tbaa !61
  br label %11

11:                                               ; preds = %9, %25
  %12 = phi ptr [ %27, %25 ], [ %10, %9 ]
  %13 = phi i32 [ %26, %25 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 0, i32 17
  %15 = load i16, ptr %14, align 4, !tbaa !62
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  tail call void @initialize_particle(ptr noundef %0, ptr noundef nonnull %12) #21
  %19 = load i16, ptr %14, align 4, !tbaa !62
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11, %18
  %23 = load i32, ptr %4, align 4, !tbaa !80
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %4, align 4, !tbaa !80
  br label %25

25:                                               ; preds = %18, %22
  %26 = add nuw nsw i32 %13, 1
  %27 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 1
  %28 = load i32, ptr %6, align 8, !tbaa !57
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %11, label %30, !llvm.loop !383

30:                                               ; preds = %25, %1
  %31 = phi i32 [ %7, %1 ], [ %28, %25 ]
  %32 = icmp ne i32 %31, 0
  %33 = load i32, ptr %4, align 4, !tbaa !80
  %34 = icmp eq i32 %33, %31
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8, !tbaa !61
  %38 = getelementptr inbounds %struct.ParticleData, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !148
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %42(ptr noundef nonnull %39) #22
  %43 = load ptr, ptr %5, align 8, !tbaa !61
  br label %44

44:                                               ; preds = %36, %41
  %45 = phi ptr [ %37, %36 ], [ %43, %41 ]
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %46(ptr noundef %45) #22
  store ptr null, ptr %5, align 8, !tbaa !61
  store i32 0, ptr %4, align 4, !tbaa !80
  store i32 0, ptr %6, align 8, !tbaa !57
  br label %109

47:                                               ; preds = %30
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %109, label %49

49:                                               ; preds = %47
  %50 = sub nsw i32 %31, %33
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %52 = sext i32 %50 to i64
  %53 = mul nsw i64 %52, 200
  %54 = tail call ptr %51(i64 noundef %53, ptr noundef nonnull @.str.11) #22
  %55 = load ptr, ptr %5, align 8, !tbaa !61
  %56 = icmp sgt i32 %50, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %49, %68
  %58 = phi ptr [ %67, %68 ], [ %55, %49 ]
  %59 = phi ptr [ %70, %68 ], [ %54, %49 ]
  %60 = phi i32 [ %69, %68 ], [ 0, %49 ]
  br label %61

61:                                               ; preds = %61, %57
  %62 = phi ptr [ %67, %61 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.ParticleData, ptr %62, i64 0, i32 17
  %64 = load i16, ptr %63, align 4, !tbaa !62
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  %67 = getelementptr inbounds %struct.ParticleData, ptr %62, i64 1
  br i1 %66, label %68, label %61, !llvm.loop !384

68:                                               ; preds = %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %59, ptr noundef nonnull align 8 dereferenceable(200) %62, i64 200, i1 false)
  %69 = add nuw nsw i32 %60, 1
  %70 = getelementptr inbounds %struct.ParticleData, ptr %59, i64 1
  %71 = icmp eq i32 %69, %50
  br i1 %71, label %72, label %57, !llvm.loop !385

72:                                               ; preds = %68
  %73 = load ptr, ptr %5, align 8, !tbaa !61
  br label %74

74:                                               ; preds = %72, %49
  %75 = phi ptr [ %73, %72 ], [ %55, %49 ]
  %76 = getelementptr inbounds %struct.ParticleData, ptr %75, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !148
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %80(ptr noundef nonnull %77) #22
  %81 = load ptr, ptr %5, align 8, !tbaa !61
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi ptr [ %81, %79 ], [ %75, %74 ]
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %84(ptr noundef %83) #22
  store ptr %54, ptr %5, align 8, !tbaa !61
  %85 = load i32, ptr %4, align 4, !tbaa !80
  %86 = load i32, ptr %6, align 8, !tbaa !57
  %87 = sub nsw i32 %86, %85
  store i32 %87, ptr %6, align 8, !tbaa !57
  %88 = getelementptr inbounds %struct.ParticleData, ptr %54, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !148
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %82
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %93 = sext i32 %87 to i64
  %94 = mul nsw i64 %93, 56
  %95 = tail call ptr %92(i64 noundef %94, ptr noundef nonnull @.str.12) #22
  %96 = load i32, ptr %6, align 8, !tbaa !57
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load ptr, ptr %5, align 8, !tbaa !61
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi ptr [ %104, %100 ], [ %95, %98 ]
  %102 = phi ptr [ %107, %100 ], [ %99, %98 ]
  %103 = phi i32 [ %106, %100 ], [ 0, %98 ]
  %104 = getelementptr inbounds %struct.BoidParticle, ptr %101, i64 1
  %105 = getelementptr inbounds %struct.ParticleData, ptr %102, i64 0, i32 4
  store ptr %101, ptr %105, align 8, !tbaa !148
  %106 = add nuw nsw i32 %103, 1
  %107 = getelementptr inbounds %struct.ParticleData, ptr %102, i64 1
  %108 = icmp eq i32 %106, %96
  br i1 %108, label %109, label %100, !llvm.loop !386

109:                                              ; preds = %100, %91, %44, %82, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_keyed_keys(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !387 {
  %2 = alloca %struct.ParticleSimulationData, align 8
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #23
  %5 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 40, i1 false)
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 33
  %9 = load i16, ptr %8, align 8, !tbaa !58
  %10 = sext i16 %9 to i32
  %11 = load ptr, ptr %0, align 8, !tbaa !107
  store ptr %11, ptr %2, align 8, !tbaa !107
  %12 = icmp eq i16 %9, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  tail call void @free_keyed_keys(ptr noundef nonnull %4) #22
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = and i32 %15, -1025
  store i32 %16, ptr %14, align 4, !tbaa !55
  br label %166

17:                                               ; preds = %1
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !370
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %46, label %25

25:                                               ; preds = %19
  tail call void @free_keyed_keys(ptr noundef nonnull %4) #22
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %27 = mul nsw i32 %7, %10
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 56
  %30 = tail call ptr %26(i64 noundef %29, ptr noundef nonnull @.str.24) #22
  %31 = load i32, ptr %6, align 8, !tbaa !57
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load ptr, ptr %20, align 8, !tbaa !61
  %35 = sext i16 %9 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %34, %33 ], [ %44, %36 ]
  %38 = phi ptr [ %30, %33 ], [ %42, %36 ]
  %39 = phi i32 [ 0, %33 ], [ %43, %36 ]
  %40 = getelementptr inbounds %struct.ParticleData, ptr %37, i64 0, i32 3
  store ptr %38, ptr %40, align 8, !tbaa !388
  %41 = getelementptr inbounds %struct.ParticleData, ptr %37, i64 0, i32 5
  store i32 %10, ptr %41, align 8, !tbaa !370
  %42 = getelementptr inbounds %struct.ParticleKey, ptr %38, i64 %35
  %43 = add nuw nsw i32 %39, 1
  %44 = getelementptr inbounds %struct.ParticleData, ptr %37, i64 1
  %45 = icmp eq i32 %43, %31
  br i1 %45, label %46, label %36, !llvm.loop !389

46:                                               ; preds = %36, %25, %19, %17
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %48 = load i32, ptr %47, align 4, !tbaa !55
  %49 = and i32 %48, -1025
  store i32 %49, ptr %47, align 4, !tbaa !55
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 17
  %51 = add nsw i32 %10, -1
  %52 = icmp sgt i16 %9, 0
  br i1 %52, label %53, label %163

53:                                               ; preds = %46
  %54 = load ptr, ptr %50, align 8, !tbaa !230
  %55 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %56 = getelementptr inbounds %struct.ParticleSimulationData, ptr %2, i64 0, i32 1
  %57 = getelementptr inbounds %struct.ParticleSimulationData, ptr %2, i64 0, i32 2
  %58 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %59 = icmp eq i16 %9, 1
  %60 = sitofp i32 %51 to float
  br label %61

61:                                               ; preds = %53, %157
  %62 = phi ptr [ %54, %53 ], [ %158, %157 ]
  %63 = phi i32 [ 0, %53 ], [ %159, %157 ]
  %64 = getelementptr inbounds %struct.ParticleTarget, ptr %62, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !226
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load ptr, ptr %55, align 8, !tbaa !117
  br label %69

69:                                               ; preds = %61, %67
  %70 = phi ptr [ %68, %67 ], [ %65, %61 ]
  store ptr %70, ptr %56, align 8, !tbaa !117
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 109
  %72 = getelementptr inbounds %struct.ParticleTarget, ptr %62, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !228
  %74 = add nsw i32 %73, -1
  %75 = call ptr @BLI_findlink(ptr noundef nonnull %71, i32 noundef %74) #22
  store ptr %75, ptr %57, align 8, !tbaa !118
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %75, i64 0, i32 25
  %77 = load i32, ptr %76, align 4, !tbaa !55
  %78 = and i32 %77, 1024
  %79 = and i32 %77, -1025
  store i32 %79, ptr %76, align 4, !tbaa !55
  %80 = load i32, ptr %6, align 8, !tbaa !57
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %132

82:                                               ; preds = %69
  %83 = load ptr, ptr %58, align 8, !tbaa !61
  %84 = sext i32 %63 to i64
  %85 = getelementptr inbounds %struct.ParticleTarget, ptr %62, i64 0, i32 6
  %86 = getelementptr inbounds %struct.ParticleTarget, ptr %62, i64 0, i32 7
  %87 = icmp slt i32 %63, %51
  %88 = sitofp i32 %63 to float
  %89 = fdiv float %88, %60
  br label %90

90:                                               ; preds = %82, %127
  %91 = phi ptr [ %83, %82 ], [ %129, %127 ]
  %92 = phi i32 [ 0, %82 ], [ %128, %127 ]
  %93 = getelementptr inbounds %struct.ParticleData, ptr %91, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !388
  %95 = getelementptr inbounds %struct.ParticleKey, ptr %94, i64 %84
  %96 = getelementptr inbounds %struct.ParticleKey, ptr %94, i64 %84, i32 4
  store float -1.000000e+00, ptr %96, align 4, !tbaa !274
  %97 = load ptr, ptr %57, align 8, !tbaa !118
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %97, i64 0, i32 26
  %99 = load i32, ptr %98, align 8, !tbaa !57
  %100 = srem i32 %92, %99
  %101 = call i32 @psys_get_particle_state(ptr noundef nonnull %2, i32 noundef %100, ptr noundef %95, i32 noundef 1) #22
  %102 = load i32, ptr %47, align 4, !tbaa !55
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.ParticleData, ptr %91, i64 0, i32 6
  %106 = load float, ptr %105, align 4, !tbaa !146
  br i1 %104, label %121, label %107

107:                                              ; preds = %90
  %108 = load float, ptr %85, align 8, !tbaa !390
  %109 = fadd float %106, %108
  store float %109, ptr %96, align 4, !tbaa !274
  %110 = load float, ptr %86, align 4, !tbaa !231
  %111 = fcmp une float %110, 0.000000e+00
  %112 = select i1 %111, i1 %87, i1 false
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.ParticleKey, ptr %95, i64 1
  call void @copy_particle_key(ptr noundef nonnull %114, ptr noundef nonnull %95, i32 noundef 1) #22
  %115 = load float, ptr %105, align 4, !tbaa !146
  %116 = load float, ptr %85, align 8, !tbaa !390
  %117 = fadd float %115, %116
  %118 = load float, ptr %86, align 4, !tbaa !231
  %119 = fadd float %117, %118
  %120 = getelementptr inbounds %struct.ParticleKey, ptr %95, i64 1, i32 4
  store float %119, ptr %120, align 4, !tbaa !274
  br label %127

121:                                              ; preds = %90
  br i1 %59, label %126, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.ParticleData, ptr %91, i64 0, i32 7
  %124 = load float, ptr %123, align 8, !tbaa !212
  %125 = call float @llvm.fmuladd.f32(float %89, float %124, float %106)
  store float %125, ptr %96, align 4, !tbaa !274
  br label %127

126:                                              ; preds = %121
  store float %106, ptr %96, align 4, !tbaa !274
  br label %127

127:                                              ; preds = %113, %107, %126, %122
  %128 = add nuw nsw i32 %92, 1
  %129 = getelementptr inbounds %struct.ParticleData, ptr %91, i64 1
  %130 = load i32, ptr %6, align 8, !tbaa !57
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %90, label %132, !llvm.loop !391

132:                                              ; preds = %127, %69
  %133 = load i32, ptr %47, align 4, !tbaa !55
  %134 = and i32 %133, 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.ParticleTarget, ptr %62, i64 0, i32 7
  %138 = load float, ptr %137, align 4, !tbaa !231
  %139 = fcmp une float %138, 0.000000e+00
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = add nsw i32 %63, 1
  br label %142

142:                                              ; preds = %140, %136, %132
  %143 = phi i32 [ %141, %140 ], [ %63, %136 ], [ %63, %132 ]
  %144 = load ptr, ptr %57, align 8, !tbaa !118
  %145 = getelementptr inbounds %struct.ParticleSystem, ptr %144, i64 0, i32 25
  %146 = load i32, ptr %145, align 4, !tbaa !55
  %147 = or i32 %146, %78
  store i32 %147, ptr %145, align 4, !tbaa !55
  %148 = load ptr, ptr %62, align 8, !tbaa !232
  %149 = icmp eq ptr %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.ParticleTarget, ptr %148, i64 0, i32 4
  %152 = load i16, ptr %151, align 4, !tbaa !229
  %153 = and i16 %152, 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150, %142
  %156 = load ptr, ptr %50, align 8, !tbaa !230
  br label %157

157:                                              ; preds = %150, %155
  %158 = phi ptr [ %156, %155 ], [ %148, %150 ]
  %159 = add nsw i32 %143, 1
  %160 = icmp slt i32 %159, %10
  br i1 %160, label %61, label %161, !llvm.loop !392

161:                                              ; preds = %157
  %162 = load i32, ptr %47, align 4, !tbaa !55
  br label %163

163:                                              ; preds = %161, %46
  %164 = phi i32 [ %162, %161 ], [ %49, %46 ]
  %165 = or i32 %164, 1024
  store i32 %165, ptr %47, align 4, !tbaa !55
  br label %166

166:                                              ; preds = %163, %13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_update_path_cache(ptr noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !393 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %0, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !394
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 18
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 19
  %12 = load i16, ptr %11, align 4, !tbaa !48
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !69
  %17 = tail call fastcc i32 @get_psys_tot_child(ptr noundef nonnull %7, ptr noundef nonnull %4) #21
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %14, %2
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 31
  %21 = load i16, ptr %20, align 4, !tbaa !348
  %22 = and i16 %21, 16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = and i16 %21, 64
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 36
  %29 = load i16, ptr %28, align 4, !tbaa !331
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = icmp eq ptr %33, null
  br i1 %34, label %67, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 27
  %37 = load i32, ptr %36, align 8, !tbaa !395
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %67, label %44

40:                                               ; preds = %19, %14
  %41 = load ptr, ptr %3, align 8, !tbaa !118
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %41, i64 0, i32 26
  %43 = load i32, ptr %42, align 8, !tbaa !57
  tail call fastcc void @realloc_particles(ptr noundef nonnull %0, i32 noundef %43) #21
  br label %44

44:                                               ; preds = %24, %35, %40
  %45 = load ptr, ptr %0, align 8, !tbaa !107
  %46 = tail call fastcc i32 @get_psys_tot_child(ptr noundef %45, ptr noundef nonnull %4) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 7
  %51 = load i16, ptr %50, align 8, !tbaa !54
  %52 = icmp eq i16 %51, 2
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %55 = load i32, ptr %54, align 4, !tbaa !55
  %56 = and i32 %55, 512
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53, %48
  tail call fastcc void @distribute_particles(ptr noundef nonnull %0, i32 noundef 4) #21
  %59 = load i16, ptr %11, align 4, !tbaa !48
  %60 = icmp eq i16 %59, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 91
  %63 = load float, ptr %62, align 4, !tbaa !396
  %64 = fcmp une float %63, 0.000000e+00
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  tail call void @psys_find_parents(ptr noundef nonnull %0) #22
  br label %67

66:                                               ; preds = %44
  tail call void @psys_free_children(ptr noundef nonnull %4) #22
  br label %67

67:                                               ; preds = %27, %31, %35, %66, %58, %61, %65, %53
  %68 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 7
  %69 = load i16, ptr %68, align 8, !tbaa !54
  %70 = icmp eq i16 %69, 2
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %73 = load i32, ptr %72, align 4, !tbaa !55
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 40
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  %79 = getelementptr inbounds %struct.PointCache, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !50
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %130, label %83

83:                                               ; preds = %71, %67, %76
  %84 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 21
  %85 = load i16, ptr %84, align 8, !tbaa !337
  %86 = icmp eq i16 %85, 6
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = add i16 %85, -7
  %89 = icmp ult i16 %88, 2
  %90 = and i1 %70, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %87, %83
  %92 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 39
  %93 = load ptr, ptr %92, align 8, !tbaa !43
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 17
  %97 = load i16, ptr %96, align 8, !tbaa !338
  %98 = icmp eq i16 %97, 10
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 40
  %101 = load ptr, ptr %100, align 8, !tbaa !49
  %102 = getelementptr inbounds %struct.PointCache, ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !50
  %104 = and i32 %103, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %99
  %107 = load ptr, ptr %0, align 8, !tbaa !107
  %108 = tail call i32 @psys_in_edit_mode(ptr noundef %107, ptr noundef nonnull %4) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %106
  %111 = load i16, ptr %10, align 8, !tbaa !397
  %112 = and i16 %111, 16
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %11, align 4, !tbaa !48
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %119 = load i32, ptr %118, align 4, !tbaa !55
  %120 = and i32 %119, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %100, align 8, !tbaa !49
  %124 = getelementptr inbounds %struct.PointCache, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !50
  %126 = freeze i32 %125
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117, %122
  br label %130

130:                                              ; preds = %129, %122, %110, %99, %95, %87, %76, %106, %114, %91
  %131 = phi i1 [ true, %91 ], [ true, %114 ], [ true, %106 ], [ false, %76 ], [ false, %87 ], [ false, %95 ], [ false, %99 ], [ false, %110 ], [ false, %129 ], [ true, %122 ]
  %132 = load ptr, ptr %0, align 8, !tbaa !107
  %133 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !68
  %135 = icmp eq ptr %134, null
  br i1 %135, label %168, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %138 = ptrtoint ptr %4 to i64
  br label %139

139:                                              ; preds = %136, %165
  %140 = phi ptr [ %134, %136 ], [ %166, %165 ]
  %141 = getelementptr inbounds %struct.Base, ptr %140, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !399
  %143 = tail call ptr @modifiers_findByType(ptr noundef %142, i32 noundef 20) #22
  %144 = icmp eq ptr %143, null
  br i1 %144, label %165, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %143, i64 0, i32 3
  %147 = load i16, ptr %146, align 2, !tbaa !401
  %148 = and i16 %147, 4
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %143, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !403
  %153 = load ptr, ptr %137, align 8, !tbaa !117
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %143, i64 0, i32 2
  %157 = load i16, ptr %156, align 8, !tbaa !404
  %158 = sext i16 %157 to i64
  %159 = getelementptr inbounds %struct.Object, ptr %152, i64 0, i32 109
  %160 = load ptr, ptr %159, align 8, !tbaa !405
  %161 = ptrtoint ptr %160 to i64
  %162 = sub i64 %138, %161
  %163 = sdiv exact i64 %162, 656
  %164 = icmp eq i64 %163, %158
  br i1 %164, label %169, label %165

165:                                              ; preds = %155, %150, %145, %139
  %166 = load ptr, ptr %140, align 8, !tbaa !68
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %139, !llvm.loop !406

168:                                              ; preds = %165, %130
  br i1 %131, label %169, label %187

169:                                              ; preds = %155, %168
  tail call void @psys_cache_paths(ptr noundef nonnull %0, float noundef %1) #22
  %170 = load i16, ptr %11, align 4, !tbaa !48
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %192, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  %174 = load i32, ptr %173, align 8, !tbaa !69
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %192, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %5, align 8, !tbaa !34
  %178 = getelementptr inbounds %struct.ParticleSettings, ptr %177, i64 0, i32 7
  %179 = load i16, ptr %178, align 8, !tbaa !54
  %180 = icmp eq i16 %179, 2
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %183 = load i32, ptr %182, align 4, !tbaa !55
  %184 = and i32 %183, 512
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %176, %181
  tail call void @psys_cache_child_paths(ptr noundef nonnull %0, float noundef %1, i32 noundef 0) #22
  br label %192

187:                                              ; preds = %168
  %188 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !407
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void @psys_free_path_cache(ptr noundef nonnull %4, ptr noundef null) #22
  br label %192

192:                                              ; preds = %172, %187, %191, %169, %186, %181
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #9 !PGOFuncName !408 {
  %5 = load float, ptr %1, align 4, !tbaa !110
  %6 = load float, ptr %2, align 4, !tbaa !110
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !110
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !110
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !110
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !110
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !110
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !110
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sph_spring_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !409 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 45
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %2
  store i32 256, ptr %3, align 4, !tbaa !71
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %12 = tail call ptr %11(i64 noundef 4096, ptr noundef nonnull @.str.5) #22
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  store ptr %12, ptr %13, align 8, !tbaa !70
  br label %24

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = shl nsw i32 %4, 1
  store i32 %19, ptr %3, align 4, !tbaa !71
  %20 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !68
  %21 = sext i32 %19 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call ptr %20(ptr noundef nonnull %8, i64 noundef %22, ptr noundef nonnull @__func__.sph_spring_add) #22
  store ptr %23, ptr %7, align 8, !tbaa !70
  br label %24

24:                                               ; preds = %14, %18, %10
  %25 = phi ptr [ %8, %14 ], [ %23, %18 ], [ %12, %10 ]
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  %27 = load i32, ptr %26, align 8, !tbaa !72
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ParticleSpring, ptr %25, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %30 = load i32, ptr %26, align 8, !tbaa !72
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %26, align 8, !tbaa !72
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @sph_particle_courant(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !410 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call fastcc void @zero_v3(ptr noundef nonnull %3) #21
  %5 = getelementptr inbounds %struct.SPHRangeData, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !270
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SPHRangeData, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  %11 = getelementptr inbounds %struct.ParticleData, ptr %10, i64 0, i32 1
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ 0, %8 ], [ %26, %12 ]
  %14 = phi float [ 0.000000e+00, %8 ], [ %24, %12 ]
  %15 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %1, i64 0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !271
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %1, i64 0, i64 %13, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !273
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 %21, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %22) #21
  %23 = call fastcc float @len_v3(ptr noundef nonnull %4) #21
  %24 = fadd float %14, %23
  %25 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 %21, i32 1, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %25) #21
  %26 = add nuw nsw i64 %13, 1
  %27 = load i32, ptr %5, align 8, !tbaa !270
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %12, label %30, !llvm.loop !411

30:                                               ; preds = %12
  %31 = load ptr, ptr %0, align 8, !tbaa !68
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !247
  %36 = load float, ptr %35, align 4, !tbaa !258
  %37 = fadd float %24, %36
  %38 = sitofp i32 %27 to float
  %39 = fdiv float %37, %38
  %40 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 7
  store float %39, ptr %40, align 8, !tbaa !412
  %41 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 8
  %42 = fdiv float 1.000000e+00, %38
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %41, ptr noundef nonnull %3, float noundef %42) #21
  br label %46

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 7
  store float 0x47EFFFFFE0000000, ptr %44, align 8, !tbaa !412
  %45 = getelementptr inbounds %struct.SPHData, ptr %0, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %3) #21
  br label %46

46:                                               ; preds = %43, %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !413 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #21
  %3 = tail call float @sqrtf(float noundef %2) #22
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !414 {
  %3 = load float, ptr %1, align 4, !tbaa !110
  %4 = load float, ptr %0, align 4, !tbaa !110
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !110
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !110
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !110
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !110
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !110
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !110
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @pow2(float noundef %0) unnamed_addr #16 !PGOFuncName !415 {
  %2 = fmul float %0, %0
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @sphclassical_neighbour_accum_cb(ptr nocapture noundef %0, i32 noundef %1, float %2) #13 !PGOFuncName !416 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !287
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  %9 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !270
  %11 = icmp sgt i32 %10, 511
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.ParticleData, ptr %8, i64 %13
  %15 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !268
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %16) #21
  %17 = call fastcc float @len_v3(ptr noundef nonnull %4) #21
  %18 = getelementptr inbounds %struct.SPHRangeData, ptr %0, i64 0, i32 5
  %19 = load float, ptr %18, align 8, !tbaa !267
  %20 = fdiv float %17, %19
  %21 = fcmp ogt float %20, 2.000000e+00
  br i1 %21, label %29, label %22

22:                                               ; preds = %12
  %23 = load i32, ptr %9, align 8, !tbaa !270
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %24, i32 1
  store i32 %1, ptr %25, align 8, !tbaa !273
  %26 = load ptr, ptr %5, align 8, !tbaa !287
  %27 = getelementptr inbounds [512 x %struct.SPHNeighbor], ptr %0, i64 0, i64 %24
  store ptr %26, ptr %27, align 8, !tbaa !271
  %28 = add nsw i32 %23, 1
  store i32 %28, ptr %9, align 8, !tbaa !270
  br label %29

29:                                               ; preds = %12, %3, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @pow7(float noundef %0) unnamed_addr #16 !PGOFuncName !417 {
  %2 = tail call fastcc float @pow3(float noundef %0) #21
  %3 = tail call fastcc float @pow2(float noundef %2) #21
  %4 = fmul float %3, %0
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @pow3(float noundef %0) unnamed_addr #16 !PGOFuncName !418 {
  %2 = tail call fastcc float @pow2(float noundef %0) #21
  %3 = fmul float %2, %0
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @pow4(float noundef %0) unnamed_addr #16 !PGOFuncName !419 {
  %2 = tail call fastcc float @pow2(float noundef %0) #21
  %3 = tail call fastcc float @pow2(float noundef %2) #21
  ret float %3
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_range_query(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @collision_newton_rhapson(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #2 !PGOFuncName !420 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 11
  store i16 -1, ptr %6, align 8, !tbaa !328
  %7 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 15
  %8 = load float, ptr %7, align 4, !tbaa !421
  %9 = fcmp ogt float %8, 0.000000e+00
  %10 = fmul float %8, 0x3F14F8B580000000
  %11 = select i1 %9, float %10, float 0x3F50624DE0000000
  %12 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 6
  %13 = load float, ptr %12, align 8, !tbaa !422
  tail call fastcc void @collision_interpolate_element(ptr noundef %2, float noundef 0.000000e+00, float noundef %13, ptr noundef %0) #21
  %14 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 18
  %15 = call float %3(ptr noundef nonnull %14, float noundef %1, ptr noundef %2, ptr noundef nonnull %5) #22, !callees !423
  %16 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 5
  %17 = getelementptr inbounds %struct.ParticleCollision, ptr %0, i64 0, i32 19
  %18 = fneg float %1
  %19 = fsub float 1.000000e+00, %11
  br label %20

20:                                               ; preds = %4, %71
  %21 = phi i32 [ 0, %4 ], [ %75, %71 ]
  %22 = phi float [ %15, %4 ], [ %74, %71 ]
  %23 = phi float [ %11, %4 ], [ %73, %71 ]
  %24 = phi float [ 0.000000e+00, %4 ], [ %72, %71 ]
  %25 = load float, ptr %12, align 8, !tbaa !422
  call fastcc void @collision_interpolate_element(ptr noundef %2, float noundef %23, float noundef %25, ptr noundef nonnull %0) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %17, float noundef %23) #22
  %26 = call float %3(ptr noundef nonnull %16, float noundef %1, ptr noundef %2, ptr noundef nonnull %5) #22, !callees !423
  %27 = icmp eq i32 %21, 0
  %28 = fcmp olt float %22, 0.000000e+00
  %29 = select i1 %27, i1 %28, i1 false
  %30 = fcmp ogt float %22, %18
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %14) #21
  %33 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %5) #21
  %34 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 12
  store i16 1, ptr %34, align 2, !tbaa !315
  br label %77

35:                                               ; preds = %20
  %36 = fcmp oeq float %26, %22
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br i1 %27, label %68, label %77

38:                                               ; preds = %35
  %39 = fsub float %23, %24
  %40 = fsub float %26, %22
  %41 = fdiv float %39, %40
  %42 = fneg float %26
  %43 = call float @llvm.fmuladd.f32(float %42, float %41, float %23)
  %44 = fcmp olt float %43, 0.000000e+00
  %45 = select i1 %27, i1 %44, i1 false
  br i1 %45, label %68, label %46

46:                                               ; preds = %38
  %47 = icmp eq i32 %21, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = fcmp olt float %43, 0xBEE4F8B580000000
  %50 = fcmp ogt float %43, 1.000000e+00
  %51 = or i1 %49, %50
  br i1 %51, label %77, label %52

52:                                               ; preds = %46, %48
  %53 = fcmp ole float %26, 0x3EE4F8B580000000
  %54 = fcmp oge float %26, 0xBEE4F8B580000000
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = fcmp oge float %43, 0xBEE4F8B580000000
  %58 = fcmp ole float %43, 1.000000e+00
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = icmp eq ptr %3, @nr_signed_distance_to_plane
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %63, ptr noundef nonnull %5) #21
  br label %64

64:                                               ; preds = %62, %60
  br i1 %44, label %77, label %65

65:                                               ; preds = %64
  %66 = fcmp ogt float %43, 1.000000e+00
  br i1 %66, label %67, label %77

67:                                               ; preds = %65
  br label %77

68:                                               ; preds = %38, %37
  %69 = load float, ptr %12, align 8, !tbaa !422
  call fastcc void @collision_interpolate_element(ptr noundef %2, float noundef 1.000000e+00, float noundef %69, ptr noundef nonnull %0) #21
  %70 = call float %3(ptr noundef nonnull %17, float noundef %1, ptr noundef %2, ptr noundef nonnull %5) #22
  br label %71

71:                                               ; preds = %68, %52
  %72 = phi float [ %23, %52 ], [ 1.000000e+00, %68 ]
  %73 = phi float [ %43, %52 ], [ %19, %68 ]
  %74 = phi float [ %26, %52 ], [ %70, %68 ]
  %75 = add nuw nsw i32 %21, 1
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %20, !llvm.loop !424

77:                                               ; preds = %71, %48, %37, %56, %67, %65, %64, %32
  %78 = phi float [ 0.000000e+00, %32 ], [ 1.000000e+00, %67 ], [ %43, %65 ], [ 0.000000e+00, %64 ], [ -1.000000e+00, %56 ], [ -1.000000e+00, %37 ], [ -1.000000e+00, %48 ], [ -1.000000e+00, %71 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret float %78
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal float @nr_signed_distance_to_plane(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #8 !PGOFuncName !425 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3
  %9 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #21
  %10 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %9) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %9) #21
  call fastcc void @cross_v3_v3v3(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %11 = tail call fastcc float @normalize_v3(ptr noundef %3) #21
  %12 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef %3) #21
  %13 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 11
  %14 = load i16, ptr %13, align 8, !tbaa !328
  switch i16 %14, label %21 [
    i16 -1, label %15
    i16 1, label %19
  ]

15:                                               ; preds = %4
  %16 = fcmp olt float %12, 0.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  store i16 1, ptr %13, align 8, !tbaa !328
  br label %19

18:                                               ; preds = %15
  store i16 0, ptr %13, align 8, !tbaa !328
  br label %21

19:                                               ; preds = %4, %17
  tail call fastcc void @negate_v3(ptr noundef %3) #21
  %20 = fneg float %12
  br label %21

21:                                               ; preds = %4, %18, %19
  %22 = phi float [ %20, %19 ], [ %12, %18 ], [ %12, %4 ]
  %23 = fsub float %22, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret float %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @collision_interpolate_element(ptr nocapture noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #14 !PGOFuncName !426 {
  %5 = fsub float 1.000000e+00, %2
  %6 = tail call float @llvm.fmuladd.f32(float %1, float %5, float %2)
  %7 = getelementptr inbounds %struct.ParticleCollision, ptr %3, i64 0, i32 7
  %8 = load float, ptr %7, align 4, !tbaa !427
  %9 = getelementptr inbounds %struct.ParticleCollision, ptr %3, i64 0, i32 8
  %10 = load float, ptr %9, align 8, !tbaa !428
  %11 = fsub float %10, %8
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %8)
  %13 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !314
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %0, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %17, ptr noundef %18, ptr noundef %20, float noundef %12) #21
  %21 = load i32, ptr %13, align 8, !tbaa !314
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 3
  %25 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %24, ptr noundef %26, ptr noundef %28, float noundef %12) #21
  %29 = load i32, ptr %13, align 8, !tbaa !314
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 4
  %33 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %0, i64 0, i32 1, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %32, ptr noundef %34, ptr noundef %36, float noundef %12) #21
  br label %37

37:                                               ; preds = %16, %31, %23, %4
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal float @nr_distance_to_edge(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #8 !PGOFuncName !429 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %10) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %9) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %11 = call fastcc float @len_v3(ptr noundef nonnull %8) #21
  %12 = call fastcc float @len_v3(ptr noundef nonnull %5) #21
  %13 = fdiv float %11, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fsub float %14, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal float @nr_distance_to_vert(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #8 !PGOFuncName !430 {
  %5 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %2, i64 0, i32 2
  %6 = tail call fastcc float @len_v3v3(ptr noundef %0, ptr noundef nonnull %5) #21
  %7 = fsub float %6, %1
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !431 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret float %4
}

; Function Attrs: optsize
declare void @boid_default_settings(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @boid_new_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @boid_new_rule(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fluid_default_settings(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !432 {
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  %4 = getelementptr inbounds %struct.SPHFluidSettings, ptr %3, i64 0, i32 4
  store float 0x3FB99999A0000000, ptr %4, align 4, !tbaa !433
  %5 = getelementptr inbounds %struct.SPHFluidSettings, ptr %3, i64 0, i32 7
  store <4 x float> <float 2.000000e+00, float 0x3FB99999A0000000, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !110
  %6 = getelementptr inbounds %struct.SPHFluidSettings, ptr %3, i64 0, i32 11
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %6, align 4, !tbaa !110
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000>, ptr %3, align 4, !tbaa !110
  %7 = getelementptr inbounds %struct.SPHFluidSettings, ptr %3, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !256
  %9 = or i32 %8, 124
  store i32 %9, ptr %7, align 4, !tbaa !256
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_clear_temp_pointcache(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !434 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 20
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %9) #22
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_all_particles(ptr noundef %0, float noundef %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !435 {
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp sgt i32 %7, %2
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds %struct.ParticleData, ptr %11, i64 %12
  br label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %18, %14 ], [ %13, %9 ]
  %16 = phi i32 [ %17, %14 ], [ %2, %9 ]
  tail call void @reset_particle(ptr noundef %0, ptr noundef %15, float noundef 0.000000e+00, float noundef %1) #21
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 1
  %19 = icmp eq i32 %17, %7
  br i1 %19, label %20, label %14, !llvm.loop !436

20:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cached_step(ptr noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !437 {
  %3 = alloca %struct.ParticleTexture, align 4
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #23
  tail call fastcc void @psys_update_effectors(ptr noundef %0) #21
  %8 = tail call float @psys_get_current_display_percentage(ptr noundef %5) #21
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 82
  %16 = getelementptr inbounds %struct.ParticleTexture, ptr %3, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 83
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 15
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 5
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 40
  br label %21

21:                                               ; preds = %12, %65
  %22 = phi ptr [ %14, %12 ], [ %74, %65 ]
  %23 = phi i32 [ 0, %12 ], [ %73, %65 ]
  call void @psys_get_texture(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %3, i32 noundef 8, float noundef %1) #22
  %24 = load float, ptr %15, align 8, !tbaa !294
  %25 = load float, ptr %16, align 4, !tbaa !438
  %26 = fmul float %24, %25
  %27 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 0, i32 13
  store float %26, ptr %27, align 4, !tbaa !259
  %28 = load float, ptr %17, align 4, !tbaa !351
  %29 = fcmp ogt float %28, 0.000000e+00
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = add nuw nsw i32 %23, 1
  %32 = call fastcc float @psys_frand(ptr noundef nonnull %5, i32 noundef %31) #21
  %33 = fneg float %28
  %34 = call float @llvm.fmuladd.f32(float %33, float %32, float 1.000000e+00)
  %35 = fmul float %26, %34
  store float %35, ptr %27, align 4, !tbaa !259
  br label %36

36:                                               ; preds = %30, %21
  %37 = call ptr @psys_create_lattice_deform_data(ptr noundef %0) #22
  store ptr %37, ptr %18, align 8, !tbaa !133
  %38 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 0, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !146
  %40 = fcmp ogt float %39, %1
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 0, i32 18
  store i16 2, ptr %42, align 2, !tbaa !218
  %43 = load i32, ptr %19, align 8, !tbaa !276
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %20, align 8, !tbaa !49
  %48 = getelementptr inbounds %struct.PointCache, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !50
  %50 = and i32 %49, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  call void @reset_particle(ptr noundef %0, ptr noundef nonnull %22, float noundef 0.000000e+00, float noundef %1) #21
  %53 = load ptr, ptr %18, align 8, !tbaa !133
  br label %61

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 0, i32 8
  %56 = load float, ptr %55, align 4, !tbaa !215
  %57 = fcmp ugt float %56, %1
  %58 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 0, i32 18
  br i1 %57, label %60, label %59

59:                                               ; preds = %54
  store i16 1, ptr %58, align 2, !tbaa !218
  br label %61

60:                                               ; preds = %54
  store i16 3, ptr %58, align 2, !tbaa !218
  br label %61

61:                                               ; preds = %59, %60, %41, %46, %52
  %62 = phi ptr [ %37, %59 ], [ %37, %60 ], [ %37, %41 ], [ %37, %46 ], [ %53, %52 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void @end_latt_deform(ptr noundef nonnull %62) #22
  store ptr null, ptr %18, align 8, !tbaa !133
  br label %65

65:                                               ; preds = %64, %61
  %66 = call fastcc float @psys_frand(ptr noundef nonnull %5, i32 noundef %23) #21
  %67 = fcmp ogt float %66, %8
  %68 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 0, i32 17
  %69 = load i16, ptr %68, align 4, !tbaa !62
  %70 = and i16 %69, -3
  %71 = select i1 %67, i16 2, i16 0
  %72 = or disjoint i16 %70, %71
  store i16 %72, ptr %68, align 4, !tbaa !62
  %73 = add nuw nsw i32 %23, 1
  %74 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 1
  %75 = load i32, ptr %9, align 8, !tbaa !57
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %21, label %77, !llvm.loop !439

77:                                               ; preds = %65, %2
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_children(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !54
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !55
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @psys_free_children(ptr noundef nonnull %3) #22
  br label %27

15:                                               ; preds = %9, %1
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 19
  %17 = load i16, ptr %16, align 4, !tbaa !48
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 28
  %21 = load i32, ptr %20, align 8, !tbaa !69
  %22 = load ptr, ptr %0, align 8, !tbaa !107
  %23 = tail call fastcc i32 @get_psys_tot_child(ptr noundef %22, ptr noundef nonnull %3) #21
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  tail call fastcc void @distribute_particles(ptr noundef nonnull %0, i32 noundef 4) #21
  br label %27

26:                                               ; preds = %15
  tail call void @psys_free_children(ptr noundef nonnull %3) #22
  br label %27

27:                                               ; preds = %26, %19, %25, %14
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @get_base_time_step(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !441 {
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 22
  %3 = load i16, ptr %2, align 2, !tbaa !442
  %4 = sext i16 %3 to i32
  %5 = add nsw i32 %4, 1
  %6 = sitofp i32 %5 to float
  %7 = fdiv float 1.000000e+00, %6
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamics_step(ptr noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !443 {
  %3 = alloca %struct.BoidBrainData, align 8
  %4 = alloca %struct.ParticleTexture, align 4
  %5 = alloca %struct.SPHData, align 8
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #23
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 20
  %11 = load float, ptr %10, align 8, !tbaa !181
  %12 = fsub float %1, %11
  %13 = tail call float @psys_get_timestep(ptr noundef %0) #22
  %14 = fmul float %12, %13
  %15 = fcmp olt float %12, 0.000000e+00
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %392

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 82
  %24 = getelementptr inbounds %struct.ParticleTexture, ptr %4, i64 0, i32 4
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 83
  br label %26

26:                                               ; preds = %20, %49
  %27 = phi i32 [ %18, %20 ], [ %50, %49 ]
  %28 = phi ptr [ %22, %20 ], [ %52, %49 ]
  %29 = phi i32 [ 0, %20 ], [ %51, %49 ]
  %30 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 0, i32 17
  %31 = load i16, ptr %30, align 4, !tbaa !62
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  call void @psys_get_texture(ptr noundef %0, ptr noundef nonnull %28, ptr noundef nonnull %4, i32 noundef 8, float noundef %1) #22
  %35 = load float, ptr %23, align 8, !tbaa !294
  %36 = load float, ptr %24, align 4, !tbaa !438
  %37 = fmul float %35, %36
  %38 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 0, i32 13
  store float %37, ptr %38, align 4, !tbaa !259
  %39 = load float, ptr %25, align 4, !tbaa !351
  %40 = fcmp ogt float %39, 0.000000e+00
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = add nuw nsw i32 %29, 1
  %43 = call fastcc float @psys_frand(ptr noundef nonnull %7, i32 noundef %42) #21
  %44 = fneg float %39
  %45 = call float @llvm.fmuladd.f32(float %44, float %43, float 1.000000e+00)
  %46 = fmul float %37, %45
  store float %46, ptr %38, align 4, !tbaa !259
  br label %47

47:                                               ; preds = %41, %34
  call void @reset_particle(ptr noundef %0, ptr noundef nonnull %28, float noundef %14, float noundef %1) #21
  %48 = load i32, ptr %17, align 8, !tbaa !57
  br label %49

49:                                               ; preds = %26, %47
  %50 = phi i32 [ %27, %26 ], [ %48, %47 ]
  %51 = add nuw nsw i32 %29, 1
  %52 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 1
  %53 = icmp slt i32 %51, %50
  br i1 %53, label %26, label %392, !llvm.loop !444

54:                                               ; preds = %2
  %55 = fptosi float %1 to i32
  %56 = add nsw i32 %55, 31415926
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 23
  %58 = load i32, ptr %57, align 4, !tbaa !172
  %59 = add nsw i32 %58, %56
  tail call void @BLI_srandom(i32 noundef %59) #22
  %60 = load i32, ptr %57, align 4, !tbaa !172
  %61 = add nsw i32 %60, %56
  %62 = tail call ptr @BLI_rng_new_srandom(i32 noundef %61) #22
  tail call fastcc void @psys_update_effectors(ptr noundef nonnull %0) #21
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 7
  %64 = load i16, ptr %63, align 8, !tbaa !54
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %72, label %66

66:                                               ; preds = %54
  %67 = load ptr, ptr %0, align 8, !tbaa !107
  %68 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !117
  %70 = tail call ptr @get_collider_cache(ptr noundef %67, ptr noundef %69, ptr noundef null) #22
  %71 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  store ptr %70, ptr %71, align 8, !tbaa !445
  br label %72

72:                                               ; preds = %66, %54
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 11
  %74 = load i16, ptr %73, align 8, !tbaa !56
  switch i16 %74, label %116 [
    i16 3, label %75
    i16 4, label %98
  ]

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !230
  store ptr %0, ptr %3, align 8, !tbaa !446
  %78 = getelementptr inbounds %struct.BoidBrainData, ptr %3, i64 0, i32 1
  store ptr %9, ptr %78, align 8, !tbaa !448
  %79 = getelementptr inbounds %struct.BoidBrainData, ptr %3, i64 0, i32 3
  store float %1, ptr %79, align 4, !tbaa !449
  %80 = getelementptr inbounds %struct.BoidBrainData, ptr %3, i64 0, i32 4
  store float %12, ptr %80, align 8, !tbaa !450
  %81 = getelementptr inbounds %struct.BoidBrainData, ptr %3, i64 0, i32 2
  store float %13, ptr %81, align 8, !tbaa !451
  %82 = getelementptr inbounds %struct.BoidBrainData, ptr %3, i64 0, i32 11
  store ptr %62, ptr %82, align 8, !tbaa !452
  tail call void @psys_update_particle_tree(ptr noundef nonnull %7, float noundef %1) #21
  tail call void @boids_precalc_rules(ptr noundef nonnull %9, float noundef %1) #22
  %83 = icmp eq ptr %77, null
  br i1 %83, label %116, label %84

84:                                               ; preds = %75, %95
  %85 = phi ptr [ %96, %95 ], [ %77, %75 ]
  %86 = getelementptr inbounds %struct.ParticleTarget, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !226
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 109
  %91 = getelementptr inbounds %struct.ParticleTarget, ptr %85, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !228
  %93 = add nsw i32 %92, -1
  %94 = tail call ptr @BLI_findlink(ptr noundef nonnull %90, i32 noundef %93) #22
  tail call void @psys_update_particle_tree(ptr noundef %94, float noundef %1) #21
  br label %95

95:                                               ; preds = %84, %89
  %96 = load ptr, ptr %85, align 8, !tbaa !232
  %97 = icmp eq ptr %96, null
  br i1 %97, label %116, label %84, !llvm.loop !453

98:                                               ; preds = %72
  %99 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 17
  %100 = load ptr, ptr %99, align 8, !tbaa !230
  tail call fastcc void @psys_update_particle_bvhtree(ptr noundef nonnull %7, float noundef %1) #21
  %101 = icmp eq ptr %100, null
  br i1 %101, label %116, label %102

102:                                              ; preds = %98, %113
  %103 = phi ptr [ %114, %113 ], [ %100, %98 ]
  %104 = getelementptr inbounds %struct.ParticleTarget, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !226
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.Object, ptr %105, i64 0, i32 109
  %109 = getelementptr inbounds %struct.ParticleTarget, ptr %103, i64 0, i32 3
  %110 = load i32, ptr %109, align 8, !tbaa !228
  %111 = add nsw i32 %110, -1
  %112 = tail call ptr @BLI_findlink(ptr noundef nonnull %108, i32 noundef %111) #22
  tail call fastcc void @psys_update_particle_bvhtree(ptr noundef %112, float noundef %1) #21
  br label %113

113:                                              ; preds = %102, %107
  %114 = load ptr, ptr %103, align 8, !tbaa !232
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %102, !llvm.loop !454

116:                                              ; preds = %113, %95, %98, %75, %72
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %118 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 26
  %119 = load i32, ptr %118, align 8, !tbaa !57
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %206

121:                                              ; preds = %116
  %122 = load ptr, ptr %117, align 8, !tbaa !61
  %123 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 82
  %124 = getelementptr inbounds %struct.ParticleTexture, ptr %4, i64 0, i32 4
  %125 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 83
  %126 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 5
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 40
  br label %128

128:                                              ; preds = %121, %201
  %129 = phi ptr [ %122, %121 ], [ %203, %201 ]
  %130 = phi i32 [ 0, %121 ], [ %202, %201 ]
  %131 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 17
  %132 = load i16, ptr %131, align 4, !tbaa !62
  %133 = and i16 %132, 3
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %201

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 1
  call void @copy_particle_key(ptr noundef nonnull %136, ptr noundef nonnull %129, i32 noundef 1) #22
  call void @psys_get_texture(ptr noundef %0, ptr noundef nonnull %129, ptr noundef nonnull %4, i32 noundef 8, float noundef %1) #22
  %137 = load float, ptr %123, align 8, !tbaa !294
  %138 = load float, ptr %124, align 4, !tbaa !438
  %139 = fmul float %137, %138
  %140 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 13
  store float %139, ptr %140, align 4, !tbaa !259
  %141 = load float, ptr %125, align 4, !tbaa !351
  %142 = fcmp ogt float %141, 0.000000e+00
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = add nuw nsw i32 %130, 1
  %145 = call fastcc float @psys_frand(ptr noundef nonnull %7, i32 noundef %144) #21
  %146 = fneg float %141
  %147 = call float @llvm.fmuladd.f32(float %146, float %145, float 1.000000e+00)
  %148 = fmul float %139, %147
  store float %148, ptr %140, align 4, !tbaa !259
  br label %149

149:                                              ; preds = %143, %135
  %150 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 6
  %151 = load float, ptr %150, align 4, !tbaa !146
  %152 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 8
  %153 = load float, ptr %152, align 4, !tbaa !215
  %154 = getelementptr inbounds %struct.ParticleKey, ptr %129, i64 0, i32 4
  store float %12, ptr %154, align 4, !tbaa !219
  %155 = fcmp ugt float %153, %1
  br i1 %155, label %164, label %156

156:                                              ; preds = %149
  %157 = load float, ptr %10, align 8, !tbaa !181
  %158 = fcmp olt float %157, %153
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = fcmp ogt float %151, %157
  %161 = select i1 %160, float %151, float %157
  %162 = fsub float %153, %161
  store float %162, ptr %154, align 4, !tbaa !219
  %163 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 18
  store i16 4, ptr %163, align 2, !tbaa !218
  br label %172

164:                                              ; preds = %156, %149
  %165 = fcmp ugt float %151, %1
  br i1 %165, label %172, label %166

166:                                              ; preds = %164
  %167 = load float, ptr %10, align 8, !tbaa !181
  %168 = fcmp ult float %151, %167
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  call void @reset_particle(ptr noundef %0, ptr noundef nonnull %129, float noundef %14, float noundef %1) #21
  %170 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 18
  store i16 3, ptr %170, align 2, !tbaa !218
  %171 = fsub float %1, %151
  store float %171, ptr %154, align 4, !tbaa !219
  br label %172

172:                                              ; preds = %164, %166, %169, %159
  %173 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 0, i32 18
  %174 = load i16, ptr %173, align 2, !tbaa !218
  %175 = icmp eq i16 %174, 2
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load i32, ptr %126, align 8, !tbaa !276
  %178 = and i32 %177, 32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load ptr, ptr %127, align 8, !tbaa !49
  %182 = getelementptr inbounds %struct.PointCache, ptr %181, i64 0, i32 3
  %183 = load i32, ptr %182, align 4, !tbaa !455
  %184 = sitofp i32 %183 to float
  %185 = fadd float %184, %1
  %186 = load float, ptr %150, align 4, !tbaa !146
  %187 = fcmp ogt float %185, %186
  br i1 %187, label %191, label %188

188:                                              ; preds = %180, %172
  %189 = load i16, ptr %73, align 8, !tbaa !56
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188, %176, %180
  call void @reset_particle(ptr noundef %0, ptr noundef nonnull %129, float noundef %14, float noundef %1) #21
  br label %192

192:                                              ; preds = %191, %188
  %193 = load i16, ptr %173, align 2, !tbaa !218
  %194 = add i16 %193, -3
  %195 = icmp ult i16 %194, 2
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i16, ptr %131, align 4, !tbaa !62
  %198 = and i16 %197, 3
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %192, %196
  store float -1.000000e+00, ptr %154, align 4, !tbaa !219
  br label %201

201:                                              ; preds = %128, %200, %196
  %202 = add nuw nsw i32 %130, 1
  %203 = getelementptr inbounds %struct.ParticleData, ptr %129, i64 1
  %204 = load i32, ptr %118, align 8, !tbaa !57
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %128, label %206, !llvm.loop !456

206:                                              ; preds = %201, %116
  %207 = phi i32 [ %119, %116 ], [ %204, %201 ]
  %208 = load i16, ptr %73, align 8, !tbaa !56
  switch i16 %208, label %367 [
    i16 1, label %214
    i16 3, label %209
    i16 4, label %262
  ]

209:                                              ; preds = %206
  %210 = icmp sgt i32 %207, 0
  br i1 %210, label %211, label %390

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.BoidBrainData, ptr %3, i64 0, i32 7
  %213 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  br label %240

214:                                              ; preds = %206
  %215 = icmp sgt i32 %207, 0
  br i1 %215, label %216, label %390

216:                                              ; preds = %214
  %217 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  br label %218

218:                                              ; preds = %216, %235
  %219 = phi i32 [ %207, %216 ], [ %236, %235 ]
  %220 = phi i64 [ 0, %216 ], [ %237, %235 ]
  %221 = load ptr, ptr %117, align 8, !tbaa !61
  %222 = getelementptr inbounds %struct.ParticleData, ptr %221, i64 %220
  %223 = getelementptr inbounds %struct.ParticleKey, ptr %222, i64 0, i32 4
  %224 = load float, ptr %223, align 4, !tbaa !219
  %225 = fcmp ogt float %224, 0.000000e+00
  br i1 %225, label %226, label %235

226:                                              ; preds = %218
  %227 = trunc i64 %220 to i32
  call fastcc void @basic_integrate(ptr noundef %0, i32 noundef %227, float noundef %224, float noundef %1) #21
  %228 = load ptr, ptr %217, align 8, !tbaa !445
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = load float, ptr %223, align 4, !tbaa !219
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %227, float noundef %231, float noundef %1) #21
  br label %232

232:                                              ; preds = %230, %226
  %233 = load float, ptr %223, align 4, !tbaa !219
  call fastcc void @basic_rotate(ptr noundef %9, ptr noundef nonnull %222, float noundef %233, float noundef %13) #21
  %234 = load i32, ptr %118, align 8, !tbaa !57
  br label %235

235:                                              ; preds = %218, %232
  %236 = phi i32 [ %219, %218 ], [ %234, %232 ]
  %237 = add nuw nsw i64 %220, 1
  %238 = sext i32 %236 to i64
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %218, label %367, !llvm.loop !457

240:                                              ; preds = %211, %257
  %241 = phi i64 [ 0, %211 ], [ %258, %257 ]
  %242 = load ptr, ptr %117, align 8, !tbaa !61
  %243 = getelementptr inbounds %struct.ParticleData, ptr %242, i64 %241
  %244 = getelementptr inbounds %struct.ParticleKey, ptr %243, i64 0, i32 4
  %245 = load float, ptr %244, align 4, !tbaa !219
  %246 = fcmp ogt float %245, 0.000000e+00
  br i1 %246, label %247, label %257

247:                                              ; preds = %240
  store ptr null, ptr %212, align 8, !tbaa !458
  %248 = trunc i64 %241 to i32
  call void @boid_brain(ptr noundef nonnull %3, i32 noundef %248, ptr noundef nonnull %243) #22
  %249 = getelementptr inbounds %struct.ParticleData, ptr %242, i64 %241, i32 18
  %250 = load i16, ptr %249, align 2, !tbaa !218
  %251 = icmp eq i16 %250, 4
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  call void @boid_body(ptr noundef nonnull %3, ptr noundef nonnull %243) #22
  %253 = load ptr, ptr %213, align 8, !tbaa !445
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = load float, ptr %244, align 4, !tbaa !219
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %248, float noundef %256, float noundef %1) #21
  br label %257

257:                                              ; preds = %240, %252, %255, %247
  %258 = add nuw nsw i64 %241, 1
  %259 = load i32, ptr %118, align 8, !tbaa !57
  %260 = sext i32 %259 to i64
  %261 = icmp slt i64 %258, %260
  br i1 %261, label %240, label %367, !llvm.loop !459

262:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %5) #23
  %263 = load ptr, ptr %6, align 8, !tbaa !118
  %264 = getelementptr inbounds %struct.ParticleSystem, ptr %263, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !34
  call void @psys_sph_init(ptr noundef %0, ptr noundef nonnull %5) #21
  %266 = getelementptr inbounds %struct.ParticleSettings, ptr %265, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !247
  %268 = getelementptr inbounds %struct.SPHFluidSettings, ptr %267, i64 0, i32 15
  %269 = load i16, ptr %268, align 4, !tbaa !248
  %270 = icmp eq i16 %269, 0
  %271 = load i32, ptr %118, align 8, !tbaa !57
  %272 = icmp sgt i32 %271, 0
  br i1 %270, label %274, label %273

273:                                              ; preds = %262
  br i1 %272, label %306, label %365

274:                                              ; preds = %262
  br i1 %272, label %275, label %303

275:                                              ; preds = %274
  %276 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %277 = getelementptr inbounds %struct.ParticleSettings, ptr %265, i64 0, i32 67
  br label %278

278:                                              ; preds = %275, %298
  %279 = phi i64 [ 0, %275 ], [ %299, %298 ]
  %280 = load ptr, ptr %117, align 8, !tbaa !61
  %281 = getelementptr inbounds %struct.ParticleData, ptr %280, i64 %279
  %282 = getelementptr inbounds %struct.ParticleKey, ptr %281, i64 0, i32 4
  %283 = load float, ptr %282, align 4, !tbaa !219
  %284 = fcmp ogt float %283, 0.000000e+00
  br i1 %284, label %285, label %298

285:                                              ; preds = %278
  %286 = trunc i64 %279 to i32
  call fastcc void @basic_integrate(ptr noundef %0, i32 noundef %286, float noundef %283, float noundef %1) #21
  %287 = load float, ptr %282, align 4, !tbaa !219
  call fastcc void @sph_integrate(ptr noundef %0, ptr noundef nonnull %281, float noundef %287, ptr noundef nonnull %5) #21
  %288 = load ptr, ptr %276, align 8, !tbaa !445
  %289 = icmp eq ptr %288, null
  br i1 %289, label %292, label %290

290:                                              ; preds = %285
  %291 = load float, ptr %282, align 4, !tbaa !219
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %286, float noundef %291, float noundef %1) #21
  br label %292

292:                                              ; preds = %290, %285
  %293 = load float, ptr %282, align 4, !tbaa !219
  call fastcc void @basic_rotate(ptr noundef %265, ptr noundef nonnull %281, float noundef %293, float noundef %13) #21
  %294 = load i16, ptr %277, align 4, !tbaa !285
  %295 = and i16 %294, 1
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %292
  call fastcc void @update_courant_num(ptr noundef nonnull %0, ptr noundef nonnull %281, float noundef %14, ptr noundef nonnull %5) #21
  br label %298

298:                                              ; preds = %278, %297, %292
  %299 = add nuw nsw i64 %279, 1
  %300 = load i32, ptr %118, align 8, !tbaa !57
  %301 = sext i32 %300 to i64
  %302 = icmp slt i64 %299, %301
  br i1 %302, label %278, label %303, !llvm.loop !460

303:                                              ; preds = %298, %274
  call fastcc void @sph_springs_modify(ptr noundef nonnull %7, float noundef %13) #21
  br label %365

304:                                              ; preds = %316
  %305 = icmp sgt i32 %317, 0
  br i1 %305, label %326, label %365

306:                                              ; preds = %273, %316
  %307 = phi i32 [ %317, %316 ], [ %271, %273 ]
  %308 = phi i64 [ %318, %316 ], [ 0, %273 ]
  %309 = load ptr, ptr %117, align 8, !tbaa !61
  %310 = getelementptr inbounds %struct.ParticleData, ptr %309, i64 %308, i32 0, i32 4
  %311 = load float, ptr %310, align 4, !tbaa !219
  %312 = fcmp ogt float %311, 0.000000e+00
  br i1 %312, label %313, label %316

313:                                              ; preds = %306
  %314 = trunc i64 %308 to i32
  call fastcc void @basic_integrate(ptr noundef %0, i32 noundef %314, float noundef %311, float noundef %1) #21
  %315 = load i32, ptr %118, align 8, !tbaa !57
  br label %316

316:                                              ; preds = %306, %313
  %317 = phi i32 [ %307, %306 ], [ %315, %313 ]
  %318 = add nuw nsw i64 %308, 1
  %319 = sext i32 %317 to i64
  %320 = icmp slt i64 %318, %319
  br i1 %320, label %306, label %304, !llvm.loop !461

321:                                              ; preds = %336
  %322 = icmp sgt i32 %337, 0
  br i1 %322, label %323, label %365

323:                                              ; preds = %321
  %324 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %325 = getelementptr inbounds %struct.ParticleSettings, ptr %265, i64 0, i32 67
  br label %341

326:                                              ; preds = %304, %336
  %327 = phi i32 [ %337, %336 ], [ %317, %304 ]
  %328 = phi i64 [ %338, %336 ], [ 0, %304 ]
  %329 = load ptr, ptr %117, align 8, !tbaa !61
  %330 = getelementptr inbounds %struct.ParticleData, ptr %329, i64 %328
  %331 = getelementptr inbounds %struct.ParticleKey, ptr %330, i64 0, i32 4
  %332 = load float, ptr %331, align 4, !tbaa !219
  %333 = fcmp ogt float %332, 0.000000e+00
  br i1 %333, label %334, label %336

334:                                              ; preds = %326
  call fastcc void @sphclassical_calc_dens(ptr noundef nonnull %330, ptr noundef nonnull %5) #21
  %335 = load i32, ptr %118, align 8, !tbaa !57
  br label %336

336:                                              ; preds = %326, %334
  %337 = phi i32 [ %327, %326 ], [ %335, %334 ]
  %338 = add nuw nsw i64 %328, 1
  %339 = sext i32 %337 to i64
  %340 = icmp slt i64 %338, %339
  br i1 %340, label %326, label %321, !llvm.loop !462

341:                                              ; preds = %323, %360
  %342 = phi i64 [ 0, %323 ], [ %361, %360 ]
  %343 = load ptr, ptr %117, align 8, !tbaa !61
  %344 = getelementptr inbounds %struct.ParticleData, ptr %343, i64 %342
  %345 = getelementptr inbounds %struct.ParticleKey, ptr %344, i64 0, i32 4
  %346 = load float, ptr %345, align 4, !tbaa !219
  %347 = fcmp ogt float %346, 0.000000e+00
  br i1 %347, label %348, label %360

348:                                              ; preds = %341
  call fastcc void @sph_integrate(ptr noundef %0, ptr noundef nonnull %344, float noundef %346, ptr noundef nonnull %5) #21
  %349 = load ptr, ptr %324, align 8, !tbaa !445
  %350 = icmp eq ptr %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load float, ptr %345, align 4, !tbaa !219
  %353 = trunc i64 %342 to i32
  call fastcc void @collision_check(ptr noundef nonnull %0, i32 noundef %353, float noundef %352, float noundef %1) #21
  br label %354

354:                                              ; preds = %351, %348
  %355 = load float, ptr %345, align 4, !tbaa !219
  call fastcc void @basic_rotate(ptr noundef %265, ptr noundef nonnull %344, float noundef %355, float noundef %13) #21
  %356 = load i16, ptr %325, align 4, !tbaa !285
  %357 = and i16 %356, 1
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %354
  call fastcc void @update_courant_num(ptr noundef nonnull %0, ptr noundef nonnull %344, float noundef %14, ptr noundef nonnull %5) #21
  br label %360

360:                                              ; preds = %341, %359, %354
  %361 = add nuw nsw i64 %342, 1
  %362 = load i32, ptr %118, align 8, !tbaa !57
  %363 = sext i32 %362 to i64
  %364 = icmp slt i64 %361, %363
  br i1 %364, label %341, label %365, !llvm.loop !463

365:                                              ; preds = %360, %273, %304, %321, %303
  call void @psys_sph_finalise(ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %5) #23
  %366 = load i32, ptr %118, align 8, !tbaa !57
  br label %367

367:                                              ; preds = %257, %235, %206, %365
  %368 = phi i32 [ %207, %206 ], [ %366, %365 ], [ %236, %235 ], [ %259, %257 ]
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %390

370:                                              ; preds = %367
  %371 = load ptr, ptr %117, align 8, !tbaa !61
  %372 = zext nneg i32 %368 to i64
  br label %373

373:                                              ; preds = %370, %387
  %374 = phi i64 [ 0, %370 ], [ %388, %387 ]
  %375 = getelementptr inbounds %struct.ParticleData, ptr %371, i64 %374, i32 0, i32 4
  %376 = load float, ptr %375, align 4, !tbaa !219
  %377 = fcmp ogt float %376, 0.000000e+00
  br i1 %377, label %378, label %387

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.ParticleData, ptr %371, i64 %374, i32 18
  %380 = load i16, ptr %379, align 2, !tbaa !218
  %381 = icmp eq i16 %380, 4
  br i1 %381, label %382, label %385

382:                                              ; preds = %378
  store i16 1, ptr %379, align 2, !tbaa !218
  %383 = getelementptr inbounds %struct.ParticleData, ptr %371, i64 %374, i32 8
  %384 = load float, ptr %383, align 4, !tbaa !215
  br label %385

385:                                              ; preds = %378, %382
  %386 = phi float [ %384, %382 ], [ %1, %378 ]
  store float %386, ptr %375, align 4, !tbaa !219
  br label %387

387:                                              ; preds = %385, %373
  %388 = add nuw nsw i64 %374, 1
  %389 = icmp eq i64 %388, %372
  br i1 %389, label %390, label %373, !llvm.loop !464

390:                                              ; preds = %387, %214, %209, %367
  %391 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  call void @free_collider_cache(ptr noundef nonnull %391) #22
  call void @BLI_rng_free(ptr noundef %62) #22
  br label %392

392:                                              ; preds = %49, %16, %390
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @update_timestep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !465 {
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %1, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !366
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br label %20

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 49
  %12 = load float, ptr %11, align 8, !tbaa !365
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 58
  %16 = load float, ptr %15, align 8, !tbaa !466
  %17 = fdiv float %16, %5
  %18 = fmul float %12, %17
  %19 = fcmp olt float %18, 0x3F8446F860000000
  br i1 %19, label %26, label %20

20:                                               ; preds = %7, %10
  %21 = phi ptr [ %14, %10 ], [ %9, %7 ]
  %22 = phi float [ %18, %10 ], [ 1.000000e+00, %7 ]
  %23 = tail call fastcc float @get_base_time_step(ptr noundef %21) #21
  %24 = fcmp ogt float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %10, %20, %25
  %27 = phi float [ %23, %25 ], [ %22, %20 ], [ 0x3F8446F860000000, %10 ]
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 49
  %29 = load float, ptr %28, align 8, !tbaa !365
  %30 = fcmp ogt float %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = tail call fastcc float @interpf(float noundef %27, float noundef %29) #21
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi float [ %32, %31 ], [ %27, %26 ]
  store float %34, ptr %28, align 8, !tbaa !365
  %35 = fcmp oeq float %2, 1.000000e+00
  %36 = tail call float @llvm.fmuladd.f32(float %34, float 1.500000e+00, float %2)
  %37 = fcmp ult float %36, 1.000000e+00
  %38 = or i1 %35, %37
  %39 = fsub float 1.000000e+00, %2
  %40 = select i1 %38, float %34, float %39
  ret float %40
}

; Function Attrs: optsize
declare void @BKE_ptcache_free_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_update_effectors(ptr noundef %0) unnamed_addr #2 !PGOFuncName !467 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 42
  tail call void @pdEndEffectors(ptr noundef nonnull %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = load ptr, ptr %2, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !468
  %13 = tail call ptr @pdInitEffectors(ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %12, i8 noundef zeroext 1) #22
  %14 = load ptr, ptr %2, align 8, !tbaa !118
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 42
  store ptr %13, ptr %15, align 8, !tbaa !469
  tail call void @precalc_guides(ptr noundef nonnull %0, ptr noundef %13) #22
  ret void
}

; Function Attrs: optsize
declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @precalc_guides(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_free_children(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_psys_tot_child(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !470 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = tail call fastcc i32 @get_psys_child_number(ptr noundef %0, ptr noundef %1) #21
  %6 = mul nsw i32 %5, %4
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_psys_child_number(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !471 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ParticleSettings, ptr %4, i64 0, i32 19
  %6 = load i16, ptr %5, align 4, !tbaa !48
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %4, i64 0, i32 90
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %4, i64 0, i32 89
  %14 = select i1 %11, ptr %13, ptr %12
  %15 = load i32, ptr %14, align 4, !tbaa !100
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  %17 = tail call i32 @get_render_child_particle_number(ptr noundef nonnull %16, i32 noundef %15) #22
  br label %18

18:                                               ; preds = %2, %8
  %19 = phi i32 [ %17, %8 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @get_render_child_particle_number(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @psys_get_timestep(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_srandom(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_collider_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @boids_precalc_rules(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_update_particle_bvhtree(ptr noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !472 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 1) #22
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 22
  %10 = load float, ptr %9, align 8, !tbaa !473
  %11 = fcmp oeq float %10, %1
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #22
  br i1 %11, label %69, label %13

12:                                               ; preds = %4
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #22
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi ptr [ %31, %20 ], [ %19, %18 ]
  %22 = phi i32 [ %29, %20 ], [ 0, %18 ]
  %23 = phi i32 [ %30, %20 ], [ 0, %18 ]
  %24 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 17
  %25 = load i16, ptr %24, align 4, !tbaa !62
  %26 = and i16 %25, 3
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %22, %28
  %30 = add nuw nsw i32 %23, 1
  %31 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 1
  %32 = icmp eq i32 %30, %16
  br i1 %32, label %33, label %20, !llvm.loop !474

33:                                               ; preds = %20, %13
  %34 = phi i32 [ 0, %13 ], [ %29, %20 ]
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull @psys_bvhtree_rwlock, i32 noundef 2) #22
  %35 = load ptr, ptr %5, align 8, !tbaa !297
  tail call void @BLI_bvhtree_free(ptr noundef %35) #22
  %36 = tail call ptr @BLI_bvhtree_new(i32 noundef %34, float noundef 0.000000e+00, i8 noundef zeroext 4, i8 noundef zeroext 6) #22
  store ptr %36, ptr %5, align 8, !tbaa !297
  %37 = load i32, ptr %15, align 8, !tbaa !57
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load ptr, ptr %14, align 8, !tbaa !61
  br label %41

41:                                               ; preds = %39, %59
  %42 = phi ptr [ %61, %59 ], [ %40, %39 ]
  %43 = phi i32 [ %60, %59 ], [ 0, %39 ]
  %44 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 0, i32 17
  %45 = load i16, ptr %44, align 4, !tbaa !62
  %46 = and i16 %45, 3
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 0, i32 18
  %50 = load i16, ptr %49, align 2, !tbaa !218
  %51 = icmp eq i16 %50, 3
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ParticleKey, ptr %42, i64 0, i32 4
  %54 = load float, ptr %53, align 4, !tbaa !219
  %55 = fcmp oeq float %54, %1
  %56 = load ptr, ptr %5, align 8, !tbaa !297
  %57 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 0, i32 1
  %58 = select i1 %55, ptr %57, ptr %42
  tail call void @BLI_bvhtree_insert(ptr noundef %56, i32 noundef %43, ptr noundef nonnull %58, i32 noundef 1) #22
  br label %59

59:                                               ; preds = %52, %41, %48
  %60 = add nuw nsw i32 %43, 1
  %61 = getelementptr inbounds %struct.ParticleData, ptr %42, i64 1
  %62 = load i32, ptr %15, align 8, !tbaa !57
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %41, label %64, !llvm.loop !475

64:                                               ; preds = %59
  %65 = load ptr, ptr %5, align 8, !tbaa !297
  br label %66

66:                                               ; preds = %64, %33
  %67 = phi ptr [ %65, %64 ], [ %36, %33 ]
  tail call void @BLI_bvhtree_balance(ptr noundef %67) #22
  %68 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 22
  store float %1, ptr %68, align 8, !tbaa !473
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull @psys_bvhtree_rwlock) #22
  br label %69

69:                                               ; preds = %8, %66, %2
  ret void
}

; Function Attrs: optsize
declare void @copy_particle_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @basic_integrate(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !476 {
  %5 = alloca %struct.ParticleKey, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.EfData, align 8
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #23
  %16 = tail call float @psys_get_timestep(ptr noundef %0) #22
  %17 = fmul float %16, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #23
  call void @psys_get_texture(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %7, i32 noundef 3136, float noundef %3) #22
  %18 = getelementptr inbounds %struct.EfData, ptr %7, i64 0, i32 2
  store ptr %15, ptr %18, align 8, !tbaa !477
  %19 = getelementptr inbounds %struct.EfData, ptr %7, i64 0, i32 1
  store ptr %0, ptr %19, align 8, !tbaa !479
  %20 = call i32 @psys_uses_gravity(ptr noundef %0) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !54
  %25 = icmp eq i16 %24, 2
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !468
  br i1 %25, label %28, label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.EffectorWeights, ptr %27, i64 0, i32 3
  %30 = load i16, ptr %29, align 4, !tbaa !480
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %22, %28
  call fastcc void @zero_v3(ptr noundef nonnull %6) #21
  %34 = load ptr, ptr %0, align 8, !tbaa !107
  %35 = getelementptr inbounds %struct.Scene, ptr %34, i64 0, i32 40
  %36 = getelementptr inbounds %struct.EffectorWeights, ptr %27, i64 0, i32 2
  %37 = load float, ptr %36, align 8, !tbaa !482
  %38 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 6
  %39 = load float, ptr %38, align 8, !tbaa !483
  %40 = fmul float %37, %39
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %35, float noundef %40) #21
  br label %41

41:                                               ; preds = %33, %28, %4
  %42 = phi ptr [ %6, %33 ], [ null, %28 ], [ null, %4 ]
  %43 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 3
  %44 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 1
  %45 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 1, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %45) #21
  call fastcc void @integrate_particle(ptr noundef %11, ptr noundef %15, float noundef %17, ptr noundef %42, ptr noundef nonnull @basic_force_cb, ptr noundef nonnull %7) #21
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 87
  %47 = load float, ptr %46, align 4, !tbaa !484
  %48 = fcmp une float %47, 0.000000e+00
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1
  %51 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 5
  %52 = load float, ptr %51, align 4, !tbaa !485
  %53 = fmul float %47, %52
  %54 = fmul float %53, -2.500000e+01
  %55 = call float @llvm.fmuladd.f32(float %54, float %17, float 1.000000e+00)
  call fastcc void @mul_v3_fl(ptr noundef nonnull %50, float noundef %55) #21
  br label %56

56:                                               ; preds = %49, %41
  %57 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 6
  %58 = load float, ptr %57, align 4, !tbaa !146
  %59 = fsub float %3, %58
  %60 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 %14, i32 7
  %61 = load float, ptr %60, align 8, !tbaa !212
  %62 = fdiv float %59, %61
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = fcmp ogt float %62, 1.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %56, %64, %66
  %68 = phi float [ 1.000000e+00, %66 ], [ %62, %64 ], [ 0.000000e+00, %56 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %15) #21
  %69 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1
  %70 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %69, ptr noundef nonnull %70) #21
  %71 = getelementptr inbounds %struct.ParticleKey, ptr %15, i64 0, i32 4
  %72 = load float, ptr %71, align 4, !tbaa !219
  %73 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  store float %72, ptr %73, align 4, !tbaa !274
  %74 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 7
  %75 = load i16, ptr %74, align 8, !tbaa !54
  %76 = icmp eq i16 %75, 2
  br i1 %76, label %86, label %77

77:                                               ; preds = %67
  %78 = load ptr, ptr %8, align 8, !tbaa !118
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %78, i64 0, i32 42
  %80 = load ptr, ptr %79, align 8, !tbaa !469
  %81 = call i32 @do_guides(ptr noundef %80, ptr noundef nonnull %5, i32 noundef %1, float noundef %68) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %5) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %70, ptr noundef nonnull %5, ptr noundef nonnull %44) #21
  %84 = fdiv float 1.000000e+00, %17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %70, float noundef %84) #21
  %85 = load float, ptr %73, align 4, !tbaa !274
  store float %85, ptr %71, align 4, !tbaa !219
  br label %86

86:                                               ; preds = %77, %83, %67
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collision_check(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !486 {
  %5 = alloca %struct.ParticleCollision, align 8
  %6 = alloca %struct.BVHTreeRayHit, align 4
  %7 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 %13
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #23
  %15 = tail call float @psys_get_timestep(ptr noundef %0) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %5, i8 0, i64 328, i1 false)
  %16 = fmul float %15, %2
  %17 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 14
  store float %16, ptr %17, align 8, !tbaa !487
  %18 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 15
  %19 = insertelement <2 x float> poison, float %16, i64 0
  %20 = insertelement <2 x float> %19, float %15, i64 1
  %21 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %20
  store <2 x float> %21, ptr %18, align 4, !tbaa !110
  %22 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 9
  store float %3, ptr %22, align 4, !tbaa !488
  %23 = load ptr, ptr %7, align 8, !tbaa !118
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %23, i64 0, i32 20
  %25 = load float, ptr %24, align 8, !tbaa !181
  %26 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 10
  store float %25, ptr %26, align 8, !tbaa !489
  %27 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 22
  %28 = getelementptr inbounds %struct.ParticleKey, ptr %14, i64 0, i32 1
  %29 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 %13, i32 1
  %30 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 %13, i32 1, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %30) #21
  %31 = load float, ptr %17, align 8, !tbaa !487
  %32 = fdiv float 1.000000e+00, %31
  call fastcc void @mul_v3_fl(ptr noundef nonnull %27, float noundef %32) #21
  %33 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %29) #21
  %34 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef %14) #21
  %35 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %30) #21
  %36 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %28) #21
  %37 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 6
  store float 0.000000e+00, ptr %37, align 8, !tbaa !422
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !276
  %40 = and i32 %39, 8192
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 11
  %43 = load i16, ptr %42, align 8, !tbaa !56
  %44 = icmp eq i16 %43, 3
  br i1 %41, label %45, label %52

45:                                               ; preds = %4
  br i1 %44, label %46, label %50

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 %13, i32 13
  %48 = load float, ptr %47, align 4, !tbaa !259
  %49 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 17
  store float %48, ptr %49, align 4, !tbaa !490
  br label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 17
  store float 0x3F50624DE0000000, ptr %51, align 4, !tbaa !490
  br label %71

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 %13, i32 13
  %54 = load float, ptr %53, align 4, !tbaa !259
  %55 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 17
  store float %54, ptr %55, align 4, !tbaa !490
  br i1 %44, label %56, label %71

56:                                               ; preds = %46, %52
  %57 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !201
  %59 = load i32, ptr %58, align 8, !tbaa !491
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 24
  store i32 1, ptr %63, align 8, !tbaa !492
  %64 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %65 = load float, ptr %64, align 8, !tbaa !110
  %66 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 23
  store float %65, ptr %66, align 4, !tbaa !493
  %67 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 %13, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !148
  %69 = load ptr, ptr %68, align 8, !tbaa !494
  %70 = getelementptr inbounds %struct.ParticleCollision, ptr %5, i64 0, i32 3
  store ptr %69, ptr %70, align 8, !tbaa !495
  br label %71

71:                                               ; preds = %50, %62, %56, %52
  %72 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  br label %73

73:                                               ; preds = %82, %71
  %74 = phi i32 [ 0, %71 ], [ %79, %82 ]
  %75 = load ptr, ptr %72, align 8, !tbaa !445
  %76 = call fastcc i32 @collision_detect(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %75) #21, !range !323
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = add nuw nsw i32 %74, 1
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call fastcc void @collision_fail(ptr noundef %14, ptr noundef nonnull %5) #21
  br label %88, !llvm.loop !496

82:                                               ; preds = %78
  %83 = load i32, ptr %38, align 8, !tbaa !276
  %84 = and i32 %83, 4096
  %85 = and i32 %83, 16384
  %86 = call fastcc i32 @collision_response(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %84, i32 noundef %85) #21, !range !323
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %73, !llvm.loop !496

88:                                               ; preds = %73, %82, %81
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @basic_rotate(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !497 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.basic_rotate.rot2, i64 16, i1 false)
  %8 = fmul float %2, %3
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !276
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 2
  tail call void @unit_qt(ptr noundef nonnull %14) #22
  br label %67

15:                                               ; preds = %4
  %16 = and i32 %10, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  %20 = tail call fastcc float @len_v3(ptr noundef nonnull %19) #21
  %21 = fcmp oeq float %20, 0.000000e+00
  %22 = load i32, ptr %9, align 8, !tbaa !276
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 13
  %27 = load i16, ptr %26, align 4, !tbaa !155
  switch i16 %27, label %50 [
    i16 1, label %28
    i16 3, label %28
    i16 4, label %28
  ]

28:                                               ; preds = %25, %25, %25
  %29 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %30 = tail call fastcc float @len_v3(ptr noundef nonnull %29) #21
  %31 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %32 = tail call fastcc float @len_v3(ptr noundef nonnull %31) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %33 = fcmp oeq float %30, 0.000000e+00
  %34 = fcmp oeq float %32, 0.000000e+00
  %35 = select i1 %33, i1 true, i1 %34
  %36 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  br i1 %35, label %37, label %38

37:                                               ; preds = %28
  tail call fastcc void @zero_v3(ptr noundef nonnull %36) #21
  br label %45

38:                                               ; preds = %28
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %36, ptr noundef nonnull %29, ptr noundef nonnull %31) #21
  %39 = tail call fastcc float @normalize_v3(ptr noundef nonnull %36) #21
  %40 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %29, ptr noundef nonnull %31) #21
  %41 = fmul float %30, %32
  %42 = fdiv float %40, %41
  %43 = tail call fastcc float @saacos(float noundef %42) #21
  %44 = fdiv float %43, %8
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %36, float noundef %44) #21
  br label %45

45:                                               ; preds = %38, %37
  %46 = load i16, ptr %26, align 4, !tbaa !155
  call fastcc void @get_angular_velocity_vector(i16 noundef signext %46, ptr noundef %1, ptr noundef nonnull %7) #21
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 77
  %48 = load float, ptr %47, align 4, !tbaa !164
  %49 = fmul float %8, %48
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %49) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  br label %50

50:                                               ; preds = %15, %25, %45, %18
  %51 = phi i1 [ %21, %25 ], [ %21, %45 ], [ %21, %18 ], [ true, %15 ]
  %52 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  %53 = call fastcc float @len_v3(ptr noundef nonnull %52) #21
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr %9, align 8, !tbaa !276
  %57 = and i32 %56, 16384
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i1 true, i1 %51
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50
  call void @unit_qt(ptr noundef nonnull %5) #22
  br label %63

61:                                               ; preds = %55
  %62 = fmul float %8, %53
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %52, float noundef %62) #22
  br label %63

63:                                               ; preds = %61, %60
  %64 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 2
  %65 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %64, ptr noundef nonnull %5, ptr noundef nonnull %65) #22
  call void @mul_qt_qtqt(ptr noundef nonnull %64, ptr noundef nonnull %6, ptr noundef nonnull %64) #22
  %66 = call float @normalize_qt(ptr noundef nonnull %64) #22
  br label %67

67:                                               ; preds = %63, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  ret void
}

; Function Attrs: optsize
declare void @boid_brain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @boid_body(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sph_integrate(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !498 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 81
  %11 = load float, ptr %10, align 4, !tbaa !275
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !276
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %18 = load float, ptr %17, align 4, !tbaa !259
  br label %19

19:                                               ; preds = %4, %16
  %20 = phi float [ %18, %16 ], [ 1.000000e+00, %4 ]
  %21 = fmul float %11, %20
  %22 = tail call float @psys_get_timestep(ptr noundef nonnull %0) #22
  %23 = fmul float %22, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %24 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 1
  store ptr %1, ptr %24, align 8, !tbaa !245
  %25 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 2
  store float %21, ptr %25, align 8, !tbaa !246
  %26 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 6
  store i32 0, ptr %26, align 4, !tbaa !284
  %27 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %27, ptr noundef nonnull %29) #21
  %30 = fdiv float 1.000000e+00, %23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %30) #21
  tail call void @copy_particle_key(ptr noundef %1, ptr noundef nonnull %28, i32 noundef 0) #22
  %31 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !499
  call fastcc void @integrate_particle(ptr noundef nonnull %9, ptr noundef %1, float noundef %23, ptr noundef nonnull %5, ptr noundef %32, ptr noundef %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @update_courant_num(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #8 !PGOFuncName !500 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %8 = call fastcc float @len_v3(ptr noundef nonnull %5) #21
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !366
  %11 = fmul float %8, %2
  %12 = getelementptr inbounds %struct.SPHData, ptr %3, i64 0, i32 7
  %13 = load float, ptr %12, align 8, !tbaa !412
  %14 = fdiv float %11, %13
  %15 = fcmp olt float %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store float %14, ptr %9, align 8, !tbaa !366
  br label %17

17:                                               ; preds = %16, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sph_springs_modify(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !501 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  %10 = getelementptr inbounds %struct.SPHFluidSettings, ptr %7, i64 0, i32 4
  %11 = load float, ptr %10, align 4, !tbaa !433
  %12 = getelementptr inbounds %struct.SPHFluidSettings, ptr %7, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !502
  %14 = fmul float %1, 2.500000e+01
  %15 = getelementptr inbounds %struct.SPHFluidSettings, ptr %7, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !256
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %89, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.SPHFluidSettings, ptr %7, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !257
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %89, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %29 = fmul float %14, %11
  %30 = fneg float %13
  br label %35

31:                                               ; preds = %73
  %32 = icmp sgt i32 %76, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %31
  %34 = zext nneg i32 %76 to i64
  br label %78

35:                                               ; preds = %27, %73
  %36 = phi ptr [ %9, %27 ], [ %75, %73 ]
  %37 = phi i32 [ 0, %27 ], [ %74, %73 ]
  %38 = load ptr, ptr %28, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.ParticleSpring, ptr %36, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !100
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ParticleSpring, ptr %36, i64 0, i32 1, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !100
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 %44, i32 1
  %46 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 %41, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %45, ptr noundef nonnull %46) #21
  %47 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #21
  %48 = load float, ptr %36, align 4, !tbaa !277
  %49 = fmul float %29, %48
  %50 = fadd float %48, %49
  %51 = fcmp ogt float %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = fsub float %47, %48
  %54 = fsub float %53, %49
  %55 = fmul float %13, %54
  br label %62

56:                                               ; preds = %35
  %57 = fsub float %48, %49
  %58 = fcmp olt float %47, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = fsub float %57, %47
  %61 = fmul float %60, %30
  br label %62

62:                                               ; preds = %52, %59
  %63 = phi float [ %55, %52 ], [ %61, %59 ]
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %14, float %48)
  store float %64, ptr %36, align 4, !tbaa !277
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi float [ %48, %56 ], [ %64, %62 ]
  %67 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 %41, i32 13
  %68 = load float, ptr %67, align 4, !tbaa !259
  %69 = fmul float %68, 4.000000e+00
  %70 = fcmp ogt float %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ParticleSpring, ptr %36, i64 0, i32 2
  store i32 1, ptr %72, align 4, !tbaa !281
  br label %73

73:                                               ; preds = %65, %71
  %74 = add nuw nsw i32 %37, 1
  %75 = getelementptr inbounds %struct.ParticleSpring, ptr %36, i64 1
  %76 = load i32, ptr %24, align 8, !tbaa !72
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %35, label %31, !llvm.loop !503

78:                                               ; preds = %33, %87
  %79 = phi i64 [ %34, %33 ], [ %80, %87 ]
  %80 = add nsw i64 %79, -1
  %81 = load ptr, ptr %8, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.ParticleSpring, ptr %81, i64 %80, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !281
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = trunc i64 %80 to i32
  tail call fastcc void @sph_spring_delete(ptr noundef nonnull %0, i32 noundef %86) #21
  br label %87

87:                                               ; preds = %78, %85
  %88 = icmp ugt i64 %79, 1
  br i1 %88, label %78, label %89, !llvm.loop !504

89:                                               ; preds = %87, %23, %31, %2, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sphclassical_calc_dens(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !505 {
  %3 = alloca %struct.SPHRangeData, align 8
  %4 = alloca [2 x float], align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !247
  %10 = load float, ptr %9, align 4, !tbaa !258
  %11 = getelementptr inbounds %struct.SPHFluidSettings, ptr %9, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !256
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 82
  %17 = load float, ptr %16, align 8, !tbaa !294
  %18 = fmul float %17, 4.000000e+00
  br label %19

19:                                               ; preds = %2, %15
  %20 = phi float [ %18, %15 ], [ 1.000000e+00, %2 ]
  %21 = fmul float %10, %20
  call void @llvm.lifetime.start.p0(i64 8240, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 2
  store ptr %4, ptr %22, align 8, !tbaa !265
  %23 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 5
  %24 = load float, ptr %23, align 8, !tbaa !260
  %25 = fmul float %21, %24
  %26 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 5
  store float %25, ptr %26, align 8, !tbaa !267
  %27 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 4
  store ptr %0, ptr %27, align 8, !tbaa !268
  %28 = getelementptr inbounds %struct.SPHData, ptr %1, i64 0, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !246
  %30 = getelementptr inbounds %struct.SPHRangeData, ptr %3, i64 0, i32 6
  store float %29, ptr %30, align 4, !tbaa !269
  call fastcc void @sph_evaluate_func(ptr noundef null, ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %3, float noundef %21, ptr noundef nonnull @sphclassical_density_accum_cb) #21
  %31 = load float, ptr %4, align 8, !tbaa !110
  %32 = getelementptr inbounds %struct.SPHFluidSettings, ptr %9, i64 0, i32 11
  %33 = load float, ptr %32, align 4, !tbaa !261
  %34 = fmul float %33, 0x3FECCCCCC0000000
  %35 = fcmp ogt float %31, %34
  %36 = select i1 %35, float %31, float %34
  %37 = fmul float %33, 0x3FF19999A0000000
  %38 = fcmp olt float %36, %37
  %39 = select i1 %38, float %36, float %37
  %40 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 14
  store float %39, ptr %40, align 8, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8240, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @free_collider_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @integrate_particle(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #2 !PGOFuncName !506 {
  %7 = alloca [5 x %struct.ParticleKey], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [3 x float]], align 16
  %12 = alloca [4 x [3 x float]], align 16
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #23
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !276
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 81
  %19 = load float, ptr %18, align 4, !tbaa !275
  br i1 %17, label %24, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %22 = load float, ptr %21, align 4, !tbaa !259
  %23 = fmul float %19, %22
  br label %24

24:                                               ; preds = %6, %20
  %25 = phi float [ %23, %20 ], [ %19, %6 ]
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 33
  %27 = load i16, ptr %26, align 8, !tbaa !507
  %28 = sext i16 %27 to i32
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %1) #21
  %29 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 4
  %30 = load float, ptr %29, align 4, !tbaa !280
  %31 = fcmp olt float %30, 0.000000e+00
  %32 = icmp eq i16 %27, 3
  %33 = select i1 %31, i1 %32, i1 false
  %34 = select i1 %33, i32 0, i32 %28
  %35 = icmp eq i32 %34, 1
  %36 = select i1 %35, i64 2, i64 1
  %37 = icmp eq i32 %34, 2
  %38 = select i1 %37, i64 4, i64 %36
  br label %39

39:                                               ; preds = %24, %39
  %40 = phi i64 [ 0, %24 ], [ %42, %39 ]
  %41 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 %40
  call void @copy_particle_key(ptr noundef nonnull %41, ptr noundef %1, i32 noundef 1) #22
  %42 = add nuw nsw i64 %40, 1
  %43 = icmp eq i64 %42, %38
  br i1 %43, label %44, label %39, !llvm.loop !508

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1
  %46 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 4
  store float 0.000000e+00, ptr %46, align 4, !tbaa !274
  %47 = fdiv float 1.000000e+00, %25
  %48 = icmp eq ptr %3, null
  %49 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %50 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %51 = fdiv float 1.000000e+00, %2
  %52 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3
  %53 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %54 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 2
  %55 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 3
  %56 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1
  %57 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2
  %58 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 1
  %59 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3
  %60 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 1
  %61 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 3, i32 4
  %62 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2
  %63 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1
  %64 = fmul float %2, 5.000000e-01
  %65 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 4
  %66 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1
  %67 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1
  %68 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 4
  br label %69

69:                                               ; preds = %44, %87
  %70 = phi i64 [ 0, %44 ], [ %88, %87 ]
  call fastcc void @zero_v3(ptr noundef nonnull %8) #21
  call fastcc void @zero_v3(ptr noundef nonnull %10) #21
  %71 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 %70
  call void %4(ptr noundef %5, ptr noundef nonnull %71, ptr noundef nonnull %8, ptr noundef nonnull %10) #22
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %8, float noundef %47) #21
  br i1 %48, label %73, label %72

72:                                               ; preds = %69
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %3) #21
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds [5 x %struct.ParticleKey], ptr %7, i64 0, i64 %70, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %74, ptr noundef nonnull %10) #21
  switch i32 %34, label %87 [
    i32 0, label %75
    i32 1, label %76
    i32 2, label %80
    i32 3, label %86
  ]

75:                                               ; preds = %73
  call fastcc void @madd_v3_v3v3fl(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %53, float noundef %2) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %49, ptr noundef nonnull %53, ptr noundef nonnull %9, float noundef %2) #21
  br label %87

76:                                               ; preds = %73
  %77 = icmp eq i64 %70, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %66, ptr noundef nonnull %7, ptr noundef nonnull %53, float noundef %64) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %67, ptr noundef nonnull %53, ptr noundef nonnull %9, float noundef %64) #21
  store float %64, ptr %68, align 4, !tbaa !274
  br label %87

79:                                               ; preds = %76
  call fastcc void @madd_v3_v3v3fl(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %67, float noundef %2) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %49, ptr noundef nonnull %53, ptr noundef nonnull %9, float noundef %2) #21
  br label %87

80:                                               ; preds = %73
  %81 = trunc i64 %70 to i32
  switch i32 %81, label %87 [
    i32 0, label %82
    i32 1, label %83
    i32 2, label %84
    i32 3, label %85
  ]

82:                                               ; preds = %80
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %53) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef %2) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %9) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %2) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %66, ptr noundef nonnull %7, ptr noundef nonnull %11, float noundef 5.000000e-01) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %67, ptr noundef nonnull %53, ptr noundef nonnull %12, float noundef 5.000000e-01) #21
  store float %64, ptr %68, align 4, !tbaa !274
  br label %87

83:                                               ; preds = %80
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %56, ptr noundef nonnull %53, ptr noundef nonnull %12, float noundef 5.000000e-01) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %56, float noundef %2) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %58, ptr noundef nonnull %9) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %58, float noundef %2) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %62, ptr noundef nonnull %7, ptr noundef nonnull %56, float noundef 5.000000e-01) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %63, ptr noundef nonnull %53, ptr noundef nonnull %58, float noundef 5.000000e-01) #21
  store float %64, ptr %65, align 4, !tbaa !274
  br label %87

84:                                               ; preds = %80
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %57, ptr noundef nonnull %53, ptr noundef nonnull %58, float noundef 5.000000e-01) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %57, float noundef %2) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %54, ptr noundef nonnull %9) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %54, float noundef %2) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %59, ptr noundef nonnull %7, ptr noundef nonnull %57) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %60, ptr noundef nonnull %53, ptr noundef nonnull %54) #21
  store float %2, ptr %61, align 4, !tbaa !274
  br label %87

85:                                               ; preds = %80
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %52, float noundef %2) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %55, ptr noundef nonnull %9) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %55, float noundef %2) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %11, float noundef 0x3FC5555560000000) #21
  call fastcc void @madd_v3_v3fl(ptr noundef %1, ptr noundef nonnull %56, float noundef 0x3FD5555560000000) #21
  call fastcc void @madd_v3_v3fl(ptr noundef %1, ptr noundef nonnull %57, float noundef 0x3FD5555560000000) #21
  call fastcc void @madd_v3_v3fl(ptr noundef %1, ptr noundef nonnull %52, float noundef 0x3FC5555560000000) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %49, ptr noundef nonnull %53, ptr noundef nonnull %12, float noundef 0x3FC5555560000000) #21
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef nonnull %58, float noundef 0x3FD5555560000000) #21
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef nonnull %54, float noundef 0x3FD5555560000000) #21
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef nonnull %55, float noundef 0x3FC5555560000000) #21
  br label %87

86:                                               ; preds = %73
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef nonnull %9, float noundef %2) #21
  call fastcc void @madd_v3_v3v3fl(ptr noundef %1, ptr noundef nonnull %45, ptr noundef nonnull %49, float noundef %2) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %49, ptr noundef %1, ptr noundef nonnull %13) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %49, float noundef %51) #21
  br label %87

87:                                               ; preds = %75, %86, %73, %79, %78, %85, %80, %84, %83, %82
  %88 = add nuw nsw i64 %70, 1
  %89 = icmp eq i64 %88, %38
  br i1 %89, label %90, label %69, !llvm.loop !509

90:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @basic_force_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 !PGOFuncName !510 {
  %5 = alloca %struct.EffectedPoint, align 8
  %6 = getelementptr inbounds %struct.EfData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !479
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.EfData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !477
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #23
  call void @pd_point_from_particle(ptr noundef %7, ptr noundef %13, ptr noundef %1, ptr noundef nonnull %5) #22
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 7
  %15 = load i16, ptr %14, align 8, !tbaa !54
  %16 = icmp eq i16 %15, 2
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !468
  br i1 %16, label %19, label %24

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.EffectorWeights, ptr %18, i64 0, i32 3
  %21 = load i16, ptr %20, align 4, !tbaa !480
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4, %19
  %25 = load ptr, ptr %8, align 8, !tbaa !118
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 42
  %27 = load ptr, ptr %26, align 8, !tbaa !469
  %28 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !445
  call void @pdDoEffectors(ptr noundef %27, ptr noundef %29, ptr noundef %18, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #22
  br label %30

30:                                               ; preds = %24, %19
  %31 = getelementptr inbounds %struct.ParticleTexture, ptr %0, i64 0, i32 7
  %32 = load float, ptr %31, align 4, !tbaa !511
  call fastcc void @mul_v3_fl(ptr noundef %2, float noundef %32) #21
  %33 = load float, ptr %31, align 4, !tbaa !511
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %33) #21
  %34 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 85
  %35 = load float, ptr %34, align 4, !tbaa !512
  %36 = fcmp une float %35, 0.000000e+00
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %39 = fneg float %35
  %40 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 13
  %41 = load float, ptr %40, align 4, !tbaa !259
  %42 = fmul float %41, %39
  %43 = fmul float %41, %42
  %44 = call fastcc float @len_v3(ptr noundef nonnull %38) #21
  %45 = fmul float %44, %43
  call fastcc void @madd_v3_v3fl(ptr noundef %2, ptr noundef nonnull %38, float noundef %45) #21
  br label %46

46:                                               ; preds = %37, %30
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 86
  %48 = load float, ptr %47, align 8, !tbaa !513
  %49 = fcmp une float %48, 0.000000e+00
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = call float @BLI_frand() #22
  %52 = fadd float %51, -5.000000e-01
  %53 = load float, ptr %47, align 8, !tbaa !513
  %54 = load float, ptr %2, align 4, !tbaa !110
  %55 = call float @llvm.fmuladd.f32(float %52, float %53, float %54)
  store float %55, ptr %2, align 4, !tbaa !110
  %56 = call float @BLI_frand() #22
  %57 = fadd float %56, -5.000000e-01
  %58 = load float, ptr %47, align 8, !tbaa !513
  %59 = getelementptr inbounds float, ptr %2, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !110
  %61 = call float @llvm.fmuladd.f32(float %57, float %58, float %60)
  store float %61, ptr %59, align 4, !tbaa !110
  %62 = call float @BLI_frand() #22
  %63 = fadd float %62, -5.000000e-01
  %64 = load float, ptr %47, align 8, !tbaa !513
  %65 = getelementptr inbounds float, ptr %2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !110
  %67 = call float @llvm.fmuladd.f32(float %63, float %64, float %66)
  store float %67, ptr %65, align 4, !tbaa !110
  br label %68

68:                                               ; preds = %50, %46
  %69 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !276
  %71 = and i32 %70, 16384
  %72 = icmp ne i32 %71, 0
  %73 = getelementptr inbounds %struct.EffectedPoint, ptr %5, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = icmp ne ptr %74, null
  %76 = select i1 %72, i1 %75, i1 false
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.ParticleKey, ptr %13, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %78, ptr noundef nonnull %74) #21
  br label %79

79:                                               ; preds = %77, %68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #23
  ret void
}

; Function Attrs: optsize
declare i32 @do_guides(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !514 {
  %4 = load float, ptr %1, align 4, !tbaa !110
  %5 = load float, ptr %2, align 4, !tbaa !110
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !110
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !110
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !110
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !110
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !110
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !110
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare void @pd_point_from_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @collision_detect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 !PGOFuncName !515 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %6 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %3) #21, !range !235
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %74

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 19
  %10 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  store i32 -1, ptr %2, align 4, !tbaa !325
  %11 = call fastcc float @len_v3(ptr noundef nonnull %5) #21
  %12 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 11
  store float %11, ptr %12, align 4, !tbaa !308
  %13 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %2, i64 0, i32 3
  store float %11, ptr %13, align 4, !tbaa !306
  %14 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 13, i32 12
  store i16 0, ptr %14, align 2, !tbaa !324
  %15 = fcmp oeq float %11, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store float 0x3EB0C6F7A0000000, ptr %12, align 4, !tbaa !308
  store float 0x3EB0C6F7A0000000, ptr %13, align 4, !tbaa !306
  br label %17

17:                                               ; preds = %16, %8
  %18 = load ptr, ptr %3, align 8, !tbaa !68
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 3
  %22 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 4
  %23 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 6
  %24 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 9
  %25 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 10
  %26 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 5
  %27 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 7
  %28 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 17
  br label %29

29:                                               ; preds = %20, %67
  %30 = phi ptr [ %18, %20 ], [ %68, %67 ]
  %31 = getelementptr inbounds %struct.ColliderCache, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !516
  %33 = load ptr, ptr %21, align 8, !tbaa !495
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %67, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %22, align 8, !tbaa !518
  %37 = icmp eq ptr %32, %36
  %38 = load float, ptr %24, align 4, !tbaa !488
  br i1 %37, label %41, label %39

39:                                               ; preds = %35
  %40 = load float, ptr %25, align 8, !tbaa !489
  br label %47

41:                                               ; preds = %35
  %42 = load float, ptr %23, align 4, !tbaa !146
  %43 = fcmp uge float %42, %38
  %44 = load float, ptr %25, align 8, !tbaa !489
  %45 = fcmp ult float %42, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %39, %41
  %48 = phi float [ %40, %39 ], [ %44, %41 ]
  store ptr %32, ptr %1, align 8, !tbaa !318
  %49 = getelementptr inbounds %struct.ColliderCache, ptr %30, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !519
  store ptr %50, ptr %26, align 8, !tbaa !299
  %51 = getelementptr inbounds %struct.CollisionModifierData, ptr %50, i64 0, i32 10
  %52 = load <2 x float>, ptr %51, align 8, !tbaa !110
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %54 = fsub <2 x float> %53, %52
  %55 = insertelement <2 x float> poison, float %48, i64 0
  %56 = insertelement <2 x float> %55, float %38, i64 1
  %57 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %58 = fsub <2 x float> %56, %57
  %59 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %60 = fdiv <2 x float> %58, %59
  store <2 x float> %60, ptr %27, align 4, !tbaa !110
  %61 = getelementptr inbounds %struct.CollisionModifierData, ptr %50, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !520
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %47
  %65 = load float, ptr %28, align 4, !tbaa !490
  %66 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %62, ptr noundef nonnull %10, ptr noundef nonnull %5, float noundef %65, ptr noundef nonnull %2, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %1) #22
  br label %67

67:                                               ; preds = %41, %47, %64, %29
  %68 = load ptr, ptr %30, align 8, !tbaa !68
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %29, !llvm.loop !521

70:                                               ; preds = %67, %17
  %71 = load i32, ptr %2, align 4, !tbaa !325
  %72 = icmp sgt i32 %71, -1
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %4, %70
  %75 = phi i32 [ %73, %70 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret i32 %75
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @collision_fail(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !PGOFuncName !522 {
  %3 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 18
  %4 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 13
  tail call fastcc void @collision_point_on_surface(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 13, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %7 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 16
  %8 = load float, ptr %7, align 8, !tbaa !523
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @collision_response(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !PGOFuncName !524 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 13
  %16 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !317
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 110
  %19 = load ptr, ptr %18, align 8, !tbaa !525
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %20 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %2, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !306
  %22 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 11
  %23 = load float, ptr %22, align 4, !tbaa !308
  %24 = fdiv float %21, %23
  %25 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 6
  %26 = load float, ptr %25, align 8, !tbaa !422
  %27 = fsub float 1.000000e+00, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %27, float %26)
  %29 = fsub float %28, %26
  %30 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 14
  %31 = load float, ptr %30, align 8, !tbaa !487
  %32 = fmul float %31, %29
  %33 = fsub float 1.000000e+00, %28
  %34 = fmul float %31, %33
  %35 = tail call float @BLI_frand() #22
  %36 = getelementptr inbounds %struct.PartDeflect, ptr %19, i64 0, i32 21
  %37 = load float, ptr %36, align 4, !tbaa !526
  %38 = fcmp uge float %35, %37
  %39 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 18
  %40 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 19
  call void @interp_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %39, ptr noundef nonnull %40, float noundef %24) #22
  br i1 %38, label %41, label %62

41:                                               ; preds = %5
  %42 = icmp eq i32 %3, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load i32, ptr %19, align 8, !tbaa !528
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %43, %41
  %48 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 18
  store i16 4, ptr %48, align 2, !tbaa !218
  %49 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 10
  %50 = load float, ptr %49, align 8, !tbaa !489
  %51 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 9
  %52 = load float, ptr %51, align 4, !tbaa !488
  %53 = fsub float %52, %50
  %54 = call float @llvm.fmuladd.f32(float %53, float %28, float %50)
  %55 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 8
  store float %54, ptr %55, align 4, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %6) #21
  %56 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  %57 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 1, i32 1
  call void @interp_v3_v3v3(ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %56, float noundef %28) #22
  %58 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 2
  %59 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 1, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %58, ptr noundef nonnull %59, ptr noundef nonnull %58, float noundef %28) #22
  %60 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 3
  %61 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 1, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %60, ptr noundef nonnull %61, ptr noundef nonnull %60, float noundef %28) #22
  br label %209

62:                                               ; preds = %43, %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  %63 = getelementptr inbounds %struct.PartDeflect, ptr %19, i64 0, i32 19
  %64 = load float, ptr %63, align 4, !tbaa !529
  %65 = getelementptr inbounds %struct.PartDeflect, ptr %19, i64 0, i32 20
  %66 = load float, ptr %65, align 8, !tbaa !530
  %67 = fmul float %66, 2.000000e+00
  %68 = call float @BLI_frand() #22
  %69 = fadd float %68, -5.000000e-01
  %70 = call float @llvm.fmuladd.f32(float %67, float %69, float %64)
  %71 = getelementptr inbounds %struct.PartDeflect, ptr %19, i64 0, i32 22
  %72 = load float, ptr %71, align 8, !tbaa !531
  %73 = getelementptr inbounds %struct.PartDeflect, ptr %19, i64 0, i32 23
  %74 = load float, ptr %73, align 4, !tbaa !532
  %75 = fmul float %74, 2.000000e+00
  %76 = call float @BLI_frand() #22
  %77 = fadd float %76, -5.000000e-01
  %78 = call float @llvm.fmuladd.f32(float %75, float %77, float %72)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  %79 = fcmp olt float %70, 0.000000e+00
  br i1 %79, label %83, label %80

80:                                               ; preds = %62
  %81 = fcmp ogt float %70, 1.000000e+00
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %62, %80, %82
  %84 = phi float [ 1.000000e+00, %82 ], [ %70, %80 ], [ 0.000000e+00, %62 ]
  %85 = fcmp olt float %78, 0.000000e+00
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = fcmp ogt float %78, 1.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %83, %86, %88
  %90 = phi float [ 1.000000e+00, %88 ], [ %78, %86 ], [ 0.000000e+00, %83 ]
  %91 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 20
  %92 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 22
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %7, ptr noundef nonnull %91, ptr noundef nonnull %92, float noundef %32) #21
  %93 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 13, i32 7
  %94 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 16
  %95 = load float, ptr %94, align 8, !tbaa !523
  call fastcc void @mul_v3_fl(ptr noundef nonnull %93, float noundef %95) #21
  %96 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 13, i32 6
  %97 = call fastcc float @dot_v3v3(ptr noundef nonnull %96, ptr noundef nonnull %7) #21
  %98 = fneg float %97
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %96, float noundef %98) #21
  %99 = call fastcc float @dot_v3v3(ptr noundef nonnull %96, ptr noundef nonnull %93) #21
  %100 = fneg float %99
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %10, ptr noundef nonnull %93, ptr noundef nonnull %96, float noundef %100) #21
  %101 = fcmp ogt float %90, 0.000000e+00
  br i1 %101, label %102, label %113

102:                                              ; preds = %89
  %103 = icmp eq i32 %4, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #23
  %105 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 3
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %96, ptr noundef nonnull %105) #21
  %106 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 13
  %107 = load float, ptr %106, align 4, !tbaa !259
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %107) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %13, ptr noundef nonnull %12, float noundef 0xBFD99999A0000000) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef 0x3FE6DB6DC0000000) #21
  %108 = call float @llvm.fmuladd.f32(float %90, float 0xBF847AE140000000, float 1.000000e+00)
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef %108) #21
  call fastcc void @negate_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %10) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %96) #21
  %109 = fcmp ogt float %107, 0x3F50624DE0000000
  %110 = select i1 %109, float %107, float 0x3F50624DE0000000
  %111 = fdiv float 1.000000e+00, %110
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %111) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %105, ptr noundef nonnull %105, ptr noundef nonnull %14, float noundef %90) #22
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %13, float noundef %90) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #23
  br label %113

112:                                              ; preds = %102
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %90) #22
  br label %113

113:                                              ; preds = %104, %112, %89
  %114 = fcmp olt float %97, 0.000000e+00
  br i1 %114, label %115, label %121

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.PartDeflect, ptr %19, i64 0, i32 24
  %117 = load float, ptr %116, align 8, !tbaa !533
  %118 = fadd float %97, %117
  %119 = fcmp ogt float %118, 0.000000e+00
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %115, %120, %113
  %122 = phi float [ 0.000000e+00, %120 ], [ %118, %115 ], [ %97, %113 ]
  %123 = fsub float 1.000000e+00, %84
  %124 = fmul float %123, %122
  %125 = select i1 %38, float 1.000000e+00, float %84
  %126 = fmul float %125, %99
  br i1 %38, label %127, label %139

127:                                              ; preds = %121
  %128 = fcmp ogt float %126, 0.000000e+00
  %129 = fcmp ogt float %124, 0.000000e+00
  %130 = select i1 %128, i1 %129, i1 false
  %131 = fcmp ogt float %126, %124
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %147, label %133

133:                                              ; preds = %127
  %134 = fcmp olt float %126, 0.000000e+00
  %135 = fcmp olt float %124, 0.000000e+00
  %136 = select i1 %134, i1 %135, i1 false
  %137 = fcmp olt float %126, %124
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %147, label %139

139:                                              ; preds = %133, %121
  %140 = fcmp ogt float %124, 0.000000e+00
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = select i1 %38, float 1.000000e+00, float -1.000000e+00
  %143 = call float @llvm.fmuladd.f32(float %142, float %124, float %126)
  br label %147

144:                                              ; preds = %139
  %145 = select i1 %38, float -1.000000e+00, float 1.000000e+00
  %146 = call float @llvm.fmuladd.f32(float %145, float %124, float %126)
  br label %147

147:                                              ; preds = %127, %133, %141, %144
  %148 = phi float [ %143, %141 ], [ %146, %144 ], [ %126, %133 ], [ %126, %127 ]
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %96, float noundef %148) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #21
  %149 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 24
  %150 = load i32, ptr %149, align 8, !tbaa !492
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !148
  %155 = getelementptr inbounds %struct.BoidParticle, ptr %154, i64 0, i32 1, i32 3
  %156 = load i16, ptr %155, align 2, !tbaa !207
  %157 = icmp eq i16 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 23
  %160 = load float, ptr %159, align 4, !tbaa !493
  br label %167

161:                                              ; preds = %152
  %162 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !110
  %164 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 23
  %165 = load float, ptr %164, align 4, !tbaa !493
  %166 = fcmp ugt float %163, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %158, %161
  %168 = phi float [ %160, %158 ], [ %165, %161 ]
  %169 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %168, ptr %169, align 4, !tbaa !110
  %170 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %170, align 4, !tbaa !110
  br label %171

171:                                              ; preds = %161, %167, %147
  call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %34) #21
  %172 = fmul float %34, 5.000000e-01
  %173 = fmul float %34, %172
  call fastcc void @madd_v3_v3fl(ptr noundef %0, ptr noundef nonnull %92, float noundef %173) #21
  %174 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %174, ptr noundef nonnull %7, ptr noundef nonnull %92, float noundef %34) #21
  br i1 %38, label %175, label %200

175:                                              ; preds = %171
  %176 = call fastcc float @collision_point_distance_with_normal(ptr noundef nonnull %6, ptr noundef nonnull %15, float noundef -1.000000e+00, ptr noundef nonnull %1, ptr noundef nonnull %11) #21
  %177 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 17
  %178 = load float, ptr %177, align 4, !tbaa !490
  %179 = fadd float %178, 0x3F1A36E2E0000000
  %180 = fcmp olt float %176, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = fsub float %179, %176
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %11, float noundef %182) #21
  br label %183

183:                                              ; preds = %181, %175
  %184 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %7) #21
  %185 = fcmp olt float %184, 0.000000e+00
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = fneg float %184
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %7, ptr noundef nonnull %11, float noundef %187) #21
  br label %188

188:                                              ; preds = %186, %183
  %189 = call fastcc float @collision_point_distance_with_normal(ptr noundef %0, ptr noundef nonnull %15, float noundef 1.000000e+00, ptr noundef nonnull %1, ptr noundef nonnull %11) #21
  %190 = load float, ptr %177, align 4, !tbaa !490
  %191 = fadd float %190, 0x3F1A36E2E0000000
  %192 = fcmp olt float %189, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = fsub float %191, %189
  call fastcc void @madd_v3_v3fl(ptr noundef %0, ptr noundef nonnull %11, float noundef %194) #21
  br label %195

195:                                              ; preds = %193, %188
  %196 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %174) #21
  %197 = fcmp olt float %196, 0.000000e+00
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = fneg float %196
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %174, ptr noundef nonnull %11, float noundef %199) #21
  br label %200

200:                                              ; preds = %195, %198, %171
  %201 = getelementptr inbounds %struct.PartDeflect, ptr %19, i64 0, i32 24
  %202 = load float, ptr %201, align 8, !tbaa !533
  %203 = fneg float %202
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %174, ptr noundef nonnull %96, float noundef %203) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %6) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef %0) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %7) #21
  %204 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %204, ptr noundef nonnull %174) #21
  store float %28, ptr %25, align 8, !tbaa !422
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  %205 = load ptr, ptr %16, align 8, !tbaa !317
  %206 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 2
  store ptr %205, ptr %206, align 8, !tbaa !534
  %207 = load i32, ptr %2, align 4, !tbaa !325
  %208 = getelementptr inbounds %struct.ParticleCollision, ptr %1, i64 0, i32 12
  store i32 %207, ptr %208, align 8, !tbaa !535
  br label %209

209:                                              ; preds = %200, %47
  %210 = phi i32 [ 0, %47 ], [ 1, %200 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  ret i32 %210
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @collision_point_on_surface(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #13 !PGOFuncName !536 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  tail call fastcc void @collision_interpolate_element(ptr noundef %1, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef %2) #21
  %11 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !314
  switch i32 %12, label %46 [
    i32 1, label %13
    i32 2, label %18
    i32 3, label %30
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2
  tail call fastcc void @sub_v3_v3v3(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %14) #21
  %15 = tail call fastcc float @normalize_v3(ptr noundef %3) #21
  %16 = getelementptr inbounds %struct.ParticleCollision, ptr %2, i64 0, i32 17
  %17 = load float, ptr %16, align 4, !tbaa !490
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef %3, ptr noundef nonnull %14, ptr noundef %3, float noundef %17) #21
  br label %46

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %19 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 3
  %20 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %19, ptr noundef nonnull %20) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %20) #21
  %21 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  %22 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5) #21
  %23 = fneg float %21
  %24 = fdiv float %23, %22
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %24) #21
  %25 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #21
  %26 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 8
  %27 = load float, ptr %26, align 8, !tbaa !110
  call fastcc void @madd_v3_v3v3fl(ptr noundef %3, ptr noundef nonnull %20, ptr noundef nonnull %5, float noundef %27) #21
  %28 = getelementptr inbounds %struct.ParticleCollision, ptr %2, i64 0, i32 17
  %29 = load float, ptr %28, align 4, !tbaa !490
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %7, float noundef %29) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  br label %46

30:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  %31 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 3
  %32 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %31, ptr noundef nonnull %32) #21
  %33 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %33, ptr noundef nonnull %32) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #21
  %34 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #21
  %35 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 11
  %36 = load i16, ptr %35, align 8, !tbaa !328
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  call fastcc void @negate_v3(ptr noundef nonnull %10) #21
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds %struct.ParticleCollision, ptr %2, i64 0, i32 17
  %41 = load float, ptr %40, align 4, !tbaa !490
  call fastcc void @madd_v3_v3v3fl(ptr noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %10, float noundef %41) #21
  %42 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 8
  %43 = load float, ptr %42, align 8, !tbaa !110
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %8, float noundef %43) #21
  %44 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 8, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !110
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %9, float noundef %45) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  br label %46

46:                                               ; preds = %4, %39, %18, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @collision_point_distance_with_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #13 !PGOFuncName !537 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = fcmp ult float %2, 0.000000e+00
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @collision_interpolate_element(ptr noundef %1, float noundef 0.000000e+00, float noundef %2, ptr noundef %3) #21
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !314
  switch i32 %12, label %26 [
    i32 1, label %13
    i32 2, label %16
    i32 3, label %24
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2
  tail call fastcc void @sub_v3_v3v3(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %14) #21
  %15 = tail call fastcc float @normalize_v3(ptr noundef %4) #21
  br label %26

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %17 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 3
  %18 = getelementptr inbounds %struct.ParticleCollisionElement, ptr %1, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %17, ptr noundef nonnull %18) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %18) #21
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  %20 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  %21 = fneg float %19
  %22 = fdiv float %21, %20
  call fastcc void @madd_v3_v3v3fl(ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %22) #21
  %23 = tail call fastcc float @normalize_v3(ptr noundef %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  br label %26

24:                                               ; preds = %10
  %25 = tail call float @nr_signed_distance_to_plane(ptr noundef %0, float noundef 0.000000e+00, ptr noundef nonnull %1, ptr noundef %4) #21
  br label %26

26:                                               ; preds = %10, %24, %16, %13
  %27 = phi float [ %25, %24 ], [ %23, %16 ], [ %15, %13 ], [ 0.000000e+00, %10 ]
  ret float %27
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #17 !PGOFuncName !538 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #22
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sph_spring_delete(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !539 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds %struct.ParticleSpring, ptr %9, i64 %10
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds %struct.ParticleSpring, ptr %9, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !540
  %14 = load i32, ptr %3, align 8, !tbaa !72
  %15 = add nsw i32 %14, -1
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i32 [ %15, %7 ], [ %5, %2 ]
  %18 = phi i32 [ %14, %7 ], [ %4, %2 ]
  store i32 %17, ptr %3, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 45
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = sdiv i32 %20, 2
  %22 = icmp sle i32 %18, %21
  %23 = icmp sgt i32 %20, 256
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  store i32 %21, ptr %19, align 4, !tbaa !71
  %26 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = zext nneg i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 4
  %31 = tail call ptr %26(ptr noundef %28, i64 noundef %30, ptr noundef nonnull @__func__.sph_spring_delete) #22
  store ptr %31, ptr %27, align 8, !tbaa !70
  br label %32

32:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1) unnamed_addr #16 !PGOFuncName !541 {
  %3 = fmul float %1, 0x3FECCCCCC0000000
  %4 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FB99999A0000000, float %3)
  ret float %4
}

; Function Attrs: optsize
declare void @psys_vec_rot_to_face(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cloth_free_modifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_hair_dynamics(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !542 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #23
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !378
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = tail call ptr @modifier_new(i32 noundef 22) #22
  store ptr %12, ptr %8, align 8, !tbaa !378
  %13 = getelementptr inbounds %struct.ClothModifierData, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !544
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 21
  store float 0.000000e+00, ptr %15, align 8, !tbaa !546
  %16 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 25
  store float 1.000000e+00, ptr %16, align 8, !tbaa !548
  %17 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !549
  %19 = or i32 %18, 8200
  store i32 %19, ptr %17, align 8, !tbaa !549
  %20 = getelementptr inbounds %struct.ClothModifierData, ptr %12, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !550
  %22 = getelementptr inbounds %struct.ClothCollSettings, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !551
  %24 = and i32 %23, -5
  store i32 %24, ptr %22, align 8, !tbaa !551
  br label %25

25:                                               ; preds = %11, %1
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 3
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 26
  %28 = load i32, ptr %27, align 8, !tbaa !57
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !61
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i32 [ %38, %32 ], [ 0, %30 ]
  %34 = phi i32 [ %39, %32 ], [ 0, %30 ]
  %35 = phi ptr [ %40, %32 ], [ %31, %30 ]
  %36 = getelementptr inbounds %struct.ParticleData, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !370
  %38 = add nsw i32 %37, %33
  %39 = add nuw nsw i32 %34, 1
  %40 = getelementptr inbounds %struct.ParticleData, ptr %35, i64 1
  %41 = icmp eq i32 %39, %28
  br i1 %41, label %42, label %32, !llvm.loop !553

42:                                               ; preds = %32, %25
  %43 = phi i32 [ 0, %25 ], [ %38, %32 ]
  %44 = add nsw i32 %28, %43
  %45 = icmp eq ptr %7, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 23
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  %49 = tail call i32 %48(ptr noundef nonnull %7) #22
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 24
  %53 = load ptr, ptr %52, align 8, !tbaa !554
  %54 = tail call i32 %53(ptr noundef nonnull %7) #22
  %55 = icmp eq i32 %43, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %46
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %58 = load ptr, ptr %57, align 8, !tbaa !555
  tail call void %58(ptr noundef nonnull %7) #22
  store ptr null, ptr %6, align 8, !tbaa !543
  br label %59

59:                                               ; preds = %56, %42
  %60 = tail call ptr @CDDM_new(i32 noundef %44, i32 noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 0) #22
  store ptr %60, ptr %6, align 8, !tbaa !543
  tail call void @DM_add_vert_layer(ptr noundef %60, i32 noundef 2, i32 noundef 1, ptr noundef null) #22
  br label %61

61:                                               ; preds = %51, %59
  %62 = phi ptr [ %60, %59 ], [ %7, %51 ]
  %63 = tail call ptr @CDDM_get_verts(ptr noundef %62) #22
  %64 = tail call ptr @CDDM_get_edges(ptr noundef %62) #22
  %65 = tail call ptr @DM_get_vert_data_layer(ptr noundef %62, i32 noundef 2) #22
  %66 = load ptr, ptr %8, align 8, !tbaa !378
  %67 = getelementptr inbounds %struct.ClothModifierData, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !544
  %69 = getelementptr inbounds %struct.ClothSimSettings, ptr %68, i64 0, i32 34
  store i16 1, ptr %69, align 8, !tbaa !556
  %70 = load ptr, ptr %26, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 16
  store i32 1, ptr %71, align 8, !tbaa !147
  %72 = load i32, ptr %27, align 8, !tbaa !57
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %181

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %76 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %77 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  br label %78

78:                                               ; preds = %74, %173
  %79 = phi ptr [ %63, %74 ], [ %176, %173 ]
  %80 = phi i32 [ 0, %74 ], [ %177, %173 ]
  %81 = phi ptr [ %70, %74 ], [ %178, %173 ]
  %82 = phi ptr [ %65, %74 ], [ %175, %173 ]
  %83 = phi ptr [ %64, %74 ], [ %174, %173 ]
  %84 = icmp eq i32 %80, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %78
  %86 = getelementptr %struct.ParticleData, ptr %81, i64 -1, i32 16
  %87 = load i32, ptr %86, align 8, !tbaa !147
  %88 = getelementptr %struct.ParticleData, ptr %81, i64 -1, i32 5
  %89 = load i32, ptr %88, align 8, !tbaa !370
  %90 = add i32 %87, 1
  %91 = add i32 %90, %89
  %92 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 0, i32 16
  store i32 %91, ptr %92, align 8, !tbaa !147
  br label %93

93:                                               ; preds = %85, %78
  %94 = load ptr, ptr %75, align 8, !tbaa !117
  %95 = load ptr, ptr %76, align 8, !tbaa !151
  %96 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !113
  %98 = load ptr, ptr %77, align 8, !tbaa !34
  %99 = getelementptr inbounds %struct.ParticleSettings, ptr %98, i64 0, i32 8
  %100 = load i16, ptr %99, align 2, !tbaa !78
  call void @psys_mat_hair_to_object(ptr noundef %94, ptr noundef %97, i16 noundef signext %100, ptr noundef nonnull %81, ptr noundef nonnull %2) #22
  %101 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !370
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %173

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !371
  %107 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 0, i32 16
  br label %108

108:                                              ; preds = %104, %167
  %109 = phi i32 [ 0, %104 ], [ %169, %167 ]
  %110 = phi ptr [ %79, %104 ], [ %142, %167 ]
  %111 = phi ptr [ %106, %104 ], [ %170, %167 ]
  %112 = phi ptr [ %82, %104 ], [ %168, %167 ]
  %113 = phi ptr [ %83, %104 ], [ %150, %167 ]
  %114 = icmp eq i32 %109, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  %116 = getelementptr inbounds %struct.HairKey, ptr %111, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %111, ptr noundef nonnull %116) #21
  call fastcc void @copy_v3_v3(ptr noundef %110, ptr noundef %111) #21
  call fastcc void @add_v3_v3v3(ptr noundef %110, ptr noundef %110, ptr noundef nonnull %3) #21
  call void @mul_m4_v3(ptr noundef nonnull %2, ptr noundef %110) #22
  %117 = getelementptr inbounds %struct.MVert, ptr %110, i64 1
  %118 = load i32, ptr %107, align 8, !tbaa !147
  %119 = add nsw i32 %118, -1
  store i32 %119, ptr %113, align 4, !tbaa !557
  %120 = getelementptr inbounds %struct.MEdge, ptr %113, i64 0, i32 1
  store i32 %118, ptr %120, align 4, !tbaa !559
  %121 = getelementptr inbounds %struct.MEdge, ptr %113, i64 1
  %122 = icmp eq ptr %112, null
  br i1 %122, label %136, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.MDeformVert, ptr %112, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !560
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %112, align 8, !tbaa !562
  br label %132

129:                                              ; preds = %123
  %130 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %131 = call ptr %130(i64 noundef 8, ptr noundef nonnull @.str.9) #22
  store ptr %131, ptr %112, align 8, !tbaa !562
  store i32 1, ptr %124, align 8, !tbaa !560
  br label %132

132:                                              ; preds = %127, %129
  %133 = phi ptr [ %128, %127 ], [ %131, %129 ]
  %134 = getelementptr inbounds %struct.MDeformWeight, ptr %133, i64 0, i32 1
  store float 1.000000e+00, ptr %134, align 4, !tbaa !563
  %135 = getelementptr inbounds %struct.MDeformVert, ptr %112, i64 1
  br label %136

136:                                              ; preds = %132, %115
  %137 = phi ptr [ %135, %132 ], [ null, %115 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  br label %138

138:                                              ; preds = %136, %108
  %139 = phi ptr [ %121, %136 ], [ %113, %108 ]
  %140 = phi ptr [ %137, %136 ], [ %112, %108 ]
  %141 = phi ptr [ %117, %136 ], [ %110, %108 ]
  call fastcc void @copy_v3_v3(ptr noundef %141, ptr noundef %111) #21
  call void @mul_m4_v3(ptr noundef nonnull %2, ptr noundef %141) #22
  %142 = getelementptr inbounds %struct.MVert, ptr %141, i64 1
  br i1 %114, label %149, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr %107, align 8, !tbaa !147
  %145 = add nsw i32 %144, %109
  %146 = add nsw i32 %145, -1
  store i32 %146, ptr %139, align 4, !tbaa !557
  %147 = getelementptr inbounds %struct.MEdge, ptr %139, i64 0, i32 1
  store i32 %145, ptr %147, align 4, !tbaa !559
  %148 = getelementptr inbounds %struct.MEdge, ptr %139, i64 1
  br label %149

149:                                              ; preds = %143, %138
  %150 = phi ptr [ %148, %143 ], [ %139, %138 ]
  %151 = icmp eq ptr %140, null
  br i1 %151, label %167, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.MDeformVert, ptr %140, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !560
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %140, align 8, !tbaa !562
  br label %161

158:                                              ; preds = %152
  %159 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %160 = call ptr %159(i64 noundef 8, ptr noundef nonnull @.str.9) #22
  store ptr %160, ptr %140, align 8, !tbaa !562
  store i32 1, ptr %153, align 8, !tbaa !560
  br label %161

161:                                              ; preds = %156, %158
  %162 = phi ptr [ %157, %156 ], [ %160, %158 ]
  %163 = getelementptr inbounds %struct.HairKey, ptr %111, i64 0, i32 2
  %164 = load float, ptr %163, align 4, !tbaa !374
  %165 = getelementptr inbounds %struct.MDeformWeight, ptr %162, i64 0, i32 1
  store float %164, ptr %165, align 4, !tbaa !563
  %166 = getelementptr inbounds %struct.MDeformVert, ptr %140, i64 1
  br label %167

167:                                              ; preds = %149, %161
  %168 = phi ptr [ %166, %161 ], [ null, %149 ]
  %169 = add nuw nsw i32 %109, 1
  %170 = getelementptr inbounds %struct.HairKey, ptr %111, i64 1
  %171 = load i32, ptr %101, align 8, !tbaa !370
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %108, label %173, !llvm.loop !565

173:                                              ; preds = %167, %93
  %174 = phi ptr [ %83, %93 ], [ %150, %167 ]
  %175 = phi ptr [ %82, %93 ], [ %168, %167 ]
  %176 = phi ptr [ %79, %93 ], [ %142, %167 ]
  %177 = add nuw nsw i32 %80, 1
  %178 = getelementptr inbounds %struct.ParticleData, ptr %81, i64 1
  %179 = load i32, ptr %27, align 8, !tbaa !57
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %78, label %181, !llvm.loop !566

181:                                              ; preds = %173, %61
  %182 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 13
  %183 = load ptr, ptr %182, align 8, !tbaa !567
  %184 = icmp eq ptr %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.DerivedMesh, ptr %183, i64 0, i32 95
  %187 = load ptr, ptr %186, align 8, !tbaa !555
  call void %187(ptr noundef nonnull %183) #22
  br label %188

188:                                              ; preds = %185, %181
  %189 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 40
  %190 = load ptr, ptr %189, align 8, !tbaa !49
  %191 = load ptr, ptr %8, align 8, !tbaa !378
  %192 = getelementptr inbounds %struct.ClothModifierData, ptr %191, i64 0, i32 5
  store ptr %190, ptr %192, align 8, !tbaa !568
  %193 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !34
  %195 = getelementptr inbounds %struct.ParticleSettings, ptr %194, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !468
  %197 = getelementptr inbounds %struct.ClothModifierData, ptr %191, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !544
  %199 = getelementptr inbounds %struct.ClothSimSettings, ptr %198, i64 0, i32 41
  store ptr %196, ptr %199, align 8, !tbaa !569
  %200 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !68
  %201 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 23
  %202 = load ptr, ptr %201, align 8, !tbaa !90
  %203 = call i32 %202(ptr noundef %62) #22
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %204, 12
  %206 = call ptr %200(i64 noundef %205, ptr noundef nonnull @.str.10) #22
  %207 = call ptr @CDDM_copy(ptr noundef %62) #22
  store ptr %207, ptr %182, align 8, !tbaa !567
  %208 = getelementptr inbounds %struct.DerivedMesh, ptr %207, i64 0, i32 77
  %209 = load ptr, ptr %208, align 8, !tbaa !570
  call void %209(ptr noundef %207, ptr noundef %206) #22
  %210 = load ptr, ptr %8, align 8, !tbaa !378
  %211 = load ptr, ptr %0, align 8, !tbaa !107
  %212 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !117
  call void @clothModifier_do(ptr noundef %210, ptr noundef %211, ptr noundef %213, ptr noundef %62, ptr noundef %206) #22
  %214 = load ptr, ptr %182, align 8, !tbaa !567
  call void @CDDM_apply_vert_coords(ptr noundef %214, ptr noundef %206) #22
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %215(ptr noundef %206) #22
  %216 = load ptr, ptr %8, align 8, !tbaa !378
  %217 = getelementptr inbounds %struct.ClothModifierData, ptr %216, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !544
  %219 = getelementptr inbounds %struct.ClothSimSettings, ptr %218, i64 0, i32 41
  store ptr null, ptr %219, align 8, !tbaa !569
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_new(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_mat_hair_to_object(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @clothModifier_do(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @realloc_particles(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !571 {
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 9
  %10 = load i16, ptr %9, align 4, !tbaa !77
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !78
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 65
  %18 = load i32, ptr %17, align 4, !tbaa !79
  %19 = mul nsw i32 %18, %18
  %20 = mul nsw i32 %19, %18
  br label %24

21:                                               ; preds = %12, %8
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 63
  %23 = load i32, ptr %22, align 4, !tbaa !81
  br label %24

24:                                               ; preds = %2, %16, %21
  %25 = phi i32 [ %20, %16 ], [ %23, %21 ], [ %1, %2 ]
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %27 = load i32, ptr %26, align 8, !tbaa !57
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %147, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef nonnull %31) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %38

38:                                               ; preds = %37, %33, %29
  %39 = icmp eq i32 %25, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %42 = sext i32 %25 to i64
  %43 = mul nsw i64 %42, 200
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.11) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %154, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %47, i64 0, i32 11
  %49 = load i16, ptr %48, align 8, !tbaa !56
  %50 = icmp eq i16 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %53 = mul nsw i64 %42, 56
  %54 = tail call ptr %52(i64 noundef %53, ptr noundef nonnull @.str.12) #22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %57(ptr noundef nonnull %44) #22
  br label %154

58:                                               ; preds = %46, %51, %38
  %59 = phi ptr [ %44, %51 ], [ %44, %46 ], [ null, %38 ]
  %60 = phi ptr [ %54, %51 ], [ null, %46 ], [ null, %38 ]
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  %63 = icmp eq ptr %62, null
  br i1 %63, label %134, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr %26, align 8, !tbaa !57
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 %25)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = sext i32 %66 to i64
  %70 = mul nsw i64 %69, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %59, ptr nonnull align 8 %62, i64 %70, i1 false)
  %71 = load ptr, ptr %61, align 8, !tbaa !61
  %72 = getelementptr inbounds %struct.ParticleData, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !148
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = mul nsw i64 %69, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr nonnull align 8 %73, i64 %76, i1 false)
  %77 = load ptr, ptr %61, align 8, !tbaa !61
  br label %78

78:                                               ; preds = %68, %75, %64
  %79 = phi ptr [ %71, %68 ], [ %77, %75 ], [ %62, %64 ]
  %80 = getelementptr inbounds %struct.ParticleData, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !388
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %84(ptr noundef nonnull %81) #22
  %85 = load ptr, ptr %61, align 8, !tbaa !61
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ %79, %78 ]
  %88 = getelementptr inbounds %struct.ParticleData, ptr %87, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !148
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %92(ptr noundef nonnull %89) #22
  br label %93

93:                                               ; preds = %91, %86
  %94 = icmp sgt i32 %66, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %93, %103
  %96 = phi i32 [ %104, %103 ], [ 0, %93 ]
  %97 = phi ptr [ %105, %103 ], [ %59, %93 ]
  %98 = getelementptr inbounds %struct.ParticleData, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !388
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  store ptr null, ptr %98, align 8, !tbaa !388
  %102 = getelementptr inbounds %struct.ParticleData, ptr %97, i64 0, i32 5
  store i32 0, ptr %102, align 8, !tbaa !370
  br label %103

103:                                              ; preds = %95, %101
  %104 = add nuw nsw i32 %96, 1
  %105 = getelementptr inbounds %struct.ParticleData, ptr %97, i64 1
  %106 = icmp eq i32 %104, %66
  br i1 %106, label %107, label %95, !llvm.loop !572

107:                                              ; preds = %103, %93
  %108 = load ptr, ptr %61, align 8, !tbaa !61
  %109 = load i32, ptr %26, align 8, !tbaa !57
  %110 = icmp slt i32 %66, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = sext i32 %66 to i64
  %113 = getelementptr inbounds %struct.ParticleData, ptr %108, i64 %112
  br label %114

114:                                              ; preds = %111, %124
  %115 = phi i32 [ %125, %124 ], [ %109, %111 ]
  %116 = phi i32 [ %126, %124 ], [ %66, %111 ]
  %117 = phi ptr [ %127, %124 ], [ %113, %111 ]
  %118 = getelementptr inbounds %struct.ParticleData, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !371
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %122(ptr noundef nonnull %119) #22
  %123 = load i32, ptr %26, align 8, !tbaa !57
  br label %124

124:                                              ; preds = %114, %121
  %125 = phi i32 [ %115, %114 ], [ %123, %121 ]
  %126 = add nsw i32 %116, 1
  %127 = getelementptr inbounds %struct.ParticleData, ptr %117, i64 1
  %128 = icmp slt i32 %126, %125
  br i1 %128, label %114, label %129, !llvm.loop !573

129:                                              ; preds = %124
  %130 = load ptr, ptr %61, align 8, !tbaa !61
  br label %131

131:                                              ; preds = %129, %107
  %132 = phi ptr [ %130, %129 ], [ %108, %107 ]
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %133(ptr noundef %132) #22
  tail call void @psys_free_pdd(ptr noundef nonnull %4) #22
  br label %134

134:                                              ; preds = %131, %58
  store ptr %59, ptr %61, align 8, !tbaa !61
  store i32 %25, ptr %26, align 8, !tbaa !57
  %135 = icmp ne ptr %60, null
  %136 = icmp sgt i32 %25, 0
  %137 = and i1 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134, %138
  %139 = phi i32 [ %144, %138 ], [ 0, %134 ]
  %140 = phi ptr [ %145, %138 ], [ %59, %134 ]
  %141 = phi ptr [ %142, %138 ], [ %60, %134 ]
  %142 = getelementptr inbounds %struct.BoidParticle, ptr %141, i64 1
  %143 = getelementptr inbounds %struct.ParticleData, ptr %140, i64 0, i32 4
  store ptr %141, ptr %143, align 8, !tbaa !148
  %144 = add nuw nsw i32 %139, 1
  %145 = getelementptr inbounds %struct.ParticleData, ptr %140, i64 1
  %146 = icmp eq i32 %144, %25
  br i1 %146, label %147, label %138, !llvm.loop !574

147:                                              ; preds = %138, %134, %24
  %148 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !67
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %152(ptr noundef nonnull %149) #22
  store ptr null, ptr %148, align 8, !tbaa !67
  %153 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  store i32 0, ptr %153, align 8, !tbaa !69
  br label %154

154:                                              ; preds = %147, %151, %40, %56
  ret void
}

; Function Attrs: optsize
declare void @psys_free_pdd(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @distribute_particles_on_dm(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !575 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %8 = tail call ptr @psys_threads_create(ptr noundef %0) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !107
  %10 = tail call fastcc i32 @distribute_threads_init_data(ptr noundef %8, ptr noundef %9, ptr noundef %7, i32 noundef %1) #21, !range !323
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @psys_threads_free(ptr noundef %8) #21
  br label %40

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ParticleThread, ptr %8, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !124
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  call void @BLI_init_threads(ptr noundef nonnull %3, ptr noundef nonnull @distribute_threads_exec_cb, i32 noundef %15) #22
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %22, %19 ]
  %21 = getelementptr inbounds %struct.ParticleThread, ptr %8, i64 %20
  call void @BLI_insert_thread(ptr noundef nonnull %3, ptr noundef %21) #22
  %22 = add nuw nsw i64 %20, 1
  %23 = icmp eq i64 %22, %18
  br i1 %23, label %24, label %19, !llvm.loop !576

24:                                               ; preds = %19
  call void @BLI_end_threads(ptr noundef nonnull %3) #22
  br label %27

25:                                               ; preds = %13
  %26 = tail call ptr @distribute_threads_exec_cb(ptr noundef nonnull %8) #21
  br label %27

27:                                               ; preds = %25, %24
  %28 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !117
  %30 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !118
  call void @psys_calc_dmcache(ptr noundef %29, ptr noundef %7, ptr noundef %31) #21
  %32 = load ptr, ptr %8, align 8, !tbaa !121
  %33 = getelementptr inbounds %struct.ParticleThreadContext, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !116
  %35 = icmp eq ptr %34, %7
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 95
  %38 = load ptr, ptr %37, align 8, !tbaa !555
  call void %38(ptr noundef %34) #22
  br label %39

39:                                               ; preds = %36, %27
  call void @psys_threads_free(ptr noundef nonnull %8) #21
  br label %40

40:                                               ; preds = %39, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @distribute_particles_on_shape(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !577 {
  %2 = load ptr, ptr %0, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  tail call fastcc void @distribute_invalid(ptr noundef %2, ptr noundef %4, i32 noundef 0) #21
  %5 = load ptr, ptr @stderr, align 8, !tbaa !68
  %6 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 33, i64 1, ptr %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @distribute_invalid(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !578 {
  %4 = icmp eq i32 %2, 4
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @get_psys_tot_child(ptr noundef %0, ptr noundef %1) #21
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %6, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %35

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %18, %12 ], [ %8, %5 ]
  %14 = phi i32 [ %17, %12 ], [ 0, %5 ]
  %15 = getelementptr inbounds %struct.ChildParticle, ptr %13, i64 0, i32 4
  %16 = getelementptr inbounds %struct.ChildParticle, ptr %13, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %16, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  store i32 -1, ptr %13, align 4, !tbaa !579
  %17 = add nuw nsw i32 %14, 1
  %18 = getelementptr inbounds %struct.ChildParticle, ptr %13, i64 1
  %19 = icmp eq i32 %17, %6
  br i1 %19, label %35, label %12, !llvm.loop !581

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i32 [ %32, %27 ], [ 0, %24 ]
  %29 = phi ptr [ %33, %27 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.ParticleData, ptr %29, i64 0, i32 11
  %31 = getelementptr inbounds %struct.ParticleData, ptr %29, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  store i32 -1, ptr %31, align 8, !tbaa !103
  %32 = add nuw nsw i32 %28, 1
  %33 = getelementptr inbounds %struct.ParticleData, ptr %29, i64 1
  %34 = icmp eq i32 %32, %22
  br i1 %34, label %35, label %27, !llvm.loop !582

35:                                               ; preds = %27, %12, %20, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @distribute_threads_init_data(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 !PGOFuncName !583 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = load ptr, ptr %0, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.ParticleSimulationData, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !584
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  %17 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %19 = icmp eq ptr %14, null
  %20 = icmp eq ptr %16, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %606, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %606, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 26
  %28 = load i32, ptr %27, align 8, !tbaa !57
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %606, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 11
  %32 = load i32, ptr %31, align 8, !tbaa !87
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 52
  %36 = load ptr, ptr %35, align 8, !tbaa !96
  %37 = tail call ptr %36(ptr noundef nonnull %2, i32 noundef 7) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %606

41:                                               ; preds = %34, %30
  %42 = icmp eq i32 %3, 4
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 19
  %45 = load i16, ptr %44, align 4, !tbaa !48
  %46 = icmp eq i16 %45, 2
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 23
  %48 = load i32, ptr %47, align 4, !tbaa !172
  %49 = add nsw i32 %48, 31415926
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 24
  %51 = load i32, ptr %50, align 8, !tbaa !585
  %52 = add nsw i32 %49, %51
  tail call void @BLI_srandom(i32 noundef %52) #22
  br i1 %46, label %69, label %53

53:                                               ; preds = %43
  tail call fastcc void @distribute_simple_children(ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %2, ptr noundef nonnull %16) #21
  br label %606

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 9
  %56 = load i16, ptr %55, align 4, !tbaa !77
  %57 = icmp eq i16 %56, 2
  %58 = icmp ne i32 %3, 0
  %59 = and i1 %58, %57
  br i1 %59, label %60, label %95

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 23
  %62 = load i32, ptr %61, align 4, !tbaa !172
  %63 = add nsw i32 %62, 31415926
  tail call void @BLI_srandom(i32 noundef %63) #22
  %64 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !82
  %66 = tail call ptr @CDDM_from_mesh(ptr noundef %65) #22
  tail call void @DM_ensure_tessface(ptr noundef %66) #22
  tail call fastcc void @distribute_grid(ptr noundef %66, ptr noundef nonnull %16) #21
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %66, i64 0, i32 95
  %68 = load ptr, ptr %67, align 8, !tbaa !555
  tail call void %68(ptr noundef %66) #22
  br label %606

69:                                               ; preds = %43
  tail call void @DM_ensure_tessface(ptr noundef nonnull %2) #22
  %70 = tail call ptr @BLI_kdtree_new(i32 noundef %28) #22
  %71 = icmp sgt i32 %28, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !61
  %75 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 8
  %76 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  br label %77

77:                                               ; preds = %72, %77
  %78 = phi ptr [ %74, %72 ], [ %91, %77 ]
  %79 = phi i32 [ 0, %72 ], [ %90, %77 ]
  %80 = load i16, ptr %75, align 2, !tbaa !78
  %81 = sext i16 %80 to i32
  %82 = getelementptr inbounds %struct.ParticleData, ptr %78, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !103
  %84 = getelementptr inbounds %struct.ParticleData, ptr %78, i64 0, i32 10
  %85 = load i32, ptr %84, align 4, !tbaa !104
  %86 = getelementptr inbounds %struct.ParticleData, ptr %78, i64 0, i32 11
  %87 = getelementptr inbounds %struct.ParticleData, ptr %78, i64 0, i32 12
  %88 = load float, ptr %87, align 8, !tbaa !152
  call void @psys_particle_on_dm(ptr noundef %2, i32 noundef %81, i32 noundef %83, i32 noundef %85, ptr noundef nonnull %86, float noundef %88, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #22
  %89 = load ptr, ptr %76, align 8, !tbaa !82
  call void @BKE_mesh_orco_verts_transform(ptr noundef %89, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 1) #22
  call void @BLI_kdtree_insert(ptr noundef %70, i32 noundef %79, ptr noundef nonnull %7) #22
  %90 = add nuw nsw i32 %79, 1
  %91 = getelementptr inbounds %struct.ParticleData, ptr %78, i64 1
  %92 = icmp eq i32 %90, %28
  br i1 %92, label %93, label %77, !llvm.loop !586

93:                                               ; preds = %77, %69
  call void @BLI_kdtree_balance(ptr noundef %70) #22
  %94 = call fastcc i32 @get_psys_tot_child(ptr noundef %1, ptr noundef %16) #21
  br label %145

95:                                               ; preds = %54
  %96 = sext i16 %56 to i32
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 23
  %98 = load i32, ptr %97, align 4, !tbaa !172
  %99 = add nsw i32 %98, 31415926
  tail call void @BLI_srandom(i32 noundef %99) #22
  %100 = load ptr, ptr %23, align 8, !tbaa !34
  %101 = getelementptr inbounds %struct.ParticleSettings, ptr %100, i64 0, i32 130
  %102 = load i16, ptr %101, align 8, !tbaa !86
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %106 = load ptr, ptr %105, align 8, !tbaa !82
  %107 = tail call ptr @CDDM_from_mesh(ptr noundef %106) #22
  br label %108

108:                                              ; preds = %95, %104
  %109 = phi ptr [ %107, %104 ], [ %2, %95 ]
  %110 = icmp eq i32 %3, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void @DM_ensure_tessface(ptr noundef %109) #22
  br label %112

112:                                              ; preds = %111, %108
  %113 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %109, i32 noundef 14) #22
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = tail call ptr @BKE_mesh_orco_verts_get(ptr noundef nonnull %14) #22
  tail call void @DM_add_vert_layer(ptr noundef %109, i32 noundef 14, i32 noundef 0, ptr noundef %116) #22
  br label %117

117:                                              ; preds = %115, %112
  br i1 %110, label %118, label %145

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %109, i64 0, i32 50
  %120 = load ptr, ptr %119, align 8, !tbaa !93
  %121 = tail call ptr %120(ptr noundef %109, i32 noundef 0) #22
  %122 = load ptr, ptr %119, align 8, !tbaa !93
  %123 = tail call ptr %122(ptr noundef %109, i32 noundef 14) #22
  %124 = getelementptr inbounds %struct.DerivedMesh, ptr %109, i64 0, i32 23
  %125 = load ptr, ptr %124, align 8, !tbaa !90
  %126 = tail call i32 %125(ptr noundef %109) #22
  %127 = tail call ptr @BLI_kdtree_new(i32 noundef %126) #22
  %128 = icmp sgt i32 %126, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %118
  %130 = icmp eq ptr %123, null
  %131 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %132 = zext nneg i32 %126 to i64
  br label %133

133:                                              ; preds = %129, %140
  %134 = phi i64 [ 0, %129 ], [ %142, %140 ]
  br i1 %130, label %138, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds [3 x float], ptr %123, i64 %134
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %136) #21
  %137 = load ptr, ptr %131, align 8, !tbaa !82
  call void @BKE_mesh_orco_verts_transform(ptr noundef %137, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1) #22
  br label %140

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.MVert, ptr %121, i64 %134
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %139) #21
  br label %140

140:                                              ; preds = %138, %135
  %141 = trunc i64 %134 to i32
  call void @BLI_kdtree_insert(ptr noundef %127, i32 noundef %141, ptr noundef nonnull %5) #22
  %142 = add nuw nsw i64 %134, 1
  %143 = icmp eq i64 %142, %132
  br i1 %143, label %144, label %133, !llvm.loop !587

144:                                              ; preds = %140, %118
  call void @BLI_kdtree_balance(ptr noundef %127) #22
  br label %154

145:                                              ; preds = %117, %93
  %146 = phi i32 [ 1, %93 ], [ %3, %117 ]
  %147 = phi ptr [ %70, %93 ], [ null, %117 ]
  %148 = phi ptr [ %2, %93 ], [ %109, %117 ]
  %149 = phi i32 [ 1, %93 ], [ 0, %117 ]
  %150 = phi i32 [ %94, %93 ], [ %28, %117 ]
  %151 = phi i32 [ 1, %93 ], [ %96, %117 ]
  %152 = phi i32 [ 4, %93 ], [ %3, %117 ]
  %153 = getelementptr inbounds %struct.DerivedMesh, ptr %148, i64 0, i32 25
  br label %154

154:                                              ; preds = %145, %144
  %155 = phi ptr [ %153, %145 ], [ %124, %144 ]
  %156 = phi ptr [ %148, %145 ], [ %109, %144 ]
  %157 = phi i1 [ false, %145 ], [ true, %144 ]
  %158 = phi i32 [ %146, %145 ], [ 0, %144 ]
  %159 = phi ptr [ %147, %145 ], [ %127, %144 ]
  %160 = phi i32 [ %149, %145 ], [ 0, %144 ]
  %161 = phi i32 [ %150, %145 ], [ %28, %144 ]
  %162 = phi i32 [ %151, %145 ], [ %96, %144 ]
  %163 = phi i32 [ %152, %145 ], [ 0, %144 ]
  %164 = load ptr, ptr %155, align 8, !tbaa !68
  %165 = call i32 %164(ptr noundef %156) #22
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %154
  %168 = select i1 %42, i32 4, i32 0
  call fastcc void @distribute_invalid(ptr noundef %1, ptr noundef %16, i32 noundef %168) #21
  %169 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !588
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr @stderr, align 8, !tbaa !68
  %174 = call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %173) #24
  br label %175

175:                                              ; preds = %172, %167
  %176 = icmp eq ptr %156, %2
  br i1 %176, label %180, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 95
  %179 = load ptr, ptr %178, align 8, !tbaa !555
  call void %179(ptr noundef nonnull %156) #22
  br label %180

180:                                              ; preds = %177, %175
  call void @BLI_kdtree_free(ptr noundef %159) #22
  br label %606

181:                                              ; preds = %154
  %182 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %183 = sext i32 %165 to i64
  %184 = shl nsw i64 %183, 2
  %185 = call ptr %182(i64 noundef %184, ptr noundef nonnull @.str.16) #22
  %186 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %187 = sext i32 %161 to i64
  %188 = shl nsw i64 %187, 2
  %189 = call ptr %186(i64 noundef %188, ptr noundef nonnull @.str.17) #22
  %190 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %191 = add nsw i32 %165, 1
  %192 = sext i32 %191 to i64
  %193 = shl nsw i64 %192, 2
  %194 = call ptr %190(i64 noundef %193, ptr noundef nonnull @.str.18) #22
  %195 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %196 = call ptr %195(i64 noundef %184, ptr noundef nonnull @.str.19) #22
  %197 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 5
  %198 = load i32, ptr %197, align 8, !tbaa !276
  %199 = and i32 %198, 256
  %200 = icmp ne i32 %199, 0
  %201 = or i1 %42, %200
  %202 = icmp ne i32 %158, 0
  %203 = and i1 %202, %201
  br i1 %203, label %204, label %291

204:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  %205 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 50
  %206 = load ptr, ptr %205, align 8, !tbaa !93
  %207 = call ptr %206(ptr noundef nonnull %156, i32 noundef 14) #22
  %208 = icmp sgt i32 %165, 0
  br i1 %208, label %209, label %287

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 48
  %211 = icmp eq ptr %207, null
  %212 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %213 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 46
  %214 = zext nneg i32 %165 to i64
  br label %218

215:                                              ; preds = %272
  br i1 %208, label %216, label %287

216:                                              ; preds = %215
  %217 = zext nneg i32 %165 to i64
  br label %280

218:                                              ; preds = %209, %272
  %219 = phi i64 [ 0, %209 ], [ %278, %272 ]
  %220 = phi float [ 0.000000e+00, %209 ], [ %277, %272 ]
  %221 = phi float [ 0.000000e+00, %209 ], [ %275, %272 ]
  %222 = load ptr, ptr %210, align 8, !tbaa !590
  %223 = trunc i64 %219 to i32
  %224 = call ptr %222(ptr noundef nonnull %156, i32 noundef %223, i32 noundef 4) #22
  %225 = getelementptr inbounds %struct.MFace, ptr %224, i64 0, i32 1
  br i1 %211, label %247, label %226

226:                                              ; preds = %218
  %227 = load i32, ptr %224, align 4, !tbaa !309
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [3 x float], ptr %207, i64 %228
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %229) #21
  %230 = load i32, ptr %225, align 4, !tbaa !311
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [3 x float], ptr %207, i64 %231
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %232) #21
  %233 = getelementptr inbounds %struct.MFace, ptr %224, i64 0, i32 2
  %234 = load i32, ptr %233, align 4, !tbaa !312
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [3 x float], ptr %207, i64 %235
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %236) #21
  %237 = load ptr, ptr %212, align 8, !tbaa !82
  call void @BKE_mesh_orco_verts_transform(ptr noundef %237, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 1) #22
  %238 = load ptr, ptr %212, align 8, !tbaa !82
  call void @BKE_mesh_orco_verts_transform(ptr noundef %238, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 1) #22
  %239 = load ptr, ptr %212, align 8, !tbaa !82
  call void @BKE_mesh_orco_verts_transform(ptr noundef %239, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 1) #22
  %240 = getelementptr inbounds %struct.MFace, ptr %224, i64 0, i32 3
  %241 = load i32, ptr %240, align 4, !tbaa !313
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %264, label %243

243:                                              ; preds = %226
  %244 = zext i32 %241 to i64
  %245 = getelementptr inbounds [3 x float], ptr %207, i64 %244
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %245) #21
  %246 = load ptr, ptr %212, align 8, !tbaa !82
  call void @BKE_mesh_orco_verts_transform(ptr noundef %246, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 1) #22
  br label %264

247:                                              ; preds = %218
  %248 = load ptr, ptr %213, align 8, !tbaa !591
  %249 = load i32, ptr %224, align 4, !tbaa !309
  %250 = call ptr %248(ptr noundef nonnull %156, i32 noundef %249, i32 noundef 0) #22
  %251 = load ptr, ptr %213, align 8, !tbaa !591
  %252 = load i32, ptr %225, align 4, !tbaa !311
  %253 = call ptr %251(ptr noundef nonnull %156, i32 noundef %252, i32 noundef 0) #22
  %254 = load ptr, ptr %213, align 8, !tbaa !591
  %255 = getelementptr inbounds %struct.MFace, ptr %224, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !312
  %257 = call ptr %254(ptr noundef nonnull %156, i32 noundef %256, i32 noundef 0) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %250) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %253) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %257) #21
  %258 = getelementptr inbounds %struct.MFace, ptr %224, i64 0, i32 3
  %259 = load i32, ptr %258, align 4, !tbaa !313
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %247
  %262 = load ptr, ptr %213, align 8, !tbaa !591
  %263 = call ptr %262(ptr noundef nonnull %156, i32 noundef %259, i32 noundef 0) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %263) #21
  br label %264

264:                                              ; preds = %247, %261, %226, %243
  %265 = getelementptr inbounds %struct.MFace, ptr %224, i64 0, i32 3
  %266 = load i32, ptr %265, align 4, !tbaa !313
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %264
  %269 = call float @area_quad_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  br label %272

270:                                              ; preds = %264
  %271 = call float @area_tri_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi float [ %269, %268 ], [ %271, %270 ]
  %274 = fcmp ogt float %273, %221
  %275 = select i1 %274, float %273, float %221
  %276 = getelementptr inbounds float, ptr %185, i64 %219
  store float %273, ptr %276, align 4, !tbaa !110
  %277 = fadd float %220, %273
  %278 = add nuw nsw i64 %219, 1
  %279 = icmp eq i64 %278, %214
  br i1 %279, label %215, label %218, !llvm.loop !592

280:                                              ; preds = %216, %280
  %281 = phi i64 [ 0, %216 ], [ %285, %280 ]
  %282 = getelementptr inbounds float, ptr %185, i64 %281
  %283 = load float, ptr %282, align 4, !tbaa !110
  %284 = fdiv float %283, %277
  store float %284, ptr %282, align 4, !tbaa !110
  %285 = add nuw nsw i64 %281, 1
  %286 = icmp eq i64 %285, %217
  br i1 %286, label %287, label %280, !llvm.loop !593

287:                                              ; preds = %280, %204, %215
  %288 = phi float [ %277, %215 ], [ 0.000000e+00, %204 ], [ %277, %280 ]
  %289 = phi float [ %275, %215 ], [ 0.000000e+00, %204 ], [ %275, %280 ]
  %290 = fdiv float %289, %288
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  br label %329

291:                                              ; preds = %181
  %292 = call i32 @llvm.smin.i32(i32 %165, i32 %161)
  %293 = sitofp i32 %292 to float
  %294 = fdiv float 1.000000e+00, %293
  %295 = icmp sgt i32 %165, 0
  br i1 %295, label %296, label %329

296:                                              ; preds = %291
  %297 = zext nneg i32 %165 to i64
  %298 = add nuw nsw i64 %297, 3
  %299 = and i64 %298, 4294967292
  %300 = add nsw i64 %297, -1
  %301 = insertelement <4 x i64> poison, i64 %300, i64 0
  %302 = shufflevector <4 x i64> %301, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %303

303:                                              ; preds = %325, %296
  %304 = phi i64 [ 0, %296 ], [ %326, %325 ]
  %305 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %296 ], [ %327, %325 ]
  %306 = icmp ule <4 x i64> %305, %302
  %307 = extractelement <4 x i1> %306, i64 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = getelementptr inbounds float, ptr %185, i64 %304
  store float %294, ptr %309, align 4, !tbaa !110
  br label %310

310:                                              ; preds = %308, %303
  %311 = extractelement <4 x i1> %306, i64 1
  br i1 %311, label %312, label %315

312:                                              ; preds = %310
  %313 = or disjoint i64 %304, 1
  %314 = getelementptr inbounds float, ptr %185, i64 %313
  store float %294, ptr %314, align 4, !tbaa !110
  br label %315

315:                                              ; preds = %312, %310
  %316 = extractelement <4 x i1> %306, i64 2
  br i1 %316, label %317, label %320

317:                                              ; preds = %315
  %318 = or disjoint i64 %304, 2
  %319 = getelementptr inbounds float, ptr %185, i64 %318
  store float %294, ptr %319, align 4, !tbaa !110
  br label %320

320:                                              ; preds = %317, %315
  %321 = extractelement <4 x i1> %306, i64 3
  br i1 %321, label %322, label %325

322:                                              ; preds = %320
  %323 = or disjoint i64 %304, 3
  %324 = getelementptr inbounds float, ptr %185, i64 %323
  store float %294, ptr %324, align 4, !tbaa !110
  br label %325

325:                                              ; preds = %322, %320
  %326 = add i64 %304, 4
  %327 = add <4 x i64> %305, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %326, %299
  br i1 %328, label %329, label %303, !llvm.loop !594

329:                                              ; preds = %325, %291, %287
  %330 = phi float [ %290, %287 ], [ %294, %291 ], [ %294, %325 ]
  %331 = call ptr @psys_cache_vgroup(ptr noundef %156, ptr noundef %16, i32 noundef 0) #22
  %332 = icmp eq ptr %331, null
  br i1 %332, label %392, label %333

333:                                              ; preds = %329
  %334 = icmp sgt i32 %165, 0
  br i1 %157, label %339, label %335

335:                                              ; preds = %333
  br i1 %334, label %336, label %390

336:                                              ; preds = %335
  %337 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 48
  %338 = zext nneg i32 %165 to i64
  br label %351

339:                                              ; preds = %333
  br i1 %334, label %340, label %390

340:                                              ; preds = %339
  %341 = zext nneg i32 %165 to i64
  br label %342

342:                                              ; preds = %340, %342
  %343 = phi i64 [ 0, %340 ], [ %349, %342 ]
  %344 = getelementptr inbounds float, ptr %331, i64 %343
  %345 = load float, ptr %344, align 4, !tbaa !110
  %346 = getelementptr inbounds float, ptr %185, i64 %343
  %347 = load float, ptr %346, align 4, !tbaa !110
  %348 = fmul float %345, %347
  store float %348, ptr %346, align 4, !tbaa !110
  %349 = add nuw nsw i64 %343, 1
  %350 = icmp eq i64 %349, %341
  br i1 %350, label %390, label %342, !llvm.loop !597

351:                                              ; preds = %336, %383
  %352 = phi i64 [ 0, %336 ], [ %388, %383 ]
  %353 = load ptr, ptr %337, align 8, !tbaa !590
  %354 = trunc i64 %352 to i32
  %355 = call ptr %353(ptr noundef %156, i32 noundef %354, i32 noundef 4) #22
  %356 = load i32, ptr %355, align 4, !tbaa !309
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds float, ptr %331, i64 %357
  %359 = load float, ptr %358, align 4, !tbaa !110
  %360 = getelementptr inbounds %struct.MFace, ptr %355, i64 0, i32 1
  %361 = load i32, ptr %360, align 4, !tbaa !311
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds float, ptr %331, i64 %362
  %364 = load float, ptr %363, align 4, !tbaa !110
  %365 = fadd float %359, %364
  %366 = getelementptr inbounds %struct.MFace, ptr %355, i64 0, i32 2
  %367 = load i32, ptr %366, align 4, !tbaa !312
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds float, ptr %331, i64 %368
  %370 = load float, ptr %369, align 4, !tbaa !110
  %371 = fadd float %365, %370
  %372 = getelementptr inbounds %struct.MFace, ptr %355, i64 0, i32 3
  %373 = load i32, ptr %372, align 4, !tbaa !313
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %381, label %375

375:                                              ; preds = %351
  %376 = zext i32 %373 to i64
  %377 = getelementptr inbounds float, ptr %331, i64 %376
  %378 = load float, ptr %377, align 4, !tbaa !110
  %379 = fadd float %371, %378
  %380 = fmul float %379, 2.500000e-01
  br label %383

381:                                              ; preds = %351
  %382 = fdiv float %371, 3.000000e+00
  br label %383

383:                                              ; preds = %381, %375
  %384 = phi float [ %380, %375 ], [ %382, %381 ]
  %385 = getelementptr inbounds float, ptr %185, i64 %352
  %386 = load float, ptr %385, align 4, !tbaa !110
  %387 = fmul float %384, %386
  store float %387, ptr %385, align 4, !tbaa !110
  %388 = add nuw nsw i64 %352, 1
  %389 = icmp eq i64 %388, %338
  br i1 %389, label %390, label %351, !llvm.loop !598

390:                                              ; preds = %383, %342, %335, %339
  %391 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %391(ptr noundef nonnull %331) #22
  br label %392

392:                                              ; preds = %390, %329
  %393 = icmp sgt i32 %165, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %392
  store float 0.000000e+00, ptr %194, align 4, !tbaa !110
  br label %420

395:                                              ; preds = %392
  %396 = zext nneg i32 %165 to i64
  br label %397

397:                                              ; preds = %395, %397
  %398 = phi i64 [ 0, %395 ], [ %403, %397 ]
  %399 = phi float [ 0.000000e+00, %395 ], [ %402, %397 ]
  %400 = getelementptr inbounds float, ptr %185, i64 %398
  %401 = load float, ptr %400, align 4, !tbaa !110
  %402 = fadd float %399, %401
  %403 = add nuw nsw i64 %398, 1
  %404 = icmp eq i64 %403, %396
  br i1 %404, label %405, label %397, !llvm.loop !599

405:                                              ; preds = %397
  %406 = fcmp ogt float %402, 0.000000e+00
  %407 = fdiv float 1.000000e+00, %402
  %408 = select i1 %406, float %407, float 0.000000e+00
  store float 0.000000e+00, ptr %194, align 4, !tbaa !110
  br i1 %393, label %409, label %420

409:                                              ; preds = %405
  %410 = zext nneg i32 %165 to i64
  br label %411

411:                                              ; preds = %409, %411
  %412 = phi float [ 0.000000e+00, %409 ], [ %416, %411 ]
  %413 = phi i64 [ 0, %409 ], [ %417, %411 ]
  %414 = getelementptr inbounds float, ptr %185, i64 %413
  %415 = load float, ptr %414, align 4, !tbaa !110
  %416 = call float @llvm.fmuladd.f32(float %415, float %408, float %412)
  %417 = add nuw nsw i64 %413, 1
  %418 = getelementptr inbounds float, ptr %194, i64 %417
  store float %416, ptr %418, align 4, !tbaa !110
  %419 = icmp eq i64 %417, %410
  br i1 %419, label %420, label %411, !llvm.loop !600

420:                                              ; preds = %411, %394, %405
  %421 = load i32, ptr %197, align 8, !tbaa !276
  %422 = and i32 %421, 128
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %429

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 48
  %426 = load i16, ptr %425, align 4, !tbaa !601
  %427 = and i16 %426, 1
  %428 = icmp eq i16 %427, 0
  br i1 %428, label %448, label %429

429:                                              ; preds = %424, %420
  %430 = icmp sgt i32 %161, 0
  br i1 %430, label %431, label %497

431:                                              ; preds = %429
  %432 = getelementptr inbounds float, ptr %194, i64 %183
  %433 = add nsw i32 %165, -1
  %434 = zext nneg i32 %161 to i64
  br label %435

435:                                              ; preds = %431, %435
  %436 = phi i64 [ 0, %431 ], [ %446, %435 ]
  %437 = call float @BLI_frand() #22
  %438 = load float, ptr %432, align 4, !tbaa !110
  %439 = fmul float %437, %438
  %440 = call fastcc i32 @distribute_binary_search(ptr noundef nonnull %194, i32 noundef %165, float noundef %439) #21, !range !602
  %441 = getelementptr inbounds i32, ptr %189, i64 %436
  %442 = icmp sgt i32 %165, %440
  %443 = select i1 %442, i32 %440, i32 %433
  store i32 %443, ptr %441, align 4, !tbaa !100
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, ptr %196, i64 %444
  store float %439, ptr %445, align 4, !tbaa !110
  %446 = add nuw nsw i64 %436, 1
  %447 = icmp eq i64 %446, %434
  br i1 %447, label %497, label %435, !llvm.loop !603

448:                                              ; preds = %424
  %449 = icmp slt i32 %161, 2
  %450 = sitofp i32 %161 to double
  %451 = fdiv double 1.000000e+00, %450
  %452 = select i1 %449, double 5.000000e-01, double %451
  %453 = icmp sgt i32 %161, 0
  br i1 %453, label %454, label %497

454:                                              ; preds = %448
  %455 = add nsw i32 %165, -1
  %456 = add nsw i32 %161, -1
  %457 = zext nneg i32 %456 to i64
  %458 = zext nneg i32 %161 to i64
  br label %459

459:                                              ; preds = %454, %489
  %460 = phi i64 [ 0, %454 ], [ %494, %489 ]
  %461 = phi double [ 0x3EB0C6F7A0B5ED8D, %454 ], [ %495, %489 ]
  %462 = phi i32 [ 0, %454 ], [ %477, %489 ]
  %463 = sext i32 %462 to i64
  %464 = call i32 @llvm.smax.i32(i32 %462, i32 %165)
  br label %465

465:                                              ; preds = %459, %468
  %466 = phi i64 [ %463, %459 ], [ %469, %468 ]
  %467 = icmp slt i64 %466, %183
  br i1 %467, label %468, label %476

468:                                              ; preds = %465
  %469 = add nsw i64 %466, 1
  %470 = getelementptr inbounds float, ptr %194, i64 %469
  %471 = load float, ptr %470, align 4, !tbaa !110
  %472 = fpext float %471 to double
  %473 = fcmp ogt double %461, %472
  br i1 %473, label %465, label %474, !llvm.loop !604

474:                                              ; preds = %468
  %475 = trunc i64 %466 to i32
  br label %476

476:                                              ; preds = %465, %474
  %477 = phi i32 [ %475, %474 ], [ %464, %465 ]
  %478 = call i32 @llvm.smin.i32(i32 %455, i32 %477)
  %479 = getelementptr inbounds i32, ptr %189, i64 %460
  store i32 %478, ptr %479, align 4, !tbaa !100
  %480 = icmp eq i64 %460, %457
  br i1 %480, label %481, label %489

481:                                              ; preds = %476
  %482 = sext i32 %478 to i64
  %483 = getelementptr inbounds float, ptr %185, i64 %482
  %484 = load float, ptr %483, align 4, !tbaa !110
  %485 = fcmp oeq float %484, 0.000000e+00
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = getelementptr i32, ptr %479, i64 -1
  %488 = load i32, ptr %487, align 4, !tbaa !100
  store i32 %488, ptr %479, align 4, !tbaa !100
  br label %489

489:                                              ; preds = %486, %481, %476
  %490 = phi i32 [ %488, %486 ], [ %478, %481 ], [ %478, %476 ]
  %491 = fptrunc double %461 to float
  %492 = sext i32 %490 to i64
  %493 = getelementptr inbounds float, ptr %196, i64 %492
  store float %491, ptr %493, align 4, !tbaa !110
  %494 = add nuw nsw i64 %460, 1
  %495 = fadd double %452, %461
  %496 = icmp eq i64 %494, %458
  br i1 %496, label %497, label %459, !llvm.loop !605

497:                                              ; preds = %435, %489, %429, %448
  %498 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  call void %498(ptr noundef nonnull %194) #22
  %499 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 7
  %500 = load i16, ptr %499, align 8, !tbaa !54
  %501 = icmp eq i16 %500, 2
  br i1 %501, label %502, label %529

502:                                              ; preds = %497
  %503 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 19
  %504 = load i16, ptr %503, align 4, !tbaa !48
  %505 = icmp eq i16 %504, 2
  br i1 %505, label %506, label %510

506:                                              ; preds = %502
  %507 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 91
  %508 = load float, ptr %507, align 4, !tbaa !396
  %509 = fcmp une float %508, 0.000000e+00
  br i1 %509, label %529, label %510

510:                                              ; preds = %506, %502
  br i1 %157, label %511, label %517

511:                                              ; preds = %510
  %512 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 5
  %513 = load i32, ptr %512, align 8, !tbaa !606
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %529, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 50
  br label %523

517:                                              ; preds = %510
  %518 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 7
  %519 = load i32, ptr %518, align 8, !tbaa !607
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %529, label %521

521:                                              ; preds = %517
  %522 = getelementptr inbounds %struct.DerivedMesh, ptr %156, i64 0, i32 52
  br label %523

523:                                              ; preds = %521, %515
  %524 = phi ptr [ %522, %521 ], [ %516, %515 ]
  %525 = load ptr, ptr %524, align 8, !tbaa !68
  %526 = call ptr %525(ptr noundef nonnull %156, i32 noundef 7) #22
  %527 = icmp eq ptr %526, null
  br i1 %527, label %529, label %528

528:                                              ; preds = %523
  call void @qsort_r(ptr noundef %189, i64 noundef %187, i64 noundef 4, ptr noundef nonnull @distribute_compare_orig_index, ptr noundef nonnull %526) #22
  br label %529

529:                                              ; preds = %517, %511, %523, %528, %506, %497
  %530 = icmp eq i32 %162, 0
  %531 = add i32 %158, -1
  %532 = icmp ult i32 %531, 2
  %533 = and i1 %532, %530
  br i1 %533, label %534, label %568

534:                                              ; preds = %529
  %535 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 64
  %536 = load i32, ptr %535, align 8, !tbaa !608
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %545

538:                                              ; preds = %534
  %539 = sdiv i32 %161, %165
  %540 = load i32, ptr %197, align 8, !tbaa !276
  %541 = lshr i32 %540, 8
  %542 = and i32 %541, 1
  %543 = shl i32 %539, %542
  %544 = call i32 @llvm.smax.i32(i32 %543, i32 3)
  br label %545

545:                                              ; preds = %538, %534
  %546 = phi i32 [ %544, %538 ], [ %536, %534 ]
  %547 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %548 = shl nsw i32 %546, 1
  %549 = add nsw i32 %548, 2
  %550 = sext i32 %549 to i64
  %551 = shl nsw i64 %550, 2
  %552 = call ptr %547(i64 noundef %551, ptr noundef nonnull @.str.20) #22
  %553 = icmp slt i32 %546, 25
  br i1 %553, label %554, label %559

554:                                              ; preds = %545
  %555 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 23
  %556 = load i32, ptr %555, align 4, !tbaa !172
  %557 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 59
  %558 = load float, ptr %557, align 4, !tbaa !609
  call fastcc void @init_mv_jit(ptr noundef %552, i32 noundef %546, i32 noundef %556, float noundef %558) #21
  br label %565

559:                                              ; preds = %545
  %560 = add nuw nsw i32 %546, 1
  %561 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 23
  %562 = load i32, ptr %561, align 4, !tbaa !172
  %563 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 59
  %564 = load float, ptr %563, align 4, !tbaa !609
  call fastcc void @hammersley_create(ptr noundef %552, i32 noundef %560, i32 noundef %562, float noundef %564) #21
  br label %565

565:                                              ; preds = %559, %554
  %566 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 23
  %567 = load i32, ptr %566, align 4, !tbaa !172
  call void @BLI_array_randomize(ptr noundef %552, i32 noundef 8, i32 noundef %546, i32 noundef %567) #22
  br label %568

568:                                              ; preds = %565, %529
  %569 = phi i32 [ %546, %565 ], [ 1, %529 ]
  %570 = phi ptr [ %552, %565 ], [ null, %529 ]
  %571 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 3
  store ptr %159, ptr %571, align 8, !tbaa !140
  %572 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 4
  store ptr null, ptr %572, align 8, !tbaa !139
  %573 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 5
  store i32 0, ptr %573, align 8, !tbaa !610
  store ptr %16, ptr %15, align 8, !tbaa !132
  %574 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 10
  store ptr %189, ptr %574, align 8, !tbaa !137
  %575 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 6
  store ptr %570, ptr %575, align 8, !tbaa !134
  %576 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 12
  store i32 %569, ptr %576, align 8, !tbaa !611
  %577 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 7
  store ptr %196, ptr %577, align 8, !tbaa !135
  %578 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 8
  store ptr %185, ptr %578, align 8, !tbaa !136
  %579 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 9
  store float %330, ptr %579, align 8, !tbaa !612
  %580 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 13
  store i32 %163, ptr %580, align 4, !tbaa !613
  %581 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 14
  store i32 %160, ptr %581, align 8, !tbaa !614
  %582 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 15
  store i32 %162, ptr %582, align 4, !tbaa !615
  %583 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 1
  store ptr %156, ptr %583, align 8, !tbaa !116
  %584 = getelementptr inbounds %struct.ParticleThreadContext, ptr %12, i64 0, i32 16
  store ptr null, ptr %584, align 8, !tbaa !616
  br i1 %42, label %585, label %592

585:                                              ; preds = %568
  %586 = call i32 @psys_render_simplify_distribution(ptr noundef nonnull %12, i32 noundef %161) #22
  call fastcc void @alloc_child_particles(ptr noundef %16, i32 noundef %586) #21
  %587 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 28
  %588 = load i32, ptr %587, align 8, !tbaa !69
  %589 = icmp slt i32 %588, 10000
  br i1 %589, label %592, label %590

590:                                              ; preds = %585
  %591 = icmp sgt i32 %18, 0
  br i1 %591, label %592, label %606

592:                                              ; preds = %568, %585, %590
  %593 = phi i32 [ %18, %590 ], [ 1, %585 ], [ 1, %568 ]
  %594 = load ptr, ptr %15, align 8, !tbaa !132
  %595 = getelementptr inbounds %struct.ParticleSystem, ptr %594, i64 0, i32 23
  %596 = load i32, ptr %595, align 4, !tbaa !172
  %597 = add nsw i32 %596, 31415926
  %598 = zext nneg i32 %593 to i64
  br label %599

599:                                              ; preds = %592, %599
  %600 = phi i64 [ 0, %592 ], [ %604, %599 ]
  %601 = call ptr @BLI_rng_new(i32 noundef %597) #22
  %602 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %600, i32 1
  store ptr %601, ptr %602, align 8, !tbaa !141
  %603 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %600, i32 4
  store i32 %593, ptr %603, align 4, !tbaa !124
  %604 = add nuw nsw i64 %600, 1
  %605 = icmp eq i64 %604, %598
  br i1 %605, label %606, label %599, !llvm.loop !617

606:                                              ; preds = %599, %590, %26, %4, %22, %180, %60, %53, %39
  %607 = phi i32 [ 0, %53 ], [ 0, %180 ], [ 0, %60 ], [ 0, %39 ], [ 0, %22 ], [ 0, %4 ], [ 0, %26 ], [ 1, %590 ], [ 1, %599 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret i32 %607
}

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @distribute_threads_exec_cb(ptr nocapture noundef readonly %0) #2 !PGOFuncName !618 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !613
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %18 = zext nneg i32 %10 to i64
  br label %19

19:                                               ; preds = %12, %41
  %20 = phi i64 [ 0, %12 ], [ %42, %41 ]
  %21 = phi ptr [ %14, %12 ], [ %43, %41 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !121
  %23 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %15, align 8, !tbaa !141
  %28 = getelementptr inbounds i32, ptr %24, i64 %20
  %29 = load i32, ptr %28, align 4, !tbaa !100
  %30 = shl nsw i32 %29, 1
  tail call void @BLI_rng_skip(ptr noundef %27, i32 noundef %30) #22
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i32, ptr %16, align 8, !tbaa !123
  %33 = trunc i64 %20 to i32
  %34 = add nsw i32 %32, %33
  %35 = load i32, ptr %17, align 4, !tbaa !124
  %36 = srem i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call fastcc void @distribute_threads_exec(ptr noundef nonnull %0, ptr noundef null, ptr noundef %21, i32 noundef %33) #21
  br label %41

39:                                               ; preds = %31
  %40 = load ptr, ptr %15, align 8, !tbaa !141
  tail call void @BLI_rng_skip(ptr noundef %40, i32 noundef 2) #22
  br label %41

41:                                               ; preds = %38, %39
  %42 = add nuw nsw i64 %20, 1
  %43 = getelementptr inbounds %struct.ChildParticle, ptr %21, i64 1
  %44 = icmp eq i64 %42, %18
  br i1 %44, label %65, label %19, !llvm.loop !619

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %47 = load i32, ptr %46, align 8, !tbaa !57
  %48 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !123
  %50 = icmp slt i32 %49, %47
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !61
  %54 = sext i32 %49 to i64
  %55 = getelementptr inbounds %struct.ParticleData, ptr %53, i64 %54
  %56 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  br label %57

57:                                               ; preds = %51, %57
  %58 = phi i32 [ %49, %51 ], [ %61, %57 ]
  %59 = phi ptr [ %55, %51 ], [ %63, %57 ]
  tail call fastcc void @distribute_threads_exec(ptr noundef nonnull %0, ptr noundef %59, ptr noundef null, i32 noundef %58) #21
  %60 = load i32, ptr %56, align 4, !tbaa !124
  %61 = add nsw i32 %60, %58
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.ParticleData, ptr %59, i64 %62
  %64 = icmp slt i32 %61, %47
  br i1 %64, label %57, label %65, !llvm.loop !620

65:                                               ; preds = %57, %41, %45, %8
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @distribute_simple_children(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #2 !PGOFuncName !621 {
  %5 = tail call fastcc i32 @get_psys_child_number(ptr noundef %0, ptr noundef %3) #21
  %6 = tail call fastcc i32 @get_psys_tot_child(ptr noundef %0, ptr noundef %3) #21
  tail call fastcc void @alloc_child_particles(ptr noundef %3, i32 noundef %6) #21
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %8, %39
  %14 = phi i32 [ %12, %8 ], [ %40, %39 ]
  %15 = phi ptr [ %10, %8 ], [ %41, %39 ]
  %16 = phi i32 [ 0, %8 ], [ %42, %39 ]
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13, %34
  %19 = phi ptr [ %36, %34 ], [ %15, %13 ]
  %20 = phi i32 [ %35, %34 ], [ 0, %13 ]
  %21 = getelementptr inbounds %struct.ChildParticle, ptr %19, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !622
  %22 = getelementptr inbounds %struct.ChildParticle, ptr %19, i64 0, i32 4
  %23 = getelementptr inbounds %struct.ChildParticle, ptr %19, i64 0, i32 4, i64 1
  %24 = getelementptr inbounds %struct.ChildParticle, ptr %19, i64 0, i32 4, i64 2
  br label %25

25:                                               ; preds = %18, %25
  %26 = tail call float @BLI_frand() #22
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float -1.000000e+00)
  store float %27, ptr %22, align 4, !tbaa !110
  %28 = tail call float @BLI_frand() #22
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 2.000000e+00, float -1.000000e+00)
  store float %29, ptr %23, align 4, !tbaa !110
  %30 = tail call float @BLI_frand() #22
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 2.000000e+00, float -1.000000e+00)
  store float %31, ptr %24, align 4, !tbaa !110
  %32 = tail call fastcc float @len_v3(ptr noundef nonnull %22) #21
  %33 = fcmp ult float %32, 1.000000e+00
  br i1 %33, label %34, label %25, !llvm.loop !623

34:                                               ; preds = %25
  store i32 -1, ptr %19, align 4, !tbaa !579
  %35 = add nuw nsw i32 %20, 1
  %36 = getelementptr inbounds %struct.ChildParticle, ptr %19, i64 1
  %37 = load i32, ptr %11, align 8, !tbaa !57
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %18, label %39, !llvm.loop !624

39:                                               ; preds = %34, %13
  %40 = phi i32 [ %14, %13 ], [ %37, %34 ]
  %41 = phi ptr [ %15, %13 ], [ %36, %34 ]
  %42 = add nuw nsw i32 %16, 1
  %43 = icmp eq i32 %42, %5
  br i1 %43, label %44, label %13, !llvm.loop !625

44:                                               ; preds = %39, %4
  tail call void @psys_calc_dmcache(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @distribute_grid(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !626 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 0) #22
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = tail call i32 %19(ptr noundef %0) #22
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !78
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 65
  %26 = load i32, ptr %25, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %27 = icmp sgt i32 %20, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %17) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %17) #21
  %29 = icmp eq i32 %20, 1
  br i1 %29, label %37, label %30

30:                                               ; preds = %28, %30
  %31 = phi ptr [ %33, %30 ], [ %17, %28 ]
  %32 = phi i32 [ %34, %30 ], [ 1, %28 ]
  %33 = getelementptr inbounds %struct.MVert, ptr %31, i64 1
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %33) #22
  %34 = add nuw nsw i32 %32, 1
  %35 = icmp eq i32 %34, %20
  br i1 %35, label %37, label %30, !llvm.loop !627

36:                                               ; preds = %2
  call fastcc void @zero_v3(ptr noundef nonnull %3) #21
  call fastcc void @zero_v3(ptr noundef nonnull %4) #21
  br label %37

37:                                               ; preds = %30, %28, %36
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %38 = call fastcc i32 @axis_dominant_v3_single(ptr noundef nonnull %5) #21, !range !628
  %39 = freeze i32 %38
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !110
  %43 = sitofp i32 %26 to float
  %44 = fdiv float %42, %43
  %45 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %40
  store i32 %26, ptr %45, align 4, !tbaa !100
  %46 = add i32 %39, 1
  %47 = icmp eq i32 %46, 3
  %48 = select i1 %47, i32 0, i32 %46
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !110
  %52 = fdiv float %51, %44
  %53 = call float @llvm.ceil.f32(float %52)
  %54 = fptosi float %53 to i32
  %55 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %49
  store i32 %54, ptr %55, align 4, !tbaa !100
  %56 = add nuw nsw i32 %39, 2
  %57 = urem i32 %56, 3
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !110
  %61 = fdiv float %60, %44
  %62 = call float @llvm.ceil.f32(float %61)
  %63 = fptosi float %62 to i32
  %64 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %58
  store i32 %63, ptr %64, align 4, !tbaa !100
  %65 = load i32, ptr %55, align 4, !tbaa !100
  %66 = call i32 @llvm.smin.i32(i32 %65, i32 %26)
  store i32 %66, ptr %55, align 4, !tbaa !100
  %67 = load i32, ptr %64, align 4, !tbaa !100
  %68 = call i32 @llvm.smin.i32(i32 %67, i32 %26)
  store i32 %68, ptr %64, align 4, !tbaa !100
  %69 = load i32, ptr %6, align 4
  %70 = call i32 @llvm.smax.i32(i32 %69, i32 1)
  store i32 %70, ptr %6, align 4, !tbaa !100
  %71 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  %72 = load i32, ptr %71, align 4
  %73 = call i32 @llvm.smax.i32(i32 %72, i32 1)
  store i32 %73, ptr %71, align 4, !tbaa !100
  %74 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @llvm.smax.i32(i32 %75, i32 1)
  store i32 %76, ptr %74, align 4, !tbaa !100
  %77 = fmul float %44, 5.000000e-01
  %78 = load <2 x float>, ptr %5, align 8
  %79 = insertelement <2 x float> poison, float %44, i64 0
  %80 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> zeroinitializer
  %81 = fcmp olt <2 x float> %80, %78
  %82 = fmul <2 x float> %78, <float 5.000000e-01, float 5.000000e-01>
  %83 = insertelement <2 x float> poison, float %77, i64 0
  %84 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> zeroinitializer
  %85 = select <2 x i1> %81, <2 x float> %84, <2 x float> %82
  %86 = load <2 x float>, ptr %3, align 8, !tbaa !110
  %87 = fadd <2 x float> %86, %85
  store <2 x float> %87, ptr %3, align 8, !tbaa !110
  %88 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %89 = load float, ptr %88, align 8
  %90 = fcmp olt float %44, %89
  %91 = fmul float %89, 5.000000e-01
  %92 = select i1 %90, float %77, float %91
  %93 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %94 = load float, ptr %93, align 8, !tbaa !110
  %95 = fadd float %94, %92
  store float %95, ptr %93, align 8, !tbaa !110
  %96 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !61
  %98 = icmp slt i32 %26, 1
  br i1 %98, label %133, label %99

99:                                               ; preds = %37
  %100 = extractelement <2 x float> %87, i64 0
  %101 = extractelement <2 x float> %87, i64 1
  br label %102

102:                                              ; preds = %99, %130
  %103 = phi ptr [ %125, %130 ], [ %97, %99 ]
  %104 = phi i32 [ %131, %130 ], [ 0, %99 ]
  %105 = sitofp i32 %104 to float
  %106 = call float @llvm.fmuladd.f32(float %105, float %44, float %100)
  br label %107

107:                                              ; preds = %102, %127
  %108 = phi ptr [ %103, %102 ], [ %125, %127 ]
  %109 = phi i32 [ 0, %102 ], [ %128, %127 ]
  %110 = sitofp i32 %109 to float
  %111 = call float @llvm.fmuladd.f32(float %110, float %44, float %101)
  br label %112

112:                                              ; preds = %107, %112
  %113 = phi ptr [ %108, %107 ], [ %125, %112 ]
  %114 = phi i32 [ 0, %107 ], [ %124, %112 ]
  %115 = getelementptr inbounds %struct.ParticleData, ptr %113, i64 0, i32 11
  store float %106, ptr %115, align 8, !tbaa !110
  %116 = getelementptr inbounds %struct.ParticleData, ptr %113, i64 0, i32 11, i64 1
  store float %111, ptr %116, align 4, !tbaa !110
  %117 = sitofp i32 %114 to float
  %118 = call float @llvm.fmuladd.f32(float %117, float %44, float %95)
  %119 = getelementptr inbounds %struct.ParticleData, ptr %113, i64 0, i32 11, i64 2
  store float %118, ptr %119, align 8, !tbaa !110
  %120 = getelementptr inbounds %struct.ParticleData, ptr %113, i64 0, i32 17
  %121 = load i16, ptr %120, align 4, !tbaa !62
  %122 = or i16 %121, 1
  store i16 %122, ptr %120, align 4, !tbaa !62
  %123 = getelementptr inbounds %struct.ParticleData, ptr %113, i64 0, i32 16
  store i32 0, ptr %123, align 8, !tbaa !147
  %124 = add nuw nsw i32 %114, 1
  %125 = getelementptr inbounds %struct.ParticleData, ptr %113, i64 1
  %126 = icmp eq i32 %124, %26
  br i1 %126, label %127, label %112, !llvm.loop !629

127:                                              ; preds = %112
  %128 = add nuw nsw i32 %109, 1
  %129 = icmp eq i32 %128, %26
  br i1 %129, label %130, label %107, !llvm.loop !630

130:                                              ; preds = %127
  %131 = add nuw nsw i32 %104, 1
  %132 = icmp eq i32 %131, %26
  br i1 %132, label %133, label %102, !llvm.loop !631

133:                                              ; preds = %130, %37
  %134 = icmp eq i16 %24, 0
  br i1 %134, label %135, label %173

135:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %136 = fsub <2 x float> %87, %84
  store <2 x float> %136, ptr %3, align 8, !tbaa !110
  %137 = fsub float %95, %77
  store float %137, ptr %93, align 8, !tbaa !110
  br i1 %27, label %138, label %172

138:                                              ; preds = %135
  %139 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %140 = add nsw i32 %70, -1
  %141 = sitofp i32 %140 to float
  %142 = add nsw i32 %73, -1
  %143 = sitofp i32 %142 to float
  %144 = add nsw i32 %76, -1
  %145 = sitofp i32 %144 to float
  br label %146

146:                                              ; preds = %138, %146
  %147 = phi ptr [ %17, %138 ], [ %170, %146 ]
  %148 = phi i32 [ 0, %138 ], [ %169, %146 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %147, ptr noundef nonnull %3) #21
  %149 = load <2 x float>, ptr %7, align 8, !tbaa !110
  %150 = fdiv <2 x float> %149, %78
  store <2 x float> %150, ptr %7, align 8, !tbaa !110
  %151 = load float, ptr %139, align 8, !tbaa !110
  %152 = fdiv float %151, %89
  store float %152, ptr %139, align 8, !tbaa !110
  %153 = extractelement <2 x float> %150, i64 0
  %154 = fmul float %153, %141
  %155 = fptosi float %154 to i32
  %156 = mul nsw i32 %26, %155
  %157 = extractelement <2 x float> %150, i64 1
  %158 = fmul float %157, %143
  %159 = fptosi float %158 to i32
  %160 = add nsw i32 %156, %159
  %161 = mul nsw i32 %160, %26
  %162 = fmul float %152, %145
  %163 = fptosi float %162 to i32
  %164 = add nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ParticleData, ptr %97, i64 %165, i32 17
  %167 = load i16, ptr %166, align 4, !tbaa !62
  %168 = and i16 %167, -2
  store i16 %168, ptr %166, align 4, !tbaa !62
  %169 = add nuw nsw i32 %148, 1
  %170 = getelementptr inbounds %struct.MVert, ptr %147, i64 1
  %171 = icmp eq i32 %169, %20
  br i1 %171, label %172, label %146, !llvm.loop !632

172:                                              ; preds = %146, %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  br label %345

173:                                              ; preds = %133
  %174 = icmp eq i16 %24, 1
  %175 = icmp eq i16 %24, 2
  %176 = icmp ult i16 %24, 3
  br i1 %176, label %177, label %345

177:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #23
  %178 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %179 = load ptr, ptr %178, align 8, !tbaa !94
  %180 = call i32 %179(ptr noundef %0) #22
  %181 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %182 = load ptr, ptr %181, align 8, !tbaa !96
  %183 = call ptr %182(ptr noundef %0, i32 noundef 4) #22
  %184 = mul nsw i32 %26, %26
  %185 = icmp sgt i32 %180, 0
  %186 = zext nneg i32 %70 to i64
  br label %190

187:                                              ; preds = %341, %195
  %188 = icmp ult i64 %191, 2
  %189 = and i1 %174, %188
  br i1 %189, label %190, label %344, !llvm.loop !633

190:                                              ; preds = %177, %187
  %191 = phi i64 [ 0, %177 ], [ %199, %187 ]
  %192 = trunc i64 %191 to i32
  switch i32 %192, label %194 [
    i32 0, label %195
    i32 1, label %193
  ]

193:                                              ; preds = %190
  br label %195

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %190, %193, %194
  %196 = phi i32 [ %26, %193 ], [ 1, %194 ], [ %184, %190 ]
  %197 = phi i32 [ 1, %193 ], [ %184, %194 ], [ %26, %190 ]
  %198 = phi i32 [ %184, %193 ], [ %26, %194 ], [ 1, %190 ]
  %199 = add i64 %191, 1
  %200 = icmp eq i64 %199, 3
  %201 = and i64 %199, 4294967295
  %202 = select i1 %200, i64 0, i64 %201
  %203 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !100
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %187

206:                                              ; preds = %195
  %207 = trunc i64 %191 to i32
  %208 = add i32 %207, 2
  %209 = add i32 %207, -1
  %210 = icmp ult i32 %208, 3
  %211 = select i1 %210, i32 %208, i32 %209
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !100
  %215 = icmp sgt i32 %214, 0
  %216 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %191
  %217 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %191
  %218 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %191
  %219 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %191
  %220 = sext i32 %196 to i64
  %221 = sext i32 %198 to i64
  %222 = sext i32 %197 to i64
  %223 = zext nneg i32 %204 to i64
  %224 = zext nneg i32 %214 to i64
  br label %225

225:                                              ; preds = %206, %341
  %226 = phi i64 [ 0, %206 ], [ %342, %341 ]
  br i1 %215, label %227, label %341

227:                                              ; preds = %225
  %228 = mul nsw i64 %226, %222
  %229 = load float, ptr %216, align 4, !tbaa !110
  %230 = fcmp olt float %44, %229
  %231 = fmul float %229, 5.000000e-01
  %232 = select i1 %230, float %77, float %231
  %233 = call float @llvm.fmuladd.f32(float %44, float 0x3F50624DE0000000, float %229)
  br label %234

234:                                              ; preds = %227, %338
  %235 = phi i64 [ 0, %227 ], [ %339, %338 ]
  %236 = load ptr, ptr %96, align 8, !tbaa !61
  %237 = getelementptr inbounds %struct.ParticleData, ptr %236, i64 %228
  %238 = mul nsw i64 %235, %221
  %239 = getelementptr inbounds %struct.ParticleData, ptr %237, i64 %238
  %240 = getelementptr inbounds %struct.ParticleData, ptr %237, i64 %238, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %240) #21
  %241 = load float, ptr %217, align 4, !tbaa !110
  %242 = fsub float %241, %232
  store float %242, ptr %217, align 4, !tbaa !110
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  %243 = load float, ptr %218, align 4, !tbaa !110
  %244 = fadd float %233, %243
  store float %244, ptr %218, align 4, !tbaa !110
  %245 = call float @llvm.fmuladd.f32(float %44, float 0xBF50624DE0000000, float %242)
  store float %245, ptr %217, align 4, !tbaa !110
  br i1 %185, label %246, label %307

246:                                              ; preds = %234, %303
  %247 = phi i32 [ %304, %303 ], [ 0, %234 ]
  %248 = phi ptr [ %305, %303 ], [ %183, %234 ]
  %249 = load i32, ptr %248, align 4, !tbaa !309
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.MVert, ptr %17, i64 %250
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %251) #21
  %252 = getelementptr inbounds %struct.MFace, ptr %248, i64 0, i32 1
  %253 = load i32, ptr %252, align 4, !tbaa !311
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.MVert, ptr %17, i64 %254
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %255) #21
  %256 = getelementptr inbounds %struct.MFace, ptr %248, i64 0, i32 2
  %257 = load i32, ptr %256, align 4, !tbaa !312
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.MVert, ptr %17, i64 %258
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %259) #21
  %260 = call zeroext i8 @isect_axial_line_tri_v3(i32 noundef %192, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %14) #22
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %278, label %262

262:                                              ; preds = %246
  %263 = load float, ptr %14, align 4, !tbaa !110
  %264 = load i32, ptr %219, align 4, !tbaa !100
  %265 = sitofp i32 %264 to float
  %266 = fmul float %263, %265
  %267 = fptosi float %266 to i32
  %268 = mul nsw i32 %196, %267
  %269 = sext i32 %268 to i64
  br i1 %174, label %270, label %274

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.ParticleData, ptr %239, i64 %269, i32 17
  %272 = load i16, ptr %271, align 4, !tbaa !62
  %273 = and i16 %272, -2
  store i16 %273, ptr %271, align 4, !tbaa !62
  br label %303

274:                                              ; preds = %262
  %275 = getelementptr inbounds %struct.ParticleData, ptr %239, i64 %269, i32 16
  %276 = load i32, ptr %275, align 8, !tbaa !147
  %277 = add nsw i32 %276, 1
  store i32 %277, ptr %275, align 8, !tbaa !147
  br label %303

278:                                              ; preds = %246
  %279 = getelementptr inbounds %struct.MFace, ptr %248, i64 0, i32 3
  %280 = load i32, ptr %279, align 4, !tbaa !313
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %303, label %282

282:                                              ; preds = %278
  %283 = zext i32 %280 to i64
  %284 = getelementptr inbounds %struct.MVert, ptr %17, i64 %283
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %284) #21
  %285 = call zeroext i8 @isect_axial_line_tri_v3(i32 noundef %192, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %14) #22
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %303, label %287

287:                                              ; preds = %282
  %288 = load float, ptr %14, align 4, !tbaa !110
  %289 = load i32, ptr %219, align 4, !tbaa !100
  %290 = sitofp i32 %289 to float
  %291 = fmul float %288, %290
  %292 = fptosi float %291 to i32
  %293 = mul nsw i32 %196, %292
  %294 = sext i32 %293 to i64
  br i1 %174, label %295, label %299

295:                                              ; preds = %287
  %296 = getelementptr inbounds %struct.ParticleData, ptr %239, i64 %294, i32 17
  %297 = load i16, ptr %296, align 4, !tbaa !62
  %298 = and i16 %297, -2
  store i16 %298, ptr %296, align 4, !tbaa !62
  br label %303

299:                                              ; preds = %287
  %300 = getelementptr inbounds %struct.ParticleData, ptr %239, i64 %294, i32 16
  %301 = load i32, ptr %300, align 8, !tbaa !147
  %302 = add nsw i32 %301, 1
  store i32 %302, ptr %300, align 8, !tbaa !147
  br label %303

303:                                              ; preds = %274, %270, %282, %299, %295, %278
  %304 = add nuw nsw i32 %247, 1
  %305 = getelementptr inbounds %struct.MFace, ptr %248, i64 1
  %306 = icmp eq i32 %304, %180
  br i1 %306, label %307, label %246, !llvm.loop !634

307:                                              ; preds = %303, %234
  br i1 %175, label %308, label %338

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct.ParticleData, ptr %237, i64 %238, i32 16
  %310 = load i32, ptr %309, align 8, !tbaa !147
  %311 = srem i32 %310, 2
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %308
  %314 = add nsw i32 %310, 1
  store i32 %314, ptr %309, align 8, !tbaa !147
  br label %315

315:                                              ; preds = %313, %308
  br label %316

316:                                              ; preds = %315, %332
  %317 = phi i64 [ %336, %332 ], [ 0, %315 ]
  %318 = phi i32 [ %335, %332 ], [ %311, %315 ]
  %319 = icmp eq i32 %318, 0
  %320 = mul nsw i64 %317, %220
  br i1 %319, label %321, label %326

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.ParticleData, ptr %239, i64 %320, i32 16
  %323 = load i32, ptr %322, align 8, !tbaa !147
  %324 = and i32 %323, 1
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %316, %321
  %327 = getelementptr inbounds %struct.ParticleData, ptr %239, i64 %320, i32 17
  %328 = load i16, ptr %327, align 4, !tbaa !62
  %329 = and i16 %328, -2
  store i16 %329, ptr %327, align 4, !tbaa !62
  %330 = getelementptr inbounds %struct.ParticleData, ptr %239, i64 %320, i32 16
  %331 = load i32, ptr %330, align 8, !tbaa !147
  br label %332

332:                                              ; preds = %326, %321
  %333 = phi i32 [ %331, %326 ], [ %323, %321 ]
  %334 = add nsw i32 %333, %318
  %335 = srem i32 %334, 2
  %336 = add nuw nsw i64 %317, 1
  %337 = icmp eq i64 %336, %186
  br i1 %337, label %338, label %316, !llvm.loop !635

338:                                              ; preds = %332, %307
  %339 = add nuw nsw i64 %235, 1
  %340 = icmp eq i64 %339, %224
  br i1 %340, label %341, label %234, !llvm.loop !636

341:                                              ; preds = %338, %225
  %342 = add nuw nsw i64 %226, 1
  %343 = icmp eq i64 %342, %223
  br i1 %343, label %187, label %225, !llvm.loop !637

344:                                              ; preds = %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  br label %345

345:                                              ; preds = %344, %173, %172
  %346 = load ptr, ptr %21, align 8, !tbaa !34
  %347 = getelementptr inbounds %struct.ParticleSettings, ptr %346, i64 0, i32 5
  %348 = load i32, ptr %347, align 8, !tbaa !276
  %349 = and i32 %348, 16777216
  %350 = icmp eq i32 %349, 0
  %351 = or i1 %350, %98
  br i1 %351, label %386, label %352

352:                                              ; preds = %345
  %353 = load ptr, ptr %96, align 8, !tbaa !61
  br label %354

354:                                              ; preds = %383, %352
  %355 = phi ptr [ %353, %352 ], [ %378, %383 ]
  %356 = phi i32 [ 0, %352 ], [ %384, %383 ]
  br label %357

357:                                              ; preds = %354, %380
  %358 = phi ptr [ %378, %380 ], [ %355, %354 ]
  %359 = phi i32 [ %381, %380 ], [ 0, %354 ]
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br label %362

362:                                              ; preds = %357, %376
  %363 = phi ptr [ %358, %357 ], [ %378, %376 ]
  %364 = phi i32 [ 0, %357 ], [ %377, %376 ]
  br i1 %361, label %369, label %365

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.ParticleData, ptr %363, i64 0, i32 11
  %367 = load float, ptr %366, align 8, !tbaa !110
  %368 = fadd float %77, %367
  store float %368, ptr %366, align 8, !tbaa !110
  br label %369

369:                                              ; preds = %365, %362
  %370 = and i32 %364, 1
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.ParticleData, ptr %363, i64 0, i32 11
  %374 = load <2 x float>, ptr %373, align 8, !tbaa !110
  %375 = fadd <2 x float> %84, %374
  store <2 x float> %375, ptr %373, align 8, !tbaa !110
  br label %376

376:                                              ; preds = %369, %372
  %377 = add nuw nsw i32 %364, 1
  %378 = getelementptr inbounds %struct.ParticleData, ptr %363, i64 1
  %379 = icmp eq i32 %377, %26
  br i1 %379, label %380, label %362, !llvm.loop !638

380:                                              ; preds = %376
  %381 = add nuw nsw i32 %359, 1
  %382 = icmp eq i32 %381, %26
  br i1 %382, label %383, label %357, !llvm.loop !639

383:                                              ; preds = %380
  %384 = add nuw nsw i32 %356, 1
  %385 = icmp eq i32 %384, %26
  br i1 %385, label %386, label %354, !llvm.loop !640

386:                                              ; preds = %383, %345
  %387 = and i32 %348, 67108864
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %417, label %389

389:                                              ; preds = %386
  %390 = load ptr, ptr %96, align 8, !tbaa !61
  %391 = sext i32 %26 to i64
  %392 = zext nneg i32 %70 to i64
  %393 = zext nneg i32 %73 to i64
  br label %394

394:                                              ; preds = %389, %414
  %395 = phi i64 [ 0, %389 ], [ %415, %414 ]
  %396 = mul nsw i64 %395, %391
  br label %397

397:                                              ; preds = %394, %411
  %398 = phi i64 [ 0, %394 ], [ %412, %411 ]
  %399 = add nsw i64 %398, %396
  %400 = mul nsw i64 %399, %391
  %401 = getelementptr inbounds %struct.ParticleData, ptr %390, i64 %400
  br label %402

402:                                              ; preds = %397, %402
  %403 = phi ptr [ %401, %397 ], [ %409, %402 ]
  %404 = phi i32 [ 0, %397 ], [ %408, %402 ]
  %405 = getelementptr inbounds %struct.ParticleData, ptr %403, i64 0, i32 17
  %406 = load i16, ptr %405, align 4, !tbaa !62
  %407 = xor i16 %406, 1
  store i16 %407, ptr %405, align 4, !tbaa !62
  %408 = add nuw nsw i32 %404, 1
  %409 = getelementptr inbounds %struct.ParticleData, ptr %403, i64 1
  %410 = icmp eq i32 %408, %76
  br i1 %410, label %411, label %402, !llvm.loop !641

411:                                              ; preds = %402
  %412 = add nuw nsw i64 %398, 1
  %413 = icmp eq i64 %412, %393
  br i1 %413, label %414, label %397, !llvm.loop !642

414:                                              ; preds = %411
  %415 = add nuw nsw i64 %395, 1
  %416 = icmp eq i64 %415, %392
  br i1 %416, label %417, label %394, !llvm.loop !643

417:                                              ; preds = %414, %386
  %418 = getelementptr inbounds %struct.ParticleSettings, ptr %346, i64 0, i32 61
  %419 = load float, ptr %418, align 4, !tbaa !644
  %420 = fcmp ogt float %419, 0.000000e+00
  br i1 %420, label %421, label %458

421:                                              ; preds = %417
  %422 = fmul float %44, %419
  %423 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %424 = load i32, ptr %423, align 8, !tbaa !57
  %425 = icmp sgt i32 %424, 0
  br i1 %425, label %426, label %458

426:                                              ; preds = %421
  %427 = load ptr, ptr %96, align 8, !tbaa !61
  br label %428

428:                                              ; preds = %426, %454
  %429 = phi ptr [ %456, %454 ], [ %427, %426 ]
  %430 = phi i32 [ %455, %454 ], [ 0, %426 ]
  %431 = getelementptr inbounds %struct.ParticleData, ptr %429, i64 0, i32 17
  %432 = load i16, ptr %431, align 4, !tbaa !62
  %433 = and i16 %432, 1
  %434 = icmp eq i16 %433, 0
  br i1 %434, label %435, label %454

435:                                              ; preds = %428
  %436 = add nuw nsw i32 %430, 31
  %437 = call fastcc float @psys_frand(ptr noundef nonnull %1, i32 noundef %436) #21
  %438 = fadd float %437, -5.000000e-01
  %439 = getelementptr inbounds %struct.ParticleData, ptr %429, i64 0, i32 11
  %440 = load float, ptr %439, align 8, !tbaa !110
  %441 = call float @llvm.fmuladd.f32(float %422, float %438, float %440)
  store float %441, ptr %439, align 8, !tbaa !110
  %442 = add nuw nsw i32 %430, 32
  %443 = call fastcc float @psys_frand(ptr noundef nonnull %1, i32 noundef %442) #21
  %444 = fadd float %443, -5.000000e-01
  %445 = getelementptr inbounds %struct.ParticleData, ptr %429, i64 0, i32 11, i64 1
  %446 = load float, ptr %445, align 4, !tbaa !110
  %447 = call float @llvm.fmuladd.f32(float %422, float %444, float %446)
  store float %447, ptr %445, align 4, !tbaa !110
  %448 = add nuw nsw i32 %430, 33
  %449 = call fastcc float @psys_frand(ptr noundef nonnull %1, i32 noundef %448) #21
  %450 = fadd float %449, -5.000000e-01
  %451 = getelementptr inbounds %struct.ParticleData, ptr %429, i64 0, i32 11, i64 2
  %452 = load float, ptr %451, align 8, !tbaa !110
  %453 = call float @llvm.fmuladd.f32(float %422, float %450, float %452)
  store float %453, ptr %451, align 8, !tbaa !110
  br label %454

454:                                              ; preds = %428, %435
  %455 = add nuw nsw i32 %430, 1
  %456 = getelementptr inbounds %struct.ParticleData, ptr %429, i64 1
  %457 = icmp eq i32 %455, %424
  br i1 %457, label %458, label %428, !llvm.loop !645

458:                                              ; preds = %454, %421, %417
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @psys_particle_on_dm(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mesh_orco_verts_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_mesh_orco_verts_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @psys_cache_vgroup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @distribute_binary_search(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) unnamed_addr #18 !PGOFuncName !646 {
  %4 = fcmp oeq float %2, 0.000000e+00
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5
  br i1 %6, label %32, label %7

7:                                                ; preds = %3, %28
  %8 = phi i32 [ %30, %28 ], [ %1, %3 ]
  %9 = phi i32 [ %29, %28 ], [ 0, %3 ]
  %10 = add nsw i32 %8, %9
  %11 = sdiv i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, ptr %0, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !110
  %15 = fcmp olt float %14, %2
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = getelementptr float, ptr %13, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !110
  %19 = fcmp ult float %18, %2
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = fcmp ult float %14, %2
  br i1 %21, label %26, label %24

22:                                               ; preds = %7
  %23 = fcmp ult float %14, %2
  br i1 %23, label %32, label %24

24:                                               ; preds = %22, %20
  %25 = add nsw i32 %11, -1
  br label %28

26:                                               ; preds = %20
  %27 = add nsw i32 %11, 1
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %9, %24 ], [ %27, %26 ]
  %30 = phi i32 [ %25, %24 ], [ %8, %26 ]
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %7, !llvm.loop !647

32:                                               ; preds = %16, %28, %22, %3
  %33 = phi i32 [ 0, %3 ], [ %11, %16 ], [ %29, %28 ], [ %11, %22 ]
  ret i32 %33
}

; Function Attrs: optsize
declare void @qsort_r(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @distribute_compare_orig_index(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #11 !PGOFuncName !648 {
  %4 = load i32, ptr %0, align 4, !tbaa !100
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = load i32, ptr %1, align 4, !tbaa !100
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !100
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_mv_jit(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !649 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %59, label %6

6:                                                ; preds = %4
  %7 = sitofp i32 %1 to float
  %8 = tail call float @sqrtf(float noundef %7) #22
  %9 = fdiv float 1.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %7
  %11 = tail call float @sqrtf(float noundef %7) #22
  %12 = fdiv float %11, %7
  %13 = add nsw i32 %1, 31415926
  %14 = add nsw i32 %13, %2
  %15 = tail call ptr @BLI_rng_new(i32 noundef %14) #22
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %6
  %18 = shl nuw nsw i32 %1, 1
  %19 = fmul float %9, %3
  %20 = fmul float %7, 2.000000e+00
  %21 = zext nneg i32 %18 to i64
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %45, %22 ]
  %24 = phi float [ 0.000000e+00, %17 ], [ %44, %22 ]
  %25 = tail call float @BLI_rng_get_float(ptr noundef %15) #22
  %26 = fsub float 5.000000e-01, %25
  %27 = tail call float @llvm.fmuladd.f32(float %19, float %26, float %24)
  %28 = getelementptr inbounds float, ptr %0, i64 %23
  store float %27, ptr %28, align 4, !tbaa !110
  %29 = trunc i64 %23 to i32
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, %20
  %32 = tail call float @BLI_rng_get_float(ptr noundef %15) #22
  %33 = fsub float 5.000000e-01, %32
  %34 = tail call float @llvm.fmuladd.f32(float %19, float %33, float %31)
  %35 = or disjoint i64 %23, 1
  %36 = getelementptr inbounds float, ptr %0, i64 %35
  %37 = load float, ptr %28, align 4, !tbaa !110
  %38 = tail call float @llvm.floor.f32(float %37)
  %39 = fsub float %37, %38
  store float %39, ptr %28, align 4, !tbaa !110
  %40 = tail call float @llvm.floor.f32(float %34)
  %41 = fsub float %34, %40
  store float %41, ptr %36, align 4, !tbaa !110
  %42 = fadd float %12, %24
  %43 = tail call float @llvm.floor.f32(float %42)
  %44 = fsub float %42, %43
  %45 = add nuw nsw i64 %23, 2
  %46 = icmp ult i64 %45, %21
  br i1 %46, label %22, label %47, !llvm.loop !650

47:                                               ; preds = %22, %6
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !68
  %49 = sext i32 %1 to i64
  %50 = shl nsw i64 %49, 3
  %51 = add nsw i64 %50, 12
  %52 = tail call ptr %48(i64 noundef %51, ptr noundef nonnull @.str.21) #22
  br label %53

53:                                               ; preds = %47, %53
  %54 = phi i32 [ 0, %47 ], [ %55, %53 ]
  tail call void @BLI_jitterate1(ptr noundef %0, ptr noundef %52, i32 noundef %1, float noundef %9) #22
  tail call void @BLI_jitterate1(ptr noundef %0, ptr noundef %52, i32 noundef %1, float noundef %9) #22
  tail call void @BLI_jitterate2(ptr noundef %0, ptr noundef %52, i32 noundef %1, float noundef %10) #22
  %55 = add nuw nsw i32 %54, 1
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %53, !llvm.loop !651

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %58(ptr noundef %52) #22
  tail call void @BLI_rng_free(ptr noundef %15) #22
  br label %59

59:                                               ; preds = %4, %57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hammersley_create(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !652 {
  %5 = add nuw nsw i32 %1, 31415926
  %6 = add nsw i32 %5, %2
  %7 = tail call ptr @BLI_rng_new(i32 noundef %6) #22
  %8 = tail call double @BLI_rng_get_double(ptr noundef %7) #22
  %9 = fpext float %3 to double
  %10 = fadd double %8, %9
  %11 = tail call double @BLI_rng_get_double(ptr noundef %7) #22
  %12 = fadd double %11, %9
  tail call void @BLI_rng_free(ptr noundef %7) #22
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %4
  %15 = sitofp i32 %1 to double
  %16 = zext nneg i32 %1 to i64
  br label %17

17:                                               ; preds = %14, %33
  %18 = phi i64 [ 0, %14 ], [ %48, %33 ]
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = trunc i64 %18 to i32
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i32 [ %31, %22 ], [ %21, %20 ]
  %24 = phi double [ %30, %22 ], [ 5.000000e-01, %20 ]
  %25 = phi double [ %29, %22 ], [ 0.000000e+00, %20 ]
  %26 = and i32 %23, 1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, double -0.000000e+00, double %24
  %29 = fadd double %25, %28
  %30 = fmul double %24, 5.000000e-01
  %31 = lshr i32 %23, 1
  %32 = icmp ult i32 %23, 2
  br i1 %32, label %33, label %22, !llvm.loop !653

33:                                               ; preds = %22, %17
  %34 = phi i32 [ 0, %17 ], [ %21, %22 ]
  %35 = phi double [ 0.000000e+00, %17 ], [ %29, %22 ]
  %36 = sitofp i32 %34 to double
  %37 = fdiv double %36, %15
  %38 = fadd double %10, %37
  %39 = tail call double @fmod(double noundef %38, double noundef 1.000000e+00) #22
  %40 = fptrunc double %39 to float
  %41 = shl nuw nsw i64 %18, 1
  %42 = getelementptr inbounds float, ptr %0, i64 %41
  store float %40, ptr %42, align 4, !tbaa !110
  %43 = fadd double %12, %35
  %44 = tail call double @fmod(double noundef %43, double noundef 1.000000e+00) #22
  %45 = fptrunc double %44 to float
  %46 = or disjoint i64 %41, 1
  %47 = getelementptr inbounds float, ptr %0, i64 %46
  store float %45, ptr %47, align 4, !tbaa !110
  %48 = add nuw nsw i64 %18, 1
  %49 = icmp eq i64 %48, %16
  br i1 %49, label %50, label %17, !llvm.loop !654

50:                                               ; preds = %33, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_array_randomize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @psys_render_simplify_distribution(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_child_particles(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !655 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 19
  %10 = load i16, ptr %9, align 4, !tbaa !48
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 28
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = sext i32 %1 to i64
  %18 = shl nsw i64 %17, 6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %4, i8 0, i64 %18, i1 false)
  br label %36

19:                                               ; preds = %12, %6
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !68
  tail call void %20(ptr noundef nonnull %4) #22
  store ptr null, ptr %3, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 28
  store i32 0, ptr %21, align 8, !tbaa !69
  br label %22

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 19
  %26 = load i16, ptr %25, align 4, !tbaa !48
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 28
  store i32 %1, ptr %29, align 8, !tbaa !69
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !68
  %33 = sext i32 %1 to i64
  %34 = shl nsw i64 %33, 6
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.22) #22
  store ptr %35, ptr %3, align 8, !tbaa !67
  br label %36

36:                                               ; preds = %28, %31, %16, %22
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @axis_dominant_v3_single(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !656 {
  %2 = load float, ptr %0, align 4, !tbaa !110
  %3 = tail call float @llvm.fabs.f32(float %2)
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load <2 x float>, ptr %4, align 4, !tbaa !110
  %6 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %5)
  %7 = extractelement <2 x float> %6, i64 0
  %8 = fcmp ogt float %3, %7
  %9 = extractelement <2 x float> %6, i64 1
  %10 = fcmp ogt float %3, %9
  %11 = select i1 %10, i32 0, i32 2
  %12 = fcmp ogt float %7, %9
  %13 = select i1 %12, i32 1, i32 2
  %14 = select i1 %8, i32 %11, i32 %13
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @isect_axial_line_tri_v3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_jitterate1(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_jitterate2(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @BLI_rng_get_double(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @BLI_rng_skip(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @distribute_threads_exec(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 !PGOFuncName !657 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  %11 = alloca [10 x %struct.KDTreeNearest], align 16
  %12 = alloca [10 x i32], align 16
  %13 = alloca [10 x float], align 16
  %14 = load ptr, ptr %0, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !584
  %17 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  %19 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !613
  %21 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 14
  %22 = load i32, ptr %21, align 8, !tbaa !614
  %23 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 15
  %24 = load i32, ptr %23, align 4, !tbaa !615
  %25 = icmp eq i32 %20, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !137
  %29 = sext i32 %3 to i64
  %30 = getelementptr inbounds i32, ptr %28, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !100
  %32 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  store i32 %31, ptr %32, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %33, align 8, !tbaa !110
  br label %315

34:                                               ; preds = %4
  %35 = icmp eq i32 %20, 2
  %36 = icmp ult i32 %20, 3
  br i1 %36, label %37, label %186

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !137
  %40 = sext i32 %3 to i64
  %41 = getelementptr inbounds i32, ptr %39, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !100
  %43 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  store i32 %42, ptr %43, align 8, !tbaa !103
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 48
  %45 = load ptr, ptr %44, align 8, !tbaa !590
  %46 = tail call ptr %45(ptr noundef %18, i32 noundef %42, i32 noundef 4) #22
  switch i32 %24, label %100 [
    i32 0, label %47
    i32 1, label %91
  ]

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 12
  %49 = load i32, ptr %48, align 8, !tbaa !611
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.MFace, ptr %46, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !313
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  br i1 %54, label %57, label %56

56:                                               ; preds = %51
  tail call fastcc void @psys_uv_to_w(float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef %53, ptr noundef nonnull %55) #21
  br label %100

57:                                               ; preds = %51
  tail call fastcc void @psys_uv_to_w(float noundef 0x3FD5555560000000, float noundef 0x3FD5555560000000, i32 noundef 0, ptr noundef nonnull %55) #21
  br label %100

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !135
  %61 = sext i32 %42 to i64
  %62 = getelementptr inbounds float, ptr %60, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !110
  %64 = fpext float %63 to double
  %65 = sitofp i32 %49 to float
  %66 = fpext float %65 to double
  %67 = tail call double @fmod(double noundef %64, double noundef %66) #22
  %68 = fptrunc double %67 to float
  %69 = load ptr, ptr %59, align 8, !tbaa !135
  %70 = getelementptr inbounds float, ptr %69, i64 %61
  store float %68, ptr %70, align 4, !tbaa !110
  %71 = fcmp uno float %68, 0.000000e+00
  br i1 %71, label %100, label %72

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !134
  %75 = fptosi float %68 to i32
  %76 = shl nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %74, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !110
  %80 = or disjoint i32 %76, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr %74, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !110
  %84 = getelementptr inbounds %struct.MFace, ptr %46, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !313
  %86 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  tail call fastcc void @psys_uv_to_w(float noundef %79, float noundef %83, i32 noundef %85, ptr noundef nonnull %86) #21
  %87 = load ptr, ptr %59, align 8, !tbaa !135
  %88 = getelementptr inbounds float, ptr %87, i64 %61
  %89 = load float, ptr %88, align 4, !tbaa !110
  %90 = fadd float %89, 1.000000e+00
  store float %90, ptr %88, align 4, !tbaa !110
  br label %100

91:                                               ; preds = %37
  %92 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !141
  %94 = tail call float @BLI_rng_get_float(ptr noundef %93) #22
  %95 = load ptr, ptr %92, align 8, !tbaa !141
  %96 = tail call float @BLI_rng_get_float(ptr noundef %95) #22
  %97 = getelementptr inbounds %struct.MFace, ptr %46, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !313
  %99 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  tail call fastcc void @psys_uv_to_w(float noundef %94, float noundef %96, i32 noundef %98, ptr noundef nonnull %99) #21
  br label %100

100:                                              ; preds = %57, %56, %72, %58, %37, %91
  %101 = phi i1 [ true, %37 ], [ false, %91 ], [ true, %56 ], [ true, %57 ], [ true, %58 ], [ true, %72 ]
  %102 = phi i32 [ 2, %37 ], [ 0, %91 ], [ 2, %56 ], [ 2, %57 ], [ 2, %58 ], [ 2, %72 ]
  %103 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 12
  store float 0.000000e+00, ptr %103, align 8, !tbaa !152
  br i1 %35, label %104, label %314

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 50
  %106 = load ptr, ptr %105, align 8, !tbaa !93
  %107 = tail call ptr %106(ptr noundef nonnull %18, i32 noundef 0) #22
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 25
  %109 = load ptr, ptr %108, align 8, !tbaa !94
  %110 = tail call i32 %109(ptr noundef nonnull %18) #22
  %111 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  call void @psys_interpolate_face(ptr noundef %107, ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef nonnull %111, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #22
  %112 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef -1.000000e+02) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %5) #21
  %113 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 52
  %114 = load ptr, ptr %113, align 8, !tbaa !96
  %115 = call ptr %114(ptr noundef nonnull %18, i32 noundef 4) #22
  %116 = icmp sgt i32 %110, 0
  br i1 %116, label %117, label %312

117:                                              ; preds = %104, %162
  %118 = phi float [ %163, %162 ], [ 2.000000e+00, %104 ]
  %119 = phi i32 [ %164, %162 ], [ 0, %104 ]
  %120 = phi ptr [ %166, %162 ], [ %115, %104 ]
  %121 = phi i32 [ %165, %162 ], [ 0, %104 ]
  %122 = load i32, ptr %43, align 8, !tbaa !103
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %157, label %124

124:                                              ; preds = %117
  %125 = load i32, ptr %120, align 4, !tbaa !309
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.MVert, ptr %107, i64 %126
  %128 = getelementptr inbounds %struct.MFace, ptr %120, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !311
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.MVert, ptr %107, i64 %130
  %132 = getelementptr inbounds %struct.MFace, ptr %120, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !312
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.MVert, ptr %107, i64 %134
  %136 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %131, ptr noundef %135, ptr noundef %127, ptr noundef nonnull %10, ptr noundef null) #22
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %124
  %139 = load float, ptr %10, align 4, !tbaa !110
  %140 = fcmp olt float %139, %118
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = fmul float %139, 5.000000e+01
  store float %142, ptr %103, align 8, !tbaa !152
  br label %143

143:                                              ; preds = %138, %141, %124
  %144 = phi i32 [ 1, %141 ], [ %121, %138 ], [ %121, %124 ]
  %145 = phi float [ %139, %141 ], [ %118, %138 ], [ %118, %124 ]
  %146 = getelementptr inbounds %struct.MFace, ptr %120, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !313
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %143
  %150 = zext i32 %147 to i64
  %151 = getelementptr inbounds %struct.MVert, ptr %107, i64 %150
  %152 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %151, ptr noundef %127, ptr noundef %135, ptr noundef nonnull %10, ptr noundef null) #22
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load float, ptr %10, align 4, !tbaa !110
  %156 = fcmp olt float %155, %145
  br i1 %156, label %167, label %157

157:                                              ; preds = %143, %154, %149, %117
  %158 = phi i32 [ %121, %117 ], [ %144, %154 ], [ %144, %149 ], [ %144, %143 ]
  %159 = phi float [ %118, %117 ], [ %145, %154 ], [ %145, %149 ], [ %145, %143 ]
  %160 = add nuw nsw i32 %119, 1
  %161 = icmp eq i32 %160, %110
  br i1 %161, label %171, label %162

162:                                              ; preds = %157, %167
  %163 = phi float [ %159, %157 ], [ %155, %167 ]
  %164 = phi i32 [ %160, %157 ], [ %169, %167 ]
  %165 = phi i32 [ %158, %157 ], [ 1, %167 ]
  %166 = getelementptr inbounds %struct.MFace, ptr %120, i64 1
  br label %117, !llvm.loop !658

167:                                              ; preds = %154
  %168 = fmul float %155, 5.000000e+01
  store float %168, ptr %103, align 8, !tbaa !152
  %169 = add nuw nsw i32 %119, 1
  %170 = icmp eq i32 %169, %110
  br i1 %170, label %173, label %162

171:                                              ; preds = %157
  %172 = icmp eq i32 %158, 0
  br i1 %172, label %312, label %173

173:                                              ; preds = %167, %171
  switch i32 %24, label %314 [
    i32 0, label %174
    i32 1, label %184
  ]

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !134
  %177 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 12
  %178 = load i32, ptr %177, align 8, !tbaa !611
  %179 = shl nsw i32 %178, 1
  %180 = srem i32 %3, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, ptr %176, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !110
  br label %308

184:                                              ; preds = %173
  %185 = call float @BLI_frand() #22
  br label %308

186:                                              ; preds = %34
  %187 = icmp eq i32 %20, 4
  br i1 %187, label %188, label %315

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 10
  %190 = load ptr, ptr %189, align 8, !tbaa !137
  %191 = sext i32 %3 to i64
  %192 = getelementptr inbounds i32, ptr %190, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !100
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  store i32 0, ptr %2, align 4, !tbaa !579
  %196 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4
  %197 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %197, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %196, i8 0, i64 16, i1 false)
  br label %319

198:                                              ; preds = %188
  %199 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 48
  %200 = load ptr, ptr %199, align 8, !tbaa !590
  %201 = tail call ptr %200(ptr noundef %18, i32 noundef %193, i32 noundef 4) #22
  %202 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !141
  %204 = tail call float @BLI_rng_get_float(ptr noundef %203) #22
  %205 = load ptr, ptr %202, align 8, !tbaa !141
  %206 = tail call float @BLI_rng_get_float(ptr noundef %205) #22
  %207 = getelementptr inbounds %struct.MFace, ptr %201, i64 0, i32 3
  %208 = load i32, ptr %207, align 4, !tbaa !313
  %209 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4
  tail call fastcc void @psys_uv_to_w(float noundef %204, float noundef %206, i32 noundef %208, ptr noundef nonnull %209) #21
  %210 = load ptr, ptr %189, align 8, !tbaa !137
  %211 = getelementptr inbounds i32, ptr %210, i64 %191
  %212 = load i32, ptr %211, align 4, !tbaa !100
  store i32 %212, ptr %2, align 4, !tbaa !579
  %213 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !140
  %215 = icmp eq ptr %214, null
  br i1 %215, label %319, label %216

216:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #23
  %217 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 5
  %218 = load float, ptr %217, align 4, !tbaa !659
  call void @psys_particle_on_dm(ptr noundef nonnull %18, i32 noundef %22, i32 noundef %212, i32 noundef -2, ptr noundef nonnull %209, float noundef %218, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef null) #22
  %219 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %220 = load ptr, ptr %219, align 8, !tbaa !82
  call void @BKE_mesh_orco_verts_transform(ptr noundef %220, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1) #22
  %221 = load ptr, ptr %213, align 8, !tbaa !140
  %222 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %221, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %11, i32 noundef 3) #22
  %223 = add nsw i32 %222, -1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %11, i64 0, i64 %224, i32 1
  %226 = load float, ptr %225, align 4, !tbaa !660
  %227 = icmp sgt i32 %222, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %216
  %229 = zext nneg i32 %222 to i64
  br label %242

230:                                              ; preds = %242
  %231 = icmp ult i32 %222, 10
  br i1 %231, label %232, label %257

232:                                              ; preds = %216, %230
  %233 = phi i32 [ %222, %230 ], [ 0, %216 ]
  %234 = shl nuw nsw i32 %233, 2
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr i8, ptr %12, i64 %235
  %237 = sub nuw nsw i32 9, %233
  %238 = zext nneg i32 %237 to i64
  %239 = shl nuw nsw i64 %238, 2
  %240 = add nuw nsw i64 %239, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %236, i8 -1, i64 %240, i1 false), !tbaa !100
  %241 = getelementptr i8, ptr %13, i64 %235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %241, i8 0, i64 %240, i1 false), !tbaa !110
  br label %257

242:                                              ; preds = %228, %242
  %243 = phi i64 [ 0, %228 ], [ %255, %242 ]
  %244 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %11, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !662
  %246 = getelementptr inbounds [10 x i32], ptr %12, i64 0, i64 %243
  store i32 %245, ptr %246, align 4, !tbaa !100
  %247 = getelementptr inbounds [10 x %struct.KDTreeNearest], ptr %11, i64 0, i64 %243, i32 1
  %248 = load float, ptr %247, align 4, !tbaa !660
  %249 = fmul float %248, -6.000000e+00
  %250 = fdiv float %249, %226
  %251 = fpext float %250 to double
  %252 = call double @exp2(double %251) #23
  %253 = fptrunc double %252 to float
  %254 = getelementptr inbounds [10 x float], ptr %13, i64 0, i64 %243
  store float %253, ptr %254, align 4, !tbaa !110
  %255 = add nuw nsw i64 %243, 1
  %256 = icmp eq i64 %255, %229
  br i1 %256, label %230, label %242, !llvm.loop !663

257:                                              ; preds = %232, %230
  br i1 %227, label %258, label %262

258:                                              ; preds = %257
  %259 = zext nneg i32 %222 to i64
  br label %266

260:                                              ; preds = %281
  %261 = icmp slt i32 %282, 4
  br i1 %261, label %262, label %295

262:                                              ; preds = %257, %260
  %263 = phi float [ %283, %260 ], [ 0.000000e+00, %257 ]
  %264 = phi i32 [ %282, %260 ], [ 0, %257 ]
  %265 = sext i32 %264 to i64
  br label %288

266:                                              ; preds = %258, %281
  %267 = phi i64 [ 0, %258 ], [ %284, %281 ]
  %268 = phi float [ 0.000000e+00, %258 ], [ %283, %281 ]
  %269 = phi i32 [ 0, %258 ], [ %282, %281 ]
  %270 = getelementptr inbounds [10 x i32], ptr %12, i64 0, i64 %267
  %271 = load i32, ptr %270, align 4, !tbaa !100
  %272 = icmp sgt i32 %271, -1
  br i1 %272, label %273, label %281

273:                                              ; preds = %266
  %274 = sext i32 %269 to i64
  %275 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2, i64 %274
  store i32 %271, ptr %275, align 4, !tbaa !100
  %276 = getelementptr inbounds [10 x float], ptr %13, i64 0, i64 %267
  %277 = load float, ptr %276, align 4, !tbaa !110
  %278 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 3, i64 %274
  store float %277, ptr %278, align 4, !tbaa !110
  %279 = fadd float %268, %277
  %280 = add nsw i32 %269, 1
  br label %281

281:                                              ; preds = %266, %273
  %282 = phi i32 [ %280, %273 ], [ %269, %266 ]
  %283 = phi float [ %279, %273 ], [ %268, %266 ]
  %284 = add nuw nsw i64 %267, 1
  %285 = icmp ult i64 %284, %259
  %286 = icmp slt i32 %282, 4
  %287 = select i1 %285, i1 %286, i1 false
  br i1 %287, label %266, label %260, !llvm.loop !664

288:                                              ; preds = %262, %288
  %289 = phi i64 [ %265, %262 ], [ %292, %288 ]
  %290 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2, i64 %289
  store i32 -1, ptr %290, align 4, !tbaa !100
  %291 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 3, i64 %289
  store float 0.000000e+00, ptr %291, align 4, !tbaa !110
  %292 = add nsw i64 %289, 1
  %293 = and i64 %292, 4294967295
  %294 = icmp eq i64 %293, 4
  br i1 %294, label %295, label %288, !llvm.loop !665

295:                                              ; preds = %288, %260
  %296 = phi float [ %283, %260 ], [ %263, %288 ]
  %297 = fcmp ogt float %296, 0.000000e+00
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = insertelement <4 x float> poison, float %296, i64 0
  %300 = shufflevector <4 x float> %299, <4 x float> poison, <4 x i32> zeroinitializer
  %301 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 3, i64 0
  %302 = load <4 x float>, ptr %301, align 4, !tbaa !110
  %303 = fdiv <4 x float> %302, %300
  store <4 x float> %303, ptr %301, align 4, !tbaa !110
  br label %304

304:                                              ; preds = %298, %295
  %305 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  %306 = load i32, ptr %305, align 4, !tbaa !100
  %307 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 1
  store i32 %306, ptr %307, align 4, !tbaa !622
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %11) #23
  br label %319

308:                                              ; preds = %174, %184
  %309 = phi float [ %185, %184 ], [ %183, %174 ]
  %310 = load float, ptr %103, align 8, !tbaa !152
  %311 = fmul float %309, %310
  br label %312

312:                                              ; preds = %308, %171, %104
  %313 = phi float [ 0.000000e+00, %104 ], [ 0.000000e+00, %171 ], [ %311, %308 ]
  store float %313, ptr %103, align 8, !tbaa !152
  br label %314

314:                                              ; preds = %312, %100, %173
  br i1 %101, label %315, label %319

315:                                              ; preds = %186, %26, %314
  %316 = phi i32 [ %102, %314 ], [ 2, %26 ], [ 2, %186 ]
  %317 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !141
  call void @BLI_rng_skip(ptr noundef %318, i32 noundef %316) #22
  br label %319

319:                                              ; preds = %304, %198, %195, %314, %315
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_uv_to_w(float noundef %0, float noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !666 {
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = fadd float %0, %1
  %10 = fcmp ogt float %9, 1.000000e+00
  %11 = fsub float 1.000000e+00, %1
  %12 = fsub float 1.000000e+00, %0
  %13 = select i1 %10, float %11, float %1
  %14 = select i1 %10, float %0, float %12
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !110
  %15 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %15, align 16, !tbaa !110
  %16 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %16, align 16, !tbaa !110
  store float %14, ptr %6, align 4, !tbaa !110
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %13, ptr %17, align 4, !tbaa !110
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %18, align 4, !tbaa !110
  call void @interp_weights_poly_v3(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 3, ptr noundef nonnull %6) #22
  %19 = getelementptr inbounds float, ptr %3, i64 3
  store float 0.000000e+00, ptr %19, align 4, !tbaa !110
  br label %27

20:                                               ; preds = %4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !110
  %21 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %21, align 16, !tbaa !110
  %22 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %22, align 16, !tbaa !110
  store float %0, ptr %6, align 4, !tbaa !110
  %23 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %1, ptr %23, align 4, !tbaa !110
  %24 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !110
  %25 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %25, align 4, !tbaa !110
  %26 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %26, align 4, !tbaa !110
  call void @interp_weights_poly_v3(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %6) #22
  br label %27

27:                                               ; preds = %8, %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #23
  ret void
}

; Function Attrs: optsize
declare void @psys_interpolate_face(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @isect_line_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_find_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @psys_in_edit_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_cache_paths(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_cache_child_paths(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #20

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { cold }

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
!44 = !{i32 0, i32 5}
!45 = !{!46, !41, i64 444}
!46 = !{!"ParticleSettings", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !41, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !41, i64 176, !41, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 248, !40, i64 256, !40, i64 260, !40, i64 264, !42, i64 268, !42, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !37, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !37, i64 342, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !37, i64 376, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !37, i64 416, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !41, i64 444, !41, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !40, i64 480, !40, i64 484, !40, i64 488, !40, i64 492, !40, i64 496, !40, i64 500, !40, i64 504, !40, i64 508, !40, i64 512, !40, i64 516, !40, i64 520, !40, i64 524, !40, i64 528, !40, i64 532, !40, i64 536, !40, i64 540, !40, i64 544, !40, i64 548, !37, i64 552, !40, i64 560, !40, i64 564, !41, i64 568, !41, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !42, i64 792, !37, i64 794}
!47 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!48 = !{!46, !42, i64 188}
!49 = !{!35, !36, i64 576}
!50 = !{!51, !41, i64 16}
!51 = !{!"PointCache", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !42, i64 60, !42, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !36, i64 1280, !39, i64 1288, !36, i64 1304, !36, i64 1312}
!52 = !{!46, !42, i64 210}
!53 = !{!"particle_system.c:particles_are_dynamic"}
!54 = !{!46, !42, i64 160}
!55 = !{!35, !41, i64 316}
!56 = !{!46, !42, i64 168}
!57 = !{!35, !41, i64 320}
!58 = !{!35, !42, i64 344}
!59 = !{!35, !36, i64 40}
!60 = !{!35, !36, i64 48}
!61 = !{!35, !36, i64 24}
!62 = !{!63, !42, i64 196}
!63 = !{!"ParticleData", !64, i64 0, !64, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !41, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !41, i64 152, !41, i64 156, !37, i64 160, !40, i64 176, !40, i64 180, !40, i64 184, !41, i64 188, !41, i64 192, !42, i64 196, !42, i64 198}
!64 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !40, i64 52}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!35, !36, i64 32}
!68 = !{!36, !36, i64 0}
!69 = !{!35, !41, i64 328}
!70 = !{!35, !36, i64 608}
!71 = !{!35, !41, i64 620}
!72 = !{!35, !41, i64 616}
!73 = !{!"particle_system.c:tot_particles"}
!74 = !{!75, !36, i64 176}
!75 = !{!"PTCacheID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!76 = !{!51, !41, i64 52}
!77 = !{!46, !42, i64 164}
!78 = !{!46, !42, i64 162}
!79 = !{!46, !41, i64 332}
!80 = !{!35, !41, i64 324}
!81 = !{!46, !41, i64 324}
!82 = !{!83, !36, i64 296}
!83 = !{!"Object", !47, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !84, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !40, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !85, i64 1304, !85, i64 1312, !41, i64 1320, !41, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!84 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!85 = !{!"long", !37, i64 0}
!86 = !{!46, !42, i64 792}
!87 = !{!88, !41, i64 1024}
!88 = !{!"DerivedMesh", !89, i64 0, !89, i64 200, !89, i64 400, !89, i64 600, !89, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !36, i64 1032, !36, i64 1040, !41, i64 1048, !40, i64 1052, !41, i64 1056, !41, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!89 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!90 = !{!88, !36, i64 1104}
!91 = !{!92, !41, i64 1280}
!92 = !{!"Mesh", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !89, i64 280, !89, i64 480, !89, i64 680, !89, i64 880, !89, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !42, i64 1348, !42, i64 1350, !40, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !42, i64 1366, !36, i64 1368}
!93 = !{!88, !36, i64 1320}
!94 = !{!88, !36, i64 1120}
!95 = !{!92, !41, i64 1296}
!96 = !{!88, !36, i64 1336}
!97 = !{!88, !36, i64 1352}
!98 = !{!99, !36, i64 8}
!99 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!100 = !{!41, !41, i64 0}
!101 = !{!99, !36, i64 0}
!102 = distinct !{!102, !66}
!103 = !{!63, !41, i64 152}
!104 = !{!63, !41, i64 156}
!105 = distinct !{!105, !66}
!106 = distinct !{!106, !66}
!107 = !{!108, !36, i64 0}
!108 = !{!"ParticleSimulationData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40}
!109 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 8, !68, i64 32, i64 8, !68, i64 40, i64 4, !110}
!110 = !{!40, !40, i64 0}
!111 = !{!112, !36, i64 24}
!112 = !{!"ParticleThreadContext", !108, i64 0, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !40, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240}
!113 = !{!114, !36, i64 120}
!114 = !{!"ParticleSystemModifierData", !115, i64 0, !36, i64 112, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142}
!115 = !{!"ModifierData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!116 = !{!112, !36, i64 48}
!117 = !{!108, !36, i64 8}
!118 = !{!108, !36, i64 16}
!119 = !{!46, !42, i64 212}
!120 = !{!112, !36, i64 56}
!121 = !{!122, !36, i64 0}
!122 = !{!"ParticleThread", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28}
!123 = !{!122, !41, i64 24}
!124 = !{!122, !41, i64 28}
!125 = distinct !{!125, !66}
!126 = !{!112, !36, i64 192}
!127 = !{!112, !36, i64 200}
!128 = !{!112, !36, i64 208}
!129 = !{!112, !36, i64 216}
!130 = !{!112, !36, i64 224}
!131 = !{!112, !36, i64 232}
!132 = !{!112, !36, i64 16}
!133 = !{!35, !36, i64 136}
!134 = !{!112, !36, i64 88}
!135 = !{!112, !36, i64 96}
!136 = !{!112, !36, i64 104}
!137 = !{!112, !36, i64 120}
!138 = !{!112, !36, i64 128}
!139 = !{!112, !36, i64 72}
!140 = !{!112, !36, i64 64}
!141 = !{!122, !36, i64 8}
!142 = !{!122, !36, i64 16}
!143 = distinct !{!143, !66}
!144 = !{!46, !40, i64 284}
!145 = !{!46, !40, i64 288}
!146 = !{!63, !40, i64 140}
!147 = !{!63, !41, i64 192}
!148 = !{!63, !36, i64 128}
!149 = !{!46, !40, i64 364}
!150 = !{!46, !42, i64 170}
!151 = !{!108, !36, i64 24}
!152 = !{!63, !40, i64 176}
!153 = !{!46, !40, i64 368}
!154 = !{!46, !40, i64 356}
!155 = !{!46, !42, i64 172}
!156 = !{!46, !40, i64 396}
!157 = !{!46, !40, i64 352}
!158 = !{!46, !40, i64 348}
!159 = !{!46, !40, i64 360}
!160 = !{!161, !40, i64 0}
!161 = !{!"ParticleTexture", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56}
!162 = !{!46, !40, i64 392}
!163 = !{!46, !40, i64 400}
!164 = !{!46, !40, i64 388}
!165 = !{!"particle_system.c:normalize_v3"}
!166 = !{!"particle_system.c:mul_v3_fl"}
!167 = !{!"particle_system.c:madd_v3_v3fl"}
!168 = !{!"particle_system.c:copy_v3_v3"}
!169 = !{!"particle_system.c:dot_v3v3"}
!170 = !{!"particle_system.c:sub_v3_v3"}
!171 = !{!"particle_system.c:psys_frand"}
!172 = !{!35, !41, i64 308}
!173 = !{!"particle_system.c:zero_v3"}
!174 = !{!"particle_system.c:sub_v3_v3v3"}
!175 = !{!"particle_system.c:negate_v3_v3"}
!176 = !{!"particle_system.c:cross_v3_v3v3"}
!177 = !{!"particle_system.c:normalize_v3_v3"}
!178 = !{!"particle_system.c:mul_v3_v3fl"}
!179 = !{!"particle_system.c:negate_v3"}
!180 = !{!"particle_system.c:get_angular_velocity_vector"}
!181 = !{!35, !40, i64 296}
!182 = !{!183, !41, i64 4628}
!183 = !{!"Scene", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !184, i64 280, !193, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !39, i64 4384, !194, i64 4400, !195, i64 4416, !198, i64 4600, !36, i64 4608, !199, i64 4616, !36, i64 4640, !85, i64 4648, !85, i64 4656, !186, i64 4664, !187, i64 4824, !200, i64 4888, !36, i64 4952}
!184 = !{!"RenderData", !185, i64 0, !36, i64 248, !36, i64 256, !188, i64 264, !189, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !190, i64 544, !190, i64 560, !191, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !41, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !40, i64 660, !40, i64 664, !42, i64 668, !42, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !40, i64 2528, !40, i64 2532, !42, i64 2536, !42, i64 2538, !40, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !41, i64 2576, !40, i64 2580, !37, i64 2584, !192, i64 2616, !41, i64 3976, !41, i64 3980}
!185 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !186, i64 24, !187, i64 184}
!186 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!187 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!188 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!189 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !40, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!190 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!191 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!192 = !{!"BakeData", !185, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!193 = !{!"AudioData", !41, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !40, i64 24, !40, i64 28}
!194 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!195 = !{!"GameData", !194, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !196, i64 40, !42, i64 64, !42, i64 66, !40, i64 68, !197, i64 72, !40, i64 128, !40, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!196 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!197 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !41, i64 40, !40, i64 44, !40, i64 48, !42, i64 52, !42, i64 54}
!198 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!199 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!200 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!201 = !{!46, !36, i64 128}
!202 = !{!203, !40, i64 24}
!203 = !{!"BoidSettings", !41, i64 0, !41, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !39, i64 88}
!204 = !{!205, !40, i64 8}
!205 = !{!"BoidParticle", !36, i64 0, !206, i64 8, !37, i64 28, !37, i64 40, !40, i64 52}
!206 = !{!"BoidData", !40, i64 0, !37, i64 4, !42, i64 16, !42, i64 18}
!207 = !{!205, !42, i64 26}
!208 = !{!203, !36, i64 88}
!209 = !{!210, !41, i64 96}
!210 = !{!"BoidState", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 32, !39, i64 48, !37, i64 64, !41, i64 96, !41, i64 100, !41, i64 104, !40, i64 108, !41, i64 112, !41, i64 116, !40, i64 120, !40, i64 124}
!211 = !{!205, !42, i64 24}
!212 = !{!63, !40, i64 144}
!213 = !{!46, !40, i64 292}
!214 = !{!46, !40, i64 296}
!215 = !{!63, !40, i64 148}
!216 = !{!161, !40, i64 8}
!217 = !{!51, !36, i64 1288}
!218 = !{!63, !42, i64 198}
!219 = !{!63, !40, i64 52}
!220 = !{!"particle_system.c:evaluate_emitter_anim"}
!221 = !{!83, !36, i64 216}
!222 = !{!83, !36, i64 120}
!223 = !{!"particle_system.c:initialize_particle_texture"}
!224 = !{!161, !40, i64 12}
!225 = !{!161, !40, i64 4}
!226 = !{!227, !36, i64 16}
!227 = !{!"ParticleTarget", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36}
!228 = !{!227, !41, i64 24}
!229 = !{!227, !42, i64 28}
!230 = !{!35, !36, i64 152}
!231 = !{!227, !40, i64 36}
!232 = !{!227, !36, i64 0}
!233 = distinct !{!233, !66}
!234 = !{!46, !41, i64 572}
!235 = !{i8 0, i8 2}
!236 = !{!"particle_system.c:BLI_listbase_is_empty"}
!237 = !{!39, !36, i64 0}
!238 = !{!183, !41, i64 688}
!239 = !{!35, !36, i64 624}
!240 = !{!35, !40, i64 300}
!241 = distinct !{!241, !66}
!242 = distinct !{!242, !66}
!243 = !{!244, !36, i64 96}
!244 = !{!"SPHData", !37, i64 0, !36, i64 80, !40, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !41, i64 116, !40, i64 120, !37, i64 124, !36, i64 136, !36, i64 144}
!245 = !{!244, !36, i64 80}
!246 = !{!244, !40, i64 88}
!247 = !{!46, !36, i64 136}
!248 = !{!249, !42, i64 60}
!249 = !{!"SPHFluidSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 56, !42, i64 60, !37, i64 62}
!250 = !{!"particle_system.c:sph_springhash_build"}
!251 = distinct !{!251, !66}
!252 = !{!"particle_system.c:sph_force_cb"}
!253 = !{!244, !36, i64 104}
!254 = !{!249, !40, i64 28}
!255 = !{!249, !40, i64 32}
!256 = !{!249, !41, i64 52}
!257 = !{!249, !40, i64 4}
!258 = !{!249, !40, i64 0}
!259 = !{!63, !40, i64 180}
!260 = !{!244, !40, i64 112}
!261 = !{!249, !40, i64 44}
!262 = !{!249, !40, i64 8}
!263 = !{!249, !40, i64 36}
!264 = !{!249, !40, i64 40}
!265 = !{!266, !36, i64 8200}
!266 = !{!"SPHRangeData", !37, i64 0, !41, i64 8192, !36, i64 8200, !36, i64 8208, !36, i64 8216, !40, i64 8224, !40, i64 8228, !40, i64 8232, !41, i64 8236}
!267 = !{!266, !40, i64 8224}
!268 = !{!266, !36, i64 8216}
!269 = !{!266, !40, i64 8228}
!270 = !{!266, !41, i64 8192}
!271 = !{!272, !36, i64 0}
!272 = !{!"SPHNeighbor", !36, i64 0, !41, i64 8}
!273 = !{!272, !41, i64 8}
!274 = !{!64, !40, i64 52}
!275 = !{!46, !40, i64 404}
!276 = !{!46, !41, i64 152}
!277 = !{!278, !40, i64 0}
!278 = !{!"ParticleSpring", !40, i64 0, !37, i64 4, !41, i64 12}
!279 = !{!249, !41, i64 56}
!280 = !{!63, !40, i64 108}
!281 = !{!278, !41, i64 12}
!282 = distinct !{!282, !66}
!283 = !{!249, !40, i64 48}
!284 = !{!244, !41, i64 116}
!285 = !{!46, !42, i64 340}
!286 = !{!"particle_system.c:sph_density_accum_cb"}
!287 = !{!266, !36, i64 8208}
!288 = !{!266, !40, i64 8232}
!289 = !{!266, !41, i64 8236}
!290 = !{!"particle_system.c:sphclassical_force_cb"}
!291 = !{!63, !40, i64 184}
!292 = distinct !{!292, !66}
!293 = !{!"particle_system.c:sphclassical_density_accum_cb"}
!294 = !{!46, !40, i64 408}
!295 = !{!244, !36, i64 144}
!296 = !{!"particle_system.c:sph_evaluate_func"}
!297 = !{!35, !36, i64 632}
!298 = distinct !{!298, !66}
!299 = !{!300, !36, i64 40}
!300 = !{!"ParticleCollision", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !41, i64 72, !301, i64 80, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !37, i64 268, !37, i64 280, !37, i64 292, !37, i64 304, !40, i64 316, !41, i64 320}
!301 = !{!"ParticleCollisionElement", !37, i64 0, !37, i64 32, !37, i64 64, !37, i64 76, !37, i64 88, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !41, i64 144, !41, i64 148, !42, i64 152, !42, i64 154}
!302 = !{!303, !36, i64 160}
!303 = !{!"CollisionModifierData", !115, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !40, i64 176, !40, i64 180, !36, i64 184}
!304 = !{!303, !36, i64 112}
!305 = !{!303, !36, i64 152}
!306 = !{!307, !40, i64 28}
!307 = !{!"BVHTreeRayHit", !41, i64 0, !37, i64 4, !37, i64 16, !40, i64 28, !41, i64 32}
!308 = !{!300, !40, i64 68}
!309 = !{!310, !41, i64 0}
!310 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !37, i64 18, !37, i64 19}
!311 = !{!310, !41, i64 4}
!312 = !{!310, !41, i64 8}
!313 = !{!310, !41, i64 12}
!314 = !{!301, !41, i64 144}
!315 = !{!301, !42, i64 154}
!316 = !{!301, !41, i64 148}
!317 = !{!300, !36, i64 8}
!318 = !{!300, !36, i64 0}
!319 = !{!300, !41, i64 228}
!320 = !{!300, !41, i64 224}
!321 = !{!322, !40, i64 24}
!322 = !{!"BVHTreeRay", !37, i64 0, !37, i64 12, !40, i64 24}
!323 = !{i32 0, i32 2}
!324 = !{!300, !42, i64 234}
!325 = !{!307, !41, i64 0}
!326 = distinct !{!326, !66}
!327 = !{!"particle_system.c:collision_sphere_to_tri"}
!328 = !{!301, !42, i64 152}
!329 = !{i64 0, i64 32, !330, i64 32, i64 32, !330, i64 64, i64 12, !330, i64 76, i64 12, !330, i64 88, i64 12, !330, i64 100, i64 12, !330, i64 112, i64 12, !330, i64 124, i64 12, !330, i64 136, i64 8, !330, i64 144, i64 4, !100, i64 148, i64 4, !100, i64 152, i64 2, !331, i64 154, i64 2, !331}
!330 = !{!37, !37, i64 0}
!331 = !{!42, !42, i64 0}
!332 = !{!"particle_system.c:collision_sphere_to_edges"}
!333 = distinct !{!333, !66}
!334 = !{!"particle_system.c:collision_sphere_to_verts"}
!335 = distinct !{!335, !66}
!336 = !{!"particle_system.c:collision_point_velocity"}
!337 = !{!46, !42, i64 192}
!338 = !{!46, !42, i64 184}
!339 = !{!46, !40, i64 560}
!340 = !{!46, !40, i64 564}
!341 = distinct !{!341, !66}
!342 = distinct !{!342, !66}
!343 = !{!35, !36, i64 640}
!344 = !{!345, !41, i64 76}
!345 = !{!"ParticleDrawData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!346 = !{!114, !42, i64 140}
!347 = !{!46, !36, i64 120}
!348 = !{!35, !42, i64 340}
!349 = !{!46, !42, i64 202}
!350 = distinct !{!350, !66}
!351 = !{!46, !40, i64 412}
!352 = distinct !{!352, !66}
!353 = !{!"particle_system.c:psys_prepare_physics"}
!354 = !{!210, !36, i64 16}
!355 = !{!356, !41, i64 20}
!356 = !{!"BoidRule", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24}
!357 = !{!210, !41, i64 100}
!358 = !{!"particle_system.c:hair_needs_recalc"}
!359 = !{!360, !41, i64 308}
!360 = !{!"PTCacheEdit", !39, i64 0, !36, i64 16, !36, i64 24, !75, i64 32, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !39, i64 280, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !37, i64 312, !37, i64 315}
!361 = !{!"particle_system.c:system_step"}
!362 = !{!51, !41, i64 24}
!363 = !{!51, !41, i64 40}
!364 = distinct !{!364, !66}
!365 = !{!35, !40, i64 648}
!366 = !{!108, !40, i64 40}
!367 = distinct !{!367, !66}
!368 = distinct !{!368, !66}
!369 = !{!"particle_system.c:save_hair"}
!370 = !{!63, !41, i64 136}
!371 = !{!63, !36, i64 112}
!372 = !{!373, !40, i64 12}
!373 = !{!"HairKey", !37, i64 0, !40, i64 12, !40, i64 16, !42, i64 20, !42, i64 22}
!374 = !{!373, !40, i64 16}
!375 = distinct !{!375, !66}
!376 = !{!"particle_system.c:hair_step"}
!377 = distinct !{!377, !66}
!378 = !{!35, !36, i64 104}
!379 = !{!"particle_system.c:particles_fluid_step"}
!380 = !{!"particle_system.c:emit_particles"}
!381 = !{!"particle_system.c:distribute_particles"}
!382 = !{!"particle_system.c:initialize_all_particles"}
!383 = distinct !{!383, !66}
!384 = distinct !{!384, !66}
!385 = distinct !{!385, !66}
!386 = distinct !{!386, !66}
!387 = !{!"particle_system.c:set_keyed_keys"}
!388 = !{!63, !36, i64 120}
!389 = distinct !{!389, !66}
!390 = !{!227, !40, i64 32}
!391 = distinct !{!391, !66}
!392 = distinct !{!392, !66}
!393 = !{!"particle_system.c:psys_update_path_cache"}
!394 = !{!183, !36, i64 264}
!395 = !{!83, !41, i64 432}
!396 = !{!46, !40, i64 452}
!397 = !{!398, !42, i64 0}
!398 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !37, i64 8, !36, i64 120, !40, i64 128, !40, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !36, i64 160}
!399 = !{!400, !36, i64 32}
!400 = !{!"Base", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!401 = !{!402, !42, i64 122}
!402 = !{!"ParticleInstanceModifierData", !115, i64 0, !36, i64 112, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !40, i64 128, !40, i64 132}
!403 = !{!402, !36, i64 112}
!404 = !{!402, !42, i64 120}
!405 = !{!83, !36, i64 1224}
!406 = distinct !{!406, !66}
!407 = !{!35, !36, i64 56}
!408 = !{!"particle_system.c:madd_v3_v3v3fl"}
!409 = !{!"particle_system.c:sph_spring_add"}
!410 = !{!"particle_system.c:sph_particle_courant"}
!411 = distinct !{!411, !66}
!412 = !{!244, !40, i64 120}
!413 = !{!"particle_system.c:len_v3"}
!414 = !{!"particle_system.c:add_v3_v3"}
!415 = !{!"particle_system.c:pow2"}
!416 = !{!"particle_system.c:sphclassical_neighbour_accum_cb"}
!417 = !{!"particle_system.c:pow7"}
!418 = !{!"particle_system.c:pow3"}
!419 = !{!"particle_system.c:pow4"}
!420 = !{!"particle_system.c:collision_newton_rhapson"}
!421 = !{!300, !40, i64 244}
!422 = !{!300, !40, i64 48}
!423 = !{ptr @nr_distance_to_edge, ptr @nr_distance_to_vert, ptr @nr_signed_distance_to_plane}
!424 = distinct !{!424, !66}
!425 = !{!"particle_system.c:nr_signed_distance_to_plane"}
!426 = !{!"particle_system.c:collision_interpolate_element"}
!427 = !{!300, !40, i64 52}
!428 = !{!300, !40, i64 56}
!429 = !{!"particle_system.c:nr_distance_to_edge"}
!430 = !{!"particle_system.c:nr_distance_to_vert"}
!431 = !{!"particle_system.c:len_v3v3"}
!432 = !{!"particle_system.c:fluid_default_settings"}
!433 = !{!249, !40, i64 16}
!434 = !{!"particle_system.c:psys_clear_temp_pointcache"}
!435 = !{!"particle_system.c:reset_all_particles"}
!436 = distinct !{!436, !66}
!437 = !{!"particle_system.c:cached_step"}
!438 = !{!161, !40, i64 16}
!439 = distinct !{!439, !66}
!440 = !{!"particle_system.c:update_children"}
!441 = !{!"particle_system.c:get_base_time_step"}
!442 = !{!46, !42, i64 194}
!443 = !{!"particle_system.c:dynamics_step"}
!444 = distinct !{!444, !66}
!445 = !{!108, !36, i64 32}
!446 = !{!447, !36, i64 0}
!447 = !{!"BoidBrainData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !40, i64 40, !36, i64 48, !37, i64 56, !37, i64 68, !40, i64 80, !36, i64 88}
!448 = !{!447, !36, i64 8}
!449 = !{!447, !40, i64 20}
!450 = !{!447, !40, i64 24}
!451 = !{!447, !40, i64 16}
!452 = !{!447, !36, i64 88}
!453 = distinct !{!453, !66}
!454 = distinct !{!454, !66}
!455 = !{!51, !41, i64 20}
!456 = distinct !{!456, !66}
!457 = distinct !{!457, !66}
!458 = !{!447, !36, i64 48}
!459 = distinct !{!459, !66}
!460 = distinct !{!460, !66}
!461 = distinct !{!461, !66}
!462 = distinct !{!462, !66}
!463 = distinct !{!463, !66}
!464 = distinct !{!464, !66}
!465 = !{!"particle_system.c:update_timestep"}
!466 = !{!46, !40, i64 304}
!467 = !{!"particle_system.c:psys_update_effectors"}
!468 = !{!46, !36, i64 144}
!469 = !{!35, !36, i64 600}
!470 = !{!"particle_system.c:get_psys_tot_child"}
!471 = !{!"particle_system.c:get_psys_child_number"}
!472 = !{!"particle_system.c:psys_update_particle_bvhtree"}
!473 = !{!35, !40, i64 304}
!474 = distinct !{!474, !66}
!475 = distinct !{!475, !66}
!476 = !{!"particle_system.c:basic_integrate"}
!477 = !{!478, !36, i64 72}
!478 = !{!"EfData", !161, i64 0, !36, i64 64, !36, i64 72}
!479 = !{!478, !36, i64 64}
!480 = !{!481, !42, i64 68}
!481 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !40, i64 64, !42, i64 68, !37, i64 70, !41, i64 76}
!482 = !{!481, !40, i64 64}
!483 = !{!478, !40, i64 24}
!484 = !{!46, !40, i64 436}
!485 = !{!478, !40, i64 20}
!486 = !{!"particle_system.c:collision_check"}
!487 = !{!300, !40, i64 240}
!488 = !{!300, !40, i64 60}
!489 = !{!300, !40, i64 64}
!490 = !{!300, !40, i64 252}
!491 = !{!203, !41, i64 0}
!492 = !{!300, !41, i64 320}
!493 = !{!300, !40, i64 316}
!494 = !{!205, !36, i64 0}
!495 = !{!300, !36, i64 24}
!496 = distinct !{!496, !66}
!497 = !{!"particle_system.c:basic_rotate"}
!498 = !{!"particle_system.c:sph_integrate"}
!499 = !{!244, !36, i64 136}
!500 = !{!"particle_system.c:update_courant_num"}
!501 = !{!"particle_system.c:sph_springs_modify"}
!502 = !{!249, !40, i64 12}
!503 = distinct !{!503, !66}
!504 = distinct !{!504, !66}
!505 = !{!"particle_system.c:sphclassical_calc_dens"}
!506 = !{!"particle_system.c:integrate_particle"}
!507 = !{!46, !42, i64 216}
!508 = distinct !{!508, !66}
!509 = distinct !{!509, !66}
!510 = !{!"particle_system.c:basic_force_cb"}
!511 = !{!478, !40, i64 28}
!512 = !{!46, !40, i64 428}
!513 = !{!46, !40, i64 432}
!514 = !{!"particle_system.c:add_v3_v3v3"}
!515 = !{!"particle_system.c:collision_detect"}
!516 = !{!517, !36, i64 16}
!517 = !{!"ColliderCache", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!518 = !{!300, !36, i64 32}
!519 = !{!517, !36, i64 24}
!520 = !{!303, !36, i64 184}
!521 = distinct !{!521, !66}
!522 = !{!"particle_system.c:collision_fail"}
!523 = !{!300, !40, i64 248}
!524 = !{!"particle_system.c:collision_response"}
!525 = !{!83, !36, i64 1240}
!526 = !{!527, !40, i64 68}
!527 = !{!"PartDeflect", !41, i64 0, !42, i64 4, !42, i64 6, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !36, i64 128, !36, i64 136, !40, i64 144, !41, i64 148, !36, i64 152}
!528 = !{!527, !41, i64 0}
!529 = !{!527, !40, i64 60}
!530 = !{!527, !40, i64 64}
!531 = !{!527, !40, i64 72}
!532 = !{!527, !40, i64 76}
!533 = !{!527, !40, i64 80}
!534 = !{!300, !36, i64 16}
!535 = !{!300, !41, i64 72}
!536 = !{!"particle_system.c:collision_point_on_surface"}
!537 = !{!"particle_system.c:collision_point_distance_with_normal"}
!538 = !{!"particle_system.c:saacos"}
!539 = !{!"particle_system.c:sph_spring_delete"}
!540 = !{i64 0, i64 4, !110, i64 4, i64 8, !330, i64 12, i64 4, !100}
!541 = !{!"particle_system.c:interpf"}
!542 = !{!"particle_system.c:do_hair_dynamics"}
!543 = !{!35, !36, i64 112}
!544 = !{!545, !36, i64 128}
!545 = !{!"ClothModifierData", !115, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152}
!546 = !{!547, !40, i64 96}
!547 = !{!"ClothSimSettings", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !37, i64 156, !36, i64 160}
!548 = !{!547, !40, i64 112}
!549 = !{!547, !41, i64 128}
!550 = !{!545, !36, i64 136}
!551 = !{!552, !41, i64 32}
!552 = !{!"ClothCollSettings", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !42, i64 36, !42, i64 38, !36, i64 40, !42, i64 48, !42, i64 50, !41, i64 52}
!553 = distinct !{!553, !66}
!554 = !{!88, !36, i64 1112}
!555 = !{!88, !36, i64 1680}
!556 = !{!547, !42, i64 144}
!557 = !{!558, !41, i64 0}
!558 = !{!"MEdge", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 9, !42, i64 10}
!559 = !{!558, !41, i64 4}
!560 = !{!561, !41, i64 8}
!561 = !{!"MDeformVert", !36, i64 0, !41, i64 8, !41, i64 12}
!562 = !{!561, !36, i64 0}
!563 = !{!564, !40, i64 4}
!564 = !{!"MDeformWeight", !41, i64 0, !40, i64 4}
!565 = distinct !{!565, !66}
!566 = distinct !{!566, !66}
!567 = !{!35, !36, i64 120}
!568 = !{!545, !36, i64 144}
!569 = !{!547, !36, i64 160}
!570 = !{!88, !36, i64 1536}
!571 = !{!"particle_system.c:realloc_particles"}
!572 = distinct !{!572, !66}
!573 = distinct !{!573, !66}
!574 = distinct !{!574, !66}
!575 = !{!"particle_system.c:distribute_particles_on_dm"}
!576 = distinct !{!576, !66}
!577 = !{!"particle_system.c:distribute_particles_on_shape"}
!578 = !{!"particle_system.c:distribute_invalid"}
!579 = !{!580, !41, i64 0}
!580 = !{!"ChildParticle", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 24, !37, i64 40, !40, i64 56, !40, i64 60}
!581 = distinct !{!581, !66}
!582 = distinct !{!582, !66}
!583 = !{!"particle_system.c:distribute_threads_init_data"}
!584 = !{!112, !36, i64 8}
!585 = !{!35, !41, i64 312}
!586 = distinct !{!586, !66}
!587 = distinct !{!587, !66}
!588 = !{!589, !41, i64 2100}
!589 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!590 = !{!88, !36, i64 1304}
!591 = !{!88, !36, i64 1288}
!592 = distinct !{!592, !66}
!593 = distinct !{!593, !66}
!594 = distinct !{!594, !66, !595, !596}
!595 = !{!"llvm.loop.isvectorized", i32 1}
!596 = !{!"llvm.loop.unroll.runtime.disable"}
!597 = distinct !{!597, !66}
!598 = distinct !{!598, !66}
!599 = distinct !{!599, !66}
!600 = distinct !{!600, !66}
!601 = !{!46, !42, i64 268}
!602 = !{i32 -1073741824, i32 1073741825}
!603 = distinct !{!603, !66}
!604 = distinct !{!604, !66}
!605 = distinct !{!605, !66}
!606 = !{!88, !41, i64 1000}
!607 = !{!88, !41, i64 1008}
!608 = !{!46, !41, i64 328}
!609 = !{!46, !40, i64 308}
!610 = !{!112, !41, i64 80}
!611 = !{!112, !41, i64 136}
!612 = !{!112, !40, i64 112}
!613 = !{!112, !41, i64 140}
!614 = !{!112, !41, i64 144}
!615 = !{!112, !41, i64 148}
!616 = !{!112, !36, i64 152}
!617 = distinct !{!617, !66}
!618 = !{!"particle_system.c:distribute_threads_exec_cb"}
!619 = distinct !{!619, !66}
!620 = distinct !{!620, !66}
!621 = !{!"particle_system.c:distribute_simple_children"}
!622 = !{!580, !41, i64 4}
!623 = distinct !{!623, !66}
!624 = distinct !{!624, !66}
!625 = distinct !{!625, !66}
!626 = !{!"particle_system.c:distribute_grid"}
!627 = distinct !{!627, !66}
!628 = !{i32 0, i32 3}
!629 = distinct !{!629, !66}
!630 = distinct !{!630, !66}
!631 = distinct !{!631, !66}
!632 = distinct !{!632, !66}
!633 = distinct !{!633, !66}
!634 = distinct !{!634, !66}
!635 = distinct !{!635, !66}
!636 = distinct !{!636, !66}
!637 = distinct !{!637, !66}
!638 = distinct !{!638, !66}
!639 = distinct !{!639, !66}
!640 = distinct !{!640, !66}
!641 = distinct !{!641, !66}
!642 = distinct !{!642, !66}
!643 = distinct !{!643, !66}
!644 = !{!46, !40, i64 316}
!645 = distinct !{!645, !66}
!646 = !{!"particle_system.c:distribute_binary_search"}
!647 = distinct !{!647, !66}
!648 = !{!"particle_system.c:distribute_compare_orig_index"}
!649 = !{!"particle_system.c:init_mv_jit"}
!650 = distinct !{!650, !66}
!651 = distinct !{!651, !66}
!652 = !{!"particle_system.c:hammersley_create"}
!653 = distinct !{!653, !66}
!654 = distinct !{!654, !66}
!655 = !{!"particle_system.c:alloc_child_particles"}
!656 = !{!"particle_system.c:axis_dominant_v3_single"}
!657 = !{!"particle_system.c:distribute_threads_exec"}
!658 = distinct !{!658, !66}
!659 = !{!580, !40, i64 56}
!660 = !{!661, !40, i64 4}
!661 = !{!"KDTreeNearest", !41, i64 0, !40, i64 4, !37, i64 8}
!662 = !{!661, !41, i64 0}
!663 = distinct !{!663, !66}
!664 = distinct !{!664, !66}
!665 = distinct !{!665, !66}
!666 = !{!"particle_system.c:psys_uv_to_w"}
