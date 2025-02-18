; ModuleID = 'blender/source/blender/blenkernel/intern/particle.c'
source_filename = "blender/source/blender/blenkernel/intern/particle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.ParticleDupliWeight = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.ParticleDrawData = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ParticleRenderData = type { ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i32, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ParticleThreadContext = type { %struct.ParticleSimulationData, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, float, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ParticleRenderElem = type { i32, i32, i32, float, float, float, float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.PTCacheMem = type { ptr, ptr, i32, i32, i32, i32, [8 x ptr], [8 x ptr], %struct.ListBase }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.LinkNode = type { ptr, ptr }
%struct.OrigSpaceFace = type { [4 x [2 x float]] }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.EffectorData = type { [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, float, [3 x float], [3 x float], ptr }
%struct.EffectorCache = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x float], [3 x float], float, [3 x float], float, i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.GuideEffectorData = type { [3 x float], float }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.ParticleThread = type { ptr, ptr, ptr, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }
%struct.ParticleTexture = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.PTCacheEditPoint = type { ptr, i32, i16 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ParticleInterpolationData = type { [2 x ptr], ptr, [2 x ptr], i32, [2 x ptr], ptr, ptr, ptr, [2 x ptr], float, float, i32 }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.PTCacheEditKey = type { ptr, ptr, ptr, ptr, [3 x float], float, float, i16 }
%struct.HairKey = type { [3 x float], float, float, i16, i16 }
%struct.ParticleTarget = type { ptr, ptr, ptr, i32, i16, i16, float, float }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeFlowSettings = type { ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, [3 x float], float, float, float, float, float, i32, float, float, i32, [64 x i8], i16, i16, i16, i16, i32 }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.DynamicPaintBrushSettings = type { ptr, ptr, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, ptr, ptr, i16, i16, i16, i16, float, float, float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ParticleBillboardData = type { ptr, [3 x float], [3 x float], [2 x float], [2 x float], float, float, float, [3 x i32], i32, i32, i32, i32, i16, i16, i16, i16 }

@PSYS_FRAND_BASE = dso_local local_unnamed_addr global [1024 x float] zeroinitializer, align 16
@PSYS_FRAND_SEED_OFFSET = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@PSYS_FRAND_SEED_MULTIPLIER = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"ParticleDupliWeight\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"ParticleRenderData\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SimplifyFaceArea\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SimplifyFaceCenter\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SimplifyFaceElem\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SimplificationSkip\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"GuideEffectorData\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"vg_cache\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ParticleSystem %i\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ParticleSystem\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"psys_copy_tex\00", align 1
@__const.do_kink.kink = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@__const.do_kink.q1 = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@__const.do_kink.y_vec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 4
@__const.do_kink.z_vec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"PathCacheArray\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"PathCacheLinkData\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ParticleCacheKey\00", align 1
@get_pointcache_keys_for_time.pm = internal unnamed_addr global ptr null, align 8
@str = private unnamed_addr constant [37 x i8] c"\09NO CD_ORIGSPACE, error out of range\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @psys_init_rng() local_unnamed_addr #0 {
  tail call void @BLI_srandom(i32 noundef 5831) #17
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %3 = tail call float @BLI_frand() #17
  %4 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %2
  store float %3, ptr %4, align 4, !tbaa !34
  %5 = tail call i32 @BLI_rand() #17
  %6 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %2
  store i32 %5, ptr %6, align 4, !tbaa !38
  %7 = tail call i32 @BLI_rand() #17
  %8 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %2
  store i32 %7, ptr %8, align 4, !tbaa !38
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 1024
  br i1 %10, label %11, label %1, !llvm.loop !40

11:                                               ; preds = %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_srandom(i32 noundef) local_unnamed_addr #2

declare float @BLI_frand() local_unnamed_addr #2

declare i32 @BLI_rand() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_particles(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 5
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 5
  br label %12

12:                                               ; preds = %5, %35
  %13 = phi i32 [ 0, %5 ], [ %36, %35 ]
  %14 = phi i32 [ 0, %5 ], [ %37, %35 ]
  %15 = phi ptr [ %7, %5 ], [ %38, %35 ]
  %16 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 0, i32 17
  %17 = load i16, ptr %16, align 4, !tbaa !50
  %18 = and i16 %17, 3
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 0, i32 18
  %22 = load i16, ptr %21, align 2, !tbaa !53
  switch i16 %22, label %33 [
    i16 2, label %23
    i16 1, label %29
  ]

23:                                               ; preds = %20
  %24 = load i32, ptr %10, align 8, !tbaa !54
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = icmp eq i16 %22, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %20, %27
  %30 = load i32, ptr %11, align 8, !tbaa !54
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %20, %29, %27
  %34 = add nsw i32 %13, 1
  br label %35

35:                                               ; preds = %12, %33, %29, %23
  %36 = phi i32 [ %13, %12 ], [ %13, %23 ], [ %13, %29 ], [ %34, %33 ]
  %37 = add nuw nsw i32 %14, 1
  %38 = getelementptr inbounds %struct.ParticleData, ptr %15, i64 1
  %39 = icmp eq i32 %37, %3
  br i1 %39, label %40, label %12, !llvm.loop !57

40:                                               ; preds = %35, %1
  %41 = phi i32 [ 0, %1 ], [ %36, %35 ]
  ret i32 %41
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_particles_mod(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 5
  br label %14

14:                                               ; preds = %7, %40
  %15 = phi i32 [ 0, %7 ], [ %41, %40 ]
  %16 = phi i32 [ 0, %7 ], [ %42, %40 ]
  %17 = phi ptr [ %9, %7 ], [ %43, %40 ]
  %18 = getelementptr inbounds %struct.ParticleData, ptr %17, i64 0, i32 17
  %19 = load i16, ptr %18, align 4, !tbaa !50
  %20 = and i16 %19, 3
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ParticleData, ptr %17, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !53
  switch i16 %24, label %35 [
    i16 2, label %25
    i16 1, label %31
  ]

25:                                               ; preds = %22
  %26 = load i32, ptr %12, align 8, !tbaa !54
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = icmp eq i16 %24, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %22, %29
  %32 = load i32, ptr %13, align 8, !tbaa !54
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %22, %31, %29
  %36 = srem i32 %16, %1
  %37 = icmp eq i32 %36, %2
  %38 = zext i1 %37 to i32
  %39 = add nsw i32 %15, %38
  br label %40

40:                                               ; preds = %35, %14, %31, %25
  %41 = phi i32 [ %15, %14 ], [ %15, %25 ], [ %15, %31 ], [ %39, %35 ]
  %42 = add nuw nsw i32 %16, 1
  %43 = getelementptr inbounds %struct.ParticleData, ptr %17, i64 1
  %44 = icmp eq i32 %42, %5
  br i1 %44, label %45, label %14, !llvm.loop !58

45:                                               ; preds = %40, %3
  %46 = phi i32 [ 0, %3 ], [ %41, %40 ]
  ret i32 %46
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @psys_get_current(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !61

14:                                               ; preds = %5, %9, %1
  %15 = phi ptr [ null, %1 ], [ %7, %9 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @psys_get_current_num(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3, %14
  %8 = phi ptr [ %16, %14 ], [ %5, %3 ]
  %9 = phi i16 [ %15, %14 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add i16 %9, 1
  %16 = load ptr, ptr %8, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !62

18:                                               ; preds = %7, %14, %3, %1
  %19 = phi i16 [ 0, %1 ], [ 0, %3 ], [ %15, %14 ], [ %9, %7 ]
  ret i16 %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_set_current_num(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %19, %8 ], [ %6, %4 ]
  %10 = phi i16 [ %18, %8 ], [ 0, %4 ]
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, %1
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 25
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = and i32 %14, -2
  %16 = zext i1 %12 to i32
  %17 = or disjoint i32 %15, %16
  store i32 %17, ptr %13, align 4, !tbaa !60
  %18 = add i16 %10, 1
  %19 = load ptr, ptr %9, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !63

21:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @psys_create_lattice_deform_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !89
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %8
  %16 = icmp eq ptr %10, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 109
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 25
  %25 = load i32, ptr %24, align 4, !tbaa !60
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %19, label %28, !llvm.loop !61

28:                                               ; preds = %23, %19, %15
  %29 = phi ptr [ null, %15 ], [ %21, %23 ], [ null, %19 ]
  %30 = icmp eq ptr %29, %4
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 40
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = getelementptr inbounds %struct.PointCache, ptr %37, i64 0, i32 21
  %39 = load ptr, ptr %38, align 8, !tbaa !94
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 39
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = icmp eq ptr %43, null
  br i1 %44, label %82, label %45

45:                                               ; preds = %35, %28, %8, %1, %41
  %46 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !97
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 26
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %45, %60
  %52 = phi ptr [ %61, %60 ], [ %49, %45 ]
  %53 = getelementptr inbounds %struct.ModifierData, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !98
  %55 = icmp eq i32 %54, 19
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %52, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !100
  %59 = icmp eq ptr %58, %4
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %51
  %61 = load ptr, ptr %52, align 8, !tbaa !59
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %51, !llvm.loop !102

63:                                               ; preds = %56, %60, %45
  %64 = phi ptr [ null, %45 ], [ %52, %56 ], [ null, %60 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %63, %74
  %67 = phi ptr [ %75, %74 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.ModifierData, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !98
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.LatticeModifierData, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !103
  br label %77

74:                                               ; preds = %66
  %75 = load ptr, ptr %67, align 8, !tbaa !105
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %66, !llvm.loop !106

77:                                               ; preds = %74, %63, %71
  %78 = phi ptr [ %73, %71 ], [ null, %63 ], [ null, %74 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = tail call ptr @init_latt_deform(ptr noundef nonnull %78, ptr noundef null) #17
  br label %82

82:                                               ; preds = %77, %80, %41
  %83 = phi ptr [ null, %41 ], [ %81, %80 ], [ null, %77 ]
  ret ptr %83
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @psys_in_edit_mode(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !89
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %6
  %14 = icmp eq ptr %8, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 109
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %16, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 25
  %23 = load i32, ptr %22, align 4, !tbaa !60
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %17, label %26, !llvm.loop !61

26:                                               ; preds = %17, %21, %13
  %27 = phi ptr [ null, %13 ], [ %19, %21 ], [ null, %17 ]
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %35 = load ptr, ptr %34, align 8, !tbaa !93
  %36 = getelementptr inbounds %struct.PointCache, ptr %35, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33, %29
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = icmp eq ptr %41, null
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %39, %33, %26, %6, %2
  %45 = phi i32 [ 0, %33 ], [ 0, %26 ], [ 0, %6 ], [ 0, %2 ], [ %43, %39 ]
  ret i32 %45
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @psys_get_modifier(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %6, %11
  %16 = load ptr, ptr %7, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !102

18:                                               ; preds = %11, %15, %2
  %19 = phi ptr [ null, %2 ], [ %7, %11 ], [ null, %15 ]
  ret ptr %19
}

declare ptr @init_latt_deform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_disable_all(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = or i32 %8, 8192
  store i32 %9, ptr %7, align 4, !tbaa !60
  %10 = load ptr, ptr %6, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !107

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_enable_all(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = and i32 %8, -8193
  store i32 %9, ptr %7, align 4, !tbaa !60
  %10 = load ptr, ptr %6, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !108

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @psys_check_enabled(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = and i32 %4, 8448
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %13

13:                                               ; preds = %23, %11
  %14 = phi ptr [ %12, %11 ], [ %15, %23 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !59, !nonnull !109, !noundef !109
  %16 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !98
  %18 = icmp eq i32 %17, 19
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %13
  br label %13

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = icmp ne ptr %26, null
  %28 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %29 = icmp ne i8 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  %31 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !110
  br i1 %30, label %33, label %36

33:                                               ; preds = %24
  %34 = and i32 %32, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %39

36:                                               ; preds = %24
  %37 = and i32 %32, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %36, %33, %2, %7, %39
  %41 = phi i32 [ 1, %39 ], [ 0, %7 ], [ 0, %2 ], [ 0, %33 ], [ 0, %36 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @psys_check_edited(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !111
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %24

18:                                               ; preds = %5, %1
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !94
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18, %14
  %25 = phi ptr [ %16, %14 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %25, i64 0, i32 14
  %27 = load i32, ptr %26, align 4, !tbaa !112
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %18, %9, %14
  %31 = phi i32 [ 1, %9 ], [ 0, %14 ], [ 0, %18 ], [ %29, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_check_group_weights(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 21
  %3 = load i16, ptr %2, align 8, !tbaa !115
  %4 = icmp eq i16 %3, 8
  br i1 %4, label %5, label %72

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 122
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Group, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %26
  %18 = phi ptr [ %24, %26 ], [ %15, %13 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef %19, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %18, align 8, !tbaa !122
  br i1 %23, label %25, label %26

25:                                               ; preds = %17
  tail call void @BLI_freelinkN(ptr noundef nonnull %14, ptr noundef nonnull %18) #17
  br label %26

26:                                               ; preds = %17, %25
  %27 = icmp eq ptr %24, null
  br i1 %27, label %28, label %17, !llvm.loop !123

28:                                               ; preds = %26, %13
  %29 = load ptr, ptr %6, align 8, !tbaa !116
  %30 = getelementptr inbounds %struct.Group, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %28, %52
  %34 = phi ptr [ %53, %52 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.GroupObject, ptr %34, i64 0, i32 2
  br label %36

36:                                               ; preds = %33, %40
  %37 = phi ptr [ %38, %40 ], [ %14, %33 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !120
  %43 = load ptr, ptr %35, align 8, !tbaa !124
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %52, label %36, !llvm.loop !126

45:                                               ; preds = %36
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %47 = tail call ptr %46(i64 noundef 32, ptr noundef nonnull @.str) #17
  %48 = getelementptr inbounds %struct.GroupObject, ptr %34, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !124
  %50 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %47, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !120
  %51 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %47, i64 0, i32 3
  store i16 1, ptr %51, align 8, !tbaa !127
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %47) #17
  br label %52

52:                                               ; preds = %40, %45
  %53 = load ptr, ptr %34, align 8, !tbaa !59
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %33, !llvm.loop !128

55:                                               ; preds = %52, %28
  br label %56

56:                                               ; preds = %55, %60
  %57 = phi ptr [ %58, %60 ], [ %14, %55 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %58, i64 0, i32 4
  %62 = load i16, ptr %61, align 2, !tbaa !129
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %56, label %74, !llvm.loop !130

65:                                               ; preds = %56
  %66 = load ptr, ptr %14, align 8, !tbaa !119
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %66, i64 0, i32 4
  %70 = load i16, ptr %69, align 2, !tbaa !129
  %71 = or i16 %70, 1
  store i16 %71, ptr %69, align 2, !tbaa !129
  br label %74

72:                                               ; preds = %9, %5, %1
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  tail call void @BLI_freelistN(ptr noundef nonnull %73) #17
  br label %74

74:                                               ; preds = %60, %68, %65, %72
  ret void
}

declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @psys_uses_gravity(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 40, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !131
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !132
  %16 = getelementptr inbounds %struct.EffectorWeights, ptr %15, i64 0, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !133
  %18 = fcmp une float %17, 0.000000e+00
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %7, %1
  %21 = phi i32 [ 0, %7 ], [ 0, %1 ], [ %19, %13 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_particlesettings_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #17
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 128
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  tail call void @free_partdeflect(ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 129
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  tail call void @free_partdeflect(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %10(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  tail call void @BLI_freelistN(ptr noundef nonnull %12) #17
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  tail call void @boid_free_settings(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %19(ptr noundef nonnull %16) #17
  br label %20

20:                                               ; preds = %11, %18
  br label %21

21:                                               ; preds = %20, %36
  %22 = phi i64 [ %37, %36 ], [ 0, %20 ]
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MTex, ptr %24, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !141
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %31, align 4, !tbaa !141
  br label %34

34:                                               ; preds = %26, %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %35(ptr noundef nonnull %24) #17
  br label %36

36:                                               ; preds = %21, %34
  %37 = add nuw nsw i64 %22, 1
  %38 = icmp eq i64 %37, 18
  br i1 %38, label %39, label %21, !llvm.loop !144

39:                                               ; preds = %36
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

declare void @free_partdeflect(ptr noundef) local_unnamed_addr #2

declare void @boid_free_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_hair(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  br label %10

10:                                               ; preds = %7, %18
  %11 = phi i32 [ %20, %18 ], [ 0, %7 ]
  %12 = phi ptr [ %21, %18 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !145
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %17(ptr noundef nonnull %14) #17
  br label %18

18:                                               ; preds = %16, %10
  store ptr null, ptr %13, align 8, !tbaa !145
  %19 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 0, i32 5
  store i32 0, ptr %19, align 8, !tbaa !146
  %20 = add nuw nsw i32 %11, 1
  %21 = getelementptr inbounds %struct.ParticleData, ptr %12, i64 1
  %22 = load i32, ptr %4, align 8, !tbaa !43
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %10, label %24, !llvm.loop !147

24:                                               ; preds = %18, %3
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 25
  %26 = load i32, ptr %25, align 4, !tbaa !60
  %27 = and i32 %26, -513
  store i32 %27, ptr %25, align 4, !tbaa !60
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = icmp eq i32 %2, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 41
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %34) #17
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  store ptr null, ptr %35, align 8, !tbaa !93
  %36 = load ptr, ptr %28, align 8, !tbaa !148
  %37 = getelementptr inbounds %struct.ClothModifierData, ptr %36, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  tail call void @modifier_free(ptr noundef %36) #17
  store ptr null, ptr %28, align 8, !tbaa !148
  %38 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %34) #17
  store ptr %38, ptr %35, align 8, !tbaa !93
  br label %40

39:                                               ; preds = %31
  tail call void @cloth_free_modifier(ptr noundef nonnull %29) #17
  br label %40

40:                                               ; preds = %33, %39, %24
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !149
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 95
  %46 = load ptr, ptr %45, align 8, !tbaa !150
  tail call void %46(ptr noundef nonnull %42) #17
  br label %47

47:                                               ; preds = %44, %40
  store ptr null, ptr %41, align 8, !tbaa !149
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !153
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %49, i64 0, i32 95
  %53 = load ptr, ptr %52, align 8, !tbaa !150
  tail call void %53(ptr noundef nonnull %49) #17
  br label %54

54:                                               ; preds = %51, %47
  store ptr null, ptr %48, align 8, !tbaa !153
  ret void
}

declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

declare void @modifier_free(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

declare void @cloth_free_modifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_keyed_keys(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 8, !tbaa !111
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleData, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %16(ptr noundef nonnull %13) #17
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !43
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 8, !tbaa !48
  br label %22

22:                                               ; preds = %20, %30
  %23 = phi i32 [ %31, %30 ], [ 0, %20 ]
  %24 = phi ptr [ %32, %30 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !154
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  store ptr null, ptr %25, align 8, !tbaa !154
  %29 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 0, i32 5
  store i32 0, ptr %29, align 8, !tbaa !146
  br label %30

30:                                               ; preds = %22, %28
  %31 = add nuw nsw i32 %23, 1
  %32 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 1
  %33 = icmp eq i32 %31, %18
  br i1 %33, label %34, label %22, !llvm.loop !155

34:                                               ; preds = %30, %15, %7, %11, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_free_path_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 10
  %8 = icmp eq ptr %6, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %10(ptr noundef nonnull %6) #17
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %7, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %11 ]
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.LinkData, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !157
  tail call void %16(ptr noundef %18) #17
  %19 = load ptr, ptr %15, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !159

21:                                               ; preds = %14, %11
  tail call void @BLI_freelistN(ptr noundef nonnull %7) #17
  store ptr null, ptr %5, align 8, !tbaa !156
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 13
  store i32 0, ptr %22, align 8, !tbaa !160
  br label %23

23:                                               ; preds = %21, %2
  %24 = icmp eq ptr %0, null
  br i1 %24, label %62, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !161
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 9
  %29 = icmp eq ptr %27, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %31(ptr noundef nonnull %27) #17
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr %28, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %40, %35 ], [ %33, %32 ]
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.LinkData, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !157
  tail call void %37(ptr noundef %39) #17
  %40 = load ptr, ptr %36, align 8, !tbaa !59
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !llvm.loop !159

42:                                               ; preds = %35, %32
  tail call void @BLI_freelistN(ptr noundef nonnull %28) #17
  store ptr null, ptr %26, align 8, !tbaa !161
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 29
  store i32 0, ptr %43, align 4, !tbaa !162
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !163
  %46 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 10
  %47 = icmp eq ptr %45, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %49(ptr noundef nonnull %45) #17
  br label %50

50:                                               ; preds = %48, %42
  %51 = load ptr, ptr %46, align 8, !tbaa !59
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %58, %53 ], [ %51, %50 ]
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.LinkData, ptr %54, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !157
  tail call void %55(ptr noundef %57) #17
  %58 = load ptr, ptr %54, align 8, !tbaa !59
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %53, !llvm.loop !159

60:                                               ; preds = %53, %50
  tail call void @BLI_freelistN(ptr noundef nonnull %46) #17
  store ptr null, ptr %44, align 8, !tbaa !163
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 30
  store i32 0, ptr %61, align 8, !tbaa !164
  br label %62

62:                                               ; preds = %60, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_free_children(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %6(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 28
  store i32 0, ptr %7, align 8, !tbaa !166
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 10
  %12 = icmp eq ptr %10, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %14(ptr noundef nonnull %10) #17
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %11, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.LinkData, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !157
  tail call void %20(ptr noundef %22) #17
  %23 = load ptr, ptr %19, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !159

25:                                               ; preds = %18, %15
  tail call void @BLI_freelistN(ptr noundef nonnull %11) #17
  store ptr null, ptr %9, align 8, !tbaa !163
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 30
  store i32 0, ptr %26, align 8, !tbaa !164
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_free_particles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 7
  %9 = load i16, ptr %8, align 8, !tbaa !111
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %23
  %16 = phi i32 [ %24, %23 ], [ 0, %11 ]
  %17 = phi ptr [ %25, %23 ], [ %3, %11 ]
  %18 = getelementptr inbounds %struct.ParticleData, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !145
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %22(ptr noundef nonnull %19) #17
  br label %23

23:                                               ; preds = %15, %21
  %24 = add nuw nsw i32 %16, 1
  %25 = getelementptr inbounds %struct.ParticleData, ptr %17, i64 1
  %26 = load i32, ptr %12, align 8, !tbaa !43
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %15, label %28, !llvm.loop !167

28:                                               ; preds = %23, %11, %5
  %29 = load ptr, ptr %2, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.ParticleData, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !154
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %34(ptr noundef nonnull %31) #17
  br label %35

35:                                               ; preds = %33, %28
  %36 = load ptr, ptr %2, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.ParticleData, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !168
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %41(ptr noundef nonnull %38) #17
  br label %42

42:                                               ; preds = %40, %35
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %44 = load ptr, ptr %2, align 8, !tbaa !48
  tail call void %43(ptr noundef %44) #17
  store ptr null, ptr %2, align 8, !tbaa !48
  %45 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  store i32 0, ptr %45, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_free_pdd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 48
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleDrawData, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %10(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr %2, align 8, !tbaa !169
  %13 = getelementptr inbounds %struct.ParticleDrawData, ptr %12, i64 0, i32 4
  store ptr null, ptr %13, align 8, !tbaa !170
  %14 = load ptr, ptr %12, align 8, !tbaa !172
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %17(ptr noundef nonnull %14) #17
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %2, align 8, !tbaa !169
  store ptr null, ptr %19, align 8, !tbaa !172
  %20 = getelementptr inbounds %struct.ParticleDrawData, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %24(ptr noundef nonnull %21) #17
  br label %25

25:                                               ; preds = %23, %18
  %26 = load ptr, ptr %2, align 8, !tbaa !169
  %27 = getelementptr inbounds %struct.ParticleDrawData, ptr %26, i64 0, i32 2
  store ptr null, ptr %27, align 8, !tbaa !173
  %28 = getelementptr inbounds %struct.ParticleDrawData, ptr %26, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !174
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %32(ptr noundef nonnull %29) #17
  br label %33

33:                                               ; preds = %31, %25
  %34 = load ptr, ptr %2, align 8, !tbaa !169
  %35 = getelementptr inbounds %struct.ParticleDrawData, ptr %34, i64 0, i32 6
  store ptr null, ptr %35, align 8, !tbaa !174
  %36 = getelementptr inbounds %struct.ParticleDrawData, ptr %34, i64 0, i32 11
  store i32 0, ptr %36, align 8, !tbaa !175
  %37 = getelementptr inbounds %struct.ParticleDrawData, ptr %34, i64 0, i32 9
  store i32 0, ptr %37, align 8, !tbaa !176
  br label %38

38:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %185, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9
  %8 = icmp eq ptr %6, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %10(ptr noundef nonnull %6) #17
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %7, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %11 ]
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.LinkData, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !157
  tail call void %16(ptr noundef %18) #17
  %19 = load ptr, ptr %15, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !159

21:                                               ; preds = %14, %11
  tail call void @BLI_freelistN(ptr noundef nonnull %7) #17
  store ptr null, ptr %5, align 8, !tbaa !161
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 29
  store i32 0, ptr %22, align 4, !tbaa !162
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !163
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %28(ptr noundef nonnull %24) #17
  br label %29

29:                                               ; preds = %27, %21
  %30 = load ptr, ptr %25, align 8, !tbaa !59
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %37, %32 ], [ %30, %29 ]
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.LinkData, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !157
  tail call void %34(ptr noundef %36) #17
  %37 = load ptr, ptr %33, align 8, !tbaa !59
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %32, !llvm.loop !159

39:                                               ; preds = %32, %29
  tail call void @BLI_freelistN(ptr noundef nonnull %25) #17
  store ptr null, ptr %23, align 8, !tbaa !163
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 30
  store i32 0, ptr %40, align 8, !tbaa !164
  tail call void @free_hair(ptr poison, ptr noundef nonnull %1, i32 noundef 1)
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %85, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %46, i64 0, i32 7
  %48 = load i16, ptr %47, align 8, !tbaa !111
  %49 = icmp eq i16 %48, 2
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %52 = load i32, ptr %51, align 8, !tbaa !43
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50, %62
  %55 = phi i32 [ %63, %62 ], [ 0, %50 ]
  %56 = phi ptr [ %64, %62 ], [ %42, %50 ]
  %57 = getelementptr inbounds %struct.ParticleData, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !145
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %61(ptr noundef nonnull %58) #17
  br label %62

62:                                               ; preds = %60, %54
  %63 = add nuw nsw i32 %55, 1
  %64 = getelementptr inbounds %struct.ParticleData, ptr %56, i64 1
  %65 = load i32, ptr %51, align 8, !tbaa !43
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %54, label %67, !llvm.loop !167

67:                                               ; preds = %62, %50, %44
  %68 = load ptr, ptr %41, align 8, !tbaa !48
  %69 = getelementptr inbounds %struct.ParticleData, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !154
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %73(ptr noundef nonnull %70) #17
  br label %74

74:                                               ; preds = %72, %67
  %75 = load ptr, ptr %41, align 8, !tbaa !48
  %76 = getelementptr inbounds %struct.ParticleData, ptr %75, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !168
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %80(ptr noundef nonnull %77) #17
  br label %81

81:                                               ; preds = %79, %74
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %83 = load ptr, ptr %41, align 8, !tbaa !48
  tail call void %82(ptr noundef %83) #17
  store ptr null, ptr %41, align 8, !tbaa !48
  %84 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  store i32 0, ptr %84, align 8, !tbaa !43
  br label %85

85:                                               ; preds = %39, %81
  %86 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !92
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !177
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void %91(ptr noundef nonnull %87) #17
  br label %94

94:                                               ; preds = %93, %89, %85
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !165
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %99(ptr noundef nonnull %96) #17
  store ptr null, ptr %95, align 8, !tbaa !165
  %100 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  store i32 0, ptr %100, align 8, !tbaa !166
  br label %101

101:                                              ; preds = %98, %94
  %102 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %103 = load ptr, ptr %102, align 8, !tbaa !59
  %104 = icmp eq ptr %103, null
  br i1 %104, label %118, label %105

105:                                              ; preds = %101, %115
  %106 = phi ptr [ %116, %115 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !49
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ParticleSettings, ptr %108, i64 0, i32 21
  %112 = load i16, ptr %111, align 8, !tbaa !115
  %113 = add i16 %112, -7
  %114 = icmp ult i16 %113, 2
  br i1 %114, label %122, label %115

115:                                              ; preds = %110, %105
  %116 = load ptr, ptr %106, align 8, !tbaa !59
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %105, !llvm.loop !178

118:                                              ; preds = %115, %101
  %119 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 55
  %120 = load i16, ptr %119, align 8, !tbaa !179
  %121 = and i16 %120, -2049
  store i16 %121, ptr %119, align 8, !tbaa !179
  br label %122

122:                                              ; preds = %110, %118
  %123 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !49
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ID, ptr %124, i64 0, i32 6
  %128 = load i32, ptr %127, align 4, !tbaa !180
  %129 = add nsw i32 %128, -1
  store i32 %129, ptr %127, align 4, !tbaa !180
  store ptr null, ptr %123, align 8, !tbaa !49
  br label %130

130:                                              ; preds = %126, %122
  %131 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 41
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %131) #17
  %132 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  store ptr null, ptr %132, align 8, !tbaa !93
  %133 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 17
  tail call void @BLI_freelistN(ptr noundef nonnull %133) #17
  %134 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 47
  %135 = load ptr, ptr %134, align 8, !tbaa !181
  tail call void @BLI_bvhtree_free(ptr noundef %135) #17
  %136 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 46
  %137 = load ptr, ptr %136, align 8, !tbaa !182
  tail call void @BLI_kdtree_free(ptr noundef %137) #17
  %138 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 43
  %139 = load ptr, ptr %138, align 8, !tbaa !183
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %142(ptr noundef nonnull %139) #17
  br label %143

143:                                              ; preds = %141, %130
  %144 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 42
  tail call void @pdEndEffectors(ptr noundef nonnull %144) #17
  %145 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 48
  %146 = load ptr, ptr %145, align 8, !tbaa !169
  %147 = icmp eq ptr %146, null
  br i1 %147, label %183, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.ParticleDrawData, ptr %146, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !170
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %153(ptr noundef nonnull %150) #17
  br label %154

154:                                              ; preds = %152, %148
  %155 = load ptr, ptr %145, align 8, !tbaa !169
  %156 = getelementptr inbounds %struct.ParticleDrawData, ptr %155, i64 0, i32 4
  store ptr null, ptr %156, align 8, !tbaa !170
  %157 = load ptr, ptr %155, align 8, !tbaa !172
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %154
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %160(ptr noundef nonnull %157) #17
  br label %161

161:                                              ; preds = %159, %154
  %162 = load ptr, ptr %145, align 8, !tbaa !169
  store ptr null, ptr %162, align 8, !tbaa !172
  %163 = getelementptr inbounds %struct.ParticleDrawData, ptr %162, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !173
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %167(ptr noundef nonnull %164) #17
  br label %168

168:                                              ; preds = %166, %161
  %169 = load ptr, ptr %145, align 8, !tbaa !169
  %170 = getelementptr inbounds %struct.ParticleDrawData, ptr %169, i64 0, i32 2
  store ptr null, ptr %170, align 8, !tbaa !173
  %171 = getelementptr inbounds %struct.ParticleDrawData, ptr %169, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !174
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %168
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %175(ptr noundef nonnull %172) #17
  br label %176

176:                                              ; preds = %174, %168
  %177 = load ptr, ptr %145, align 8, !tbaa !169
  %178 = getelementptr inbounds %struct.ParticleDrawData, ptr %177, i64 0, i32 6
  store ptr null, ptr %178, align 8, !tbaa !174
  %179 = getelementptr inbounds %struct.ParticleDrawData, ptr %177, i64 0, i32 11
  store i32 0, ptr %179, align 8, !tbaa !175
  %180 = getelementptr inbounds %struct.ParticleDrawData, ptr %177, i64 0, i32 9
  store i32 0, ptr %180, align 8, !tbaa !176
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %182 = load ptr, ptr %145, align 8, !tbaa !169
  tail call void %181(ptr noundef %182) #17
  br label %183

183:                                              ; preds = %176, %143
  %184 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %184(ptr noundef nonnull %1) #17
  br label %185

185:                                              ; preds = %183, %2
  ret void
}

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #2

declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_render_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7, %20
  %12 = phi ptr [ %21, %20 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.ModifierData, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !98
  %15 = icmp eq i32 %14, 19
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %12, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !102

23:                                               ; preds = %16, %20, %7
  %24 = phi ptr [ null, %7 ], [ %12, %16 ], [ null, %20 ]
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %96

28:                                               ; preds = %23
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %30 = tail call ptr %29(i64 noundef 328, ptr noundef nonnull @.str.1) #17
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !165
  store ptr %32, ptr %30, align 8, !tbaa !184
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  %34 = load i32, ptr %33, align 8, !tbaa !166
  %35 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 5
  store i32 %34, ptr %35, align 8, !tbaa !186
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !161
  %38 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !187
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !188
  %41 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !189
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !190
  %44 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 3, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !191
  %45 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 29
  %46 = load i32, ptr %45, align 4, !tbaa !162
  %47 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 6
  store i32 %46, ptr %47, align 4, !tbaa !192
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !163
  %50 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !193
  %51 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !194
  %53 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 4
  store ptr %52, ptr %53, align 8, !tbaa !195
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !196
  %56 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 4, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !197
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 30
  %58 = load i32, ptr %57, align 8, !tbaa !164
  %59 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 7
  store i32 %58, ptr %59, align 8, !tbaa !198
  %60 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !199
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %28
  %64 = tail call ptr @CDDM_copy(ptr noundef nonnull %61) #17
  %65 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 8
  store ptr %64, ptr %65, align 8, !tbaa !200
  br label %66

66:                                               ; preds = %63, %28
  %67 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !201
  %69 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 9
  store i32 %68, ptr %69, align 8, !tbaa !202
  %70 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !203
  %72 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 10
  store i32 %71, ptr %72, align 4, !tbaa !204
  %73 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %24, i64 0, i32 5
  %74 = load i32, ptr %73, align 8, !tbaa !205
  %75 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 11
  store i32 %74, ptr %75, align 8, !tbaa !206
  store ptr null, ptr %31, align 8, !tbaa !165
  store i32 0, ptr %57, align 8, !tbaa !164
  store i32 0, ptr %45, align 4, !tbaa !162
  store i32 0, ptr %33, align 8, !tbaa !166
  %76 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %36, i8 0, i64 48, i1 false)
  tail call void @copy_m4_m4(ptr noundef nonnull %76, ptr noundef %3) #17
  %77 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 13
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %77, ptr noundef %2, ptr noundef nonnull %78) #17
  %79 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 12
  tail call void @mul_m4_m4m4(ptr noundef nonnull %79, ptr noundef %3, ptr noundef nonnull %77) #17
  %80 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 15
  store i32 %4, ptr %80, align 4, !tbaa !207
  %81 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 16
  store i32 %5, ptr %81, align 8, !tbaa !208
  %82 = getelementptr inbounds %struct.ParticleRenderData, ptr %30, i64 0, i32 18
  store i32 %6, ptr %82, align 8, !tbaa !209
  store ptr %30, ptr %25, align 8, !tbaa !96
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %84, i64 0, i32 30
  %86 = load i16, ptr %85, align 2, !tbaa !210
  %87 = icmp eq i16 %86, 100
  br i1 %87, label %96, label %88

88:                                               ; preds = %66
  %89 = getelementptr inbounds %struct.ParticleSettings, ptr %84, i64 0, i32 7
  %90 = load i16, ptr %89, align 8, !tbaa !111
  %91 = icmp eq i16 %90, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 31
  %94 = load i16, ptr %93, align 4, !tbaa !211
  %95 = or i16 %94, 16
  store i16 %95, ptr %93, align 4, !tbaa !211
  br label %96

96:                                               ; preds = %66, %88, %92, %23
  ret void
}

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_render_restore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !102

18:                                               ; preds = %11, %15, %2
  %19 = phi ptr [ null, %2 ], [ %7, %11 ], [ null, %15 ]
  %20 = tail call float @psys_get_current_display_percentage(ptr noundef %1) #17
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = icmp eq ptr %22, null
  br i1 %23, label %166, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !212
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %29(ptr noundef nonnull %26) #17
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %19, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !199
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %32, i64 0, i32 10
  store i32 1, ptr %35, align 4, !tbaa !213
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %32, i64 0, i32 95
  %37 = load ptr, ptr %36, align 8, !tbaa !150
  tail call void %37(ptr noundef nonnull %32) #17
  br label %38

38:                                               ; preds = %34, %30
  %39 = icmp eq ptr %1, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !161
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9
  %44 = icmp eq ptr %42, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %46(ptr noundef nonnull %42) #17
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr %43, align 8, !tbaa !59
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47, %50
  %51 = phi ptr [ %55, %50 ], [ %48, %47 ]
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct.LinkData, ptr %51, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !157
  tail call void %52(ptr noundef %54) #17
  %55 = load ptr, ptr %51, align 8, !tbaa !59
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %50, !llvm.loop !159

57:                                               ; preds = %50, %47
  tail call void @BLI_freelistN(ptr noundef nonnull %43) #17
  store ptr null, ptr %41, align 8, !tbaa !161
  %58 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 29
  store i32 0, ptr %58, align 4, !tbaa !162
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !163
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10
  %62 = icmp eq ptr %60, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %64(ptr noundef nonnull %60) #17
  br label %65

65:                                               ; preds = %63, %57
  %66 = load ptr, ptr %61, align 8, !tbaa !59
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %65, %68
  %69 = phi ptr [ %73, %68 ], [ %66, %65 ]
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %71 = getelementptr inbounds %struct.LinkData, ptr %69, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !157
  tail call void %70(ptr noundef %72) #17
  %73 = load ptr, ptr %69, align 8, !tbaa !59
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %68, !llvm.loop !159

75:                                               ; preds = %68, %65
  tail call void @BLI_freelistN(ptr noundef nonnull %61) #17
  store ptr null, ptr %59, align 8, !tbaa !163
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 30
  store i32 0, ptr %76, align 8, !tbaa !164
  br label %77

77:                                               ; preds = %38, %75
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !165
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %82(ptr noundef nonnull %79) #17
  store ptr null, ptr %78, align 8, !tbaa !165
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  store i32 0, ptr %83, align 8, !tbaa !166
  br label %84

84:                                               ; preds = %81, %77
  %85 = load ptr, ptr %22, align 8, !tbaa !184
  store ptr %85, ptr %78, align 8, !tbaa !165
  %86 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !186
  %88 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  store i32 %87, ptr %88, align 8, !tbaa !166
  %89 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !187
  %91 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  store ptr %90, ptr %91, align 8, !tbaa !161
  %92 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !189
  %94 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9
  store ptr %93, ptr %94, align 8, !tbaa !188
  %95 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 3, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !191
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9, i32 1
  store ptr %96, ptr %97, align 8, !tbaa !190
  %98 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 6
  %99 = load i32, ptr %98, align 4, !tbaa !192
  %100 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 29
  store i32 %99, ptr %100, align 4, !tbaa !162
  %101 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !193
  %103 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 8
  store ptr %102, ptr %103, align 8, !tbaa !163
  %104 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !195
  %106 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10
  store ptr %105, ptr %106, align 8, !tbaa !194
  %107 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 4, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !197
  %109 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10, i32 1
  store ptr %108, ptr %109, align 8, !tbaa !196
  %110 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !198
  %112 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 30
  store i32 %111, ptr %112, align 8, !tbaa !164
  %113 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !200
  store ptr %114, ptr %31, align 8, !tbaa !199
  %115 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !202
  %117 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %19, i64 0, i32 3
  store i32 %116, ptr %117, align 8, !tbaa !201
  %118 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 10
  %119 = load i32, ptr %118, align 4, !tbaa !204
  %120 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %19, i64 0, i32 4
  store i32 %119, ptr %120, align 4, !tbaa !203
  %121 = getelementptr inbounds %struct.ParticleRenderData, ptr %22, i64 0, i32 11
  %122 = load i32, ptr %121, align 8, !tbaa !206
  %123 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %19, i64 0, i32 5
  store i32 %122, ptr %123, align 8, !tbaa !205
  %124 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %19, i64 0, i32 6
  %125 = load i16, ptr %124, align 4, !tbaa !214
  %126 = and i16 %125, -3
  store i16 %126, ptr %124, align 4, !tbaa !214
  %127 = icmp eq ptr %114, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %84
  tail call void @psys_calc_dmcache(ptr noundef %0, ptr noundef nonnull %114, ptr noundef %1) #17
  br label %129

129:                                              ; preds = %128, %84
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %130(ptr noundef nonnull %22) #17
  store ptr null, ptr %21, align 8, !tbaa !96
  %131 = tail call float @psys_get_current_display_percentage(ptr noundef %1) #17
  %132 = fcmp une float %131, %20
  br i1 %132, label %133, label %166

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %135 = load i32, ptr %134, align 8, !tbaa !43
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !48
  %140 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 23
  %141 = load i32, ptr %140, align 4, !tbaa !215
  %142 = srem i32 %141, 1024
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !38
  %146 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %143
  %147 = load i32, ptr %146, align 4, !tbaa !38
  br label %148

148:                                              ; preds = %137, %148
  %149 = phi i32 [ 0, %137 ], [ %163, %148 ]
  %150 = phi ptr [ %139, %137 ], [ %164, %148 ]
  %151 = mul i32 %147, %149
  %152 = add i32 %151, %145
  %153 = and i32 %152, 1023
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !34
  %157 = fcmp ogt float %156, %131
  %158 = getelementptr inbounds %struct.ParticleData, ptr %150, i64 0, i32 17
  %159 = load i16, ptr %158, align 4, !tbaa !50
  %160 = and i16 %159, -3
  %161 = select i1 %157, i16 2, i16 0
  %162 = or disjoint i16 %160, %161
  store i16 %162, ptr %158, align 4, !tbaa !50
  %163 = add nuw nsw i32 %149, 1
  %164 = getelementptr inbounds %struct.ParticleData, ptr %150, i64 1
  %165 = icmp eq i32 %163, %135
  br i1 %165, label %166, label %148, !llvm.loop !216

166:                                              ; preds = %148, %133, %129, %18
  ret void
}

declare float @psys_get_current_display_percentage(ptr noundef) local_unnamed_addr #2

declare void @psys_calc_dmcache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @psys_render_simplify_distribution(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !217
  %14 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !220
  %18 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !221
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 21
  %23 = load i16, ptr %22, align 8, !tbaa !115
  %24 = icmp eq i16 %23, 6
  br i1 %24, label %25, label %589

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 15
  %27 = load i32, ptr %26, align 8, !tbaa !222
  %28 = and i32 %27, 32768
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %589, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 39
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  %33 = icmp eq ptr %32, null
  br i1 %33, label %589, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ParticleRenderData, ptr %32, i64 0, i32 18
  %36 = load i32, ptr %35, align 8, !tbaa !209
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %589

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 48
  %40 = load i16, ptr %39, align 4, !tbaa !223
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %589, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 31
  %45 = load ptr, ptr %44, align 8, !tbaa !224
  %46 = tail call ptr %45(ptr noundef %13) #17
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 33
  %48 = load ptr, ptr %47, align 8, !tbaa !225
  %49 = tail call ptr %48(ptr noundef %13) #17
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 25
  %51 = load ptr, ptr %50, align 8, !tbaa !226
  %52 = tail call i32 %51(ptr noundef %13) #17
  %53 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 30
  %54 = load i32, ptr %53, align 8, !tbaa !227
  %55 = icmp eq i32 %52, 0
  %56 = icmp eq i32 %54, 0
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %589, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 52
  %60 = load ptr, ptr %59, align 8, !tbaa !229
  %61 = tail call ptr %60(ptr noundef %13, i32 noundef 7) #17
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 54
  %63 = load ptr, ptr %62, align 8, !tbaa !230
  %64 = tail call ptr %63(ptr noundef %13, i32 noundef 7) #17
  %65 = icmp eq ptr %61, null
  %66 = select i1 %65, ptr null, ptr %64
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %68 = sext i32 %54 to i64
  %69 = shl nsw i64 %68, 2
  %70 = tail call ptr %67(i64 noundef %69, ptr noundef nonnull @.str.2) #17
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %72 = mul nsw i64 %68, 12
  %73 = tail call ptr %71(i64 noundef %72, ptr noundef nonnull @.str.3) #17
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %75 = tail call ptr %74(i64 noundef %69, ptr noundef nonnull @.str.2) #17
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %77 = mul nsw i64 %68, 28
  %78 = tail call ptr %76(i64 noundef %77, ptr noundef nonnull @.str.4) #17
  %79 = getelementptr inbounds %struct.ParticleRenderData, ptr %32, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !212
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %58
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %83(ptr noundef nonnull %80) #17
  br label %84

84:                                               ; preds = %82, %58
  %85 = getelementptr inbounds %struct.ParticleRenderData, ptr %32, i64 0, i32 17
  store i32 1, ptr %85, align 4, !tbaa !231
  store ptr %78, ptr %79, align 8, !tbaa !212
  %86 = getelementptr inbounds %struct.ParticleRenderData, ptr %32, i64 0, i32 20
  store ptr %61, ptr %86, align 8, !tbaa !232
  %87 = getelementptr inbounds %struct.ParticleRenderData, ptr %32, i64 0, i32 21
  store ptr %66, ptr %87, align 8, !tbaa !233
  %88 = icmp sgt i32 %1, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 10
  %91 = icmp eq ptr %66, null
  %92 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 10
  %93 = zext nneg i32 %1 to i64
  br label %107

94:                                               ; preds = %135, %84
  %95 = icmp sgt i32 %52, 0
  br i1 %95, label %96, label %138

96:                                               ; preds = %94
  %97 = icmp eq ptr %66, null
  %98 = getelementptr inbounds float, ptr %8, i64 1
  %99 = getelementptr inbounds float, ptr %8, i64 2
  %100 = getelementptr inbounds float, ptr %9, i64 1
  %101 = getelementptr inbounds float, ptr %9, i64 2
  %102 = getelementptr inbounds float, ptr %10, i64 1
  %103 = getelementptr inbounds float, ptr %10, i64 2
  %104 = getelementptr inbounds float, ptr %11, i64 1
  %105 = getelementptr inbounds float, ptr %11, i64 2
  %106 = zext nneg i32 %52 to i64
  br label %142

107:                                              ; preds = %89, %135
  %108 = phi i64 [ 0, %89 ], [ %136, %135 ]
  br i1 %65, label %121, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr %90, align 8, !tbaa !234
  %111 = getelementptr inbounds i32, ptr %110, i64 %108
  %112 = load i32, ptr %111, align 4, !tbaa !38
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %61, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !38
  %116 = icmp eq i32 %115, -1
  %117 = select i1 %116, i1 true, i1 %91
  br i1 %117, label %127, label %118

118:                                              ; preds = %109
  %119 = sext i32 %115 to i64
  %120 = getelementptr inbounds i32, ptr %66, i64 %119
  br label %124

121:                                              ; preds = %107
  %122 = load ptr, ptr %92, align 8, !tbaa !234
  %123 = getelementptr inbounds i32, ptr %122, i64 %108
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi ptr [ %120, %118 ], [ %123, %121 ]
  %126 = load i32, ptr %125, align 4, !tbaa !38
  br label %127

127:                                              ; preds = %124, %109
  %128 = phi i32 [ %115, %109 ], [ %126, %124 ]
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = sext i32 %128 to i64
  %132 = getelementptr inbounds %struct.ParticleRenderElem, ptr %78, i64 %131, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !235
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %132, align 4, !tbaa !235
  br label %135

135:                                              ; preds = %127, %130
  %136 = add nuw nsw i64 %108, 1
  %137 = icmp eq i64 %136, %93
  br i1 %137, label %94, label %107, !llvm.loop !237

138:                                              ; preds = %240, %94
  %139 = icmp sgt i32 %54, 0
  br i1 %139, label %140, label %264

140:                                              ; preds = %138
  %141 = zext nneg i32 %54 to i64
  br label %244

142:                                              ; preds = %96, %240
  %143 = phi i64 [ 0, %96 ], [ %241, %240 ]
  %144 = phi ptr [ %49, %96 ], [ %242, %240 ]
  %145 = trunc i64 %143 to i32
  br i1 %65, label %155, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds i32, ptr %61, i64 %143
  %148 = load i32, ptr %147, align 4, !tbaa !38
  %149 = icmp eq i32 %148, -1
  %150 = select i1 %149, i1 true, i1 %97
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = sext i32 %148 to i64
  %153 = getelementptr inbounds i32, ptr %66, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !38
  br label %155

155:                                              ; preds = %146, %151, %142
  %156 = phi i32 [ %145, %142 ], [ %154, %151 ], [ %148, %146 ]
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %240, label %158

158:                                              ; preds = %155
  %159 = load i32, ptr %144, align 4, !tbaa !238
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.MVert, ptr %46, i64 %160
  %162 = load float, ptr %161, align 4, !tbaa !34
  store float %162, ptr %8, align 4, !tbaa !34
  %163 = getelementptr inbounds float, ptr %161, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !34
  store float %164, ptr %98, align 4, !tbaa !34
  %165 = getelementptr inbounds float, ptr %161, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !34
  store float %166, ptr %99, align 4, !tbaa !34
  %167 = getelementptr inbounds %struct.MFace, ptr %144, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !240
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.MVert, ptr %46, i64 %169
  %171 = load float, ptr %170, align 4, !tbaa !34
  store float %171, ptr %9, align 4, !tbaa !34
  %172 = getelementptr inbounds float, ptr %170, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !34
  store float %173, ptr %100, align 4, !tbaa !34
  %174 = getelementptr inbounds float, ptr %170, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !34
  store float %175, ptr %101, align 4, !tbaa !34
  %176 = getelementptr inbounds %struct.MFace, ptr %144, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !241
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.MVert, ptr %46, i64 %178
  %180 = load float, ptr %179, align 4, !tbaa !34
  store float %180, ptr %10, align 4, !tbaa !34
  %181 = getelementptr inbounds float, ptr %179, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !34
  store float %182, ptr %102, align 4, !tbaa !34
  %183 = getelementptr inbounds float, ptr %179, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !34
  store float %184, ptr %103, align 4, !tbaa !34
  %185 = sext i32 %156 to i64
  %186 = getelementptr inbounds [3 x float], ptr %73, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = fadd float %162, %187
  store float %188, ptr %186, align 4, !tbaa !34
  %189 = load float, ptr %98, align 4, !tbaa !34
  %190 = getelementptr inbounds float, ptr %186, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !34
  %192 = fadd float %189, %191
  store float %192, ptr %190, align 4, !tbaa !34
  %193 = load float, ptr %99, align 4, !tbaa !34
  %194 = getelementptr inbounds float, ptr %186, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !34
  %196 = fadd float %193, %195
  store float %196, ptr %194, align 4, !tbaa !34
  %197 = load float, ptr %9, align 4, !tbaa !34
  %198 = fadd float %188, %197
  store float %198, ptr %186, align 4, !tbaa !34
  %199 = load float, ptr %100, align 4, !tbaa !34
  %200 = fadd float %192, %199
  store float %200, ptr %190, align 4, !tbaa !34
  %201 = load float, ptr %101, align 4, !tbaa !34
  %202 = fadd float %196, %201
  store float %202, ptr %194, align 4, !tbaa !34
  %203 = load float, ptr %10, align 4, !tbaa !34
  %204 = fadd float %198, %203
  store float %204, ptr %186, align 4, !tbaa !34
  %205 = load float, ptr %102, align 4, !tbaa !34
  %206 = fadd float %200, %205
  store float %206, ptr %190, align 4, !tbaa !34
  %207 = load float, ptr %103, align 4, !tbaa !34
  %208 = fadd float %202, %207
  store float %208, ptr %194, align 4, !tbaa !34
  %209 = getelementptr inbounds %struct.MFace, ptr %144, i64 0, i32 3
  %210 = load i32, ptr %209, align 4, !tbaa !242
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %229, label %212

212:                                              ; preds = %158
  %213 = zext i32 %210 to i64
  %214 = getelementptr inbounds %struct.MVert, ptr %46, i64 %213
  %215 = load float, ptr %214, align 4, !tbaa !34
  store float %215, ptr %11, align 4, !tbaa !34
  %216 = getelementptr inbounds float, ptr %214, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !34
  store float %217, ptr %104, align 4, !tbaa !34
  %218 = getelementptr inbounds float, ptr %214, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !34
  store float %219, ptr %105, align 4, !tbaa !34
  %220 = load float, ptr %186, align 4, !tbaa !34
  %221 = fadd float %215, %220
  store float %221, ptr %186, align 4, !tbaa !34
  %222 = load float, ptr %104, align 4, !tbaa !34
  %223 = load float, ptr %190, align 4, !tbaa !34
  %224 = fadd float %222, %223
  store float %224, ptr %190, align 4, !tbaa !34
  %225 = load float, ptr %105, align 4, !tbaa !34
  %226 = load float, ptr %194, align 4, !tbaa !34
  %227 = fadd float %225, %226
  store float %227, ptr %194, align 4, !tbaa !34
  %228 = call float @area_quad_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  br label %231

229:                                              ; preds = %158
  %230 = call float @area_tri_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  br label %231

231:                                              ; preds = %212, %229
  %232 = phi float [ %228, %212 ], [ %230, %229 ]
  %233 = phi i32 [ 4, %212 ], [ 3, %229 ]
  %234 = getelementptr inbounds float, ptr %70, i64 %185
  %235 = load float, ptr %234, align 4, !tbaa !34
  %236 = fadd float %232, %235
  store float %236, ptr %234, align 4, !tbaa !34
  %237 = getelementptr inbounds i32, ptr %75, i64 %185
  %238 = load i32, ptr %237, align 4, !tbaa !38
  %239 = add nsw i32 %238, %233
  store i32 %239, ptr %237, align 4, !tbaa !38
  br label %240

240:                                              ; preds = %231, %155
  %241 = add nuw nsw i64 %143, 1
  %242 = getelementptr inbounds %struct.MFace, ptr %144, i64 1
  %243 = icmp eq i64 %241, %106
  br i1 %243, label %138, label %142, !llvm.loop !243

244:                                              ; preds = %140, %261
  %245 = phi i64 [ 0, %140 ], [ %262, %261 ]
  %246 = getelementptr inbounds i32, ptr %75, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !38
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = getelementptr inbounds [3 x float], ptr %73, i64 %245
  %251 = sitofp i32 %247 to float
  %252 = fdiv float 1.000000e+00, %251
  %253 = load float, ptr %250, align 4, !tbaa !34
  %254 = fmul float %252, %253
  store float %254, ptr %250, align 4, !tbaa !34
  %255 = getelementptr inbounds float, ptr %250, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !34
  %257 = fmul float %252, %256
  store float %257, ptr %255, align 4, !tbaa !34
  %258 = getelementptr inbounds float, ptr %250, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !34
  %260 = fmul float %252, %259
  store float %260, ptr %258, align 4, !tbaa !34
  br label %261

261:                                              ; preds = %244, %249
  %262 = add nuw nsw i64 %245, 1
  %263 = icmp eq i64 %262, %141
  br i1 %263, label %264, label %244, !llvm.loop !244

264:                                              ; preds = %261, %138
  call void @BKE_mesh_texspace_get(ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #17
  %265 = load float, ptr %7, align 4, !tbaa !34
  %266 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !34
  %268 = fadd float %265, %267
  %269 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %270 = load float, ptr %269, align 4, !tbaa !34
  %271 = fadd float %268, %270
  %272 = fdiv float %271, 3.000000e+00
  %273 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 49
  %274 = load i16, ptr %273, align 2, !tbaa !245
  %275 = sitofp i16 %274 to float
  %276 = fdiv float %272, %275
  %277 = fmul float %276, %276
  %278 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 50
  %279 = load float, ptr %278, align 8, !tbaa !246
  %280 = fmul float %279, 5.000000e-01
  %281 = fpext float %280 to double
  %282 = call double @log(double noundef %281) #17
  %283 = fdiv double 0xBFE62E42FEFA39EF, %282
  %284 = fptrunc double %283 to float
  %285 = load i16, ptr %39, align 4, !tbaa !223
  %286 = and i16 %285, 2
  %287 = icmp eq i16 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %264
  %289 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 52
  %290 = load float, ptr %289, align 8, !tbaa !247
  %291 = fsub float 1.000000e+00, %290
  %292 = fpext float %291 to double
  %293 = call double @pow(double noundef %292, double noundef 5.000000e+00) #17
  br label %294

294:                                              ; preds = %264, %288
  %295 = phi double [ %293, %288 ], [ 1.000000e+00, %264 ]
  %296 = icmp sgt i32 %54, 0
  br i1 %296, label %297, label %507

297:                                              ; preds = %294
  %298 = getelementptr inbounds float, ptr %3, i64 1
  %299 = getelementptr inbounds float, ptr %3, i64 2
  %300 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %301 = getelementptr inbounds float, ptr %4, i64 1
  %302 = getelementptr inbounds float, ptr %4, i64 2
  %303 = getelementptr inbounds float, ptr %4, i64 1
  %304 = getelementptr inbounds float, ptr %4, i64 2
  %305 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %306 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 51
  %307 = zext nneg i32 %54 to i64
  br label %308

308:                                              ; preds = %297, %495
  %309 = phi i64 [ 0, %297 ], [ %504, %495 ]
  %310 = phi ptr [ %78, %297 ], [ %505, %495 ]
  %311 = load ptr, ptr %18, align 8, !tbaa !221
  %312 = getelementptr inbounds [3 x float], ptr %73, i64 %309
  %313 = getelementptr inbounds float, ptr %70, i64 %309
  %314 = load float, ptr %313, align 4, !tbaa !34
  %315 = getelementptr inbounds %struct.ParticleSystem, ptr %311, i64 0, i32 39
  %316 = load ptr, ptr %315, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %317 = load float, ptr %312, align 4, !tbaa !34
  store float %317, ptr %3, align 16, !tbaa !34
  %318 = getelementptr inbounds float, ptr %312, i64 1
  %319 = load float, ptr %318, align 4, !tbaa !34
  store float %319, ptr %298, align 4, !tbaa !34
  %320 = getelementptr inbounds float, ptr %312, i64 2
  %321 = load float, ptr %320, align 4, !tbaa !34
  store float %321, ptr %299, align 8, !tbaa !34
  store float 1.000000e+00, ptr %300, align 4, !tbaa !34
  %322 = getelementptr inbounds %struct.ParticleRenderData, ptr %316, i64 0, i32 13
  call void @mul_m4_v4(ptr noundef nonnull %322, ptr noundef nonnull %3) #17
  %323 = load float, ptr %3, align 16, !tbaa !34
  %324 = load float, ptr %298, align 4, !tbaa !34
  %325 = fmul float %324, %324
  %326 = call float @llvm.fmuladd.f32(float %323, float %323, float %325)
  %327 = load float, ptr %299, align 8, !tbaa !34
  %328 = call float @llvm.fmuladd.f32(float %327, float %327, float %326)
  %329 = fcmp ogt float %328, 0x38AA95A5C0000000
  br i1 %329, label %330, label %339

330:                                              ; preds = %308
  %331 = call float @sqrtf(float noundef %328) #17
  %332 = fdiv float 1.000000e+00, %331
  %333 = load float, ptr %3, align 16, !tbaa !34
  %334 = fmul float %333, %332
  store float %334, ptr %4, align 4, !tbaa !34
  %335 = load float, ptr %298, align 4, !tbaa !34
  %336 = fmul float %332, %335
  store float %336, ptr %303, align 4, !tbaa !34
  %337 = load float, ptr %299, align 8, !tbaa !34
  %338 = fmul float %332, %337
  store float %338, ptr %304, align 4, !tbaa !34
  br label %340

339:                                              ; preds = %308
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %301, align 4, !tbaa !34
  store float 0.000000e+00, ptr %302, align 4, !tbaa !34
  br label %340

340:                                              ; preds = %339, %330
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #17
  %341 = load float, ptr %299, align 8, !tbaa !34
  %342 = getelementptr inbounds %struct.ParticleRenderData, ptr %316, i64 0, i32 14
  %343 = getelementptr inbounds %struct.ParticleRenderData, ptr %316, i64 0, i32 14, i64 2, i64 3
  %344 = load float, ptr %343, align 4, !tbaa !34
  %345 = getelementptr inbounds %struct.ParticleRenderData, ptr %316, i64 0, i32 14, i64 3, i64 3
  %346 = load float, ptr %345, align 4, !tbaa !34
  %347 = call float @llvm.fmuladd.f32(float %341, float %344, float %346)
  %348 = getelementptr inbounds %struct.ParticleRenderData, ptr %316, i64 0, i32 15
  %349 = load i32, ptr %348, align 4, !tbaa !207
  %350 = sitofp i32 %349 to float
  %351 = load float, ptr %6, align 4, !tbaa !34
  %352 = fmul float %351, %350
  %353 = load float, ptr %342, align 4, !tbaa !34
  %354 = fmul float %352, %353
  %355 = getelementptr inbounds %struct.ParticleRenderData, ptr %316, i64 0, i32 16
  %356 = load i32, ptr %355, align 8, !tbaa !208
  %357 = sitofp i32 %356 to float
  %358 = load float, ptr %305, align 4, !tbaa !34
  %359 = fmul float %358, %357
  %360 = getelementptr inbounds %struct.ParticleRenderData, ptr %316, i64 0, i32 14, i64 1, i64 1
  %361 = load float, ptr %360, align 4, !tbaa !34
  %362 = fmul float %359, %361
  %363 = fmul float %362, %362
  %364 = call float @llvm.fmuladd.f32(float %354, float %354, float %363)
  %365 = call float @sqrtf(float noundef %364) #17
  %366 = fdiv float %365, %347
  %367 = fmul float %314, %366
  %368 = fmul float %366, %367
  call void @mul_m4_v4(ptr noundef nonnull %342, ptr noundef nonnull %3) #17
  %369 = load float, ptr %300, align 4, !tbaa !34
  %370 = fcmp une float %369, 0.000000e+00
  br i1 %370, label %371, label %386

371:                                              ; preds = %340
  %372 = load i32, ptr %348, align 4, !tbaa !207
  %373 = sitofp i32 %372 to float
  %374 = fmul float %373, 5.000000e-01
  %375 = load float, ptr %3, align 16, !tbaa !34
  %376 = fdiv float %375, %369
  %377 = fadd float %376, 1.000000e+00
  %378 = fmul float %374, %377
  store float %378, ptr %3, align 16, !tbaa !34
  %379 = load i32, ptr %355, align 8, !tbaa !208
  %380 = sitofp i32 %379 to float
  %381 = fmul float %380, 5.000000e-01
  %382 = load float, ptr %298, align 4, !tbaa !34
  %383 = fdiv float %382, %369
  %384 = fadd float %383, 1.000000e+00
  %385 = fmul float %381, %384
  store float %385, ptr %298, align 4, !tbaa !34
  br label %386

386:                                              ; preds = %371, %340
  %387 = fdiv float %368, 0x400921FB60000000
  %388 = call float @sqrtf(float noundef %387) #17
  %389 = load float, ptr %3, align 16, !tbaa !34
  %390 = fadd float %388, %389
  %391 = fcmp olt float %390, 0.000000e+00
  %392 = load i32, ptr %348, align 4, !tbaa !207
  %393 = sitofp i32 %392 to float
  br i1 %391, label %394, label %396

394:                                              ; preds = %386
  %395 = fneg float %390
  br label %401

396:                                              ; preds = %386
  %397 = fsub float %389, %388
  %398 = fcmp ogt float %397, %393
  br i1 %398, label %399, label %407

399:                                              ; preds = %396
  %400 = fsub float %397, %393
  br label %401

401:                                              ; preds = %394, %399
  %402 = phi float [ %400, %399 ], [ %395, %394 ]
  %403 = fdiv float %402, %393
  %404 = fpext float %403 to double
  %405 = call double @pow(double noundef %295, double noundef %404) #17
  %406 = fptrunc double %405 to float
  br label %407

407:                                              ; preds = %401, %396
  %408 = phi float [ 1.000000e+00, %396 ], [ %406, %401 ]
  %409 = load float, ptr %298, align 4, !tbaa !34
  %410 = fadd float %388, %409
  %411 = fcmp olt float %410, 0.000000e+00
  %412 = load i32, ptr %355, align 8, !tbaa !208
  %413 = sitofp i32 %412 to float
  br i1 %411, label %414, label %416

414:                                              ; preds = %407
  %415 = fneg float %410
  br label %421

416:                                              ; preds = %407
  %417 = fsub float %409, %388
  %418 = fcmp ogt float %417, %413
  br i1 %418, label %419, label %428

419:                                              ; preds = %416
  %420 = fsub float %417, %413
  br label %421

421:                                              ; preds = %419, %414
  %422 = phi float [ %420, %419 ], [ %415, %414 ]
  %423 = fdiv float %422, %413
  %424 = fpext float %423 to double
  %425 = call double @pow(double noundef %295, double noundef %424) #17
  %426 = fptrunc double %425 to float
  %427 = fmul float %408, %426
  br label %428

428:                                              ; preds = %421, %416
  %429 = phi float [ %408, %416 ], [ %427, %421 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  %430 = fmul float %277, %368
  %431 = load float, ptr %313, align 4, !tbaa !34
  %432 = fdiv float %430, %431
  %433 = fcmp olt float %432, 1.000000e+00
  %434 = fcmp olt float %429, 1.000000e+00
  %435 = select i1 %433, i1 true, i1 %434
  br i1 %435, label %436, label %491

436:                                              ; preds = %428
  %437 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 1
  %438 = load i32, ptr %437, align 4, !tbaa !235
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %491, label %440

440:                                              ; preds = %436
  br i1 %433, label %441, label %443

441:                                              ; preds = %440
  %442 = call float @powf(float noundef %432, float noundef %284) #17
  br label %443

443:                                              ; preds = %440, %441
  %444 = phi float [ %442, %441 ], [ 1.000000e+00, %440 ]
  %445 = fmul float %429, %444
  %446 = load i32, ptr %437, align 4, !tbaa !235
  %447 = sitofp i32 %446 to float
  %448 = fdiv float 1.000000e+00, %447
  %449 = fcmp ogt float %445, %448
  %450 = select i1 %449, float %445, float %448
  %451 = load float, ptr %306, align 4, !tbaa !248
  %452 = fsub float %450, %451
  %453 = fcmp olt float %452, 0.000000e+00
  br i1 %453, label %459, label %454

454:                                              ; preds = %443
  %455 = fadd float %451, %450
  %456 = fcmp ogt float %455, 1.000000e+00
  %457 = fsub float 1.000000e+00, %450
  %458 = select i1 %456, float %457, float %451
  br label %459

459:                                              ; preds = %443, %454
  %460 = phi float [ %458, %454 ], [ %450, %443 ]
  %461 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 4
  store float %460, ptr %461, align 4, !tbaa !249
  %462 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 2
  store i32 1, ptr %462, align 4, !tbaa !250
  %463 = fadd float %451, %450
  %464 = fcmp olt float %463, 1.000000e+00
  %465 = fmul float %460, %460
  %466 = fdiv float %465, %451
  %467 = fsub float 1.000000e+00, %466
  %468 = select i1 %464, float %450, float %467
  %469 = fdiv float 1.000000e+00, %468
  %470 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 6
  store float %469, ptr %470, align 4, !tbaa !251
  %471 = fdiv float %460, %451
  %472 = fsub float 1.000000e+00, %471
  %473 = fmul float %472, %469
  %474 = select i1 %464, float 0.000000e+00, float %473
  %475 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 5
  %476 = call float @sqrtf(float noundef %474) #17
  store float %476, ptr %475, align 4, !tbaa !252
  %477 = load float, ptr %470, align 4, !tbaa !251
  %478 = call float @sqrtf(float noundef %477) #17
  store float %478, ptr %470, align 4, !tbaa !251
  %479 = load i32, ptr %437, align 4, !tbaa !235
  %480 = call i32 @llvm.smin.i32(i32 %479, i32 10)
  %481 = sitofp i32 %480 to float
  %482 = load float, ptr %475, align 4, !tbaa !252
  %483 = fcmp ogt float %482, %481
  %484 = select i1 %483, float %481, float %482
  store float %484, ptr %475, align 4, !tbaa !252
  %485 = fcmp ogt float %478, %481
  %486 = select i1 %485, float %481, float %478
  store float %486, ptr %470, align 4, !tbaa !251
  %487 = load float, ptr %461, align 4, !tbaa !249
  %488 = fadd float %450, %487
  %489 = fcmp ogt float %488, 1.000000e+00
  br i1 %489, label %490, label %495

490:                                              ; preds = %459
  br label %495

491:                                              ; preds = %428, %436
  %492 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 6
  store float 1.000000e+00, ptr %492, align 4, !tbaa !251
  %493 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 5
  store float 1.000000e+00, ptr %493, align 4, !tbaa !252
  %494 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 2
  store i32 0, ptr %494, align 4, !tbaa !250
  br label %495

495:                                              ; preds = %459, %490, %491
  %496 = phi float [ 1.000000e+00, %490 ], [ %488, %459 ], [ %432, %491 ]
  %497 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 3
  store float %496, ptr %497, align 4, !tbaa !253
  %498 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 5
  %499 = load float, ptr %498, align 4, !tbaa !252
  %500 = call float @sqrtf(float noundef %499) #17
  store float %500, ptr %498, align 4, !tbaa !252
  %501 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 0, i32 6
  %502 = load float, ptr %501, align 4, !tbaa !251
  %503 = call float @sqrtf(float noundef %502) #17
  store float %503, ptr %501, align 4, !tbaa !251
  store i32 0, ptr %310, align 4, !tbaa !254
  %504 = add nuw nsw i64 %309, 1
  %505 = getelementptr inbounds %struct.ParticleRenderElem, ptr %310, i64 1
  %506 = icmp eq i64 %504, %307
  br i1 %506, label %507, label %308, !llvm.loop !255

507:                                              ; preds = %495, %294
  %508 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %508(ptr noundef %70) #17
  %509 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %509(ptr noundef %73) #17
  %510 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %510(ptr noundef %75) #17
  %511 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %512 = sext i32 %1 to i64
  %513 = shl nsw i64 %512, 2
  %514 = call ptr %511(i64 noundef %513, ptr noundef nonnull @.str.5) #17
  %515 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 11
  store ptr %514, ptr %515, align 8, !tbaa !256
  %516 = icmp sgt i32 %1, 0
  br i1 %516, label %517, label %523

517:                                              ; preds = %507
  %518 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 10
  %519 = icmp eq ptr %66, null
  %520 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 10
  %521 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 10
  %522 = zext nneg i32 %1 to i64
  br label %526

523:                                              ; preds = %578, %507
  %524 = phi i32 [ 0, %507 ], [ %579, %578 ]
  %525 = icmp sgt i32 %54, 0
  br i1 %525, label %583, label %589

526:                                              ; preds = %517, %578
  %527 = phi i64 [ 0, %517 ], [ %581, %578 ]
  %528 = phi i32 [ 0, %517 ], [ %580, %578 ]
  %529 = phi i32 [ 0, %517 ], [ %579, %578 ]
  br i1 %65, label %542, label %530

530:                                              ; preds = %526
  %531 = load ptr, ptr %518, align 8, !tbaa !234
  %532 = getelementptr inbounds i32, ptr %531, i64 %527
  %533 = load i32, ptr %532, align 4, !tbaa !38
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, ptr %61, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !38
  %537 = icmp eq i32 %536, -1
  %538 = select i1 %537, i1 true, i1 %519
  br i1 %538, label %548, label %539

539:                                              ; preds = %530
  %540 = sext i32 %536 to i64
  %541 = getelementptr inbounds i32, ptr %66, i64 %540
  br label %545

542:                                              ; preds = %526
  %543 = load ptr, ptr %520, align 8, !tbaa !234
  %544 = getelementptr inbounds i32, ptr %543, i64 %527
  br label %545

545:                                              ; preds = %542, %539
  %546 = phi ptr [ %541, %539 ], [ %544, %542 ]
  %547 = load i32, ptr %546, align 4, !tbaa !38
  br label %548

548:                                              ; preds = %545, %530
  %549 = phi i32 [ %536, %530 ], [ %547, %545 ]
  %550 = icmp eq i32 %549, -1
  br i1 %550, label %576, label %551

551:                                              ; preds = %548
  %552 = sext i32 %549 to i64
  %553 = getelementptr inbounds %struct.ParticleRenderElem, ptr %78, i64 %552
  %554 = load i32, ptr %553, align 4, !tbaa !254
  %555 = add nsw i32 %554, 1
  store i32 %555, ptr %553, align 4, !tbaa !254
  %556 = sitofp i32 %554 to double
  %557 = getelementptr inbounds %struct.ParticleRenderElem, ptr %78, i64 %552, i32 3
  %558 = load float, ptr %557, align 4, !tbaa !253
  %559 = getelementptr inbounds %struct.ParticleRenderElem, ptr %78, i64 %552, i32 1
  %560 = load i32, ptr %559, align 4, !tbaa !235
  %561 = sitofp i32 %560 to float
  %562 = fmul float %558, %561
  %563 = call float @llvm.ceil.f32(float %562)
  %564 = fpext float %563 to double
  %565 = fcmp olt double %556, %564
  br i1 %565, label %566, label %574

566:                                              ; preds = %551
  %567 = load ptr, ptr %521, align 8, !tbaa !234
  %568 = getelementptr inbounds i32, ptr %567, i64 %527
  %569 = load i32, ptr %568, align 4, !tbaa !38
  %570 = sext i32 %529 to i64
  %571 = getelementptr inbounds i32, ptr %567, i64 %570
  store i32 %569, ptr %571, align 4, !tbaa !38
  %572 = getelementptr inbounds i32, ptr %514, i64 %570
  store i32 %528, ptr %572, align 4, !tbaa !38
  %573 = add nsw i32 %529, 1
  br label %578

574:                                              ; preds = %551
  %575 = add nsw i32 %528, 1
  br label %578

576:                                              ; preds = %548
  %577 = add nsw i32 %528, 1
  br label %578

578:                                              ; preds = %576, %574, %566
  %579 = phi i32 [ %573, %566 ], [ %529, %574 ], [ %529, %576 ]
  %580 = phi i32 [ 0, %566 ], [ %575, %574 ], [ %577, %576 ]
  %581 = add nuw nsw i64 %527, 1
  %582 = icmp eq i64 %581, %522
  br i1 %582, label %523, label %526, !llvm.loop !257

583:                                              ; preds = %523, %583
  %584 = phi ptr [ %587, %583 ], [ %78, %523 ]
  %585 = phi i32 [ %586, %583 ], [ 0, %523 ]
  store i32 0, ptr %584, align 4, !tbaa !254
  %586 = add nuw nsw i32 %585, 1
  %587 = getelementptr inbounds %struct.ParticleRenderElem, ptr %584, i64 1
  %588 = icmp eq i32 %586, %54
  br i1 %588, label %589, label %583, !llvm.loop !258

589:                                              ; preds = %583, %523, %43, %38, %34, %30, %2, %25
  %590 = phi i32 [ %1, %25 ], [ %1, %2 ], [ %1, %30 ], [ 0, %34 ], [ %1, %38 ], [ %1, %43 ], [ %524, %523 ], [ %524, %583 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  ret i32 %590
}

declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @psys_render_simplify_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 48
  %11 = load i16, ptr %10, align 4, !tbaa !223
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !231
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %82, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !232
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !233
  %25 = load i32, ptr %1, align 4, !tbaa !259
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %20, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = icmp eq ptr %24, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = sext i32 %28 to i64
  %34 = getelementptr inbounds i32, ptr %24, i64 %33
  br label %35

35:                                               ; preds = %18, %32
  %36 = phi ptr [ %34, %32 ], [ %1, %18 ]
  %37 = load i32, ptr %36, align 4, !tbaa !38
  br label %38

38:                                               ; preds = %35, %30, %22
  %39 = phi i32 [ -1, %22 ], [ %28, %30 ], [ %37, %35 ]
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %82, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !212
  %44 = sext i32 %39 to i64
  %45 = getelementptr inbounds %struct.ParticleRenderElem, ptr %43, i64 %44
  %46 = getelementptr inbounds %struct.ParticleRenderElem, ptr %43, i64 %44, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !253
  %48 = getelementptr inbounds %struct.ParticleRenderElem, ptr %43, i64 %44, i32 4
  %49 = load float, ptr %48, align 4, !tbaa !249
  %50 = getelementptr inbounds %struct.ParticleRenderElem, ptr %43, i64 %44, i32 5
  %51 = load float, ptr %50, align 4, !tbaa !252
  %52 = getelementptr inbounds %struct.ParticleRenderElem, ptr %43, i64 %44, i32 6
  %53 = load float, ptr %52, align 4, !tbaa !251
  %54 = getelementptr inbounds %struct.ParticleRenderElem, ptr %43, i64 %44, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !250
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %41
  %58 = load i32, ptr %45, align 4, !tbaa !254
  %59 = sitofp i32 %58 to float
  %60 = fadd float %59, 5.000000e-01
  %61 = getelementptr inbounds %struct.ParticleRenderElem, ptr %43, i64 %44, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !235
  %63 = sitofp i32 %62 to float
  %64 = fdiv float %60, %63
  %65 = fsub float %47, %49
  %66 = fcmp olt float %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %57
  %68 = fadd float %47, %49
  %69 = fcmp ult float %64, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = fsub float %68, %64
  %72 = fmul float %49, 2.000000e+00
  %73 = fdiv float %71, %72
  %74 = fsub float %53, %51
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %73, float %51)
  br label %76

76:                                               ; preds = %67, %57, %41, %70
  %77 = phi float [ %73, %70 ], [ 1.000000e+00, %41 ], [ 1.000000e+00, %57 ], [ 0.000000e+00, %67 ]
  %78 = phi float [ %75, %70 ], [ %51, %41 ], [ %53, %57 ], [ %51, %67 ]
  store float %78, ptr %2, align 4, !tbaa !34
  %79 = getelementptr inbounds float, ptr %2, i64 1
  store float %77, ptr %79, align 4, !tbaa !34
  %80 = load i32, ptr %45, align 4, !tbaa !254
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %45, align 4, !tbaa !254
  br label %82

82:                                               ; preds = %38, %14, %3, %7, %76
  %83 = phi i8 [ 1, %76 ], [ 0, %7 ], [ 0, %3 ], [ 0, %14 ], [ 0, %38 ]
  ret i8 %83
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind uwtable
define dso_local void @psys_interpolate_particle(i16 noundef signext %0, ptr noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %8 = sext i16 %0 to i32
  %9 = icmp slt i16 %0, 0
  %10 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 1
  br i1 %9, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 1, i32 1
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 2
  %15 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 2, i32 1
  tail call void @interp_cubic_v3(ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %2) #17
  br label %49

16:                                               ; preds = %5
  call void @key_curve_position_weights(float noundef %2, ptr noundef nonnull %6, i32 noundef %8) #17
  %17 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 2
  %18 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 3
  call void @interp_v3_v3v3v3v3(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %6) #17
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %21 = fcmp ogt float %2, 0x3FEFF7CEE0000000
  %22 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 1
  %23 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 1, i64 1
  %24 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 1, i64 2
  br i1 %21, label %25, label %30

25:                                               ; preds = %20
  %26 = fadd float %2, 0xBF50624DE0000000
  call void @key_curve_position_weights(float noundef %26, ptr noundef nonnull %6, i32 noundef %8) #17
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %6) #17
  %27 = load float, ptr %3, align 4, !tbaa !34
  %28 = load float, ptr %7, align 4, !tbaa !34
  %29 = fsub float %27, %28
  br label %35

30:                                               ; preds = %20
  %31 = fadd float %2, 0x3F50624DE0000000
  call void @key_curve_position_weights(float noundef %31, ptr noundef nonnull %6, i32 noundef %8) #17
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %6) #17
  %32 = load float, ptr %7, align 4, !tbaa !34
  %33 = load float, ptr %3, align 4, !tbaa !34
  %34 = fsub float %32, %33
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi float [ %34, %30 ], [ %29, %25 ]
  %37 = phi ptr [ %7, %30 ], [ %3, %25 ]
  %38 = phi ptr [ %3, %30 ], [ %7, %25 ]
  store float %36, ptr %22, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %37, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %38, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fsub float %40, %42
  store float %43, ptr %23, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %37, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %38, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fsub float %45, %47
  store float %48, ptr %24, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %49

49:                                               ; preds = %16, %35, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret void
}

declare void @interp_cubic_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @psys_get_dietime_from_cache(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %7, i32 noundef %1) #17
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PTCacheMem, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !261
  %13 = uitofp i32 %12 to float
  br label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.PTCacheMem, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !263

18:                                               ; preds = %14, %2, %10
  %19 = phi float [ %13, %10 ], [ 1.000000e+07, %2 ], [ 1.000000e+07, %14 ]
  ret float %19
}

declare i32 @BKE_ptcache_mem_index_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_interpolate_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #17
  %17 = load i32, ptr %1, align 4, !tbaa !238
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MVert, ptr %0, i64 %18
  %20 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !240
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.MVert, ptr %0, i64 %22
  %24 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !241
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %0, i64 %26
  %28 = getelementptr inbounds %struct.MVert, ptr %0, i64 %18, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !264
  %30 = sitofp i16 %29 to float
  %31 = fmul float %30, 0x3F00002000000000
  store float %31, ptr %12, align 4, !tbaa !34
  %32 = getelementptr inbounds i16, ptr %28, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !264
  %34 = sitofp i16 %33 to float
  %35 = fmul float %34, 0x3F00002000000000
  %36 = getelementptr inbounds float, ptr %12, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = getelementptr inbounds i16, ptr %28, i64 2
  %38 = load i16, ptr %37, align 2, !tbaa !264
  %39 = sitofp i16 %38 to float
  %40 = fmul float %39, 0x3F00002000000000
  %41 = getelementptr inbounds float, ptr %12, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.MVert, ptr %0, i64 %22, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !264
  %44 = sitofp i16 %43 to float
  %45 = fmul float %44, 0x3F00002000000000
  store float %45, ptr %13, align 4, !tbaa !34
  %46 = getelementptr inbounds i16, ptr %42, i64 1
  %47 = load i16, ptr %46, align 2, !tbaa !264
  %48 = sitofp i16 %47 to float
  %49 = fmul float %48, 0x3F00002000000000
  %50 = getelementptr inbounds float, ptr %13, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = getelementptr inbounds i16, ptr %42, i64 2
  %52 = load i16, ptr %51, align 2, !tbaa !264
  %53 = sitofp i16 %52 to float
  %54 = fmul float %53, 0x3F00002000000000
  %55 = getelementptr inbounds float, ptr %13, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.MVert, ptr %0, i64 %26, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !264
  %58 = sitofp i16 %57 to float
  %59 = fmul float %58, 0x3F00002000000000
  store float %59, ptr %14, align 4, !tbaa !34
  %60 = getelementptr inbounds i16, ptr %56, i64 1
  %61 = load i16, ptr %60, align 2, !tbaa !264
  %62 = sitofp i16 %61 to float
  %63 = fmul float %62, 0x3F00002000000000
  %64 = getelementptr inbounds float, ptr %14, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = getelementptr inbounds i16, ptr %56, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !264
  %67 = sitofp i16 %66 to float
  %68 = fmul float %67, 0x3F00002000000000
  %69 = getelementptr inbounds float, ptr %14, i64 2
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !242
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %99, label %73

73:                                               ; preds = %11
  %74 = zext i32 %71 to i64
  %75 = getelementptr inbounds %struct.MVert, ptr %0, i64 %74
  %76 = getelementptr inbounds %struct.MVert, ptr %0, i64 %74, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !264
  %78 = sitofp i16 %77 to float
  %79 = fmul float %78, 0x3F00002000000000
  store float %79, ptr %15, align 4, !tbaa !34
  %80 = getelementptr inbounds i16, ptr %76, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !264
  %82 = sitofp i16 %81 to float
  %83 = fmul float %82, 0x3F00002000000000
  %84 = getelementptr inbounds float, ptr %15, i64 1
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = getelementptr inbounds i16, ptr %76, i64 2
  %86 = load i16, ptr %85, align 2, !tbaa !264
  %87 = sitofp i16 %86 to float
  %88 = fmul float %87, 0x3F00002000000000
  %89 = getelementptr inbounds float, ptr %15, i64 2
  store float %88, ptr %89, align 4, !tbaa !34
  tail call void @interp_v3_v3v3v3v3(ptr noundef %5, ptr noundef %19, ptr noundef %23, ptr noundef %27, ptr noundef nonnull %75, ptr noundef %4) #17
  %90 = icmp eq ptr %6, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %73
  %92 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 6
  %93 = load i8, ptr %92, align 1, !tbaa !265
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %4) #17
  br label %109

97:                                               ; preds = %91
  %98 = tail call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %19, ptr noundef %23, ptr noundef %27, ptr noundef nonnull %75) #17
  br label %109

99:                                               ; preds = %11
  tail call void @interp_v3_v3v3v3(ptr noundef %5, ptr noundef %19, ptr noundef %23, ptr noundef %27, ptr noundef %4) #17
  %100 = icmp eq ptr %6, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 6
  %103 = load i8, ptr %102, align 1, !tbaa !265
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  call void @interp_v3_v3v3v3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %4) #17
  br label %109

107:                                              ; preds = %101
  %108 = tail call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %19, ptr noundef %23, ptr noundef %27) #17
  br label %109

109:                                              ; preds = %99, %107, %106, %73, %97, %96
  %110 = phi ptr [ %75, %96 ], [ %75, %97 ], [ %75, %73 ], [ null, %106 ], [ null, %107 ], [ null, %99 ]
  %111 = icmp ne ptr %7, null
  %112 = icmp ne ptr %8, null
  %113 = and i1 %111, %112
  br i1 %113, label %114, label %214

114:                                              ; preds = %109
  %115 = icmp eq ptr %2, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 1
  %118 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 2
  %119 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 3
  br label %150

120:                                              ; preds = %114
  %121 = getelementptr inbounds [4 x [2 x float]], ptr %16, i64 0, i64 1
  %122 = getelementptr inbounds [4 x [2 x float]], ptr %16, i64 0, i64 2
  %123 = getelementptr inbounds [4 x [2 x float]], ptr %16, i64 0, i64 3
  %124 = getelementptr inbounds float, ptr %16, i64 1
  %125 = load float, ptr %19, align 4, !tbaa !34
  %126 = getelementptr inbounds float, ptr %19, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !34
  %128 = getelementptr inbounds float, ptr %19, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %16, ptr noundef nonnull %124, float noundef %125, float noundef %127, float noundef %129) #17
  %130 = getelementptr inbounds [4 x [2 x float]], ptr %16, i64 0, i64 1, i64 1
  %131 = load float, ptr %23, align 4, !tbaa !34
  %132 = getelementptr inbounds float, ptr %23, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !34
  %134 = getelementptr inbounds float, ptr %23, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %121, ptr noundef nonnull %130, float noundef %131, float noundef %133, float noundef %135) #17
  %136 = getelementptr inbounds [4 x [2 x float]], ptr %16, i64 0, i64 2, i64 1
  %137 = load float, ptr %27, align 4, !tbaa !34
  %138 = getelementptr inbounds float, ptr %27, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !34
  %140 = getelementptr inbounds float, ptr %27, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %122, ptr noundef nonnull %136, float noundef %137, float noundef %139, float noundef %141) #17
  %142 = icmp eq ptr %110, null
  br i1 %142, label %150, label %143

143:                                              ; preds = %120
  %144 = getelementptr inbounds [4 x [2 x float]], ptr %16, i64 0, i64 3, i64 1
  %145 = load float, ptr %110, align 4, !tbaa !34
  %146 = getelementptr inbounds float, ptr %110, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !34
  %148 = getelementptr inbounds float, ptr %110, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %123, ptr noundef nonnull %144, float noundef %145, float noundef %147, float noundef %149) #17
  br label %150

150:                                              ; preds = %120, %143, %116
  %151 = phi ptr [ %2, %116 ], [ %16, %143 ], [ %16, %120 ]
  %152 = phi ptr [ %117, %116 ], [ %121, %143 ], [ %121, %120 ]
  %153 = phi ptr [ %118, %116 ], [ %122, %143 ], [ %122, %120 ]
  %154 = phi ptr [ %119, %116 ], [ %123, %143 ], [ %123, %120 ]
  %155 = icmp eq ptr %110, null
  %156 = load float, ptr %151, align 4, !tbaa !34
  %157 = getelementptr inbounds float, ptr %151, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !34
  %159 = load float, ptr %19, align 4, !tbaa !34
  %160 = getelementptr inbounds float, ptr %19, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !34
  %162 = getelementptr inbounds float, ptr %19, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !34
  %164 = select i1 %155, ptr %152, ptr %153
  %165 = select i1 %155, ptr %153, ptr %154
  %166 = select i1 %155, ptr %23, ptr %27
  %167 = select i1 %155, ptr %27, ptr %110
  %168 = load float, ptr %164, align 4, !tbaa !34
  %169 = fsub float %168, %156
  %170 = load float, ptr %165, align 4, !tbaa !34
  %171 = fsub float %170, %156
  %172 = select i1 %155, ptr %152, ptr %153
  %173 = getelementptr inbounds float, ptr %172, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !34
  %175 = fsub float %174, %158
  %176 = select i1 %155, ptr %153, ptr %154
  %177 = getelementptr inbounds float, ptr %176, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !34
  %179 = fsub float %178, %158
  %180 = load float, ptr %166, align 4, !tbaa !34
  %181 = fsub float %180, %159
  %182 = getelementptr inbounds float, ptr %166, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !34
  %184 = fsub float %183, %161
  %185 = getelementptr inbounds float, ptr %166, i64 2
  %186 = load float, ptr %185, align 4, !tbaa !34
  %187 = fsub float %186, %163
  %188 = load float, ptr %167, align 4, !tbaa !34
  %189 = fsub float %188, %159
  %190 = getelementptr inbounds float, ptr %167, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !34
  %192 = fsub float %191, %161
  %193 = getelementptr inbounds float, ptr %167, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !34
  %195 = fsub float %194, %163
  %196 = fneg float %171
  %197 = fmul float %181, %196
  %198 = call float @llvm.fmuladd.f32(float %169, float %189, float %197)
  store float %198, ptr %8, align 4, !tbaa !34
  %199 = fmul float %184, %196
  %200 = call float @llvm.fmuladd.f32(float %169, float %192, float %199)
  %201 = getelementptr inbounds float, ptr %8, i64 1
  store float %200, ptr %201, align 4, !tbaa !34
  %202 = fmul float %187, %196
  %203 = call float @llvm.fmuladd.f32(float %169, float %195, float %202)
  %204 = getelementptr inbounds float, ptr %8, i64 2
  store float %203, ptr %204, align 4, !tbaa !34
  %205 = fneg float %179
  %206 = fmul float %181, %205
  %207 = call float @llvm.fmuladd.f32(float %175, float %189, float %206)
  store float %207, ptr %7, align 4, !tbaa !34
  %208 = fmul float %184, %205
  %209 = call float @llvm.fmuladd.f32(float %175, float %192, float %208)
  %210 = getelementptr inbounds float, ptr %7, i64 1
  store float %209, ptr %210, align 4, !tbaa !34
  %211 = fmul float %187, %205
  %212 = call float @llvm.fmuladd.f32(float %175, float %195, float %211)
  %213 = getelementptr inbounds float, ptr %7, i64 2
  store float %212, ptr %213, align 4, !tbaa !34
  br label %214

214:                                              ; preds = %150, %109
  %215 = icmp eq ptr %9, null
  br i1 %215, label %259, label %216

216:                                              ; preds = %214
  %217 = icmp eq ptr %3, null
  br i1 %217, label %240, label %218

218:                                              ; preds = %216
  %219 = load i32, ptr %1, align 4, !tbaa !238
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [3 x float], ptr %3, i64 %220
  %222 = load i32, ptr %20, align 4, !tbaa !240
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [3 x float], ptr %3, i64 %223
  %225 = load i32, ptr %24, align 4, !tbaa !241
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [3 x float], ptr %3, i64 %226
  %228 = load i32, ptr %70, align 4, !tbaa !242
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %218
  %231 = zext i32 %228 to i64
  %232 = getelementptr inbounds [3 x float], ptr %3, i64 %231
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %9, ptr noundef nonnull %221, ptr noundef nonnull %224, ptr noundef nonnull %227, ptr noundef nonnull %232, ptr noundef %4) #17
  %233 = icmp eq ptr %10, null
  br i1 %233, label %259, label %234

234:                                              ; preds = %230
  %235 = call float @normal_quad_v3(ptr noundef nonnull %10, ptr noundef nonnull %221, ptr noundef nonnull %224, ptr noundef nonnull %227, ptr noundef nonnull %232) #17
  br label %259

236:                                              ; preds = %218
  call void @interp_v3_v3v3v3(ptr noundef nonnull %9, ptr noundef nonnull %221, ptr noundef nonnull %224, ptr noundef nonnull %227, ptr noundef %4) #17
  %237 = icmp eq ptr %10, null
  br i1 %237, label %259, label %238

238:                                              ; preds = %236
  %239 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %221, ptr noundef nonnull %224, ptr noundef nonnull %227) #17
  br label %259

240:                                              ; preds = %216
  %241 = load float, ptr %5, align 4, !tbaa !34
  store float %241, ptr %9, align 4, !tbaa !34
  %242 = getelementptr inbounds float, ptr %5, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !34
  %244 = getelementptr inbounds float, ptr %9, i64 1
  store float %243, ptr %244, align 4, !tbaa !34
  %245 = getelementptr inbounds float, ptr %5, i64 2
  %246 = load float, ptr %245, align 4, !tbaa !34
  %247 = getelementptr inbounds float, ptr %9, i64 2
  store float %246, ptr %247, align 4, !tbaa !34
  %248 = icmp ne ptr %10, null
  %249 = icmp ne ptr %6, null
  %250 = and i1 %249, %248
  br i1 %250, label %251, label %259

251:                                              ; preds = %240
  %252 = load float, ptr %6, align 4, !tbaa !34
  store float %252, ptr %10, align 4, !tbaa !34
  %253 = getelementptr inbounds float, ptr %6, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !34
  %255 = getelementptr inbounds float, ptr %10, i64 1
  store float %254, ptr %255, align 4, !tbaa !34
  %256 = getelementptr inbounds float, ptr %6, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !34
  %258 = getelementptr inbounds float, ptr %10, i64 2
  store float %257, ptr %258, align 4, !tbaa !34
  br label %259

259:                                              ; preds = %236, %238, %230, %234, %251, %240, %214
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  ret void
}

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @psys_interpolate_uvs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 {
  %5 = load float, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 1
  %9 = load float, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3
  %19 = load float, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fmul float %9, %24
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %5, float %25)
  %27 = getelementptr inbounds float, ptr %2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %13, float %26)
  %30 = getelementptr inbounds float, ptr %2, i64 3
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %19, float %29)
  store float %32, ptr %3, align 4, !tbaa !34
  %33 = load float, ptr %2, align 4, !tbaa !34
  %34 = load float, ptr %23, align 4, !tbaa !34
  %35 = fmul float %11, %34
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %7, float %35)
  %37 = load float, ptr %27, align 4, !tbaa !34
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %15, float %36)
  %39 = load float, ptr %30, align 4, !tbaa !34
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %21, float %38)
  br label %56

41:                                               ; preds = %4
  %42 = load float, ptr %2, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fmul float %9, %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %5, float %45)
  %47 = getelementptr inbounds float, ptr %2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %13, float %46)
  store float %49, ptr %3, align 4, !tbaa !34
  %50 = load float, ptr %2, align 4, !tbaa !34
  %51 = load float, ptr %43, align 4, !tbaa !34
  %52 = fmul float %11, %51
  %53 = tail call float @llvm.fmuladd.f32(float %50, float %7, float %52)
  %54 = load float, ptr %47, align 4, !tbaa !34
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %15, float %53)
  br label %56

56:                                               ; preds = %41, %17
  %57 = phi float [ %55, %41 ], [ %40, %17 ]
  %58 = getelementptr inbounds float, ptr %3, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @psys_interpolate_mcol(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.MCol, ptr %0, i64 1
  %6 = getelementptr inbounds %struct.MCol, ptr %0, i64 2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %92, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MCol, ptr %0, i64 3
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load i8, ptr %0, align 1, !tbaa !266
  %12 = uitofp i8 %11 to float
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load i8, ptr %5, align 1, !tbaa !266
  %16 = uitofp i8 %15 to float
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %17)
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = load i8, ptr %6, align 1, !tbaa !266
  %22 = uitofp i8 %21 to float
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %18)
  %24 = getelementptr inbounds float, ptr %2, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load i8, ptr %9, align 1, !tbaa !266
  %27 = uitofp i8 %26 to float
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %27, float %23)
  %29 = fptosi float %28 to i32
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %3, align 1, !tbaa !266
  %31 = load float, ptr %2, align 4, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %0, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !266
  %34 = uitofp i8 %33 to float
  %35 = load float, ptr %13, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 1
  %37 = load i8, ptr %36, align 1, !tbaa !266
  %38 = uitofp i8 %37 to float
  %39 = fmul float %35, %38
  %40 = tail call float @llvm.fmuladd.f32(float %31, float %34, float %39)
  %41 = load float, ptr %19, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 1
  %43 = load i8, ptr %42, align 1, !tbaa !266
  %44 = uitofp i8 %43 to float
  %45 = tail call float @llvm.fmuladd.f32(float %41, float %44, float %40)
  %46 = load float, ptr %24, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.MCol, ptr %0, i64 3, i32 1
  %48 = load i8, ptr %47, align 1, !tbaa !266
  %49 = uitofp i8 %48 to float
  %50 = tail call float @llvm.fmuladd.f32(float %46, float %49, float %45)
  %51 = fptosi float %50 to i32
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %52, ptr %53, align 1, !tbaa !266
  %54 = load float, ptr %2, align 4, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %0, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !266
  %57 = uitofp i8 %56 to float
  %58 = load float, ptr %13, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 2
  %60 = load i8, ptr %59, align 1, !tbaa !266
  %61 = uitofp i8 %60 to float
  %62 = fmul float %58, %61
  %63 = tail call float @llvm.fmuladd.f32(float %54, float %57, float %62)
  %64 = load float, ptr %19, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 2
  %66 = load i8, ptr %65, align 1, !tbaa !266
  %67 = uitofp i8 %66 to float
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %67, float %63)
  %69 = load float, ptr %24, align 4, !tbaa !34
  %70 = getelementptr inbounds %struct.MCol, ptr %0, i64 3, i32 2
  %71 = load i8, ptr %70, align 1, !tbaa !266
  %72 = uitofp i8 %71 to float
  %73 = tail call float @llvm.fmuladd.f32(float %69, float %72, float %68)
  %74 = fptosi float %73 to i32
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %75, ptr %76, align 1, !tbaa !266
  %77 = load float, ptr %2, align 4, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %0, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !266
  %80 = uitofp i8 %79 to float
  %81 = load float, ptr %13, align 4, !tbaa !34
  %82 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 3
  %83 = load i8, ptr %82, align 1, !tbaa !266
  %84 = uitofp i8 %83 to float
  %85 = fmul float %81, %84
  %86 = tail call float @llvm.fmuladd.f32(float %77, float %80, float %85)
  %87 = load float, ptr %19, align 4, !tbaa !34
  %88 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 3
  %89 = load i8, ptr %88, align 1, !tbaa !266
  %90 = uitofp i8 %89 to float
  %91 = tail call float @llvm.fmuladd.f32(float %87, float %90, float %86)
  br label %155

92:                                               ; preds = %4
  %93 = load float, ptr %2, align 4, !tbaa !34
  %94 = load i8, ptr %0, align 1, !tbaa !266
  %95 = uitofp i8 %94 to float
  %96 = getelementptr inbounds float, ptr %2, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = load i8, ptr %5, align 1, !tbaa !266
  %99 = uitofp i8 %98 to float
  %100 = fmul float %97, %99
  %101 = tail call float @llvm.fmuladd.f32(float %93, float %95, float %100)
  %102 = getelementptr inbounds float, ptr %2, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = load i8, ptr %6, align 1, !tbaa !266
  %105 = uitofp i8 %104 to float
  %106 = tail call float @llvm.fmuladd.f32(float %103, float %105, float %101)
  %107 = fptosi float %106 to i32
  %108 = trunc i32 %107 to i8
  store i8 %108, ptr %3, align 1, !tbaa !266
  %109 = load float, ptr %2, align 4, !tbaa !34
  %110 = getelementptr inbounds i8, ptr %0, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !266
  %112 = uitofp i8 %111 to float
  %113 = load float, ptr %96, align 4, !tbaa !34
  %114 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 1
  %115 = load i8, ptr %114, align 1, !tbaa !266
  %116 = uitofp i8 %115 to float
  %117 = fmul float %113, %116
  %118 = tail call float @llvm.fmuladd.f32(float %109, float %112, float %117)
  %119 = load float, ptr %102, align 4, !tbaa !34
  %120 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 1
  %121 = load i8, ptr %120, align 1, !tbaa !266
  %122 = uitofp i8 %121 to float
  %123 = tail call float @llvm.fmuladd.f32(float %119, float %122, float %118)
  %124 = fptosi float %123 to i32
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %125, ptr %126, align 1, !tbaa !266
  %127 = load float, ptr %2, align 4, !tbaa !34
  %128 = getelementptr inbounds i8, ptr %0, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !266
  %130 = uitofp i8 %129 to float
  %131 = load float, ptr %96, align 4, !tbaa !34
  %132 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 2
  %133 = load i8, ptr %132, align 1, !tbaa !266
  %134 = uitofp i8 %133 to float
  %135 = fmul float %131, %134
  %136 = tail call float @llvm.fmuladd.f32(float %127, float %130, float %135)
  %137 = load float, ptr %102, align 4, !tbaa !34
  %138 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 2
  %139 = load i8, ptr %138, align 1, !tbaa !266
  %140 = uitofp i8 %139 to float
  %141 = tail call float @llvm.fmuladd.f32(float %137, float %140, float %136)
  %142 = fptosi float %141 to i32
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %143, ptr %144, align 1, !tbaa !266
  %145 = load float, ptr %2, align 4, !tbaa !34
  %146 = getelementptr inbounds i8, ptr %0, i64 3
  %147 = load i8, ptr %146, align 1, !tbaa !266
  %148 = uitofp i8 %147 to float
  %149 = load float, ptr %96, align 4, !tbaa !34
  %150 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 3
  %151 = load i8, ptr %150, align 1, !tbaa !266
  %152 = uitofp i8 %151 to float
  %153 = fmul float %149, %152
  %154 = tail call float @llvm.fmuladd.f32(float %145, float %148, float %153)
  br label %155

155:                                              ; preds = %92, %8
  %156 = phi ptr [ %102, %92 ], [ %24, %8 ]
  %157 = phi i64 [ 2, %92 ], [ 3, %8 ]
  %158 = phi float [ %154, %92 ], [ %91, %8 ]
  %159 = load float, ptr %156, align 4, !tbaa !34
  %160 = getelementptr inbounds %struct.MCol, ptr %0, i64 %157, i32 3
  %161 = load i8, ptr %160, align 1, !tbaa !266
  %162 = uitofp i8 %161 to float
  %163 = tail call float @llvm.fmuladd.f32(float %159, float %162, float %158)
  %164 = fptosi float %163 to i32
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %165, ptr %166, align 1, !tbaa !266
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @psys_particle_dm_face_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = tail call ptr %10(ptr noundef %1, i32 noundef 7) #17
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 54
  %13 = load ptr, ptr %12, align 8, !tbaa !230
  %14 = tail call ptr %13(ptr noundef %1, i32 noundef 7) #17
  %15 = icmp eq ptr %11, null
  %16 = select i1 %15, ptr null, ptr %14
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !226
  %19 = tail call i32 %18(ptr noundef %1) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %116, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !267
  %24 = tail call ptr %23(ptr noundef %1) #17
  %25 = load ptr, ptr %9, align 8, !tbaa !229
  %26 = tail call ptr %25(ptr noundef %1, i32 noundef 13) #17
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, i1 true, i1 %15
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = icmp sgt i32 %19, %2
  br i1 %30, label %116, label %31

31:                                               ; preds = %29
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %116

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %35 = load i32, ptr %34, align 8, !tbaa !227
  %36 = icmp sgt i32 %35, %2
  br i1 %36, label %37, label %116

37:                                               ; preds = %33
  %38 = getelementptr inbounds float, ptr %3, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fadd float %39, %41
  store float %42, ptr %6, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %3, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fadd float %41, %44
  %46 = getelementptr inbounds float, ptr %6, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = icmp eq ptr %4, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = icmp sgt i32 %19, 0
  br i1 %49, label %50, label %116

50:                                               ; preds = %48
  %51 = icmp eq ptr %16, null
  %52 = zext nneg i32 %19 to i64
  br label %79

53:                                               ; preds = %37, %73
  %54 = phi ptr [ %74, %73 ], [ %4, %37 ]
  %55 = getelementptr inbounds %struct.LinkNode, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !268
  %57 = ptrtoint ptr %56 to i64
  %58 = shl i64 %57, 32
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds %struct.OrigSpaceFace, ptr %26, i64 %59
  %61 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %59, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !270
  %63 = icmp eq i32 %62, 4
  %64 = getelementptr inbounds [2 x float], ptr %60, i64 1
  %65 = getelementptr inbounds [2 x float], ptr %60, i64 2
  br i1 %63, label %66, label %70

66:                                               ; preds = %53
  %67 = getelementptr inbounds [2 x float], ptr %60, i64 3
  %68 = call i32 @isect_point_quad_v2(ptr noundef nonnull %6, ptr noundef %60, ptr noundef nonnull %64, ptr noundef nonnull %65, ptr noundef nonnull %67) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %112

70:                                               ; preds = %53
  %71 = call i32 @isect_point_tri_v2(ptr noundef nonnull %6, ptr noundef %60, ptr noundef nonnull %64, ptr noundef nonnull %65) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %66, %70
  %74 = load ptr, ptr %54, align 8, !tbaa !272
  %75 = icmp eq ptr %74, null
  br i1 %75, label %116, label %53, !llvm.loop !273

76:                                               ; preds = %109
  %77 = add nuw nsw i64 %80, 1
  %78 = icmp eq i64 %77, %52
  br i1 %78, label %116, label %79, !llvm.loop !274

79:                                               ; preds = %50, %76
  %80 = phi i64 [ 0, %50 ], [ %77, %76 ]
  %81 = phi i32 [ undef, %50 ], [ %111, %76 ]
  %82 = getelementptr inbounds i32, ptr %11, i64 %80
  %83 = load i32, ptr %82, align 4, !tbaa !38
  %84 = icmp eq i32 %83, -1
  %85 = select i1 %84, i1 true, i1 %51
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = sext i32 %83 to i64
  %88 = getelementptr inbounds i32, ptr %16, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !38
  br label %90

90:                                               ; preds = %79, %86
  %91 = phi i32 [ %89, %86 ], [ %83, %79 ]
  %92 = icmp eq i32 %91, %2
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.OrigSpaceFace, ptr %26, i64 %80
  %95 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %80, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !270
  %97 = icmp eq i32 %96, 4
  %98 = trunc i64 %80 to i32
  %99 = getelementptr inbounds [2 x float], ptr %94, i64 1
  %100 = getelementptr inbounds [2 x float], ptr %94, i64 2
  br i1 %97, label %101, label %105

101:                                              ; preds = %93
  %102 = getelementptr inbounds [2 x float], ptr %94, i64 3
  %103 = call i32 @isect_point_quad_v2(ptr noundef nonnull %6, ptr noundef %94, ptr noundef nonnull %99, ptr noundef nonnull %100, ptr noundef nonnull %102) #17
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %109

105:                                              ; preds = %93
  %106 = call i32 @isect_point_tri_v2(ptr noundef nonnull %6, ptr noundef %94, ptr noundef nonnull %99, ptr noundef nonnull %100) #17
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101, %105, %90
  br label %109

109:                                              ; preds = %105, %101, %108
  %110 = phi i1 [ true, %108 ], [ false, %101 ], [ false, %105 ]
  %111 = phi i32 [ %81, %108 ], [ %98, %101 ], [ %98, %105 ]
  br i1 %110, label %76, label %116

112:                                              ; preds = %66
  %113 = trunc i64 %57 to i32
  br label %116

114:                                              ; preds = %70
  %115 = trunc i64 %57 to i32
  br label %116

116:                                              ; preds = %73, %109, %76, %112, %114, %48, %33, %29, %5, %31
  %117 = phi i32 [ -1, %31 ], [ -1, %5 ], [ %2, %29 ], [ -1, %33 ], [ -1, %48 ], [ %113, %112 ], [ %115, %114 ], [ -1, %76 ], [ %111, %109 ], [ -1, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i32 %117
}

declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @isect_point_tri_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_particle_on_dm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #17
  %16 = call fastcc i32 @psys_map_index_on_dm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %15, ptr noundef nonnull %14)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = icmp eq ptr %6, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %22, align 4, !tbaa !34
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  br label %23

23:                                               ; preds = %20, %18
  %24 = icmp eq ptr %7, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %26, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %7, i64 2
  store float 1.000000e+00, ptr %27, align 4, !tbaa !34
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %10, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds float, ptr %10, i64 2
  store float 0.000000e+00, ptr %31, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %10, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !34
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %30, %28
  %34 = icmp eq ptr %11, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds float, ptr %11, i64 1
  store float 0.000000e+00, ptr %36, align 4, !tbaa !34
  store float 0.000000e+00, ptr %11, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %11, i64 2
  store float 1.000000e+00, ptr %37, align 4, !tbaa !34
  br label %38

38:                                               ; preds = %35, %33
  %39 = icmp eq ptr %8, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %42, align 4, !tbaa !34
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %40, %38
  %44 = icmp eq ptr %9, null
  br i1 %44, label %189, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %9, i64 1
  store float 0.000000e+00, ptr %47, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  br label %189

48:                                               ; preds = %12
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %50 = load ptr, ptr %49, align 8, !tbaa !275
  %51 = call ptr %50(ptr noundef %0, i32 noundef 14) #17
  %52 = icmp eq i32 %1, 0
  %53 = load i32, ptr %15, align 4
  br i1 %52, label %54, label %129

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %56 = load ptr, ptr %55, align 8, !tbaa !276
  call void %56(ptr noundef %0, i32 noundef %53, ptr noundef %6) #17
  %57 = icmp eq ptr %7, null
  br i1 %57, label %82, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %60 = load ptr, ptr %59, align 8, !tbaa !277
  call void %60(ptr noundef %0, i32 noundef %53, ptr noundef nonnull %7) #17
  %61 = load float, ptr %7, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %7, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fmul float %63, %63
  %65 = call float @llvm.fmuladd.f32(float %61, float %61, float %64)
  %66 = getelementptr inbounds float, ptr %7, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = call float @llvm.fmuladd.f32(float %67, float %67, float %65)
  %69 = fcmp ogt float %68, 0x38AA95A5C0000000
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = call float @sqrtf(float noundef %68) #17
  %72 = fdiv float 1.000000e+00, %71
  %73 = load float, ptr %7, align 4, !tbaa !34
  %74 = fmul float %73, %72
  store float %74, ptr %7, align 4, !tbaa !34
  %75 = load float, ptr %62, align 4, !tbaa !34
  %76 = fmul float %72, %75
  store float %76, ptr %62, align 4, !tbaa !34
  %77 = load float, ptr %66, align 4, !tbaa !34
  %78 = fmul float %72, %77
  br label %80

79:                                               ; preds = %58
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  store float 0.000000e+00, ptr %62, align 4, !tbaa !34
  br label %80

80:                                               ; preds = %70, %79
  %81 = phi float [ 0.000000e+00, %79 ], [ %78, %70 ]
  store float %81, ptr %66, align 4, !tbaa !34
  br label %82

82:                                               ; preds = %80, %54
  %83 = icmp eq ptr %10, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %82
  %85 = sext i32 %53 to i64
  %86 = getelementptr inbounds [3 x float], ptr %51, i64 %85
  %87 = load float, ptr %86, align 4, !tbaa !34
  store float %87, ptr %10, align 4, !tbaa !34
  %88 = getelementptr inbounds float, ptr %86, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = getelementptr inbounds float, ptr %10, i64 1
  store float %89, ptr %90, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %86, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = getelementptr inbounds float, ptr %10, i64 2
  store float %92, ptr %93, align 4, !tbaa !34
  br label %94

94:                                               ; preds = %84, %82
  %95 = icmp eq ptr %11, null
  br i1 %95, label %120, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %98 = load ptr, ptr %97, align 8, !tbaa !277
  call void %98(ptr noundef %0, i32 noundef %53, ptr noundef nonnull %11) #17
  %99 = load float, ptr %11, align 4, !tbaa !34
  %100 = getelementptr inbounds float, ptr %11, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = fmul float %101, %101
  %103 = call float @llvm.fmuladd.f32(float %99, float %99, float %102)
  %104 = getelementptr inbounds float, ptr %11, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !34
  %106 = call float @llvm.fmuladd.f32(float %105, float %105, float %103)
  %107 = fcmp ogt float %106, 0x38AA95A5C0000000
  br i1 %107, label %108, label %117

108:                                              ; preds = %96
  %109 = call float @sqrtf(float noundef %106) #17
  %110 = fdiv float 1.000000e+00, %109
  %111 = load float, ptr %11, align 4, !tbaa !34
  %112 = fmul float %111, %110
  store float %112, ptr %11, align 4, !tbaa !34
  %113 = load float, ptr %100, align 4, !tbaa !34
  %114 = fmul float %110, %113
  store float %114, ptr %100, align 4, !tbaa !34
  %115 = load float, ptr %104, align 4, !tbaa !34
  %116 = fmul float %110, %115
  br label %118

117:                                              ; preds = %96
  store float 0.000000e+00, ptr %11, align 4, !tbaa !34
  store float 0.000000e+00, ptr %100, align 4, !tbaa !34
  br label %118

118:                                              ; preds = %108, %117
  %119 = phi float [ 0.000000e+00, %117 ], [ %116, %108 ]
  store float %119, ptr %104, align 4, !tbaa !34
  br label %120

120:                                              ; preds = %118, %94
  %121 = icmp ne ptr %8, null
  %122 = icmp ne ptr %9, null
  %123 = and i1 %121, %122
  br i1 %123, label %124, label %189

124:                                              ; preds = %120
  %125 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %125, align 4, !tbaa !34
  %126 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %126, align 4, !tbaa !34
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %127 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %127, align 4, !tbaa !34
  %128 = getelementptr inbounds float, ptr %9, i64 1
  store float 0.000000e+00, ptr %128, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  br label %189

129:                                              ; preds = %48
  %130 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %131 = load ptr, ptr %130, align 8, !tbaa !278
  %132 = call ptr %131(ptr noundef %0, i32 noundef %53, i32 noundef 4) #17
  %133 = load ptr, ptr %49, align 8, !tbaa !275
  %134 = call ptr %133(ptr noundef %0, i32 noundef 0) #17
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %136 = call ptr @CustomData_get_layer(ptr noundef nonnull %135, i32 noundef 5) #17
  %137 = icmp eq ptr %136, null
  %138 = sext i32 %53 to i64
  %139 = getelementptr inbounds %struct.MTFace, ptr %136, i64 %138
  %140 = select i1 %137, ptr null, ptr %139
  %141 = icmp eq i32 %1, 2
  br i1 %141, label %142, label %188

142:                                              ; preds = %129
  call void @psys_interpolate_face(ptr noundef %134, ptr noundef %132, ptr noundef %140, ptr noundef %51, ptr noundef nonnull %14, ptr noundef %6, ptr noundef nonnull %13, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %143 = icmp eq ptr %7, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %142
  %145 = load float, ptr %13, align 4, !tbaa !34
  store float %145, ptr %7, align 4, !tbaa !34
  %146 = getelementptr inbounds float, ptr %13, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !34
  %148 = getelementptr inbounds float, ptr %7, i64 1
  store float %147, ptr %148, align 4, !tbaa !34
  %149 = getelementptr inbounds float, ptr %13, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !34
  %151 = getelementptr inbounds float, ptr %7, i64 2
  store float %150, ptr %151, align 4, !tbaa !34
  br label %152

152:                                              ; preds = %144, %142
  %153 = load float, ptr %13, align 4, !tbaa !34
  %154 = getelementptr inbounds float, ptr %13, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !34
  %156 = fmul float %155, %155
  %157 = call float @llvm.fmuladd.f32(float %153, float %153, float %156)
  %158 = getelementptr inbounds float, ptr %13, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !34
  %160 = call float @llvm.fmuladd.f32(float %159, float %159, float %157)
  %161 = fcmp ogt float %160, 0x38AA95A5C0000000
  br i1 %161, label %162, label %171

162:                                              ; preds = %152
  %163 = call float @sqrtf(float noundef %160) #17
  %164 = fdiv float 1.000000e+00, %163
  %165 = load float, ptr %13, align 4, !tbaa !34
  %166 = fmul float %165, %164
  store float %166, ptr %13, align 4, !tbaa !34
  %167 = load float, ptr %154, align 4, !tbaa !34
  %168 = fmul float %164, %167
  store float %168, ptr %154, align 4, !tbaa !34
  %169 = load float, ptr %158, align 4, !tbaa !34
  %170 = fmul float %164, %169
  br label %172

171:                                              ; preds = %152
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  store float 0.000000e+00, ptr %154, align 4, !tbaa !34
  br label %172

172:                                              ; preds = %162, %171
  %173 = phi float [ 0.000000e+00, %171 ], [ %170, %162 ]
  store float %173, ptr %158, align 4, !tbaa !34
  %174 = fneg float %5
  %175 = load float, ptr %13, align 4, !tbaa !34
  %176 = fmul float %175, %174
  store float %176, ptr %13, align 4, !tbaa !34
  %177 = load float, ptr %154, align 4, !tbaa !34
  %178 = fmul float %177, %174
  store float %178, ptr %154, align 4, !tbaa !34
  %179 = fmul float %173, %174
  store float %179, ptr %158, align 4, !tbaa !34
  %180 = load float, ptr %6, align 4, !tbaa !34
  %181 = fadd float %176, %180
  store float %181, ptr %6, align 4, !tbaa !34
  %182 = getelementptr inbounds float, ptr %6, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !34
  %184 = fadd float %178, %183
  store float %184, ptr %182, align 4, !tbaa !34
  %185 = getelementptr inbounds float, ptr %6, i64 2
  %186 = load float, ptr %185, align 4, !tbaa !34
  %187 = fadd float %179, %186
  store float %187, ptr %185, align 4, !tbaa !34
  br label %189

188:                                              ; preds = %129
  call void @psys_interpolate_face(ptr noundef %134, ptr noundef %132, ptr noundef %140, ptr noundef %51, ptr noundef nonnull %14, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  br label %189

189:                                              ; preds = %124, %120, %188, %172, %43, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @psys_map_index_on_dm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %111, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !279
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i32 %3, -2
  %16 = or i1 %15, %14
  %17 = icmp eq i32 %1, 0
  br i1 %16, label %18, label %41

18:                                               ; preds = %11
  br i1 %17, label %19, label %25

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !280
  %22 = tail call i32 %21(ptr noundef %0) #17
  %23 = icmp sgt i32 %22, %2
  br i1 %23, label %24, label %111

24:                                               ; preds = %19
  store i32 %2, ptr %5, align 4, !tbaa !38
  br label %111

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %27 = load ptr, ptr %26, align 8, !tbaa !226
  %28 = tail call i32 %27(ptr noundef %0) #17
  %29 = icmp sgt i32 %28, %2
  br i1 %29, label %30, label %111

30:                                               ; preds = %25
  store i32 %2, ptr %5, align 4, !tbaa !38
  %31 = load float, ptr %4, align 4, !tbaa !34
  store float %31, ptr %6, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %4, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %6, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %6, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %4, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %6, i64 3
  store float %39, ptr %40, align 4, !tbaa !34
  br label %111

41:                                               ; preds = %11
  %42 = icmp eq i32 %3, -1
  br i1 %17, label %43, label %50

43:                                               ; preds = %41
  br i1 %42, label %111, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %46 = load ptr, ptr %45, align 8, !tbaa !280
  %47 = tail call i32 %46(ptr noundef %0) #17
  %48 = icmp slt i32 %47, %3
  br i1 %48, label %111, label %49

49:                                               ; preds = %44
  store i32 %3, ptr %5, align 4, !tbaa !38
  br label %111

50:                                               ; preds = %41
  br i1 %42, label %111, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %53 = load ptr, ptr %52, align 8, !tbaa !226
  %54 = tail call i32 %53(ptr noundef %0) #17
  %55 = icmp sgt i32 %54, %3
  br i1 %55, label %56, label %111

56:                                               ; preds = %51
  store i32 %3, ptr %5, align 4, !tbaa !38
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %58 = load ptr, ptr %57, align 8, !tbaa !229
  %59 = tail call ptr %58(ptr noundef %0, i32 noundef 13) #17
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %61 = load ptr, ptr %60, align 8, !tbaa !278
  %62 = tail call ptr %61(ptr noundef %0, i32 noundef %3, i32 noundef 4) #17
  %63 = icmp eq ptr %59, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %111

65:                                               ; preds = %56
  %66 = sext i32 %3 to i64
  %67 = getelementptr inbounds %struct.OrigSpaceFace, ptr %59, i64 %66
  %68 = getelementptr inbounds %struct.MFace, ptr %62, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !242
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  %70 = load float, ptr %67, align 4, !tbaa !34
  store float %70, ptr %8, align 16, !tbaa !34
  %71 = getelementptr inbounds [2 x float], ptr %67, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %74, align 8, !tbaa !34
  %75 = getelementptr inbounds [4 x [2 x float]], ptr %67, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = getelementptr inbounds [4 x [2 x float]], ptr %67, i64 0, i64 1, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  store float %79, ptr %80, align 16, !tbaa !34
  %81 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %81, align 4, !tbaa !34
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %67, i64 0, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2
  store float %83, ptr %84, align 8, !tbaa !34
  %85 = getelementptr inbounds [4 x [2 x float]], ptr %67, i64 0, i64 2, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2, i64 1
  store float %86, ptr %87, align 4, !tbaa !34
  %88 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %88, align 16, !tbaa !34
  %89 = getelementptr inbounds float, ptr %4, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %4, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = fadd float %90, %92
  store float %93, ptr %9, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %4, i64 3
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = fadd float %92, %95
  %97 = getelementptr inbounds float, ptr %9, i64 1
  store float %96, ptr %97, align 4, !tbaa !34
  %98 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %98, align 4, !tbaa !34
  %99 = icmp eq i32 %69, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %65
  %101 = getelementptr inbounds [4 x [2 x float]], ptr %67, i64 0, i64 3
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3
  store float %102, ptr %103, align 4, !tbaa !34
  %104 = getelementptr inbounds [4 x [2 x float]], ptr %67, i64 0, i64 3, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !34
  %106 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3, i64 1
  store float %105, ptr %106, align 8, !tbaa !34
  %107 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %107, align 4, !tbaa !34
  call void @interp_weights_poly_v3(ptr noundef %6, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull %9) #17
  br label %110

108:                                              ; preds = %65
  call void @interp_weights_poly_v3(ptr noundef %6, ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull %9) #17
  %109 = getelementptr inbounds float, ptr %6, i64 3
  store float 0.000000e+00, ptr %109, align 4, !tbaa !34
  br label %110

110:                                              ; preds = %100, %108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #17
  br label %111

111:                                              ; preds = %51, %50, %30, %24, %49, %64, %110, %43, %44, %25, %19, %7
  %112 = phi i32 [ 0, %7 ], [ 0, %19 ], [ 0, %25 ], [ 0, %44 ], [ 0, %43 ], [ 1, %110 ], [ 1, %64 ], [ 1, %49 ], [ 1, %24 ], [ 1, %30 ], [ 0, %50 ], [ 0, %51 ]
  ret i32 %112
}

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @psys_particle_value_from_verts(ptr noundef %0, i16 noundef signext %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %7 = sext i16 %1 to i32
  %8 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !281
  %10 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !282
  %12 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 11
  %13 = call fastcc i32 @psys_map_index_on_dm(ptr noundef %0, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %4
  %16 = load i32, ptr %6, align 4, !tbaa !38
  %17 = icmp eq ptr %3, null
  %18 = icmp eq i32 %16, -1
  %19 = or i1 %17, %18
  br i1 %19, label %67, label %20

20:                                               ; preds = %15
  switch i16 %1, label %67 [
    i16 0, label %21
    i16 1, label %25
    i16 2, label %25
  ]

21:                                               ; preds = %20
  %22 = sext i32 %16 to i64
  %23 = getelementptr inbounds float, ptr %3, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !34
  br label %67

25:                                               ; preds = %20, %20
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %27 = load ptr, ptr %26, align 8, !tbaa !278
  %28 = call ptr %27(ptr noundef %0, i32 noundef %16, i32 noundef 4) #17
  %29 = load i32, ptr %28, align 4, !tbaa !238
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds float, ptr %3, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !240
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr %3, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !241
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %3, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.MFace, ptr %28, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !242
  %45 = load float, ptr %5, align 16, !tbaa !34
  %46 = getelementptr inbounds float, ptr %5, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fmul float %37, %47
  %49 = call float @llvm.fmuladd.f32(float %45, float %32, float %48)
  %50 = getelementptr inbounds float, ptr %5, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !34
  %52 = call float @llvm.fmuladd.f32(float %51, float %42, float %49)
  %53 = icmp eq i32 %44, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %25
  %55 = zext i32 %44 to i64
  %56 = getelementptr inbounds float, ptr %3, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds float, ptr %5, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = call float @llvm.fmuladd.f32(float %59, float %57, float %52)
  br label %61

61:                                               ; preds = %54, %25
  %62 = phi float [ %60, %54 ], [ %52, %25 ]
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = fcmp ogt float %62, 1.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %64, %61, %21, %20, %15, %4
  %68 = phi float [ 0.000000e+00, %4 ], [ %24, %21 ], [ 0.000000e+00, %15 ], [ 0.000000e+00, %20 ], [ 1.000000e+00, %66 ], [ %62, %64 ], [ 0.000000e+00, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret float %68
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_particle_on_emitter(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
  %13 = icmp eq ptr %0, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !199
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 9
  %24 = load i16, ptr %23, align 4, !tbaa !283
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 8
  %28 = load i16, ptr %27, align 2, !tbaa !284
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %6, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  %33 = load float, ptr %4, align 4, !tbaa !34
  store float %33, ptr %6, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %6, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %4, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %6, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %32, %30
  %41 = icmp eq ptr %10, null
  br i1 %41, label %81, label %42

42:                                               ; preds = %40
  %43 = load float, ptr %4, align 4, !tbaa !34
  store float %43, ptr %10, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %4, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %10, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %4, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %10, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  br label %81

50:                                               ; preds = %26, %18
  tail call void @psys_particle_on_dm(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  br label %81

51:                                               ; preds = %14, %12
  %52 = icmp eq ptr %6, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %51
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %54, align 4, !tbaa !34
  %55 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %55, align 4, !tbaa !34
  br label %56

56:                                               ; preds = %53, %51
  %57 = icmp eq ptr %7, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %59 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %59, align 4, !tbaa !34
  %60 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %60, align 4, !tbaa !34
  br label %61

61:                                               ; preds = %58, %56
  %62 = icmp eq ptr %8, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %64, align 4, !tbaa !34
  %65 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %65, align 4, !tbaa !34
  br label %66

66:                                               ; preds = %63, %61
  %67 = icmp eq ptr %9, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %69 = getelementptr inbounds float, ptr %9, i64 1
  store float 0.000000e+00, ptr %69, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %70, align 4, !tbaa !34
  br label %71

71:                                               ; preds = %68, %66
  %72 = icmp eq ptr %10, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %10, i64 1
  store float 0.000000e+00, ptr %74, align 4, !tbaa !34
  %75 = getelementptr inbounds float, ptr %10, i64 2
  store float 0.000000e+00, ptr %75, align 4, !tbaa !34
  br label %76

76:                                               ; preds = %73, %71
  %77 = icmp eq ptr %11, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  store float 0.000000e+00, ptr %11, align 4, !tbaa !34
  %79 = getelementptr inbounds float, ptr %11, i64 1
  store float 0.000000e+00, ptr %79, align 4, !tbaa !34
  %80 = getelementptr inbounds float, ptr %11, i64 2
  store float 0.000000e+00, ptr %80, align 4, !tbaa !34
  br label %81

81:                                               ; preds = %78, %76, %40, %42, %50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @precalc_guides(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EffectedPoint, align 8
  %4 = alloca %struct.ParticleKey, align 4
  %5 = alloca %struct.EffectorData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #17
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = icmp eq ptr %1, null
  br i1 %12, label %143, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %143

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds float, ptr %4, i64 1
  %22 = getelementptr inbounds float, ptr %4, i64 2
  %23 = getelementptr inbounds float, ptr %4, i64 1
  %24 = getelementptr inbounds float, ptr %4, i64 2
  %25 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1
  %27 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 3
  %28 = getelementptr inbounds float, ptr %4, i64 1
  %29 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 3, i64 1
  %30 = getelementptr inbounds float, ptr %4, i64 2
  %31 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 3, i64 2
  %32 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 1
  %33 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 1, i64 1
  %34 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 1, i64 2
  %35 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 4
  br label %36

36:                                               ; preds = %17, %137
  %37 = phi i64 [ 0, %17 ], [ %138, %137 ]
  %38 = phi ptr [ %19, %17 ], [ %139, %137 ]
  %39 = load ptr, ptr %20, align 8, !tbaa !285
  %40 = load ptr, ptr %6, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = getelementptr inbounds %struct.ParticleSettings, ptr %42, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !284
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !281
  %48 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 10
  %49 = load i32, ptr %48, align 4, !tbaa !282
  %50 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 11
  %51 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 12
  %52 = load float, ptr %51, align 8, !tbaa !286
  %53 = icmp eq ptr %39, null
  br i1 %53, label %77, label %54

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %39, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !199
  %57 = icmp eq ptr %56, null
  br i1 %57, label %77, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %39, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !100
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %62, i64 0, i32 9
  %64 = load i16, ptr %63, align 4, !tbaa !283
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %62, i64 0, i32 8
  %68 = load i16, ptr %67, align 2, !tbaa !284
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load float, ptr %50, align 4, !tbaa !34
  store float %71, ptr %4, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 11, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  store float %73, ptr %21, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 11, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  store float %75, ptr %22, align 4, !tbaa !34
  br label %78

76:                                               ; preds = %66, %58
  call void @psys_particle_on_dm(ptr noundef nonnull %56, i32 noundef %45, i32 noundef %47, i32 noundef %49, ptr noundef nonnull %50, float noundef %52, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %78

77:                                               ; preds = %54, %36
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %23, align 4, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %78

78:                                               ; preds = %70, %76, %77
  %79 = load ptr, ptr %25, align 8, !tbaa !97
  %80 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %80, ptr noundef nonnull %4) #17
  %81 = load ptr, ptr %25, align 8, !tbaa !97
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %82, ptr noundef nonnull %26) #17
  call void @pd_point_from_particle(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  %83 = load ptr, ptr %1, align 8, !tbaa !59
  %84 = icmp eq ptr %83, null
  br i1 %84, label %137, label %85

85:                                               ; preds = %78, %134
  %86 = phi ptr [ %135, %134 ], [ %83, %78 ]
  %87 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !287
  %89 = getelementptr inbounds %struct.PartDeflect, ptr %88, i64 0, i32 2
  %90 = load i16, ptr %89, align 2, !tbaa !289
  %91 = icmp eq i16 %90, 5
  br i1 %91, label %92, label %134

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !291
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %98 = load i32, ptr %14, align 8, !tbaa !43
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 4
  %101 = call ptr %97(i64 noundef %100, ptr noundef nonnull @.str.7) #17
  store ptr %101, ptr %93, align 8, !tbaa !291
  br label %102

102:                                              ; preds = %96, %92
  %103 = load ptr, ptr %93, align 8, !tbaa !291
  %104 = getelementptr inbounds %struct.GuideEffectorData, ptr %103, i64 %37
  %105 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 8
  %106 = load float, ptr %4, align 4, !tbaa !34
  %107 = load float, ptr %105, align 4, !tbaa !34
  %108 = fsub float %106, %107
  store float %108, ptr %27, align 4, !tbaa !34
  %109 = load float, ptr %28, align 4, !tbaa !34
  %110 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 8, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fsub float %109, %111
  store float %112, ptr %29, align 8, !tbaa !34
  %113 = load float, ptr %30, align 4, !tbaa !34
  %114 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 8, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !34
  %116 = fsub float %113, %115
  store float %116, ptr %31, align 4, !tbaa !34
  %117 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 9
  %118 = load float, ptr %117, align 4, !tbaa !34
  store float %118, ptr %32, align 4, !tbaa !34
  %119 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 9, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !34
  store float %120, ptr %33, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.EffectorCache, ptr %86, i64 0, i32 9, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !34
  store float %122, ptr %34, align 4, !tbaa !34
  %123 = fmul float %112, %112
  %124 = call float @llvm.fmuladd.f32(float %108, float %108, float %123)
  %125 = call float @llvm.fmuladd.f32(float %116, float %116, float %124)
  %126 = call float @sqrtf(float noundef %125) #17
  store float %126, ptr %35, align 8, !tbaa !292
  %127 = load float, ptr %27, align 4, !tbaa !34
  store float %127, ptr %104, align 4, !tbaa !34
  %128 = load float, ptr %29, align 8, !tbaa !34
  %129 = getelementptr inbounds float, ptr %104, i64 1
  store float %128, ptr %129, align 4, !tbaa !34
  %130 = load float, ptr %31, align 4, !tbaa !34
  %131 = getelementptr inbounds float, ptr %104, i64 2
  store float %130, ptr %131, align 4, !tbaa !34
  %132 = call float @effector_falloff(ptr noundef nonnull %86, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %11) #17
  %133 = getelementptr inbounds %struct.GuideEffectorData, ptr %103, i64 %37, i32 1
  store float %132, ptr %133, align 4, !tbaa !294
  br label %134

134:                                              ; preds = %85, %102
  %135 = load ptr, ptr %86, align 8, !tbaa !59
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %85, !llvm.loop !296

137:                                              ; preds = %134, %78
  %138 = add nuw nsw i64 %37, 1
  %139 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 1
  %140 = load i32, ptr %14, align 8, !tbaa !43
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %36, label %143, !llvm.loop !297

143:                                              ; preds = %137, %13, %2
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pd_point_from_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @effector_falloff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @do_guides(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ParticleKey, align 4
  %6 = alloca %struct.ParticleKey, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  %15 = icmp eq ptr %0, null
  br i1 %15, label %245, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %0, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %245, label %19

19:                                               ; preds = %16
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds float, ptr %9, i64 1
  %22 = getelementptr inbounds float, ptr %9, i64 2
  %23 = getelementptr inbounds float, ptr %14, i64 1
  %24 = getelementptr inbounds float, ptr %14, i64 2
  %25 = getelementptr inbounds float, ptr %11, i64 1
  %26 = getelementptr inbounds float, ptr %11, i64 2
  %27 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %28 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %30 = getelementptr inbounds float, ptr %5, i64 1
  %31 = getelementptr inbounds float, ptr %5, i64 2
  %32 = getelementptr inbounds float, ptr %8, i64 1
  %33 = getelementptr inbounds float, ptr %8, i64 2
  %34 = getelementptr inbounds float, ptr %7, i64 1
  %35 = getelementptr inbounds float, ptr %7, i64 2
  br label %36

36:                                               ; preds = %19, %238
  %37 = phi ptr [ %17, %19 ], [ %243, %238 ]
  %38 = phi float [ 0.000000e+00, %19 ], [ %242, %238 ]
  %39 = phi float [ 0.000000e+00, %19 ], [ %241, %238 ]
  %40 = phi float [ 0.000000e+00, %19 ], [ %240, %238 ]
  %41 = phi float [ 0.000000e+00, %19 ], [ %239, %238 ]
  %42 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !287
  %44 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !289
  %46 = icmp eq i16 %45, 5
  br i1 %46, label %47, label %238

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !291
  %50 = getelementptr inbounds %struct.GuideEffectorData, ptr %49, i64 %20
  %51 = getelementptr inbounds %struct.GuideEffectorData, ptr %49, i64 %20, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !294
  %53 = fcmp ugt float %52, 0.000000e+00
  br i1 %53, label %54, label %238

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 34
  %56 = load float, ptr %55, align 8, !tbaa !298
  %57 = fsub float 1.000000e+00, %56
  %58 = fdiv float %3, %57
  %59 = fcmp ogt float %58, 1.000000e+00
  br i1 %59, label %238, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !299
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !220
  %65 = load i32, ptr %43, align 8, !tbaa !300
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = fmul float %52, %58
  %70 = call i32 @where_on_path(ptr noundef %62, float noundef %69, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %294, label %75

72:                                               ; preds = %60
  %73 = call i32 @where_on_path(ptr noundef %62, float noundef %58, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %294, label %75

75:                                               ; preds = %72, %68
  %76 = load ptr, ptr %61, align 8, !tbaa !299
  %77 = getelementptr inbounds %struct.Object, ptr %76, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %77, ptr noundef nonnull %8) #17
  %78 = load ptr, ptr %61, align 8, !tbaa !299
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %79, ptr noundef nonnull %9) #17
  %80 = load float, ptr %9, align 4, !tbaa !34
  %81 = load float, ptr %21, align 4, !tbaa !34
  %82 = fmul float %81, %81
  %83 = call float @llvm.fmuladd.f32(float %80, float %80, float %82)
  %84 = load float, ptr %22, align 4, !tbaa !34
  %85 = call float @llvm.fmuladd.f32(float %84, float %84, float %83)
  %86 = fcmp ogt float %85, 0x38AA95A5C0000000
  br i1 %86, label %87, label %96

87:                                               ; preds = %75
  %88 = call float @sqrtf(float noundef %85) #17
  %89 = fdiv float 1.000000e+00, %88
  %90 = load float, ptr %9, align 4, !tbaa !34
  %91 = fmul float %90, %89
  store float %91, ptr %9, align 4, !tbaa !34
  %92 = load float, ptr %21, align 4, !tbaa !34
  %93 = fmul float %89, %92
  store float %93, ptr %21, align 4, !tbaa !34
  %94 = load float, ptr %22, align 4, !tbaa !34
  %95 = fmul float %89, %94
  br label %97

96:                                               ; preds = %75
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %21, align 4, !tbaa !34
  br label %97

97:                                               ; preds = %87, %96
  %98 = phi float [ 0.000000e+00, %96 ], [ %95, %87 ]
  store float %98, ptr %22, align 4, !tbaa !34
  %99 = load float, ptr %50, align 4, !tbaa !34
  store float %99, ptr %14, align 4, !tbaa !34
  %100 = getelementptr inbounds float, ptr %50, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !34
  store float %101, ptr %23, align 4, !tbaa !34
  %102 = getelementptr inbounds float, ptr %50, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !34
  store float %103, ptr %24, align 4, !tbaa !34
  %104 = fcmp une float %58, 0.000000e+00
  br i1 %104, label %105, label %142

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 9
  %107 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 9, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 9, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = load float, ptr %21, align 4, !tbaa !34
  %112 = fneg float %110
  %113 = fmul float %111, %112
  %114 = call float @llvm.fmuladd.f32(float %108, float %98, float %113)
  store float %114, ptr %11, align 4, !tbaa !34
  %115 = load float, ptr %9, align 4, !tbaa !34
  %116 = load float, ptr %106, align 4, !tbaa !34
  %117 = fneg float %116
  %118 = fmul float %98, %117
  %119 = call float @llvm.fmuladd.f32(float %110, float %115, float %118)
  store float %119, ptr %25, align 4, !tbaa !34
  %120 = fneg float %108
  %121 = fmul float %115, %120
  %122 = call float @llvm.fmuladd.f32(float %116, float %111, float %121)
  store float %122, ptr %26, align 4, !tbaa !34
  %123 = fmul float %108, %111
  %124 = call float @llvm.fmuladd.f32(float %116, float %115, float %123)
  %125 = call float @llvm.fmuladd.f32(float %110, float %98, float %124)
  %126 = fmul float %108, %108
  %127 = call float @llvm.fmuladd.f32(float %116, float %116, float %126)
  %128 = call float @llvm.fmuladd.f32(float %110, float %110, float %127)
  %129 = call float @sqrtf(float noundef %128) #17
  %130 = fdiv float %125, %129
  %131 = fcmp ugt float %130, -1.000000e+00
  br i1 %131, label %132, label %136

132:                                              ; preds = %105
  %133 = fcmp ult float %130, 1.000000e+00
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = call float @acosf(float noundef %130) #17
  br label %136

136:                                              ; preds = %105, %132, %134
  %137 = phi float [ %135, %134 ], [ 0x400921FB60000000, %105 ], [ 0.000000e+00, %132 ]
  call void @axis_angle_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %137) #17
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %14) #17
  %138 = load float, ptr %27, align 4, !tbaa !34
  %139 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 8, i64 3
  %140 = load float, ptr %139, align 4, !tbaa !34
  %141 = fsub float %138, %140
  call void @axis_angle_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9, float noundef %141) #17
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %14) #17
  br label %142

142:                                              ; preds = %136, %97
  %143 = getelementptr inbounds %struct.Curve, ptr %64, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !301
  %145 = icmp eq ptr %144, null
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.EffectorCache, ptr %37, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !304
  %149 = load float, ptr %51, align 4, !tbaa !294
  %150 = fmul float %58, %149
  %151 = fmul float %150, 1.000000e+02
  %152 = fptosi float %151 to i32
  %153 = call float @BKE_displist_calc_taper(ptr noundef %148, ptr noundef nonnull %144, i32 noundef %152, i32 noundef 100) #17
  %154 = load float, ptr %14, align 4, !tbaa !34
  %155 = fmul float %153, %154
  br label %165

156:                                              ; preds = %142
  %157 = getelementptr inbounds %struct.Curve, ptr %64, i64 0, i32 23
  %158 = load i32, ptr %157, align 4, !tbaa !305
  %159 = and i32 %158, 4096
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %156
  %162 = load float, ptr %12, align 4, !tbaa !34
  %163 = load float, ptr %14, align 4, !tbaa !34
  %164 = fmul float %162, %163
  br label %165

165:                                              ; preds = %146, %161
  %166 = phi float [ %155, %146 ], [ %164, %161 ]
  %167 = phi float [ %153, %146 ], [ %162, %161 ]
  store float %166, ptr %14, align 4, !tbaa !34
  %168 = load float, ptr %23, align 4, !tbaa !34
  %169 = fmul float %167, %168
  store float %169, ptr %23, align 4, !tbaa !34
  %170 = load float, ptr %24, align 4, !tbaa !34
  %171 = fmul float %167, %170
  store float %171, ptr %24, align 4, !tbaa !34
  br label %172

172:                                              ; preds = %165, %156
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %173 = load float, ptr %14, align 4, !tbaa !34
  store float %173, ptr %5, align 4, !tbaa !34
  %174 = load float, ptr %23, align 4, !tbaa !34
  store float %174, ptr %30, align 4, !tbaa !34
  %175 = load float, ptr %24, align 4, !tbaa !34
  store float %175, ptr %31, align 4, !tbaa !34
  %176 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 31
  %177 = load float, ptr %176, align 4, !tbaa !306
  %178 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 32
  %179 = load float, ptr %178, align 8, !tbaa !307
  %180 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 33
  %181 = load float, ptr %180, align 4, !tbaa !308
  %182 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 6
  %183 = load i16, ptr %182, align 2, !tbaa !309
  %184 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 7
  %185 = load i16, ptr %184, align 8, !tbaa !310
  call fastcc void @do_kink(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, float noundef %58, float noundef %177, float noundef %179, float noundef %181, float noundef 0.000000e+00, i16 noundef signext %183, i16 noundef signext %185, ptr noundef null, i32 noundef 0)
  %186 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 29
  %187 = load float, ptr %186, align 4, !tbaa !311
  %188 = fcmp une float %187, 0.000000e+00
  br i1 %188, label %189, label %207

189:                                              ; preds = %172
  %190 = getelementptr inbounds %struct.PartDeflect, ptr %43, i64 0, i32 30
  %191 = load float, ptr %190, align 8, !tbaa !312
  %192 = fcmp olt float %191, 0.000000e+00
  %193 = fadd float %191, 1.000000e+00
  %194 = call float @llvm.fmuladd.f32(float %191, float 9.000000e+00, float 1.000000e+00)
  %195 = select i1 %192, float %193, float %194
  %196 = fcmp olt float %187, 0.000000e+00
  %197 = fpext float %58 to double
  %198 = fneg float %187
  %199 = fpext float %58 to double
  %200 = fsub double 1.000000e+00, %199
  %201 = select i1 %196, double %200, double %197
  %202 = select i1 %196, float %198, float %187
  %203 = fpext float %195 to double
  %204 = call double @pow(double noundef %201, double noundef %203) #17
  %205 = fptrunc double %204 to float
  %206 = fmul float %202, %205
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %206) #17
  br label %207

207:                                              ; preds = %172, %189
  %208 = load float, ptr %5, align 4, !tbaa !34
  store float %208, ptr %14, align 4, !tbaa !34
  %209 = load float, ptr %30, align 4, !tbaa !34
  store float %209, ptr %23, align 4, !tbaa !34
  %210 = load float, ptr %31, align 4, !tbaa !34
  store float %210, ptr %24, align 4, !tbaa !34
  %211 = load float, ptr %8, align 16, !tbaa !34
  %212 = fadd float %208, %211
  store float %212, ptr %14, align 4, !tbaa !34
  %213 = load float, ptr %32, align 4, !tbaa !34
  %214 = fadd float %209, %213
  store float %214, ptr %23, align 4, !tbaa !34
  %215 = load float, ptr %33, align 8, !tbaa !34
  %216 = fadd float %210, %215
  store float %216, ptr %24, align 4, !tbaa !34
  %217 = load float, ptr %51, align 4, !tbaa !294
  %218 = load float, ptr %7, align 4, !tbaa !34
  %219 = call float @llvm.fmuladd.f32(float %212, float %217, float %218)
  store float %219, ptr %7, align 4, !tbaa !34
  %220 = load float, ptr %34, align 4, !tbaa !34
  %221 = call float @llvm.fmuladd.f32(float %214, float %217, float %220)
  store float %221, ptr %34, align 4, !tbaa !34
  %222 = load float, ptr %35, align 4, !tbaa !34
  %223 = call float @llvm.fmuladd.f32(float %216, float %217, float %222)
  store float %223, ptr %35, align 4, !tbaa !34
  %224 = load float, ptr %51, align 4, !tbaa !294
  %225 = load float, ptr %9, align 4, !tbaa !34
  %226 = call float @llvm.fmuladd.f32(float %225, float %224, float %41)
  %227 = load float, ptr %21, align 4, !tbaa !34
  %228 = call float @llvm.fmuladd.f32(float %227, float %224, float %40)
  %229 = load float, ptr %22, align 4, !tbaa !34
  %230 = call float @llvm.fmuladd.f32(float %229, float %224, float %39)
  %231 = fadd float %38, %224
  %232 = load i32, ptr %43, align 8, !tbaa !300
  %233 = and i32 %232, 65536
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %207
  %236 = load float, ptr %13, align 4, !tbaa !34
  %237 = fmul float %231, %236
  br label %238

238:                                              ; preds = %207, %235, %54, %47, %36
  %239 = phi float [ %41, %54 ], [ %226, %207 ], [ %226, %235 ], [ %41, %47 ], [ %41, %36 ]
  %240 = phi float [ %40, %54 ], [ %228, %207 ], [ %228, %235 ], [ %40, %47 ], [ %40, %36 ]
  %241 = phi float [ %39, %54 ], [ %230, %207 ], [ %230, %235 ], [ %39, %47 ], [ %39, %36 ]
  %242 = phi float [ %38, %54 ], [ %231, %207 ], [ %237, %235 ], [ %38, %47 ], [ %38, %36 ]
  %243 = load ptr, ptr %37, align 8, !tbaa !59
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %36, !llvm.loop !313

245:                                              ; preds = %238, %16, %4
  %246 = phi float [ 0.000000e+00, %4 ], [ 0.000000e+00, %16 ], [ %239, %238 ]
  %247 = phi float [ 0.000000e+00, %4 ], [ 0.000000e+00, %16 ], [ %240, %238 ]
  %248 = phi float [ 0.000000e+00, %4 ], [ 0.000000e+00, %16 ], [ %241, %238 ]
  %249 = phi float [ 0.000000e+00, %4 ], [ 0.000000e+00, %16 ], [ %242, %238 ]
  %250 = fcmp une float %249, 0.000000e+00
  br i1 %250, label %251, label %294

251:                                              ; preds = %245
  %252 = fcmp ule float %249, 1.000000e+00
  br i1 %252, label %263, label %253

253:                                              ; preds = %251
  %254 = fdiv float 1.000000e+00, %249
  %255 = load float, ptr %7, align 4, !tbaa !34
  %256 = fmul float %254, %255
  store float %256, ptr %7, align 4, !tbaa !34
  %257 = getelementptr inbounds float, ptr %7, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !34
  %259 = fmul float %254, %258
  store float %259, ptr %257, align 4, !tbaa !34
  %260 = getelementptr inbounds float, ptr %7, i64 2
  %261 = load float, ptr %260, align 4, !tbaa !34
  %262 = fmul float %254, %261
  store float %262, ptr %260, align 4, !tbaa !34
  br label %263

263:                                              ; preds = %253, %251
  %264 = phi float [ 1.000000e+00, %253 ], [ %249, %251 ]
  %265 = fcmp olt float %249, 0.000000e+00
  %266 = select i1 %265, float 0.000000e+00, float %264
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %7, float noundef %266) #17
  %267 = fmul float %247, %247
  %268 = call float @llvm.fmuladd.f32(float %246, float %246, float %267)
  %269 = call float @llvm.fmuladd.f32(float %248, float %248, float %268)
  %270 = fcmp ogt float %269, 0x38AA95A5C0000000
  br i1 %270, label %271, label %277

271:                                              ; preds = %263
  %272 = call float @sqrtf(float noundef %269) #17
  %273 = fdiv float 1.000000e+00, %272
  %274 = fmul float %246, %273
  %275 = fmul float %247, %273
  %276 = fmul float %248, %273
  br label %277

277:                                              ; preds = %263, %271
  %278 = phi float [ %274, %271 ], [ 0.000000e+00, %263 ]
  %279 = phi float [ %275, %271 ], [ 0.000000e+00, %263 ]
  %280 = phi float [ %276, %271 ], [ 0.000000e+00, %263 ]
  %281 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %282 = load float, ptr %281, align 4, !tbaa !34
  %283 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !34
  %285 = fmul float %284, %284
  %286 = call float @llvm.fmuladd.f32(float %282, float %282, float %285)
  %287 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !34
  %289 = call float @llvm.fmuladd.f32(float %288, float %288, float %286)
  %290 = call float @sqrtf(float noundef %289) #17
  %291 = fmul float %278, %290
  %292 = fmul float %279, %290
  %293 = fmul float %280, %290
  store float %291, ptr %281, align 4, !tbaa !34
  store float %292, ptr %283, align 4, !tbaa !34
  store float %293, ptr %287, align 4, !tbaa !34
  br label %294

294:                                              ; preds = %72, %68, %245, %277
  %295 = phi i32 [ 1, %277 ], [ 0, %245 ], [ 0, %68 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  ret i32 %295
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_displist_calc_taper(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_kink(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, i32 noundef %11) unnamed_addr #0 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x float], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_kink.kink, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) @__const.do_kink.q1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #17
  %24 = icmp eq ptr %1, null
  %25 = icmp eq i16 %8, 0
  %26 = or i1 %24, %25
  br i1 %26, label %432, label %27

27:                                               ; preds = %12
  %28 = fcmp olt float %3, 0.000000e+00
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = fcmp ogt float %3, 1.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %27, %29, %31
  %33 = phi float [ 1.000000e+00, %31 ], [ %3, %29 ], [ 0.000000e+00, %27 ]
  %34 = fcmp une float %5, 0.000000e+00
  %35 = icmp ne i16 %8, 4
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = fcmp olt float %5, 0.000000e+00
  %39 = fpext float %33 to double
  %40 = fadd float %5, 1.000000e+00
  %41 = fsub float 1.000000e+00, %5
  %42 = fdiv float 1.000000e+00, %41
  %43 = select i1 %38, float %40, float %42
  %44 = fpext float %43 to double
  %45 = tail call double @pow(double noundef %39, double noundef %44) #17
  %46 = fptrunc double %45 to float
  br label %47

47:                                               ; preds = %37, %32
  %48 = phi float [ %33, %32 ], [ %46, %37 ]
  %49 = fmul float %48, %4
  %50 = fmul float %49, 0x400921FB60000000
  %51 = icmp eq i32 %11, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = tail call float @llvm.fabs.f32(float %50)
  %54 = fcmp ogt float %53, 0x400921FB60000000
  %55 = select i1 %54, float 0x400921FB60000000, float %53
  %56 = fmul float %55, 5.000000e-01
  %57 = tail call float @sinf(float noundef %56) #17
  br label %58

58:                                               ; preds = %52, %47
  %59 = phi float [ %57, %52 ], [ 1.000000e+00, %47 ]
  %60 = icmp eq i16 %8, 2
  br i1 %60, label %100, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #17
  %62 = sext i16 %9 to i64
  %63 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %62
  store float 1.000000e+00, ptr %63, align 4, !tbaa !34
  %64 = icmp eq ptr %10, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @mul_mat3_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %13) #17
  br label %66

66:                                               ; preds = %65, %61
  %67 = icmp eq ptr %2, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %13) #17
  br label %69

69:                                               ; preds = %68, %66
  %70 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %70) #17
  %71 = load float, ptr %17, align 4, !tbaa !34
  %72 = load float, ptr %13, align 4, !tbaa !34
  %73 = fsub float %72, %71
  store float %73, ptr %13, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %17, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds float, ptr %13, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = fsub float %77, %75
  store float %78, ptr %76, align 4, !tbaa !34
  %79 = getelementptr inbounds float, ptr %17, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = getelementptr inbounds float, ptr %13, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = fsub float %82, %80
  store float %83, ptr %81, align 4, !tbaa !34
  %84 = fmul float %78, %78
  %85 = call float @llvm.fmuladd.f32(float %73, float %73, float %84)
  %86 = call float @llvm.fmuladd.f32(float %83, float %83, float %85)
  %87 = fcmp ogt float %86, 0x38AA95A5C0000000
  br i1 %87, label %88, label %97

88:                                               ; preds = %69
  %89 = call float @sqrtf(float noundef %86) #17
  %90 = fdiv float 1.000000e+00, %89
  %91 = load float, ptr %13, align 4, !tbaa !34
  %92 = fmul float %91, %90
  store float %92, ptr %13, align 4, !tbaa !34
  %93 = load float, ptr %76, align 4, !tbaa !34
  %94 = fmul float %90, %93
  store float %94, ptr %76, align 4, !tbaa !34
  %95 = load float, ptr %81, align 4, !tbaa !34
  %96 = fmul float %90, %95
  br label %98

97:                                               ; preds = %69
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  store float 0.000000e+00, ptr %76, align 4, !tbaa !34
  br label %98

98:                                               ; preds = %88, %97
  %99 = phi float [ 0.000000e+00, %97 ], [ %96, %88 ]
  store float %99, ptr %81, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #17
  br label %100

100:                                              ; preds = %98, %58
  %101 = load float, ptr %0, align 4, !tbaa !34
  store float %101, ptr %16, align 4, !tbaa !34
  %102 = getelementptr inbounds float, ptr %0, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = getelementptr inbounds float, ptr %16, i64 1
  store float %103, ptr %104, align 4, !tbaa !34
  %105 = getelementptr inbounds float, ptr %0, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = getelementptr inbounds float, ptr %16, i64 2
  store float %106, ptr %107, align 4, !tbaa !34
  %108 = load float, ptr %1, align 4, !tbaa !34
  %109 = fsub float %108, %101
  store float %109, ptr %14, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %1, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fsub float %111, %103
  %113 = getelementptr inbounds float, ptr %14, i64 1
  store float %112, ptr %113, align 4, !tbaa !34
  %114 = getelementptr inbounds float, ptr %1, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !34
  %116 = fsub float %115, %106
  %117 = getelementptr inbounds float, ptr %14, i64 2
  store float %116, ptr %117, align 4, !tbaa !34
  switch i16 %8, label %425 [
    i16 1, label %118
    i16 2, label %171
    i16 3, label %199
    i16 4, label %236
  ]

118:                                              ; preds = %100
  %119 = fneg float %109
  store float %119, ptr %14, align 4, !tbaa !34
  %120 = fneg float %112
  store float %120, ptr %113, align 4, !tbaa !34
  %121 = fneg float %116
  store float %121, ptr %117, align 4, !tbaa !34
  %122 = fcmp ogt float %7, 0.000000e+00
  br i1 %122, label %123, label %146

123:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #17
  %124 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %14, ptr noundef nonnull %124) #17
  %125 = fneg float %7
  %126 = load float, ptr %18, align 4, !tbaa !34
  %127 = load float, ptr %14, align 4, !tbaa !34
  %128 = call float @llvm.fmuladd.f32(float %126, float %125, float %127)
  store float %128, ptr %14, align 4, !tbaa !34
  %129 = getelementptr inbounds float, ptr %18, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !34
  %131 = load float, ptr %113, align 4, !tbaa !34
  %132 = call float @llvm.fmuladd.f32(float %130, float %125, float %131)
  store float %132, ptr %113, align 4, !tbaa !34
  %133 = getelementptr inbounds float, ptr %18, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !34
  %135 = load float, ptr %117, align 4, !tbaa !34
  %136 = call float @llvm.fmuladd.f32(float %134, float %125, float %135)
  store float %136, ptr %117, align 4, !tbaa !34
  call void @project_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  %137 = load float, ptr %18, align 4, !tbaa !34
  %138 = load float, ptr %14, align 4, !tbaa !34
  %139 = call float @llvm.fmuladd.f32(float %137, float %125, float %138)
  store float %139, ptr %14, align 4, !tbaa !34
  %140 = load float, ptr %129, align 4, !tbaa !34
  %141 = load float, ptr %113, align 4, !tbaa !34
  %142 = call float @llvm.fmuladd.f32(float %140, float %125, float %141)
  store float %142, ptr %113, align 4, !tbaa !34
  %143 = load float, ptr %133, align 4, !tbaa !34
  %144 = load float, ptr %117, align 4, !tbaa !34
  %145 = call float @llvm.fmuladd.f32(float %143, float %125, float %144)
  store float %145, ptr %117, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #17
  br label %146

146:                                              ; preds = %123, %118
  call void @axis_angle_to_quat(ptr noundef nonnull %15, ptr noundef nonnull %13, float noundef 0x3FF921FB60000000) #17
  call void @mul_qt_v3(ptr noundef nonnull %15, ptr noundef nonnull %14) #17
  %147 = load float, ptr %13, align 4, !tbaa !34
  %148 = load float, ptr %14, align 4, !tbaa !34
  %149 = call float @llvm.fmuladd.f32(float %147, float %6, float %148)
  store float %149, ptr %14, align 4, !tbaa !34
  %150 = getelementptr inbounds float, ptr %13, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !34
  %152 = load float, ptr %113, align 4, !tbaa !34
  %153 = call float @llvm.fmuladd.f32(float %151, float %6, float %152)
  store float %153, ptr %113, align 4, !tbaa !34
  %154 = getelementptr inbounds float, ptr %13, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !34
  %156 = load float, ptr %117, align 4, !tbaa !34
  %157 = call float @llvm.fmuladd.f32(float %155, float %6, float %156)
  store float %157, ptr %117, align 4, !tbaa !34
  %158 = fcmp une float %50, 0.000000e+00
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @axis_angle_to_quat(ptr noundef nonnull %15, ptr noundef nonnull %160, float noundef %50) #17
  call void @mul_qt_v3(ptr noundef nonnull %15, ptr noundef nonnull %14) #17
  br label %161

161:                                              ; preds = %159, %146
  %162 = load float, ptr %1, align 4, !tbaa !34
  %163 = load float, ptr %14, align 4, !tbaa !34
  %164 = fadd float %162, %163
  store float %164, ptr %16, align 4, !tbaa !34
  %165 = load float, ptr %110, align 4, !tbaa !34
  %166 = load float, ptr %113, align 4, !tbaa !34
  %167 = fadd float %165, %166
  store float %167, ptr %104, align 4, !tbaa !34
  %168 = load float, ptr %114, align 4, !tbaa !34
  %169 = load float, ptr %117, align 4, !tbaa !34
  %170 = fadd float %168, %169
  store float %170, ptr %107, align 4, !tbaa !34
  br label %425

171:                                              ; preds = %100
  %172 = fcmp ogt float %7, 0.000000e+00
  br i1 %172, label %173, label %186

173:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #17
  %174 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %14, ptr noundef nonnull %174) #17
  %175 = load float, ptr %19, align 4, !tbaa !34
  %176 = load float, ptr %16, align 4, !tbaa !34
  %177 = call float @llvm.fmuladd.f32(float %175, float %7, float %176)
  store float %177, ptr %16, align 4, !tbaa !34
  %178 = getelementptr inbounds float, ptr %19, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !34
  %180 = load float, ptr %104, align 4, !tbaa !34
  %181 = call float @llvm.fmuladd.f32(float %179, float %7, float %180)
  store float %181, ptr %104, align 4, !tbaa !34
  %182 = getelementptr inbounds float, ptr %19, i64 2
  %183 = load float, ptr %182, align 4, !tbaa !34
  %184 = load float, ptr %107, align 4, !tbaa !34
  %185 = call float @llvm.fmuladd.f32(float %183, float %7, float %184)
  store float %185, ptr %107, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  br label %186

186:                                              ; preds = %173, %171
  %187 = fneg float %6
  %188 = call float @sinf(float noundef %50) #17
  %189 = fmul float %188, %187
  %190 = load float, ptr %14, align 4, !tbaa !34
  %191 = load float, ptr %16, align 4, !tbaa !34
  %192 = call float @llvm.fmuladd.f32(float %190, float %189, float %191)
  store float %192, ptr %16, align 4, !tbaa !34
  %193 = load float, ptr %113, align 4, !tbaa !34
  %194 = load float, ptr %104, align 4, !tbaa !34
  %195 = call float @llvm.fmuladd.f32(float %193, float %189, float %194)
  store float %195, ptr %104, align 4, !tbaa !34
  %196 = load float, ptr %117, align 4, !tbaa !34
  %197 = load float, ptr %107, align 4, !tbaa !34
  %198 = call float @llvm.fmuladd.f32(float %196, float %189, float %197)
  store float %198, ptr %107, align 4, !tbaa !34
  br label %425

199:                                              ; preds = %100
  %200 = call float @sinf(float noundef %50) #17
  %201 = fmul float %200, %6
  %202 = load float, ptr %13, align 4, !tbaa !34
  %203 = load float, ptr %16, align 4, !tbaa !34
  %204 = call float @llvm.fmuladd.f32(float %202, float %201, float %203)
  store float %204, ptr %16, align 4, !tbaa !34
  %205 = getelementptr inbounds float, ptr %13, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !34
  %207 = load float, ptr %104, align 4, !tbaa !34
  %208 = call float @llvm.fmuladd.f32(float %206, float %201, float %207)
  store float %208, ptr %104, align 4, !tbaa !34
  %209 = getelementptr inbounds float, ptr %13, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !34
  %211 = load float, ptr %107, align 4, !tbaa !34
  %212 = call float @llvm.fmuladd.f32(float %210, float %201, float %211)
  store float %212, ptr %107, align 4, !tbaa !34
  %213 = fcmp ogt float %7, 0.000000e+00
  br i1 %213, label %214, label %425

214:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #17
  call void @project_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  %215 = load float, ptr %20, align 4, !tbaa !34
  %216 = load float, ptr %16, align 4, !tbaa !34
  %217 = call float @llvm.fmuladd.f32(float %215, float %7, float %216)
  store float %217, ptr %16, align 4, !tbaa !34
  %218 = getelementptr inbounds float, ptr %20, i64 1
  %219 = load float, ptr %218, align 4, !tbaa !34
  %220 = load float, ptr %104, align 4, !tbaa !34
  %221 = call float @llvm.fmuladd.f32(float %219, float %7, float %220)
  store float %221, ptr %104, align 4, !tbaa !34
  %222 = getelementptr inbounds float, ptr %20, i64 2
  %223 = load float, ptr %222, align 4, !tbaa !34
  %224 = load float, ptr %107, align 4, !tbaa !34
  %225 = call float @llvm.fmuladd.f32(float %223, float %7, float %224)
  store float %225, ptr %107, align 4, !tbaa !34
  %226 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %14, ptr noundef nonnull %226) #17
  %227 = load float, ptr %20, align 4, !tbaa !34
  %228 = load float, ptr %16, align 4, !tbaa !34
  %229 = call float @llvm.fmuladd.f32(float %227, float %7, float %228)
  store float %229, ptr %16, align 4, !tbaa !34
  %230 = load float, ptr %218, align 4, !tbaa !34
  %231 = load float, ptr %104, align 4, !tbaa !34
  %232 = call float @llvm.fmuladd.f32(float %230, float %7, float %231)
  store float %232, ptr %104, align 4, !tbaa !34
  %233 = load float, ptr %222, align 4, !tbaa !34
  %234 = load float, ptr %107, align 4, !tbaa !34
  %235 = call float @llvm.fmuladd.f32(float %233, float %7, float %234)
  store float %235, ptr %107, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #17
  br label %425

236:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_kink.y_vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %22, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_kink.z_vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #17
  %237 = icmp eq ptr %2, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %236
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %21) #17
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %22) #17
  br label %239

239:                                              ; preds = %238, %236
  %240 = load float, ptr %14, align 4, !tbaa !34
  %241 = fneg float %240
  store float %241, ptr %14, align 4, !tbaa !34
  %242 = load float, ptr %113, align 4, !tbaa !34
  %243 = fneg float %242
  store float %243, ptr %113, align 4, !tbaa !34
  %244 = load float, ptr %117, align 4, !tbaa !34
  %245 = fneg float %244
  store float %245, ptr %117, align 4, !tbaa !34
  %246 = fmul float %242, %242
  %247 = call float @llvm.fmuladd.f32(float %240, float %240, float %246)
  %248 = call float @llvm.fmuladd.f32(float %244, float %244, float %247)
  %249 = fcmp ogt float %248, 0x38AA95A5C0000000
  br i1 %249, label %250, label %259

250:                                              ; preds = %239
  %251 = call float @sqrtf(float noundef %248) #17
  %252 = fdiv float 1.000000e+00, %251
  %253 = load float, ptr %14, align 4, !tbaa !34
  %254 = fmul float %253, %252
  %255 = load float, ptr %113, align 4, !tbaa !34
  %256 = fmul float %252, %255
  %257 = load float, ptr %117, align 4, !tbaa !34
  %258 = fmul float %252, %257
  br label %259

259:                                              ; preds = %239, %250
  %260 = phi float [ %258, %250 ], [ 0.000000e+00, %239 ]
  %261 = phi float [ %256, %250 ], [ 0.000000e+00, %239 ]
  %262 = phi float [ %254, %250 ], [ 0.000000e+00, %239 ]
  %263 = load float, ptr %21, align 4, !tbaa !34
  %264 = getelementptr inbounds float, ptr %21, i64 1
  %265 = load float, ptr %264, align 4, !tbaa !34
  %266 = fmul float %261, %265
  %267 = call float @llvm.fmuladd.f32(float %263, float %262, float %266)
  %268 = getelementptr inbounds float, ptr %21, i64 2
  %269 = load float, ptr %268, align 4, !tbaa !34
  %270 = call float @llvm.fmuladd.f32(float %269, float %260, float %267)
  %271 = load float, ptr %22, align 4, !tbaa !34
  %272 = getelementptr inbounds float, ptr %22, i64 1
  %273 = getelementptr inbounds float, ptr %22, i64 2
  %274 = fcmp ogt float %270, 5.000000e-01
  br i1 %274, label %275, label %292

275:                                              ; preds = %259
  store float %263, ptr %23, align 4, !tbaa !34
  %276 = getelementptr inbounds float, ptr %23, i64 1
  store float %265, ptr %276, align 4, !tbaa !34
  %277 = getelementptr inbounds float, ptr %23, i64 2
  store float %269, ptr %277, align 4, !tbaa !34
  %278 = call float @cosf(float noundef %50) #17
  %279 = fmul float %278, %6
  %280 = load float, ptr %21, align 4, !tbaa !34
  %281 = fmul float %280, %279
  store float %281, ptr %21, align 4, !tbaa !34
  %282 = load float, ptr %264, align 4, !tbaa !34
  %283 = fmul float %279, %282
  store float %283, ptr %264, align 4, !tbaa !34
  %284 = load float, ptr %268, align 4, !tbaa !34
  %285 = fmul float %279, %284
  store float %285, ptr %268, align 4, !tbaa !34
  %286 = fmul float %6, 5.000000e-01
  %287 = fmul float %50, 2.000000e+00
  %288 = call float @sinf(float noundef %287) #17
  %289 = fmul float %286, %288
  %290 = load float, ptr %22, align 4, !tbaa !34
  %291 = fmul float %290, %289
  store float %291, ptr %22, align 4, !tbaa !34
  br label %348

292:                                              ; preds = %259
  %293 = load float, ptr %273, align 4, !tbaa !34
  %294 = load float, ptr %272, align 4, !tbaa !34
  %295 = fmul float %261, %294
  %296 = call float @llvm.fmuladd.f32(float %271, float %262, float %295)
  %297 = call float @llvm.fmuladd.f32(float %293, float %260, float %296)
  %298 = fcmp ogt float %297, 0.000000e+00
  %299 = getelementptr inbounds float, ptr %23, i64 1
  %300 = getelementptr inbounds float, ptr %23, i64 2
  br i1 %298, label %301, label %324

301:                                              ; preds = %292
  %302 = fmul float %271, 0x3FEBB67B00000000
  store float %302, ptr %23, align 4, !tbaa !34
  %303 = fmul float %294, 0x3FEBB67B00000000
  store float %303, ptr %299, align 4, !tbaa !34
  %304 = fmul float %293, 0x3FEBB67B00000000
  store float %304, ptr %300, align 4, !tbaa !34
  %305 = call float @llvm.fmuladd.f32(float %263, float -5.000000e-01, float %302)
  store float %305, ptr %23, align 4, !tbaa !34
  %306 = call float @llvm.fmuladd.f32(float %265, float -5.000000e-01, float %303)
  store float %306, ptr %299, align 4, !tbaa !34
  %307 = call float @llvm.fmuladd.f32(float %269, float -5.000000e-01, float %304)
  store float %307, ptr %300, align 4, !tbaa !34
  %308 = fneg float %6
  %309 = fadd float %50, 0x3FF0C15240000000
  %310 = call float @cosf(float noundef %309) #17
  %311 = fmul float %310, %308
  %312 = load float, ptr %21, align 4, !tbaa !34
  %313 = fmul float %312, %311
  store float %313, ptr %21, align 4, !tbaa !34
  %314 = load float, ptr %264, align 4, !tbaa !34
  %315 = fmul float %311, %314
  store float %315, ptr %264, align 4, !tbaa !34
  %316 = load float, ptr %268, align 4, !tbaa !34
  %317 = fmul float %311, %316
  store float %317, ptr %268, align 4, !tbaa !34
  %318 = fmul float %6, 5.000000e-01
  %319 = call float @llvm.fmuladd.f32(float %50, float 2.000000e+00, float 0x3FE0C15240000000)
  %320 = call float @cosf(float noundef %319) #17
  %321 = fmul float %318, %320
  %322 = load float, ptr %22, align 4, !tbaa !34
  %323 = fmul float %322, %321
  store float %323, ptr %22, align 4, !tbaa !34
  br label %348

324:                                              ; preds = %292
  %325 = fmul float %271, 0xBFEBB67B00000000
  store float %325, ptr %23, align 4, !tbaa !34
  %326 = fmul float %294, 0xBFEBB67B00000000
  store float %326, ptr %299, align 4, !tbaa !34
  %327 = fmul float %293, 0xBFEBB67B00000000
  store float %327, ptr %300, align 4, !tbaa !34
  %328 = call float @llvm.fmuladd.f32(float %263, float -5.000000e-01, float %325)
  store float %328, ptr %23, align 4, !tbaa !34
  %329 = call float @llvm.fmuladd.f32(float %265, float -5.000000e-01, float %326)
  store float %329, ptr %299, align 4, !tbaa !34
  %330 = call float @llvm.fmuladd.f32(float %269, float -5.000000e-01, float %327)
  store float %330, ptr %300, align 4, !tbaa !34
  %331 = fadd float %50, 0x3FE0C15240000000
  %332 = call float @sinf(float noundef %331) #17
  %333 = fneg float %332
  %334 = fmul float %333, %6
  %335 = load float, ptr %21, align 4, !tbaa !34
  %336 = fmul float %335, %334
  store float %336, ptr %21, align 4, !tbaa !34
  %337 = load float, ptr %264, align 4, !tbaa !34
  %338 = fmul float %334, %337
  store float %338, ptr %264, align 4, !tbaa !34
  %339 = load float, ptr %268, align 4, !tbaa !34
  %340 = fmul float %334, %339
  store float %340, ptr %268, align 4, !tbaa !34
  %341 = fmul float %6, 5.000000e-01
  %342 = call float @llvm.fmuladd.f32(float %50, float 2.000000e+00, float 0x3FF0C15240000000)
  %343 = call float @sinf(float noundef %342) #17
  %344 = fneg float %343
  %345 = fmul float %341, %344
  %346 = load float, ptr %22, align 4, !tbaa !34
  %347 = fmul float %346, %345
  store float %347, ptr %22, align 4, !tbaa !34
  br label %348

348:                                              ; preds = %301, %324, %275
  %349 = phi float [ %321, %301 ], [ %345, %324 ], [ %289, %275 ]
  %350 = load float, ptr %272, align 4, !tbaa !34
  %351 = fmul float %349, %350
  store float %351, ptr %272, align 4, !tbaa !34
  %352 = load float, ptr %273, align 4, !tbaa !34
  %353 = fmul float %349, %352
  store float %353, ptr %273, align 4, !tbaa !34
  %354 = load float, ptr %23, align 4, !tbaa !34
  %355 = fmul float %354, %6
  store float %355, ptr %23, align 4, !tbaa !34
  %356 = getelementptr inbounds float, ptr %23, i64 1
  %357 = load float, ptr %356, align 4, !tbaa !34
  %358 = fmul float %357, %6
  store float %358, ptr %356, align 4, !tbaa !34
  %359 = getelementptr inbounds float, ptr %23, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !34
  %361 = fmul float %360, %6
  store float %361, ptr %359, align 4, !tbaa !34
  %362 = load float, ptr %1, align 4, !tbaa !34
  %363 = fadd float %355, %362
  store float %363, ptr %23, align 4, !tbaa !34
  %364 = load float, ptr %110, align 4, !tbaa !34
  %365 = fadd float %358, %364
  store float %365, ptr %356, align 4, !tbaa !34
  %366 = load float, ptr %114, align 4, !tbaa !34
  %367 = fadd float %361, %366
  store float %367, ptr %359, align 4, !tbaa !34
  %368 = load float, ptr %0, align 4, !tbaa !34
  %369 = fsub float %368, %363
  store float %369, ptr %14, align 4, !tbaa !34
  %370 = load float, ptr %102, align 4, !tbaa !34
  %371 = fsub float %370, %365
  store float %371, ptr %113, align 4, !tbaa !34
  %372 = load float, ptr %105, align 4, !tbaa !34
  %373 = fsub float %372, %367
  store float %373, ptr %117, align 4, !tbaa !34
  %374 = fmul float %371, %371
  %375 = call float @llvm.fmuladd.f32(float %369, float %369, float %374)
  %376 = call float @llvm.fmuladd.f32(float %373, float %373, float %375)
  %377 = fcmp ogt float %376, 0x38AA95A5C0000000
  br i1 %377, label %378, label %387

378:                                              ; preds = %348
  %379 = call float @sqrtf(float noundef %376) #17
  %380 = fdiv float 1.000000e+00, %379
  %381 = load float, ptr %14, align 4, !tbaa !34
  %382 = fmul float %381, %380
  store float %382, ptr %14, align 4, !tbaa !34
  %383 = load float, ptr %113, align 4, !tbaa !34
  %384 = fmul float %380, %383
  store float %384, ptr %113, align 4, !tbaa !34
  %385 = load float, ptr %117, align 4, !tbaa !34
  %386 = fmul float %380, %385
  br label %388

387:                                              ; preds = %348
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  store float 0.000000e+00, ptr %113, align 4, !tbaa !34
  br label %388

388:                                              ; preds = %378, %387
  %389 = phi float [ 0.000000e+00, %387 ], [ %386, %378 ]
  %390 = phi float [ 0.000000e+00, %387 ], [ %379, %378 ]
  store float %389, ptr %117, align 4, !tbaa !34
  %391 = fmul float %6, 5.000000e-01
  %392 = fcmp olt float %390, %391
  %393 = select i1 %392, float %390, float %391
  %394 = load float, ptr %14, align 4, !tbaa !34
  %395 = fmul float %394, %393
  store float %395, ptr %14, align 4, !tbaa !34
  %396 = load float, ptr %113, align 4, !tbaa !34
  %397 = fmul float %393, %396
  store float %397, ptr %113, align 4, !tbaa !34
  %398 = fmul float %389, %393
  store float %398, ptr %117, align 4, !tbaa !34
  %399 = load float, ptr %1, align 4, !tbaa !34
  %400 = load float, ptr %21, align 4, !tbaa !34
  %401 = fadd float %399, %400
  store float %401, ptr %23, align 4, !tbaa !34
  %402 = load float, ptr %110, align 4, !tbaa !34
  %403 = load float, ptr %264, align 4, !tbaa !34
  %404 = fadd float %402, %403
  store float %404, ptr %356, align 4, !tbaa !34
  %405 = load float, ptr %114, align 4, !tbaa !34
  %406 = load float, ptr %268, align 4, !tbaa !34
  %407 = fadd float %405, %406
  store float %407, ptr %359, align 4, !tbaa !34
  %408 = load float, ptr %22, align 4, !tbaa !34
  %409 = fadd float %401, %408
  store float %409, ptr %23, align 4, !tbaa !34
  %410 = load float, ptr %272, align 4, !tbaa !34
  %411 = fadd float %404, %410
  store float %411, ptr %356, align 4, !tbaa !34
  %412 = load float, ptr %273, align 4, !tbaa !34
  %413 = fadd float %407, %412
  store float %413, ptr %359, align 4, !tbaa !34
  %414 = fadd float %395, %409
  store float %414, ptr %23, align 4, !tbaa !34
  %415 = fadd float %397, %411
  store float %415, ptr %356, align 4, !tbaa !34
  %416 = fadd float %398, %413
  store float %416, ptr %359, align 4, !tbaa !34
  %417 = fadd float %5, 1.000000e+00
  %418 = fmul float %417, 0x401921FB60000000
  %419 = fcmp olt float %50, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %388
  %421 = fdiv float %50, %418
  %422 = call float @sqrtf(float noundef %421) #6
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %23, float noundef %422) #17
  br label %424

423:                                              ; preds = %388
  store float %414, ptr %16, align 4, !tbaa !34
  store float %415, ptr %104, align 4, !tbaa !34
  store float %416, ptr %107, align 4, !tbaa !34
  br label %424

424:                                              ; preds = %423, %420
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #17
  br label %425

425:                                              ; preds = %199, %214, %100, %424, %186, %161
  %426 = fcmp olt float %59, 1.000000e+00
  br i1 %426, label %427, label %428

427:                                              ; preds = %425
  call void @interp_v3_v3v3(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %16, float noundef %59) #17
  br label %432

428:                                              ; preds = %425
  %429 = load float, ptr %16, align 4, !tbaa !34
  store float %429, ptr %0, align 4, !tbaa !34
  %430 = load float, ptr %104, align 4, !tbaa !34
  store float %430, ptr %102, align 4, !tbaa !34
  %431 = load float, ptr %107, align 4, !tbaa !34
  store float %431, ptr %105, align 4, !tbaa !34
  br label %432

432:                                              ; preds = %427, %428, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  ret void
}

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @psys_cache_vgroup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 36, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !264
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %12 = load ptr, ptr %11, align 8, !tbaa !275
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 2) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !280
  %18 = tail call i32 %17(ptr noundef %0) #17
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.8) #17
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 37
  %24 = load i16, ptr %23, align 4, !tbaa !314
  %25 = sext i16 %24 to i32
  %26 = shl nuw i32 1, %2
  %27 = and i32 %26, %25
  %28 = icmp eq i32 %27, 0
  %29 = icmp sgt i32 %18, 0
  br i1 %28, label %33, label %30

30:                                               ; preds = %15
  br i1 %29, label %31, label %57

31:                                               ; preds = %30
  %32 = zext nneg i32 %18 to i64
  br label %36

33:                                               ; preds = %15
  br i1 %29, label %34, label %57

34:                                               ; preds = %33
  %35 = zext nneg i32 %18 to i64
  br label %47

36:                                               ; preds = %31, %36
  %37 = phi i64 [ 0, %31 ], [ %45, %36 ]
  %38 = getelementptr inbounds %struct.MDeformVert, ptr %13, i64 %37
  %39 = load i16, ptr %7, align 2, !tbaa !264
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %40, -1
  %42 = tail call float @defvert_find_weight(ptr noundef nonnull %38, i32 noundef %41) #17
  %43 = fsub float 1.000000e+00, %42
  %44 = getelementptr inbounds float, ptr %22, i64 %37
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %57, label %36, !llvm.loop !315

47:                                               ; preds = %34, %47
  %48 = phi i64 [ 0, %34 ], [ %55, %47 ]
  %49 = getelementptr inbounds %struct.MDeformVert, ptr %13, i64 %48
  %50 = load i16, ptr %7, align 2, !tbaa !264
  %51 = sext i16 %50 to i32
  %52 = add nsw i32 %51, -1
  %53 = tail call float @defvert_find_weight(ptr noundef nonnull %49, i32 noundef %52) #17
  %54 = getelementptr inbounds float, ptr %22, i64 %48
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %35
  br i1 %56, label %57, label %47, !llvm.loop !316

57:                                               ; preds = %36, %47, %30, %33, %10, %5, %3
  %58 = phi ptr [ null, %3 ], [ null, %5 ], [ null, %10 ], [ %22, %33 ], [ %22, %30 ], [ %22, %47 ], [ %22, %36 ]
  ret ptr %58
}

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_find_parents(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 28
  %9 = load i32, ptr %8, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 91
  %12 = load float, ptr %11, align 4, !tbaa !317
  %13 = fmul float %12, %10
  %14 = fmul float %13, 0x3FD3333340000000
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp ne ptr %17, null
  %19 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 89
  %24 = load i32, ptr %23, align 4, !tbaa !318
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 90
  %28 = load i32, ptr %27, align 8, !tbaa !319
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = sitofp i32 %24 to float
  %32 = sitofp i32 %28 to float
  %33 = fdiv float %31, %32
  %34 = sitofp i32 %15 to float
  %35 = fmul float %33, %34
  %36 = fptosi float %35 to i32
  br label %37

37:                                               ; preds = %1, %30, %26, %22
  %38 = phi i32 [ %36, %30 ], [ %15, %26 ], [ %15, %22 ], [ %15, %1 ]
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 26
  %40 = load i32, ptr %39, align 8, !tbaa !43
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %38)
  %42 = tail call ptr @BLI_kdtree_new(i32 noundef %41) #17
  %43 = load ptr, ptr %4, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !165
  %46 = icmp sgt i32 %41, 0
  br i1 %46, label %47, label %94

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %49 = getelementptr inbounds float, ptr %2, i64 1
  %50 = getelementptr inbounds float, ptr %2, i64 2
  %51 = getelementptr inbounds float, ptr %3, i64 1
  %52 = getelementptr inbounds float, ptr %3, i64 2
  %53 = getelementptr inbounds float, ptr %2, i64 1
  %54 = getelementptr inbounds float, ptr %2, i64 2
  %55 = getelementptr inbounds float, ptr %3, i64 1
  %56 = getelementptr inbounds float, ptr %3, i64 2
  br label %57

57:                                               ; preds = %47, %90
  %58 = phi ptr [ %45, %47 ], [ %92, %90 ]
  %59 = phi i32 [ 0, %47 ], [ %91, %90 ]
  %60 = load ptr, ptr %48, align 8, !tbaa !285
  %61 = load i32, ptr %58, align 4, !tbaa !259
  %62 = getelementptr inbounds %struct.ChildParticle, ptr %58, i64 0, i32 4
  %63 = getelementptr inbounds %struct.ChildParticle, ptr %58, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !320
  %65 = icmp eq ptr %60, null
  br i1 %65, label %89, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %60, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !199
  %69 = icmp eq ptr %68, null
  br i1 %69, label %89, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %60, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !100
  %73 = getelementptr inbounds %struct.ParticleSystem, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = getelementptr inbounds %struct.ParticleSettings, ptr %74, i64 0, i32 9
  %76 = load i16, ptr %75, align 4, !tbaa !283
  %77 = icmp eq i16 %76, 2
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.ParticleSettings, ptr %74, i64 0, i32 8
  %80 = load i16, ptr %79, align 2, !tbaa !284
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load float, ptr %62, align 4, !tbaa !34
  store float %83, ptr %2, align 4, !tbaa !34
  %84 = getelementptr inbounds %struct.ChildParticle, ptr %58, i64 0, i32 4, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !34
  store float %85, ptr %49, align 4, !tbaa !34
  %86 = getelementptr inbounds %struct.ChildParticle, ptr %58, i64 0, i32 4, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !34
  store float %87, ptr %50, align 4, !tbaa !34
  store float %83, ptr %3, align 4, !tbaa !34
  store float %85, ptr %51, align 4, !tbaa !34
  store float %87, ptr %52, align 4, !tbaa !34
  br label %90

88:                                               ; preds = %78, %70
  call void @psys_particle_on_dm(ptr noundef nonnull %68, i32 noundef 1, i32 noundef %61, i32 noundef -2, ptr noundef nonnull %62, float noundef %64, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef null)
  br label %90

89:                                               ; preds = %66, %57
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %53, align 4, !tbaa !34
  store float 0.000000e+00, ptr %54, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %55, align 4, !tbaa !34
  store float 0.000000e+00, ptr %56, align 4, !tbaa !34
  br label %90

90:                                               ; preds = %82, %88, %89
  call void @BLI_kdtree_insert(ptr noundef %42, i32 noundef %59, ptr noundef nonnull %3) #17
  %91 = add nuw nsw i32 %59, 1
  %92 = getelementptr inbounds %struct.ChildParticle, ptr %58, i64 1
  %93 = icmp eq i32 %91, %41
  br i1 %93, label %94, label %57, !llvm.loop !321

94:                                               ; preds = %90, %37
  %95 = phi i32 [ 0, %37 ], [ %91, %90 ]
  %96 = phi ptr [ %45, %37 ], [ %92, %90 ]
  call void @BLI_kdtree_balance(ptr noundef %42) #17
  %97 = icmp slt i32 %95, %9
  br i1 %97, label %98, label %147

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %100 = getelementptr inbounds float, ptr %2, i64 1
  %101 = getelementptr inbounds float, ptr %2, i64 2
  %102 = getelementptr inbounds float, ptr %3, i64 1
  %103 = getelementptr inbounds float, ptr %3, i64 2
  %104 = getelementptr inbounds float, ptr %2, i64 1
  %105 = getelementptr inbounds float, ptr %2, i64 2
  %106 = getelementptr inbounds float, ptr %3, i64 1
  %107 = getelementptr inbounds float, ptr %3, i64 2
  br label %108

108:                                              ; preds = %98, %141
  %109 = phi ptr [ %96, %98 ], [ %145, %141 ]
  %110 = phi i32 [ %95, %98 ], [ %144, %141 ]
  %111 = load ptr, ptr %99, align 8, !tbaa !285
  %112 = load i32, ptr %109, align 4, !tbaa !259
  %113 = getelementptr inbounds %struct.ChildParticle, ptr %109, i64 0, i32 4
  %114 = getelementptr inbounds %struct.ChildParticle, ptr %109, i64 0, i32 5
  %115 = load float, ptr %114, align 4, !tbaa !320
  %116 = icmp eq ptr %111, null
  br i1 %116, label %140, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %111, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !199
  %120 = icmp eq ptr %119, null
  br i1 %120, label %140, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %111, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !100
  %124 = getelementptr inbounds %struct.ParticleSystem, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !49
  %126 = getelementptr inbounds %struct.ParticleSettings, ptr %125, i64 0, i32 9
  %127 = load i16, ptr %126, align 4, !tbaa !283
  %128 = icmp eq i16 %127, 2
  br i1 %128, label %129, label %139

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.ParticleSettings, ptr %125, i64 0, i32 8
  %131 = load i16, ptr %130, align 2, !tbaa !284
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = load float, ptr %113, align 4, !tbaa !34
  store float %134, ptr %2, align 4, !tbaa !34
  %135 = getelementptr inbounds %struct.ChildParticle, ptr %109, i64 0, i32 4, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !34
  store float %136, ptr %100, align 4, !tbaa !34
  %137 = getelementptr inbounds %struct.ChildParticle, ptr %109, i64 0, i32 4, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !34
  store float %138, ptr %101, align 4, !tbaa !34
  store float %134, ptr %3, align 4, !tbaa !34
  store float %136, ptr %102, align 4, !tbaa !34
  store float %138, ptr %103, align 4, !tbaa !34
  br label %141

139:                                              ; preds = %129, %121
  call void @psys_particle_on_dm(ptr noundef nonnull %119, i32 noundef 1, i32 noundef %112, i32 noundef -2, ptr noundef nonnull %113, float noundef %115, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef null)
  br label %141

140:                                              ; preds = %117, %108
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %104, align 4, !tbaa !34
  store float 0.000000e+00, ptr %105, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %106, align 4, !tbaa !34
  store float 0.000000e+00, ptr %107, align 4, !tbaa !34
  br label %141

141:                                              ; preds = %133, %139, %140
  %142 = call i32 @BLI_kdtree_find_nearest(ptr noundef %42, ptr noundef nonnull %3, ptr noundef null) #17
  %143 = getelementptr inbounds %struct.ChildParticle, ptr %109, i64 0, i32 1
  store i32 %142, ptr %143, align 4, !tbaa !322
  %144 = add nuw i32 %110, 1
  %145 = getelementptr inbounds %struct.ChildParticle, ptr %109, i64 1
  %146 = icmp eq i32 %144, %9
  br i1 %146, label %147, label %108, !llvm.loop !323

147:                                              ; preds = %141, %94
  call void @BLI_kdtree_free(ptr noundef %42) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  ret void
}

declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #2

declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_cache_child_paths(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %329

11:                                               ; preds = %3
  %12 = tail call ptr @psys_threads_create(ptr noundef %0) #17
  %13 = load ptr, ptr %0, align 8, !tbaa !64
  %14 = load ptr, ptr %12, align 8, !tbaa !324
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 24
  %20 = load i16, ptr %19, align 2, !tbaa !326
  %21 = sext i16 %20 to i32
  %22 = tail call double @ldexp(double 1.000000e+00, i32 %21) #17
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 28
  %24 = load i32, ptr %23, align 8, !tbaa !166
  %25 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !327
  %27 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  %29 = icmp eq ptr %28, null
  br i1 %29, label %68, label %30

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !89
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %30
  %38 = icmp eq ptr %32, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 109
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 25
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %41, label %50, !llvm.loop !61

50:                                               ; preds = %45, %41, %37
  %51 = phi ptr [ null, %37 ], [ %43, %45 ], [ null, %41 ]
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !92
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 40
  %59 = load ptr, ptr %58, align 8, !tbaa !93
  %60 = getelementptr inbounds %struct.PointCache, ptr %59, i64 0, i32 21
  %61 = load ptr, ptr %60, align 8, !tbaa !94
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %57, %53
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 39
  %65 = load ptr, ptr %64, align 8, !tbaa !96
  %66 = icmp eq ptr %65, null
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %11, %30, %50, %57, %63
  %69 = phi i32 [ 0, %57 ], [ 0, %50 ], [ 0, %30 ], [ 0, %11 ], [ %67, %63 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %73 = load ptr, ptr %72, align 8, !tbaa !328
  %74 = getelementptr inbounds %struct.ToolSettings, ptr %73, i64 0, i32 18
  %75 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 39
  %76 = load ptr, ptr %75, align 8, !tbaa !96
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !92
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i16, ptr %74, align 8, !tbaa !329
  %84 = and i16 %83, 16
  %85 = icmp eq i16 %84, 0
  %86 = select i1 %85, i32 0, i32 %24
  br label %87

87:                                               ; preds = %78, %82, %71
  %88 = phi i32 [ %24, %71 ], [ %24, %78 ], [ %86, %82 ]
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %73, i64 0, i32 18, i32 10
  %90 = load i32, ptr %89, align 8, !tbaa !331
  %91 = tail call double @ldexp(double 1.000000e+00, i32 %90) #17
  br label %92

92:                                               ; preds = %87, %68
  %93 = phi double [ %91, %87 ], [ %22, %68 ]
  %94 = phi i32 [ %88, %87 ], [ %24, %68 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %128, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 19
  %98 = load i16, ptr %97, align 4, !tbaa !332
  %99 = icmp eq i16 %98, 2
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = sitofp i32 %94 to float
  %102 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 91
  %103 = load float, ptr %102, align 4, !tbaa !317
  %104 = fmul float %103, %101
  %105 = fmul float %104, 0x3FD3333340000000
  %106 = fptosi float %105 to i32
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 39
  %108 = load ptr, ptr %107, align 8, !tbaa !96
  %109 = icmp ne ptr %108, null
  %110 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %111 = icmp ne i8 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %100
  %114 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 89
  %115 = load i32, ptr %114, align 4, !tbaa !318
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 90
  %119 = load i32, ptr %118, align 8, !tbaa !319
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = sitofp i32 %115 to float
  %123 = sitofp i32 %119 to float
  %124 = fdiv float %122, %123
  %125 = sitofp i32 %106 to float
  %126 = fmul float %124, %125
  %127 = fptosi float %126 to i32
  br label %128

128:                                              ; preds = %121, %117, %113, %100, %96, %92
  %129 = phi i32 [ 0, %96 ], [ 0, %92 ], [ 1, %100 ], [ 1, %121 ], [ 1, %117 ], [ 1, %113 ]
  %130 = phi i32 [ 0, %96 ], [ 0, %92 ], [ %106, %100 ], [ %127, %121 ], [ %106, %117 ], [ %106, %113 ]
  %131 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 39
  %132 = load ptr, ptr %131, align 8, !tbaa !96
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 25
  %136 = load i16, ptr %135, align 8, !tbaa !333
  %137 = sext i16 %136 to i32
  %138 = tail call double @ldexp(double 1.000000e+00, i32 %137) #17
  br label %148

139:                                              ; preds = %128
  %140 = sitofp i32 %94 to float
  %141 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 30
  %142 = load i16, ptr %141, align 2, !tbaa !210
  %143 = sitofp i16 %142 to float
  %144 = fmul float %140, %143
  %145 = fdiv float %144, 1.000000e+02
  %146 = fptosi float %145 to i32
  %147 = tail call i32 @llvm.smin.i32(i32 %130, i32 %146)
  br label %148

148:                                              ; preds = %139, %134
  %149 = phi double [ %138, %134 ], [ %93, %139 ]
  %150 = phi i32 [ %94, %134 ], [ %146, %139 ]
  %151 = phi i32 [ %130, %134 ], [ %147, %139 ]
  %152 = fptosi double %149 to i32
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %328, label %154

154:                                              ; preds = %148
  %155 = load ptr, ptr %15, align 8, !tbaa !221
  %156 = getelementptr inbounds %struct.ParticleSystem, ptr %155, i64 0, i32 23
  %157 = load i32, ptr %156, align 4, !tbaa !215
  %158 = add nsw i32 %157, 31415926
  %159 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 17
  %160 = load i32, ptr %159, align 8, !tbaa !334
  %161 = icmp ne i32 %160, 0
  %162 = icmp slt i32 %150, 10000
  %163 = or i1 %162, %161
  %164 = select i1 %163, i32 1, i32 %26
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %154
  %167 = zext nneg i32 %164 to i64
  br label %168

168:                                              ; preds = %166, %168
  %169 = phi i64 [ 0, %166 ], [ %173, %168 ]
  %170 = tail call ptr @BLI_rng_new(i32 noundef %158) #17
  %171 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %169, i32 2
  store ptr %170, ptr %171, align 8, !tbaa !335
  %172 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %169, i32 4
  store i32 %164, ptr %172, align 4, !tbaa !327
  %173 = add nuw nsw i64 %169, 1
  %174 = icmp eq i64 %173, %167
  br i1 %174, label %175, label %168, !llvm.loop !336

175:                                              ; preds = %168, %154
  %176 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 18
  store i32 %129, ptr %176, align 4, !tbaa !337
  %177 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 19
  store i32 %152, ptr %177, align 8, !tbaa !338
  %178 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 20
  store i32 %150, ptr %178, align 4, !tbaa !339
  %179 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 21
  store i32 %151, ptr %179, align 8, !tbaa !340
  %180 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 22
  store i32 0, ptr %180, align 4, !tbaa !341
  %181 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 23
  store float %1, ptr %181, align 8, !tbaa !342
  store i32 %2, ptr %159, align 8, !tbaa !334
  %182 = tail call ptr @psys_create_lattice_deform_data(ptr noundef %14)
  %183 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 15
  store ptr %182, ptr %183, align 8, !tbaa !343
  %184 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !217
  %186 = tail call ptr @psys_cache_vgroup(ptr noundef %185, ptr noundef %16, i32 noundef 2)
  %187 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 24
  store ptr %186, ptr %187, align 8, !tbaa !344
  %188 = load ptr, ptr %184, align 8, !tbaa !217
  %189 = tail call ptr @psys_cache_vgroup(ptr noundef %188, ptr noundef %16, i32 noundef 3)
  %190 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 25
  store ptr %189, ptr %190, align 8, !tbaa !345
  %191 = load ptr, ptr %184, align 8, !tbaa !217
  %192 = tail call ptr @psys_cache_vgroup(ptr noundef %191, ptr noundef %16, i32 noundef 4)
  %193 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 26
  store ptr %192, ptr %193, align 8, !tbaa !346
  %194 = load ptr, ptr %184, align 8, !tbaa !217
  %195 = tail call ptr @psys_cache_vgroup(ptr noundef %194, ptr noundef %16, i32 noundef 5)
  %196 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 27
  store ptr %195, ptr %196, align 8, !tbaa !347
  %197 = load ptr, ptr %184, align 8, !tbaa !217
  %198 = tail call ptr @psys_cache_vgroup(ptr noundef %197, ptr noundef %16, i32 noundef 6)
  %199 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 28
  store ptr %198, ptr %199, align 8, !tbaa !348
  %200 = load ptr, ptr %184, align 8, !tbaa !217
  %201 = tail call ptr @psys_cache_vgroup(ptr noundef %200, ptr noundef %16, i32 noundef 7)
  %202 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 29
  store ptr %201, ptr %202, align 8, !tbaa !349
  %203 = load ptr, ptr %17, align 8, !tbaa !49
  %204 = getelementptr inbounds %struct.ParticleSettings, ptr %203, i64 0, i32 5
  %205 = load i32, ptr %204, align 8, !tbaa !54
  %206 = and i32 %205, 134217728
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %175
  %209 = load ptr, ptr %184, align 8, !tbaa !217
  %210 = tail call ptr @psys_cache_vgroup(ptr noundef %209, ptr noundef %16, i32 noundef 11)
  %211 = getelementptr inbounds %struct.ParticleThreadContext, ptr %14, i64 0, i32 30
  store ptr %210, ptr %211, align 8, !tbaa !350
  br label %212

212:                                              ; preds = %175, %208
  br i1 %153, label %328, label %213

213:                                              ; preds = %212
  %214 = load ptr, ptr %12, align 8, !tbaa !324
  %215 = getelementptr inbounds %struct.ParticleThreadContext, ptr %214, i64 0, i32 20
  %216 = load i32, ptr %215, align 4, !tbaa !339
  %217 = getelementptr inbounds %struct.ParticleThreadContext, ptr %214, i64 0, i32 21
  %218 = load i32, ptr %217, align 8, !tbaa !340
  %219 = icmp eq i32 %2, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %213
  %221 = load ptr, ptr %5, align 8, !tbaa !66
  %222 = getelementptr inbounds %struct.ParticleSystem, ptr %221, i64 0, i32 8
  %223 = load ptr, ptr %222, align 8, !tbaa !163
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.ParticleSystem, ptr %221, i64 0, i32 30
  %227 = load i32, ptr %226, align 8, !tbaa !164
  %228 = icmp eq i32 %216, %227
  br i1 %228, label %293, label %229

229:                                              ; preds = %225, %220, %213
  %230 = load ptr, ptr %5, align 8, !tbaa !66
  %231 = getelementptr inbounds %struct.ParticleSystem, ptr %230, i64 0, i32 8
  %232 = load ptr, ptr %231, align 8, !tbaa !163
  %233 = getelementptr inbounds %struct.ParticleSystem, ptr %230, i64 0, i32 10
  %234 = icmp eq ptr %232, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %229
  %236 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %236(ptr noundef nonnull %232) #17
  br label %237

237:                                              ; preds = %235, %229
  %238 = load ptr, ptr %233, align 8, !tbaa !59
  %239 = icmp eq ptr %238, null
  br i1 %239, label %247, label %240

240:                                              ; preds = %237, %240
  %241 = phi ptr [ %245, %240 ], [ %238, %237 ]
  %242 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %243 = getelementptr inbounds %struct.LinkData, ptr %241, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !157
  tail call void %242(ptr noundef %244) #17
  %245 = load ptr, ptr %241, align 8, !tbaa !59
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %240, !llvm.loop !159

247:                                              ; preds = %240, %237
  tail call void @BLI_freelistN(ptr noundef nonnull %233) #17
  store ptr null, ptr %231, align 8, !tbaa !163
  %248 = getelementptr inbounds %struct.ParticleSystem, ptr %230, i64 0, i32 30
  store i32 0, ptr %248, align 8, !tbaa !164
  %249 = load ptr, ptr %5, align 8, !tbaa !66
  %250 = getelementptr inbounds %struct.ParticleSystem, ptr %249, i64 0, i32 10
  %251 = getelementptr inbounds %struct.ParticleThreadContext, ptr %214, i64 0, i32 19
  %252 = load i32, ptr %251, align 8, !tbaa !338
  %253 = add nsw i32 %252, 1
  %254 = tail call i32 @llvm.smax.i32(i32 %216, i32 1)
  %255 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %256 = zext nneg i32 %254 to i64
  %257 = shl nuw nsw i64 %256, 3
  %258 = tail call ptr %255(i64 noundef %257, ptr noundef nonnull @.str.14) #17
  %259 = sext i32 %253 to i64
  %260 = mul nsw i64 %259, 60
  br label %261

261:                                              ; preds = %286, %247
  %262 = phi i32 [ 0, %247 ], [ %287, %286 ]
  %263 = sub i32 %254, %262
  %264 = tail call i32 @llvm.smin.i32(i32 %263, i32 1024)
  %265 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %266 = tail call ptr %265(i64 noundef 24, ptr noundef nonnull @.str.15) #17
  %267 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %268 = sext i32 %264 to i64
  %269 = mul i64 %260, %268
  %270 = tail call ptr %267(i64 noundef %269, ptr noundef nonnull @.str.16) #17
  %271 = getelementptr inbounds %struct.LinkData, ptr %266, i64 0, i32 2
  store ptr %270, ptr %271, align 8, !tbaa !157
  %272 = icmp sgt i32 %263, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %261
  %274 = sext i32 %262 to i64
  %275 = tail call i32 @llvm.smax.i32(i32 %264, i32 1)
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr ptr, ptr %258, i64 %274
  br label %278

278:                                              ; preds = %278, %273
  %279 = phi i64 [ 0, %273 ], [ %284, %278 ]
  %280 = load ptr, ptr %271, align 8, !tbaa !157
  %281 = mul nsw i64 %279, %259
  %282 = getelementptr inbounds %struct.ParticleCacheKey, ptr %280, i64 %281
  %283 = getelementptr ptr, ptr %277, i64 %279
  store ptr %282, ptr %283, align 8, !tbaa !59
  %284 = add nuw nsw i64 %279, 1
  %285 = icmp eq i64 %284, %276
  br i1 %285, label %286, label %278, !llvm.loop !351

286:                                              ; preds = %278, %261
  %287 = add nsw i32 %264, %262
  tail call void @BLI_addtail(ptr noundef nonnull %250, ptr noundef %266) #17
  %288 = icmp slt i32 %287, %254
  br i1 %288, label %261, label %289, !llvm.loop !352

289:                                              ; preds = %286
  %290 = load ptr, ptr %5, align 8, !tbaa !66
  %291 = getelementptr inbounds %struct.ParticleSystem, ptr %290, i64 0, i32 8
  store ptr %258, ptr %291, align 8, !tbaa !163
  %292 = getelementptr inbounds %struct.ParticleSystem, ptr %290, i64 0, i32 30
  store i32 %216, ptr %292, align 8, !tbaa !164
  br label %293

293:                                              ; preds = %225, %289
  %294 = load i32, ptr %25, align 4, !tbaa !327
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %296, label %326

296:                                              ; preds = %293
  %297 = icmp eq i32 %218, 0
  br i1 %297, label %317, label %298

298:                                              ; preds = %296
  call void @BLI_init_threads(ptr noundef nonnull %4, ptr noundef nonnull @exec_child_path_cache, i32 noundef %294) #17
  %299 = zext nneg i32 %294 to i64
  br label %300

300:                                              ; preds = %298, %300
  %301 = phi i64 [ 0, %298 ], [ %305, %300 ]
  %302 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !324
  %304 = getelementptr inbounds %struct.ParticleThreadContext, ptr %303, i64 0, i32 22
  store i32 1, ptr %304, align 4, !tbaa !341
  call void @BLI_insert_thread(ptr noundef nonnull %4, ptr noundef nonnull %302) #17
  %305 = add nuw nsw i64 %301, 1
  %306 = icmp eq i64 %305, %299
  br i1 %306, label %307, label %300, !llvm.loop !353

307:                                              ; preds = %300
  call void @BLI_end_threads(ptr noundef nonnull %4) #17
  %308 = call i32 @llvm.smax.i32(i32 %294, i32 1)
  %309 = zext nneg i32 %308 to i64
  br label %310

310:                                              ; preds = %307, %310
  %311 = phi i64 [ 0, %307 ], [ %315, %310 ]
  %312 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !324
  %314 = getelementptr inbounds %struct.ParticleThreadContext, ptr %313, i64 0, i32 22
  store i32 0, ptr %314, align 4, !tbaa !341
  %315 = add nuw nsw i64 %311, 1
  %316 = icmp eq i64 %315, %309
  br i1 %316, label %317, label %310, !llvm.loop !354

317:                                              ; preds = %310, %296
  call void @BLI_init_threads(ptr noundef nonnull %4, ptr noundef nonnull @exec_child_path_cache, i32 noundef %294) #17
  %318 = call i32 @llvm.smax.i32(i32 %294, i32 1)
  %319 = zext nneg i32 %318 to i64
  br label %320

320:                                              ; preds = %317, %320
  %321 = phi i64 [ 0, %317 ], [ %323, %320 ]
  %322 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %321
  call void @BLI_insert_thread(ptr noundef nonnull %4, ptr noundef nonnull %322) #17
  %323 = add nuw nsw i64 %321, 1
  %324 = icmp eq i64 %323, %319
  br i1 %324, label %325, label %320, !llvm.loop !355

325:                                              ; preds = %320
  call void @BLI_end_threads(ptr noundef nonnull %4) #17
  br label %328

326:                                              ; preds = %293
  %327 = tail call ptr @exec_child_path_cache(ptr noundef nonnull %12)
  br label %328

328:                                              ; preds = %325, %326, %212, %148
  call void @psys_threads_free(ptr noundef nonnull %12) #17
  br label %329

329:                                              ; preds = %328, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

declare ptr @psys_threads_create(ptr noundef) local_unnamed_addr #2

declare void @psys_threads_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @exec_child_path_cache(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x ptr], align 16
  %7 = alloca %struct.ParticleTexture, align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x [3 x float]], align 16
  %14 = alloca [4 x [3 x float]], align 16
  %15 = alloca float, align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x float], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = load ptr, ptr %0, align 8, !tbaa !324
  %21 = getelementptr inbounds %struct.ParticleSimulationData, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !163
  %25 = getelementptr inbounds %struct.ParticleThreadContext, ptr %20, i64 0, i32 20
  %26 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !327
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.ParticleThreadContext, ptr %20, i64 0, i32 22
  %31 = load i32, ptr %30, align 4, !tbaa !341
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleThreadContext, ptr %20, i64 0, i32 21
  %35 = load i32, ptr %34, align 8, !tbaa !340
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi i32 [ %35, %33 ], [ 0, %29 ]
  %38 = getelementptr inbounds %struct.ParticleThreadContext, ptr %20, i64 0, i32 21
  %39 = select i1 %32, ptr %25, ptr %38
  br label %40

40:                                               ; preds = %36, %1
  %41 = phi ptr [ %39, %36 ], [ %25, %1 ]
  %42 = phi i32 [ %37, %36 ], [ 0, %1 ]
  %43 = load i32, ptr %41, align 4, !tbaa !38
  %44 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !356
  %46 = add nsw i32 %45, %42
  %47 = icmp slt i32 %46, %43
  br i1 %47, label %48, label %1001

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !165
  %51 = sext i32 %42 to i64
  %52 = getelementptr inbounds %struct.ChildParticle, ptr %50, i64 %51
  %53 = sext i32 %45 to i64
  %54 = getelementptr inbounds %struct.ChildParticle, ptr %52, i64 %53
  %55 = getelementptr inbounds float, ptr %18, i64 1
  %56 = getelementptr inbounds float, ptr %18, i64 2
  %57 = getelementptr inbounds float, ptr %9, i64 1
  %58 = getelementptr inbounds float, ptr %9, i64 2
  %59 = getelementptr inbounds float, ptr %18, i64 1
  %60 = getelementptr inbounds float, ptr %18, i64 2
  %61 = getelementptr inbounds float, ptr %10, i64 1
  %62 = getelementptr inbounds float, ptr %10, i64 2
  %63 = getelementptr inbounds float, ptr %9, i64 1
  %64 = getelementptr inbounds float, ptr %9, i64 2
  %65 = getelementptr inbounds float, ptr %18, i64 1
  %66 = getelementptr inbounds float, ptr %18, i64 2
  %67 = getelementptr inbounds [4 x float], ptr %5, i64 3
  %68 = getelementptr inbounds float, ptr %3, i64 1
  %69 = getelementptr inbounds [4 x float], ptr %5, i64 3, i64 1
  %70 = getelementptr inbounds float, ptr %3, i64 2
  %71 = getelementptr inbounds [4 x float], ptr %5, i64 3, i64 2
  %72 = getelementptr inbounds float, ptr %19, i64 1
  %73 = getelementptr inbounds float, ptr %19, i64 2
  %74 = getelementptr inbounds float, ptr %9, i64 1
  %75 = getelementptr inbounds float, ptr %9, i64 2
  %76 = getelementptr inbounds float, ptr %19, i64 1
  %77 = getelementptr inbounds float, ptr %19, i64 2
  %78 = getelementptr inbounds float, ptr %10, i64 1
  %79 = getelementptr inbounds float, ptr %10, i64 2
  %80 = getelementptr inbounds float, ptr %9, i64 1
  %81 = getelementptr inbounds float, ptr %9, i64 2
  %82 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %83 = getelementptr inbounds float, ptr %2, i64 1
  %84 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  %85 = getelementptr inbounds float, ptr %2, i64 2
  %86 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  %87 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 3
  %88 = getelementptr inbounds float, ptr %12, i64 1
  %89 = getelementptr inbounds float, ptr %12, i64 2
  %90 = getelementptr inbounds [4 x [3 x float]], ptr %14, i64 0, i64 1
  %91 = getelementptr inbounds [4 x [3 x float]], ptr %14, i64 0, i64 2
  %92 = getelementptr inbounds [4 x [3 x float]], ptr %14, i64 0, i64 3
  %93 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  %94 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  %95 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 3
  %96 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 11
  %97 = getelementptr inbounds float, ptr %16, i64 1
  %98 = getelementptr inbounds float, ptr %16, i64 2
  %99 = getelementptr inbounds float, ptr %12, i64 1
  %100 = getelementptr inbounds float, ptr %12, i64 2
  %101 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 8
  br label %102

102:                                              ; preds = %48, %995
  %103 = phi i32 [ %46, %48 ], [ %997, %995 ]
  %104 = phi ptr [ %54, %48 ], [ %999, %995 ]
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds ptr, ptr %24, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !59
  %108 = load ptr, ptr %0, align 8, !tbaa !324
  %109 = getelementptr inbounds %struct.ParticleSimulationData, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !219
  %111 = getelementptr inbounds %struct.ParticleSimulationData, ptr %108, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !221
  %113 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !49
  %115 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !163
  %117 = load ptr, ptr %108, align 8, !tbaa !357
  %118 = getelementptr inbounds %struct.Scene, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !67
  %120 = icmp eq ptr %119, null
  br i1 %120, label %159, label %121

121:                                              ; preds = %102
  %122 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !87
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 27
  %125 = load i32, ptr %124, align 8, !tbaa !89
  %126 = and i32 %125, 32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %159, label %128

128:                                              ; preds = %121
  %129 = icmp eq ptr %123, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 109
  br label %132

132:                                              ; preds = %136, %130
  %133 = phi ptr [ %131, %130 ], [ %134, %136 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !59
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.ParticleSystem, ptr %134, i64 0, i32 25
  %138 = load i32, ptr %137, align 4, !tbaa !60
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %132, label %141, !llvm.loop !61

141:                                              ; preds = %136, %132, %128
  %142 = phi ptr [ null, %128 ], [ %134, %136 ], [ null, %132 ]
  %143 = icmp eq ptr %142, %112
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !92
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 40
  %150 = load ptr, ptr %149, align 8, !tbaa !93
  %151 = getelementptr inbounds %struct.PointCache, ptr %150, i64 0, i32 21
  %152 = load ptr, ptr %151, align 8, !tbaa !94
  %153 = icmp eq ptr %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %148, %144
  %155 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 39
  %156 = load ptr, ptr %155, align 8, !tbaa !96
  %157 = icmp eq ptr %156, null
  %158 = zext i1 %157 to i32
  br label %159

159:                                              ; preds = %102, %121, %141, %148, %154
  %160 = phi i32 [ 0, %148 ], [ 0, %141 ], [ 0, %121 ], [ 0, %102 ], [ %158, %154 ]
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !92
  %165 = getelementptr inbounds %struct.PTCacheEdit, ptr %164, i64 0, i32 9
  br label %168

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 7
  br label %168

168:                                              ; preds = %166, %162
  %169 = phi ptr [ %165, %162 ], [ %167, %166 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #17
  %171 = icmp eq ptr %170, null
  br i1 %171, label %995, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 18
  %174 = load i32, ptr %173, align 4, !tbaa !337
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !48
  br i1 %175, label %508, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !38
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #17
  %183 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 113
  %184 = load float, ptr %183, align 4, !tbaa !358
  %185 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 114
  %186 = load float, ptr %185, align 8, !tbaa !359
  %187 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 91
  %188 = load float, ptr %187, align 4, !tbaa !317
  %189 = fcmp ogt float %188, 0.000000e+00
  br i1 %189, label %193, label %190

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 112
  %192 = load float, ptr %191, align 8, !tbaa !360
  br label %193

193:                                              ; preds = %190, %178
  %194 = phi float [ %192, %190 ], [ 0.000000e+00, %178 ]
  %195 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 17
  %196 = load i32, ptr %195, align 8, !tbaa !334
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %223, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 5
  br label %203

200:                                              ; preds = %208
  %201 = add nuw nsw i64 %204, 1
  %202 = icmp eq i64 %201, 4
  br i1 %202, label %504, label %203, !llvm.loop !361

203:                                              ; preds = %198, %200
  %204 = phi i64 [ 0, %198 ], [ %201, %200 ]
  %205 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 2, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !38
  %207 = icmp sgt i32 %206, -1
  br i1 %207, label %208, label %504

208:                                              ; preds = %203
  %209 = load ptr, ptr %199, align 8, !tbaa !92
  %210 = getelementptr inbounds %struct.PTCacheEdit, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !362
  %212 = zext nneg i32 %206 to i64
  %213 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %211, i64 %212, i32 2
  %214 = load i16, ptr %213, align 4, !tbaa !363
  %215 = and i16 %214, 2
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %200, label %217

217:                                              ; preds = %208
  %218 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 19
  %219 = load i32, ptr %218, align 8, !tbaa !338
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, 60
  call void @llvm.memset.p0.i64(ptr align 4 %107, i8 0, i64 %222, i1 false)
  br label %223

223:                                              ; preds = %217, %193
  br label %224

224:                                              ; preds = %223, %239
  %225 = phi i64 [ %242, %239 ], [ 0, %223 ]
  %226 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 2, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !38
  %228 = icmp sgt i32 %227, -1
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = zext nneg i32 %227 to i64
  %231 = getelementptr inbounds ptr, ptr %170, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !59
  %233 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %225
  store ptr %232, ptr %233, align 8, !tbaa !59
  %234 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 3, i64 %225
  %235 = load float, ptr %234, align 4, !tbaa !34
  br label %239

236:                                              ; preds = %224
  %237 = load ptr, ptr %170, align 8, !tbaa !59
  %238 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %225
  store ptr %237, ptr %238, align 8, !tbaa !59
  br label %239

239:                                              ; preds = %236, %229
  %240 = phi float [ 0.000000e+00, %236 ], [ %235, %229 ]
  %241 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %225
  store float %240, ptr %241, align 4, !tbaa !34
  %242 = add nuw nsw i64 %225, 1
  %243 = icmp eq i64 %242, 4
  br i1 %243, label %244, label %224, !llvm.loop !365

244:                                              ; preds = %239
  %245 = fcmp ogt float %194, 0.000000e+00
  br i1 %245, label %246, label %428

246:                                              ; preds = %244
  %247 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 5
  %248 = load ptr, ptr %6, align 16
  %249 = getelementptr inbounds float, ptr %248, i64 1
  %250 = getelementptr inbounds float, ptr %248, i64 2
  %251 = getelementptr inbounds %struct.ParticleCacheKey, ptr %248, i64 0, i32 5
  %252 = getelementptr inbounds %struct.ParticleCacheKey, ptr %248, i64 0, i32 5
  %253 = getelementptr inbounds float, ptr %248, i64 1
  %254 = getelementptr inbounds float, ptr %248, i64 2
  %255 = fcmp ogt float %186, %184
  %256 = fsub float %186, %184
  br label %257

257:                                              ; preds = %246, %413
  %258 = phi i64 [ 0, %246 ], [ %417, %413 ]
  %259 = phi float [ 0.000000e+00, %246 ], [ %416, %413 ]
  %260 = icmp eq i64 %258, 0
  br i1 %260, label %413, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %258
  %263 = load float, ptr %262, align 4, !tbaa !34
  %264 = fcmp ogt float %263, 0.000000e+00
  br i1 %264, label %265, label %413

265:                                              ; preds = %261
  %266 = load i32, ptr %247, align 8, !tbaa !54
  %267 = and i32 %266, 268435456
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %317, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %258
  %271 = load ptr, ptr %270, align 8, !tbaa !59
  %272 = load float, ptr %271, align 4, !tbaa !34
  %273 = load float, ptr %248, align 4, !tbaa !34
  %274 = fsub float %272, %273
  %275 = getelementptr inbounds float, ptr %271, i64 1
  %276 = load float, ptr %275, align 4, !tbaa !34
  %277 = load float, ptr %249, align 4, !tbaa !34
  %278 = fsub float %276, %277
  %279 = getelementptr inbounds float, ptr %271, i64 2
  %280 = load float, ptr %279, align 4, !tbaa !34
  %281 = load float, ptr %250, align 4, !tbaa !34
  %282 = fsub float %280, %281
  %283 = fmul float %278, %278
  %284 = call float @llvm.fmuladd.f32(float %274, float %274, float %283)
  %285 = call float @llvm.fmuladd.f32(float %282, float %282, float %284)
  %286 = call float @sqrtf(float noundef %285) #17
  %287 = load i32, ptr %251, align 4, !tbaa !366
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ParticleCacheKey, ptr %248, i64 %288
  %290 = getelementptr inbounds %struct.ParticleCacheKey, ptr %289, i64 -1
  %291 = getelementptr inbounds %struct.ParticleCacheKey, ptr %271, i64 0, i32 5
  %292 = load i32, ptr %291, align 4, !tbaa !366
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.ParticleCacheKey, ptr %271, i64 %293
  %295 = getelementptr inbounds %struct.ParticleCacheKey, ptr %294, i64 -1
  %296 = load float, ptr %295, align 4, !tbaa !34
  %297 = load float, ptr %290, align 4, !tbaa !34
  %298 = fsub float %296, %297
  %299 = getelementptr %struct.ParticleCacheKey, ptr %294, i64 -1, i32 0, i64 1
  %300 = load float, ptr %299, align 4, !tbaa !34
  %301 = getelementptr %struct.ParticleCacheKey, ptr %289, i64 -1, i32 0, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !34
  %303 = fsub float %300, %302
  %304 = getelementptr %struct.ParticleCacheKey, ptr %294, i64 -1, i32 0, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !34
  %306 = getelementptr %struct.ParticleCacheKey, ptr %289, i64 -1, i32 0, i64 2
  %307 = load float, ptr %306, align 4, !tbaa !34
  %308 = fsub float %305, %307
  %309 = fmul float %303, %303
  %310 = call float @llvm.fmuladd.f32(float %298, float %298, float %309)
  %311 = call float @llvm.fmuladd.f32(float %308, float %308, float %310)
  %312 = call float @sqrtf(float noundef %311) #17
  %313 = fcmp ogt float %286, 0.000000e+00
  %314 = fdiv float %312, %286
  %315 = fadd float %314, -1.000000e+00
  %316 = select i1 %313, float %315, float 1.000000e+04
  br label %392

317:                                              ; preds = %265
  %318 = load i32, ptr %252, align 4, !tbaa !366
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.ParticleCacheKey, ptr %248, i64 %319
  %321 = getelementptr inbounds %struct.ParticleCacheKey, ptr %320, i64 -1
  %322 = load float, ptr %321, align 4, !tbaa !34
  %323 = load float, ptr %248, align 4, !tbaa !34
  %324 = fsub float %322, %323
  %325 = getelementptr %struct.ParticleCacheKey, ptr %320, i64 -1, i32 0, i64 1
  %326 = load float, ptr %325, align 4, !tbaa !34
  %327 = load float, ptr %253, align 4, !tbaa !34
  %328 = fsub float %326, %327
  %329 = getelementptr %struct.ParticleCacheKey, ptr %320, i64 -1, i32 0, i64 2
  %330 = load float, ptr %329, align 4, !tbaa !34
  %331 = load float, ptr %254, align 4, !tbaa !34
  %332 = fsub float %330, %331
  %333 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %258
  %334 = load ptr, ptr %333, align 8, !tbaa !59
  %335 = getelementptr inbounds %struct.ParticleCacheKey, ptr %334, i64 0, i32 5
  %336 = load i32, ptr %335, align 4, !tbaa !366
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.ParticleCacheKey, ptr %334, i64 %337
  %339 = getelementptr inbounds %struct.ParticleCacheKey, ptr %338, i64 -1
  %340 = load float, ptr %339, align 4, !tbaa !34
  %341 = load float, ptr %334, align 4, !tbaa !34
  %342 = fsub float %340, %341
  %343 = getelementptr %struct.ParticleCacheKey, ptr %338, i64 -1, i32 0, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !34
  %345 = getelementptr inbounds float, ptr %334, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !34
  %347 = fsub float %344, %346
  %348 = getelementptr %struct.ParticleCacheKey, ptr %338, i64 -1, i32 0, i64 2
  %349 = load float, ptr %348, align 4, !tbaa !34
  %350 = getelementptr inbounds float, ptr %334, i64 2
  %351 = load float, ptr %350, align 4, !tbaa !34
  %352 = fsub float %349, %351
  %353 = fmul float %328, %328
  %354 = call float @llvm.fmuladd.f32(float %324, float %324, float %353)
  %355 = call float @llvm.fmuladd.f32(float %332, float %332, float %354)
  %356 = fcmp ogt float %355, 0x38AA95A5C0000000
  br i1 %356, label %357, label %363

357:                                              ; preds = %317
  %358 = call float @sqrtf(float noundef %355) #17
  %359 = fdiv float 1.000000e+00, %358
  %360 = fmul float %324, %359
  %361 = fmul float %328, %359
  %362 = fmul float %332, %359
  br label %363

363:                                              ; preds = %357, %317
  %364 = phi float [ %361, %357 ], [ 0.000000e+00, %317 ]
  %365 = phi float [ %360, %357 ], [ 0.000000e+00, %317 ]
  %366 = phi float [ %362, %357 ], [ 0.000000e+00, %317 ]
  %367 = fmul float %347, %347
  %368 = call float @llvm.fmuladd.f32(float %342, float %342, float %367)
  %369 = call float @llvm.fmuladd.f32(float %352, float %352, float %368)
  %370 = fcmp ogt float %369, 0x38AA95A5C0000000
  br i1 %370, label %371, label %377

371:                                              ; preds = %363
  %372 = call float @sqrtf(float noundef %369) #17
  %373 = fdiv float 1.000000e+00, %372
  %374 = fmul float %342, %373
  %375 = fmul float %347, %373
  %376 = fmul float %352, %373
  br label %377

377:                                              ; preds = %371, %363
  %378 = phi float [ %375, %371 ], [ 0.000000e+00, %363 ]
  %379 = phi float [ %374, %371 ], [ 0.000000e+00, %363 ]
  %380 = phi float [ %376, %371 ], [ 0.000000e+00, %363 ]
  %381 = fmul float %364, %378
  %382 = call float @llvm.fmuladd.f32(float %365, float %379, float %381)
  %383 = call float @llvm.fmuladd.f32(float %366, float %380, float %382)
  %384 = fcmp ugt float %383, -1.000000e+00
  br i1 %384, label %385, label %389

385:                                              ; preds = %377
  %386 = fcmp ult float %383, 1.000000e+00
  br i1 %386, label %387, label %389

387:                                              ; preds = %385
  %388 = call float @acosf(float noundef %383) #17
  br label %389

389:                                              ; preds = %387, %385, %377
  %390 = phi float [ %388, %387 ], [ 0x400921FB60000000, %377 ], [ 0.000000e+00, %385 ]
  %391 = fmul float %390, 0x404CA5DC20000000
  br label %392

392:                                              ; preds = %389, %269
  %393 = phi float [ %316, %269 ], [ %391, %389 ]
  %394 = fsub float %393, %184
  br i1 %255, label %395, label %397

395:                                              ; preds = %392
  %396 = fdiv float %394, %256
  br label %400

397:                                              ; preds = %392
  %398 = fcmp ole float %394, 0.000000e+00
  %399 = select i1 %398, float 0.000000e+00, float 1.000000e+00
  br label %400

400:                                              ; preds = %397, %395
  %401 = phi float [ %396, %395 ], [ %399, %397 ]
  %402 = fcmp olt float %401, 0.000000e+00
  br i1 %402, label %406, label %403

403:                                              ; preds = %400
  %404 = fcmp ogt float %401, 1.000000e+00
  br i1 %404, label %405, label %406

405:                                              ; preds = %403
  br label %406

406:                                              ; preds = %405, %403, %400
  %407 = phi float [ 1.000000e+00, %405 ], [ %401, %403 ], [ 0.000000e+00, %400 ]
  %408 = fcmp ogt float %407, 0.000000e+00
  br i1 %408, label %409, label %413

409:                                              ; preds = %406
  %410 = fsub float 1.000000e+00, %407
  %411 = load float, ptr %262, align 4, !tbaa !34
  %412 = fmul float %410, %411
  store float %412, ptr %262, align 4, !tbaa !34
  br label %413

413:                                              ; preds = %409, %406, %261, %257
  %414 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %258
  %415 = load float, ptr %414, align 4, !tbaa !34
  %416 = fadd float %259, %415
  %417 = add nuw nsw i64 %258, 1
  %418 = icmp eq i64 %417, 4
  br i1 %418, label %419, label %257, !llvm.loop !368

419:                                              ; preds = %413, %419
  %420 = phi i64 [ %424, %419 ], [ 0, %413 ]
  %421 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %420
  %422 = load float, ptr %421, align 4, !tbaa !34
  %423 = fdiv float %422, %416
  store float %423, ptr %421, align 4, !tbaa !34
  %424 = add nuw nsw i64 %420, 1
  %425 = icmp eq i64 %424, 4
  br i1 %425, label %426, label %419, !llvm.loop !369

426:                                              ; preds = %419
  %427 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 3
  call void @interp_v4_v4v4(ptr noundef nonnull %17, ptr noundef nonnull %427, ptr noundef nonnull %17, float noundef %194) #17
  br label %428

428:                                              ; preds = %426, %244
  %429 = load i32, ptr %104, align 4, !tbaa !259
  %430 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 5
  %431 = load float, ptr %430, align 4, !tbaa !320
  %432 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 4
  %433 = getelementptr inbounds %struct.ParticleSimulationData, ptr %108, i64 0, i32 3
  %434 = load ptr, ptr %433, align 8, !tbaa !370
  %435 = icmp eq ptr %434, null
  br i1 %435, label %459, label %436

436:                                              ; preds = %428
  %437 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %434, i64 0, i32 2
  %438 = load ptr, ptr %437, align 8, !tbaa !199
  %439 = icmp eq ptr %438, null
  br i1 %439, label %459, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %434, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !100
  %443 = getelementptr inbounds %struct.ParticleSystem, ptr %442, i64 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !49
  %445 = getelementptr inbounds %struct.ParticleSettings, ptr %444, i64 0, i32 9
  %446 = load i16, ptr %445, align 4, !tbaa !283
  %447 = icmp eq i16 %446, 2
  br i1 %447, label %448, label %458

448:                                              ; preds = %440
  %449 = getelementptr inbounds %struct.ParticleSettings, ptr %444, i64 0, i32 8
  %450 = load i16, ptr %449, align 2, !tbaa !284
  %451 = icmp eq i16 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %448
  %453 = load float, ptr %432, align 4, !tbaa !34
  store float %453, ptr %18, align 4, !tbaa !34
  %454 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 4, i64 1
  %455 = load float, ptr %454, align 4, !tbaa !34
  store float %455, ptr %55, align 4, !tbaa !34
  %456 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 4, i64 2
  %457 = load float, ptr %456, align 4, !tbaa !34
  store float %457, ptr %56, align 4, !tbaa !34
  store float %453, ptr %9, align 4, !tbaa !34
  store float %455, ptr %57, align 4, !tbaa !34
  store float %457, ptr %58, align 4, !tbaa !34
  br label %460

458:                                              ; preds = %448, %440
  call void @psys_particle_on_dm(ptr noundef nonnull %438, i32 noundef 1, i32 noundef %429, i32 noundef -2, ptr noundef nonnull %432, float noundef %431, ptr noundef nonnull %18, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null)
  br label %460

459:                                              ; preds = %436, %428
  store float 0.000000e+00, ptr %18, align 4, !tbaa !34
  store float 0.000000e+00, ptr %59, align 4, !tbaa !34
  store float 0.000000e+00, ptr %60, align 4, !tbaa !34
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %61, align 4, !tbaa !34
  store float 0.000000e+00, ptr %62, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %63, align 4, !tbaa !34
  store float 0.000000e+00, ptr %64, align 4, !tbaa !34
  br label %460

460:                                              ; preds = %452, %458, %459
  %461 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %461, ptr noundef nonnull %18) #17
  %462 = load float, ptr %18, align 4, !tbaa !34
  %463 = load float, ptr %65, align 4, !tbaa !34
  %464 = load float, ptr %66, align 4, !tbaa !34
  br label %465

465:                                              ; preds = %460, %465
  %466 = phi i64 [ 0, %460 ], [ %480, %465 ]
  %467 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 %466
  %468 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %466
  %469 = load ptr, ptr %468, align 8, !tbaa !59
  %470 = load float, ptr %469, align 4, !tbaa !34
  %471 = fsub float %462, %470
  store float %471, ptr %467, align 4, !tbaa !34
  %472 = getelementptr inbounds float, ptr %469, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !34
  %474 = fsub float %463, %473
  %475 = getelementptr inbounds float, ptr %467, i64 1
  store float %474, ptr %475, align 4, !tbaa !34
  %476 = getelementptr inbounds float, ptr %469, i64 2
  %477 = load float, ptr %476, align 4, !tbaa !34
  %478 = fsub float %464, %477
  %479 = getelementptr inbounds float, ptr %467, i64 2
  store float %478, ptr %479, align 4, !tbaa !34
  %480 = add nuw nsw i64 %466, 1
  %481 = icmp eq i64 %480, 4
  br i1 %481, label %482, label %465, !llvm.loop !371

482:                                              ; preds = %465
  %483 = load ptr, ptr %433, align 8, !tbaa !370
  %484 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %483, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !199
  %486 = load ptr, ptr %113, align 8, !tbaa !49
  %487 = getelementptr inbounds %struct.ParticleSettings, ptr %486, i64 0, i32 8
  %488 = load i16, ptr %487, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %489 = icmp eq ptr %485, null
  br i1 %489, label %490, label %491

490:                                              ; preds = %482
  call void @unit_m4(ptr noundef nonnull %5) #17
  br label %503

491:                                              ; preds = %482
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %485, ptr noundef %182, ptr noundef nonnull %5, i32 noundef 0)
  %492 = sext i16 %488 to i32
  %493 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %181, i32 9
  %494 = load i32, ptr %493, align 8, !tbaa !281
  %495 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %181, i32 10
  %496 = load i32, ptr %495, align 4, !tbaa !282
  %497 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %181, i32 11
  %498 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %181, i32 12
  %499 = load float, ptr %498, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %485, i32 noundef %492, i32 noundef %494, i32 noundef %496, ptr noundef nonnull %497, float noundef %499, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %500 = load float, ptr %3, align 4, !tbaa !34
  store float %500, ptr %67, align 16, !tbaa !34
  %501 = load float, ptr %68, align 4, !tbaa !34
  store float %501, ptr %69, align 4, !tbaa !34
  %502 = load float, ptr %70, align 4, !tbaa !34
  store float %502, ptr %71, align 8, !tbaa !34
  br label %503

503:                                              ; preds = %490, %491
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %461, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %504

504:                                              ; preds = %203, %200, %503
  %505 = phi i1 [ true, %503 ], [ false, %200 ], [ false, %203 ]
  %506 = phi i32 [ %429, %503 ], [ undef, %200 ], [ undef, %203 ]
  %507 = phi ptr [ %432, %503 ], [ null, %200 ], [ null, %203 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #17
  br i1 %505, label %612, label %995

508:                                              ; preds = %172
  %509 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 1
  %510 = load i32, ptr %509, align 4, !tbaa !322
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #17
  %513 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 17
  %514 = load i32, ptr %513, align 8, !tbaa !334
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %533, label %516

516:                                              ; preds = %508
  %517 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 5
  %518 = load ptr, ptr %517, align 8, !tbaa !92
  %519 = getelementptr inbounds %struct.PTCacheEdit, ptr %518, i64 0, i32 2
  %520 = load ptr, ptr %519, align 8, !tbaa !362
  %521 = load i32, ptr %509, align 4, !tbaa !322
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %520, i64 %522, i32 2
  %524 = load i16, ptr %523, align 4, !tbaa !363
  %525 = and i16 %524, 2
  %526 = icmp eq i16 %525, 0
  br i1 %526, label %607, label %527

527:                                              ; preds = %516
  %528 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 19
  %529 = load i32, ptr %528, align 8, !tbaa !338
  %530 = add nsw i32 %529, 1
  %531 = sext i32 %530 to i64
  %532 = mul nsw i64 %531, 60
  call void @llvm.memset.p0.i64(ptr align 4 %107, i8 0, i64 %532, i1 false)
  br label %533

533:                                              ; preds = %527, %508
  %534 = load i32, ptr %509, align 4, !tbaa !322
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds ptr, ptr %170, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !59
  store ptr %537, ptr %6, align 16, !tbaa !59
  %538 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 8
  %539 = load i16, ptr %538, align 2, !tbaa !284
  %540 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511, i32 9
  %541 = load i32, ptr %540, align 8, !tbaa !281
  %542 = getelementptr inbounds %struct.ParticleSimulationData, ptr %108, i64 0, i32 3
  %543 = load ptr, ptr %542, align 8, !tbaa !370
  %544 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %543, i64 0, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !199
  %546 = getelementptr inbounds %struct.DerivedMesh, ptr %545, i64 0, i32 25
  %547 = load ptr, ptr %546, align 8, !tbaa !226
  %548 = call i32 %547(ptr noundef %545) #17
  %549 = icmp sgt i32 %541, %548
  %550 = select i1 %549, i32 0, i32 %541
  %551 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511, i32 11
  %552 = load ptr, ptr %542, align 8, !tbaa !370
  %553 = sext i16 %539 to i32
  %554 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511, i32 12
  %555 = load float, ptr %554, align 8, !tbaa !286
  %556 = icmp eq ptr %552, null
  br i1 %556, label %583, label %557

557:                                              ; preds = %533
  %558 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %552, i64 0, i32 2
  %559 = load ptr, ptr %558, align 8, !tbaa !199
  %560 = icmp eq ptr %559, null
  br i1 %560, label %583, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %552, i64 0, i32 1
  %563 = load ptr, ptr %562, align 8, !tbaa !100
  %564 = getelementptr inbounds %struct.ParticleSystem, ptr %563, i64 0, i32 2
  %565 = load ptr, ptr %564, align 8, !tbaa !49
  %566 = getelementptr inbounds %struct.ParticleSettings, ptr %565, i64 0, i32 9
  %567 = load i16, ptr %566, align 4, !tbaa !283
  %568 = icmp eq i16 %567, 2
  br i1 %568, label %569, label %582

569:                                              ; preds = %561
  %570 = getelementptr inbounds %struct.ParticleSettings, ptr %565, i64 0, i32 8
  %571 = load i16, ptr %570, align 2, !tbaa !284
  %572 = icmp eq i16 %571, 0
  br i1 %572, label %582, label %573

573:                                              ; preds = %569
  %574 = load float, ptr %551, align 4, !tbaa !34
  store float %574, ptr %19, align 4, !tbaa !34
  %575 = getelementptr inbounds float, ptr %551, i64 1
  %576 = load float, ptr %575, align 4, !tbaa !34
  store float %576, ptr %72, align 4, !tbaa !34
  %577 = getelementptr inbounds float, ptr %551, i64 2
  %578 = load float, ptr %577, align 4, !tbaa !34
  store float %578, ptr %73, align 4, !tbaa !34
  %579 = load float, ptr %551, align 4, !tbaa !34
  store float %579, ptr %9, align 4, !tbaa !34
  %580 = load float, ptr %575, align 4, !tbaa !34
  store float %580, ptr %74, align 4, !tbaa !34
  %581 = load float, ptr %577, align 4, !tbaa !34
  store float %581, ptr %75, align 4, !tbaa !34
  br label %584

582:                                              ; preds = %569, %561
  call void @psys_particle_on_dm(ptr noundef nonnull %559, i32 noundef %553, i32 noundef %550, i32 noundef -2, ptr noundef nonnull %551, float noundef %555, ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null)
  br label %584

583:                                              ; preds = %557, %533
  store float 0.000000e+00, ptr %19, align 4, !tbaa !34
  store float 0.000000e+00, ptr %76, align 4, !tbaa !34
  store float 0.000000e+00, ptr %77, align 4, !tbaa !34
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %78, align 4, !tbaa !34
  store float 0.000000e+00, ptr %79, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %80, align 4, !tbaa !34
  store float 0.000000e+00, ptr %81, align 4, !tbaa !34
  br label %584

584:                                              ; preds = %573, %582, %583
  %585 = load ptr, ptr %542, align 8, !tbaa !370
  %586 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %585, i64 0, i32 2
  %587 = load ptr, ptr %586, align 8, !tbaa !199
  %588 = load ptr, ptr %113, align 8, !tbaa !49
  %589 = getelementptr inbounds %struct.ParticleSettings, ptr %588, i64 0, i32 8
  %590 = load i16, ptr %589, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  %591 = icmp eq ptr %587, null
  br i1 %591, label %592, label %593

592:                                              ; preds = %584
  call void @unit_m4(ptr noundef nonnull %4) #17
  br label %605

593:                                              ; preds = %584
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %587, ptr noundef %512, ptr noundef nonnull %4, i32 noundef 0)
  %594 = sext i16 %590 to i32
  %595 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511, i32 9
  %596 = load i32, ptr %595, align 8, !tbaa !281
  %597 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511, i32 10
  %598 = load i32, ptr %597, align 4, !tbaa !282
  %599 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511, i32 11
  %600 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %511, i32 12
  %601 = load float, ptr %600, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %587, i32 noundef %594, i32 noundef %596, i32 noundef %598, ptr noundef nonnull %599, float noundef %601, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %602 = load float, ptr %2, align 4, !tbaa !34
  store float %602, ptr %82, align 16, !tbaa !34
  %603 = load float, ptr %83, align 4, !tbaa !34
  store float %603, ptr %84, align 4, !tbaa !34
  %604 = load float, ptr %85, align 4, !tbaa !34
  store float %604, ptr %86, align 8, !tbaa !34
  br label %605

605:                                              ; preds = %592, %593
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  %606 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %606, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %607

607:                                              ; preds = %605, %516
  %608 = phi i1 [ true, %605 ], [ false, %516 ]
  %609 = phi i16 [ %539, %605 ], [ undef, %516 ]
  %610 = phi i32 [ %550, %605 ], [ undef, %516 ]
  %611 = phi ptr [ %551, %605 ], [ null, %516 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  br i1 %608, label %612, label %995

612:                                              ; preds = %607, %504
  %613 = phi i16 [ 1, %504 ], [ %609, %607 ]
  %614 = phi i32 [ %506, %504 ], [ %610, %607 ]
  %615 = phi ptr [ %507, %504 ], [ %611, %607 ]
  %616 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 19
  %617 = load i32, ptr %616, align 8, !tbaa !338
  %618 = getelementptr inbounds %struct.ParticleCacheKey, ptr %107, i64 0, i32 5
  store i32 %617, ptr %618, align 4, !tbaa !366
  call fastcc void @get_child_modifier_parameters(ptr noundef %114, ptr noundef nonnull %108, ptr noundef %104, i16 noundef signext %613, i32 noundef %614, ptr noundef %615, ptr noundef nonnull %9, ptr noundef nonnull %7)
  %619 = load float, ptr %87, align 4, !tbaa !372
  %620 = add nsw i32 %103, 24
  %621 = getelementptr inbounds %struct.ParticleSystem, ptr %112, i64 0, i32 23
  %622 = load i32, ptr %621, align 4, !tbaa !215
  %623 = srem i32 %622, 1024
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !38
  %627 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %624
  %628 = load i32, ptr %627, align 4, !tbaa !38
  %629 = mul i32 %628, %620
  %630 = add i32 %629, %626
  %631 = and i32 %630, 1023
  %632 = zext nneg i32 %631 to i64
  %633 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %632
  %634 = load float, ptr %633, align 4, !tbaa !34
  %635 = fcmp olt float %619, %634
  br i1 %635, label %994, label %636

636:                                              ; preds = %612
  %637 = load i32, ptr %616, align 8, !tbaa !338
  %638 = icmp slt i32 %637, 0
  br i1 %638, label %779, label %639

639:                                              ; preds = %636
  %640 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 5
  %641 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 95
  %642 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 94
  %643 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 4
  %644 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 4, i64 1
  %645 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 4, i64 2
  br label %646

646:                                              ; preds = %639, %766
  %647 = phi i64 [ 0, %639 ], [ %774, %766 ]
  %648 = phi ptr [ %107, %639 ], [ %775, %766 ]
  %649 = phi ptr [ null, %639 ], [ %767, %766 ]
  %650 = load i32, ptr %173, align 4, !tbaa !337
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %722, label %652

652:                                              ; preds = %646
  %653 = getelementptr inbounds %struct.ParticleCacheKey, ptr %648, i64 0, i32 1
  %654 = getelementptr inbounds %struct.ParticleCacheKey, ptr %648, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %648, i8 0, i64 24, i1 false)
  call void @unit_qt(ptr noundef nonnull %654) #17
  %655 = icmp eq i64 %647, 0
  %656 = trunc i64 %647 to i32
  %657 = sitofp i32 %656 to float
  %658 = fneg float %657
  br label %659

659:                                              ; preds = %652, %694
  %660 = phi i64 [ 0, %652 ], [ %709, %694 ]
  %661 = getelementptr inbounds [4 x [3 x float]], ptr %14, i64 0, i64 %660
  %662 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 %660
  %663 = load float, ptr %662, align 4, !tbaa !34
  store float %663, ptr %661, align 4, !tbaa !34
  %664 = getelementptr inbounds float, ptr %662, i64 1
  %665 = load float, ptr %664, align 4, !tbaa !34
  %666 = getelementptr inbounds float, ptr %661, i64 1
  store float %665, ptr %666, align 4, !tbaa !34
  %667 = getelementptr inbounds float, ptr %662, i64 2
  %668 = load float, ptr %667, align 4, !tbaa !34
  %669 = getelementptr inbounds float, ptr %661, i64 2
  store float %668, ptr %669, align 4, !tbaa !34
  %670 = load i32, ptr %640, align 8, !tbaa !54
  %671 = and i32 %670, 268435456
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %694, label %673

673:                                              ; preds = %659
  br i1 %655, label %678, label %674

674:                                              ; preds = %673
  %675 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %660
  %676 = load ptr, ptr %675, align 8, !tbaa !59
  %677 = getelementptr inbounds %struct.ParticleCacheKey, ptr %676, i64 %647, i32 2
  call void @mul_qt_v3(ptr noundef nonnull %677, ptr noundef nonnull %661) #17
  br label %678

678:                                              ; preds = %674, %673
  %679 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %660
  %680 = load ptr, ptr %679, align 8, !tbaa !59
  %681 = getelementptr inbounds %struct.ParticleCacheKey, ptr %680, i64 %647, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %661, ptr noundef nonnull %681) #17
  %682 = load i32, ptr %616, align 8, !tbaa !338
  %683 = sitofp i32 %682 to float
  %684 = fdiv float %658, %683
  %685 = load float, ptr %12, align 4, !tbaa !34
  %686 = load float, ptr %661, align 4, !tbaa !34
  %687 = call float @llvm.fmuladd.f32(float %685, float %684, float %686)
  store float %687, ptr %661, align 4, !tbaa !34
  %688 = load float, ptr %88, align 4, !tbaa !34
  %689 = load float, ptr %666, align 4, !tbaa !34
  %690 = call float @llvm.fmuladd.f32(float %688, float %684, float %689)
  store float %690, ptr %666, align 4, !tbaa !34
  %691 = load float, ptr %89, align 4, !tbaa !34
  %692 = load float, ptr %669, align 4, !tbaa !34
  %693 = call float @llvm.fmuladd.f32(float %691, float %684, float %692)
  store float %693, ptr %669, align 4, !tbaa !34
  br label %694

694:                                              ; preds = %678, %659
  %695 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %660
  %696 = load ptr, ptr %695, align 8, !tbaa !59
  %697 = getelementptr inbounds %struct.ParticleCacheKey, ptr %696, i64 %647
  %698 = load float, ptr %697, align 4, !tbaa !34
  %699 = load float, ptr %661, align 4, !tbaa !34
  %700 = fadd float %698, %699
  store float %700, ptr %661, align 4, !tbaa !34
  %701 = getelementptr inbounds float, ptr %697, i64 1
  %702 = load float, ptr %701, align 4, !tbaa !34
  %703 = load float, ptr %666, align 4, !tbaa !34
  %704 = fadd float %702, %703
  store float %704, ptr %666, align 4, !tbaa !34
  %705 = getelementptr inbounds float, ptr %697, i64 2
  %706 = load float, ptr %705, align 4, !tbaa !34
  %707 = load float, ptr %669, align 4, !tbaa !34
  %708 = fadd float %706, %707
  store float %708, ptr %669, align 4, !tbaa !34
  %709 = add nuw nsw i64 %660, 1
  %710 = icmp eq i64 %709, 4
  br i1 %710, label %711, label %659, !llvm.loop !374

711:                                              ; preds = %694
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %648, ptr noundef nonnull %14, ptr noundef nonnull %90, ptr noundef nonnull %91, ptr noundef nonnull %92, ptr noundef nonnull %17) #17
  %712 = load ptr, ptr %6, align 16, !tbaa !59
  %713 = getelementptr inbounds %struct.ParticleCacheKey, ptr %712, i64 %647, i32 1
  %714 = load ptr, ptr %93, align 8, !tbaa !59
  %715 = getelementptr inbounds %struct.ParticleCacheKey, ptr %714, i64 %647, i32 1
  %716 = load ptr, ptr %94, align 16, !tbaa !59
  %717 = getelementptr inbounds %struct.ParticleCacheKey, ptr %716, i64 %647, i32 1
  %718 = load ptr, ptr %95, align 8, !tbaa !59
  %719 = getelementptr inbounds %struct.ParticleCacheKey, ptr %718, i64 %647, i32 1
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %653, ptr noundef nonnull %713, ptr noundef nonnull %715, ptr noundef nonnull %717, ptr noundef nonnull %719, ptr noundef nonnull %17) #17
  %720 = load ptr, ptr %6, align 16, !tbaa !59
  %721 = getelementptr inbounds %struct.ParticleCacheKey, ptr %720, i64 %647, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %654, ptr noundef nonnull %721) #17
  br label %766

722:                                              ; preds = %646
  %723 = icmp eq i64 %647, 0
  %724 = load ptr, ptr %6, align 16, !tbaa !59
  br i1 %723, label %728, label %725

725:                                              ; preds = %722
  %726 = getelementptr inbounds %struct.ParticleCacheKey, ptr %724, i64 %647, i32 2
  %727 = getelementptr inbounds %struct.ParticleCacheKey, ptr %724, i64 0, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %8, ptr noundef nonnull %726, ptr noundef nonnull %727) #17
  br label %730

728:                                              ; preds = %722
  %729 = getelementptr inbounds %struct.ParticleCacheKey, ptr %724, i64 0, i32 2
  br label %730

730:                                              ; preds = %728, %725
  %731 = phi ptr [ %8, %725 ], [ %729, %728 ]
  %732 = load ptr, ptr %6, align 16, !tbaa !59
  %733 = getelementptr inbounds %struct.ParticleCacheKey, ptr %732, i64 %647
  %734 = load float, ptr %641, align 4, !tbaa !375
  %735 = load float, ptr %642, align 8, !tbaa !376
  %736 = load float, ptr %643, align 4, !tbaa !34
  store float %736, ptr %648, align 4, !tbaa !34
  %737 = load float, ptr %644, align 4, !tbaa !34
  %738 = getelementptr inbounds float, ptr %648, i64 1
  store float %737, ptr %738, align 4, !tbaa !34
  %739 = load float, ptr %645, align 4, !tbaa !34
  %740 = getelementptr inbounds float, ptr %648, i64 2
  store float %739, ptr %740, align 4, !tbaa !34
  %741 = fmul float %735, %736
  store float %741, ptr %648, align 4, !tbaa !34
  %742 = fmul float %735, %737
  store float %742, ptr %738, align 4, !tbaa !34
  %743 = fmul float %735, %739
  store float %743, ptr %740, align 4, !tbaa !34
  %744 = fmul float %734, %741
  store float %744, ptr %648, align 4, !tbaa !34
  %745 = getelementptr inbounds %struct.ParticleKey, ptr %648, i64 0, i32 1
  %746 = getelementptr inbounds %struct.ParticleKey, ptr %733, i64 0, i32 1
  %747 = load float, ptr %746, align 4, !tbaa !34
  store float %747, ptr %745, align 4, !tbaa !34
  %748 = getelementptr inbounds %struct.ParticleKey, ptr %733, i64 0, i32 1, i64 1
  %749 = load float, ptr %748, align 4, !tbaa !34
  %750 = getelementptr inbounds %struct.ParticleKey, ptr %648, i64 0, i32 1, i64 1
  store float %749, ptr %750, align 4, !tbaa !34
  %751 = getelementptr inbounds %struct.ParticleKey, ptr %733, i64 0, i32 1, i64 2
  %752 = load float, ptr %751, align 4, !tbaa !34
  %753 = getelementptr inbounds %struct.ParticleKey, ptr %648, i64 0, i32 1, i64 2
  store float %752, ptr %753, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef nonnull %731, ptr noundef nonnull %648) #17
  %754 = getelementptr inbounds %struct.ParticleKey, ptr %648, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %754, ptr noundef nonnull %731) #17
  %755 = load float, ptr %733, align 4, !tbaa !34
  %756 = load float, ptr %648, align 4, !tbaa !34
  %757 = fadd float %755, %756
  store float %757, ptr %648, align 4, !tbaa !34
  %758 = getelementptr inbounds float, ptr %733, i64 1
  %759 = load float, ptr %758, align 4, !tbaa !34
  %760 = load float, ptr %738, align 4, !tbaa !34
  %761 = fadd float %759, %760
  store float %761, ptr %738, align 4, !tbaa !34
  %762 = getelementptr inbounds float, ptr %733, i64 2
  %763 = load float, ptr %762, align 4, !tbaa !34
  %764 = load float, ptr %740, align 4, !tbaa !34
  %765 = fadd float %763, %764
  store float %765, ptr %740, align 4, !tbaa !34
  br label %766

766:                                              ; preds = %730, %711
  %767 = phi ptr [ %649, %711 ], [ %731, %730 ]
  %768 = trunc i64 %647 to i32
  %769 = sitofp i32 %768 to float
  %770 = load i32, ptr %616, align 8, !tbaa !338
  %771 = sitofp i32 %770 to float
  %772 = fdiv float %769, %771
  %773 = getelementptr inbounds %struct.ParticleCacheKey, ptr %648, i64 0, i32 4
  store float %772, ptr %773, align 4, !tbaa !377
  %774 = add nuw nsw i64 %647, 1
  %775 = getelementptr inbounds %struct.ParticleCacheKey, ptr %648, i64 1
  %776 = load i32, ptr %616, align 8, !tbaa !338
  %777 = sext i32 %776 to i64
  %778 = icmp slt i64 %647, %777
  br i1 %778, label %646, label %779, !llvm.loop !378

779:                                              ; preds = %766, %636
  %780 = phi ptr [ null, %636 ], [ %767, %766 ]
  %781 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 5
  %782 = load i32, ptr %781, align 8, !tbaa !54
  %783 = and i32 %782, 134217728
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %822, label %785

785:                                              ; preds = %779
  %786 = load i32, ptr %616, align 8, !tbaa !338
  %787 = icmp slt i32 %786, 0
  br i1 %787, label %822, label %788

788:                                              ; preds = %785
  %789 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 2
  br label %790

790:                                              ; preds = %788, %817
  %791 = phi i32 [ %786, %788 ], [ %820, %817 ]
  %792 = phi ptr [ %107, %788 ], [ %819, %817 ]
  %793 = phi i32 [ 0, %788 ], [ %818, %817 ]
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %798, label %795

795:                                              ; preds = %790
  %796 = load i32, ptr %789, align 4, !tbaa !38
  %797 = load float, ptr %96, align 4, !tbaa !379
  call fastcc void @do_path_effectors(ptr noundef nonnull %108, i32 noundef %796, ptr noundef %792, i32 noundef %793, i32 noundef %791, float noundef %797, ptr noundef nonnull %15, ptr noundef nonnull %16)
  br label %817

798:                                              ; preds = %790
  %799 = getelementptr inbounds %struct.ParticleCacheKey, ptr %792, i64 1
  %800 = load float, ptr %799, align 4, !tbaa !34
  %801 = load float, ptr %792, align 4, !tbaa !34
  %802 = fsub float %800, %801
  store float %802, ptr %16, align 4, !tbaa !34
  %803 = getelementptr inbounds %struct.ParticleCacheKey, ptr %792, i64 1, i32 0, i64 1
  %804 = load float, ptr %803, align 4, !tbaa !34
  %805 = getelementptr inbounds float, ptr %792, i64 1
  %806 = load float, ptr %805, align 4, !tbaa !34
  %807 = fsub float %804, %806
  store float %807, ptr %97, align 4, !tbaa !34
  %808 = getelementptr inbounds %struct.ParticleCacheKey, ptr %792, i64 1, i32 0, i64 2
  %809 = load float, ptr %808, align 4, !tbaa !34
  %810 = getelementptr inbounds float, ptr %792, i64 2
  %811 = load float, ptr %810, align 4, !tbaa !34
  %812 = fsub float %809, %811
  store float %812, ptr %98, align 4, !tbaa !34
  %813 = fmul float %807, %807
  %814 = call float @llvm.fmuladd.f32(float %802, float %802, float %813)
  %815 = call float @llvm.fmuladd.f32(float %812, float %812, float %814)
  %816 = call float @sqrtf(float noundef %815) #17
  store float %816, ptr %15, align 4, !tbaa !34
  br label %817

817:                                              ; preds = %798, %795
  %818 = add nuw nsw i32 %793, 1
  %819 = getelementptr inbounds %struct.ParticleCacheKey, ptr %792, i64 1
  %820 = load i32, ptr %616, align 8, !tbaa !338
  %821 = icmp slt i32 %793, %820
  br i1 %821, label %790, label %822, !llvm.loop !380

822:                                              ; preds = %817, %785, %779
  %823 = load i32, ptr %616, align 8, !tbaa !338
  %824 = icmp slt i32 %823, 0
  br i1 %824, label %990, label %825

825:                                              ; preds = %822
  %826 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 21
  %827 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 1
  %828 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 0, i32 1
  %829 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 2
  %830 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 23
  %831 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 2
  %832 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 23
  br label %833

833:                                              ; preds = %825, %985
  %834 = phi i32 [ %823, %825 ], [ %988, %985 ]
  %835 = phi ptr [ %107, %825 ], [ %987, %985 ]
  %836 = phi ptr [ null, %825 ], [ %878, %985 ]
  %837 = phi ptr [ %780, %825 ], [ %877, %985 ]
  %838 = phi float [ 1.000000e+00, %825 ], [ %968, %985 ]
  %839 = phi i32 [ 0, %825 ], [ %986, %985 ]
  %840 = phi float [ 0.000000e+00, %825 ], [ %966, %985 ]
  %841 = sitofp i32 %839 to float
  %842 = sitofp i32 %834 to float
  %843 = fdiv float %841, %842
  %844 = load i32, ptr %826, align 8, !tbaa !340
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %852, label %846

846:                                              ; preds = %833
  %847 = icmp sgt i32 %844, %103
  br i1 %847, label %861, label %848

848:                                              ; preds = %846
  %849 = load i32, ptr %827, align 4, !tbaa !322
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds ptr, ptr %116, i64 %850
  br label %858

852:                                              ; preds = %833
  %853 = load i32, ptr %828, align 4, !tbaa !322
  %854 = icmp sgt i32 %853, -1
  br i1 %854, label %855, label %861

855:                                              ; preds = %852
  %856 = zext nneg i32 %853 to i64
  %857 = getelementptr inbounds ptr, ptr %170, i64 %856
  br label %858

858:                                              ; preds = %848, %855
  %859 = phi ptr [ %857, %855 ], [ %851, %848 ]
  %860 = load ptr, ptr %859, align 8, !tbaa !59
  br label %861

861:                                              ; preds = %858, %852, %846
  %862 = phi ptr [ %836, %852 ], [ null, %846 ], [ %860, %858 ]
  %863 = icmp eq ptr %862, null
  br i1 %863, label %876, label %864

864:                                              ; preds = %861
  %865 = icmp eq i32 %839, 0
  br i1 %865, label %870, label %866

866:                                              ; preds = %864
  %867 = sext i32 %839 to i64
  %868 = getelementptr inbounds %struct.ParticleCacheKey, ptr %862, i64 %867, i32 2
  %869 = getelementptr inbounds %struct.ParticleCacheKey, ptr %862, i64 0, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %8, ptr noundef nonnull %868, ptr noundef nonnull %869) #17
  br label %872

870:                                              ; preds = %864
  %871 = getelementptr inbounds %struct.ParticleCacheKey, ptr %862, i64 0, i32 2
  br label %872

872:                                              ; preds = %870, %866
  %873 = phi ptr [ %8, %866 ], [ %871, %870 ]
  %874 = sext i32 %839 to i64
  %875 = getelementptr inbounds %struct.ParticleCacheKey, ptr %862, i64 %874
  br label %876

876:                                              ; preds = %872, %861
  %877 = phi ptr [ %873, %872 ], [ %837, %861 ]
  %878 = phi ptr [ %875, %872 ], [ null, %861 ]
  call fastcc void @do_child_modifiers(ptr noundef nonnull %108, ptr noundef nonnull %7, ptr noundef %878, ptr noundef %877, ptr noundef %104, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef %835, float noundef %843)
  %879 = icmp sgt i32 %839, 1
  br i1 %879, label %880, label %907

880:                                              ; preds = %876
  %881 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -1, i32 1
  %882 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 -2
  %883 = load float, ptr %835, align 4, !tbaa !34
  %884 = load float, ptr %882, align 4, !tbaa !34
  %885 = fsub float %883, %884
  store float %885, ptr %881, align 4, !tbaa !34
  %886 = getelementptr inbounds float, ptr %835, i64 1
  %887 = load float, ptr %886, align 4, !tbaa !34
  %888 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -2, i32 0, i64 1
  %889 = load float, ptr %888, align 4, !tbaa !34
  %890 = fsub float %887, %889
  %891 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -1, i32 1, i64 1
  store float %890, ptr %891, align 4, !tbaa !34
  %892 = getelementptr inbounds float, ptr %835, i64 2
  %893 = load float, ptr %892, align 4, !tbaa !34
  %894 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -2, i32 0, i64 2
  %895 = load float, ptr %894, align 4, !tbaa !34
  %896 = fsub float %893, %895
  %897 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -1, i32 1, i64 2
  store float %896, ptr %897, align 4, !tbaa !34
  %898 = fmul float %885, 5.000000e-01
  store float %898, ptr %881, align 4, !tbaa !34
  %899 = fmul float %890, 5.000000e-01
  store float %899, ptr %891, align 4, !tbaa !34
  %900 = fmul float %896, 5.000000e-01
  store float %900, ptr %897, align 4, !tbaa !34
  %901 = load ptr, ptr %829, align 8, !tbaa !381
  %902 = icmp eq ptr %901, null
  br i1 %902, label %907, label %903

903:                                              ; preds = %880
  %904 = load i16, ptr %830, align 4, !tbaa !382
  %905 = icmp eq i16 %904, 1
  br i1 %905, label %906, label %907

906:                                              ; preds = %903
  call fastcc void @get_strand_normal(ptr noundef nonnull %901, ptr noundef nonnull %10, float noundef %840, ptr noundef nonnull %881)
  br label %907

907:                                              ; preds = %906, %903, %880, %876
  %908 = load i32, ptr %616, align 8, !tbaa !338
  %909 = icmp eq i32 %839, %908
  br i1 %909, label %910, label %928

910:                                              ; preds = %907
  %911 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 0, i32 1
  %912 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 -1
  %913 = load float, ptr %835, align 4, !tbaa !34
  %914 = load float, ptr %912, align 4, !tbaa !34
  %915 = fsub float %913, %914
  store float %915, ptr %911, align 4, !tbaa !34
  %916 = getelementptr inbounds float, ptr %835, i64 1
  %917 = load float, ptr %916, align 4, !tbaa !34
  %918 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -1, i32 0, i64 1
  %919 = load float, ptr %918, align 4, !tbaa !34
  %920 = fsub float %917, %919
  %921 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 0, i32 1, i64 1
  store float %920, ptr %921, align 4, !tbaa !34
  %922 = getelementptr inbounds float, ptr %835, i64 2
  %923 = load float, ptr %922, align 4, !tbaa !34
  %924 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -1, i32 0, i64 2
  %925 = load float, ptr %924, align 4, !tbaa !34
  %926 = fsub float %923, %925
  %927 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 0, i32 1, i64 2
  store float %926, ptr %927, align 4, !tbaa !34
  br label %928

928:                                              ; preds = %910, %907
  %929 = icmp eq i32 %839, 0
  br i1 %929, label %963, label %930

930:                                              ; preds = %928
  %931 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 -1
  %932 = load float, ptr %835, align 4, !tbaa !34
  %933 = load float, ptr %931, align 4, !tbaa !34
  %934 = fsub float %932, %933
  store float %934, ptr %12, align 4, !tbaa !34
  %935 = getelementptr inbounds float, ptr %835, i64 1
  %936 = load float, ptr %935, align 4, !tbaa !34
  %937 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -1, i32 0, i64 1
  %938 = load float, ptr %937, align 4, !tbaa !34
  %939 = fsub float %936, %938
  store float %939, ptr %99, align 4, !tbaa !34
  %940 = getelementptr inbounds float, ptr %835, i64 2
  %941 = load float, ptr %940, align 4, !tbaa !34
  %942 = getelementptr %struct.ParticleCacheKey, ptr %835, i64 -1, i32 0, i64 2
  %943 = load float, ptr %942, align 4, !tbaa !34
  %944 = fsub float %941, %943
  store float %944, ptr %100, align 4, !tbaa !34
  %945 = sitofp i32 %908 to float
  %946 = fdiv float 1.000000e+00, %945
  %947 = fadd float %840, %946
  %948 = fcmp ogt float %947, %838
  br i1 %948, label %949, label %965

949:                                              ; preds = %930
  %950 = fsub float %838, %840
  %951 = fdiv float %950, %946
  %952 = fmul float %951, %934
  store float %952, ptr %12, align 4, !tbaa !34
  %953 = fmul float %951, %939
  store float %953, ptr %99, align 4, !tbaa !34
  %954 = fmul float %951, %944
  store float %954, ptr %100, align 4, !tbaa !34
  %955 = load float, ptr %931, align 4, !tbaa !34
  %956 = fadd float %952, %955
  store float %956, ptr %835, align 4, !tbaa !34
  %957 = load float, ptr %937, align 4, !tbaa !34
  %958 = load float, ptr %99, align 4, !tbaa !34
  %959 = fadd float %957, %958
  store float %959, ptr %935, align 4, !tbaa !34
  %960 = load float, ptr %942, align 4, !tbaa !34
  %961 = load float, ptr %100, align 4, !tbaa !34
  %962 = fadd float %960, %961
  store float %962, ptr %940, align 4, !tbaa !34
  store i32 %839, ptr %618, align 4, !tbaa !366
  br label %965

963:                                              ; preds = %928
  %964 = load float, ptr %101, align 4, !tbaa !383
  br label %965

965:                                              ; preds = %963, %949, %930
  %966 = phi float [ 0.000000e+00, %963 ], [ %840, %949 ], [ %947, %930 ]
  %967 = phi i32 [ 0, %963 ], [ 100000, %949 ], [ %839, %930 ]
  %968 = phi float [ %964, %963 ], [ %838, %949 ], [ %838, %930 ]
  %969 = load ptr, ptr %831, align 8, !tbaa !381
  %970 = icmp eq ptr %969, null
  br i1 %970, label %985, label %971

971:                                              ; preds = %965
  %972 = load i16, ptr %832, align 4, !tbaa !382
  %973 = icmp eq i16 %972, 1
  br i1 %973, label %974, label %985

974:                                              ; preds = %971
  %975 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 0, i32 3
  %976 = getelementptr inbounds %struct.Material, ptr %969, i64 0, i32 4
  %977 = load float, ptr %976, align 4, !tbaa !34
  store float %977, ptr %975, align 4, !tbaa !34
  %978 = getelementptr inbounds %struct.Material, ptr %969, i64 0, i32 5
  %979 = load float, ptr %978, align 4, !tbaa !34
  %980 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 0, i32 3, i64 1
  store float %979, ptr %980, align 4, !tbaa !34
  %981 = getelementptr inbounds %struct.Material, ptr %969, i64 0, i32 6
  %982 = load float, ptr %981, align 4, !tbaa !34
  %983 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 0, i32 3, i64 2
  store float %982, ptr %983, align 4, !tbaa !34
  %984 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 0, i32 1
  call fastcc void @get_strand_normal(ptr noundef nonnull %969, ptr noundef nonnull %10, float noundef %966, ptr noundef nonnull %984)
  br label %985

985:                                              ; preds = %974, %971, %965
  %986 = add nsw i32 %967, 1
  %987 = getelementptr inbounds %struct.ParticleCacheKey, ptr %835, i64 1
  %988 = load i32, ptr %616, align 8, !tbaa !338
  %989 = icmp slt i32 %967, %988
  br i1 %989, label %833, label %990, !llvm.loop !384

990:                                              ; preds = %985, %822
  %991 = getelementptr inbounds %struct.ParticleThreadContext, ptr %108, i64 0, i32 21
  %992 = load i32, ptr %991, align 8, !tbaa !340
  %993 = icmp sgt i32 %992, %103
  br i1 %993, label %994, label %995

994:                                              ; preds = %990, %612
  store i32 -1, ptr %618, align 4, !tbaa !366
  br label %995

995:                                              ; preds = %994, %168, %504, %607, %990
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  %996 = load i32, ptr %26, align 4, !tbaa !327
  %997 = add nsw i32 %996, %103
  %998 = sext i32 %996 to i64
  %999 = getelementptr inbounds %struct.ChildParticle, ptr %104, i64 %998
  %1000 = icmp slt i32 %997, %43
  br i1 %1000, label %102, label %1001, !llvm.loop !385

1001:                                             ; preds = %995, %40
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_cache_paths(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca %struct.ParticleKey, align 4
  %6 = alloca %struct.ParticleInterpolationData, align 8
  %7 = alloca %struct.ParticleTexture, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca float, align 4
  %12 = alloca [3 x float], align 4
  %13 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !285
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 26
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %16, %33
  %25 = phi ptr [ %34, %33 ], [ %22, %16 ]
  %26 = getelementptr inbounds %struct.ModifierData, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !98
  %28 = icmp eq i32 %27, 19
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = icmp eq ptr %31, %20
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %24
  %34 = load ptr, ptr %25, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %24, !llvm.loop !102

36:                                               ; preds = %33, %29, %16, %2
  %37 = phi ptr [ %14, %2 ], [ null, %16 ], [ %25, %29 ], [ null, %33 ]
  %38 = load ptr, ptr %0, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !328
  %41 = getelementptr inbounds %struct.ToolSettings, ptr %40, i64 0, i32 18
  %42 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 7
  %47 = load i16, ptr %46, align 8, !tbaa !111
  %48 = icmp eq i16 %47, 2
  br i1 %48, label %49, label %57

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 25
  %51 = load i32, ptr %50, align 4, !tbaa !60
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !153
  br label %57

57:                                               ; preds = %36, %49, %54
  %58 = phi ptr [ %56, %54 ], [ null, %49 ], [ null, %36 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 39
  %60 = load ptr, ptr %59, align 8, !tbaa !96
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 25
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 24
  %64 = select i1 %61, ptr %63, ptr %62
  %65 = load i16, ptr %64, align 2, !tbaa !264
  %66 = sext i16 %65 to i32
  %67 = tail call double @ldexp(double 1.000000e+00, i32 %66) #17
  %68 = fptosi double %67 to i32
  %69 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 26
  %70 = load i32, ptr %69, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 25
  %72 = load i32, ptr %71, align 4, !tbaa !60
  %73 = and i32 %72, 1536
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 40
  %77 = load ptr, ptr %76, align 8, !tbaa !93
  %78 = icmp eq ptr %77, null
  br i1 %78, label %601, label %79

79:                                               ; preds = %57, %75
  %80 = load ptr, ptr %0, align 8, !tbaa !64
  %81 = getelementptr inbounds %struct.Scene, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !67
  %83 = icmp eq ptr %82, null
  br i1 %83, label %131, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.Base, ptr %82, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !87
  %87 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 27
  %88 = load i32, ptr %87, align 8, !tbaa !89
  %89 = and i32 %88, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %131, label %91

91:                                               ; preds = %84
  %92 = icmp eq ptr %86, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 109
  br label %95

95:                                               ; preds = %99, %93
  %96 = phi ptr [ %94, %93 ], [ %97, %99 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !59
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ParticleSystem, ptr %97, i64 0, i32 25
  %101 = load i32, ptr %100, align 4, !tbaa !60
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %95, label %104, !llvm.loop !61

104:                                              ; preds = %99, %95, %91
  %105 = phi ptr [ null, %91 ], [ %97, %99 ], [ null, %95 ]
  %106 = icmp eq ptr %105, %43
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !92
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 40
  %113 = load ptr, ptr %112, align 8, !tbaa !93
  %114 = getelementptr inbounds %struct.PointCache, ptr %113, i64 0, i32 21
  %115 = load ptr, ptr %114, align 8, !tbaa !94
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %111, %107
  %118 = load ptr, ptr %59, align 8, !tbaa !96
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load ptr, ptr %59, align 8, !tbaa !96
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !92
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i16, ptr %41, align 8, !tbaa !329
  %129 = and i16 %128, 16
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %601, label %131

131:                                              ; preds = %111, %104, %84, %79, %123, %120, %127, %117
  %132 = and i32 %72, 1024
  %133 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 40
  %134 = load ptr, ptr %133, align 8, !tbaa !93
  %135 = getelementptr inbounds %struct.PointCache, ptr %134, i64 0, i32 20
  %136 = load ptr, ptr %135, align 8, !tbaa !386
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %131
  %139 = load ptr, ptr %44, align 8, !tbaa !49
  %140 = getelementptr inbounds %struct.ParticleSettings, ptr %139, i64 0, i32 7
  %141 = load i16, ptr %140, align 8, !tbaa !111
  %142 = icmp ne i16 %141, 2
  br label %143

143:                                              ; preds = %138, %131
  %144 = phi i1 [ false, %131 ], [ %142, %138 ]
  %145 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !92
  tail call void @psys_free_path_cache(ptr noundef %43, ptr noundef %146)
  %147 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 9
  %148 = add i32 %68, 1
  %149 = tail call i32 @llvm.smax.i32(i32 %70, i32 1)
  %150 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %151 = zext nneg i32 %149 to i64
  %152 = shl nuw nsw i64 %151, 3
  %153 = tail call ptr %150(i64 noundef %152, ptr noundef nonnull @.str.14) #17
  %154 = sext i32 %148 to i64
  %155 = mul nsw i64 %154, 60
  br label %156

156:                                              ; preds = %181, %143
  %157 = phi i32 [ 0, %143 ], [ %182, %181 ]
  %158 = sub i32 %149, %157
  %159 = tail call i32 @llvm.smin.i32(i32 %158, i32 1024)
  %160 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %161 = tail call ptr %160(i64 noundef 24, ptr noundef nonnull @.str.15) #17
  %162 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %163 = sext i32 %159 to i64
  %164 = mul i64 %155, %163
  %165 = tail call ptr %162(i64 noundef %164, ptr noundef nonnull @.str.16) #17
  %166 = getelementptr inbounds %struct.LinkData, ptr %161, i64 0, i32 2
  store ptr %165, ptr %166, align 8, !tbaa !157
  %167 = icmp sgt i32 %158, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %156
  %169 = sext i32 %157 to i64
  %170 = tail call i32 @llvm.smax.i32(i32 %159, i32 1)
  %171 = zext nneg i32 %170 to i64
  %172 = getelementptr ptr, ptr %153, i64 %169
  br label %173

173:                                              ; preds = %173, %168
  %174 = phi i64 [ 0, %168 ], [ %179, %173 ]
  %175 = load ptr, ptr %166, align 8, !tbaa !157
  %176 = mul nsw i64 %174, %154
  %177 = getelementptr inbounds %struct.ParticleCacheKey, ptr %175, i64 %176
  %178 = getelementptr ptr, ptr %172, i64 %174
  store ptr %177, ptr %178, align 8, !tbaa !59
  %179 = add nuw nsw i64 %174, 1
  %180 = icmp eq i64 %179, %171
  br i1 %180, label %181, label %173, !llvm.loop !351

181:                                              ; preds = %173, %156
  %182 = add nsw i32 %159, %157
  tail call void @BLI_addtail(ptr noundef nonnull %147, ptr noundef %161) #17
  %183 = icmp slt i32 %182, %149
  br i1 %183, label %156, label %184, !llvm.loop !352

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 7
  store ptr %153, ptr %185, align 8, !tbaa !161
  %186 = tail call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %0)
  %187 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 15
  store ptr %186, ptr %187, align 8, !tbaa !343
  %188 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !97
  %190 = load ptr, ptr %44, align 8, !tbaa !49
  %191 = getelementptr inbounds %struct.ParticleSettings, ptr %190, i64 0, i32 31
  %192 = load i16, ptr %191, align 4, !tbaa !387
  %193 = tail call ptr @give_current_material(ptr noundef %189, i16 noundef signext %192) #17
  %194 = icmp eq ptr %193, null
  br i1 %194, label %207, label %195

195:                                              ; preds = %184
  %196 = load ptr, ptr %44, align 8, !tbaa !49
  %197 = getelementptr inbounds %struct.ParticleSettings, ptr %196, i64 0, i32 23
  %198 = load i16, ptr %197, align 4, !tbaa !382
  %199 = icmp eq i16 %198, 1
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.Material, ptr %193, i64 0, i32 4
  %202 = load float, ptr %201, align 4, !tbaa !34
  %203 = getelementptr inbounds %struct.Material, ptr %193, i64 0, i32 5
  %204 = load float, ptr %203, align 4, !tbaa !34
  %205 = getelementptr inbounds %struct.Material, ptr %193, i64 0, i32 6
  %206 = load float, ptr %205, align 4, !tbaa !34
  br label %207

207:                                              ; preds = %200, %195, %184
  %208 = phi float [ 5.000000e-01, %184 ], [ %206, %200 ], [ 5.000000e-01, %195 ]
  %209 = phi float [ 5.000000e-01, %184 ], [ %204, %200 ], [ 5.000000e-01, %195 ]
  %210 = phi float [ 5.000000e-01, %184 ], [ %202, %200 ], [ 5.000000e-01, %195 ]
  %211 = load i32, ptr %71, align 4, !tbaa !60
  %212 = and i32 %211, 2
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %207
  %215 = load ptr, ptr %44, align 8, !tbaa !49
  %216 = getelementptr inbounds %struct.ParticleSettings, ptr %215, i64 0, i32 5
  %217 = load i32, ptr %216, align 8, !tbaa !54
  %218 = and i32 %217, 134217728
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %37, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !199
  %223 = tail call ptr @psys_cache_vgroup(ptr noundef %222, ptr noundef %43, i32 noundef 11)
  br label %224

224:                                              ; preds = %220, %214
  %225 = phi ptr [ %223, %220 ], [ null, %214 ]
  %226 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 28
  %227 = load i32, ptr %226, align 8, !tbaa !166
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %37, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !199
  %232 = tail call ptr @psys_cache_vgroup(ptr noundef %231, ptr noundef %43, i32 noundef 2)
  br label %233

233:                                              ; preds = %224, %229, %207
  %234 = phi ptr [ %225, %224 ], [ %225, %229 ], [ null, %207 ]
  %235 = phi ptr [ null, %224 ], [ %232, %229 ], [ null, %207 ]
  %236 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 8
  %237 = load i16, ptr %236, align 2, !tbaa !284
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %37, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !199
  tail call void @DM_ensure_tessface(ptr noundef %241) #17
  br label %242

242:                                              ; preds = %239, %233
  %243 = load i32, ptr %69, align 8, !tbaa !43
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %588

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !48
  %248 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 28
  %249 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 8
  %250 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 88
  %251 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 23
  %252 = icmp eq ptr %235, null
  %253 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %37, i64 0, i32 2
  %254 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 3
  %255 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 5
  %256 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 7
  %257 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 11
  %258 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 1
  %259 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %37, i64 0, i32 2
  %260 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %261 = getelementptr inbounds float, ptr %3, i64 1
  %262 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  %263 = getelementptr inbounds float, ptr %3, i64 2
  %264 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  %265 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  %266 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 1
  %267 = getelementptr inbounds float, ptr %10, i64 1
  %268 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  %269 = getelementptr inbounds float, ptr %10, i64 2
  %270 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %271 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1
  %272 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 1
  %273 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %274 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 2
  %275 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %276 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %277 = getelementptr inbounds float, ptr %9, i64 1
  %278 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %279 = getelementptr inbounds float, ptr %9, i64 2
  %280 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  %281 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 15
  %282 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 9
  %283 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 117
  %284 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 10
  %285 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 118
  %286 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 9
  %287 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 117
  %288 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %6, i64 0, i32 10
  %289 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 118
  %290 = icmp slt i32 %68, 0
  %291 = sitofp i32 %68 to float
  %292 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %293 = getelementptr inbounds float, ptr %5, i64 1
  %294 = getelementptr inbounds float, ptr %5, i64 2
  %295 = icmp eq ptr %58, null
  %296 = icmp ne i32 %132, 0
  %297 = select i1 %296, i1 true, i1 %144
  %298 = icmp eq ptr %234, null
  %299 = getelementptr inbounds float, ptr %12, i64 1
  %300 = getelementptr inbounds float, ptr %12, i64 2
  %301 = icmp slt i32 %68, 1
  %302 = icmp slt i32 %68, 0
  %303 = sitofp i32 %68 to float
  %304 = icmp slt i32 %68, 0
  %305 = icmp slt i32 %68, 1
  %306 = sitofp i32 %68 to float
  br label %307

307:                                              ; preds = %245, %581
  %308 = phi i64 [ 0, %245 ], [ %583, %581 ]
  %309 = phi ptr [ %247, %245 ], [ %584, %581 ]
  %310 = phi float [ 1.000000e+00, %245 ], [ %582, %581 ]
  %311 = getelementptr inbounds %struct.ParticleData, ptr %309, i64 0, i32 17
  %312 = load i16, ptr %311, align 4, !tbaa !50
  %313 = and i16 %312, 3
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %315, label %581

315:                                              ; preds = %307
  %316 = load i32, ptr %248, align 8, !tbaa !166
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %344

318:                                              ; preds = %315
  call void @psys_get_texture(ptr noundef nonnull %0, ptr noundef %309, ptr noundef nonnull %7, i32 noundef 16, float noundef 0.000000e+00)
  %319 = load float, ptr %249, align 4, !tbaa !383
  %320 = load float, ptr %250, align 8, !tbaa !388
  %321 = load i32, ptr %251, align 4, !tbaa !215
  %322 = trunc i64 %308 to i32
  %323 = add nsw i32 %321, %322
  %324 = srem i32 %321, 1024
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %325
  %327 = load i32, ptr %326, align 4, !tbaa !38
  %328 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %325
  %329 = load i32, ptr %328, align 4, !tbaa !38
  %330 = mul i32 %329, %323
  %331 = add i32 %330, %327
  %332 = and i32 %331, 1023
  %333 = zext nneg i32 %332 to i64
  %334 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %333
  %335 = load float, ptr %334, align 4, !tbaa !34
  %336 = fneg float %320
  %337 = call float @llvm.fmuladd.f32(float %336, float %335, float 1.000000e+00)
  %338 = fmul float %319, %337
  br i1 %252, label %344, label %339

339:                                              ; preds = %318
  %340 = load ptr, ptr %253, align 8, !tbaa !199
  %341 = load i16, ptr %236, align 2, !tbaa !284
  %342 = call float @psys_particle_value_from_verts(ptr noundef %340, i16 noundef signext %341, ptr noundef %309, ptr noundef nonnull %235)
  %343 = fmul float %338, %342
  br label %344

344:                                              ; preds = %318, %339, %315
  %345 = phi float [ %310, %315 ], [ %343, %339 ], [ %338, %318 ]
  store i32 %132, ptr %254, align 8, !tbaa !389
  br i1 %144, label %346, label %348

346:                                              ; preds = %344
  %347 = load ptr, ptr %133, align 8, !tbaa !93
  br label %348

348:                                              ; preds = %344, %346
  %349 = phi ptr [ %347, %346 ], [ null, %344 ]
  store ptr %349, ptr %255, align 8, !tbaa !391
  store ptr null, ptr %256, align 8, !tbaa !392
  %350 = load ptr, ptr %44, align 8, !tbaa !49
  %351 = getelementptr inbounds %struct.ParticleSettings, ptr %350, i64 0, i32 5
  %352 = load i32, ptr %351, align 8, !tbaa !54
  %353 = and i32 %352, 1024
  store i32 %353, ptr %257, align 8, !tbaa !393
  store ptr %58, ptr %258, align 8, !tbaa !394
  %354 = getelementptr inbounds ptr, ptr %153, i64 %308
  %355 = load ptr, ptr %354, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr align 4 %355, i8 0, i64 %155, i1 false)
  %356 = load ptr, ptr %354, align 8, !tbaa !59
  %357 = getelementptr inbounds %struct.ParticleCacheKey, ptr %356, i64 0, i32 5
  store i32 %68, ptr %357, align 4, !tbaa !366
  %358 = load ptr, ptr %42, align 8, !tbaa !66
  call fastcc void @init_particle_interpolation(ptr noundef %358, ptr noundef %309, ptr noundef nonnull %6)
  %359 = load ptr, ptr %188, align 8, !tbaa !97
  %360 = load ptr, ptr %259, align 8, !tbaa !199
  %361 = load ptr, ptr %44, align 8, !tbaa !49
  %362 = getelementptr inbounds %struct.ParticleSettings, ptr %361, i64 0, i32 8
  %363 = load i16, ptr %362, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %364 = icmp eq ptr %360, null
  br i1 %364, label %365, label %366

365:                                              ; preds = %348
  call void @unit_m4(ptr noundef nonnull %4) #17
  br label %378

366:                                              ; preds = %348
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %360, ptr noundef %309, ptr noundef nonnull %4, i32 noundef 0)
  %367 = sext i16 %363 to i32
  %368 = getelementptr inbounds %struct.ParticleData, ptr %309, i64 0, i32 9
  %369 = load i32, ptr %368, align 8, !tbaa !281
  %370 = getelementptr inbounds %struct.ParticleData, ptr %309, i64 0, i32 10
  %371 = load i32, ptr %370, align 4, !tbaa !282
  %372 = getelementptr inbounds %struct.ParticleData, ptr %309, i64 0, i32 11
  %373 = getelementptr inbounds %struct.ParticleData, ptr %309, i64 0, i32 12
  %374 = load float, ptr %373, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %360, i32 noundef %367, i32 noundef %369, i32 noundef %371, ptr noundef nonnull %372, float noundef %374, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %375 = load float, ptr %3, align 4, !tbaa !34
  store float %375, ptr %260, align 16, !tbaa !34
  %376 = load float, ptr %261, align 4, !tbaa !34
  store float %376, ptr %262, align 4, !tbaa !34
  %377 = load float, ptr %263, align 4, !tbaa !34
  store float %377, ptr %264, align 8, !tbaa !34
  br label %378

378:                                              ; preds = %365, %366
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  %379 = getelementptr inbounds %struct.Object, ptr %359, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %379, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  %380 = load float, ptr %265, align 16, !tbaa !34
  store float %380, ptr %10, align 16, !tbaa !34
  %381 = load float, ptr %266, align 4, !tbaa !34
  store float %381, ptr %267, align 4, !tbaa !34
  %382 = load float, ptr %268, align 8, !tbaa !34
  store float %382, ptr %269, align 8, !tbaa !34
  %383 = load float, ptr %271, align 16, !tbaa !34
  store float %383, ptr %270, align 4, !tbaa !34
  %384 = load float, ptr %272, align 4, !tbaa !34
  store float %384, ptr %273, align 16, !tbaa !34
  %385 = load float, ptr %274, align 8, !tbaa !34
  store float %385, ptr %275, align 4, !tbaa !34
  %386 = load float, ptr %9, align 16, !tbaa !34
  store float %386, ptr %276, align 8, !tbaa !34
  %387 = load float, ptr %277, align 4, !tbaa !34
  store float %387, ptr %278, align 4, !tbaa !34
  %388 = load float, ptr %279, align 8, !tbaa !34
  store float %388, ptr %280, align 16, !tbaa !34
  %389 = load i32, ptr %281, align 8, !tbaa !222
  %390 = and i32 %389, 32
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %401, label %392

392:                                              ; preds = %378
  %393 = load float, ptr %282, align 8, !tbaa !395
  %394 = load float, ptr %283, align 8, !tbaa !396
  %395 = fcmp ogt float %393, %394
  %396 = select i1 %395, float %393, float %394
  %397 = load float, ptr %284, align 4, !tbaa !397
  %398 = load float, ptr %285, align 4, !tbaa !398
  %399 = fcmp olt float %397, %398
  %400 = select i1 %399, float %397, float %398
  br label %409

401:                                              ; preds = %378
  %402 = load float, ptr %286, align 8, !tbaa !395
  %403 = load float, ptr %287, align 8, !tbaa !396
  %404 = load float, ptr %288, align 4, !tbaa !397
  %405 = fsub float %404, %402
  %406 = call float @llvm.fmuladd.f32(float %403, float %405, float %402)
  %407 = load float, ptr %289, align 4, !tbaa !398
  %408 = call float @llvm.fmuladd.f32(float %407, float %405, float %402)
  br label %409

409:                                              ; preds = %401, %392
  %410 = phi float [ %400, %392 ], [ %408, %401 ]
  %411 = phi float [ %396, %392 ], [ %406, %401 ]
  %412 = fcmp ult float %411, %410
  br i1 %412, label %416, label %413

413:                                              ; preds = %409
  %414 = load ptr, ptr %354, align 8, !tbaa !59
  %415 = getelementptr inbounds %struct.ParticleCacheKey, ptr %414, i64 0, i32 5
  store i32 -1, ptr %415, align 4, !tbaa !366
  br label %581

416:                                              ; preds = %409
  br i1 %290, label %452, label %417

417:                                              ; preds = %416
  %418 = load ptr, ptr %354, align 8, !tbaa !59
  %419 = fsub float %410, %411
  %420 = call float @llvm.fmuladd.f32(float %345, float %419, float %411)
  %421 = fsub float %420, %411
  %422 = trunc i64 %308 to i32
  br label %423

423:                                              ; preds = %417, %445
  %424 = phi ptr [ %418, %417 ], [ %450, %445 ]
  %425 = phi i32 [ 0, %417 ], [ %449, %445 ]
  %426 = sitofp i32 %425 to float
  %427 = fdiv float %426, %291
  %428 = call float @llvm.fmuladd.f32(float %427, float %421, float %411)
  %429 = fneg float %428
  store float %429, ptr %292, align 4, !tbaa !399
  call fastcc void @do_particle_interpolation(ptr noundef %43, i32 noundef %422, ptr noundef %309, float noundef %428, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %430 = load float, ptr %5, align 4, !tbaa !34
  store float %430, ptr %424, align 4, !tbaa !34
  %431 = load float, ptr %293, align 4, !tbaa !34
  %432 = getelementptr inbounds float, ptr %424, i64 1
  store float %431, ptr %432, align 4, !tbaa !34
  %433 = load float, ptr %294, align 4, !tbaa !34
  %434 = getelementptr inbounds float, ptr %424, i64 2
  store float %433, ptr %434, align 4, !tbaa !34
  br i1 %295, label %438, label %435

435:                                              ; preds = %423
  %436 = load ptr, ptr %188, align 8, !tbaa !97
  %437 = getelementptr inbounds %struct.Object, ptr %436, i64 0, i32 47
  br label %443

438:                                              ; preds = %423
  br i1 %297, label %445, label %439

439:                                              ; preds = %438
  %440 = load i32, ptr %71, align 4, !tbaa !60
  %441 = and i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %439, %435
  %444 = phi ptr [ %437, %435 ], [ %9, %439 ]
  call void @mul_m4_v3(ptr noundef nonnull %444, ptr noundef nonnull %424) #17
  br label %445

445:                                              ; preds = %443, %438, %439
  %446 = getelementptr inbounds %struct.ParticleCacheKey, ptr %424, i64 0, i32 3
  store float %210, ptr %446, align 4, !tbaa !34
  %447 = getelementptr inbounds %struct.ParticleCacheKey, ptr %424, i64 0, i32 3, i64 1
  store float %209, ptr %447, align 4, !tbaa !34
  %448 = getelementptr inbounds %struct.ParticleCacheKey, ptr %424, i64 0, i32 3, i64 2
  store float %208, ptr %448, align 4, !tbaa !34
  %449 = add nuw i32 %425, 1
  %450 = getelementptr inbounds %struct.ParticleCacheKey, ptr %424, i64 1
  %451 = icmp eq i32 %425, %68
  br i1 %451, label %452, label %423, !llvm.loop !400

452:                                              ; preds = %445, %416
  %453 = load i32, ptr %71, align 4, !tbaa !60
  %454 = and i32 %453, 2
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %538

456:                                              ; preds = %452
  %457 = load ptr, ptr %44, align 8, !tbaa !49
  %458 = getelementptr inbounds %struct.ParticleSettings, ptr %457, i64 0, i32 5
  %459 = load i32, ptr %458, align 8, !tbaa !54
  %460 = and i32 %459, 134217728
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %498

462:                                              ; preds = %456
  br i1 %298, label %468, label %463

463:                                              ; preds = %462
  %464 = load ptr, ptr %259, align 8, !tbaa !199
  %465 = getelementptr inbounds %struct.ParticleSettings, ptr %457, i64 0, i32 8
  %466 = load i16, ptr %465, align 2, !tbaa !284
  %467 = call float @psys_particle_value_from_verts(ptr noundef %464, i16 noundef signext %466, ptr noundef %309, ptr noundef nonnull %234)
  br label %468

468:                                              ; preds = %463, %462
  %469 = phi float [ %467, %463 ], [ 1.000000e+00, %462 ]
  %470 = load ptr, ptr %354, align 8, !tbaa !59
  %471 = getelementptr inbounds %struct.ParticleCacheKey, ptr %470, i64 1
  %472 = load float, ptr %471, align 4, !tbaa !34
  %473 = load float, ptr %470, align 4, !tbaa !34
  %474 = fsub float %472, %473
  store float %474, ptr %12, align 4, !tbaa !34
  %475 = getelementptr inbounds %struct.ParticleCacheKey, ptr %470, i64 1, i32 0, i64 1
  %476 = load float, ptr %475, align 4, !tbaa !34
  %477 = getelementptr inbounds float, ptr %470, i64 1
  %478 = load float, ptr %477, align 4, !tbaa !34
  %479 = fsub float %476, %478
  store float %479, ptr %299, align 4, !tbaa !34
  %480 = getelementptr inbounds %struct.ParticleCacheKey, ptr %470, i64 1, i32 0, i64 2
  %481 = load float, ptr %480, align 4, !tbaa !34
  %482 = getelementptr inbounds float, ptr %470, i64 2
  %483 = load float, ptr %482, align 4, !tbaa !34
  %484 = fsub float %481, %483
  store float %484, ptr %300, align 4, !tbaa !34
  %485 = fmul float %479, %479
  %486 = call float @llvm.fmuladd.f32(float %474, float %474, float %485)
  %487 = call float @llvm.fmuladd.f32(float %484, float %484, float %486)
  %488 = call float @sqrtf(float noundef %487) #17
  store float %488, ptr %11, align 4, !tbaa !34
  br i1 %301, label %498, label %489

489:                                              ; preds = %468
  %490 = load ptr, ptr %354, align 8, !tbaa !59
  %491 = trunc i64 %308 to i32
  br label %492

492:                                              ; preds = %489, %492
  %493 = phi ptr [ %495, %492 ], [ %490, %489 ]
  %494 = phi i32 [ %496, %492 ], [ 1, %489 ]
  %495 = getelementptr inbounds %struct.ParticleCacheKey, ptr %493, i64 1
  call fastcc void @do_path_effectors(ptr noundef nonnull %0, i32 noundef %491, ptr noundef nonnull %495, i32 noundef %494, i32 noundef %68, float noundef %469, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %496 = add nuw i32 %494, 1
  %497 = icmp eq i32 %494, %68
  br i1 %497, label %498, label %492, !llvm.loop !401

498:                                              ; preds = %492, %468, %456
  %499 = load ptr, ptr %42, align 8, !tbaa !66
  %500 = getelementptr inbounds %struct.ParticleSystem, ptr %499, i64 0, i32 42
  %501 = load ptr, ptr %500, align 8, !tbaa !402
  %502 = icmp eq ptr %501, null
  br i1 %502, label %525, label %503

503:                                              ; preds = %498
  %504 = load ptr, ptr %44, align 8, !tbaa !49
  %505 = getelementptr inbounds %struct.ParticleSettings, ptr %504, i64 0, i32 5
  %506 = load i32, ptr %505, align 8, !tbaa !54
  %507 = and i32 %506, 134217728
  %508 = icmp ne i32 %507, 0
  %509 = select i1 %508, i1 true, i1 %302
  br i1 %509, label %525, label %510

510:                                              ; preds = %503
  %511 = load ptr, ptr %354, align 8, !tbaa !59
  %512 = trunc i64 %308 to i32
  br label %513

513:                                              ; preds = %510, %513
  %514 = phi ptr [ %523, %513 ], [ %511, %510 ]
  %515 = phi i32 [ %522, %513 ], [ 0, %510 ]
  %516 = load ptr, ptr %42, align 8, !tbaa !66
  %517 = getelementptr inbounds %struct.ParticleSystem, ptr %516, i64 0, i32 42
  %518 = load ptr, ptr %517, align 8, !tbaa !402
  %519 = sitofp i32 %515 to float
  %520 = fdiv float %519, %303
  %521 = call i32 @do_guides(ptr noundef %518, ptr noundef %514, i32 noundef %512, float noundef %520), !range !403
  %522 = add nuw i32 %515, 1
  %523 = getelementptr inbounds %struct.ParticleCacheKey, ptr %514, i64 1
  %524 = icmp eq i32 %515, %68
  br i1 %524, label %525, label %513, !llvm.loop !404

525:                                              ; preds = %513, %503, %498
  %526 = load ptr, ptr %187, align 8, !tbaa !343
  %527 = icmp eq ptr %526, null
  %528 = select i1 %527, i1 true, i1 %304
  br i1 %528, label %538, label %529

529:                                              ; preds = %525
  %530 = load ptr, ptr %354, align 8, !tbaa !59
  br label %531

531:                                              ; preds = %529, %531
  %532 = phi ptr [ %536, %531 ], [ %530, %529 ]
  %533 = phi i32 [ %535, %531 ], [ 0, %529 ]
  %534 = load ptr, ptr %187, align 8, !tbaa !343
  call void @calc_latt_deform(ptr noundef %534, ptr noundef %532, float noundef 1.000000e+00) #17
  %535 = add nuw i32 %533, 1
  %536 = getelementptr inbounds %struct.ParticleCacheKey, ptr %532, i64 1
  %537 = icmp eq i32 %533, %68
  br i1 %537, label %538, label %531, !llvm.loop !405

538:                                              ; preds = %531, %525, %452
  br i1 %305, label %578, label %539

539:                                              ; preds = %538
  %540 = load ptr, ptr %354, align 8, !tbaa !59
  br label %541

541:                                              ; preds = %539, %572
  %542 = phi ptr [ %544, %572 ], [ %540, %539 ]
  %543 = phi i32 [ %576, %572 ], [ 1, %539 ]
  %544 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1
  %545 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 -1
  call fastcc void @cache_key_incremental_rotation(ptr noundef nonnull %544, ptr noundef nonnull %542, ptr noundef nonnull %545, ptr noundef nonnull %8, i32 noundef %543)
  %546 = icmp eq i32 %543, %68
  br i1 %546, label %547, label %550

547:                                              ; preds = %541
  %548 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1, i32 2
  %549 = getelementptr %struct.ParticleCacheKey, ptr %542, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %548, ptr noundef %549) #17
  br label %550

550:                                              ; preds = %547, %541
  %551 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1, i32 1
  %552 = load float, ptr %544, align 4, !tbaa !34
  %553 = load float, ptr %542, align 4, !tbaa !34
  %554 = fsub float %552, %553
  store float %554, ptr %551, align 4, !tbaa !34
  %555 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1, i32 0, i64 1
  %556 = load float, ptr %555, align 4, !tbaa !34
  %557 = getelementptr inbounds float, ptr %542, i64 1
  %558 = load float, ptr %557, align 4, !tbaa !34
  %559 = fsub float %556, %558
  %560 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1, i32 1, i64 1
  store float %559, ptr %560, align 4, !tbaa !34
  %561 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1, i32 0, i64 2
  %562 = load float, ptr %561, align 4, !tbaa !34
  %563 = getelementptr inbounds float, ptr %542, i64 2
  %564 = load float, ptr %563, align 4, !tbaa !34
  %565 = fsub float %562, %564
  %566 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1, i32 1, i64 2
  store float %565, ptr %566, align 4, !tbaa !34
  %567 = icmp eq i32 %543, 1
  br i1 %567, label %568, label %572

568:                                              ; preds = %550
  %569 = getelementptr %struct.ParticleCacheKey, ptr %542, i64 0, i32 1
  store float %554, ptr %569, align 4, !tbaa !34
  %570 = getelementptr %struct.ParticleCacheKey, ptr %542, i64 0, i32 1, i64 1
  store float %559, ptr %570, align 4, !tbaa !34
  %571 = getelementptr %struct.ParticleCacheKey, ptr %542, i64 0, i32 1, i64 2
  store float %565, ptr %571, align 4, !tbaa !34
  br label %572

572:                                              ; preds = %568, %550
  %573 = sitofp i32 %543 to float
  %574 = fdiv float %573, %306
  %575 = getelementptr inbounds %struct.ParticleCacheKey, ptr %542, i64 1, i32 4
  store float %574, ptr %575, align 4, !tbaa !377
  %576 = add nuw i32 %543, 1
  %577 = icmp eq i32 %543, %68
  br i1 %577, label %578, label %541, !llvm.loop !406

578:                                              ; preds = %572, %538
  %579 = load ptr, ptr %354, align 8, !tbaa !59
  %580 = getelementptr inbounds %struct.ParticleCacheKey, ptr %579, i64 0, i32 2
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %580, ptr noundef nonnull %10) #17
  br label %581

581:                                              ; preds = %307, %578, %413
  %582 = phi float [ %310, %307 ], [ %345, %413 ], [ %345, %578 ]
  %583 = add nuw nsw i64 %308, 1
  %584 = getelementptr inbounds %struct.ParticleData, ptr %309, i64 1
  %585 = load i32, ptr %69, align 8, !tbaa !43
  %586 = sext i32 %585 to i64
  %587 = icmp slt i64 %583, %586
  br i1 %587, label %307, label %588, !llvm.loop !407

588:                                              ; preds = %581, %242
  %589 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 29
  store i32 %70, ptr %589, align 4, !tbaa !162
  %590 = load ptr, ptr %187, align 8, !tbaa !343
  %591 = icmp eq ptr %590, null
  br i1 %591, label %593, label %592

592:                                              ; preds = %588
  call void @end_latt_deform(ptr noundef nonnull %590) #17
  store ptr null, ptr %187, align 8, !tbaa !343
  br label %593

593:                                              ; preds = %592, %588
  %594 = icmp eq ptr %234, null
  br i1 %594, label %597, label %595

595:                                              ; preds = %593
  %596 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %596(ptr noundef nonnull %234) #17
  br label %597

597:                                              ; preds = %595, %593
  %598 = icmp eq ptr %235, null
  br i1 %598, label %601, label %599

599:                                              ; preds = %597
  %600 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %600(ptr noundef nonnull %235) #17
  br label %601

601:                                              ; preds = %597, %599, %127, %75
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_get_texture(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !220
  %14 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  %19 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 14
  store float 1.000000e+00, ptr %19, align 4, !tbaa !408
  %20 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 13
  store float 1.000000e+00, ptr %20, align 4, !tbaa !409
  %21 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 12
  store float 1.000000e+00, ptr %21, align 4, !tbaa !410
  %22 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 11
  store float 1.000000e+00, ptr %22, align 4, !tbaa !379
  %23 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 10
  store float 1.000000e+00, ptr %23, align 4, !tbaa !411
  %24 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 9
  store float 1.000000e+00, ptr %24, align 4, !tbaa !412
  %25 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 8
  store float 1.000000e+00, ptr %25, align 4, !tbaa !383
  %26 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 7
  store float 1.000000e+00, ptr %26, align 4, !tbaa !413
  %27 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 6
  store float 1.000000e+00, ptr %27, align 4, !tbaa !414
  %28 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 5
  store float 1.000000e+00, ptr %28, align 4, !tbaa !415
  %29 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 4
  store float 1.000000e+00, ptr %29, align 4, !tbaa !416
  %30 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 3
  store float 1.000000e+00, ptr %30, align 4, !tbaa !372
  %31 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 2
  store float 1.000000e+00, ptr %31, align 4, !tbaa !417
  store float 1.000000e+00, ptr %2, align 4, !tbaa !418
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = ptrtoint ptr %1 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 200
  %38 = sitofp i64 %37 to float
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 26
  %40 = load i32, ptr %39, align 8, !tbaa !43
  %41 = sitofp i32 %40 to float
  %42 = fdiv float %38, %41
  %43 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 1
  store float %42, ptr %43, align 4, !tbaa !419
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 8
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 9
  %46 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %47 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  %48 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %49 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %51 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %52 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  %53 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %54 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  %55 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 10
  %56 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  %57 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 12
  %58 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 1
  %59 = getelementptr inbounds float, ptr %8, i64 1
  %60 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11, i64 2
  %61 = getelementptr inbounds float, ptr %8, i64 2
  %62 = getelementptr inbounds float, ptr %9, i64 1
  %63 = getelementptr inbounds float, ptr %9, i64 2
  %64 = getelementptr inbounds float, ptr %8, i64 1
  %65 = getelementptr inbounds float, ptr %8, i64 2
  %66 = getelementptr inbounds float, ptr %9, i64 1
  %67 = getelementptr inbounds float, ptr %9, i64 2
  %68 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 2
  %69 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 33
  %70 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 33, i64 1
  %71 = getelementptr inbounds float, ptr %9, i64 1
  %72 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 33, i64 2
  %73 = getelementptr inbounds float, ptr %9, i64 2
  %74 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 34
  %75 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 34, i64 1
  %76 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 34, i64 2
  %77 = getelementptr inbounds float, ptr %1, i64 1
  %78 = getelementptr inbounds float, ptr %9, i64 1
  %79 = getelementptr inbounds float, ptr %1, i64 2
  %80 = getelementptr inbounds float, ptr %9, i64 2
  %81 = getelementptr inbounds float, ptr %1, i64 1
  %82 = getelementptr inbounds float, ptr %9, i64 1
  %83 = getelementptr inbounds float, ptr %1, i64 2
  %84 = getelementptr inbounds float, ptr %9, i64 2
  %85 = getelementptr inbounds float, ptr %7, i64 1
  %86 = getelementptr inbounds float, ptr %7, i64 2
  %87 = getelementptr inbounds float, ptr %7, i64 3
  %88 = and i32 %3, 1
  %89 = and i32 %3, 2
  %90 = and i32 %3, 4
  %91 = and i32 %3, 8
  %92 = and i32 %3, 32
  %93 = and i32 %3, 64
  %94 = and i32 %3, 1024
  %95 = and i32 %3, 2048
  %96 = and i32 %3, 16
  br label %97

97:                                               ; preds = %5, %368
  %98 = phi ptr [ %18, %5 ], [ %371, %368 ]
  %99 = phi i32 [ 0, %5 ], [ %370, %368 ]
  %100 = phi i32 [ 0, %5 ], [ %369, %368 ]
  %101 = load ptr, ptr %98, align 8, !tbaa !59
  %102 = icmp eq ptr %101, null
  br i1 %102, label %368, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !139
  %106 = icmp eq ptr %105, null
  br i1 %106, label %368, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !420
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %368, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 26
  %113 = load float, ptr %112, align 4, !tbaa !421
  %114 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 3
  %115 = load i16, ptr %114, align 2, !tbaa !422
  %116 = load i16, ptr %101, align 8, !tbaa !423
  %117 = icmp eq i16 %116, 16
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load i16, ptr %44, align 2, !tbaa !284
  %120 = add i16 %119, -1
  %121 = icmp ult i16 %120, 2
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i16, ptr %45, align 4, !tbaa !283
  %124 = icmp eq i16 %123, 2
  br i1 %124, label %125, label %126

125:                                              ; preds = %118, %122
  br label %126

126:                                              ; preds = %125, %122, %111
  %127 = phi i16 [ 8, %125 ], [ %116, %122 ], [ %116, %111 ]
  switch i16 %127, label %240 [
    i16 8, label %128
    i16 32, label %132
    i16 16, label %141
    i16 1, label %148
    i16 8192, label %215
  ]

128:                                              ; preds = %126
  %129 = load float, ptr %1, align 4, !tbaa !34
  store float %129, ptr %9, align 4, !tbaa !34
  %130 = load float, ptr %81, align 4, !tbaa !34
  store float %130, ptr %82, align 4, !tbaa !34
  %131 = load float, ptr %83, align 4, !tbaa !34
  store float %131, ptr %84, align 4, !tbaa !34
  br label %240

132:                                              ; preds = %126
  %133 = load float, ptr %1, align 4, !tbaa !34
  store float %133, ptr %9, align 4, !tbaa !34
  %134 = load float, ptr %77, align 4, !tbaa !34
  store float %134, ptr %78, align 4, !tbaa !34
  %135 = load float, ptr %79, align 4, !tbaa !34
  store float %135, ptr %80, align 4, !tbaa !34
  %136 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 4
  %137 = load ptr, ptr %136, align 8, !tbaa !424
  %138 = icmp eq ptr %137, null
  br i1 %138, label %240, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %140, ptr noundef nonnull %9) #17
  br label %240

141:                                              ; preds = %126
  %142 = load ptr, ptr %51, align 8, !tbaa !285
  %143 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !199
  %145 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 6
  %146 = call fastcc i32 @get_particle_uv(ptr noundef %144, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %52, ptr noundef nonnull %145, ptr noundef nonnull %9), !range !403
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %240

148:                                              ; preds = %141, %126
  %149 = load ptr, ptr %53, align 8, !tbaa !285
  %150 = load ptr, ptr %14, align 8, !tbaa !66
  %151 = getelementptr inbounds %struct.ParticleSystem, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !49
  %153 = getelementptr inbounds %struct.ParticleSettings, ptr %152, i64 0, i32 8
  %154 = load i16, ptr %153, align 2, !tbaa !284
  %155 = sext i16 %154 to i32
  %156 = load i32, ptr %54, align 8, !tbaa !281
  %157 = load i32, ptr %55, align 4, !tbaa !282
  %158 = load float, ptr %57, align 8, !tbaa !286
  %159 = icmp eq ptr %149, null
  br i1 %159, label %181, label %160

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %149, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !199
  %163 = icmp eq ptr %162, null
  br i1 %163, label %181, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %149, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !100
  %167 = getelementptr inbounds %struct.ParticleSystem, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !49
  %169 = getelementptr inbounds %struct.ParticleSettings, ptr %168, i64 0, i32 9
  %170 = load i16, ptr %169, align 4, !tbaa !283
  %171 = icmp eq i16 %170, 2
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.ParticleSettings, ptr %168, i64 0, i32 8
  %174 = load i16, ptr %173, align 2, !tbaa !284
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load float, ptr %56, align 4, !tbaa !34
  store float %177, ptr %8, align 4, !tbaa !34
  %178 = load float, ptr %58, align 4, !tbaa !34
  store float %178, ptr %59, align 4, !tbaa !34
  %179 = load float, ptr %60, align 4, !tbaa !34
  store float %179, ptr %61, align 4, !tbaa !34
  store float %177, ptr %9, align 4, !tbaa !34
  store float %178, ptr %62, align 4, !tbaa !34
  store float %179, ptr %63, align 4, !tbaa !34
  br label %182

180:                                              ; preds = %172, %164
  call void @psys_particle_on_dm(ptr noundef nonnull %162, i32 noundef %155, i32 noundef %156, i32 noundef %157, ptr noundef nonnull %56, float noundef %158, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null)
  br label %182

181:                                              ; preds = %160, %148
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %64, align 4, !tbaa !34
  store float 0.000000e+00, ptr %65, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %66, align 4, !tbaa !34
  store float 0.000000e+00, ptr %67, align 4, !tbaa !34
  br label %182

182:                                              ; preds = %176, %180, %181
  %183 = load ptr, ptr %68, align 8, !tbaa !425
  %184 = icmp eq ptr %183, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.BoundBox, ptr %183, i64 0, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !426
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185, %182
  call void @BKE_mesh_texspace_calc(ptr noundef %13) #17
  br label %191

191:                                              ; preds = %190, %185
  %192 = load float, ptr %69, align 4, !tbaa !34
  %193 = load float, ptr %9, align 4, !tbaa !34
  %194 = fsub float %193, %192
  store float %194, ptr %9, align 4, !tbaa !34
  %195 = load float, ptr %70, align 4, !tbaa !34
  %196 = load float, ptr %71, align 4, !tbaa !34
  %197 = fsub float %196, %195
  store float %197, ptr %71, align 4, !tbaa !34
  %198 = load float, ptr %72, align 4, !tbaa !34
  %199 = load float, ptr %73, align 4, !tbaa !34
  %200 = fsub float %199, %198
  store float %200, ptr %73, align 4, !tbaa !34
  %201 = load float, ptr %74, align 8, !tbaa !34
  %202 = fcmp une float %201, 0.000000e+00
  br i1 %202, label %203, label %205

203:                                              ; preds = %191
  %204 = fdiv float %194, %201
  store float %204, ptr %9, align 4, !tbaa !34
  br label %205

205:                                              ; preds = %203, %191
  %206 = load float, ptr %75, align 4, !tbaa !34
  %207 = fcmp une float %206, 0.000000e+00
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = fdiv float %197, %206
  store float %209, ptr %71, align 4, !tbaa !34
  br label %210

210:                                              ; preds = %208, %205
  %211 = load float, ptr %76, align 8, !tbaa !34
  %212 = fcmp une float %211, 0.000000e+00
  br i1 %212, label %213, label %240

213:                                              ; preds = %210
  %214 = fdiv float %200, %211
  store float %214, ptr %73, align 4, !tbaa !34
  br label %240

215:                                              ; preds = %126
  %216 = load float, ptr %46, align 4, !tbaa !428
  %217 = fsub float %4, %216
  %218 = fmul float %217, 2.000000e+00
  %219 = load float, ptr %47, align 4, !tbaa !429
  %220 = fsub float %219, %216
  %221 = fdiv float %218, %220
  %222 = fadd float %221, -1.000000e+00
  store float %222, ptr %9, align 4, !tbaa !34
  %223 = load ptr, ptr %14, align 8, !tbaa !66
  %224 = getelementptr inbounds %struct.ParticleSystem, ptr %223, i64 0, i32 26
  %225 = load i32, ptr %224, align 8, !tbaa !43
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %215
  %228 = getelementptr inbounds %struct.ParticleSystem, ptr %223, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !48
  %230 = ptrtoint ptr %229 to i64
  %231 = sub i64 %34, %230
  %232 = sdiv exact i64 %231, 200
  %233 = sitofp i64 %232 to float
  %234 = fmul float %233, 2.000000e+00
  %235 = sitofp i32 %225 to float
  %236 = fdiv float %234, %235
  %237 = fadd float %236, -1.000000e+00
  store float %237, ptr %49, align 4, !tbaa !34
  br label %239

238:                                              ; preds = %215
  store float 0.000000e+00, ptr %48, align 4, !tbaa !34
  br label %239

239:                                              ; preds = %238, %227
  store float 0.000000e+00, ptr %50, align 4, !tbaa !34
  br label %240

240:                                              ; preds = %210, %213, %141, %132, %139, %126, %239, %128
  %241 = call i32 @externtex(ptr noundef nonnull %101, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %85, ptr noundef nonnull %86, ptr noundef nonnull %87, i32 noundef 0, ptr noundef null) #17
  %242 = load i16, ptr %108, align 2, !tbaa !420
  %243 = zext i16 %242 to i32
  %244 = and i32 %88, %243
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %271, label %246

246:                                              ; preds = %240
  %247 = and i32 %100, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 49
  %251 = load float, ptr %250, align 8, !tbaa !430
  %252 = fcmp olt float %251, 0.000000e+00
  %253 = call float @llvm.fabs.f32(float %251)
  %254 = fsub float 1.000000e+00, %253
  %255 = load float, ptr %43, align 4, !tbaa !419
  %256 = fmul float %255, %254
  store float %256, ptr %43, align 4, !tbaa !419
  %257 = load float, ptr %6, align 4
  %258 = fsub float 1.000000e+00, %257
  %259 = select i1 %252, float %258, float %257
  %260 = call float @llvm.fmuladd.f32(float %253, float %259, float %256)
  br label %268

261:                                              ; preds = %246
  %262 = load float, ptr %43, align 4, !tbaa !419
  %263 = load float, ptr %6, align 4, !tbaa !34
  %264 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 49
  %265 = load float, ptr %264, align 8, !tbaa !430
  %266 = sext i16 %115 to i32
  %267 = call float @texture_value_blend(float noundef %113, float noundef %262, float noundef %263, float noundef %265, i32 noundef %266) #17
  br label %268

268:                                              ; preds = %261, %249
  %269 = phi float [ %260, %249 ], [ %267, %261 ]
  %270 = phi i32 [ 1, %249 ], [ %100, %261 ]
  store float %269, ptr %43, align 4, !tbaa !419
  br label %271

271:                                              ; preds = %268, %240
  %272 = phi i32 [ %100, %240 ], [ %270, %268 ]
  %273 = load i16, ptr %108, align 2, !tbaa !420
  %274 = zext i16 %273 to i32
  %275 = and i32 %89, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %271
  %278 = load float, ptr %31, align 4, !tbaa !417
  %279 = load float, ptr %6, align 4, !tbaa !34
  %280 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 57
  %281 = load float, ptr %280, align 8, !tbaa !431
  %282 = sext i16 %115 to i32
  %283 = call float @texture_value_blend(float noundef %113, float noundef %278, float noundef %279, float noundef %281, i32 noundef %282) #17
  store float %283, ptr %31, align 4, !tbaa !417
  br label %284

284:                                              ; preds = %277, %271
  %285 = load i16, ptr %108, align 2, !tbaa !420
  %286 = zext i16 %285 to i32
  %287 = and i32 %90, %286
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %284
  %290 = load float, ptr %30, align 4, !tbaa !372
  %291 = load float, ptr %6, align 4, !tbaa !34
  %292 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 55
  %293 = load float, ptr %292, align 8, !tbaa !432
  %294 = sext i16 %115 to i32
  %295 = call float @texture_value_blend(float noundef %113, float noundef %290, float noundef %291, float noundef %293, i32 noundef %294) #17
  store float %295, ptr %30, align 4, !tbaa !372
  br label %296

296:                                              ; preds = %289, %284
  %297 = load i16, ptr %108, align 2, !tbaa !420
  %298 = zext i16 %297 to i32
  %299 = and i32 %91, %298
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %296
  %302 = load float, ptr %29, align 4, !tbaa !416
  %303 = load float, ptr %6, align 4, !tbaa !34
  %304 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 58
  %305 = load float, ptr %304, align 4, !tbaa !433
  %306 = sext i16 %115 to i32
  %307 = call float @texture_value_blend(float noundef %113, float noundef %302, float noundef %303, float noundef %305, i32 noundef %306) #17
  store float %307, ptr %29, align 4, !tbaa !416
  br label %308

308:                                              ; preds = %301, %296
  %309 = load i16, ptr %108, align 2, !tbaa !420
  %310 = zext i16 %309 to i32
  %311 = and i32 %92, %310
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %308
  %314 = load float, ptr %2, align 4, !tbaa !418
  %315 = load float, ptr %6, align 4, !tbaa !34
  %316 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 59
  %317 = load float, ptr %316, align 8, !tbaa !434
  %318 = sext i16 %115 to i32
  %319 = call float @texture_value_blend(float noundef %113, float noundef %314, float noundef %315, float noundef %317, i32 noundef %318) #17
  store float %319, ptr %2, align 4, !tbaa !418
  br label %320

320:                                              ; preds = %313, %308
  %321 = load i16, ptr %108, align 2, !tbaa !420
  %322 = zext i16 %321 to i32
  %323 = and i32 %93, %322
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %320
  %326 = load float, ptr %26, align 4, !tbaa !413
  %327 = load float, ptr %6, align 4, !tbaa !34
  %328 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 60
  %329 = load float, ptr %328, align 4, !tbaa !435
  %330 = sext i16 %115 to i32
  %331 = call float @texture_value_blend(float noundef %113, float noundef %326, float noundef %327, float noundef %329, i32 noundef %330) #17
  store float %331, ptr %26, align 4, !tbaa !413
  br label %332

332:                                              ; preds = %325, %320
  %333 = load i16, ptr %108, align 2, !tbaa !420
  %334 = zext i16 %333 to i32
  %335 = and i32 %94, %334
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %344, label %337

337:                                              ; preds = %332
  %338 = load float, ptr %27, align 4, !tbaa !414
  %339 = load float, ptr %6, align 4, !tbaa !34
  %340 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 56
  %341 = load float, ptr %340, align 4, !tbaa !436
  %342 = sext i16 %115 to i32
  %343 = call float @texture_value_blend(float noundef %113, float noundef %338, float noundef %339, float noundef %341, i32 noundef %342) #17
  store float %343, ptr %27, align 4, !tbaa !414
  br label %344

344:                                              ; preds = %337, %332
  %345 = load i16, ptr %108, align 2, !tbaa !420
  %346 = zext i16 %345 to i32
  %347 = and i32 %95, %346
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %344
  %350 = load float, ptr %28, align 4, !tbaa !415
  %351 = load float, ptr %6, align 4, !tbaa !34
  %352 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 52
  %353 = load float, ptr %352, align 4, !tbaa !437
  %354 = sext i16 %115 to i32
  %355 = call float @texture_value_blend(float noundef %113, float noundef %350, float noundef %351, float noundef %353, i32 noundef %354) #17
  store float %355, ptr %28, align 4, !tbaa !415
  br label %356

356:                                              ; preds = %349, %344
  %357 = load i16, ptr %108, align 2, !tbaa !420
  %358 = zext i16 %357 to i32
  %359 = and i32 %96, %358
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %368, label %361

361:                                              ; preds = %356
  %362 = load float, ptr %25, align 4, !tbaa !383
  %363 = load float, ptr %6, align 4, !tbaa !34
  %364 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 50
  %365 = load float, ptr %364, align 4, !tbaa !438
  %366 = sext i16 %115 to i32
  %367 = call float @texture_value_blend(float noundef %113, float noundef %362, float noundef %363, float noundef %365, i32 noundef %366) #17
  store float %367, ptr %25, align 4, !tbaa !383
  br label %368

368:                                              ; preds = %356, %361, %97, %103, %107
  %369 = phi i32 [ %100, %107 ], [ %100, %103 ], [ %100, %97 ], [ %272, %361 ], [ %272, %356 ]
  %370 = add nuw nsw i32 %99, 1
  %371 = getelementptr inbounds ptr, ptr %98, i64 1
  %372 = icmp eq i32 %370, 18
  br i1 %372, label %373, label %97, !llvm.loop !439

373:                                              ; preds = %368
  %374 = and i32 %3, 1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %388, label %376

376:                                              ; preds = %373
  %377 = load float, ptr %43, align 4, !tbaa !419
  %378 = fcmp olt float %377, 0.000000e+00
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = fadd float %377, 1.000000e+00
  store float %380, ptr %43, align 4, !tbaa !419
  br label %381

381:                                              ; preds = %379, %376
  %382 = load float, ptr %43, align 4, !tbaa !419
  %383 = fcmp olt float %382, 0.000000e+00
  br i1 %383, label %386, label %384

384:                                              ; preds = %381
  %385 = fcmp ogt float %382, 1.000000e+00
  br i1 %385, label %386, label %388

386:                                              ; preds = %384, %381
  %387 = phi float [ 0.000000e+00, %381 ], [ 1.000000e+00, %384 ]
  store float %387, ptr %43, align 4, !tbaa !419
  br label %388

388:                                              ; preds = %386, %384, %373
  %389 = and i32 %3, 2
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %403, label %391

391:                                              ; preds = %388
  %392 = load float, ptr %31, align 4, !tbaa !417
  %393 = fcmp olt float %392, 0.000000e+00
  br i1 %393, label %394, label %396

394:                                              ; preds = %391
  %395 = fadd float %392, 1.000000e+00
  store float %395, ptr %31, align 4, !tbaa !417
  br label %396

396:                                              ; preds = %394, %391
  %397 = load float, ptr %31, align 4, !tbaa !417
  %398 = fcmp olt float %397, 0.000000e+00
  br i1 %398, label %401, label %399

399:                                              ; preds = %396
  %400 = fcmp ogt float %397, 1.000000e+00
  br i1 %400, label %401, label %403

401:                                              ; preds = %399, %396
  %402 = phi float [ 0.000000e+00, %396 ], [ 1.000000e+00, %399 ]
  store float %402, ptr %31, align 4, !tbaa !417
  br label %403

403:                                              ; preds = %401, %399, %388
  %404 = and i32 %3, 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %418, label %406

406:                                              ; preds = %403
  %407 = load float, ptr %30, align 4, !tbaa !372
  %408 = fcmp olt float %407, 0.000000e+00
  br i1 %408, label %409, label %411

409:                                              ; preds = %406
  %410 = fadd float %407, 1.000000e+00
  store float %410, ptr %30, align 4, !tbaa !372
  br label %411

411:                                              ; preds = %409, %406
  %412 = load float, ptr %30, align 4, !tbaa !372
  %413 = fcmp olt float %412, 0.000000e+00
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  %415 = fcmp ogt float %412, 1.000000e+00
  br i1 %415, label %416, label %418

416:                                              ; preds = %414, %411
  %417 = phi float [ 0.000000e+00, %411 ], [ 1.000000e+00, %414 ]
  store float %417, ptr %30, align 4, !tbaa !372
  br label %418

418:                                              ; preds = %416, %414, %403
  %419 = and i32 %3, 8
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %433, label %421

421:                                              ; preds = %418
  %422 = load float, ptr %29, align 4, !tbaa !416
  %423 = fcmp olt float %422, 0.000000e+00
  br i1 %423, label %424, label %426

424:                                              ; preds = %421
  %425 = fadd float %422, 1.000000e+00
  store float %425, ptr %29, align 4, !tbaa !416
  br label %426

426:                                              ; preds = %424, %421
  %427 = load float, ptr %29, align 4, !tbaa !416
  %428 = fcmp olt float %427, 0.000000e+00
  br i1 %428, label %431, label %429

429:                                              ; preds = %426
  %430 = fcmp ogt float %427, 1.000000e+00
  br i1 %430, label %431, label %433

431:                                              ; preds = %429, %426
  %432 = phi float [ 0.000000e+00, %426 ], [ 1.000000e+00, %429 ]
  store float %432, ptr %29, align 4, !tbaa !416
  br label %433

433:                                              ; preds = %431, %429, %418
  %434 = and i32 %3, 32
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %443, label %436

436:                                              ; preds = %433
  %437 = load float, ptr %2, align 4, !tbaa !418
  %438 = fcmp olt float %437, -1.000000e+00
  br i1 %438, label %441, label %439

439:                                              ; preds = %436
  %440 = fcmp ogt float %437, 1.000000e+00
  br i1 %440, label %441, label %443

441:                                              ; preds = %439, %436
  %442 = phi float [ -1.000000e+00, %436 ], [ 1.000000e+00, %439 ]
  store float %442, ptr %2, align 4, !tbaa !418
  br label %443

443:                                              ; preds = %441, %439, %433
  %444 = and i32 %3, 64
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %453, label %446

446:                                              ; preds = %443
  %447 = load float, ptr %26, align 4, !tbaa !413
  %448 = fcmp olt float %447, -1.000000e+00
  br i1 %448, label %451, label %449

449:                                              ; preds = %446
  %450 = fcmp ogt float %447, 1.000000e+00
  br i1 %450, label %451, label %453

451:                                              ; preds = %449, %446
  %452 = phi float [ -1.000000e+00, %446 ], [ 1.000000e+00, %449 ]
  store float %452, ptr %26, align 4, !tbaa !413
  br label %453

453:                                              ; preds = %451, %449, %443
  %454 = and i32 %3, 1024
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %463, label %456

456:                                              ; preds = %453
  %457 = load float, ptr %27, align 4, !tbaa !414
  %458 = fcmp olt float %457, -1.000000e+00
  br i1 %458, label %461, label %459

459:                                              ; preds = %456
  %460 = fcmp ogt float %457, 1.000000e+00
  br i1 %460, label %461, label %463

461:                                              ; preds = %459, %456
  %462 = phi float [ -1.000000e+00, %456 ], [ 1.000000e+00, %459 ]
  store float %462, ptr %27, align 4, !tbaa !414
  br label %463

463:                                              ; preds = %461, %459, %453
  %464 = and i32 %3, 2048
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %478, label %466

466:                                              ; preds = %463
  %467 = load float, ptr %28, align 4, !tbaa !415
  %468 = fcmp olt float %467, 0.000000e+00
  br i1 %468, label %469, label %471

469:                                              ; preds = %466
  %470 = fadd float %467, 1.000000e+00
  store float %470, ptr %28, align 4, !tbaa !415
  br label %471

471:                                              ; preds = %469, %466
  %472 = load float, ptr %28, align 4, !tbaa !415
  %473 = fcmp olt float %472, 0.000000e+00
  br i1 %473, label %476, label %474

474:                                              ; preds = %471
  %475 = fcmp ogt float %472, 1.000000e+00
  br i1 %475, label %476, label %478

476:                                              ; preds = %474, %471
  %477 = phi float [ 0.000000e+00, %471 ], [ 1.000000e+00, %474 ]
  store float %477, ptr %28, align 4, !tbaa !415
  br label %478

478:                                              ; preds = %476, %474, %463
  %479 = and i32 %3, 16
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %493, label %481

481:                                              ; preds = %478
  %482 = load float, ptr %25, align 4, !tbaa !383
  %483 = fcmp olt float %482, 0.000000e+00
  br i1 %483, label %484, label %486

484:                                              ; preds = %481
  %485 = fadd float %482, 1.000000e+00
  store float %485, ptr %25, align 4, !tbaa !383
  br label %486

486:                                              ; preds = %484, %481
  %487 = load float, ptr %25, align 4, !tbaa !383
  %488 = fcmp olt float %487, 0.000000e+00
  br i1 %488, label %491, label %489

489:                                              ; preds = %486
  %490 = fcmp ogt float %487, 1.000000e+00
  br i1 %490, label %491, label %493

491:                                              ; preds = %489, %486
  %492 = phi float [ 0.000000e+00, %486 ], [ 1.000000e+00, %489 ]
  store float %492, ptr %25, align 4, !tbaa !383
  br label %493

493:                                              ; preds = %491, %489, %478
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_particle_interpolation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !392
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !440
  %9 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 8
  store ptr %8, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !441
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %5, align 8, !tbaa !440
  %15 = getelementptr inbounds %struct.PTCacheEditKey, ptr %14, i64 1
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %15, %13 ], [ null, %7 ]
  %18 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 8, i64 1
  store ptr %17, ptr %18, align 8, !tbaa !59
  %19 = load ptr, ptr %5, align 8, !tbaa !440
  %20 = getelementptr inbounds %struct.PTCacheEditKey, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !442
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %22, ptr %23, align 8, !tbaa !395
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds %struct.PTCacheEditKey, ptr %19, i64 %24
  %26 = getelementptr %struct.PTCacheEditKey, ptr %25, i64 -1, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !442
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %28, ptr %29, align 4, !tbaa !397
  br label %155

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !389
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !154
  %37 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !146
  %40 = icmp sgt i32 %39, 1
  %41 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 1
  %42 = select i1 %40, ptr %41, ptr null
  %43 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 4, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !59
  %44 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 4
  %45 = load float, ptr %44, align 4, !tbaa !399
  %46 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %45, ptr %46, align 8, !tbaa !395
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 %47
  %49 = getelementptr %struct.ParticleKey, ptr %48, i64 -1, i32 4
  %50 = load float, ptr %49, align 4, !tbaa !399
  %51 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %50, ptr %51, align 4, !tbaa !397
  br label %155

52:                                               ; preds = %30
  %53 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !391
  %55 = icmp eq ptr %54, null
  br i1 %55, label %130, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 6
  %58 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 20
  %59 = load ptr, ptr %58, align 8, !tbaa !386
  store ptr %59, ptr %57, align 8, !tbaa !59
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %59, align 8, !tbaa !444
  store ptr %62, ptr %57, align 8, !tbaa !59
  br label %63

63:                                               ; preds = %56, %61
  %64 = icmp eq ptr %1, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %67 = load float, ptr %66, align 4, !tbaa !428
  br label %72

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 5
  %70 = load i32, ptr %69, align 4, !tbaa !445
  %71 = sitofp i32 %70 to float
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi float [ %67, %65 ], [ %71, %68 ]
  %74 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %73, ptr %74, align 8, !tbaa !395
  br i1 %64, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  %77 = load float, ptr %76, align 4, !tbaa !429
  br label %82

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !446
  %81 = sitofp i32 %80 to float
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi float [ %77, %75 ], [ %81, %78 ]
  %84 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %83, ptr %84, align 4, !tbaa !397
  %85 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !48
  %87 = ptrtoint ptr %1 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 200
  %91 = trunc i64 %90 to i32
  br label %92

92:                                               ; preds = %96, %82
  %93 = phi ptr [ %58, %82 ], [ %94, %96 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !59
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %94, i32 noundef %91) #17
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %92, !llvm.loop !447

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.PTCacheMem, ptr %94, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !261
  %102 = uitofp i32 %101 to float
  br label %103

103:                                              ; preds = %92, %99
  %104 = phi float [ %102, %99 ], [ 0.000000e+00, %92 ]
  %105 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 20, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  %107 = icmp eq ptr %106, null
  br i1 %107, label %120, label %108

108:                                              ; preds = %103, %116
  %109 = phi ptr [ %118, %116 ], [ %106, %103 ]
  %110 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %109, i32 noundef %91) #17
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.PTCacheMem, ptr %109, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !261
  %115 = uitofp i32 %114 to float
  br label %120

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.PTCacheMem, ptr %109, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !59
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %108, !llvm.loop !448

120:                                              ; preds = %116, %103, %112
  %121 = phi float [ %115, %112 ], [ 0.000000e+00, %103 ], [ 0.000000e+00, %116 ]
  %122 = phi i1 [ %95, %112 ], [ true, %103 ], [ true, %116 ]
  br i1 %122, label %155, label %123

123:                                              ; preds = %120
  %124 = load float, ptr %74, align 8, !tbaa !395
  %125 = fcmp ogt float %124, %104
  %126 = select i1 %125, float %124, float %104
  store float %126, ptr %74, align 8, !tbaa !395
  %127 = load float, ptr %84, align 4, !tbaa !397
  %128 = fcmp olt float %127, %121
  %129 = select i1 %128, float %127, float %121
  store float %129, ptr %84, align 4, !tbaa !397
  br label %155

130:                                              ; preds = %52
  %131 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !145
  store ptr %132, ptr %2, align 8, !tbaa !59
  %133 = getelementptr inbounds %struct.HairKey, ptr %132, i64 1
  %134 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 1
  store ptr %133, ptr %134, align 8, !tbaa !59
  %135 = getelementptr inbounds %struct.HairKey, ptr %132, i64 0, i32 1
  %136 = load float, ptr %135, align 4, !tbaa !449
  %137 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %136, ptr %137, align 8, !tbaa !395
  %138 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 5
  %139 = load i32, ptr %138, align 8, !tbaa !146
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.HairKey, ptr %132, i64 %140
  %142 = getelementptr %struct.HairKey, ptr %141, i64 -1, i32 1
  %143 = load float, ptr %142, align 4, !tbaa !449
  %144 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %143, ptr %144, align 4, !tbaa !397
  %145 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !394
  %147 = icmp eq ptr %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %130
  %149 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 16
  %150 = load i32, ptr %149, align 8, !tbaa !451
  %151 = tail call ptr @CDDM_get_vert(ptr noundef nonnull %146, i32 noundef %150) #17
  %152 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 2
  store ptr %151, ptr %152, align 8, !tbaa !59
  %153 = getelementptr inbounds %struct.MVert, ptr %151, i64 1
  %154 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 2, i64 1
  store ptr %153, ptr %154, align 8, !tbaa !59
  br label %155

155:                                              ; preds = %120, %123, %130, %148, %34, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_mat_hair_to_global(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @unit_m4(ptr noundef nonnull %7) #17
  br label %27

10:                                               ; preds = %5
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %7, i32 noundef 0)
  %11 = sext i16 %2 to i32
  %12 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !281
  %14 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !282
  %16 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 11
  %17 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 12
  %18 = load float, ptr %17, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %1, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %16, float noundef %18, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %19 = getelementptr inbounds [4 x float], ptr %7, i64 3
  %20 = load float, ptr %6, align 4, !tbaa !34
  store float %20, ptr %19, align 16, !tbaa !34
  %21 = getelementptr inbounds float, ptr %6, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %6, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 2
  store float %25, ptr %26, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %9, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %4, ptr noundef nonnull %28, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_particle_interpolation(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x %struct.ParticleKey], align 16
  %8 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !440
  %13 = getelementptr inbounds %struct.PTCacheEditKey, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !452
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  br i1 %10, label %58, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !399
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = fneg float %20
  br label %39

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.PTCacheEditKey, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !442
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %9, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !441
  %32 = sext i32 %31 to i64
  %33 = getelementptr %struct.PTCacheEditKey, ptr %26, i64 %32
  %34 = getelementptr %struct.PTCacheEditKey, ptr %33, i64 -1, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !442
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %36, %29
  %38 = tail call float @llvm.fmuladd.f32(float %3, float %37, float %29)
  br label %39

39:                                               ; preds = %24, %22
  %40 = phi float [ %23, %22 ], [ %38, %24 ]
  %41 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.PTCacheEditKey, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !442
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fcmp olt float %45, %40
  br i1 %46, label %47, label %54

47:                                               ; preds = %39, %47
  %48 = phi ptr [ %49, %47 ], [ %42, %39 ]
  %49 = getelementptr inbounds %struct.PTCacheEditKey, ptr %48, i64 1
  store ptr %49, ptr %41, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.PTCacheEditKey, ptr %48, i64 1, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !442
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = fcmp olt float %52, %40
  br i1 %53, label %47, label %54, !llvm.loop !453

54:                                               ; preds = %47, %39
  %55 = phi ptr [ %42, %39 ], [ %49, %47 ]
  %56 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %57 = getelementptr inbounds %struct.PTCacheEditKey, ptr %55, i64 -1
  store ptr %57, ptr %56, align 8, !tbaa !59
  br label %212

58:                                               ; preds = %16
  %59 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !389
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %158, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4
  %64 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %63, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %5, ptr noundef nonnull align 4 dereferenceable(56) %68, i64 56, i1 false)
  br label %727

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %71 = load float, ptr %70, align 4, !tbaa !399
  %72 = fcmp olt float %71, 0.000000e+00
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = fneg float %71
  br label %87

75:                                               ; preds = %69
  %76 = load ptr, ptr %63, align 8, !tbaa !59
  %77 = getelementptr inbounds %struct.ParticleKey, ptr %76, i64 0, i32 4
  %78 = load float, ptr %77, align 4, !tbaa !399
  %79 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !146
  %81 = sext i32 %80 to i64
  %82 = getelementptr %struct.ParticleKey, ptr %76, i64 %81
  %83 = getelementptr %struct.ParticleKey, ptr %82, i64 -1, i32 4
  %84 = load float, ptr %83, align 4, !tbaa !399
  %85 = fsub float %84, %78
  %86 = tail call float @llvm.fmuladd.f32(float %3, float %85, float %78)
  br label %87

87:                                               ; preds = %75, %73
  %88 = phi float [ %74, %73 ], [ %86, %75 ]
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !49
  %91 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 11
  %92 = load i16, ptr %91, align 8, !tbaa !454
  %93 = icmp eq i16 %92, 2
  br i1 %93, label %94, label %132

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %96 = load i32, ptr %95, align 4, !tbaa !60
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %132, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !455
  %102 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 6
  br label %103

103:                                              ; preds = %107, %99
  %104 = phi ptr [ %101, %99 ], [ %105, %107 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !456
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %103
  %108 = load float, ptr %102, align 4, !tbaa !428
  %109 = getelementptr inbounds %struct.ParticleTarget, ptr %105, i64 0, i32 6
  %110 = load float, ptr %109, align 8, !tbaa !458
  %111 = fadd float %108, %110
  %112 = fcmp olt float %111, %88
  br i1 %112, label %103, label %113, !llvm.loop !459

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.ParticleTarget, ptr %105, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !460
  %116 = getelementptr inbounds %struct.ParticleTarget, ptr %115, i64 0, i32 6
  %117 = load float, ptr %116, align 8, !tbaa !458
  %118 = fadd float %108, %117
  %119 = getelementptr inbounds %struct.ParticleTarget, ptr %115, i64 0, i32 7
  %120 = load float, ptr %119, align 4, !tbaa !461
  %121 = fadd float %118, %120
  %122 = fcmp ogt float %121, %88
  br i1 %122, label %123, label %132

123:                                              ; preds = %113
  br label %132

124:                                              ; preds = %103
  %125 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 6
  %126 = load float, ptr %125, align 4, !tbaa !428
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 17, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !462
  %129 = getelementptr inbounds %struct.ParticleTarget, ptr %128, i64 0, i32 6
  %130 = load float, ptr %129, align 8, !tbaa !458
  %131 = fadd float %126, %130
  br label %132

132:                                              ; preds = %124, %123, %113, %94, %87
  %133 = phi float [ %88, %94 ], [ %88, %87 ], [ %118, %123 ], [ %88, %113 ], [ %131, %124 ]
  %134 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 6
  %135 = load float, ptr %134, align 4, !tbaa !428
  %136 = fcmp olt float %133, %135
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 8
  %139 = load float, ptr %138, align 4, !tbaa !429
  %140 = fcmp ogt float %133, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %132, %137, %141
  %143 = phi float [ %139, %141 ], [ %133, %137 ], [ %135, %132 ]
  %144 = load ptr, ptr %64, align 8, !tbaa !59
  %145 = getelementptr inbounds %struct.ParticleKey, ptr %144, i64 0, i32 4
  %146 = load float, ptr %145, align 4, !tbaa !399
  %147 = fcmp olt float %146, %143
  br i1 %147, label %148, label %155

148:                                              ; preds = %142, %148
  %149 = phi ptr [ %150, %148 ], [ %144, %142 ]
  %150 = getelementptr inbounds %struct.ParticleKey, ptr %149, i64 1
  %151 = getelementptr inbounds %struct.ParticleKey, ptr %149, i64 1, i32 4
  %152 = load float, ptr %151, align 4, !tbaa !399
  %153 = fcmp olt float %152, %143
  br i1 %153, label %148, label %154, !llvm.loop !463

154:                                              ; preds = %148
  store ptr %150, ptr %64, align 8, !tbaa !59
  br label %155

155:                                              ; preds = %154, %142
  %156 = phi ptr [ %150, %154 ], [ %144, %142 ]
  %157 = getelementptr inbounds %struct.ParticleKey, ptr %156, i64 -1
  store ptr %157, ptr %63, align 8, !tbaa !59
  br label %212

158:                                              ; preds = %58
  %159 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !391
  %161 = icmp eq ptr %160, null
  %162 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %163 = load float, ptr %162, align 4, !tbaa !399
  %164 = fcmp olt float %163, 0.000000e+00
  br i1 %161, label %175, label %165

165:                                              ; preds = %158
  br i1 %164, label %166, label %168

166:                                              ; preds = %165
  %167 = fneg float %163
  br label %212

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 6
  %170 = load float, ptr %169, align 4, !tbaa !428
  %171 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 8
  %172 = load float, ptr %171, align 4, !tbaa !429
  %173 = fsub float %172, %170
  %174 = tail call float @llvm.fmuladd.f32(float %3, float %173, float %170)
  br label %212

175:                                              ; preds = %158
  br i1 %164, label %176, label %178

176:                                              ; preds = %175
  %177 = fneg float %163
  br label %190

178:                                              ; preds = %175
  %179 = load ptr, ptr %4, align 8, !tbaa !59
  %180 = getelementptr inbounds %struct.HairKey, ptr %179, i64 0, i32 1
  %181 = load float, ptr %180, align 4, !tbaa !449
  %182 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 5
  %183 = load i32, ptr %182, align 8, !tbaa !146
  %184 = sext i32 %183 to i64
  %185 = getelementptr %struct.HairKey, ptr %179, i64 %184
  %186 = getelementptr %struct.HairKey, ptr %185, i64 -1, i32 1
  %187 = load float, ptr %186, align 4, !tbaa !449
  %188 = fsub float %187, %181
  %189 = tail call float @llvm.fmuladd.f32(float %3, float %188, float %181)
  br label %190

190:                                              ; preds = %178, %176
  %191 = phi float [ %177, %176 ], [ %189, %178 ]
  %192 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !59
  %194 = getelementptr inbounds %struct.HairKey, ptr %193, i64 0, i32 1
  %195 = load float, ptr %194, align 4, !tbaa !449
  %196 = fcmp olt float %195, %191
  br i1 %196, label %197, label %209

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !59
  br label %200

200:                                              ; preds = %197, %200
  %201 = phi ptr [ %199, %197 ], [ %204, %200 ]
  %202 = phi ptr [ %193, %197 ], [ %203, %200 ]
  %203 = getelementptr inbounds %struct.HairKey, ptr %202, i64 1
  %204 = getelementptr inbounds %struct.MVert, ptr %201, i64 1
  %205 = getelementptr inbounds %struct.HairKey, ptr %202, i64 1, i32 1
  %206 = load float, ptr %205, align 4, !tbaa !449
  %207 = fcmp olt float %206, %191
  br i1 %207, label %200, label %208, !llvm.loop !464

208:                                              ; preds = %200
  store ptr %203, ptr %192, align 8, !tbaa !59
  store ptr %204, ptr %198, align 8, !tbaa !59
  br label %209

209:                                              ; preds = %208, %190
  %210 = phi ptr [ %203, %208 ], [ %193, %190 ]
  %211 = getelementptr inbounds %struct.HairKey, ptr %210, i64 -1
  store ptr %211, ptr %4, align 8, !tbaa !59
  br label %212

212:                                              ; preds = %155, %166, %168, %209, %54
  %213 = phi float [ %40, %54 ], [ %143, %155 ], [ %167, %166 ], [ %174, %168 ], [ %191, %209 ]
  br i1 %10, label %271, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %216 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %217 = load ptr, ptr %216, align 8, !tbaa !59
  %218 = load ptr, ptr %217, align 8, !tbaa !465
  %219 = load float, ptr %218, align 4, !tbaa !34
  store float %219, ptr %215, align 8, !tbaa !34
  %220 = getelementptr inbounds float, ptr %218, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !34
  %222 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 0, i64 1
  store float %221, ptr %222, align 4, !tbaa !34
  %223 = getelementptr inbounds float, ptr %218, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !34
  %225 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 0, i64 2
  store float %224, ptr %225, align 16, !tbaa !34
  %226 = getelementptr inbounds %struct.PTCacheEditKey, ptr %217, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !452
  %228 = icmp eq ptr %227, null
  br i1 %228, label %238, label %229

229:                                              ; preds = %214
  %230 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 1
  %231 = load float, ptr %227, align 4, !tbaa !34
  store float %231, ptr %230, align 4, !tbaa !34
  %232 = getelementptr inbounds float, ptr %227, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !34
  %234 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 1, i64 1
  store float %233, ptr %234, align 8, !tbaa !34
  %235 = getelementptr inbounds float, ptr %227, i64 2
  %236 = load float, ptr %235, align 4, !tbaa !34
  %237 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 1, i64 2
  store float %236, ptr %237, align 4, !tbaa !34
  br label %238

238:                                              ; preds = %214, %229
  %239 = getelementptr inbounds %struct.PTCacheEditKey, ptr %217, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !442
  %241 = load float, ptr %240, align 4, !tbaa !34
  %242 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 4
  store float %241, ptr %242, align 4, !tbaa !399
  %243 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %244 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !59
  %246 = load ptr, ptr %245, align 8, !tbaa !465
  %247 = load float, ptr %246, align 4, !tbaa !34
  store float %247, ptr %243, align 16, !tbaa !34
  %248 = getelementptr inbounds float, ptr %246, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !34
  %250 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 0, i64 1
  store float %249, ptr %250, align 4, !tbaa !34
  %251 = getelementptr inbounds float, ptr %246, i64 2
  %252 = load float, ptr %251, align 4, !tbaa !34
  %253 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 0, i64 2
  store float %252, ptr %253, align 8, !tbaa !34
  %254 = getelementptr inbounds %struct.PTCacheEditKey, ptr %245, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !452
  %256 = icmp eq ptr %255, null
  br i1 %256, label %266, label %257

257:                                              ; preds = %238
  %258 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 1
  %259 = load float, ptr %255, align 4, !tbaa !34
  store float %259, ptr %258, align 4, !tbaa !34
  %260 = getelementptr inbounds float, ptr %255, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !34
  %262 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 1, i64 1
  store float %261, ptr %262, align 16, !tbaa !34
  %263 = getelementptr inbounds float, ptr %255, i64 2
  %264 = load float, ptr %263, align 4, !tbaa !34
  %265 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 1, i64 2
  store float %264, ptr %265, align 4, !tbaa !34
  br label %266

266:                                              ; preds = %238, %257
  %267 = getelementptr inbounds %struct.PTCacheEditKey, ptr %245, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !442
  %269 = load float, ptr %268, align 4, !tbaa !34
  %270 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 4
  store float %269, ptr %270, align 4, !tbaa !399
  br label %409

271:                                              ; preds = %212
  %272 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !394
  %274 = icmp eq ptr %273, null
  br i1 %274, label %305, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2
  %277 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2, i64 1
  %278 = load ptr, ptr %277, align 8, !tbaa !59
  %279 = getelementptr inbounds %struct.MVert, ptr %278, i64 -1
  store ptr %279, ptr %276, align 8, !tbaa !59
  %280 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %281 = load ptr, ptr %4, align 8, !tbaa !59
  %282 = load float, ptr %279, align 4, !tbaa !34
  store float %282, ptr %280, align 8, !tbaa !34
  %283 = getelementptr %struct.MVert, ptr %278, i64 -1, i32 0, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !34
  %285 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 0, i64 1
  store float %284, ptr %285, align 4, !tbaa !34
  %286 = getelementptr %struct.MVert, ptr %278, i64 -1, i32 0, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !34
  %288 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 0, i64 2
  store float %287, ptr %288, align 16, !tbaa !34
  %289 = getelementptr inbounds %struct.HairKey, ptr %281, i64 0, i32 1
  %290 = load float, ptr %289, align 4, !tbaa !449
  %291 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 4
  store float %290, ptr %291, align 4, !tbaa !399
  %292 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %293 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !59
  %295 = load float, ptr %278, align 4, !tbaa !34
  store float %295, ptr %292, align 16, !tbaa !34
  %296 = getelementptr inbounds float, ptr %278, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !34
  %298 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 0, i64 1
  store float %297, ptr %298, align 4, !tbaa !34
  %299 = getelementptr inbounds float, ptr %278, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !34
  %301 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 0, i64 2
  store float %300, ptr %301, align 8, !tbaa !34
  %302 = getelementptr inbounds %struct.HairKey, ptr %294, i64 0, i32 1
  %303 = load float, ptr %302, align 4, !tbaa !449
  %304 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 4
  store float %303, ptr %304, align 4, !tbaa !399
  br label %409

305:                                              ; preds = %271
  %306 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 3
  %307 = load i32, ptr %306, align 8, !tbaa !389
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %311 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4
  %312 = load ptr, ptr %311, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %310, ptr noundef nonnull align 4 dereferenceable(56) %312, i64 56, i1 false)
  %313 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %314 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %313, ptr noundef nonnull align 4 dereferenceable(56) %315, i64 56, i1 false)
  br label %409

316:                                              ; preds = %305
  %317 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %318 = load ptr, ptr %317, align 8, !tbaa !391
  %319 = icmp eq ptr %318, null
  br i1 %319, label %383, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 6
  %322 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %323 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %324 = icmp slt i32 %1, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.PointCache, ptr %318, i64 0, i32 20
  %327 = load ptr, ptr %326, align 8, !tbaa !386
  store ptr %327, ptr %321, align 8, !tbaa !59
  %328 = icmp eq ptr %327, null
  br i1 %328, label %409, label %329

329:                                              ; preds = %325
  %330 = load ptr, ptr %327, align 8, !tbaa !444
  store ptr %330, ptr %321, align 8, !tbaa !59
  br label %409

331:                                              ; preds = %320
  %332 = load ptr, ptr %321, align 8, !tbaa !59
  %333 = icmp eq ptr %332, null
  br i1 %333, label %372, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %321, align 8, !tbaa !59
  %336 = icmp eq ptr %335, null
  br i1 %336, label %350, label %337

337:                                              ; preds = %334
  %338 = load ptr, ptr %335, align 8, !tbaa !444
  %339 = icmp eq ptr %338, null
  br i1 %339, label %350, label %340

340:                                              ; preds = %337, %347
  %341 = phi ptr [ %348, %347 ], [ %338, %337 ]
  %342 = phi ptr [ %341, %347 ], [ %335, %337 ]
  %343 = getelementptr inbounds %struct.PTCacheMem, ptr %342, i64 0, i32 2
  %344 = load i32, ptr %343, align 8, !tbaa !261
  %345 = uitofp i32 %344 to float
  %346 = fcmp ogt float %213, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %340
  store ptr %341, ptr %321, align 8, !tbaa !59
  %348 = load ptr, ptr %341, align 8, !tbaa !444
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %340

350:                                              ; preds = %340, %347, %337, %334
  %351 = phi ptr [ %335, %334 ], [ %335, %337 ], [ %341, %347 ], [ %342, %340 ]
  store ptr %351, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !59
  %352 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef %351, i32 noundef %1) #17
  %353 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !59
  %354 = getelementptr inbounds %struct.PTCacheMem, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !466
  %356 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef %355, i32 noundef %1) #17
  %357 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !59
  %358 = getelementptr inbounds %struct.PTCacheMem, ptr %357, i64 0, i32 6
  %359 = getelementptr inbounds %struct.PTCacheMem, ptr %357, i64 0, i32 2
  %360 = load i32, ptr %359, align 8, !tbaa !261
  %361 = uitofp i32 %360 to float
  call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %323, i32 noundef %352, ptr noundef nonnull %358, float noundef %361) #17
  %362 = icmp slt i32 %356, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %322, ptr noundef nonnull align 16 dereferenceable(56) %323, i64 56, i1 false)
  br label %409

364:                                              ; preds = %350
  %365 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !59
  %366 = getelementptr inbounds %struct.PTCacheMem, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !466
  %368 = getelementptr inbounds %struct.PTCacheMem, ptr %367, i64 0, i32 6
  %369 = getelementptr inbounds %struct.PTCacheMem, ptr %367, i64 0, i32 2
  %370 = load i32, ptr %369, align 8, !tbaa !261
  %371 = uitofp i32 %370 to float
  call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %322, i32 noundef %356, ptr noundef nonnull %368, float noundef %371) #17
  br label %409

372:                                              ; preds = %331
  %373 = getelementptr inbounds %struct.PointCache, ptr %318, i64 0, i32 20
  %374 = load ptr, ptr %373, align 8, !tbaa !386
  %375 = icmp eq ptr %374, null
  br i1 %375, label %409, label %376

376:                                              ; preds = %372
  store ptr %374, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !59
  %377 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %374, i32 noundef %1) #17
  %378 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !59
  %379 = getelementptr inbounds %struct.PTCacheMem, ptr %378, i64 0, i32 6
  %380 = getelementptr inbounds %struct.PTCacheMem, ptr %378, i64 0, i32 2
  %381 = load i32, ptr %380, align 8, !tbaa !261
  %382 = uitofp i32 %381 to float
  call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %323, i32 noundef %377, ptr noundef nonnull %379, float noundef %382) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %322, ptr noundef nonnull align 16 dereferenceable(56) %323, i64 56, i1 false)
  br label %409

383:                                              ; preds = %316
  %384 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %385 = load ptr, ptr %4, align 8, !tbaa !59
  %386 = load float, ptr %385, align 4, !tbaa !34
  store float %386, ptr %384, align 8, !tbaa !34
  %387 = getelementptr inbounds float, ptr %385, i64 1
  %388 = load float, ptr %387, align 4, !tbaa !34
  %389 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 0, i64 1
  store float %388, ptr %389, align 4, !tbaa !34
  %390 = getelementptr inbounds float, ptr %385, i64 2
  %391 = load float, ptr %390, align 4, !tbaa !34
  %392 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 0, i64 2
  store float %391, ptr %392, align 16, !tbaa !34
  %393 = getelementptr inbounds %struct.HairKey, ptr %385, i64 0, i32 1
  %394 = load float, ptr %393, align 4, !tbaa !449
  %395 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1, i32 4
  store float %394, ptr %395, align 4, !tbaa !399
  %396 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %397 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %398 = load ptr, ptr %397, align 8, !tbaa !59
  %399 = load float, ptr %398, align 4, !tbaa !34
  store float %399, ptr %396, align 16, !tbaa !34
  %400 = getelementptr inbounds float, ptr %398, i64 1
  %401 = load float, ptr %400, align 4, !tbaa !34
  %402 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 0, i64 1
  store float %401, ptr %402, align 4, !tbaa !34
  %403 = getelementptr inbounds float, ptr %398, i64 2
  %404 = load float, ptr %403, align 4, !tbaa !34
  %405 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 0, i64 2
  store float %404, ptr %405, align 8, !tbaa !34
  %406 = getelementptr inbounds %struct.HairKey, ptr %398, i64 0, i32 1
  %407 = load float, ptr %406, align 4, !tbaa !449
  %408 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2, i32 4
  store float %407, ptr %408, align 4, !tbaa !399
  br label %409

409:                                              ; preds = %376, %372, %364, %363, %329, %325, %275, %383, %309, %266
  %410 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 3
  %411 = load i32, ptr %410, align 8, !tbaa !389
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %648

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %415 = load ptr, ptr %414, align 8, !tbaa !391
  %416 = icmp ne ptr %415, null
  %417 = select i1 %416, i1 true, i1 %17
  br i1 %417, label %648, label %418

418:                                              ; preds = %413
  br i1 %10, label %473, label %419

419:                                              ; preds = %418
  %420 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %421 = load ptr, ptr %420, align 8, !tbaa !59
  %422 = load ptr, ptr %9, align 8, !tbaa !440
  %423 = icmp eq ptr %421, %422
  br i1 %423, label %449, label %424

424:                                              ; preds = %419
  %425 = getelementptr inbounds %struct.PTCacheEditKey, ptr %421, i64 -1
  %426 = load ptr, ptr %425, align 8, !tbaa !465
  %427 = load float, ptr %426, align 4, !tbaa !34
  store float %427, ptr %7, align 16, !tbaa !34
  %428 = getelementptr inbounds float, ptr %426, i64 1
  %429 = load float, ptr %428, align 4, !tbaa !34
  %430 = getelementptr inbounds float, ptr %7, i64 1
  store float %429, ptr %430, align 4, !tbaa !34
  %431 = getelementptr inbounds float, ptr %426, i64 2
  %432 = load float, ptr %431, align 4, !tbaa !34
  %433 = getelementptr inbounds float, ptr %7, i64 2
  store float %432, ptr %433, align 8, !tbaa !34
  %434 = getelementptr %struct.PTCacheEditKey, ptr %421, i64 -1, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !452
  %436 = icmp eq ptr %435, null
  br i1 %436, label %446, label %437

437:                                              ; preds = %424
  %438 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %439 = load float, ptr %435, align 4, !tbaa !34
  store float %439, ptr %438, align 4, !tbaa !34
  %440 = getelementptr inbounds float, ptr %435, i64 1
  %441 = load float, ptr %440, align 4, !tbaa !34
  %442 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  store float %441, ptr %442, align 16, !tbaa !34
  %443 = getelementptr inbounds float, ptr %435, i64 2
  %444 = load float, ptr %443, align 4, !tbaa !34
  %445 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  store float %444, ptr %445, align 4, !tbaa !34
  br label %446

446:                                              ; preds = %424, %437
  %447 = getelementptr %struct.PTCacheEditKey, ptr %421, i64 -1, i32 3
  %448 = load ptr, ptr %447, align 8, !tbaa !442
  br label %523

449:                                              ; preds = %419
  %450 = load ptr, ptr %421, align 8, !tbaa !465
  %451 = load float, ptr %450, align 4, !tbaa !34
  store float %451, ptr %7, align 16, !tbaa !34
  %452 = getelementptr inbounds float, ptr %450, i64 1
  %453 = load float, ptr %452, align 4, !tbaa !34
  %454 = getelementptr inbounds float, ptr %7, i64 1
  store float %453, ptr %454, align 4, !tbaa !34
  %455 = getelementptr inbounds float, ptr %450, i64 2
  %456 = load float, ptr %455, align 4, !tbaa !34
  %457 = getelementptr inbounds float, ptr %7, i64 2
  store float %456, ptr %457, align 8, !tbaa !34
  %458 = getelementptr inbounds %struct.PTCacheEditKey, ptr %421, i64 0, i32 1
  %459 = load ptr, ptr %458, align 8, !tbaa !452
  %460 = icmp eq ptr %459, null
  br i1 %460, label %470, label %461

461:                                              ; preds = %449
  %462 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1
  %463 = load float, ptr %459, align 4, !tbaa !34
  store float %463, ptr %462, align 4, !tbaa !34
  %464 = getelementptr inbounds float, ptr %459, i64 1
  %465 = load float, ptr %464, align 4, !tbaa !34
  %466 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 1
  store float %465, ptr %466, align 16, !tbaa !34
  %467 = getelementptr inbounds float, ptr %459, i64 2
  %468 = load float, ptr %467, align 4, !tbaa !34
  %469 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 1, i64 2
  store float %468, ptr %469, align 4, !tbaa !34
  br label %470

470:                                              ; preds = %449, %461
  %471 = getelementptr inbounds %struct.PTCacheEditKey, ptr %421, i64 0, i32 3
  %472 = load ptr, ptr %471, align 8, !tbaa !442
  br label %523

473:                                              ; preds = %418
  %474 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !394
  %476 = icmp eq ptr %475, null
  %477 = load ptr, ptr %4, align 8, !tbaa !59
  %478 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 2
  %479 = load ptr, ptr %478, align 8, !tbaa !145
  %480 = icmp eq ptr %477, %479
  br i1 %476, label %503, label %481

481:                                              ; preds = %473
  %482 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !59
  br i1 %480, label %494, label %484

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.MVert, ptr %483, i64 -1
  %486 = load float, ptr %485, align 4, !tbaa !34
  store float %486, ptr %7, align 16, !tbaa !34
  %487 = getelementptr %struct.MVert, ptr %483, i64 -1, i32 0, i64 1
  %488 = load float, ptr %487, align 4, !tbaa !34
  %489 = getelementptr inbounds float, ptr %7, i64 1
  store float %488, ptr %489, align 4, !tbaa !34
  %490 = getelementptr %struct.MVert, ptr %483, i64 -1, i32 0, i64 2
  %491 = load float, ptr %490, align 4, !tbaa !34
  %492 = getelementptr inbounds float, ptr %7, i64 2
  store float %491, ptr %492, align 8, !tbaa !34
  %493 = getelementptr %struct.HairKey, ptr %477, i64 -1, i32 1
  br label %523

494:                                              ; preds = %481
  %495 = load float, ptr %483, align 4, !tbaa !34
  store float %495, ptr %7, align 16, !tbaa !34
  %496 = getelementptr inbounds float, ptr %483, i64 1
  %497 = load float, ptr %496, align 4, !tbaa !34
  %498 = getelementptr inbounds float, ptr %7, i64 1
  store float %497, ptr %498, align 4, !tbaa !34
  %499 = getelementptr inbounds float, ptr %483, i64 2
  %500 = load float, ptr %499, align 4, !tbaa !34
  %501 = getelementptr inbounds float, ptr %7, i64 2
  store float %500, ptr %501, align 8, !tbaa !34
  %502 = getelementptr inbounds %struct.HairKey, ptr %477, i64 0, i32 1
  br label %523

503:                                              ; preds = %473
  br i1 %480, label %514, label %504

504:                                              ; preds = %503
  %505 = getelementptr inbounds %struct.HairKey, ptr %477, i64 -1
  %506 = load float, ptr %505, align 4, !tbaa !34
  store float %506, ptr %7, align 16, !tbaa !34
  %507 = getelementptr %struct.HairKey, ptr %477, i64 -1, i32 0, i64 1
  %508 = load float, ptr %507, align 4, !tbaa !34
  %509 = getelementptr inbounds float, ptr %7, i64 1
  store float %508, ptr %509, align 4, !tbaa !34
  %510 = getelementptr %struct.HairKey, ptr %477, i64 -1, i32 0, i64 2
  %511 = load float, ptr %510, align 4, !tbaa !34
  %512 = getelementptr inbounds float, ptr %7, i64 2
  store float %511, ptr %512, align 8, !tbaa !34
  %513 = getelementptr %struct.HairKey, ptr %477, i64 -1, i32 1
  br label %523

514:                                              ; preds = %503
  %515 = load float, ptr %477, align 4, !tbaa !34
  store float %515, ptr %7, align 16, !tbaa !34
  %516 = getelementptr inbounds float, ptr %477, i64 1
  %517 = load float, ptr %516, align 4, !tbaa !34
  %518 = getelementptr inbounds float, ptr %7, i64 1
  store float %517, ptr %518, align 4, !tbaa !34
  %519 = getelementptr inbounds float, ptr %477, i64 2
  %520 = load float, ptr %519, align 4, !tbaa !34
  %521 = getelementptr inbounds float, ptr %7, i64 2
  store float %520, ptr %521, align 8, !tbaa !34
  %522 = getelementptr inbounds %struct.HairKey, ptr %477, i64 0, i32 1
  br label %523

523:                                              ; preds = %494, %484, %514, %504, %446, %470
  %524 = phi ptr [ %502, %494 ], [ %493, %484 ], [ %522, %514 ], [ %513, %504 ], [ %448, %446 ], [ %472, %470 ]
  %525 = load float, ptr %524, align 4, !tbaa !34
  %526 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 4
  store float %525, ptr %526, align 4, !tbaa !399
  br i1 %10, label %587, label %527

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8, i64 1
  %529 = load ptr, ptr %528, align 8, !tbaa !59
  %530 = load ptr, ptr %9, align 8, !tbaa !440
  %531 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %9, i64 0, i32 1
  %532 = load i32, ptr %531, align 8, !tbaa !441
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.PTCacheEditKey, ptr %530, i64 %533
  %535 = getelementptr inbounds %struct.PTCacheEditKey, ptr %534, i64 -1
  %536 = icmp eq ptr %529, %535
  %537 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3
  br i1 %536, label %563, label %538

538:                                              ; preds = %527
  %539 = getelementptr inbounds %struct.PTCacheEditKey, ptr %529, i64 1
  %540 = load ptr, ptr %539, align 8, !tbaa !465
  %541 = load float, ptr %540, align 4, !tbaa !34
  store float %541, ptr %537, align 8, !tbaa !34
  %542 = getelementptr inbounds float, ptr %540, i64 1
  %543 = load float, ptr %542, align 4, !tbaa !34
  %544 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 1
  store float %543, ptr %544, align 4, !tbaa !34
  %545 = getelementptr inbounds float, ptr %540, i64 2
  %546 = load float, ptr %545, align 4, !tbaa !34
  %547 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 2
  store float %546, ptr %547, align 16, !tbaa !34
  %548 = getelementptr inbounds %struct.PTCacheEditKey, ptr %529, i64 1, i32 1
  %549 = load ptr, ptr %548, align 8, !tbaa !452
  %550 = icmp eq ptr %549, null
  br i1 %550, label %560, label %551

551:                                              ; preds = %538
  %552 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 1
  %553 = load float, ptr %549, align 4, !tbaa !34
  store float %553, ptr %552, align 4, !tbaa !34
  %554 = getelementptr inbounds float, ptr %549, i64 1
  %555 = load float, ptr %554, align 4, !tbaa !34
  %556 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 1, i64 1
  store float %555, ptr %556, align 8, !tbaa !34
  %557 = getelementptr inbounds float, ptr %549, i64 2
  %558 = load float, ptr %557, align 4, !tbaa !34
  %559 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 1, i64 2
  store float %558, ptr %559, align 4, !tbaa !34
  br label %560

560:                                              ; preds = %538, %551
  %561 = getelementptr inbounds %struct.PTCacheEditKey, ptr %529, i64 1, i32 3
  %562 = load ptr, ptr %561, align 8, !tbaa !442
  br label %644

563:                                              ; preds = %527
  %564 = load ptr, ptr %529, align 8, !tbaa !465
  %565 = load float, ptr %564, align 4, !tbaa !34
  store float %565, ptr %537, align 8, !tbaa !34
  %566 = getelementptr inbounds float, ptr %564, i64 1
  %567 = load float, ptr %566, align 4, !tbaa !34
  %568 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 1
  store float %567, ptr %568, align 4, !tbaa !34
  %569 = getelementptr inbounds float, ptr %564, i64 2
  %570 = load float, ptr %569, align 4, !tbaa !34
  %571 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 2
  store float %570, ptr %571, align 16, !tbaa !34
  %572 = getelementptr inbounds %struct.PTCacheEditKey, ptr %529, i64 0, i32 1
  %573 = load ptr, ptr %572, align 8, !tbaa !452
  %574 = icmp eq ptr %573, null
  br i1 %574, label %584, label %575

575:                                              ; preds = %563
  %576 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 1
  %577 = load float, ptr %573, align 4, !tbaa !34
  store float %577, ptr %576, align 4, !tbaa !34
  %578 = getelementptr inbounds float, ptr %573, i64 1
  %579 = load float, ptr %578, align 4, !tbaa !34
  %580 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 1, i64 1
  store float %579, ptr %580, align 8, !tbaa !34
  %581 = getelementptr inbounds float, ptr %573, i64 2
  %582 = load float, ptr %581, align 4, !tbaa !34
  %583 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 1, i64 2
  store float %582, ptr %583, align 4, !tbaa !34
  br label %584

584:                                              ; preds = %563, %575
  %585 = getelementptr inbounds %struct.PTCacheEditKey, ptr %529, i64 0, i32 3
  %586 = load ptr, ptr %585, align 8, !tbaa !442
  br label %644

587:                                              ; preds = %523
  %588 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !394
  %590 = icmp eq ptr %589, null
  %591 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %592 = load ptr, ptr %591, align 8, !tbaa !59
  %593 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 2
  %594 = load ptr, ptr %593, align 8, !tbaa !145
  %595 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 5
  %596 = load i32, ptr %595, align 8, !tbaa !146
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.HairKey, ptr %594, i64 %597
  %599 = getelementptr inbounds %struct.HairKey, ptr %598, i64 -1
  %600 = icmp eq ptr %592, %599
  %601 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3
  br i1 %590, label %624, label %602

602:                                              ; preds = %587
  %603 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2, i64 1
  %604 = load ptr, ptr %603, align 8, !tbaa !59
  br i1 %600, label %615, label %605

605:                                              ; preds = %602
  %606 = getelementptr inbounds %struct.MVert, ptr %604, i64 1
  %607 = load float, ptr %606, align 4, !tbaa !34
  store float %607, ptr %601, align 8, !tbaa !34
  %608 = getelementptr inbounds %struct.MVert, ptr %604, i64 1, i32 0, i64 1
  %609 = load float, ptr %608, align 4, !tbaa !34
  %610 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 1
  store float %609, ptr %610, align 4, !tbaa !34
  %611 = getelementptr inbounds %struct.MVert, ptr %604, i64 1, i32 0, i64 2
  %612 = load float, ptr %611, align 4, !tbaa !34
  %613 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 2
  store float %612, ptr %613, align 16, !tbaa !34
  %614 = getelementptr inbounds %struct.HairKey, ptr %592, i64 1, i32 1
  br label %644

615:                                              ; preds = %602
  %616 = load float, ptr %604, align 4, !tbaa !34
  store float %616, ptr %601, align 8, !tbaa !34
  %617 = getelementptr inbounds float, ptr %604, i64 1
  %618 = load float, ptr %617, align 4, !tbaa !34
  %619 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 1
  store float %618, ptr %619, align 4, !tbaa !34
  %620 = getelementptr inbounds float, ptr %604, i64 2
  %621 = load float, ptr %620, align 4, !tbaa !34
  %622 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 2
  store float %621, ptr %622, align 16, !tbaa !34
  %623 = getelementptr inbounds %struct.HairKey, ptr %592, i64 0, i32 1
  br label %644

624:                                              ; preds = %587
  br i1 %600, label %635, label %625

625:                                              ; preds = %624
  %626 = getelementptr inbounds %struct.HairKey, ptr %592, i64 1
  %627 = load float, ptr %626, align 4, !tbaa !34
  store float %627, ptr %601, align 8, !tbaa !34
  %628 = getelementptr inbounds %struct.HairKey, ptr %592, i64 1, i32 0, i64 1
  %629 = load float, ptr %628, align 4, !tbaa !34
  %630 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 1
  store float %629, ptr %630, align 4, !tbaa !34
  %631 = getelementptr inbounds %struct.HairKey, ptr %592, i64 1, i32 0, i64 2
  %632 = load float, ptr %631, align 4, !tbaa !34
  %633 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 2
  store float %632, ptr %633, align 16, !tbaa !34
  %634 = getelementptr inbounds %struct.HairKey, ptr %592, i64 1, i32 1
  br label %644

635:                                              ; preds = %624
  %636 = load float, ptr %592, align 4, !tbaa !34
  store float %636, ptr %601, align 8, !tbaa !34
  %637 = getelementptr inbounds float, ptr %592, i64 1
  %638 = load float, ptr %637, align 4, !tbaa !34
  %639 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 1
  store float %638, ptr %639, align 4, !tbaa !34
  %640 = getelementptr inbounds float, ptr %592, i64 2
  %641 = load float, ptr %640, align 4, !tbaa !34
  %642 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 0, i64 2
  store float %641, ptr %642, align 16, !tbaa !34
  %643 = getelementptr inbounds %struct.HairKey, ptr %592, i64 0, i32 1
  br label %644

644:                                              ; preds = %615, %605, %635, %625, %560, %584
  %645 = phi ptr [ %586, %584 ], [ %562, %560 ], [ %634, %625 ], [ %643, %635 ], [ %614, %605 ], [ %623, %615 ]
  %646 = load float, ptr %645, align 4, !tbaa !34
  %647 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3, i32 4
  store float %646, ptr %647, align 4, !tbaa !399
  br label %648

648:                                              ; preds = %644, %413, %409
  %649 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 4
  %650 = load float, ptr %649, align 4, !tbaa !399
  %651 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 4
  %652 = load float, ptr %651, align 4, !tbaa !399
  %653 = fsub float %650, %652
  %654 = fsub float %213, %652
  %655 = fdiv float %654, %653
  br i1 %412, label %656, label %661

656:                                              ; preds = %648
  %657 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %658 = load ptr, ptr %657, align 8, !tbaa !391
  %659 = icmp ne ptr %658, null
  %660 = select i1 %659, i1 true, i1 %17
  br i1 %660, label %661, label %693

661:                                              ; preds = %656, %648
  %662 = fmul float %653, 0x3FA47AE140000000
  %663 = icmp eq ptr %0, null
  br i1 %663, label %669, label %664

664:                                              ; preds = %661
  %665 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %666 = load ptr, ptr %665, align 8, !tbaa !49
  %667 = getelementptr inbounds %struct.ParticleSettings, ptr %666, i64 0, i32 57
  %668 = load float, ptr %667, align 4, !tbaa !467
  br label %669

669:                                              ; preds = %661, %664
  %670 = phi float [ %668, %664 ], [ 1.000000e+00, %661 ]
  %671 = fmul float %662, %670
  %672 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1
  %673 = load float, ptr %672, align 4, !tbaa !34
  %674 = fmul float %673, %671
  store float %674, ptr %672, align 4, !tbaa !34
  %675 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 1
  %676 = load float, ptr %675, align 8, !tbaa !34
  %677 = fmul float %671, %676
  store float %677, ptr %675, align 8, !tbaa !34
  %678 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1, i64 2
  %679 = load float, ptr %678, align 4, !tbaa !34
  %680 = fmul float %671, %679
  store float %680, ptr %678, align 4, !tbaa !34
  %681 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1
  %682 = load float, ptr %681, align 4, !tbaa !34
  %683 = fmul float %671, %682
  store float %683, ptr %681, align 4, !tbaa !34
  %684 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1, i64 1
  %685 = load float, ptr %684, align 16, !tbaa !34
  %686 = fmul float %671, %685
  store float %686, ptr %684, align 16, !tbaa !34
  %687 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1, i64 2
  %688 = load float, ptr %687, align 4, !tbaa !34
  %689 = fmul float %671, %688
  store float %689, ptr %687, align 4, !tbaa !34
  %690 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 2
  %691 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 2
  %692 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %690, ptr noundef nonnull %691, ptr noundef nonnull %692, float noundef %655) #17
  br label %693

693:                                              ; preds = %656, %669
  %694 = phi float [ %671, %669 ], [ 1.000000e+00, %656 ]
  %695 = load i32, ptr %410, align 8, !tbaa !389
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %707

697:                                              ; preds = %693
  %698 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %699 = load ptr, ptr %698, align 8, !tbaa !391
  %700 = icmp ne ptr %699, null
  %701 = select i1 %700, i1 true, i1 %17
  br i1 %701, label %707, label %702

702:                                              ; preds = %697
  %703 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 11
  %704 = load i32, ptr %703, align 8, !tbaa !393
  %705 = icmp eq i32 %704, 0
  %706 = select i1 %705, i16 1, i16 2
  br label %707

707:                                              ; preds = %693, %697, %702
  %708 = phi i16 [ %706, %702 ], [ -1, %697 ], [ -1, %693 ]
  call void @psys_interpolate_particle(i16 noundef signext %708, ptr noundef nonnull %7, float noundef %655, ptr noundef %5, i32 noundef 1)
  %709 = load i32, ptr %410, align 8, !tbaa !389
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %716

711:                                              ; preds = %707
  %712 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %713 = load ptr, ptr %712, align 8, !tbaa !391
  %714 = icmp ne ptr %713, null
  %715 = select i1 %714, i1 true, i1 %17
  br i1 %715, label %716, label %727

716:                                              ; preds = %711, %707
  %717 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1
  %718 = fdiv float 1.000000e+00, %694
  %719 = load float, ptr %717, align 4, !tbaa !34
  %720 = fmul float %718, %719
  store float %720, ptr %717, align 4, !tbaa !34
  %721 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1, i64 1
  %722 = load float, ptr %721, align 4, !tbaa !34
  %723 = fmul float %718, %722
  store float %723, ptr %721, align 4, !tbaa !34
  %724 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1, i64 2
  %725 = load float, ptr %724, align 4, !tbaa !34
  %726 = fmul float %718, %725
  store float %726, ptr %724, align 4, !tbaa !34
  br label %727

727:                                              ; preds = %716, %711, %67
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_path_effectors(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.ParticleKey, align 4
  %11 = alloca %struct.EffectedPoint, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #17
  %12 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %140

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 -1
  %20 = load float, ptr %19, align 4, !tbaa !34
  store float %20, ptr %10, align 4, !tbaa !34
  %21 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %10, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %10, i64 2
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1
  %28 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  store float %29, ptr %27, align 4, !tbaa !34
  %30 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 2
  %37 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %36, ptr noundef %37) #17
  %38 = load ptr, ptr %12, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 %41
  call void @pd_point_from_particle(ptr noundef %0, ptr noundef %42, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %43 = load ptr, ptr %12, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 42
  %45 = load ptr, ptr %44, align 8, !tbaa !402
  %46 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !468
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !132
  call void @pdDoEffectors(ptr noundef %45, ptr noundef %47, ptr noundef %51, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef null) #17
  %52 = sitofp i32 %3 to float
  %53 = sitofp i32 %4 to float
  %54 = fdiv float %52, %53
  %55 = load ptr, ptr %12, align 8, !tbaa !66
  %56 = getelementptr inbounds %struct.ParticleSystem, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct.ParticleSettings, ptr %57, i64 0, i32 60
  %59 = load float, ptr %58, align 8, !tbaa !469
  %60 = fmul float %59, 1.000000e+02
  %61 = call float @powf(float noundef %54, float noundef %60) #17
  %62 = fmul float %61, %5
  %63 = fdiv float %62, %53
  %64 = load float, ptr %9, align 4, !tbaa !34
  %65 = fmul float %64, %63
  store float %65, ptr %9, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %9, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = fmul float %63, %67
  store float %68, ptr %66, align 4, !tbaa !34
  %69 = getelementptr inbounds float, ptr %9, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fmul float %63, %70
  store float %71, ptr %69, align 4, !tbaa !34
  %72 = load float, ptr %7, align 4, !tbaa !34
  %73 = fadd float %65, %72
  store float %73, ptr %9, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %7, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fadd float %68, %75
  store float %76, ptr %66, align 4, !tbaa !34
  %77 = getelementptr inbounds float, ptr %7, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = fadd float %71, %78
  store float %79, ptr %69, align 4, !tbaa !34
  %80 = fmul float %76, %76
  %81 = call float @llvm.fmuladd.f32(float %73, float %73, float %80)
  %82 = call float @llvm.fmuladd.f32(float %79, float %79, float %81)
  %83 = fcmp ogt float %82, 0x38AA95A5C0000000
  br i1 %83, label %84, label %93

84:                                               ; preds = %18
  %85 = call float @sqrtf(float noundef %82) #17
  %86 = fdiv float 1.000000e+00, %85
  %87 = load float, ptr %9, align 4, !tbaa !34
  %88 = fmul float %87, %86
  store float %88, ptr %9, align 4, !tbaa !34
  %89 = load float, ptr %66, align 4, !tbaa !34
  %90 = fmul float %86, %89
  store float %90, ptr %66, align 4, !tbaa !34
  %91 = load float, ptr %69, align 4, !tbaa !34
  %92 = fmul float %86, %91
  br label %94

93:                                               ; preds = %18
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %66, align 4, !tbaa !34
  br label %94

94:                                               ; preds = %84, %93
  %95 = phi float [ 0.000000e+00, %93 ], [ %92, %84 ]
  store float %95, ptr %69, align 4, !tbaa !34
  %96 = icmp slt i32 %3, %4
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = load float, ptr %2, align 4, !tbaa !34
  %101 = fsub float %99, %100
  store float %101, ptr %7, align 4, !tbaa !34
  %102 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 1, i32 0, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = getelementptr inbounds float, ptr %2, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !34
  %106 = fsub float %103, %105
  store float %106, ptr %74, align 4, !tbaa !34
  %107 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 1, i32 0, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !34
  %109 = getelementptr inbounds float, ptr %2, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = fsub float %108, %110
  store float %111, ptr %77, align 4, !tbaa !34
  %112 = load float, ptr %6, align 4, !tbaa !34
  %113 = load float, ptr %19, align 4, !tbaa !34
  %114 = load float, ptr %9, align 4, !tbaa !34
  %115 = call float @llvm.fmuladd.f32(float %114, float %112, float %113)
  store float %115, ptr %2, align 4, !tbaa !34
  %116 = load float, ptr %21, align 4, !tbaa !34
  %117 = load float, ptr %66, align 4, !tbaa !34
  %118 = call float @llvm.fmuladd.f32(float %117, float %112, float %116)
  store float %118, ptr %104, align 4, !tbaa !34
  %119 = load float, ptr %24, align 4, !tbaa !34
  %120 = call float @llvm.fmuladd.f32(float %95, float %112, float %119)
  store float %120, ptr %109, align 4, !tbaa !34
  %121 = load float, ptr %7, align 4, !tbaa !34
  %122 = load float, ptr %74, align 4, !tbaa !34
  %123 = fmul float %122, %122
  %124 = call float @llvm.fmuladd.f32(float %121, float %121, float %123)
  %125 = load float, ptr %77, align 4, !tbaa !34
  %126 = call float @llvm.fmuladd.f32(float %125, float %125, float %124)
  %127 = call float @sqrtf(float noundef %126) #17
  store float %127, ptr %6, align 4, !tbaa !34
  br label %140

128:                                              ; preds = %94
  %129 = load float, ptr %6, align 4, !tbaa !34
  %130 = load float, ptr %19, align 4, !tbaa !34
  %131 = load float, ptr %9, align 4, !tbaa !34
  %132 = call float @llvm.fmuladd.f32(float %131, float %129, float %130)
  store float %132, ptr %2, align 4, !tbaa !34
  %133 = load float, ptr %21, align 4, !tbaa !34
  %134 = load float, ptr %66, align 4, !tbaa !34
  %135 = call float @llvm.fmuladd.f32(float %134, float %129, float %133)
  %136 = getelementptr inbounds float, ptr %2, i64 1
  store float %135, ptr %136, align 4, !tbaa !34
  %137 = load float, ptr %24, align 4, !tbaa !34
  %138 = call float @llvm.fmuladd.f32(float %95, float %129, float %137)
  %139 = getelementptr inbounds float, ptr %2, i64 2
  store float %138, ptr %139, align 4, !tbaa !34
  br label %140

140:                                              ; preds = %97, %128, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  ret void
}

declare void @calc_latt_deform(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cache_key_incremental_rotation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  switch i32 %4, label %41 [
    i32 0, label %116
    i32 1, label %8
  ]

8:                                                ; preds = %5
  %9 = load float, ptr %0, align 4, !tbaa !34
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = fsub float %9, %10
  store float %11, ptr %3, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %3, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %3, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = fmul float %16, %16
  %25 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %24)
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %25)
  %27 = fcmp ogt float %26, 0x38AA95A5C0000000
  br i1 %27, label %28, label %37

28:                                               ; preds = %8
  %29 = tail call float @sqrtf(float noundef %26) #17
  %30 = fdiv float 1.000000e+00, %29
  %31 = load float, ptr %3, align 4, !tbaa !34
  %32 = fmul float %31, %30
  store float %32, ptr %3, align 4, !tbaa !34
  %33 = load float, ptr %17, align 4, !tbaa !34
  %34 = fmul float %30, %33
  store float %34, ptr %17, align 4, !tbaa !34
  %35 = load float, ptr %23, align 4, !tbaa !34
  %36 = fmul float %30, %35
  br label %38

37:                                               ; preds = %8
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %17, align 4, !tbaa !34
  br label %38

38:                                               ; preds = %28, %37
  %39 = phi float [ 0.000000e+00, %37 ], [ %36, %28 ]
  store float %39, ptr %23, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2
  tail call void @unit_qt(ptr noundef nonnull %40) #17
  br label %116

41:                                               ; preds = %5
  %42 = load float, ptr %0, align 4, !tbaa !34
  %43 = load float, ptr %1, align 4, !tbaa !34
  %44 = fsub float %42, %43
  %45 = getelementptr inbounds float, ptr %0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds float, ptr %0, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = getelementptr inbounds float, ptr %1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fsub float %51, %53
  %55 = fmul float %49, %49
  %56 = tail call float @llvm.fmuladd.f32(float %44, float %44, float %55)
  %57 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %56)
  %58 = fcmp ogt float %57, 0x38AA95A5C0000000
  br i1 %58, label %59, label %65

59:                                               ; preds = %41
  %60 = tail call float @sqrtf(float noundef %57) #17
  %61 = fdiv float 1.000000e+00, %60
  %62 = fmul float %44, %61
  %63 = fmul float %49, %61
  %64 = fmul float %54, %61
  br label %65

65:                                               ; preds = %41, %59
  %66 = phi float [ %63, %59 ], [ 0.000000e+00, %41 ]
  %67 = phi float [ %62, %59 ], [ 0.000000e+00, %41 ]
  %68 = phi float [ %64, %59 ], [ 0.000000e+00, %41 ]
  %69 = load float, ptr %3, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %3, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = fmul float %66, %71
  %73 = tail call float @llvm.fmuladd.f32(float %67, float %69, float %72)
  %74 = getelementptr inbounds float, ptr %3, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = tail call float @llvm.fmuladd.f32(float %68, float %75, float %73)
  %77 = fcmp ogt float %76, 0x3FEFFFFDE0000000
  br i1 %77, label %78, label %91

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2
  %80 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  %81 = load float, ptr %80, align 4, !tbaa !34
  store float %81, ptr %79, align 4, !tbaa !34
  %82 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2, i64 1
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2, i64 2
  store float %86, ptr %87, align 4, !tbaa !34
  %88 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2, i64 3
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2, i64 3
  store float %89, ptr %90, align 4, !tbaa !34
  br label %115

91:                                               ; preds = %65
  %92 = fcmp ugt float %76, -1.000000e+00
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = fcmp ult float %76, 1.000000e+00
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  %96 = tail call float @acosf(float noundef %76) #17
  br label %97

97:                                               ; preds = %91, %93, %95
  %98 = phi float [ %96, %95 ], [ 0x400921FB60000000, %91 ], [ 0.000000e+00, %93 ]
  %99 = load float, ptr %70, align 4, !tbaa !34
  %100 = load float, ptr %74, align 4, !tbaa !34
  %101 = fneg float %100
  %102 = fmul float %66, %101
  %103 = tail call float @llvm.fmuladd.f32(float %99, float %68, float %102)
  store float %103, ptr %6, align 4, !tbaa !34
  %104 = load float, ptr %3, align 4, !tbaa !34
  %105 = fneg float %104
  %106 = fmul float %68, %105
  %107 = tail call float @llvm.fmuladd.f32(float %100, float %67, float %106)
  %108 = getelementptr inbounds float, ptr %6, i64 1
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = fneg float %99
  %110 = fmul float %67, %109
  %111 = tail call float @llvm.fmuladd.f32(float %104, float %66, float %110)
  %112 = getelementptr inbounds float, ptr %6, i64 2
  store float %111, ptr %112, align 4, !tbaa !34
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %98) #17
  %113 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2
  %114 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %113, ptr noundef nonnull %7, ptr noundef nonnull %114) #17
  br label %115

115:                                              ; preds = %97, %78
  store float %67, ptr %3, align 4, !tbaa !34
  store float %66, ptr %70, align 4, !tbaa !34
  store float %68, ptr %74, align 4, !tbaa !34
  br label %116

116:                                              ; preds = %115, %38, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_cache_edit_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca %struct.ParticleInterpolationData, align 8
  %8 = alloca %struct.ParticleKey, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca %struct.ParticleSimulationData, align 8
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !328
  %21 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !470
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %4, %35
  %27 = phi ptr [ %36, %35 ], [ %24, %4 ]
  %28 = getelementptr inbounds %struct.ModifierData, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !98
  %30 = icmp eq i32 %29, 19
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = icmp eq ptr %33, %22
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %26
  %36 = load ptr, ptr %27, align 8, !tbaa !59
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %26, !llvm.loop !102

38:                                               ; preds = %31, %35, %4
  %39 = phi ptr [ null, %4 ], [ %27, %31 ], [ null, %35 ]
  %40 = icmp eq ptr %22, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  br label %44

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %43, %41 ], [ null, %38 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %46 = getelementptr inbounds %struct.ToolSettings, ptr %20, i64 0, i32 18, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !331
  %48 = tail call double @ldexp(double 1.000000e+00, i32 %47) #17
  %49 = fptosi double %48 to i32
  %50 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 11
  %51 = load i32, ptr %50, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  %52 = tail call i32 @llvm.smax.i32(i32 %49, i32 4)
  %53 = icmp eq ptr %18, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 13
  %56 = load i32, ptr %55, align 8, !tbaa !160
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %111, label %58

58:                                               ; preds = %54, %44
  %59 = load ptr, ptr %21, align 8, !tbaa !470
  tail call void @psys_free_path_cache(ptr noundef %59, ptr noundef %2)
  %60 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 10
  %61 = add nuw nsw i32 %52, 1
  %62 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %64 = zext nneg i32 %62 to i64
  %65 = shl nuw nsw i64 %64, 3
  %66 = tail call ptr %63(i64 noundef %65, ptr noundef nonnull @.str.14) #17
  %67 = zext nneg i32 %61 to i64
  %68 = mul nuw nsw i64 %67, 60
  br label %69

69:                                               ; preds = %94, %58
  %70 = phi i32 [ 0, %58 ], [ %95, %94 ]
  %71 = sub i32 %62, %70
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 1024)
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %74 = tail call ptr %73(i64 noundef 24, ptr noundef nonnull @.str.15) #17
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %76 = sext i32 %72 to i64
  %77 = mul i64 %68, %76
  %78 = tail call ptr %75(i64 noundef %77, ptr noundef nonnull @.str.16) #17
  %79 = getelementptr inbounds %struct.LinkData, ptr %74, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !157
  %80 = icmp sgt i32 %71, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %69
  %82 = sext i32 %70 to i64
  %83 = tail call i32 @llvm.smax.i32(i32 %72, i32 1)
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr ptr, ptr %66, i64 %82
  br label %86

86:                                               ; preds = %86, %81
  %87 = phi i64 [ 0, %81 ], [ %92, %86 ]
  %88 = load ptr, ptr %79, align 8, !tbaa !157
  %89 = mul nuw nsw i64 %87, %67
  %90 = getelementptr inbounds %struct.ParticleCacheKey, ptr %88, i64 %89
  %91 = getelementptr ptr, ptr %85, i64 %87
  store ptr %90, ptr %91, align 8, !tbaa !59
  %92 = add nuw nsw i64 %87, 1
  %93 = icmp eq i64 %92, %84
  br i1 %93, label %94, label %86, !llvm.loop !351

94:                                               ; preds = %86, %69
  %95 = add nsw i32 %72, %70
  tail call void @BLI_addtail(ptr noundef nonnull %60, ptr noundef %74) #17
  %96 = icmp slt i32 %95, %62
  br i1 %96, label %69, label %97, !llvm.loop !352

97:                                               ; preds = %94
  store ptr %66, ptr %17, align 8, !tbaa !156
  %98 = icmp sgt i32 %51, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !362
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i32 [ %108, %102 ], [ 0, %99 ]
  %104 = phi ptr [ %109, %102 ], [ %101, %99 ]
  %105 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %104, i64 0, i32 2
  %106 = load i16, ptr %105, align 4, !tbaa !363
  %107 = or i16 %106, 2
  store i16 %107, ptr %105, align 4, !tbaa !363
  %108 = add nuw nsw i32 %103, 1
  %109 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %104, i64 1
  %110 = icmp eq i32 %108, %51
  br i1 %110, label %111, label %102, !llvm.loop !472

111:                                              ; preds = %102, %97, %54
  %112 = phi ptr [ %18, %54 ], [ %66, %97 ], [ %66, %102 ]
  %113 = phi i1 [ false, %54 ], [ true, %97 ], [ true, %102 ]
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %20, i64 0, i32 18, i32 3
  %115 = load i16, ptr %114, align 2, !tbaa !473
  %116 = icmp eq i16 %115, 6
  br i1 %116, label %146, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 15
  %119 = load i8, ptr %118, align 8, !tbaa !266
  %120 = uitofp i8 %119 to float
  %121 = fdiv float %120, 2.550000e+02
  store float %121, ptr %12, align 4, !tbaa !34
  %122 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 15, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !266
  %124 = uitofp i8 %123 to float
  %125 = fdiv float %124, 2.550000e+02
  %126 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float %125, ptr %126, align 4, !tbaa !34
  %127 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 15, i64 2
  %128 = load i8, ptr %127, align 2, !tbaa !266
  %129 = uitofp i8 %128 to float
  %130 = fdiv float %129, 2.550000e+02
  %131 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %130, ptr %131, align 4, !tbaa !34
  %132 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 16
  %133 = load i8, ptr %132, align 1, !tbaa !266
  %134 = uitofp i8 %133 to float
  %135 = fdiv float %134, 2.550000e+02
  store float %135, ptr %13, align 4, !tbaa !34
  %136 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 16, i64 1
  %137 = load i8, ptr %136, align 1, !tbaa !266
  %138 = uitofp i8 %137 to float
  %139 = fdiv float %138, 2.550000e+02
  %140 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float %139, ptr %140, align 4, !tbaa !34
  %141 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 16, i64 2
  %142 = load i8, ptr %141, align 1, !tbaa !266
  %143 = uitofp i8 %142 to float
  %144 = fdiv float %143, 2.550000e+02
  %145 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float %144, ptr %145, align 4, !tbaa !34
  br label %146

146:                                              ; preds = %111, %117
  %147 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 2
  %148 = icmp sgt i32 %51, 0
  br i1 %148, label %149, label %455

149:                                              ; preds = %146
  %150 = load ptr, ptr %147, align 8, !tbaa !362
  %151 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 13
  %152 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 3
  %153 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 5
  %154 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 7
  %155 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 2
  %156 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 11
  %157 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 1
  %158 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %159 = add nuw nsw i32 %52, 1
  %160 = zext nneg i32 %159 to i64
  %161 = mul nuw nsw i64 %160, 60
  %162 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %39, i64 0, i32 2
  %163 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 2
  %164 = getelementptr inbounds [4 x float], ptr %6, i64 3
  %165 = getelementptr inbounds float, ptr %5, i64 1
  %166 = getelementptr inbounds [4 x float], ptr %6, i64 3, i64 1
  %167 = getelementptr inbounds float, ptr %5, i64 2
  %168 = getelementptr inbounds [4 x float], ptr %6, i64 3, i64 2
  %169 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %170 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  %171 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 1
  %172 = getelementptr inbounds float, ptr %10, i64 1
  %173 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  %174 = getelementptr inbounds float, ptr %10, i64 2
  %175 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %176 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1
  %177 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 1
  %178 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %179 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 2
  %180 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %181 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %182 = getelementptr inbounds float, ptr %9, i64 1
  %183 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %184 = getelementptr inbounds float, ptr %9, i64 2
  %185 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  %186 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 9
  %187 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 10
  %188 = sitofp i32 %52 to float
  %189 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 4
  %190 = getelementptr inbounds float, ptr %8, i64 1
  %191 = getelementptr inbounds float, ptr %8, i64 2
  %192 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 25
  %193 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 8
  %194 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 8, i64 1
  %195 = getelementptr inbounds float, ptr %12, i64 1
  %196 = getelementptr inbounds float, ptr %12, i64 2
  %197 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 8, i64 1
  %198 = getelementptr inbounds float, ptr %13, i64 1
  %199 = getelementptr inbounds float, ptr %13, i64 2
  %200 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 8
  %201 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %7, i64 0, i32 8, i64 1
  %202 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %203 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %204 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %205 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 25
  %206 = zext nneg i32 %51 to i64
  br label %207

207:                                              ; preds = %149, %448
  %208 = phi i64 [ 0, %149 ], [ %449, %448 ]
  %209 = phi ptr [ %150, %149 ], [ %453, %448 ]
  %210 = phi ptr [ %45, %149 ], [ %452, %448 ]
  %211 = load i32, ptr %151, align 8, !tbaa !160
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %209, i64 0, i32 2
  %215 = load i16, ptr %214, align 4, !tbaa !363
  %216 = and i16 %215, 2
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %448, label %218

218:                                              ; preds = %213, %207
  %219 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %209, i64 0, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !441
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %448, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %209, align 8, !tbaa !440
  store i32 0, ptr %152, align 8, !tbaa !389
  store ptr null, ptr %153, align 8, !tbaa !391
  store ptr %209, ptr %154, align 8, !tbaa !392
  br i1 %40, label %229, label %224

224:                                              ; preds = %222
  %225 = load ptr, ptr %155, align 8, !tbaa !49
  %226 = getelementptr inbounds %struct.ParticleSettings, ptr %225, i64 0, i32 5
  %227 = load i32, ptr %226, align 8, !tbaa !54
  %228 = and i32 %227, 1024
  br label %229

229:                                              ; preds = %222, %224
  %230 = phi i32 [ %228, %224 ], [ 0, %222 ]
  store i32 %230, ptr %156, align 8, !tbaa !393
  store ptr null, ptr %157, align 8, !tbaa !394
  %231 = load i16, ptr %114, align 2, !tbaa !473
  %232 = icmp eq i16 %231, 6
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  store ptr null, ptr %7, align 8, !tbaa !59
  %234 = getelementptr inbounds %struct.ParticleData, ptr %210, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !145
  store ptr %235, ptr %158, align 8, !tbaa !59
  br label %236

236:                                              ; preds = %233, %229
  %237 = getelementptr inbounds ptr, ptr %112, i64 %208
  %238 = load ptr, ptr %237, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %238, i8 0, i64 %161, i1 false)
  %239 = load ptr, ptr %237, align 8, !tbaa !59
  %240 = getelementptr inbounds %struct.ParticleCacheKey, ptr %239, i64 0, i32 5
  store i32 %52, ptr %240, align 4, !tbaa !366
  call fastcc void @init_particle_interpolation(ptr noundef %22, ptr noundef %210, ptr noundef nonnull %7)
  br i1 %40, label %270, label %241

241:                                              ; preds = %236
  %242 = load ptr, ptr %162, align 8, !tbaa !199
  %243 = load ptr, ptr %163, align 8, !tbaa !49
  %244 = getelementptr inbounds %struct.ParticleSettings, ptr %243, i64 0, i32 8
  %245 = load i16, ptr %244, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %246 = icmp eq ptr %242, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  call void @unit_m4(ptr noundef nonnull %6) #17
  br label %260

248:                                              ; preds = %241
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %242, ptr noundef %210, ptr noundef nonnull %6, i32 noundef 0)
  %249 = sext i16 %245 to i32
  %250 = getelementptr inbounds %struct.ParticleData, ptr %210, i64 0, i32 9
  %251 = load i32, ptr %250, align 8, !tbaa !281
  %252 = getelementptr inbounds %struct.ParticleData, ptr %210, i64 0, i32 10
  %253 = load i32, ptr %252, align 4, !tbaa !282
  %254 = getelementptr inbounds %struct.ParticleData, ptr %210, i64 0, i32 11
  %255 = getelementptr inbounds %struct.ParticleData, ptr %210, i64 0, i32 12
  %256 = load float, ptr %255, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %242, i32 noundef %249, i32 noundef %251, i32 noundef %253, ptr noundef nonnull %254, float noundef %256, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %257 = load float, ptr %5, align 4, !tbaa !34
  store float %257, ptr %164, align 16, !tbaa !34
  %258 = load float, ptr %165, align 4, !tbaa !34
  store float %258, ptr %166, align 4, !tbaa !34
  %259 = load float, ptr %167, align 4, !tbaa !34
  store float %259, ptr %168, align 8, !tbaa !34
  br label %260

260:                                              ; preds = %247, %248
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %169, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  %261 = load float, ptr %170, align 16, !tbaa !34
  store float %261, ptr %10, align 16, !tbaa !34
  %262 = load float, ptr %171, align 4, !tbaa !34
  store float %262, ptr %172, align 4, !tbaa !34
  %263 = load float, ptr %173, align 8, !tbaa !34
  store float %263, ptr %174, align 8, !tbaa !34
  %264 = load float, ptr %176, align 16, !tbaa !34
  store float %264, ptr %175, align 4, !tbaa !34
  %265 = load float, ptr %177, align 4, !tbaa !34
  store float %265, ptr %178, align 16, !tbaa !34
  %266 = load float, ptr %179, align 8, !tbaa !34
  store float %266, ptr %180, align 4, !tbaa !34
  %267 = load float, ptr %9, align 16, !tbaa !34
  store float %267, ptr %181, align 8, !tbaa !34
  %268 = load float, ptr %182, align 4, !tbaa !34
  store float %268, ptr %183, align 4, !tbaa !34
  %269 = load float, ptr %184, align 8, !tbaa !34
  store float %269, ptr %185, align 16, !tbaa !34
  br label %270

270:                                              ; preds = %260, %236
  %271 = load float, ptr %186, align 8, !tbaa !395
  %272 = load float, ptr %187, align 4, !tbaa !397
  %273 = fcmp ult float %271, %272
  %274 = load ptr, ptr %237, align 8, !tbaa !59
  br i1 %273, label %277, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.ParticleCacheKey, ptr %274, i64 0, i32 5
  store i32 -1, ptr %276, align 4, !tbaa !366
  br label %448

277:                                              ; preds = %270
  %278 = fsub float %272, %271
  %279 = getelementptr %struct.PTCacheEditKey, ptr %223, i64 0, i32 7
  %280 = getelementptr %struct.PTCacheEditKey, ptr %223, i64 0, i32 7
  %281 = getelementptr %struct.PTCacheEditKey, ptr %223, i64 0, i32 7
  %282 = trunc i64 %208 to i32
  br label %283

283:                                              ; preds = %277, %435
  %284 = phi ptr [ %274, %277 ], [ %438, %435 ]
  %285 = phi i32 [ 0, %277 ], [ %437, %435 ]
  %286 = sitofp i32 %285 to float
  %287 = fdiv float %286, %188
  %288 = call float @llvm.fmuladd.f32(float %287, float %278, float %271)
  %289 = fneg float %288
  store float %289, ptr %189, align 4, !tbaa !399
  call fastcc void @do_particle_interpolation(ptr noundef %22, i32 noundef %282, ptr noundef %210, float noundef %288, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %290 = load float, ptr %8, align 4, !tbaa !34
  store float %290, ptr %284, align 4, !tbaa !34
  %291 = load float, ptr %190, align 4, !tbaa !34
  %292 = getelementptr inbounds float, ptr %284, i64 1
  store float %291, ptr %292, align 4, !tbaa !34
  %293 = load float, ptr %191, align 4, !tbaa !34
  %294 = getelementptr inbounds float, ptr %284, i64 2
  store float %293, ptr %294, align 4, !tbaa !34
  br i1 %40, label %327, label %295

295:                                              ; preds = %283
  %296 = load i32, ptr %192, align 4, !tbaa !60
  %297 = and i32 %296, 2
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %327

299:                                              ; preds = %295
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %284) #17
  %300 = icmp eq i32 %285, 0
  br i1 %300, label %334, label %301

301:                                              ; preds = %299
  %302 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 -1
  %303 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 -2
  call fastcc void @cache_key_incremental_rotation(ptr noundef nonnull %284, ptr noundef nonnull %302, ptr noundef nonnull %303, ptr noundef nonnull %11, i32 noundef %285)
  %304 = icmp eq i32 %285, %52
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 2
  %307 = getelementptr %struct.ParticleCacheKey, ptr %284, i64 -1, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %306, ptr noundef %307) #17
  br label %308

308:                                              ; preds = %305, %301
  %309 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 1
  %310 = load float, ptr %284, align 4, !tbaa !34
  %311 = load float, ptr %302, align 4, !tbaa !34
  %312 = fsub float %310, %311
  store float %312, ptr %309, align 4, !tbaa !34
  %313 = load float, ptr %292, align 4, !tbaa !34
  %314 = getelementptr %struct.ParticleCacheKey, ptr %284, i64 -1, i32 0, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !34
  %316 = fsub float %313, %315
  %317 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 1, i64 1
  store float %316, ptr %317, align 4, !tbaa !34
  %318 = load float, ptr %294, align 4, !tbaa !34
  %319 = getelementptr %struct.ParticleCacheKey, ptr %284, i64 -1, i32 0, i64 2
  %320 = load float, ptr %319, align 4, !tbaa !34
  %321 = fsub float %318, %320
  %322 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 1, i64 2
  store float %321, ptr %322, align 4, !tbaa !34
  %323 = icmp eq i32 %285, 1
  br i1 %323, label %324, label %334

324:                                              ; preds = %308
  %325 = getelementptr %struct.ParticleCacheKey, ptr %284, i64 -1, i32 1
  store float %312, ptr %325, align 4, !tbaa !34
  %326 = getelementptr %struct.ParticleCacheKey, ptr %284, i64 -1, i32 1, i64 1
  store float %316, ptr %326, align 4, !tbaa !34
  br label %330

327:                                              ; preds = %295, %283
  %328 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 1
  %329 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 1, i64 1
  store float 0.000000e+00, ptr %329, align 4, !tbaa !34
  store float 0.000000e+00, ptr %328, align 4, !tbaa !34
  br label %330

330:                                              ; preds = %327, %324
  %331 = phi i64 [ -1, %324 ], [ 0, %327 ]
  %332 = phi float [ %321, %324 ], [ 1.000000e+00, %327 ]
  %333 = getelementptr %struct.ParticleCacheKey, ptr %284, i64 %331, i32 1, i64 2
  store float %332, ptr %333, align 4, !tbaa !34
  br label %334

334:                                              ; preds = %330, %299, %308
  %335 = load i16, ptr %114, align 2, !tbaa !473
  %336 = icmp eq i16 %335, 6
  br i1 %336, label %337, label %373

337:                                              ; preds = %334
  %338 = icmp eq i32 %285, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3
  %341 = load ptr, ptr %203, align 8, !tbaa !59
  %342 = getelementptr inbounds %struct.HairKey, ptr %341, i64 0, i32 2
  %343 = load float, ptr %342, align 4, !tbaa !474
  call void @weight_to_rgb(ptr noundef nonnull %340, float noundef %343) #17
  br label %363

344:                                              ; preds = %337
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  %345 = load ptr, ptr %200, align 8, !tbaa !59
  %346 = getelementptr inbounds %struct.PTCacheEditKey, ptr %345, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !442
  %348 = load float, ptr %347, align 4, !tbaa !34
  %349 = fsub float %288, %348
  %350 = load ptr, ptr %201, align 8, !tbaa !59
  %351 = getelementptr inbounds %struct.PTCacheEditKey, ptr %350, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !442
  %353 = load float, ptr %352, align 4, !tbaa !34
  %354 = fsub float %353, %348
  %355 = fdiv float %349, %354
  %356 = load ptr, ptr %7, align 8, !tbaa !59
  %357 = getelementptr inbounds %struct.HairKey, ptr %356, i64 0, i32 2
  %358 = load float, ptr %357, align 4, !tbaa !474
  call void @weight_to_rgb(ptr noundef nonnull %14, float noundef %358) #17
  %359 = load ptr, ptr %202, align 8, !tbaa !59
  %360 = getelementptr inbounds %struct.HairKey, ptr %359, i64 0, i32 2
  %361 = load float, ptr %360, align 4, !tbaa !474
  call void @weight_to_rgb(ptr noundef nonnull %15, float noundef %361) #17
  %362 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %362, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %355) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  br label %363

363:                                              ; preds = %344, %339
  %364 = load ptr, ptr %204, align 8, !tbaa !59
  br label %365

365:                                              ; preds = %365, %363
  %366 = phi ptr [ %370, %365 ], [ %364, %363 ]
  %367 = getelementptr inbounds %struct.HairKey, ptr %366, i64 0, i32 1
  %368 = load float, ptr %367, align 4, !tbaa !449
  %369 = fcmp olt float %368, %288
  %370 = getelementptr inbounds %struct.HairKey, ptr %366, i64 1
  br i1 %369, label %365, label %371, !llvm.loop !475

371:                                              ; preds = %365
  store ptr %366, ptr %204, align 8, !tbaa !59
  %372 = getelementptr inbounds %struct.HairKey, ptr %366, i64 -1
  store ptr %372, ptr %7, align 8, !tbaa !59
  br label %435

373:                                              ; preds = %334
  %374 = load ptr, ptr %193, align 8, !tbaa !59
  %375 = load ptr, ptr %209, align 8, !tbaa !440
  %376 = ptrtoint ptr %374 to i64
  %377 = ptrtoint ptr %375 to i64
  %378 = sub i64 %376, %377
  %379 = getelementptr i8, ptr %279, i64 %378
  %380 = load i16, ptr %379, align 4, !tbaa !476
  %381 = and i16 %380, 1
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %409, label %383

383:                                              ; preds = %373
  %384 = load ptr, ptr %194, align 8, !tbaa !59
  %385 = ptrtoint ptr %384 to i64
  %386 = sub i64 %385, %377
  %387 = getelementptr i8, ptr %280, i64 %386
  %388 = load i16, ptr %387, align 4, !tbaa !476
  %389 = and i16 %388, 1
  %390 = icmp eq i16 %389, 0
  br i1 %390, label %398, label %391

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3
  %393 = load float, ptr %12, align 4, !tbaa !34
  store float %393, ptr %392, align 4, !tbaa !34
  %394 = load float, ptr %195, align 4, !tbaa !34
  %395 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3, i64 1
  store float %394, ptr %395, align 4, !tbaa !34
  %396 = load float, ptr %196, align 4, !tbaa !34
  %397 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3, i64 2
  store float %396, ptr %397, align 4, !tbaa !34
  br label %435

398:                                              ; preds = %383
  %399 = getelementptr inbounds %struct.PTCacheEditKey, ptr %374, i64 0, i32 3
  %400 = load ptr, ptr %399, align 8, !tbaa !442
  %401 = load float, ptr %400, align 4, !tbaa !34
  %402 = fsub float %288, %401
  %403 = getelementptr inbounds %struct.PTCacheEditKey, ptr %384, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !442
  %405 = load float, ptr %404, align 4, !tbaa !34
  %406 = fsub float %405, %401
  %407 = fdiv float %402, %406
  %408 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %408, ptr noundef nonnull %12, ptr noundef nonnull %13, float noundef %407) #17
  br label %435

409:                                              ; preds = %373
  %410 = load ptr, ptr %197, align 8, !tbaa !59
  %411 = ptrtoint ptr %410 to i64
  %412 = sub i64 %411, %377
  %413 = getelementptr i8, ptr %281, i64 %412
  %414 = load i16, ptr %413, align 4, !tbaa !476
  %415 = and i16 %414, 1
  %416 = icmp eq i16 %415, 0
  br i1 %416, label %428, label %417

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.PTCacheEditKey, ptr %374, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !442
  %420 = load float, ptr %419, align 4, !tbaa !34
  %421 = fsub float %288, %420
  %422 = getelementptr inbounds %struct.PTCacheEditKey, ptr %410, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8, !tbaa !442
  %424 = load float, ptr %423, align 4, !tbaa !34
  %425 = fsub float %424, %420
  %426 = fdiv float %421, %425
  %427 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %427, ptr noundef nonnull %13, ptr noundef nonnull %12, float noundef %426) #17
  br label %435

428:                                              ; preds = %409
  %429 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3
  %430 = load float, ptr %13, align 4, !tbaa !34
  store float %430, ptr %429, align 4, !tbaa !34
  %431 = load float, ptr %198, align 4, !tbaa !34
  %432 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3, i64 1
  store float %431, ptr %432, align 4, !tbaa !34
  %433 = load float, ptr %199, align 4, !tbaa !34
  %434 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 3, i64 2
  store float %433, ptr %434, align 4, !tbaa !34
  br label %435

435:                                              ; preds = %398, %391, %428, %417, %371
  %436 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 0, i32 4
  store float %288, ptr %436, align 4, !tbaa !377
  %437 = add nuw i32 %285, 1
  %438 = getelementptr inbounds %struct.ParticleCacheKey, ptr %284, i64 1
  %439 = icmp eq i32 %285, %52
  br i1 %439, label %440, label %283, !llvm.loop !477

440:                                              ; preds = %435
  br i1 %40, label %448, label %441

441:                                              ; preds = %440
  %442 = load i32, ptr %205, align 4, !tbaa !60
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %441
  %446 = load ptr, ptr %237, align 8, !tbaa !59
  %447 = getelementptr inbounds %struct.ParticleCacheKey, ptr %446, i64 0, i32 2
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %447, ptr noundef nonnull %10) #17
  br label %448

448:                                              ; preds = %440, %441, %445, %218, %213, %275
  %449 = add nuw nsw i64 %208, 1
  %450 = icmp ne ptr %210, null
  %451 = zext i1 %450 to i64
  %452 = getelementptr inbounds %struct.ParticleData, ptr %210, i64 %451
  %453 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %209, i64 1
  %454 = icmp eq i64 %449, %206
  br i1 %454, label %455, label %207, !llvm.loop !478

455:                                              ; preds = %448, %146
  %456 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 13
  store i32 %51, ptr %456, align 8, !tbaa !160
  br i1 %40, label %477, label %457

457:                                              ; preds = %455
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %16, i8 0, i64 48, i1 false)
  store ptr %0, ptr %16, align 8, !tbaa !64
  %458 = getelementptr inbounds %struct.ParticleSimulationData, ptr %16, i64 0, i32 1
  store ptr %1, ptr %458, align 8, !tbaa !97
  %459 = getelementptr inbounds %struct.ParticleSimulationData, ptr %16, i64 0, i32 2
  store ptr %22, ptr %459, align 8, !tbaa !66
  %460 = load ptr, ptr %23, align 8, !tbaa !59
  %461 = icmp eq ptr %460, null
  br i1 %461, label %474, label %462

462:                                              ; preds = %457, %471
  %463 = phi ptr [ %472, %471 ], [ %460, %457 ]
  %464 = getelementptr inbounds %struct.ModifierData, ptr %463, i64 0, i32 2
  %465 = load i32, ptr %464, align 8, !tbaa !98
  %466 = icmp eq i32 %465, 19
  br i1 %466, label %467, label %471

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %463, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !100
  %470 = icmp eq ptr %469, %22
  br i1 %470, label %474, label %471

471:                                              ; preds = %467, %462
  %472 = load ptr, ptr %463, align 8, !tbaa !59
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %462, !llvm.loop !102

474:                                              ; preds = %467, %471, %457
  %475 = phi ptr [ null, %457 ], [ %463, %467 ], [ null, %471 ]
  %476 = getelementptr inbounds %struct.ParticleSimulationData, ptr %16, i64 0, i32 3
  store ptr %475, ptr %476, align 8, !tbaa !285
  call void @psys_cache_child_paths(ptr noundef nonnull %16, float noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #17
  br label %477

477:                                              ; preds = %474, %455
  %478 = icmp sgt i32 %51, 0
  %479 = select i1 %113, i1 %478, i1 false
  br i1 %479, label %480, label %491

480:                                              ; preds = %477
  %481 = load ptr, ptr %147, align 8, !tbaa !362
  br label %482

482:                                              ; preds = %480, %482
  %483 = phi i32 [ %488, %482 ], [ 0, %480 ]
  %484 = phi ptr [ %489, %482 ], [ %481, %480 ]
  %485 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %484, i64 0, i32 2
  %486 = load i16, ptr %485, align 4, !tbaa !363
  %487 = and i16 %486, -3
  store i16 %487, ptr %485, align 4, !tbaa !363
  %488 = add nuw nsw i32 %483, 1
  %489 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %484, i64 1
  %490 = icmp eq i32 %488, %51
  br i1 %490, label %491, label %482, !llvm.loop !479

491:                                              ; preds = %482, %477
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #17
  ret void
}

declare void @weight_to_rgb(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_particle_key(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(56) %1, i64 56, i1 false)
  br label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !399
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(56) %1, i64 56, i1 false)
  store float %8, ptr %7, align 4, !tbaa !399
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_get_from_key(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = load float, ptr %0, align 4, !tbaa !34
  store float %8, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  store float %13, ptr %14, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %7, %5
  %16 = icmp eq ptr %2, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  store float %19, ptr %2, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %2, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 2
  store float %24, ptr %25, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %17, %15
  %27 = icmp eq ptr %3, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 2
  tail call void @copy_qt_qt(ptr noundef nonnull %3, ptr noundef nonnull %29) #17
  br label %30

30:                                               ; preds = %28, %26
  %31 = icmp eq ptr %4, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  %34 = load float, ptr %33, align 4, !tbaa !399
  store float %34, ptr %4, align 4, !tbaa !34
  br label %35

35:                                               ; preds = %32, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_mat_hair_to_object(ptr nocapture noundef readnone %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @unit_m4(ptr noundef %4) #17
  br label %26

9:                                                ; preds = %5
  tail call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %10 = sext i16 %2 to i32
  %11 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !281
  %13 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !282
  %15 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 11
  %16 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 12
  %17 = load float, ptr %16, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %1, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %15, float noundef %17, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %18 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %19 = load float, ptr %6, align 4, !tbaa !34
  store float %19, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %6, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %6, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  store float %24, ptr %25, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @psys_face_mat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !282
  %9 = icmp ugt i32 %8, -3
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !281
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi i32 [ %12, %10 ], [ %8, %5 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !226
  %19 = tail call i32 %18(ptr noundef %1) #17
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %13
  tail call void @unit_m4(ptr noundef %3) #17
  br label %223

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 48
  %24 = load ptr, ptr %23, align 8, !tbaa !278
  %25 = tail call ptr %24(ptr noundef %1, i32 noundef %14, i32 noundef 4) #17
  %26 = load ptr, ptr %23, align 8, !tbaa !278
  %27 = tail call ptr %26(ptr noundef %1, i32 noundef %14, i32 noundef 13) #17
  %28 = icmp eq i32 %4, 0
  br i1 %28, label %74, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 50
  %31 = load ptr, ptr %30, align 8, !tbaa !275
  %32 = tail call ptr %31(ptr noundef %1, i32 noundef 14) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %25, align 4, !tbaa !238
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [3 x float], ptr %32, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !34
  store float %38, ptr %6, align 16, !tbaa !34
  %39 = getelementptr inbounds float, ptr %37, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %6, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %37, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %6, i64 2
  store float %43, ptr %44, align 8, !tbaa !34
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %46 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !240
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [3 x float], ptr %32, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !34
  store float %50, ptr %45, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %52, ptr %53, align 16, !tbaa !34
  %54 = getelementptr inbounds float, ptr %49, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %58 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !241
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [3 x float], ptr %32, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !34
  store float %62, ptr %57, align 8, !tbaa !34
  %63 = getelementptr inbounds float, ptr %61, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %61, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %67, ptr %68, align 16, !tbaa !34
  %69 = tail call ptr @DM_get_vert_data_layer(ptr noundef %1, i32 noundef 7) #17
  %70 = icmp eq ptr %69, null
  br i1 %70, label %86, label %71

71:                                               ; preds = %34
  %72 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !220
  call void @BKE_mesh_orco_verts_transform(ptr noundef %73, ptr noundef nonnull %6, i32 noundef 3, i32 noundef 1) #17
  br label %86

74:                                               ; preds = %29, %22
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 76
  %76 = load ptr, ptr %75, align 8, !tbaa !276
  %77 = load i32, ptr %25, align 4, !tbaa !238
  call void %76(ptr noundef %1, i32 noundef %77, ptr noundef nonnull %6) #17
  %78 = load ptr, ptr %75, align 8, !tbaa !276
  %79 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !240
  %81 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call void %78(ptr noundef %1, i32 noundef %80, ptr noundef nonnull %81) #17
  %82 = load ptr, ptr %75, align 8, !tbaa !276
  %83 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !241
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call void %82(ptr noundef %1, i32 noundef %84, ptr noundef nonnull %85) #17
  br label %86

86:                                               ; preds = %34, %71, %74
  %87 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %89 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 3
  store float 1.000000e+00, ptr %89, align 4, !tbaa !34
  %90 = getelementptr inbounds [4 x float], ptr %3, i64 2
  %91 = call float @normal_tri_v3(ptr noundef nonnull %90, ptr noundef nonnull %6, ptr noundef nonnull %87, ptr noundef nonnull %88) #17
  %92 = icmp eq ptr %27, null
  br i1 %92, label %167, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds [2 x float], ptr %27, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = load float, ptr %27, align 4, !tbaa !34
  %97 = fsub float %95, %96
  %98 = getelementptr inbounds [2 x float], ptr %27, i64 1, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = getelementptr inbounds [2 x float], ptr %27, i64 0, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = fsub float %99, %101
  %103 = getelementptr inbounds [2 x float], ptr %27, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = fsub float %104, %96
  %106 = getelementptr inbounds [2 x float], ptr %27, i64 2, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = fsub float %107, %101
  %109 = fneg float %108
  %110 = fmul float %97, %109
  %111 = call float @llvm.fmuladd.f32(float %105, float %102, float %110)
  %112 = fcmp une float %111, 0.000000e+00
  br i1 %112, label %113, label %163

113:                                              ; preds = %93
  %114 = fdiv float 1.000000e+00, %111
  %115 = fmul float %114, %109
  %116 = fmul float %102, %114
  %117 = load float, ptr %87, align 4, !tbaa !34
  %118 = load float, ptr %6, align 16, !tbaa !34
  %119 = fsub float %117, %118
  %120 = load float, ptr %88, align 8, !tbaa !34
  %121 = fsub float %120, %118
  %122 = fmul float %116, %121
  %123 = call float @llvm.fmuladd.f32(float %115, float %119, float %122)
  %124 = getelementptr inbounds [4 x float], ptr %3, i64 1
  store float %123, ptr %124, align 4, !tbaa !34
  %125 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %126 = load float, ptr %125, align 16, !tbaa !34
  %127 = getelementptr inbounds float, ptr %6, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = fsub float %126, %128
  %130 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !34
  %132 = fsub float %131, %128
  %133 = fmul float %116, %132
  %134 = call float @llvm.fmuladd.f32(float %115, float %129, float %133)
  %135 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  store float %134, ptr %135, align 4, !tbaa !34
  %136 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !34
  %138 = getelementptr inbounds float, ptr %6, i64 2
  %139 = load float, ptr %138, align 8, !tbaa !34
  %140 = fsub float %137, %139
  %141 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  %142 = load float, ptr %141, align 16, !tbaa !34
  %143 = fsub float %142, %139
  %144 = fmul float %116, %143
  %145 = call float @llvm.fmuladd.f32(float %115, float %140, float %144)
  %146 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  store float %145, ptr %146, align 4, !tbaa !34
  %147 = fmul float %134, %134
  %148 = call float @llvm.fmuladd.f32(float %123, float %123, float %147)
  %149 = call float @llvm.fmuladd.f32(float %145, float %145, float %148)
  %150 = fcmp ogt float %149, 0x38AA95A5C0000000
  br i1 %150, label %151, label %160

151:                                              ; preds = %113
  %152 = call float @sqrtf(float noundef %149) #17
  %153 = fdiv float 1.000000e+00, %152
  %154 = load float, ptr %124, align 4, !tbaa !34
  %155 = fmul float %154, %153
  store float %155, ptr %124, align 4, !tbaa !34
  %156 = load float, ptr %135, align 4, !tbaa !34
  %157 = fmul float %153, %156
  store float %157, ptr %135, align 4, !tbaa !34
  %158 = load float, ptr %146, align 4, !tbaa !34
  %159 = fmul float %153, %158
  br label %161

160:                                              ; preds = %113
  store float 0.000000e+00, ptr %124, align 4, !tbaa !34
  store float 0.000000e+00, ptr %135, align 4, !tbaa !34
  br label %161

161:                                              ; preds = %160, %151
  %162 = phi float [ 0.000000e+00, %160 ], [ %159, %151 ]
  store float %162, ptr %146, align 4, !tbaa !34
  br label %200

163:                                              ; preds = %93
  %164 = getelementptr inbounds [4 x float], ptr %3, i64 1
  %165 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  store float 0.000000e+00, ptr %165, align 4, !tbaa !34
  %166 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  store float 0.000000e+00, ptr %166, align 4, !tbaa !34
  store float 0.000000e+00, ptr %164, align 4, !tbaa !34
  br label %200

167:                                              ; preds = %86
  %168 = getelementptr inbounds [4 x float], ptr %3, i64 1
  %169 = load float, ptr %87, align 4, !tbaa !34
  %170 = load float, ptr %6, align 16, !tbaa !34
  %171 = fsub float %169, %170
  store float %171, ptr %168, align 4, !tbaa !34
  %172 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %173 = load float, ptr %172, align 16, !tbaa !34
  %174 = getelementptr inbounds float, ptr %6, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !34
  %176 = fsub float %173, %175
  %177 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  store float %176, ptr %177, align 4, !tbaa !34
  %178 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !34
  %180 = getelementptr inbounds float, ptr %6, i64 2
  %181 = load float, ptr %180, align 8, !tbaa !34
  %182 = fsub float %179, %181
  %183 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  store float %182, ptr %183, align 4, !tbaa !34
  %184 = fmul float %176, %176
  %185 = call float @llvm.fmuladd.f32(float %171, float %171, float %184)
  %186 = call float @llvm.fmuladd.f32(float %182, float %182, float %185)
  %187 = fcmp ogt float %186, 0x38AA95A5C0000000
  br i1 %187, label %188, label %197

188:                                              ; preds = %167
  %189 = call float @sqrtf(float noundef %186) #17
  %190 = fdiv float 1.000000e+00, %189
  %191 = load float, ptr %168, align 4, !tbaa !34
  %192 = fmul float %191, %190
  store float %192, ptr %168, align 4, !tbaa !34
  %193 = load float, ptr %177, align 4, !tbaa !34
  %194 = fmul float %190, %193
  store float %194, ptr %177, align 4, !tbaa !34
  %195 = load float, ptr %183, align 4, !tbaa !34
  %196 = fmul float %190, %195
  br label %198

197:                                              ; preds = %167
  store float 0.000000e+00, ptr %168, align 4, !tbaa !34
  store float 0.000000e+00, ptr %177, align 4, !tbaa !34
  br label %198

198:                                              ; preds = %197, %188
  %199 = phi float [ 0.000000e+00, %197 ], [ %196, %188 ]
  store float %199, ptr %183, align 4, !tbaa !34
  br label %200

200:                                              ; preds = %161, %163, %198
  %201 = getelementptr inbounds [4 x float], ptr %3, i64 1
  %202 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !34
  %204 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !34
  %206 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !34
  %208 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !34
  %210 = fneg float %207
  %211 = fmul float %209, %210
  %212 = call float @llvm.fmuladd.f32(float %203, float %205, float %211)
  store float %212, ptr %3, align 4, !tbaa !34
  %213 = load float, ptr %90, align 4, !tbaa !34
  %214 = load float, ptr %201, align 4, !tbaa !34
  %215 = fneg float %214
  %216 = fmul float %205, %215
  %217 = call float @llvm.fmuladd.f32(float %207, float %213, float %216)
  %218 = getelementptr inbounds float, ptr %3, i64 1
  store float %217, ptr %218, align 4, !tbaa !34
  %219 = fneg float %203
  %220 = fmul float %213, %219
  %221 = call float @llvm.fmuladd.f32(float %214, float %209, float %220)
  %222 = getelementptr inbounds float, ptr %3, i64 2
  store float %221, ptr %222, align 4, !tbaa !34
  br label %223

223:                                              ; preds = %200, %21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_mat_hair_to_orco(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  tail call fastcc void @psys_face_mat(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef 1)
  %8 = sext i16 %2 to i32
  %9 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !281
  %11 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !282
  %13 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 11
  %14 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 12
  %15 = load float, ptr %14, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, float noundef %15, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null)
  %16 = call ptr @DM_get_vert_data_layer(ptr noundef %1, i32 noundef 7) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !220
  call void @BKE_mesh_orco_verts_transform(ptr noundef %20, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 1) #17
  br label %21

21:                                               ; preds = %18, %5
  %22 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %23 = load float, ptr %7, align 4, !tbaa !34
  store float %23, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %7, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %7, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  store float %28, ptr %29, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_orco_verts_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_vec_rot_to_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0)
  call void @transpose_m4(ptr noundef nonnull %4) #17
  call void @mul_mat3_m4_v3(ptr noundef nonnull %4, ptr noundef %2) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret void
}

declare void @transpose_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @object_add_particle_system(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !480
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %57

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 25
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = and i32 %16, -2
  store i32 %17, ptr %15, align 4, !tbaa !60
  %18 = load ptr, ptr %14, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !481

20:                                               ; preds = %13, %9
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %22 = tail call ptr %21(i64 noundef 656, ptr noundef nonnull @.str.9) #17
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 41
  %24 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %23) #17
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 40
  store ptr %24, ptr %25, align 8, !tbaa !93
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %22) #17
  %26 = tail call ptr @psys_new_settings(ptr noundef nonnull @.str.10, ptr noundef null)
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !49
  %28 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #17
  %29 = icmp sgt i32 %28, 1
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 18
  br i1 %29, label %31, label %34

31:                                               ; preds = %20
  %32 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #17
  %33 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %30, i64 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %32) #17
  br label %36

34:                                               ; preds = %20
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull @.str.12, i64 noundef 64) #17
  br label %36

36:                                               ; preds = %34, %31
  %37 = tail call ptr @modifier_new(i32 noundef 19) #17
  %38 = icmp eq ptr %2, null
  %39 = getelementptr inbounds %struct.ModifierData, ptr %37, i64 0, i32 6
  br i1 %38, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %39, ptr noundef nonnull %2, i64 noundef 64) #17
  br label %45

42:                                               ; preds = %36
  %43 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #17
  %44 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %39, i64 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %43) #17
  br label %45

45:                                               ; preds = %42, %40
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @modifier_unique_name(ptr noundef nonnull %46, ptr noundef %37) #17
  %47 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %37, i64 0, i32 1
  store ptr %22, ptr %47, align 8, !tbaa !100
  tail call void @BLI_addtail(ptr noundef nonnull %46, ptr noundef %37) #17
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 26
  store i32 0, ptr %48, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 25
  store i32 1, ptr %49, align 4, !tbaa !60
  %50 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !482
  %52 = add nsw i32 %51, 1
  %53 = sitofp i32 %52 to float
  %54 = tail call float @BKE_scene_frame_get_from_ctime(ptr noundef %0, float noundef %53) #17
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 20
  store float %54, ptr %55, align 8, !tbaa !483
  %56 = load ptr, ptr @G, align 8, !tbaa !484
  tail call void @DAG_relations_tag_update(ptr noundef %56) #17
  tail call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext 2) #17
  br label %57

57:                                               ; preds = %3, %5, %45
  %58 = phi ptr [ %37, %45 ], [ null, %5 ], [ null, %3 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @psys_new_settings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @G, align 8
  %5 = select i1 %3, ptr %4, ptr %1
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef %5, i16 noundef signext 16720, ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 7
  store i16 0, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 9
  store i16 0, ptr %8, align 4, !tbaa !283
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 17
  store i16 10, ptr %9, align 8, !tbaa !486
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 21
  store i16 1, ptr %10, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 38
  store i16 1, ptr %11, align 2, !tbaa !487
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 37
  store i16 3, ptr %12, align 8, !tbaa !488
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 40
  store i16 1, ptr %13, align 2, !tbaa !489
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 5
  store i32 33152, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 53
  store float 1.000000e+00, ptr %15, align 4, !tbaa !490
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 54
  store float 2.000000e+02, ptr %16, align 8, !tbaa !491
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 55
  store float 5.000000e+01, ptr %17, align 4, !tbaa !492
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 59
  store float 1.000000e+00, ptr %18, align 4, !tbaa !493
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 63
  store i32 1000, ptr %19, align 4, !tbaa !494
  %20 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 65
  store i32 10, ptr %20, align 4, !tbaa !495
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 57
  store float 1.000000e+00, ptr %21, align 4, !tbaa !467
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 58
  store float 0x3FC99999A0000000, ptr %22, align 8, !tbaa !496
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 33
  store i16 1, ptr %23, align 8, !tbaa !497
  %24 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 11
  store i16 1, ptr %24, align 8, !tbaa !454
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 26
  store i16 5, ptr %25, align 2, !tbaa !498
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 27
  store i16 5, ptr %26, align 4, !tbaa !499
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 24
  store i16 2, ptr %27, align 2, !tbaa !326
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 25
  store i16 3, ptr %28, align 8, !tbaa !333
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 28
  store i16 5, ptr %29, align 2, !tbaa !500
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 29
  store i16 3, ptr %30, align 8, !tbaa !501
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 36
  store i16 2, ptr %31, align 2, !tbaa !502
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 102
  store float 1.000000e+00, ptr %32, align 8, !tbaa !503
  %33 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 14
  store i16 0, ptr %33, align 2, !tbaa !504
  %34 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 30
  store i16 100, ptr %34, align 2, !tbaa !210
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 8
  store i16 1, ptr %35, align 2, !tbaa !284
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 69
  store float 1.000000e+00, ptr %36, align 4, !tbaa !505
  %37 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 81
  store float 1.000000e+00, ptr %37, align 4, !tbaa !506
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 82
  store float 0x3FA99999A0000000, ptr %38, align 8, !tbaa !507
  %39 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 92
  store float 1.000000e+00, ptr %39, align 8, !tbaa !508
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 12
  store i16 2, ptr %40, align 2, !tbaa !509
  %41 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 13
  store i16 1, ptr %41, align 4, !tbaa !510
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 89
  store i32 10, ptr %42, align 4, !tbaa !318
  %43 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 90
  store i32 100, ptr %43, align 8, !tbaa !319
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 94
  store float 0x3FC99999A0000000, ptr %44, align 8, !tbaa !376
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 95
  store float 0.000000e+00, ptr %45, align 4, !tbaa !375
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 97
  store float 0.000000e+00, ptr %46, align 4, !tbaa !511
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 98
  store float 0x3FC99999A0000000, ptr %47, align 8, !tbaa !512
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 99
  store float 2.000000e+00, ptr %48, align 4, !tbaa !513
  %49 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 104
  store float 1.000000e+00, ptr %49, align 8, !tbaa !514
  %50 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 106
  store float 1.000000e+00, ptr %50, align 8, !tbaa !515
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 109
  store float 1.000000e+00, ptr %51, align 4, !tbaa !516
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 110
  store float 1.000000e+00, ptr %52, align 8, !tbaa !517
  %53 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 111
  store float 0.000000e+00, ptr %53, align 4, !tbaa !518
  %54 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 15
  store i32 8, ptr %54, align 8, !tbaa !222
  %55 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 116
  store float 5.000000e-01, ptr %55, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 117
  store float 0.000000e+00, ptr %56, align 8, !tbaa !396
  %57 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 118
  store float 1.000000e+00, ptr %57, align 4, !tbaa !398
  %58 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 44
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 44, i64 1
  store float 1.000000e+00, ptr %59, align 4, !tbaa !34
  store float 1.000000e+00, ptr %58, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 120
  store i32 1, ptr %60, align 4, !tbaa !519
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 47
  store float 1.000000e+00, ptr %61, align 8, !tbaa !520
  %62 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 23
  store i16 1, ptr %62, align 4, !tbaa !382
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 49
  store i16 1920, ptr %63, align 2, !tbaa !245
  %64 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 50
  store float 1.000000e+00, ptr %64, align 8, !tbaa !246
  %65 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 51
  store float 0x3FB99999A0000000, ptr %65, align 4, !tbaa !248
  %66 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 52
  store float 0x3FE99999A0000000, ptr %66, align 8, !tbaa !247
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !132
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %2
  %71 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #17
  store ptr %71, ptr %67, align 8, !tbaa !132
  br label %72

72:                                               ; preds = %2, %70
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 31
  store i16 1, ptr %73, align 4, !tbaa !387
  %74 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 130
  store i16 0, ptr %74, align 8, !tbaa !521
  ret ptr %6
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_scene_frame_get_from_ctime(ptr noundef, float noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @object_remove_particle_system(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %12 = load i32, ptr %11, align 4, !tbaa !60
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15, !llvm.loop !61

15:                                               ; preds = %6, %10, %2
  %16 = phi ptr [ null, %2 ], [ %8, %10 ], [ null, %6 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %77, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 31) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.SmokeModifierData, ptr %19, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !522
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.SmokeModifierData, ptr %19, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !524
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !525
  %32 = icmp eq ptr %31, %16
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store ptr null, ptr %30, align 8, !tbaa !525
  br label %34

34:                                               ; preds = %21, %25, %29, %33, %18
  %35 = tail call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 40) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !527
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !529
  %44 = icmp eq ptr %43, %16
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr null, ptr %42, align 8, !tbaa !529
  br label %46

46:                                               ; preds = %37, %41, %45, %34
  %47 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %46, %59
  %51 = phi ptr [ %60, %59 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.ModifierData, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !98
  %54 = icmp eq i32 %53, 19
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !100
  %58 = icmp eq ptr %57, %16
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %50
  %60 = load ptr, ptr %51, align 8, !tbaa !59
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %50, !llvm.loop !102

62:                                               ; preds = %55, %59, %46
  %63 = phi ptr [ null, %46 ], [ %51, %55 ], [ null, %59 ]
  tail call void @BLI_remlink(ptr noundef nonnull %47, ptr noundef %63) #17
  tail call void @modifier_free(ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  tail call void @BLI_remlink(ptr noundef nonnull %64, ptr noundef nonnull %16) #17
  tail call void @psys_free(ptr noundef %1, ptr noundef nonnull %16)
  %65 = load ptr, ptr %64, align 8, !tbaa !531
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ParticleSystem, ptr %65, i64 0, i32 25
  %69 = load i32, ptr %68, align 4, !tbaa !60
  %70 = or i32 %69, 1
  store i32 %70, ptr %68, align 4, !tbaa !60
  br label %75

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %73 = load i32, ptr %72, align 8, !tbaa !89
  %74 = and i32 %73, -33
  store i32 %74, ptr %72, align 8, !tbaa !89
  br label %75

75:                                               ; preds = %71, %67
  %76 = load ptr, ptr @G, align 8, !tbaa !484
  tail call void @DAG_relations_tag_update(ptr noundef %76) #17
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 2) #17
  br label %77

77:                                               ; preds = %15, %75
  ret void
}

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_particlesettings_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #17
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 128
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = tail call ptr %3(ptr noundef %5) #17
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 128
  store ptr %6, ptr %7, align 8, !tbaa !135
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 129
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = tail call ptr %8(ptr noundef %10) #17
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 129
  store ptr %11, ptr %12, align 8, !tbaa !136
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !132
  %16 = tail call ptr %13(ptr noundef %15) #17
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !132
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = tail call ptr %18(ptr noundef %20) #17
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !138
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !137
  %25 = tail call ptr @boid_copy_settings(ptr noundef %24) #17
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !137
  br label %27

27:                                               ; preds = %1, %40
  %28 = phi i64 [ 0, %1 ], [ %41, %40 ]
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %34 = tail call ptr %33(i64 noundef 312, ptr noundef nonnull @.str.13) #17
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 121, i64 %28
  store ptr %34, ptr %35, align 8, !tbaa !59
  %36 = load ptr, ptr %29, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %34, ptr noundef nonnull align 8 dereferenceable(312) %36, i64 312, i1 false)
  %37 = load ptr, ptr %35, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.MTex, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !139
  tail call void @id_us_plus(ptr noundef %39) #17
  br label %40

40:                                               ; preds = %27, %32
  %41 = add nuw nsw i64 %28, 1
  %42 = icmp eq i64 %41, 18
  br i1 %42, label %43, label %27, !llvm.loop !532

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 123
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  tail call void @BLI_duplicatelist(ptr noundef nonnull %44, ptr noundef nonnull %45) #17
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

declare ptr @boid_copy_settings(ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_particlesettings_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !484
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !533
  %5 = icmp eq ptr %4, null
  br i1 %5, label %121, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !180
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #17
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 122
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  tail call void @id_lib_extern(ptr noundef %12) #17
  br label %13

13:                                               ; preds = %21, %10
  %14 = phi i64 [ 0, %10 ], [ %22, %21 ]
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  tail call void @id_lib_extern(ptr noundef %20) #17
  br label %21

21:                                               ; preds = %18, %13
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, 18
  br i1 %23, label %121, label %13, !llvm.loop !534

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %33

28:                                               ; preds = %58, %40
  %29 = phi i8 [ %36, %40 ], [ %59, %58 ]
  %30 = phi i8 [ %35, %40 ], [ %60, %58 ]
  %31 = load ptr, ptr %34, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33, !llvm.loop !535

33:                                               ; preds = %24, %28
  %34 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %35 = phi i8 [ %30, %28 ], [ 0, %24 ]
  %36 = phi i8 [ %29, %28 ], [ 0, %24 ]
  %37 = icmp eq i8 %35, 0
  %38 = icmp eq i8 %36, 0
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 109
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = icmp eq ptr %42, null
  br i1 %43, label %28, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 3
  br label %46

46:                                               ; preds = %44, %58
  %47 = phi ptr [ %42, %44 ], [ %61, %58 ]
  %48 = phi i8 [ %35, %44 ], [ %60, %58 ]
  %49 = phi i8 [ %36, %44 ], [ %59, %58 ]
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !49
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load ptr, ptr %45, align 8, !tbaa !536
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, i8 1, i8 %49
  %57 = select i1 %55, i8 %48, i8 1
  br label %58

58:                                               ; preds = %53, %46
  %59 = phi i8 [ %49, %46 ], [ %56, %53 ]
  %60 = phi i8 [ %48, %46 ], [ %57, %53 ]
  %61 = load ptr, ptr %47, align 8, !tbaa !59
  %62 = icmp eq ptr %61, null
  br i1 %62, label %28, label %46, !llvm.loop !537

63:                                               ; preds = %28, %33
  %64 = phi i8 [ %36, %33 ], [ %29, %28 ]
  %65 = phi i8 [ %35, %33 ], [ %30, %28 ]
  %66 = icmp ne i8 %64, 0
  br label %67

67:                                               ; preds = %63, %24
  %68 = phi i1 [ false, %24 ], [ %66, %63 ]
  %69 = phi i8 [ 0, %24 ], [ %65, %63 ]
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #17
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 122
  %74 = load ptr, ptr %73, align 8, !tbaa !116
  tail call void @id_lib_extern(ptr noundef %74) #17
  br label %75

75:                                               ; preds = %83, %72
  %76 = phi i64 [ 0, %72 ], [ %84, %83 ]
  %77 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.MTex, ptr %78, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !139
  tail call void @id_lib_extern(ptr noundef %82) #17
  br label %83

83:                                               ; preds = %80, %75
  %84 = add nuw nsw i64 %76, 1
  %85 = icmp eq i64 %84, 18
  br i1 %85, label %121, label %75, !llvm.loop !534

86:                                               ; preds = %67
  %87 = icmp ne i8 %69, 0
  %88 = select i1 %68, i1 %87, i1 false
  br i1 %88, label %89, label %121

89:                                               ; preds = %86
  %90 = tail call ptr @BKE_particlesettings_copy(ptr noundef %0)
  %91 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 6
  store i32 0, ptr %91, align 4, !tbaa !180
  %92 = load ptr, ptr %3, align 8, !tbaa !533
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %92, ptr noundef %90) #17
  %93 = load ptr, ptr %25, align 8, !tbaa !59
  %94 = icmp eq ptr %93, null
  br i1 %94, label %121, label %98

95:                                               ; preds = %118, %98
  %96 = load ptr, ptr %99, align 8, !tbaa !59
  %97 = icmp eq ptr %96, null
  br i1 %97, label %121, label %98, !llvm.loop !538

98:                                               ; preds = %89, %95
  %99 = phi ptr [ %96, %95 ], [ %93, %89 ]
  %100 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 109
  %101 = load ptr, ptr %100, align 8, !tbaa !59
  %102 = icmp eq ptr %101, null
  br i1 %102, label %95, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 3
  br label %105

105:                                              ; preds = %103, %118
  %106 = phi ptr [ %101, %103 ], [ %119, %118 ]
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !49
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load ptr, ptr %104, align 8, !tbaa !536
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  store ptr %90, ptr %107, align 8, !tbaa !49
  %114 = load i32, ptr %91, align 4, !tbaa !180
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %91, align 4, !tbaa !180
  %116 = load i32, ptr %7, align 4, !tbaa !180
  %117 = add nsw i32 %116, -1
  store i32 %117, ptr %7, align 4, !tbaa !180
  br label %118

118:                                              ; preds = %105, %110, %113
  %119 = load ptr, ptr %106, align 8, !tbaa !59
  %120 = icmp eq ptr %119, null
  br i1 %120, label %95, label %105, !llvm.loop !539

121:                                              ; preds = %95, %83, %21, %89, %86, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @get_particle_uv(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %8 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %7, i32 noundef 5, ptr noundef %4) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %7, i32 noundef 5) #17
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %104, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %1, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 10
  %19 = load i32, ptr %18, align 4, !tbaa !282
  %20 = icmp ugt i32 %19, -3
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !281
  br label %24

24:                                               ; preds = %17, %21
  %25 = phi i32 [ %23, %21 ], [ %19, %17 ]
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %27 = load ptr, ptr %26, align 8, !tbaa !226
  %28 = tail call i32 %27(ptr noundef %0) #17
  %29 = icmp slt i32 %25, %28
  %30 = select i1 %29, i32 %25, i32 -1
  br label %31

31:                                               ; preds = %24, %15
  %32 = phi i32 [ %30, %24 ], [ %2, %15 ]
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %35, align 4, !tbaa !34
  br label %102

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %38 = load ptr, ptr %37, align 8, !tbaa !278
  %39 = tail call ptr %38(ptr noundef %0, i32 noundef %32, i32 noundef 4) #17
  %40 = sext i32 %32 to i64
  %41 = getelementptr inbounds %struct.MTFace, ptr %13, i64 %40
  %42 = getelementptr inbounds %struct.MFace, ptr %39, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !242
  %44 = load float, ptr %41, align 8, !tbaa !34
  %45 = getelementptr inbounds [2 x float], ptr %41, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 1
  %48 = load float, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 2
  %52 = load float, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = icmp eq i32 %43, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %36
  %57 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 3
  %58 = load float, ptr %57, align 8, !tbaa !34
  %59 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 3, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = load float, ptr %3, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %3, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fmul float %48, %63
  %65 = tail call float @llvm.fmuladd.f32(float %61, float %44, float %64)
  %66 = getelementptr inbounds float, ptr %3, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %52, float %65)
  %69 = getelementptr inbounds float, ptr %3, i64 3
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %58, float %68)
  store float %71, ptr %5, align 4, !tbaa !34
  %72 = load float, ptr %3, align 4, !tbaa !34
  %73 = load float, ptr %62, align 4, !tbaa !34
  %74 = fmul float %50, %73
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %46, float %74)
  %76 = load float, ptr %66, align 4, !tbaa !34
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %54, float %75)
  %78 = load float, ptr %69, align 4, !tbaa !34
  %79 = tail call float @llvm.fmuladd.f32(float %78, float %60, float %77)
  br label %95

80:                                               ; preds = %36
  %81 = load float, ptr %3, align 4, !tbaa !34
  %82 = getelementptr inbounds float, ptr %3, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fmul float %48, %83
  %85 = tail call float @llvm.fmuladd.f32(float %81, float %44, float %84)
  %86 = getelementptr inbounds float, ptr %3, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %52, float %85)
  store float %88, ptr %5, align 4, !tbaa !34
  %89 = load float, ptr %3, align 4, !tbaa !34
  %90 = load float, ptr %82, align 4, !tbaa !34
  %91 = fmul float %50, %90
  %92 = tail call float @llvm.fmuladd.f32(float %89, float %46, float %91)
  %93 = load float, ptr %86, align 4, !tbaa !34
  %94 = tail call float @llvm.fmuladd.f32(float %93, float %54, float %92)
  br label %95

95:                                               ; preds = %56, %80
  %96 = phi float [ %79, %56 ], [ %94, %80 ]
  %97 = getelementptr inbounds float, ptr %5, i64 1
  store float %96, ptr %97, align 4, !tbaa !34
  %98 = load float, ptr %5, align 4, !tbaa !34
  %99 = tail call float @llvm.fmuladd.f32(float %98, float 2.000000e+00, float -1.000000e+00)
  store float %99, ptr %5, align 4, !tbaa !34
  %100 = getelementptr inbounds float, ptr %5, i64 1
  %101 = tail call float @llvm.fmuladd.f32(float %96, float 2.000000e+00, float -1.000000e+00)
  store float %101, ptr %100, align 4, !tbaa !34
  br label %102

102:                                              ; preds = %95, %34
  %103 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %103, align 4, !tbaa !34
  br label %104

104:                                              ; preds = %102, %12
  %105 = phi i32 [ 0, %12 ], [ 1, %102 ]
  ret i32 %105
}

declare void @BKE_mesh_texspace_calc(ptr noundef) local_unnamed_addr #2

declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare float @texture_value_blend(float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @psys_get_timestep(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 57
  %7 = load float, ptr %6, align 4, !tbaa !467
  %8 = fmul float %7, 0x3FA47AE140000000
  ret float %8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local float @psys_get_child_time(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #12 {
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 19
  %9 = load i16, ptr %8, align 4, !tbaa !332
  %10 = icmp eq i16 %9, 2
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  br i1 %10, label %12, label %59

12:                                               ; preds = %5, %18
  %13 = phi i64 [ %26, %18 ], [ 0, %5 ]
  %14 = phi float [ %25, %18 ], [ 0.000000e+00, %5 ]
  %15 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 2, i64 %13
  %16 = load i32, ptr %15, align 4, !tbaa !38
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 3, i64 %13
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = load ptr, ptr %11, align 8, !tbaa !48
  %22 = zext nneg i32 %16 to i64
  %23 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 %22, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !428
  %25 = tail call float @llvm.fmuladd.f32(float %20, float %24, float %14)
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %12, !llvm.loop !540

28:                                               ; preds = %18, %12
  %29 = phi float [ %25, %18 ], [ %14, %12 ]
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 55
  %31 = load float, ptr %30, align 4, !tbaa !492
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 56
  %33 = load float, ptr %32, align 8, !tbaa !541
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !165
  %36 = ptrtoint ptr %1 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = lshr i32 %39, 6
  %41 = add nuw nsw i32 %40, 25
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %43 = load i32, ptr %42, align 4, !tbaa !215
  %44 = srem i32 %43, 1024
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !38
  %48 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !38
  %50 = mul i32 %41, %49
  %51 = add i32 %50, %47
  %52 = and i32 %51, 1023
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = fneg float %33
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %55, float 1.000000e+00)
  %58 = fmul float %31, %57
  br label %68

59:                                               ; preds = %5
  %60 = load ptr, ptr %11, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !322
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ParticleData, ptr %60, i64 %63, i32 6
  %65 = load float, ptr %64, align 4, !tbaa !428
  %66 = getelementptr inbounds %struct.ParticleData, ptr %60, i64 %63, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !542
  br label %68

68:                                               ; preds = %59, %28
  %69 = phi float [ %58, %28 ], [ %67, %59 ]
  %70 = phi float [ %29, %28 ], [ %65, %59 ]
  %71 = icmp eq ptr %3, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store float %70, ptr %3, align 4, !tbaa !34
  br label %73

73:                                               ; preds = %72, %68
  %74 = icmp eq ptr %4, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = fadd float %69, %70
  store float %76, ptr %4, align 4, !tbaa !34
  br label %77

77:                                               ; preds = %75, %73
  %78 = fsub float %2, %70
  %79 = fdiv float %78, %69
  ret float %79
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @psys_get_child_size(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 19
  %8 = load i16, ptr %7, align 4, !tbaa !332
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 82
  br label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !322
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ParticleData, ptr %14, i64 %17, i32 13
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %12 ]
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 92
  %23 = load float, ptr %22, align 8, !tbaa !508
  %24 = fmul float %21, %23
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 93
  %26 = load float, ptr %25, align 4, !tbaa !543
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %54

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !165
  %31 = ptrtoint ptr %1 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = lshr i32 %34, 6
  %36 = add nuw nsw i32 %35, 26
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %38 = load i32, ptr %37, align 4, !tbaa !215
  %39 = srem i32 %38, 1024
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !38
  %43 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %40
  %44 = load i32, ptr %43, align 4, !tbaa !38
  %45 = mul i32 %36, %44
  %46 = add i32 %45, %42
  %47 = and i32 %46, 1023
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fneg float %26
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %50, float 1.000000e+00)
  %53 = fmul float %24, %52
  br label %54

54:                                               ; preds = %28, %19
  %55 = phi float [ %53, %28 ], [ %24, %19 ]
  ret float %55
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca %struct.ParticleTexture, align 4
  %12 = alloca [4 x %struct.ParticleKey], align 16
  %13 = alloca %struct.ParticleThreadContext, align 8
  %14 = alloca %struct.ParticleInterpolationData, align 8
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca %struct.ParticleCacheKey, align 4
  %19 = alloca %struct.ParticleCacheKey, align 4
  %20 = alloca %struct.ParticleKey, align 4
  %21 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !285
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 26
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %24, %41
  %33 = phi ptr [ %42, %41 ], [ %30, %24 ]
  %34 = getelementptr inbounds %struct.ModifierData, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !98
  %36 = icmp eq i32 %35, 19
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = icmp eq ptr %39, %28
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %32
  %42 = load ptr, ptr %33, align 8, !tbaa !59
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %32, !llvm.loop !102

44:                                               ; preds = %41, %37, %24, %4
  %45 = phi ptr [ %22, %4 ], [ null, %24 ], [ %33, %37 ], [ null, %41 ]
  %46 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !97
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 31
  %53 = load i16, ptr %52, align 4, !tbaa !387
  %54 = tail call ptr @give_current_material(ptr noundef %51, i16 noundef signext %53) #17
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #17
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 26
  %56 = load i32, ptr %55, align 8, !tbaa !43
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 28
  %58 = load i32, ptr %57, align 8, !tbaa !166
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 11
  %60 = load i16, ptr %59, align 8, !tbaa !454
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %44
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 25
  %65 = load i32, ptr %64, align 4, !tbaa !60
  %66 = and i32 %65, 1024
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %63, %44
  %69 = phi i1 [ false, %44 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  br i1 %69, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 7
  %73 = load i16, ptr %72, align 8, !tbaa !111
  %74 = icmp ne i16 %73, 2
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ true, %68 ], [ %74, %71 ]
  %77 = phi i1 [ false, %68 ], [ %74, %71 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %12, i8 0, i64 224, i1 false)
  %78 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 4
  %79 = load float, ptr %78, align 4, !tbaa !399
  %80 = fcmp olt float %79, 0.000000e+00
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = fcmp ogt float %79, 1.000000e+00
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %75, %81, %83
  %85 = phi float [ 1.000000e+00, %83 ], [ %79, %81 ], [ 0.000000e+00, %75 ]
  %86 = icmp sgt i32 %56, %1
  br i1 %86, label %87, label %243

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !161
  %90 = icmp eq ptr %89, null
  %91 = sext i32 %1 to i64
  br i1 %90, label %114, label %92

92:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %18) #17
  %93 = load ptr, ptr %88, align 8, !tbaa !161
  %94 = getelementptr inbounds ptr, ptr %93, i64 %91
  %95 = load ptr, ptr %94, align 8, !tbaa !59
  call fastcc void @interpolate_pathcache(ptr noundef %95, float noundef %85, ptr noundef nonnull %18)
  %96 = load float, ptr %18, align 4, !tbaa !34
  store float %96, ptr %2, align 4, !tbaa !34
  %97 = getelementptr inbounds float, ptr %18, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = getelementptr inbounds float, ptr %2, i64 1
  store float %98, ptr %99, align 4, !tbaa !34
  %100 = getelementptr inbounds float, ptr %18, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = getelementptr inbounds float, ptr %2, i64 2
  store float %101, ptr %102, align 4, !tbaa !34
  %103 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %104 = getelementptr inbounds %struct.ParticleCacheKey, ptr %18, i64 0, i32 1
  %105 = load float, ptr %104, align 4, !tbaa !34
  store float %105, ptr %103, align 4, !tbaa !34
  %106 = getelementptr inbounds %struct.ParticleCacheKey, ptr %18, i64 0, i32 1, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.ParticleCacheKey, ptr %18, i64 0, i32 1, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  store float %110, ptr %111, align 4, !tbaa !34
  %112 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %113 = getelementptr inbounds %struct.ParticleCacheKey, ptr %18, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %112, ptr noundef nonnull %113) #17
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %18) #17
  br label %712

114:                                              ; preds = %87
  %115 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !48
  %117 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %91
  %118 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %14, i64 0, i32 3
  store i32 %70, ptr %118, align 8, !tbaa !389
  br i1 %77, label %119, label %122

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 40
  %121 = load ptr, ptr %120, align 8, !tbaa !93
  br label %122

122:                                              ; preds = %114, %119
  %123 = phi ptr [ %121, %119 ], [ null, %114 ]
  %124 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %14, i64 0, i32 5
  store ptr %123, ptr %124, align 8, !tbaa !391
  %125 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %14, i64 0, i32 7
  store ptr null, ptr %125, align 8, !tbaa !392
  %126 = load ptr, ptr %48, align 8, !tbaa !49
  %127 = getelementptr inbounds %struct.ParticleSettings, ptr %126, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !54
  %129 = and i32 %128, 1024
  %130 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %14, i64 0, i32 11
  store i32 %129, ptr %130, align 8, !tbaa !393
  %131 = load ptr, ptr %0, align 8, !tbaa !64
  %132 = getelementptr inbounds %struct.Scene, ptr %131, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !67
  %134 = icmp eq ptr %133, null
  br i1 %134, label %172, label %135

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.Base, ptr %133, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !87
  %138 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 27
  %139 = load i32, ptr %138, align 8, !tbaa !89
  %140 = and i32 %139, 32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %172, label %142

142:                                              ; preds = %135
  %143 = icmp eq ptr %137, null
  br i1 %143, label %155, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 109
  br label %146

146:                                              ; preds = %150, %144
  %147 = phi ptr [ %145, %144 ], [ %148, %150 ]
  %148 = load ptr, ptr %147, align 8, !tbaa !59
  %149 = icmp eq ptr %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ParticleSystem, ptr %148, i64 0, i32 25
  %152 = load i32, ptr %151, align 4, !tbaa !60
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %146, label %155, !llvm.loop !61

155:                                              ; preds = %150, %146, %142
  %156 = phi ptr [ null, %142 ], [ %148, %150 ], [ null, %146 ]
  %157 = icmp eq ptr %156, %47
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !92
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 40
  %164 = load ptr, ptr %163, align 8, !tbaa !93
  %165 = getelementptr inbounds %struct.PointCache, ptr %164, i64 0, i32 21
  %166 = load ptr, ptr %165, align 8, !tbaa !94
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %162, %158
  %169 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 39
  %170 = load ptr, ptr %169, align 8, !tbaa !96
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %162, %155, %135, %122, %168
  %173 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 13
  %174 = load ptr, ptr %173, align 8, !tbaa !153
  br label %175

175:                                              ; preds = %168, %172
  %176 = phi ptr [ %174, %172 ], [ null, %168 ]
  %177 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %14, i64 0, i32 1
  store ptr %176, ptr %177, align 8, !tbaa !394
  call fastcc void @init_particle_interpolation(ptr noundef %47, ptr noundef %117, ptr noundef nonnull %14)
  call fastcc void @do_particle_interpolation(ptr noundef %47, i32 noundef %1, ptr noundef %117, float noundef %85, ptr noundef nonnull %14, ptr noundef %2)
  %178 = load ptr, ptr %177, align 8, !tbaa !394
  %179 = icmp eq ptr %178, null
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %50, align 8, !tbaa !97
  %182 = getelementptr inbounds %struct.Object, ptr %181, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %182, ptr noundef %2) #17
  %183 = load ptr, ptr %50, align 8, !tbaa !97
  %184 = getelementptr inbounds %struct.Object, ptr %183, i64 0, i32 47
  %185 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %184, ptr noundef nonnull %185) #17
  br label %712

186:                                              ; preds = %175
  br i1 %76, label %712, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 25
  %189 = load i32, ptr %188, align 4, !tbaa !60
  %190 = and i32 %189, 2
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %712

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %91, i32 17
  %194 = load i16, ptr %193, align 4, !tbaa !50
  %195 = and i16 %194, 8
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %712

197:                                              ; preds = %192
  %198 = load ptr, ptr %50, align 8, !tbaa !97
  %199 = load ptr, ptr %21, align 8, !tbaa !285
  %200 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !199
  %202 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 8
  %203 = load i16, ptr %202, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %204 = icmp eq ptr %201, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  call void @unit_m4(ptr noundef nonnull %10) #17
  br label %223

206:                                              ; preds = %197
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %201, ptr noundef %117, ptr noundef nonnull %10, i32 noundef 0)
  %207 = sext i16 %203 to i32
  %208 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %91, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !281
  %210 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %91, i32 10
  %211 = load i32, ptr %210, align 4, !tbaa !282
  %212 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %91, i32 11
  %213 = getelementptr inbounds %struct.ParticleData, ptr %116, i64 %91, i32 12
  %214 = load float, ptr %213, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %201, i32 noundef %207, i32 noundef %209, i32 noundef %211, ptr noundef nonnull %212, float noundef %214, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %215 = getelementptr inbounds [4 x float], ptr %10, i64 3
  %216 = load float, ptr %7, align 4, !tbaa !34
  store float %216, ptr %215, align 16, !tbaa !34
  %217 = getelementptr inbounds float, ptr %7, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !34
  %219 = getelementptr inbounds [4 x float], ptr %10, i64 3, i64 1
  store float %218, ptr %219, align 4, !tbaa !34
  %220 = getelementptr inbounds float, ptr %7, i64 2
  %221 = load float, ptr %220, align 4, !tbaa !34
  %222 = getelementptr inbounds [4 x float], ptr %10, i64 3, i64 2
  store float %221, ptr %222, align 8, !tbaa !34
  br label %223

223:                                              ; preds = %205, %206
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  %224 = getelementptr inbounds %struct.Object, ptr %198, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %17, ptr noundef nonnull %224, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef %2) #17
  %225 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  call void @mul_mat3_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %225) #17
  %226 = load ptr, ptr %46, align 8, !tbaa !66
  %227 = getelementptr inbounds %struct.ParticleSystem, ptr %226, i64 0, i32 42
  %228 = load ptr, ptr %227, align 8, !tbaa !402
  %229 = icmp eq ptr %228, null
  br i1 %229, label %238, label %230

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 5
  %232 = load i32, ptr %231, align 8, !tbaa !54
  %233 = and i32 %232, 1073741824
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load float, ptr %78, align 4, !tbaa !399
  %237 = call i32 @do_guides(ptr noundef nonnull %228, ptr noundef %2, i32 noundef %1, float noundef %236), !range !403
  br label %238

238:                                              ; preds = %235, %230, %223
  %239 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 15
  %240 = load ptr, ptr %239, align 8, !tbaa !343
  %241 = icmp eq ptr %240, null
  br i1 %241, label %712, label %242

242:                                              ; preds = %238
  call void @calc_latt_deform(ptr noundef nonnull %240, ptr noundef %2, float noundef 1.000000e+00) #17
  br label %712

243:                                              ; preds = %84
  %244 = icmp eq i32 %58, 0
  br i1 %244, label %712, label %245

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 8
  %247 = load ptr, ptr %246, align 8, !tbaa !163
  %248 = icmp eq ptr %247, null
  br i1 %248, label %272, label %249

249:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %19) #17
  %250 = sub nsw i32 %1, %56
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %247, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !59
  call fastcc void @interpolate_pathcache(ptr noundef %253, float noundef %85, ptr noundef nonnull %19)
  %254 = load float, ptr %19, align 4, !tbaa !34
  store float %254, ptr %2, align 4, !tbaa !34
  %255 = getelementptr inbounds float, ptr %19, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !34
  %257 = getelementptr inbounds float, ptr %2, i64 1
  store float %256, ptr %257, align 4, !tbaa !34
  %258 = getelementptr inbounds float, ptr %19, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !34
  %260 = getelementptr inbounds float, ptr %2, i64 2
  store float %259, ptr %260, align 4, !tbaa !34
  %261 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %262 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 0, i32 1
  %263 = load float, ptr %262, align 4, !tbaa !34
  store float %263, ptr %261, align 4, !tbaa !34
  %264 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 0, i32 1, i64 1
  %265 = load float, ptr %264, align 4, !tbaa !34
  %266 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  store float %265, ptr %266, align 4, !tbaa !34
  %267 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 0, i32 1, i64 2
  %268 = load float, ptr %267, align 4, !tbaa !34
  %269 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  store float %268, ptr %269, align 4, !tbaa !34
  %270 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %271 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %270, ptr noundef nonnull %271) #17
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %19) #17
  br label %712

272:                                              ; preds = %245
  %273 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 4
  %274 = load ptr, ptr %273, align 8, !tbaa !165
  %275 = sext i32 %1 to i64
  %276 = getelementptr inbounds %struct.ChildParticle, ptr %274, i64 %275
  %277 = sext i32 %56 to i64
  %278 = sub nsw i64 0, %277
  %279 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278
  br i1 %80, label %280, label %346

280:                                              ; preds = %272
  %281 = fneg float %79
  %282 = load ptr, ptr %48, align 8, !tbaa !49
  %283 = getelementptr inbounds %struct.ParticleSettings, ptr %282, i64 0, i32 19
  %284 = load i16, ptr %283, align 4, !tbaa !332
  %285 = icmp eq i16 %284, 2
  %286 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 3
  br i1 %285, label %287, label %332

287:                                              ; preds = %280, %293
  %288 = phi i64 [ %301, %293 ], [ 0, %280 ]
  %289 = phi float [ %300, %293 ], [ 0.000000e+00, %280 ]
  %290 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 2, i64 %288
  %291 = load i32, ptr %290, align 4, !tbaa !38
  %292 = icmp sgt i32 %291, -1
  br i1 %292, label %293, label %303

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 3, i64 %288
  %295 = load float, ptr %294, align 4, !tbaa !34
  %296 = load ptr, ptr %286, align 8, !tbaa !48
  %297 = zext nneg i32 %291 to i64
  %298 = getelementptr inbounds %struct.ParticleData, ptr %296, i64 %297, i32 6
  %299 = load float, ptr %298, align 4, !tbaa !428
  %300 = tail call float @llvm.fmuladd.f32(float %295, float %299, float %289)
  %301 = add nuw nsw i64 %288, 1
  %302 = icmp eq i64 %301, 4
  br i1 %302, label %303, label %287, !llvm.loop !540

303:                                              ; preds = %293, %287
  %304 = phi float [ %300, %293 ], [ %289, %287 ]
  %305 = getelementptr inbounds %struct.ParticleSettings, ptr %282, i64 0, i32 55
  %306 = load float, ptr %305, align 4, !tbaa !492
  %307 = getelementptr inbounds %struct.ParticleSettings, ptr %282, i64 0, i32 56
  %308 = load float, ptr %307, align 8, !tbaa !541
  %309 = ptrtoint ptr %279 to i64
  %310 = ptrtoint ptr %274 to i64
  %311 = sub i64 %309, %310
  %312 = trunc i64 %311 to i32
  %313 = lshr i32 %312, 6
  %314 = add nuw nsw i32 %313, 25
  %315 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 23
  %316 = load i32, ptr %315, align 4, !tbaa !215
  %317 = srem i32 %316, 1024
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !38
  %321 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %318
  %322 = load i32, ptr %321, align 4, !tbaa !38
  %323 = mul i32 %322, %314
  %324 = add i32 %323, %320
  %325 = and i32 %324, 1023
  %326 = zext nneg i32 %325 to i64
  %327 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %326
  %328 = load float, ptr %327, align 4, !tbaa !34
  %329 = fneg float %308
  %330 = tail call float @llvm.fmuladd.f32(float %329, float %328, float 1.000000e+00)
  %331 = fmul float %306, %330
  br label %341

332:                                              ; preds = %280
  %333 = load ptr, ptr %286, align 8, !tbaa !48
  %334 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 1
  %335 = load i32, ptr %334, align 4, !tbaa !322
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.ParticleData, ptr %333, i64 %336, i32 6
  %338 = load float, ptr %337, align 4, !tbaa !428
  %339 = getelementptr inbounds %struct.ParticleData, ptr %333, i64 %336, i32 7
  %340 = load float, ptr %339, align 8, !tbaa !542
  br label %341

341:                                              ; preds = %303, %332
  %342 = phi float [ %331, %303 ], [ %340, %332 ]
  %343 = phi float [ %304, %303 ], [ %338, %332 ]
  %344 = fsub float %281, %343
  %345 = fdiv float %344, %342
  br label %346

346:                                              ; preds = %272, %341
  %347 = phi float [ %345, %341 ], [ %85, %272 ]
  %348 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 19
  %349 = load i16, ptr %348, align 4, !tbaa !332
  %350 = icmp eq i16 %349, 2
  br i1 %350, label %351, label %443

351:                                              ; preds = %346, %356
  %352 = phi i64 [ %360, %356 ], [ 0, %346 ]
  %353 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 2, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !38
  %355 = icmp sgt i32 %354, -1
  br i1 %355, label %356, label %362

356:                                              ; preds = %351
  %357 = load float, ptr %78, align 4, !tbaa !399
  %358 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %12, i64 0, i64 %352, i32 4
  store float %357, ptr %358, align 4, !tbaa !399
  %359 = getelementptr inbounds %struct.ParticleKey, ptr %12, i64 %352
  call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %354, ptr noundef nonnull %359, i8 noundef zeroext 1)
  %360 = add nuw nsw i64 %352, 1
  %361 = icmp eq i64 %360, 4
  br i1 %361, label %362, label %351, !llvm.loop !544

362:                                              ; preds = %356, %351
  %363 = load i32, ptr %279, align 4, !tbaa !259
  %364 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 5
  %365 = load float, ptr %364, align 4, !tbaa !320
  %366 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 4
  %367 = icmp eq ptr %45, null
  br i1 %367, label %398, label %368

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %45, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !199
  %371 = icmp eq ptr %370, null
  br i1 %371, label %398, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %45, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !100
  %375 = getelementptr inbounds %struct.ParticleSystem, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !49
  %377 = getelementptr inbounds %struct.ParticleSettings, ptr %376, i64 0, i32 9
  %378 = load i16, ptr %377, align 4, !tbaa !283
  %379 = icmp eq i16 %378, 2
  br i1 %379, label %380, label %397

380:                                              ; preds = %372
  %381 = getelementptr inbounds %struct.ParticleSettings, ptr %376, i64 0, i32 8
  %382 = load i16, ptr %381, align 2, !tbaa !284
  %383 = icmp eq i16 %382, 0
  br i1 %383, label %397, label %384

384:                                              ; preds = %380
  %385 = load float, ptr %366, align 4, !tbaa !34
  store float %385, ptr %15, align 4, !tbaa !34
  %386 = getelementptr inbounds float, ptr %366, i64 1
  %387 = load float, ptr %386, align 4, !tbaa !34
  %388 = getelementptr inbounds float, ptr %15, i64 1
  store float %387, ptr %388, align 4, !tbaa !34
  %389 = getelementptr inbounds float, ptr %366, i64 2
  %390 = load float, ptr %389, align 4, !tbaa !34
  %391 = getelementptr inbounds float, ptr %15, i64 2
  store float %390, ptr %391, align 4, !tbaa !34
  %392 = load float, ptr %366, align 4, !tbaa !34
  store float %392, ptr %16, align 4, !tbaa !34
  %393 = load float, ptr %386, align 4, !tbaa !34
  %394 = getelementptr inbounds float, ptr %16, i64 1
  store float %393, ptr %394, align 4, !tbaa !34
  %395 = load float, ptr %389, align 4, !tbaa !34
  %396 = getelementptr inbounds float, ptr %16, i64 2
  store float %395, ptr %396, align 4, !tbaa !34
  br label %403

397:                                              ; preds = %380, %372
  call void @psys_particle_on_dm(ptr noundef nonnull %370, i32 noundef 1, i32 noundef %363, i32 noundef -2, ptr noundef nonnull %366, float noundef %365, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %16, ptr noundef null)
  br label %403

398:                                              ; preds = %368, %362
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  %399 = getelementptr inbounds float, ptr %15, i64 1
  store float 0.000000e+00, ptr %399, align 4, !tbaa !34
  %400 = getelementptr inbounds float, ptr %15, i64 2
  store float 0.000000e+00, ptr %400, align 4, !tbaa !34
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  %401 = getelementptr inbounds float, ptr %16, i64 1
  store float 0.000000e+00, ptr %401, align 4, !tbaa !34
  %402 = getelementptr inbounds float, ptr %16, i64 2
  store float 0.000000e+00, ptr %402, align 4, !tbaa !34
  br label %403

403:                                              ; preds = %384, %397, %398
  %404 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 7
  %405 = load i16, ptr %404, align 8, !tbaa !111
  %406 = icmp eq i16 %405, 2
  br i1 %406, label %407, label %442

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !48
  %410 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 1
  %411 = load i32, ptr %410, align 4, !tbaa !322
  %412 = load ptr, ptr %50, align 8, !tbaa !97
  %413 = load ptr, ptr %21, align 8, !tbaa !285
  %414 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %413, i64 0, i32 2
  %415 = load ptr, ptr %414, align 8, !tbaa !199
  %416 = load ptr, ptr %48, align 8, !tbaa !49
  %417 = getelementptr inbounds %struct.ParticleSettings, ptr %416, i64 0, i32 8
  %418 = load i16, ptr %417, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %419 = icmp eq ptr %415, null
  br i1 %419, label %420, label %421

420:                                              ; preds = %407
  call void @unit_m4(ptr noundef nonnull %9) #17
  br label %440

421:                                              ; preds = %407
  %422 = sext i32 %411 to i64
  %423 = getelementptr inbounds %struct.ParticleData, ptr %409, i64 %422
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %415, ptr noundef %423, ptr noundef nonnull %9, i32 noundef 0)
  %424 = sext i16 %418 to i32
  %425 = getelementptr inbounds %struct.ParticleData, ptr %409, i64 %422, i32 9
  %426 = load i32, ptr %425, align 8, !tbaa !281
  %427 = getelementptr inbounds %struct.ParticleData, ptr %409, i64 %422, i32 10
  %428 = load i32, ptr %427, align 4, !tbaa !282
  %429 = getelementptr inbounds %struct.ParticleData, ptr %409, i64 %422, i32 11
  %430 = getelementptr inbounds %struct.ParticleData, ptr %409, i64 %422, i32 12
  %431 = load float, ptr %430, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %415, i32 noundef %424, i32 noundef %426, i32 noundef %428, ptr noundef nonnull %429, float noundef %431, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %432 = getelementptr inbounds [4 x float], ptr %9, i64 3
  %433 = load float, ptr %6, align 4, !tbaa !34
  store float %433, ptr %432, align 16, !tbaa !34
  %434 = getelementptr inbounds float, ptr %6, i64 1
  %435 = load float, ptr %434, align 4, !tbaa !34
  %436 = getelementptr inbounds [4 x float], ptr %9, i64 3, i64 1
  store float %435, ptr %436, align 4, !tbaa !34
  %437 = getelementptr inbounds float, ptr %6, i64 2
  %438 = load float, ptr %437, align 4, !tbaa !34
  %439 = getelementptr inbounds [4 x float], ptr %9, i64 3, i64 2
  store float %438, ptr %439, align 8, !tbaa !34
  br label %440

440:                                              ; preds = %420, %421
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  %441 = getelementptr inbounds %struct.Object, ptr %412, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %17, ptr noundef nonnull %441, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  br label %538

442:                                              ; preds = %403
  call void @unit_m4(ptr noundef nonnull %17) #17
  br label %538

443:                                              ; preds = %346
  %444 = getelementptr inbounds %struct.ParticleKey, ptr %12, i64 0, i32 4
  store float %79, ptr %444, align 4, !tbaa !399
  %445 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 1
  %446 = load i32, ptr %445, align 4, !tbaa !322
  call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %446, ptr noundef nonnull %12, i8 noundef zeroext 1)
  %447 = getelementptr inbounds %struct.ParticleSystem, ptr %47, i64 0, i32 3
  %448 = load ptr, ptr %447, align 8, !tbaa !48
  %449 = load i32, ptr %445, align 4, !tbaa !322
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 8
  %452 = load i16, ptr %451, align 2, !tbaa !284
  %453 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450, i32 9
  %454 = load i32, ptr %453, align 8, !tbaa !281
  %455 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450, i32 11
  %456 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 7
  %457 = load i16, ptr %456, align 8, !tbaa !111
  %458 = icmp eq i16 %457, 2
  br i1 %458, label %459, label %529

459:                                              ; preds = %443
  %460 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450
  %461 = sext i16 %452 to i32
  %462 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450, i32 12
  %463 = load float, ptr %462, align 8, !tbaa !286
  %464 = icmp eq ptr %45, null
  br i1 %464, label %495, label %465

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %45, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !199
  %468 = icmp eq ptr %467, null
  br i1 %468, label %495, label %469

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %45, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !100
  %472 = getelementptr inbounds %struct.ParticleSystem, ptr %471, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !49
  %474 = getelementptr inbounds %struct.ParticleSettings, ptr %473, i64 0, i32 9
  %475 = load i16, ptr %474, align 4, !tbaa !283
  %476 = icmp eq i16 %475, 2
  br i1 %476, label %477, label %494

477:                                              ; preds = %469
  %478 = getelementptr inbounds %struct.ParticleSettings, ptr %473, i64 0, i32 8
  %479 = load i16, ptr %478, align 2, !tbaa !284
  %480 = icmp eq i16 %479, 0
  br i1 %480, label %494, label %481

481:                                              ; preds = %477
  %482 = load float, ptr %455, align 4, !tbaa !34
  store float %482, ptr %15, align 4, !tbaa !34
  %483 = getelementptr inbounds float, ptr %455, i64 1
  %484 = load float, ptr %483, align 4, !tbaa !34
  %485 = getelementptr inbounds float, ptr %15, i64 1
  store float %484, ptr %485, align 4, !tbaa !34
  %486 = getelementptr inbounds float, ptr %455, i64 2
  %487 = load float, ptr %486, align 4, !tbaa !34
  %488 = getelementptr inbounds float, ptr %15, i64 2
  store float %487, ptr %488, align 4, !tbaa !34
  %489 = load float, ptr %455, align 4, !tbaa !34
  store float %489, ptr %16, align 4, !tbaa !34
  %490 = load float, ptr %483, align 4, !tbaa !34
  %491 = getelementptr inbounds float, ptr %16, i64 1
  store float %490, ptr %491, align 4, !tbaa !34
  %492 = load float, ptr %486, align 4, !tbaa !34
  %493 = getelementptr inbounds float, ptr %16, i64 2
  store float %492, ptr %493, align 4, !tbaa !34
  br label %500

494:                                              ; preds = %477, %469
  call void @psys_particle_on_dm(ptr noundef nonnull %467, i32 noundef %461, i32 noundef %454, i32 noundef -2, ptr noundef nonnull %455, float noundef %463, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %16, ptr noundef null)
  br label %500

495:                                              ; preds = %465, %459
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  %496 = getelementptr inbounds float, ptr %15, i64 1
  store float 0.000000e+00, ptr %496, align 4, !tbaa !34
  %497 = getelementptr inbounds float, ptr %15, i64 2
  store float 0.000000e+00, ptr %497, align 4, !tbaa !34
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  %498 = getelementptr inbounds float, ptr %16, i64 1
  store float 0.000000e+00, ptr %498, align 4, !tbaa !34
  %499 = getelementptr inbounds float, ptr %16, i64 2
  store float 0.000000e+00, ptr %499, align 4, !tbaa !34
  br label %500

500:                                              ; preds = %481, %494, %495
  %501 = load ptr, ptr %50, align 8, !tbaa !97
  %502 = load ptr, ptr %21, align 8, !tbaa !285
  %503 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %502, i64 0, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !199
  %505 = load ptr, ptr %48, align 8, !tbaa !49
  %506 = getelementptr inbounds %struct.ParticleSettings, ptr %505, i64 0, i32 8
  %507 = load i16, ptr %506, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %508 = icmp eq ptr %504, null
  br i1 %508, label %509, label %510

509:                                              ; preds = %500
  call void @unit_m4(ptr noundef nonnull %8) #17
  br label %527

510:                                              ; preds = %500
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %504, ptr noundef %460, ptr noundef nonnull %8, i32 noundef 0)
  %511 = sext i16 %507 to i32
  %512 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450, i32 9
  %513 = load i32, ptr %512, align 8, !tbaa !281
  %514 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450, i32 10
  %515 = load i32, ptr %514, align 4, !tbaa !282
  %516 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450, i32 11
  %517 = getelementptr inbounds %struct.ParticleData, ptr %448, i64 %450, i32 12
  %518 = load float, ptr %517, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %504, i32 noundef %511, i32 noundef %513, i32 noundef %515, ptr noundef nonnull %516, float noundef %518, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %519 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %520 = load float, ptr %5, align 4, !tbaa !34
  store float %520, ptr %519, align 16, !tbaa !34
  %521 = getelementptr inbounds float, ptr %5, i64 1
  %522 = load float, ptr %521, align 4, !tbaa !34
  %523 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  store float %522, ptr %523, align 4, !tbaa !34
  %524 = getelementptr inbounds float, ptr %5, i64 2
  %525 = load float, ptr %524, align 4, !tbaa !34
  %526 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  store float %525, ptr %526, align 8, !tbaa !34
  br label %527

527:                                              ; preds = %509, %510
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  %528 = getelementptr inbounds %struct.Object, ptr %501, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %17, ptr noundef nonnull %528, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  br label %538

529:                                              ; preds = %443
  %530 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 4
  %531 = load float, ptr %530, align 4, !tbaa !34
  store float %531, ptr %16, align 4, !tbaa !34
  %532 = getelementptr inbounds float, ptr %530, i64 1
  %533 = load float, ptr %532, align 4, !tbaa !34
  %534 = getelementptr inbounds float, ptr %16, i64 1
  store float %533, ptr %534, align 4, !tbaa !34
  %535 = getelementptr inbounds float, ptr %530, i64 2
  %536 = load float, ptr %535, align 4, !tbaa !34
  %537 = getelementptr inbounds float, ptr %16, i64 2
  store float %536, ptr %537, align 4, !tbaa !34
  call void @unit_m4(ptr noundef nonnull %17) #17
  br label %538

538:                                              ; preds = %440, %442, %527, %529
  %539 = phi ptr [ %455, %527 ], [ %455, %529 ], [ %366, %442 ], [ %366, %440 ]
  %540 = phi i32 [ %454, %527 ], [ %454, %529 ], [ %363, %442 ], [ %363, %440 ]
  %541 = phi i16 [ %452, %527 ], [ %452, %529 ], [ 1, %442 ], [ 1, %440 ]
  %542 = getelementptr inbounds i8, ptr %13, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %542, i8 0, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !545
  %543 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %45, i64 0, i32 2
  %544 = load ptr, ptr %543, align 8, !tbaa !199
  %545 = getelementptr inbounds %struct.ParticleThreadContext, ptr %13, i64 0, i32 1
  store ptr %544, ptr %545, align 8, !tbaa !217
  %546 = getelementptr inbounds %struct.ParticleThreadContext, ptr %13, i64 0, i32 2
  store ptr %54, ptr %546, align 8, !tbaa !381
  call fastcc void @get_child_modifier_parameters(ptr noundef %49, ptr noundef nonnull %13, ptr noundef %279, i16 noundef signext %541, i32 noundef %540, ptr noundef nonnull %539, ptr noundef nonnull %16, ptr noundef nonnull %11)
  br i1 %350, label %547, label %592

547:                                              ; preds = %538
  %548 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %549 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %550 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %551 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  %552 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %553

553:                                              ; preds = %547, %558
  %554 = phi i64 [ 0, %547 ], [ %590, %558 ]
  %555 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 2, i64 %554
  %556 = load i32, ptr %555, align 4, !tbaa !38
  %557 = icmp sgt i32 %556, -1
  br i1 %557, label %558, label %631

558:                                              ; preds = %553
  %559 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 3, i64 %554
  %560 = load float, ptr %559, align 4, !tbaa !34
  %561 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %12, i64 0, i64 %554
  %562 = load float, ptr %561, align 8, !tbaa !34
  %563 = load float, ptr %2, align 4, !tbaa !34
  %564 = call float @llvm.fmuladd.f32(float %560, float %562, float %563)
  store float %564, ptr %2, align 4, !tbaa !34
  %565 = load float, ptr %559, align 4, !tbaa !34
  %566 = getelementptr inbounds [3 x float], ptr %561, i64 0, i64 1
  %567 = load float, ptr %566, align 4, !tbaa !34
  %568 = load float, ptr %549, align 4, !tbaa !34
  %569 = call float @llvm.fmuladd.f32(float %565, float %567, float %568)
  store float %569, ptr %549, align 4, !tbaa !34
  %570 = load float, ptr %559, align 4, !tbaa !34
  %571 = getelementptr inbounds [3 x float], ptr %561, i64 0, i64 2
  %572 = load float, ptr %571, align 8, !tbaa !34
  %573 = load float, ptr %548, align 4, !tbaa !34
  %574 = call float @llvm.fmuladd.f32(float %570, float %572, float %573)
  store float %574, ptr %548, align 4, !tbaa !34
  %575 = load float, ptr %559, align 4, !tbaa !34
  %576 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %12, i64 0, i64 %554, i32 1
  %577 = load float, ptr %576, align 4, !tbaa !34
  %578 = load float, ptr %550, align 4, !tbaa !34
  %579 = call float @llvm.fmuladd.f32(float %575, float %577, float %578)
  store float %579, ptr %550, align 4, !tbaa !34
  %580 = load float, ptr %559, align 4, !tbaa !34
  %581 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %12, i64 0, i64 %554, i32 1, i64 1
  %582 = load float, ptr %581, align 8, !tbaa !34
  %583 = load float, ptr %552, align 4, !tbaa !34
  %584 = call float @llvm.fmuladd.f32(float %580, float %582, float %583)
  store float %584, ptr %552, align 4, !tbaa !34
  %585 = load float, ptr %559, align 4, !tbaa !34
  %586 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %12, i64 0, i64 %554, i32 1, i64 2
  %587 = load float, ptr %586, align 4, !tbaa !34
  %588 = load float, ptr %551, align 4, !tbaa !34
  %589 = call float @llvm.fmuladd.f32(float %585, float %587, float %588)
  store float %589, ptr %551, align 4, !tbaa !34
  %590 = add nuw nsw i64 %554, 1
  %591 = icmp eq i64 %590, 4
  br i1 %591, label %631, label %553, !llvm.loop !546

592:                                              ; preds = %538
  %593 = getelementptr inbounds %struct.ParticleKey, ptr %12, i64 0, i32 2
  %594 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 95
  %595 = load float, ptr %594, align 4, !tbaa !375
  %596 = getelementptr inbounds %struct.ParticleSettings, ptr %49, i64 0, i32 94
  %597 = load float, ptr %596, align 8, !tbaa !376
  %598 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 4
  %599 = load float, ptr %598, align 4, !tbaa !34
  store float %599, ptr %2, align 4, !tbaa !34
  %600 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 4, i64 1
  %601 = load float, ptr %600, align 4, !tbaa !34
  %602 = getelementptr inbounds float, ptr %2, i64 1
  store float %601, ptr %602, align 4, !tbaa !34
  %603 = getelementptr inbounds %struct.ChildParticle, ptr %276, i64 %278, i32 4, i64 2
  %604 = load float, ptr %603, align 4, !tbaa !34
  %605 = getelementptr inbounds float, ptr %2, i64 2
  store float %604, ptr %605, align 4, !tbaa !34
  %606 = fmul float %597, %599
  store float %606, ptr %2, align 4, !tbaa !34
  %607 = fmul float %597, %601
  store float %607, ptr %602, align 4, !tbaa !34
  %608 = fmul float %597, %604
  store float %608, ptr %605, align 4, !tbaa !34
  %609 = fmul float %595, %606
  store float %609, ptr %2, align 4, !tbaa !34
  %610 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %611 = getelementptr inbounds %struct.ParticleKey, ptr %12, i64 0, i32 1
  %612 = load float, ptr %611, align 4, !tbaa !34
  store float %612, ptr %610, align 4, !tbaa !34
  %613 = getelementptr inbounds %struct.ParticleKey, ptr %12, i64 0, i32 1, i64 1
  %614 = load float, ptr %613, align 16, !tbaa !34
  %615 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  store float %614, ptr %615, align 4, !tbaa !34
  %616 = getelementptr inbounds %struct.ParticleKey, ptr %12, i64 0, i32 1, i64 2
  %617 = load float, ptr %616, align 4, !tbaa !34
  %618 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  store float %617, ptr %618, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef nonnull %593, ptr noundef nonnull %2) #17
  %619 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %619, ptr noundef nonnull %593) #17
  %620 = load float, ptr %12, align 16, !tbaa !34
  %621 = load float, ptr %2, align 4, !tbaa !34
  %622 = fadd float %620, %621
  store float %622, ptr %2, align 4, !tbaa !34
  %623 = getelementptr inbounds float, ptr %12, i64 1
  %624 = load float, ptr %623, align 4, !tbaa !34
  %625 = load float, ptr %602, align 4, !tbaa !34
  %626 = fadd float %624, %625
  store float %626, ptr %602, align 4, !tbaa !34
  %627 = getelementptr inbounds float, ptr %12, i64 2
  %628 = load float, ptr %627, align 8, !tbaa !34
  %629 = load float, ptr %605, align 4, !tbaa !34
  %630 = fadd float %628, %629
  store float %630, ptr %605, align 4, !tbaa !34
  br label %631

631:                                              ; preds = %553, %558, %592
  %632 = icmp eq i8 %3, 0
  %633 = getelementptr inbounds %struct.ParticleKey, ptr %12, i64 0, i32 2
  call fastcc void @do_child_modifiers(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %633, ptr noundef %279, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %2, float noundef %347)
  br i1 %632, label %712, label %634

634:                                              ; preds = %631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %20) #17
  %635 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %636 = load float, ptr %635, align 4, !tbaa !34
  %637 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  %638 = load float, ptr %637, align 4, !tbaa !34
  %639 = fmul float %638, %638
  %640 = call float @llvm.fmuladd.f32(float %636, float %636, float %639)
  %641 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  %642 = load float, ptr %641, align 4, !tbaa !34
  %643 = call float @llvm.fmuladd.f32(float %642, float %642, float %640)
  %644 = call float @sqrtf(float noundef %643) #17
  %645 = fcmp ult float %347, 0x3F50624DE0000000
  %646 = getelementptr inbounds %struct.ParticleKey, ptr %20, i64 0, i32 4
  br i1 %645, label %676, label %647

647:                                              ; preds = %634
  %648 = fadd float %347, 0xBF50624DE0000000
  store float %648, ptr %646, align 4, !tbaa !399
  call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %20, i8 noundef zeroext 0)
  %649 = load float, ptr %2, align 4, !tbaa !34
  %650 = load float, ptr %20, align 4, !tbaa !34
  %651 = fsub float %649, %650
  store float %651, ptr %635, align 4, !tbaa !34
  %652 = getelementptr inbounds float, ptr %2, i64 1
  %653 = load float, ptr %652, align 4, !tbaa !34
  %654 = getelementptr inbounds float, ptr %20, i64 1
  %655 = load float, ptr %654, align 4, !tbaa !34
  %656 = fsub float %653, %655
  store float %656, ptr %637, align 4, !tbaa !34
  %657 = getelementptr inbounds float, ptr %2, i64 2
  %658 = load float, ptr %657, align 4, !tbaa !34
  %659 = getelementptr inbounds float, ptr %20, i64 2
  %660 = load float, ptr %659, align 4, !tbaa !34
  %661 = fsub float %658, %660
  store float %661, ptr %641, align 4, !tbaa !34
  %662 = fmul float %656, %656
  %663 = call float @llvm.fmuladd.f32(float %651, float %651, float %662)
  %664 = call float @llvm.fmuladd.f32(float %661, float %661, float %663)
  %665 = fcmp ogt float %664, 0x38AA95A5C0000000
  br i1 %665, label %666, label %675

666:                                              ; preds = %647
  %667 = call float @sqrtf(float noundef %664) #17
  %668 = fdiv float 1.000000e+00, %667
  %669 = load float, ptr %635, align 4, !tbaa !34
  %670 = fmul float %669, %668
  store float %670, ptr %635, align 4, !tbaa !34
  %671 = load float, ptr %637, align 4, !tbaa !34
  %672 = fmul float %668, %671
  store float %672, ptr %637, align 4, !tbaa !34
  %673 = load float, ptr %641, align 4, !tbaa !34
  %674 = fmul float %668, %673
  br label %705

675:                                              ; preds = %647
  store float 0.000000e+00, ptr %635, align 4, !tbaa !34
  store float 0.000000e+00, ptr %637, align 4, !tbaa !34
  br label %705

676:                                              ; preds = %634
  %677 = fadd float %347, 0x3F50624DE0000000
  store float %677, ptr %646, align 4, !tbaa !399
  call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %20, i8 noundef zeroext 0)
  %678 = load float, ptr %20, align 4, !tbaa !34
  %679 = load float, ptr %2, align 4, !tbaa !34
  %680 = fsub float %678, %679
  store float %680, ptr %635, align 4, !tbaa !34
  %681 = getelementptr inbounds float, ptr %20, i64 1
  %682 = load float, ptr %681, align 4, !tbaa !34
  %683 = getelementptr inbounds float, ptr %2, i64 1
  %684 = load float, ptr %683, align 4, !tbaa !34
  %685 = fsub float %682, %684
  store float %685, ptr %637, align 4, !tbaa !34
  %686 = getelementptr inbounds float, ptr %20, i64 2
  %687 = load float, ptr %686, align 4, !tbaa !34
  %688 = getelementptr inbounds float, ptr %2, i64 2
  %689 = load float, ptr %688, align 4, !tbaa !34
  %690 = fsub float %687, %689
  store float %690, ptr %641, align 4, !tbaa !34
  %691 = fmul float %685, %685
  %692 = call float @llvm.fmuladd.f32(float %680, float %680, float %691)
  %693 = call float @llvm.fmuladd.f32(float %690, float %690, float %692)
  %694 = fcmp ogt float %693, 0x38AA95A5C0000000
  br i1 %694, label %695, label %704

695:                                              ; preds = %676
  %696 = call float @sqrtf(float noundef %693) #17
  %697 = fdiv float 1.000000e+00, %696
  %698 = load float, ptr %635, align 4, !tbaa !34
  %699 = fmul float %698, %697
  store float %699, ptr %635, align 4, !tbaa !34
  %700 = load float, ptr %637, align 4, !tbaa !34
  %701 = fmul float %697, %700
  store float %701, ptr %637, align 4, !tbaa !34
  %702 = load float, ptr %641, align 4, !tbaa !34
  %703 = fmul float %697, %702
  br label %705

704:                                              ; preds = %676
  store float 0.000000e+00, ptr %635, align 4, !tbaa !34
  store float 0.000000e+00, ptr %637, align 4, !tbaa !34
  br label %705

705:                                              ; preds = %704, %695, %675, %666
  %706 = phi float [ 0.000000e+00, %675 ], [ %674, %666 ], [ 0.000000e+00, %704 ], [ %703, %695 ]
  store float %706, ptr %641, align 4, !tbaa !34
  %707 = load float, ptr %635, align 4, !tbaa !34
  %708 = fmul float %644, %707
  store float %708, ptr %635, align 4, !tbaa !34
  %709 = load float, ptr %637, align 4, !tbaa !34
  %710 = fmul float %644, %709
  store float %710, ptr %637, align 4, !tbaa !34
  %711 = fmul float %644, %706
  store float %711, ptr %641, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %20) #17
  br label %712

712:                                              ; preds = %631, %243, %705, %249, %92, %186, %187, %238, %242, %192, %180
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %11) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @interpolate_pathcache(ptr noundef %0, float noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ParticleCacheKey, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !366
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ParticleCacheKey, ptr %0, i64 %6, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !377
  %9 = fmul float %8, %1
  %10 = icmp sgt i32 %5, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3, %16
  %12 = phi ptr [ %17, %16 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.ParticleCacheKey, ptr %12, i64 0, i32 4
  %14 = load float, ptr %13, align 4, !tbaa !377
  %15 = fcmp olt float %14, %9
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ParticleCacheKey, ptr %12, i64 1
  br i1 %10, label %11, label %18, !llvm.loop !547

18:                                               ; preds = %11, %16, %3
  %19 = phi ptr [ %0, %3 ], [ %12, %11 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !377
  %22 = fcmp oeq float %21, %9
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %2, ptr noundef nonnull align 4 dereferenceable(60) %19, i64 60, i1 false), !tbaa.struct !548
  br label %38

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 -1
  %26 = getelementptr %struct.ParticleCacheKey, ptr %19, i64 -1, i32 4
  %27 = load float, ptr %26, align 4, !tbaa !377
  %28 = fsub float %9, %27
  %29 = fsub float %21, %27
  %30 = fdiv float %28, %29
  tail call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %25, ptr noundef %19, float noundef %30) #17
  %31 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 1
  %32 = getelementptr %struct.ParticleCacheKey, ptr %19, i64 -1, i32 1
  %33 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 0, i32 1
  tail call void @interp_v3_v3v3(ptr noundef nonnull %31, ptr noundef %32, ptr noundef nonnull %33, float noundef %30) #17
  %34 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  %35 = getelementptr %struct.ParticleCacheKey, ptr %19, i64 -1, i32 2
  %36 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 0, i32 2
  tail call void @interp_qt_qtqt(ptr noundef nonnull %34, ptr noundef %35, ptr noundef nonnull %36, float noundef %30) #17
  %37 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 4
  store float %9, ptr %37, align 4, !tbaa !377
  br label %38

38:                                               ; preds = %24, %23
  %39 = icmp eq ptr %19, %0
  %40 = getelementptr inbounds %struct.ParticleCacheKey, ptr %19, i64 -1
  %41 = icmp eq ptr %40, %0
  %42 = select i1 %39, i1 true, i1 %41
  %43 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  %44 = getelementptr inbounds %struct.ParticleCacheKey, ptr %0, i64 0, i32 2
  br i1 %42, label %45, label %46

45:                                               ; preds = %38
  tail call void @copy_qt_qt(ptr noundef nonnull %43, ptr noundef nonnull %44) #17
  br label %47

46:                                               ; preds = %38
  tail call void @mul_qt_qtqt(ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %43) #17
  br label %47

47:                                               ; preds = %46, %45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_child_modifier_parameters(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3, i32 noundef %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #0 {
  %9 = alloca float, align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.ParticleSimulationData, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !221
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = ptrtoint ptr %2 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 6
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !217
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !38
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 %27
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 20
  %30 = load float, ptr %29, align 8, !tbaa !483
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  %32 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 14
  store float 1.000000e+00, ptr %32, align 4, !tbaa !408
  %33 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 13
  store float 1.000000e+00, ptr %33, align 4, !tbaa !409
  %34 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 12
  store float 1.000000e+00, ptr %34, align 4, !tbaa !410
  %35 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 11
  store float 1.000000e+00, ptr %35, align 4, !tbaa !379
  %36 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 10
  store float 1.000000e+00, ptr %36, align 4, !tbaa !411
  %37 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 9
  store float 1.000000e+00, ptr %37, align 4, !tbaa !412
  %38 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 1
  store float 1.000000e+00, ptr %38, align 4, !tbaa !419
  %39 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 7
  store float 1.000000e+00, ptr %39, align 4, !tbaa !413
  %40 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 6
  store float 1.000000e+00, ptr %40, align 4, !tbaa !414
  %41 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 5
  store float 1.000000e+00, ptr %41, align 4, !tbaa !415
  %42 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 4
  store float 1.000000e+00, ptr %42, align 4, !tbaa !416
  %43 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 3
  store float 1.000000e+00, ptr %43, align 4, !tbaa !372
  %44 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 2
  store float 1.000000e+00, ptr %44, align 4, !tbaa !417
  store float 1.000000e+00, ptr %7, align 4, !tbaa !418
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 88
  %46 = load float, ptr %45, align 8, !tbaa !388
  %47 = add nsw i32 %20, 26
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 23
  %49 = load i32, ptr %48, align 4, !tbaa !215
  %50 = srem i32 %49, 1024
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %51
  %55 = load i32, ptr %54, align 4, !tbaa !38
  %56 = mul i32 %55, %47
  %57 = add i32 %56, %53
  %58 = and i32 %57, 1023
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = fneg float %46
  %63 = tail call float @llvm.fmuladd.f32(float %62, float %61, float 1.000000e+00)
  %64 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 8
  store float %63, ptr %64, align 4, !tbaa !383
  %65 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 111
  %66 = load float, ptr %65, align 4, !tbaa !518
  %67 = add nsw i32 %20, 27
  %68 = mul i32 %55, %67
  %69 = add i32 %68, %53
  %70 = and i32 %69, 1023
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = fcmp olt float %66, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %8
  %76 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 110
  %77 = load float, ptr %76, align 8, !tbaa !517
  br label %78

78:                                               ; preds = %75, %8
  %79 = phi float [ %77, %75 ], [ 1.000000e+00, %8 ]
  %80 = fmul float %63, %79
  store float %80, ptr %64, align 4, !tbaa !383
  %81 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 8
  %82 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 9
  %83 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 %27, i32 6
  %84 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 %27, i32 8
  %85 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %86 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %87 = icmp eq ptr %5, null
  %88 = getelementptr inbounds float, ptr %6, i64 1
  %89 = getelementptr inbounds float, ptr %11, i64 1
  %90 = getelementptr inbounds float, ptr %6, i64 2
  %91 = getelementptr inbounds float, ptr %11, i64 2
  %92 = getelementptr inbounds float, ptr %28, i64 1
  %93 = getelementptr inbounds float, ptr %11, i64 1
  %94 = getelementptr inbounds float, ptr %28, i64 2
  %95 = getelementptr inbounds float, ptr %11, i64 2
  %96 = getelementptr inbounds float, ptr %28, i64 1
  %97 = getelementptr inbounds float, ptr %11, i64 1
  %98 = getelementptr inbounds float, ptr %28, i64 2
  %99 = getelementptr inbounds float, ptr %11, i64 2
  %100 = getelementptr inbounds float, ptr %10, i64 1
  %101 = getelementptr inbounds float, ptr %10, i64 2
  %102 = getelementptr inbounds float, ptr %10, i64 3
  br label %103

103:                                              ; preds = %78, %218
  %104 = phi ptr [ %31, %78 ], [ %220, %218 ]
  %105 = phi i32 [ 0, %78 ], [ %219, %218 ]
  %106 = load ptr, ptr %104, align 8, !tbaa !59
  %107 = icmp eq ptr %106, null
  br i1 %107, label %218, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !139
  %111 = icmp eq ptr %110, null
  br i1 %111, label %218, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 1
  %114 = load i16, ptr %113, align 2, !tbaa !420
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %218, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 26
  %118 = load float, ptr %117, align 4, !tbaa !421
  %119 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !422
  %121 = load i16, ptr %106, align 8, !tbaa !423
  switch i16 %121, label %130 [
    i16 16, label %122
    i16 1, label %122
  ]

122:                                              ; preds = %116, %116
  %123 = load i16, ptr %81, align 2, !tbaa !284
  %124 = add i16 %123, -1
  %125 = icmp ult i16 %124, 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i16, ptr %82, align 4, !tbaa !283
  %128 = icmp eq i16 %127, 2
  br i1 %128, label %129, label %130

129:                                              ; preds = %126, %122
  br label %130

130:                                              ; preds = %129, %126, %116
  %131 = phi i16 [ 8, %129 ], [ %121, %126 ], [ %121, %116 ]
  switch i16 %131, label %162 [
    i16 8, label %132
    i16 32, label %136
    i16 16, label %145
    i16 1, label %150
    i16 8192, label %154
  ]

132:                                              ; preds = %130
  %133 = load float, ptr %28, align 4, !tbaa !34
  store float %133, ptr %11, align 4, !tbaa !34
  %134 = load float, ptr %96, align 4, !tbaa !34
  store float %134, ptr %97, align 4, !tbaa !34
  %135 = load float, ptr %98, align 4, !tbaa !34
  store float %135, ptr %99, align 4, !tbaa !34
  br label %162

136:                                              ; preds = %130
  %137 = load float, ptr %28, align 4, !tbaa !34
  store float %137, ptr %11, align 4, !tbaa !34
  %138 = load float, ptr %92, align 4, !tbaa !34
  store float %138, ptr %93, align 4, !tbaa !34
  %139 = load float, ptr %94, align 4, !tbaa !34
  store float %139, ptr %95, align 4, !tbaa !34
  %140 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !424
  %142 = icmp eq ptr %141, null
  br i1 %142, label %162, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.Object, ptr %141, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %144, ptr noundef nonnull %11) #17
  br label %162

145:                                              ; preds = %130
  br i1 %87, label %150, label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 6
  %148 = call fastcc i32 @get_particle_uv(ptr noundef %22, ptr noundef null, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %147, ptr noundef nonnull %11), !range !403
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %146, %145, %130
  %151 = load float, ptr %6, align 4, !tbaa !34
  store float %151, ptr %11, align 4, !tbaa !34
  %152 = load float, ptr %88, align 4, !tbaa !34
  store float %152, ptr %89, align 4, !tbaa !34
  %153 = load float, ptr %90, align 4, !tbaa !34
  store float %153, ptr %91, align 4, !tbaa !34
  br label %162

154:                                              ; preds = %130
  %155 = load float, ptr %83, align 4, !tbaa !428
  %156 = fsub float %30, %155
  %157 = fmul float %156, 2.000000e+00
  %158 = load float, ptr %84, align 4, !tbaa !429
  %159 = fsub float %158, %155
  %160 = fdiv float %157, %159
  %161 = fadd float %160, -1.000000e+00
  store float %161, ptr %11, align 4, !tbaa !34
  store float 0.000000e+00, ptr %85, align 4, !tbaa !34
  store float 0.000000e+00, ptr %86, align 4, !tbaa !34
  br label %162

162:                                              ; preds = %154, %150, %146, %143, %136, %132, %130
  %163 = call i32 @externtex(ptr noundef nonnull %106, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %100, ptr noundef nonnull %101, ptr noundef nonnull %102, i32 noundef 0, ptr noundef null) #17
  %164 = load i16, ptr %113, align 2, !tbaa !420
  %165 = and i16 %164, 512
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %162
  %168 = load float, ptr %34, align 4, !tbaa !410
  %169 = load float, ptr %9, align 4, !tbaa !34
  %170 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 54
  %171 = load float, ptr %170, align 4, !tbaa !549
  %172 = sext i16 %120 to i32
  %173 = call float @texture_value_blend(float noundef %118, float noundef %168, float noundef %169, float noundef %171, i32 noundef %172) #17
  store float %173, ptr %32, align 4, !tbaa !408
  store float %173, ptr %33, align 4, !tbaa !409
  store float %173, ptr %34, align 4, !tbaa !410
  br label %174

174:                                              ; preds = %167, %162
  %175 = load i16, ptr %113, align 2, !tbaa !420
  %176 = and i16 %175, 16
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  %179 = load float, ptr %64, align 4, !tbaa !383
  %180 = load float, ptr %9, align 4, !tbaa !34
  %181 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 50
  %182 = load float, ptr %181, align 4, !tbaa !438
  %183 = sext i16 %120 to i32
  %184 = call float @texture_value_blend(float noundef %118, float noundef %179, float noundef %180, float noundef %182, i32 noundef %183) #17
  store float %184, ptr %64, align 4, !tbaa !383
  br label %185

185:                                              ; preds = %178, %174
  %186 = load i16, ptr %113, align 2, !tbaa !420
  %187 = and i16 %186, 128
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = load float, ptr %37, align 4, !tbaa !412
  %191 = load float, ptr %9, align 4, !tbaa !34
  %192 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 51
  %193 = load float, ptr %192, align 8, !tbaa !550
  %194 = sext i16 %120 to i32
  %195 = call float @texture_value_blend(float noundef %118, float noundef %190, float noundef %191, float noundef %193, i32 noundef %194) #17
  store float %195, ptr %37, align 4, !tbaa !412
  br label %196

196:                                              ; preds = %189, %185
  %197 = load i16, ptr %113, align 2, !tbaa !420
  %198 = and i16 %197, 256
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %196
  %201 = load float, ptr %36, align 4, !tbaa !411
  %202 = load float, ptr %9, align 4, !tbaa !34
  %203 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 53
  %204 = load float, ptr %203, align 8, !tbaa !551
  %205 = sext i16 %120 to i32
  %206 = call float @texture_value_blend(float noundef %118, float noundef %201, float noundef %202, float noundef %204, i32 noundef %205) #17
  store float %206, ptr %36, align 4, !tbaa !411
  br label %207

207:                                              ; preds = %200, %196
  %208 = load i16, ptr %113, align 2, !tbaa !420
  %209 = and i16 %208, 4
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = load float, ptr %43, align 4, !tbaa !372
  %213 = load float, ptr %9, align 4, !tbaa !34
  %214 = getelementptr inbounds %struct.MTex, ptr %106, i64 0, i32 55
  %215 = load float, ptr %214, align 8, !tbaa !432
  %216 = sext i16 %120 to i32
  %217 = call float @texture_value_blend(float noundef %118, float noundef %212, float noundef %213, float noundef %215, i32 noundef %216) #17
  store float %217, ptr %43, align 4, !tbaa !372
  br label %218

218:                                              ; preds = %211, %207, %112, %108, %103
  %219 = add nuw nsw i32 %105, 1
  %220 = getelementptr inbounds ptr, ptr %104, i64 1
  %221 = icmp eq i32 %219, 18
  br i1 %221, label %222, label %103, !llvm.loop !552

222:                                              ; preds = %218
  %223 = load float, ptr %64, align 4, !tbaa !383
  %224 = fcmp olt float %223, 0.000000e+00
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = fadd float %223, 1.000000e+00
  store float %226, ptr %64, align 4, !tbaa !383
  br label %227

227:                                              ; preds = %225, %222
  %228 = load float, ptr %64, align 4, !tbaa !383
  %229 = fcmp olt float %228, 0.000000e+00
  br i1 %229, label %232, label %230

230:                                              ; preds = %227
  %231 = fcmp ogt float %228, 1.000000e+00
  br i1 %231, label %232, label %234

232:                                              ; preds = %230, %227
  %233 = phi float [ 0.000000e+00, %227 ], [ 1.000000e+00, %230 ]
  store float %233, ptr %64, align 4, !tbaa !383
  br label %234

234:                                              ; preds = %232, %230
  %235 = load float, ptr %37, align 4, !tbaa !412
  %236 = fcmp olt float %235, 0.000000e+00
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = fadd float %235, 1.000000e+00
  store float %238, ptr %37, align 4, !tbaa !412
  br label %239

239:                                              ; preds = %237, %234
  %240 = load float, ptr %37, align 4, !tbaa !412
  %241 = fcmp olt float %240, 0.000000e+00
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = fcmp ogt float %240, 1.000000e+00
  br i1 %243, label %244, label %246

244:                                              ; preds = %242, %239
  %245 = phi float [ 0.000000e+00, %239 ], [ 1.000000e+00, %242 ]
  store float %245, ptr %37, align 4, !tbaa !412
  br label %246

246:                                              ; preds = %244, %242
  %247 = load float, ptr %36, align 4, !tbaa !411
  %248 = fcmp olt float %247, 0.000000e+00
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = fadd float %247, 1.000000e+00
  store float %250, ptr %36, align 4, !tbaa !411
  br label %251

251:                                              ; preds = %249, %246
  %252 = load float, ptr %36, align 4, !tbaa !411
  %253 = fcmp olt float %252, 0.000000e+00
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = fcmp ogt float %252, 1.000000e+00
  br i1 %255, label %256, label %258

256:                                              ; preds = %254, %251
  %257 = phi float [ 0.000000e+00, %251 ], [ 1.000000e+00, %254 ]
  store float %257, ptr %36, align 4, !tbaa !411
  br label %258

258:                                              ; preds = %256, %254
  %259 = load float, ptr %34, align 4, !tbaa !410
  %260 = fcmp olt float %259, 0.000000e+00
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = fadd float %259, 1.000000e+00
  store float %262, ptr %34, align 4, !tbaa !410
  br label %263

263:                                              ; preds = %261, %258
  %264 = load float, ptr %34, align 4, !tbaa !410
  %265 = fcmp olt float %264, 0.000000e+00
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = fcmp ogt float %264, 1.000000e+00
  br i1 %267, label %268, label %270

268:                                              ; preds = %266, %263
  %269 = phi float [ 0.000000e+00, %263 ], [ 1.000000e+00, %266 ]
  store float %269, ptr %34, align 4, !tbaa !410
  br label %270

270:                                              ; preds = %268, %266
  %271 = load float, ptr %43, align 4, !tbaa !372
  %272 = fcmp olt float %271, 0.000000e+00
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = fadd float %271, 1.000000e+00
  store float %274, ptr %43, align 4, !tbaa !372
  br label %275

275:                                              ; preds = %273, %270
  %276 = load float, ptr %43, align 4, !tbaa !372
  %277 = fcmp olt float %276, 0.000000e+00
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = fcmp ogt float %276, 1.000000e+00
  br i1 %279, label %280, label %282

280:                                              ; preds = %278, %275
  %281 = phi float [ 0.000000e+00, %275 ], [ 1.000000e+00, %278 ]
  store float %281, ptr %43, align 4, !tbaa !372
  br label %282

282:                                              ; preds = %280, %278
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  %283 = load float, ptr %43, align 4, !tbaa !372
  %284 = add nsw i32 %20, 24
  %285 = load i32, ptr %48, align 4, !tbaa !215
  %286 = srem i32 %285, 1024
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !38
  %290 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %287
  %291 = load i32, ptr %290, align 4, !tbaa !38
  %292 = mul i32 %291, %284
  %293 = add i32 %292, %289
  %294 = and i32 %293, 1023
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %295
  %297 = load float, ptr %296, align 4, !tbaa !34
  %298 = fcmp olt float %283, %297
  br i1 %298, label %705, label %299

299:                                              ; preds = %282
  %300 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 24
  %301 = load ptr, ptr %300, align 8, !tbaa !344
  %302 = icmp eq ptr %301, null
  br i1 %302, label %357, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr %21, align 8, !tbaa !217
  %305 = icmp eq i32 %4, -1
  br i1 %305, label %353, label %306

306:                                              ; preds = %303
  switch i16 %3, label %353 [
    i16 0, label %307
    i16 1, label %311
    i16 2, label %311
  ]

307:                                              ; preds = %306
  %308 = sext i32 %4 to i64
  %309 = getelementptr inbounds float, ptr %301, i64 %308
  %310 = load float, ptr %309, align 4, !tbaa !34
  br label %353

311:                                              ; preds = %306, %306
  %312 = getelementptr inbounds %struct.DerivedMesh, ptr %304, i64 0, i32 48
  %313 = load ptr, ptr %312, align 8, !tbaa !278
  %314 = call ptr %313(ptr noundef %304, i32 noundef %4, i32 noundef 4) #17
  %315 = load i32, ptr %314, align 4, !tbaa !238
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds float, ptr %301, i64 %316
  %318 = load float, ptr %317, align 4, !tbaa !34
  %319 = getelementptr inbounds %struct.MFace, ptr %314, i64 0, i32 1
  %320 = load i32, ptr %319, align 4, !tbaa !240
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds float, ptr %301, i64 %321
  %323 = load float, ptr %322, align 4, !tbaa !34
  %324 = getelementptr inbounds %struct.MFace, ptr %314, i64 0, i32 2
  %325 = load i32, ptr %324, align 4, !tbaa !241
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds float, ptr %301, i64 %326
  %328 = load float, ptr %327, align 4, !tbaa !34
  %329 = getelementptr inbounds %struct.MFace, ptr %314, i64 0, i32 3
  %330 = load i32, ptr %329, align 4, !tbaa !242
  %331 = load float, ptr %5, align 4, !tbaa !34
  %332 = getelementptr inbounds float, ptr %5, i64 1
  %333 = load float, ptr %332, align 4, !tbaa !34
  %334 = fmul float %323, %333
  %335 = call float @llvm.fmuladd.f32(float %331, float %318, float %334)
  %336 = getelementptr inbounds float, ptr %5, i64 2
  %337 = load float, ptr %336, align 4, !tbaa !34
  %338 = call float @llvm.fmuladd.f32(float %337, float %328, float %335)
  %339 = icmp eq i32 %330, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %311
  %341 = zext i32 %330 to i64
  %342 = getelementptr inbounds float, ptr %301, i64 %341
  %343 = load float, ptr %342, align 4, !tbaa !34
  %344 = getelementptr inbounds float, ptr %5, i64 3
  %345 = load float, ptr %344, align 4, !tbaa !34
  %346 = call float @llvm.fmuladd.f32(float %345, float %343, float %338)
  br label %347

347:                                              ; preds = %340, %311
  %348 = phi float [ %346, %340 ], [ %338, %311 ]
  %349 = fcmp olt float %348, 0.000000e+00
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = fcmp ogt float %348, 1.000000e+00
  br i1 %351, label %352, label %353

352:                                              ; preds = %350
  br label %353

353:                                              ; preds = %303, %306, %307, %347, %350, %352
  %354 = phi float [ %310, %307 ], [ 0.000000e+00, %303 ], [ 0.000000e+00, %306 ], [ 1.000000e+00, %352 ], [ %348, %350 ], [ 0.000000e+00, %347 ]
  %355 = load float, ptr %64, align 4, !tbaa !383
  %356 = fmul float %354, %355
  store float %356, ptr %64, align 4, !tbaa !383
  br label %357

357:                                              ; preds = %353, %299
  %358 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 25
  %359 = load ptr, ptr %358, align 8, !tbaa !345
  %360 = icmp eq ptr %359, null
  br i1 %360, label %415, label %361

361:                                              ; preds = %357
  %362 = load ptr, ptr %21, align 8, !tbaa !217
  %363 = icmp eq i32 %4, -1
  br i1 %363, label %411, label %364

364:                                              ; preds = %361
  switch i16 %3, label %411 [
    i16 0, label %365
    i16 1, label %369
    i16 2, label %369
  ]

365:                                              ; preds = %364
  %366 = sext i32 %4 to i64
  %367 = getelementptr inbounds float, ptr %359, i64 %366
  %368 = load float, ptr %367, align 4, !tbaa !34
  br label %411

369:                                              ; preds = %364, %364
  %370 = getelementptr inbounds %struct.DerivedMesh, ptr %362, i64 0, i32 48
  %371 = load ptr, ptr %370, align 8, !tbaa !278
  %372 = call ptr %371(ptr noundef %362, i32 noundef %4, i32 noundef 4) #17
  %373 = load i32, ptr %372, align 4, !tbaa !238
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds float, ptr %359, i64 %374
  %376 = load float, ptr %375, align 4, !tbaa !34
  %377 = getelementptr inbounds %struct.MFace, ptr %372, i64 0, i32 1
  %378 = load i32, ptr %377, align 4, !tbaa !240
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds float, ptr %359, i64 %379
  %381 = load float, ptr %380, align 4, !tbaa !34
  %382 = getelementptr inbounds %struct.MFace, ptr %372, i64 0, i32 2
  %383 = load i32, ptr %382, align 4, !tbaa !241
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds float, ptr %359, i64 %384
  %386 = load float, ptr %385, align 4, !tbaa !34
  %387 = getelementptr inbounds %struct.MFace, ptr %372, i64 0, i32 3
  %388 = load i32, ptr %387, align 4, !tbaa !242
  %389 = load float, ptr %5, align 4, !tbaa !34
  %390 = getelementptr inbounds float, ptr %5, i64 1
  %391 = load float, ptr %390, align 4, !tbaa !34
  %392 = fmul float %381, %391
  %393 = call float @llvm.fmuladd.f32(float %389, float %376, float %392)
  %394 = getelementptr inbounds float, ptr %5, i64 2
  %395 = load float, ptr %394, align 4, !tbaa !34
  %396 = call float @llvm.fmuladd.f32(float %395, float %386, float %393)
  %397 = icmp eq i32 %388, 0
  br i1 %397, label %405, label %398

398:                                              ; preds = %369
  %399 = zext i32 %388 to i64
  %400 = getelementptr inbounds float, ptr %359, i64 %399
  %401 = load float, ptr %400, align 4, !tbaa !34
  %402 = getelementptr inbounds float, ptr %5, i64 3
  %403 = load float, ptr %402, align 4, !tbaa !34
  %404 = call float @llvm.fmuladd.f32(float %403, float %401, float %396)
  br label %405

405:                                              ; preds = %398, %369
  %406 = phi float [ %404, %398 ], [ %396, %369 ]
  %407 = fcmp olt float %406, 0.000000e+00
  br i1 %407, label %411, label %408

408:                                              ; preds = %405
  %409 = fcmp ogt float %406, 1.000000e+00
  br i1 %409, label %410, label %411

410:                                              ; preds = %408
  br label %411

411:                                              ; preds = %361, %364, %365, %405, %408, %410
  %412 = phi float [ %368, %365 ], [ 0.000000e+00, %361 ], [ 0.000000e+00, %364 ], [ 1.000000e+00, %410 ], [ %406, %408 ], [ 0.000000e+00, %405 ]
  %413 = load float, ptr %37, align 4, !tbaa !412
  %414 = fmul float %412, %413
  store float %414, ptr %37, align 4, !tbaa !412
  br label %415

415:                                              ; preds = %411, %357
  %416 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 26
  %417 = load ptr, ptr %416, align 8, !tbaa !346
  %418 = icmp eq ptr %417, null
  br i1 %418, label %473, label %419

419:                                              ; preds = %415
  %420 = load ptr, ptr %21, align 8, !tbaa !217
  %421 = icmp eq i32 %4, -1
  br i1 %421, label %469, label %422

422:                                              ; preds = %419
  switch i16 %3, label %469 [
    i16 0, label %423
    i16 1, label %427
    i16 2, label %427
  ]

423:                                              ; preds = %422
  %424 = sext i32 %4 to i64
  %425 = getelementptr inbounds float, ptr %417, i64 %424
  %426 = load float, ptr %425, align 4, !tbaa !34
  br label %469

427:                                              ; preds = %422, %422
  %428 = getelementptr inbounds %struct.DerivedMesh, ptr %420, i64 0, i32 48
  %429 = load ptr, ptr %428, align 8, !tbaa !278
  %430 = call ptr %429(ptr noundef %420, i32 noundef %4, i32 noundef 4) #17
  %431 = load i32, ptr %430, align 4, !tbaa !238
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds float, ptr %417, i64 %432
  %434 = load float, ptr %433, align 4, !tbaa !34
  %435 = getelementptr inbounds %struct.MFace, ptr %430, i64 0, i32 1
  %436 = load i32, ptr %435, align 4, !tbaa !240
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds float, ptr %417, i64 %437
  %439 = load float, ptr %438, align 4, !tbaa !34
  %440 = getelementptr inbounds %struct.MFace, ptr %430, i64 0, i32 2
  %441 = load i32, ptr %440, align 4, !tbaa !241
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds float, ptr %417, i64 %442
  %444 = load float, ptr %443, align 4, !tbaa !34
  %445 = getelementptr inbounds %struct.MFace, ptr %430, i64 0, i32 3
  %446 = load i32, ptr %445, align 4, !tbaa !242
  %447 = load float, ptr %5, align 4, !tbaa !34
  %448 = getelementptr inbounds float, ptr %5, i64 1
  %449 = load float, ptr %448, align 4, !tbaa !34
  %450 = fmul float %439, %449
  %451 = call float @llvm.fmuladd.f32(float %447, float %434, float %450)
  %452 = getelementptr inbounds float, ptr %5, i64 2
  %453 = load float, ptr %452, align 4, !tbaa !34
  %454 = call float @llvm.fmuladd.f32(float %453, float %444, float %451)
  %455 = icmp eq i32 %446, 0
  br i1 %455, label %463, label %456

456:                                              ; preds = %427
  %457 = zext i32 %446 to i64
  %458 = getelementptr inbounds float, ptr %417, i64 %457
  %459 = load float, ptr %458, align 4, !tbaa !34
  %460 = getelementptr inbounds float, ptr %5, i64 3
  %461 = load float, ptr %460, align 4, !tbaa !34
  %462 = call float @llvm.fmuladd.f32(float %461, float %459, float %454)
  br label %463

463:                                              ; preds = %456, %427
  %464 = phi float [ %462, %456 ], [ %454, %427 ]
  %465 = fcmp olt float %464, 0.000000e+00
  br i1 %465, label %469, label %466

466:                                              ; preds = %463
  %467 = fcmp ogt float %464, 1.000000e+00
  br i1 %467, label %468, label %469

468:                                              ; preds = %466
  br label %469

469:                                              ; preds = %419, %422, %423, %463, %466, %468
  %470 = phi float [ %426, %423 ], [ 0.000000e+00, %419 ], [ 0.000000e+00, %422 ], [ 1.000000e+00, %468 ], [ %464, %466 ], [ 0.000000e+00, %463 ]
  %471 = load float, ptr %36, align 4, !tbaa !411
  %472 = fmul float %470, %471
  store float %472, ptr %36, align 4, !tbaa !411
  br label %473

473:                                              ; preds = %469, %415
  %474 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 27
  %475 = load ptr, ptr %474, align 8, !tbaa !347
  %476 = icmp eq ptr %475, null
  br i1 %476, label %531, label %477

477:                                              ; preds = %473
  %478 = load ptr, ptr %21, align 8, !tbaa !217
  %479 = icmp eq i32 %4, -1
  br i1 %479, label %527, label %480

480:                                              ; preds = %477
  switch i16 %3, label %527 [
    i16 0, label %481
    i16 1, label %485
    i16 2, label %485
  ]

481:                                              ; preds = %480
  %482 = sext i32 %4 to i64
  %483 = getelementptr inbounds float, ptr %475, i64 %482
  %484 = load float, ptr %483, align 4, !tbaa !34
  br label %527

485:                                              ; preds = %480, %480
  %486 = getelementptr inbounds %struct.DerivedMesh, ptr %478, i64 0, i32 48
  %487 = load ptr, ptr %486, align 8, !tbaa !278
  %488 = call ptr %487(ptr noundef %478, i32 noundef %4, i32 noundef 4) #17
  %489 = load i32, ptr %488, align 4, !tbaa !238
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds float, ptr %475, i64 %490
  %492 = load float, ptr %491, align 4, !tbaa !34
  %493 = getelementptr inbounds %struct.MFace, ptr %488, i64 0, i32 1
  %494 = load i32, ptr %493, align 4, !tbaa !240
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds float, ptr %475, i64 %495
  %497 = load float, ptr %496, align 4, !tbaa !34
  %498 = getelementptr inbounds %struct.MFace, ptr %488, i64 0, i32 2
  %499 = load i32, ptr %498, align 4, !tbaa !241
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds float, ptr %475, i64 %500
  %502 = load float, ptr %501, align 4, !tbaa !34
  %503 = getelementptr inbounds %struct.MFace, ptr %488, i64 0, i32 3
  %504 = load i32, ptr %503, align 4, !tbaa !242
  %505 = load float, ptr %5, align 4, !tbaa !34
  %506 = getelementptr inbounds float, ptr %5, i64 1
  %507 = load float, ptr %506, align 4, !tbaa !34
  %508 = fmul float %497, %507
  %509 = call float @llvm.fmuladd.f32(float %505, float %492, float %508)
  %510 = getelementptr inbounds float, ptr %5, i64 2
  %511 = load float, ptr %510, align 4, !tbaa !34
  %512 = call float @llvm.fmuladd.f32(float %511, float %502, float %509)
  %513 = icmp eq i32 %504, 0
  br i1 %513, label %521, label %514

514:                                              ; preds = %485
  %515 = zext i32 %504 to i64
  %516 = getelementptr inbounds float, ptr %475, i64 %515
  %517 = load float, ptr %516, align 4, !tbaa !34
  %518 = getelementptr inbounds float, ptr %5, i64 3
  %519 = load float, ptr %518, align 4, !tbaa !34
  %520 = call float @llvm.fmuladd.f32(float %519, float %517, float %512)
  br label %521

521:                                              ; preds = %514, %485
  %522 = phi float [ %520, %514 ], [ %512, %485 ]
  %523 = fcmp olt float %522, 0.000000e+00
  br i1 %523, label %527, label %524

524:                                              ; preds = %521
  %525 = fcmp ogt float %522, 1.000000e+00
  br i1 %525, label %526, label %527

526:                                              ; preds = %524
  br label %527

527:                                              ; preds = %477, %480, %481, %521, %524, %526
  %528 = phi float [ %484, %481 ], [ 0.000000e+00, %477 ], [ 0.000000e+00, %480 ], [ 1.000000e+00, %526 ], [ %522, %524 ], [ 0.000000e+00, %521 ]
  %529 = load float, ptr %34, align 4, !tbaa !410
  %530 = fmul float %528, %529
  store float %530, ptr %34, align 4, !tbaa !410
  br label %531

531:                                              ; preds = %527, %473
  %532 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 28
  %533 = load ptr, ptr %532, align 8, !tbaa !348
  %534 = icmp eq ptr %533, null
  br i1 %534, label %589, label %535

535:                                              ; preds = %531
  %536 = load ptr, ptr %21, align 8, !tbaa !217
  %537 = icmp eq i32 %4, -1
  br i1 %537, label %585, label %538

538:                                              ; preds = %535
  switch i16 %3, label %585 [
    i16 0, label %539
    i16 1, label %543
    i16 2, label %543
  ]

539:                                              ; preds = %538
  %540 = sext i32 %4 to i64
  %541 = getelementptr inbounds float, ptr %533, i64 %540
  %542 = load float, ptr %541, align 4, !tbaa !34
  br label %585

543:                                              ; preds = %538, %538
  %544 = getelementptr inbounds %struct.DerivedMesh, ptr %536, i64 0, i32 48
  %545 = load ptr, ptr %544, align 8, !tbaa !278
  %546 = call ptr %545(ptr noundef %536, i32 noundef %4, i32 noundef 4) #17
  %547 = load i32, ptr %546, align 4, !tbaa !238
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds float, ptr %533, i64 %548
  %550 = load float, ptr %549, align 4, !tbaa !34
  %551 = getelementptr inbounds %struct.MFace, ptr %546, i64 0, i32 1
  %552 = load i32, ptr %551, align 4, !tbaa !240
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds float, ptr %533, i64 %553
  %555 = load float, ptr %554, align 4, !tbaa !34
  %556 = getelementptr inbounds %struct.MFace, ptr %546, i64 0, i32 2
  %557 = load i32, ptr %556, align 4, !tbaa !241
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds float, ptr %533, i64 %558
  %560 = load float, ptr %559, align 4, !tbaa !34
  %561 = getelementptr inbounds %struct.MFace, ptr %546, i64 0, i32 3
  %562 = load i32, ptr %561, align 4, !tbaa !242
  %563 = load float, ptr %5, align 4, !tbaa !34
  %564 = getelementptr inbounds float, ptr %5, i64 1
  %565 = load float, ptr %564, align 4, !tbaa !34
  %566 = fmul float %555, %565
  %567 = call float @llvm.fmuladd.f32(float %563, float %550, float %566)
  %568 = getelementptr inbounds float, ptr %5, i64 2
  %569 = load float, ptr %568, align 4, !tbaa !34
  %570 = call float @llvm.fmuladd.f32(float %569, float %560, float %567)
  %571 = icmp eq i32 %562, 0
  br i1 %571, label %579, label %572

572:                                              ; preds = %543
  %573 = zext i32 %562 to i64
  %574 = getelementptr inbounds float, ptr %533, i64 %573
  %575 = load float, ptr %574, align 4, !tbaa !34
  %576 = getelementptr inbounds float, ptr %5, i64 3
  %577 = load float, ptr %576, align 4, !tbaa !34
  %578 = call float @llvm.fmuladd.f32(float %577, float %575, float %570)
  br label %579

579:                                              ; preds = %572, %543
  %580 = phi float [ %578, %572 ], [ %570, %543 ]
  %581 = fcmp olt float %580, 0.000000e+00
  br i1 %581, label %585, label %582

582:                                              ; preds = %579
  %583 = fcmp ogt float %580, 1.000000e+00
  br i1 %583, label %584, label %585

584:                                              ; preds = %582
  br label %585

585:                                              ; preds = %535, %538, %539, %579, %582, %584
  %586 = phi float [ %542, %539 ], [ 0.000000e+00, %535 ], [ 0.000000e+00, %538 ], [ 1.000000e+00, %584 ], [ %580, %582 ], [ 0.000000e+00, %579 ]
  %587 = load float, ptr %33, align 4, !tbaa !409
  %588 = fmul float %586, %587
  store float %588, ptr %33, align 4, !tbaa !409
  br label %589

589:                                              ; preds = %585, %531
  %590 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 29
  %591 = load ptr, ptr %590, align 8, !tbaa !349
  %592 = icmp eq ptr %591, null
  br i1 %592, label %647, label %593

593:                                              ; preds = %589
  %594 = load ptr, ptr %21, align 8, !tbaa !217
  %595 = icmp eq i32 %4, -1
  br i1 %595, label %643, label %596

596:                                              ; preds = %593
  switch i16 %3, label %643 [
    i16 0, label %597
    i16 1, label %601
    i16 2, label %601
  ]

597:                                              ; preds = %596
  %598 = sext i32 %4 to i64
  %599 = getelementptr inbounds float, ptr %591, i64 %598
  %600 = load float, ptr %599, align 4, !tbaa !34
  br label %643

601:                                              ; preds = %596, %596
  %602 = getelementptr inbounds %struct.DerivedMesh, ptr %594, i64 0, i32 48
  %603 = load ptr, ptr %602, align 8, !tbaa !278
  %604 = call ptr %603(ptr noundef %594, i32 noundef %4, i32 noundef 4) #17
  %605 = load i32, ptr %604, align 4, !tbaa !238
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds float, ptr %591, i64 %606
  %608 = load float, ptr %607, align 4, !tbaa !34
  %609 = getelementptr inbounds %struct.MFace, ptr %604, i64 0, i32 1
  %610 = load i32, ptr %609, align 4, !tbaa !240
  %611 = zext i32 %610 to i64
  %612 = getelementptr inbounds float, ptr %591, i64 %611
  %613 = load float, ptr %612, align 4, !tbaa !34
  %614 = getelementptr inbounds %struct.MFace, ptr %604, i64 0, i32 2
  %615 = load i32, ptr %614, align 4, !tbaa !241
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds float, ptr %591, i64 %616
  %618 = load float, ptr %617, align 4, !tbaa !34
  %619 = getelementptr inbounds %struct.MFace, ptr %604, i64 0, i32 3
  %620 = load i32, ptr %619, align 4, !tbaa !242
  %621 = load float, ptr %5, align 4, !tbaa !34
  %622 = getelementptr inbounds float, ptr %5, i64 1
  %623 = load float, ptr %622, align 4, !tbaa !34
  %624 = fmul float %613, %623
  %625 = call float @llvm.fmuladd.f32(float %621, float %608, float %624)
  %626 = getelementptr inbounds float, ptr %5, i64 2
  %627 = load float, ptr %626, align 4, !tbaa !34
  %628 = call float @llvm.fmuladd.f32(float %627, float %618, float %625)
  %629 = icmp eq i32 %620, 0
  br i1 %629, label %637, label %630

630:                                              ; preds = %601
  %631 = zext i32 %620 to i64
  %632 = getelementptr inbounds float, ptr %591, i64 %631
  %633 = load float, ptr %632, align 4, !tbaa !34
  %634 = getelementptr inbounds float, ptr %5, i64 3
  %635 = load float, ptr %634, align 4, !tbaa !34
  %636 = call float @llvm.fmuladd.f32(float %635, float %633, float %628)
  br label %637

637:                                              ; preds = %630, %601
  %638 = phi float [ %636, %630 ], [ %628, %601 ]
  %639 = fcmp olt float %638, 0.000000e+00
  br i1 %639, label %643, label %640

640:                                              ; preds = %637
  %641 = fcmp ogt float %638, 1.000000e+00
  br i1 %641, label %642, label %643

642:                                              ; preds = %640
  br label %643

643:                                              ; preds = %593, %596, %597, %637, %640, %642
  %644 = phi float [ %600, %597 ], [ 0.000000e+00, %593 ], [ 0.000000e+00, %596 ], [ 1.000000e+00, %642 ], [ %638, %640 ], [ 0.000000e+00, %637 ]
  %645 = load float, ptr %32, align 4, !tbaa !408
  %646 = fmul float %644, %645
  store float %646, ptr %32, align 4, !tbaa !408
  br label %647

647:                                              ; preds = %643, %589
  %648 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 30
  %649 = load ptr, ptr %648, align 8, !tbaa !350
  %650 = icmp eq ptr %649, null
  br i1 %650, label %705, label %651

651:                                              ; preds = %647
  %652 = load ptr, ptr %21, align 8, !tbaa !217
  %653 = icmp eq i32 %4, -1
  br i1 %653, label %701, label %654

654:                                              ; preds = %651
  switch i16 %3, label %701 [
    i16 0, label %655
    i16 1, label %659
    i16 2, label %659
  ]

655:                                              ; preds = %654
  %656 = sext i32 %4 to i64
  %657 = getelementptr inbounds float, ptr %649, i64 %656
  %658 = load float, ptr %657, align 4, !tbaa !34
  br label %701

659:                                              ; preds = %654, %654
  %660 = getelementptr inbounds %struct.DerivedMesh, ptr %652, i64 0, i32 48
  %661 = load ptr, ptr %660, align 8, !tbaa !278
  %662 = call ptr %661(ptr noundef %652, i32 noundef %4, i32 noundef 4) #17
  %663 = load i32, ptr %662, align 4, !tbaa !238
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds float, ptr %649, i64 %664
  %666 = load float, ptr %665, align 4, !tbaa !34
  %667 = getelementptr inbounds %struct.MFace, ptr %662, i64 0, i32 1
  %668 = load i32, ptr %667, align 4, !tbaa !240
  %669 = zext i32 %668 to i64
  %670 = getelementptr inbounds float, ptr %649, i64 %669
  %671 = load float, ptr %670, align 4, !tbaa !34
  %672 = getelementptr inbounds %struct.MFace, ptr %662, i64 0, i32 2
  %673 = load i32, ptr %672, align 4, !tbaa !241
  %674 = zext i32 %673 to i64
  %675 = getelementptr inbounds float, ptr %649, i64 %674
  %676 = load float, ptr %675, align 4, !tbaa !34
  %677 = getelementptr inbounds %struct.MFace, ptr %662, i64 0, i32 3
  %678 = load i32, ptr %677, align 4, !tbaa !242
  %679 = load float, ptr %5, align 4, !tbaa !34
  %680 = getelementptr inbounds float, ptr %5, i64 1
  %681 = load float, ptr %680, align 4, !tbaa !34
  %682 = fmul float %671, %681
  %683 = call float @llvm.fmuladd.f32(float %679, float %666, float %682)
  %684 = getelementptr inbounds float, ptr %5, i64 2
  %685 = load float, ptr %684, align 4, !tbaa !34
  %686 = call float @llvm.fmuladd.f32(float %685, float %676, float %683)
  %687 = icmp eq i32 %678, 0
  br i1 %687, label %695, label %688

688:                                              ; preds = %659
  %689 = zext i32 %678 to i64
  %690 = getelementptr inbounds float, ptr %649, i64 %689
  %691 = load float, ptr %690, align 4, !tbaa !34
  %692 = getelementptr inbounds float, ptr %5, i64 3
  %693 = load float, ptr %692, align 4, !tbaa !34
  %694 = call float @llvm.fmuladd.f32(float %693, float %691, float %686)
  br label %695

695:                                              ; preds = %688, %659
  %696 = phi float [ %694, %688 ], [ %686, %659 ]
  %697 = fcmp olt float %696, 0.000000e+00
  br i1 %697, label %701, label %698

698:                                              ; preds = %695
  %699 = fcmp ogt float %696, 1.000000e+00
  br i1 %699, label %700, label %701

700:                                              ; preds = %698
  br label %701

701:                                              ; preds = %651, %654, %655, %695, %698, %700
  %702 = phi float [ %658, %655 ], [ 0.000000e+00, %651 ], [ 0.000000e+00, %654 ], [ 1.000000e+00, %700 ], [ %696, %698 ], [ 0.000000e+00, %695 ]
  %703 = load float, ptr %35, align 4, !tbaa !379
  %704 = fmul float %702, %703
  store float %704, ptr %35, align 4, !tbaa !379
  br label %705

705:                                              ; preds = %647, %701, %282
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_child_modifiers(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr noundef %7, float noundef %8) unnamed_addr #0 {
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !165
  %17 = ptrtoint ptr %4 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 6
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 99
  %23 = load float, ptr %22, align 4, !tbaa !513
  %24 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 103
  %25 = load float, ptr %24, align 4, !tbaa !553
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 105
  %27 = load float, ptr %26, align 4, !tbaa !554
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 108
  %29 = load float, ptr %28, align 8, !tbaa !555
  %30 = icmp eq ptr %1, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 10
  %33 = load float, ptr %32, align 4, !tbaa !411
  %34 = fmul float %23, %33
  %35 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 12
  %36 = load float, ptr %35, align 4, !tbaa !410
  %37 = fmul float %25, %36
  %38 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 13
  %39 = load float, ptr %38, align 4, !tbaa !409
  %40 = fmul float %27, %39
  %41 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 14
  %42 = load float, ptr %41, align 4, !tbaa !408
  %43 = fmul float %29, %42
  br label %44

44:                                               ; preds = %31, %9
  %45 = phi float [ %37, %31 ], [ %25, %9 ]
  %46 = phi float [ %40, %31 ], [ %27, %9 ]
  %47 = phi float [ %43, %31 ], [ %29, %9 ]
  %48 = phi float [ %34, %31 ], [ %23, %9 ]
  %49 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !54
  %51 = and i32 %50, 134217728
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 42
  %55 = load ptr, ptr %54, align 8, !tbaa !402
  %56 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !322
  %58 = tail call i32 @do_guides(ptr noundef %55, ptr noundef %7, i32 noundef %57, float noundef %8), !range !403
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %123

60:                                               ; preds = %44, %53
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 96
  %62 = load float, ptr %61, align 8, !tbaa !556
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 97
  %64 = load float, ptr %63, align 4, !tbaa !511
  br i1 %30, label %68, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 9
  %67 = load float, ptr %66, align 4, !tbaa !412
  br label %68

68:                                               ; preds = %60, %65
  %69 = phi float [ %67, %65 ], [ 1.000000e+00, %60 ]
  %70 = icmp ne ptr %2, null
  %71 = fcmp une float %62, 0.000000e+00
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = fcmp olt float %64, 0.000000e+00
  %75 = fadd float %64, 1.000000e+00
  %76 = tail call float @llvm.fmuladd.f32(float %64, float 9.000000e+00, float 1.000000e+00)
  %77 = select i1 %74, float %75, float %76
  %78 = fcmp olt float %62, 0.000000e+00
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = fneg float %62
  %81 = fmul float %69, %80
  %82 = fpext float %8 to double
  %83 = fsub double 1.000000e+00, %82
  br label %87

84:                                               ; preds = %73
  %85 = fmul float %62, %69
  %86 = fpext float %8 to double
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi double [ %86, %84 ], [ %83, %79 ]
  %89 = phi float [ %85, %84 ], [ %81, %79 ]
  %90 = fpext float %77 to double
  %91 = tail call double @pow(double noundef %88, double noundef %90) #17
  %92 = fptrunc double %91 to float
  %93 = fmul float %89, %92
  tail call void @interp_v3_v3v3(ptr noundef %7, ptr noundef %7, ptr noundef nonnull %2, float noundef %93) #17
  br label %94

94:                                               ; preds = %68, %87
  %95 = phi float [ %93, %87 ], [ 0.000000e+00, %68 ]
  %96 = fcmp une float %48, 0.000000e+00
  br i1 %96, label %97, label %123

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 98
  %99 = load float, ptr %98, align 8, !tbaa !512
  %100 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 102
  %101 = load float, ptr %100, align 8, !tbaa !503
  %102 = fneg float %101
  %103 = tail call float @llvm.fmuladd.f32(float %102, float %95, float 1.000000e+00)
  %104 = fmul float %99, %103
  %105 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 100
  %106 = load float, ptr %105, align 8, !tbaa !557
  %107 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 101
  %108 = load float, ptr %107, align 4, !tbaa !558
  %109 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 35
  %110 = load i16, ptr %109, align 4, !tbaa !559
  %111 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 36
  %112 = load i16, ptr %111, align 2, !tbaa !502
  %113 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !97
  %115 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 47
  %116 = load ptr, ptr %11, align 8, !tbaa !66
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !49
  %119 = getelementptr inbounds %struct.ParticleSettings, ptr %118, i64 0, i32 19
  %120 = load i16, ptr %119, align 4, !tbaa !332
  %121 = icmp eq i16 %120, 2
  %122 = zext i1 %121 to i32
  tail call fastcc void @do_kink(ptr noundef %7, ptr noundef %2, ptr noundef %3, float noundef %8, float noundef %48, float noundef %106, float noundef %104, float noundef %108, i16 noundef signext %110, i16 noundef signext %112, ptr noundef nonnull %115, i32 noundef %122)
  br label %123

123:                                              ; preds = %94, %97, %53
  %124 = fcmp ogt float %45, 0.000000e+00
  br i1 %124, label %125, label %128

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 104
  %127 = load float, ptr %126, align 8, !tbaa !514
  tail call fastcc void @do_rough(ptr noundef %5, ptr noundef %6, float noundef %8, float noundef %45, float noundef %127, float noundef 0.000000e+00, ptr noundef %7)
  br label %128

128:                                              ; preds = %125, %123
  %129 = fcmp ogt float %46, 0.000000e+00
  br i1 %129, label %130, label %167

130:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %131 = load ptr, ptr %11, align 8, !tbaa !66
  %132 = add nsw i32 %21, 27
  %133 = getelementptr inbounds %struct.ParticleSystem, ptr %131, i64 0, i32 23
  %134 = load i32, ptr %133, align 4, !tbaa !215
  %135 = srem i32 %134, 1024
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !38
  %139 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %136
  %140 = load i32, ptr %139, align 4, !tbaa !38
  %141 = mul i32 %140, %132
  %142 = add i32 %141, %138
  %143 = and i32 %142, 1023
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %144
  %146 = load float, ptr %145, align 4, !tbaa !34
  store float %146, ptr %10, align 4, !tbaa !34
  %147 = add i32 %21, 28
  %148 = mul i32 %140, %147
  %149 = add i32 %148, %138
  %150 = and i32 %149, 1023
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !34
  %154 = getelementptr inbounds float, ptr %10, i64 1
  store float %153, ptr %154, align 4, !tbaa !34
  %155 = add i32 %21, 29
  %156 = mul i32 %140, %155
  %157 = add i32 %156, %138
  %158 = and i32 %157, 1023
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !34
  %162 = getelementptr inbounds float, ptr %10, i64 2
  store float %161, ptr %162, align 4, !tbaa !34
  %163 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 106
  %164 = load float, ptr %163, align 8, !tbaa !515
  %165 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 107
  %166 = load float, ptr %165, align 4, !tbaa !560
  call fastcc void @do_rough(ptr noundef nonnull %10, ptr noundef %6, float noundef %8, float noundef %46, float noundef %164, float noundef %166, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  br label %167

167:                                              ; preds = %130, %128
  %168 = fcmp ogt float %47, 0.000000e+00
  br i1 %168, label %169, label %226

169:                                              ; preds = %167
  %170 = load ptr, ptr %11, align 8, !tbaa !66
  %171 = add nsw i32 %21, 27
  %172 = getelementptr inbounds %struct.ParticleSystem, ptr %170, i64 0, i32 23
  %173 = load i32, ptr %172, align 4, !tbaa !215
  %174 = srem i32 %173, 1024
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !38
  %178 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %175
  %179 = load i32, ptr %178, align 4, !tbaa !38
  %180 = mul i32 %179, %171
  %181 = add i32 %180, %177
  %182 = and i32 %181, 1023
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %183
  %185 = load float, ptr %184, align 4, !tbaa !34
  %186 = add i32 %21, 28
  %187 = mul i32 %179, %186
  %188 = add i32 %187, %177
  %189 = and i32 %188, 1023
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %190
  %192 = load float, ptr %191, align 4, !tbaa !34
  %193 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 109
  %194 = load float, ptr %193, align 4, !tbaa !516
  %195 = fpext float %8 to double
  %196 = fpext float %194 to double
  %197 = tail call double @pow(double noundef %195, double noundef %196) #17
  %198 = fptrunc double %197 to float
  %199 = fmul float %47, %198
  %200 = tail call float @llvm.fmuladd.f32(float %185, float 2.000000e+00, float -1.000000e+00)
  %201 = tail call float @llvm.fmuladd.f32(float %192, float 2.000000e+00, float -1.000000e+00)
  %202 = fmul float %200, %199
  %203 = fmul float %201, %199
  %204 = load float, ptr %6, align 4, !tbaa !34
  %205 = load float, ptr %7, align 4, !tbaa !34
  %206 = tail call float @llvm.fmuladd.f32(float %204, float %202, float %205)
  store float %206, ptr %7, align 4, !tbaa !34
  %207 = getelementptr inbounds float, ptr %6, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !34
  %209 = getelementptr inbounds float, ptr %7, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !34
  %211 = tail call float @llvm.fmuladd.f32(float %208, float %202, float %210)
  store float %211, ptr %209, align 4, !tbaa !34
  %212 = getelementptr inbounds float, ptr %6, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !34
  %214 = getelementptr inbounds float, ptr %7, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !34
  %216 = tail call float @llvm.fmuladd.f32(float %213, float %202, float %215)
  store float %216, ptr %214, align 4, !tbaa !34
  %217 = getelementptr inbounds [4 x float], ptr %6, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !34
  %219 = tail call float @llvm.fmuladd.f32(float %218, float %203, float %206)
  store float %219, ptr %7, align 4, !tbaa !34
  %220 = getelementptr inbounds [4 x float], ptr %6, i64 1, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !34
  %222 = tail call float @llvm.fmuladd.f32(float %221, float %203, float %211)
  store float %222, ptr %209, align 4, !tbaa !34
  %223 = getelementptr inbounds [4 x float], ptr %6, i64 1, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !34
  %225 = tail call float @llvm.fmuladd.f32(float %224, float %203, float %216)
  store float %225, ptr %214, align 4, !tbaa !34
  br label %226

226:                                              ; preds = %169, %167
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psys_get_particle_state(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x %struct.ParticleKey], align 16
  %7 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 57
  %14 = load float, ptr %13, align 4, !tbaa !467
  %15 = fmul float %14, 0x3FA47AE140000000
  %16 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 4
  %17 = load float, ptr %16, align 4, !tbaa !399
  %18 = fcmp ogt float %17, 0.000000e+00
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr %0, align 8, !tbaa !64
  %21 = tail call float @BKE_scene_frame_get(ptr noundef %20) #17
  br label %22

22:                                               ; preds = %4, %19
  %23 = phi float [ %21, %19 ], [ %17, %4 ]
  %24 = icmp sgt i32 %12, %1
  br i1 %24, label %170, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 28
  %27 = load i32, ptr %26, align 8, !tbaa !166
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %394, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 19
  %31 = load i16, ptr %30, align 4, !tbaa !332
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %159

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = and i32 %35, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %394, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !165
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %struct.ChildParticle, ptr %40, i64 %41
  %43 = sext i32 %12 to i64
  %44 = sub nsw i64 0, %43
  %45 = getelementptr inbounds %struct.ChildParticle, ptr %42, i64 %44
  %46 = load ptr, ptr %9, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %46, i64 0, i32 19
  %48 = load i16, ptr %47, align 4, !tbaa !332
  %49 = icmp eq i16 %48, 2
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 3
  br i1 %49, label %51, label %96

51:                                               ; preds = %38, %57
  %52 = phi i64 [ %65, %57 ], [ 0, %38 ]
  %53 = phi float [ %64, %57 ], [ 0.000000e+00, %38 ]
  %54 = getelementptr inbounds %struct.ChildParticle, ptr %42, i64 %44, i32 2, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !38
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ChildParticle, ptr %42, i64 %44, i32 3, i64 %52
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = load ptr, ptr %50, align 8, !tbaa !48
  %61 = zext nneg i32 %55 to i64
  %62 = getelementptr inbounds %struct.ParticleData, ptr %60, i64 %61, i32 6
  %63 = load float, ptr %62, align 4, !tbaa !428
  %64 = tail call float @llvm.fmuladd.f32(float %59, float %63, float %53)
  %65 = add nuw nsw i64 %52, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %51, !llvm.loop !540

67:                                               ; preds = %57, %51
  %68 = phi float [ %64, %57 ], [ %53, %51 ]
  %69 = getelementptr inbounds %struct.ParticleSettings, ptr %46, i64 0, i32 55
  %70 = load float, ptr %69, align 4, !tbaa !492
  %71 = getelementptr inbounds %struct.ParticleSettings, ptr %46, i64 0, i32 56
  %72 = load float, ptr %71, align 8, !tbaa !541
  %73 = ptrtoint ptr %45 to i64
  %74 = ptrtoint ptr %40 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = lshr i32 %76, 6
  %78 = add nuw nsw i32 %77, 25
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 23
  %80 = load i32, ptr %79, align 4, !tbaa !215
  %81 = srem i32 %80, 1024
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !38
  %85 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %82
  %86 = load i32, ptr %85, align 4, !tbaa !38
  %87 = mul i32 %86, %78
  %88 = add i32 %87, %84
  %89 = and i32 %88, 1023
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = fneg float %72
  %94 = tail call float @llvm.fmuladd.f32(float %93, float %92, float 1.000000e+00)
  %95 = fmul float %70, %94
  br label %105

96:                                               ; preds = %38
  %97 = load ptr, ptr %50, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct.ChildParticle, ptr %42, i64 %44, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !322
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ParticleData, ptr %97, i64 %100, i32 6
  %102 = load float, ptr %101, align 4, !tbaa !428
  %103 = getelementptr inbounds %struct.ParticleData, ptr %97, i64 %100, i32 7
  %104 = load float, ptr %103, align 8, !tbaa !542
  br label %105

105:                                              ; preds = %67, %96
  %106 = phi float [ %95, %67 ], [ %104, %96 ]
  %107 = phi float [ %68, %67 ], [ %102, %96 ]
  %108 = fsub float %23, %107
  %109 = fdiv float %108, %106
  store float %109, ptr %16, align 4, !tbaa !399
  %110 = icmp eq i32 %3, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = fcmp olt float %109, 0.000000e+00
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %115 = load i32, ptr %114, align 8, !tbaa !54
  %116 = and i32 %115, 32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %394, label %118

118:                                              ; preds = %113, %111
  %119 = fcmp ogt float %109, 1.000000e+00
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %122 = load i32, ptr %121, align 8, !tbaa !54
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %394, label %125

125:                                              ; preds = %118, %120, %105
  %126 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 53
  %127 = load float, ptr %126, align 4, !tbaa !490
  %128 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 54
  %129 = load float, ptr %128, align 8, !tbaa !491
  %130 = fsub float %129, %127
  %131 = add nsw i32 %1, 23
  %132 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 23
  %133 = load i32, ptr %132, align 4, !tbaa !215
  %134 = srem i32 %133, 1024
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !38
  %138 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %135
  %139 = load i32, ptr %138, align 4, !tbaa !38
  %140 = mul i32 %139, %131
  %141 = add i32 %140, %137
  %142 = and i32 %141, 1023
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %143
  %145 = load float, ptr %144, align 4, !tbaa !34
  %146 = tail call float @llvm.fmuladd.f32(float %130, float %145, float %127)
  %147 = fsub float %23, %146
  %148 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 55
  %149 = load float, ptr %148, align 4, !tbaa !492
  %150 = add nsw i32 %1, 24
  %151 = mul i32 %139, %150
  %152 = add i32 %151, %137
  %153 = and i32 %152, 1023
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !34
  %157 = fmul float %149, %156
  %158 = fdiv float %147, %157
  store float %158, ptr %16, align 4, !tbaa !399
  tail call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  br label %394

159:                                              ; preds = %29
  %160 = load ptr, ptr %7, align 8, !tbaa !66
  %161 = getelementptr inbounds %struct.ParticleSystem, ptr %160, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !165
  %163 = sext i32 %1 to i64
  %164 = getelementptr inbounds %struct.ChildParticle, ptr %162, i64 %163
  %165 = sext i32 %12 to i64
  %166 = sub nsw i64 0, %165
  %167 = getelementptr inbounds %struct.ChildParticle, ptr %164, i64 %166
  %168 = getelementptr inbounds %struct.ChildParticle, ptr %164, i64 %166, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !322
  br label %172

170:                                              ; preds = %22
  %171 = load ptr, ptr %7, align 8, !tbaa !66
  br label %172

172:                                              ; preds = %170, %159
  %173 = phi i32 [ %1, %170 ], [ %169, %159 ]
  %174 = phi ptr [ %171, %170 ], [ %160, %159 ]
  %175 = phi ptr [ null, %170 ], [ %167, %159 ]
  %176 = getelementptr inbounds %struct.ParticleSystem, ptr %174, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !48
  %178 = sext i32 %173 to i64
  %179 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178
  %180 = icmp eq ptr %177, null
  br i1 %180, label %206, label %181

181:                                              ; preds = %172
  %182 = icmp eq i32 %3, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178, i32 6
  %185 = load float, ptr %184, align 4, !tbaa !428
  %186 = fcmp olt float %23, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %189 = load i32, ptr %188, align 8, !tbaa !54
  %190 = and i32 %189, 32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %394, label %192

192:                                              ; preds = %187, %183
  %193 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178, i32 8
  %194 = load float, ptr %193, align 4, !tbaa !429
  %195 = fcmp ult float %23, %194
  br i1 %195, label %201, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %198 = load i32, ptr %197, align 8, !tbaa !54
  %199 = and i32 %198, 64
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %394, label %201

201:                                              ; preds = %192, %196, %181
  %202 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178, i32 8
  %203 = load float, ptr %202, align 4, !tbaa !429
  %204 = fcmp olt float %23, %203
  %205 = select i1 %204, float %23, float %203
  br label %206

206:                                              ; preds = %201, %172
  %207 = phi float [ %205, %201 ], [ %23, %172 ]
  %208 = load ptr, ptr %7, align 8, !tbaa !66
  %209 = getelementptr inbounds %struct.ParticleSystem, ptr %208, i64 0, i32 25
  %210 = load i32, ptr %209, align 4, !tbaa !60
  %211 = and i32 %210, 1024
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %206
  %214 = fneg float %207
  store float %214, ptr %16, align 4, !tbaa !399
  tail call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  br label %394

215:                                              ; preds = %206
  %216 = icmp eq ptr %175, null
  br i1 %216, label %273, label %217

217:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %218 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178, i32 6
  %219 = load float, ptr %218, align 4, !tbaa !428
  %220 = fsub float %207, %219
  %221 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178, i32 7
  %222 = load float, ptr %221, align 8, !tbaa !542
  %223 = fdiv float %220, %222
  %224 = getelementptr inbounds %struct.ParticleKey, ptr %179, i64 0, i32 2
  %225 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 95
  %226 = load float, ptr %225, align 4, !tbaa !375
  %227 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 94
  %228 = load float, ptr %227, align 8, !tbaa !376
  %229 = getelementptr inbounds %struct.ChildParticle, ptr %175, i64 0, i32 4
  %230 = load float, ptr %229, align 4, !tbaa !34
  store float %230, ptr %2, align 4, !tbaa !34
  %231 = getelementptr inbounds %struct.ChildParticle, ptr %175, i64 0, i32 4, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !34
  %233 = getelementptr inbounds float, ptr %2, i64 1
  store float %232, ptr %233, align 4, !tbaa !34
  %234 = getelementptr inbounds %struct.ChildParticle, ptr %175, i64 0, i32 4, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !34
  %236 = getelementptr inbounds float, ptr %2, i64 2
  store float %235, ptr %236, align 4, !tbaa !34
  %237 = fmul float %228, %230
  store float %237, ptr %2, align 4, !tbaa !34
  %238 = fmul float %228, %232
  store float %238, ptr %233, align 4, !tbaa !34
  %239 = fmul float %228, %235
  store float %239, ptr %236, align 4, !tbaa !34
  %240 = fmul float %226, %237
  store float %240, ptr %2, align 4, !tbaa !34
  %241 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %242 = getelementptr inbounds %struct.ParticleKey, ptr %179, i64 0, i32 1
  %243 = load float, ptr %242, align 4, !tbaa !34
  store float %243, ptr %241, align 4, !tbaa !34
  %244 = getelementptr inbounds %struct.ParticleKey, ptr %179, i64 0, i32 1, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !34
  %246 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  store float %245, ptr %246, align 4, !tbaa !34
  %247 = getelementptr inbounds %struct.ParticleKey, ptr %179, i64 0, i32 1, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !34
  %249 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  store float %248, ptr %249, align 4, !tbaa !34
  tail call void @mul_qt_v3(ptr noundef nonnull %224, ptr noundef nonnull %2) #17
  %250 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  tail call void @copy_qt_qt(ptr noundef nonnull %250, ptr noundef nonnull %224) #17
  %251 = load float, ptr %179, align 4, !tbaa !34
  %252 = load float, ptr %2, align 4, !tbaa !34
  %253 = fadd float %251, %252
  store float %253, ptr %2, align 4, !tbaa !34
  %254 = getelementptr inbounds float, ptr %179, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !34
  %256 = load float, ptr %233, align 4, !tbaa !34
  %257 = fadd float %255, %256
  store float %257, ptr %233, align 4, !tbaa !34
  %258 = getelementptr inbounds float, ptr %179, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !34
  %260 = load float, ptr %236, align 4, !tbaa !34
  %261 = fadd float %259, %260
  store float %261, ptr %236, align 4, !tbaa !34
  %262 = fcmp olt float %223, 0.000000e+00
  br i1 %262, label %266, label %263

263:                                              ; preds = %217
  %264 = fcmp ogt float %223, 1.000000e+00
  br i1 %264, label %265, label %266

265:                                              ; preds = %263
  br label %266

266:                                              ; preds = %217, %263, %265
  %267 = phi float [ 1.000000e+00, %265 ], [ %223, %263 ], [ 0.000000e+00, %217 ]
  call void @unit_m4(ptr noundef nonnull %5) #17
  call fastcc void @do_child_modifiers(ptr noundef %0, ptr noundef null, ptr noundef nonnull %179, ptr noundef nonnull %224, ptr noundef nonnull %175, ptr noundef nonnull %229, ptr noundef nonnull %5, ptr noundef nonnull %2, float noundef %267)
  %268 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 15
  %269 = load ptr, ptr %268, align 8, !tbaa !343
  %270 = icmp eq ptr %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %266
  call void @calc_latt_deform(ptr noundef nonnull %269, ptr noundef nonnull %2, float noundef 1.000000e+00) #17
  br label %272

272:                                              ; preds = %271, %266
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %394

273:                                              ; preds = %215
  %274 = getelementptr inbounds %struct.ParticleKey, ptr %179, i64 0, i32 4
  %275 = load float, ptr %274, align 4, !tbaa !561
  %276 = fcmp oeq float %275, %207
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 11
  %279 = load i16, ptr %278, align 8, !tbaa !454
  switch i16 %279, label %281 [
    i16 0, label %280
    i16 2, label %280
  ]

280:                                              ; preds = %277, %277, %273
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(56) %179, i64 56, i1 false)
  br label %388

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178, i32 1
  %283 = getelementptr inbounds %struct.ParticleData, ptr %177, i64 %178, i32 1, i32 4
  %284 = load float, ptr %283, align 4, !tbaa !562
  %285 = fcmp oeq float %284, %207
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(56) %282, i64 56, i1 false)
  br label %388

287:                                              ; preds = %281
  %288 = load ptr, ptr %0, align 8, !tbaa !64
  %289 = getelementptr inbounds %struct.Scene, ptr %288, i64 0, i32 22, i32 55
  %290 = load i16, ptr %289, align 4, !tbaa !563
  %291 = sitofp i16 %290 to float
  %292 = fadd float %275, 2.000000e+00
  %293 = load float, ptr %16, align 4, !tbaa !399
  %294 = fcmp ult float %292, %293
  %295 = fadd float %284, -2.000000e+00
  %296 = fcmp ugt float %295, %293
  %297 = or i1 %294, %296
  br i1 %297, label %364, label %298

298:                                              ; preds = %287
  %299 = fcmp oge float %284, %275
  %300 = fcmp olt float %284, 0.000000e+00
  %301 = or i1 %299, %300
  br i1 %301, label %302, label %319

302:                                              ; preds = %298
  %303 = fsub float %293, %275
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(56) %179, i64 56, i1 false)
  %304 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %305 = fdiv float %303, %291
  %306 = load float, ptr %2, align 4, !tbaa !34
  %307 = load float, ptr %304, align 4, !tbaa !34
  %308 = tail call float @llvm.fmuladd.f32(float %307, float %305, float %306)
  store float %308, ptr %2, align 4, !tbaa !34
  %309 = getelementptr inbounds float, ptr %2, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !34
  %311 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  %312 = load float, ptr %311, align 4, !tbaa !34
  %313 = tail call float @llvm.fmuladd.f32(float %312, float %305, float %310)
  store float %313, ptr %309, align 4, !tbaa !34
  %314 = getelementptr inbounds float, ptr %2, i64 2
  %315 = load float, ptr %314, align 4, !tbaa !34
  %316 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  %317 = load float, ptr %316, align 4, !tbaa !34
  %318 = tail call float @llvm.fmuladd.f32(float %317, float %305, float %315)
  store float %318, ptr %314, align 4, !tbaa !34
  br label %388

319:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #17
  %320 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %320, ptr noundef nonnull align 4 dereferenceable(56) %282, i64 56, i1 false)
  %321 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %321, ptr noundef nonnull align 4 dereferenceable(56) %179, i64 56, i1 false)
  %322 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 4
  %323 = load float, ptr %322, align 4, !tbaa !399
  %324 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 4
  %325 = load float, ptr %324, align 4, !tbaa !399
  %326 = fsub float %323, %325
  %327 = fsub float %293, %325
  %328 = fdiv float %327, %326
  %329 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 1
  %330 = fmul float %15, %326
  %331 = load float, ptr %329, align 4, !tbaa !34
  %332 = fmul float %331, %330
  store float %332, ptr %329, align 4, !tbaa !34
  %333 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 1, i64 1
  %334 = load float, ptr %333, align 8, !tbaa !34
  %335 = fmul float %330, %334
  store float %335, ptr %333, align 8, !tbaa !34
  %336 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 1, i64 2
  %337 = load float, ptr %336, align 4, !tbaa !34
  %338 = fmul float %330, %337
  store float %338, ptr %336, align 4, !tbaa !34
  %339 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 1
  %340 = load float, ptr %339, align 4, !tbaa !34
  %341 = fmul float %330, %340
  store float %341, ptr %339, align 4, !tbaa !34
  %342 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 1, i64 1
  %343 = load float, ptr %342, align 16, !tbaa !34
  %344 = fmul float %330, %343
  store float %344, ptr %342, align 16, !tbaa !34
  %345 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 1, i64 2
  %346 = load float, ptr %345, align 4, !tbaa !34
  %347 = fmul float %330, %346
  store float %347, ptr %345, align 4, !tbaa !34
  %348 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  call void @interp_cubic_v3(ptr noundef %2, ptr noundef nonnull %348, ptr noundef nonnull %320, ptr noundef nonnull %329, ptr noundef nonnull %321, ptr noundef nonnull %339, float noundef %328) #17
  %349 = fdiv float 1.000000e+00, %330
  %350 = load float, ptr %348, align 4, !tbaa !34
  %351 = fmul float %349, %350
  store float %351, ptr %348, align 4, !tbaa !34
  %352 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !34
  %354 = fmul float %349, %353
  store float %354, ptr %352, align 4, !tbaa !34
  %355 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  %356 = load float, ptr %355, align 4, !tbaa !34
  %357 = fmul float %349, %356
  store float %357, ptr %355, align 4, !tbaa !34
  %358 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  %359 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 3
  %360 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %358, ptr noundef nonnull %359, ptr noundef nonnull %360, float noundef %328) #17
  %361 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %362 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 2
  %363 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %361, ptr noundef nonnull %362, ptr noundef nonnull %363, float noundef %328) #17
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #17
  br label %388

364:                                              ; preds = %287
  %365 = fadd float %275, 1.000000e+00
  %366 = fcmp ult float %365, %293
  %367 = fadd float %275, -1.000000e+00
  %368 = fcmp ugt float %367, %293
  %369 = or i1 %366, %368
  br i1 %369, label %387, label %370

370:                                              ; preds = %364
  %371 = fsub float %293, %275
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(56) %179, i64 56, i1 false)
  %372 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %373 = fdiv float %371, %291
  %374 = load float, ptr %2, align 4, !tbaa !34
  %375 = load float, ptr %372, align 4, !tbaa !34
  %376 = tail call float @llvm.fmuladd.f32(float %375, float %373, float %374)
  store float %376, ptr %2, align 4, !tbaa !34
  %377 = getelementptr inbounds float, ptr %2, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !34
  %379 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  %380 = load float, ptr %379, align 4, !tbaa !34
  %381 = tail call float @llvm.fmuladd.f32(float %380, float %373, float %378)
  store float %381, ptr %377, align 4, !tbaa !34
  %382 = getelementptr inbounds float, ptr %2, i64 2
  %383 = load float, ptr %382, align 4, !tbaa !34
  %384 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  %385 = load float, ptr %384, align 4, !tbaa !34
  %386 = tail call float @llvm.fmuladd.f32(float %385, float %373, float %383)
  store float %386, ptr %382, align 4, !tbaa !34
  br label %388

387:                                              ; preds = %364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(56) %179, i64 56, i1 false)
  store float %293, ptr %16, align 4, !tbaa !399
  br label %388

388:                                              ; preds = %319, %302, %387, %370, %286, %280
  %389 = load ptr, ptr %7, align 8, !tbaa !66
  %390 = getelementptr inbounds %struct.ParticleSystem, ptr %389, i64 0, i32 15
  %391 = load ptr, ptr %390, align 8, !tbaa !343
  %392 = icmp eq ptr %391, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %388
  call void @calc_latt_deform(ptr noundef nonnull %391, ptr noundef %2, float noundef 1.000000e+00) #17
  br label %394

394:                                              ; preds = %272, %393, %388, %187, %196, %113, %120, %33, %25, %213, %125
  %395 = phi i32 [ 1, %125 ], [ 1, %213 ], [ 0, %25 ], [ 0, %33 ], [ 0, %120 ], [ 0, %113 ], [ 0, %196 ], [ 0, %187 ], [ 1, %388 ], [ 1, %393 ], [ 1, %272 ]
  ret i32 %395
}

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @psys_get_dupli_texture(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  %9 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %10 = icmp eq ptr %4, null
  br i1 %10, label %136, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 19
  %13 = load i16, ptr %12, align 4, !tbaa !332
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %129

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 2
  %19 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %18, i32 noundef 5) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %86, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !199
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %22, i64 0, i32 48
  %24 = load ptr, ptr %23, align 8, !tbaa !278
  %25 = load i32, ptr %4, align 4, !tbaa !259
  %26 = tail call ptr %24(ptr noundef %22, i32 noundef %25, i32 noundef 4) #17
  %27 = load i32, ptr %4, align 4, !tbaa !259
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MTFace, ptr %19, i64 %28
  %30 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !242
  %32 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4
  %33 = load float, ptr %29, align 8, !tbaa !34
  %34 = getelementptr inbounds [2 x float], ptr %29, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 1
  %37 = load float, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 2
  %41 = load float, ptr %40, align 8, !tbaa !34
  %42 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 2, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = icmp eq i32 %31, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %21
  %46 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 3
  %47 = load float, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 3, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = load float, ptr %32, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = fmul float %37, %52
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %33, float %53)
  %55 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %41, float %54)
  %58 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %47, float %57)
  store float %60, ptr %5, align 4, !tbaa !34
  %61 = load float, ptr %32, align 4, !tbaa !34
  %62 = load float, ptr %51, align 4, !tbaa !34
  %63 = fmul float %39, %62
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %35, float %63)
  %65 = load float, ptr %55, align 4, !tbaa !34
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %43, float %64)
  %67 = load float, ptr %58, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %49, float %66)
  br label %84

69:                                               ; preds = %21
  %70 = load float, ptr %32, align 4, !tbaa !34
  %71 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = fmul float %37, %72
  %74 = tail call float @llvm.fmuladd.f32(float %70, float %33, float %73)
  %75 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %41, float %74)
  store float %77, ptr %5, align 4, !tbaa !34
  %78 = load float, ptr %32, align 4, !tbaa !34
  %79 = load float, ptr %71, align 4, !tbaa !34
  %80 = fmul float %39, %79
  %81 = tail call float @llvm.fmuladd.f32(float %78, float %35, float %80)
  %82 = load float, ptr %75, align 4, !tbaa !34
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %43, float %81)
  br label %84

84:                                               ; preds = %45, %69
  %85 = phi float [ %83, %69 ], [ %68, %45 ]
  store float %85, ptr %9, align 4, !tbaa !34
  br label %86

86:                                               ; preds = %84, %15
  %87 = load i32, ptr %4, align 4, !tbaa !259
  %88 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4
  %89 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 5
  %90 = load float, ptr %89, align 4, !tbaa !320
  %91 = icmp eq ptr %2, null
  br i1 %91, label %122, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %16, align 8, !tbaa !199
  %94 = icmp eq ptr %93, null
  br i1 %94, label %122, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !100
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !49
  %100 = getelementptr inbounds %struct.ParticleSettings, ptr %99, i64 0, i32 9
  %101 = load i16, ptr %100, align 4, !tbaa !283
  %102 = icmp eq i16 %101, 2
  br i1 %102, label %103, label %121

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.ParticleSettings, ptr %99, i64 0, i32 8
  %105 = load i16, ptr %104, align 2, !tbaa !284
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %103
  %108 = load float, ptr %88, align 4, !tbaa !34
  store float %108, ptr %8, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = getelementptr inbounds float, ptr %8, i64 1
  store float %110, ptr %111, align 4, !tbaa !34
  %112 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !34
  %114 = getelementptr inbounds float, ptr %8, i64 2
  store float %113, ptr %114, align 4, !tbaa !34
  %115 = icmp eq ptr %6, null
  br i1 %115, label %277, label %116

116:                                              ; preds = %107
  store float %108, ptr %6, align 4, !tbaa !34
  %117 = load float, ptr %109, align 4, !tbaa !34
  %118 = getelementptr inbounds float, ptr %6, i64 1
  store float %117, ptr %118, align 4, !tbaa !34
  %119 = load float, ptr %112, align 4, !tbaa !34
  %120 = getelementptr inbounds float, ptr %6, i64 2
  store float %119, ptr %120, align 4, !tbaa !34
  br label %277

121:                                              ; preds = %103, %95
  call void @psys_particle_on_dm(ptr noundef nonnull %93, i32 noundef 1, i32 noundef %87, i32 noundef -2, ptr noundef nonnull %88, float noundef %90, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef null)
  br label %277

122:                                              ; preds = %92, %86
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %123 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %123, align 4, !tbaa !34
  %124 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %124, align 4, !tbaa !34
  %125 = icmp eq ptr %6, null
  br i1 %125, label %277, label %126

126:                                              ; preds = %122
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %127 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %127, align 4, !tbaa !34
  %128 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %128, align 4, !tbaa !34
  br label %277

129:                                              ; preds = %11
  %130 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !48
  %132 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !38
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ParticleData, ptr %131, i64 %134
  br label %136

136:                                              ; preds = %129, %7
  %137 = phi ptr [ %135, %129 ], [ %3, %7 ]
  %138 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 8
  %139 = load i16, ptr %138, align 2, !tbaa !284
  %140 = icmp eq i16 %139, 1
  br i1 %140, label %141, label %228

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !199
  %144 = getelementptr inbounds %struct.DerivedMesh, ptr %143, i64 0, i32 2
  %145 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %144, i32 noundef 5) #17
  %146 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 10
  %147 = load i32, ptr %146, align 4, !tbaa !282
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !281
  br label %152

152:                                              ; preds = %149, %141
  %153 = phi i32 [ %151, %149 ], [ %147, %141 ]
  %154 = load ptr, ptr %142, align 8, !tbaa !199
  %155 = getelementptr inbounds %struct.DerivedMesh, ptr %154, i64 0, i32 25
  %156 = load ptr, ptr %155, align 8, !tbaa !226
  %157 = tail call i32 %156(ptr noundef %154) #17
  %158 = icmp slt i32 %153, %157
  %159 = select i1 %158, i32 %153, i32 -1
  %160 = icmp eq ptr %145, null
  %161 = icmp eq i32 %159, -1
  %162 = select i1 %160, i1 true, i1 %161
  %163 = icmp eq i32 %159, -2
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %228, label %165

165:                                              ; preds = %152
  %166 = load ptr, ptr %142, align 8, !tbaa !199
  %167 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 48
  %168 = load ptr, ptr %167, align 8, !tbaa !278
  %169 = tail call ptr %168(ptr noundef %166, i32 noundef %159, i32 noundef 4) #17
  %170 = sext i32 %159 to i64
  %171 = getelementptr inbounds %struct.MTFace, ptr %145, i64 %170
  %172 = getelementptr inbounds %struct.MFace, ptr %169, i64 0, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !242
  %174 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11
  %175 = load float, ptr %171, align 8, !tbaa !34
  %176 = getelementptr inbounds [2 x float], ptr %171, i64 0, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !34
  %178 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 1
  %179 = load float, ptr %178, align 8, !tbaa !34
  %180 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 1, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !34
  %182 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 2
  %183 = load float, ptr %182, align 8, !tbaa !34
  %184 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 2, i64 1
  %185 = load float, ptr %184, align 4, !tbaa !34
  %186 = icmp eq i32 %173, 0
  br i1 %186, label %211, label %187

187:                                              ; preds = %165
  %188 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 3
  %189 = load float, ptr %188, align 8, !tbaa !34
  %190 = getelementptr inbounds [4 x [2 x float]], ptr %171, i64 0, i64 3, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !34
  %192 = load float, ptr %174, align 4, !tbaa !34
  %193 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !34
  %195 = fmul float %179, %194
  %196 = tail call float @llvm.fmuladd.f32(float %192, float %175, float %195)
  %197 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !34
  %199 = tail call float @llvm.fmuladd.f32(float %198, float %183, float %196)
  %200 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11, i64 3
  %201 = load float, ptr %200, align 4, !tbaa !34
  %202 = tail call float @llvm.fmuladd.f32(float %201, float %189, float %199)
  store float %202, ptr %5, align 4, !tbaa !34
  %203 = load float, ptr %174, align 4, !tbaa !34
  %204 = load float, ptr %193, align 4, !tbaa !34
  %205 = fmul float %181, %204
  %206 = tail call float @llvm.fmuladd.f32(float %203, float %177, float %205)
  %207 = load float, ptr %197, align 4, !tbaa !34
  %208 = tail call float @llvm.fmuladd.f32(float %207, float %185, float %206)
  %209 = load float, ptr %200, align 4, !tbaa !34
  %210 = tail call float @llvm.fmuladd.f32(float %209, float %191, float %208)
  br label %226

211:                                              ; preds = %165
  %212 = load float, ptr %174, align 4, !tbaa !34
  %213 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !34
  %215 = fmul float %179, %214
  %216 = tail call float @llvm.fmuladd.f32(float %212, float %175, float %215)
  %217 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11, i64 2
  %218 = load float, ptr %217, align 4, !tbaa !34
  %219 = tail call float @llvm.fmuladd.f32(float %218, float %183, float %216)
  store float %219, ptr %5, align 4, !tbaa !34
  %220 = load float, ptr %174, align 4, !tbaa !34
  %221 = load float, ptr %213, align 4, !tbaa !34
  %222 = fmul float %181, %221
  %223 = tail call float @llvm.fmuladd.f32(float %220, float %177, float %222)
  %224 = load float, ptr %217, align 4, !tbaa !34
  %225 = tail call float @llvm.fmuladd.f32(float %224, float %185, float %223)
  br label %226

226:                                              ; preds = %187, %211
  %227 = phi float [ %225, %211 ], [ %210, %187 ]
  store float %227, ptr %9, align 4, !tbaa !34
  br label %228

228:                                              ; preds = %226, %152, %136
  %229 = load i16, ptr %138, align 2, !tbaa !284
  %230 = sext i16 %229 to i32
  %231 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 9
  %232 = load i32, ptr %231, align 8, !tbaa !281
  %233 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 10
  %234 = load i32, ptr %233, align 4, !tbaa !282
  %235 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11
  %236 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 12
  %237 = load float, ptr %236, align 8, !tbaa !286
  %238 = icmp eq ptr %2, null
  br i1 %238, label %270, label %239

239:                                              ; preds = %228
  %240 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !199
  %242 = icmp eq ptr %241, null
  br i1 %242, label %270, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !100
  %246 = getelementptr inbounds %struct.ParticleSystem, ptr %245, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !49
  %248 = getelementptr inbounds %struct.ParticleSettings, ptr %247, i64 0, i32 9
  %249 = load i16, ptr %248, align 4, !tbaa !283
  %250 = icmp eq i16 %249, 2
  br i1 %250, label %251, label %269

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.ParticleSettings, ptr %247, i64 0, i32 8
  %253 = load i16, ptr %252, align 2, !tbaa !284
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %251
  %256 = load float, ptr %235, align 4, !tbaa !34
  store float %256, ptr %8, align 4, !tbaa !34
  %257 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !34
  %259 = getelementptr inbounds float, ptr %8, i64 1
  store float %258, ptr %259, align 4, !tbaa !34
  %260 = getelementptr inbounds %struct.ParticleData, ptr %137, i64 0, i32 11, i64 2
  %261 = load float, ptr %260, align 4, !tbaa !34
  %262 = getelementptr inbounds float, ptr %8, i64 2
  store float %261, ptr %262, align 4, !tbaa !34
  %263 = icmp eq ptr %6, null
  br i1 %263, label %277, label %264

264:                                              ; preds = %255
  store float %256, ptr %6, align 4, !tbaa !34
  %265 = load float, ptr %257, align 4, !tbaa !34
  %266 = getelementptr inbounds float, ptr %6, i64 1
  store float %265, ptr %266, align 4, !tbaa !34
  %267 = load float, ptr %260, align 4, !tbaa !34
  %268 = getelementptr inbounds float, ptr %6, i64 2
  store float %267, ptr %268, align 4, !tbaa !34
  br label %277

269:                                              ; preds = %251, %243
  call void @psys_particle_on_dm(ptr noundef nonnull %241, i32 noundef %230, i32 noundef %232, i32 noundef %234, ptr noundef nonnull %235, float noundef %237, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef null)
  br label %277

270:                                              ; preds = %239, %228
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %271 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %271, align 4, !tbaa !34
  %272 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %272, align 4, !tbaa !34
  %273 = icmp eq ptr %6, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %275 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %275, align 4, !tbaa !34
  %276 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %276, align 4, !tbaa !34
  br label %277

277:                                              ; preds = %269, %264, %255, %274, %270, %121, %116, %107, %126, %122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @psys_get_dupli_path_transform(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [4 x float], align 16
  %13 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #17
  %19 = getelementptr inbounds %struct.ParticleCacheKey, ptr %3, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !366
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ParticleCacheKey, ptr %3, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = load float, ptr %3, align 4, !tbaa !34
  %25 = fsub float %23, %24
  store float %25, ptr %9, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %22, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %27, %29
  %31 = getelementptr inbounds float, ptr %9, i64 1
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %22, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %9, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = fmul float %30, %30
  %39 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %39)
  %41 = fcmp ogt float %40, 0x38AA95A5C0000000
  br i1 %41, label %42, label %51

42:                                               ; preds = %6
  %43 = tail call float @sqrtf(float noundef %40) #17
  %44 = fdiv float 1.000000e+00, %43
  %45 = load float, ptr %9, align 4, !tbaa !34
  %46 = fmul float %45, %44
  store float %46, ptr %9, align 4, !tbaa !34
  %47 = load float, ptr %31, align 4, !tbaa !34
  %48 = fmul float %44, %47
  store float %48, ptr %31, align 4, !tbaa !34
  %49 = load float, ptr %37, align 4, !tbaa !34
  %50 = fmul float %44, %49
  br label %52

51:                                               ; preds = %6
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %31, align 4, !tbaa !34
  br label %52

52:                                               ; preds = %42, %51
  %53 = phi float [ 0.000000e+00, %51 ], [ %50, %42 ]
  %54 = phi float [ 0.000000e+00, %51 ], [ %43, %42 ]
  store float %53, ptr %37, align 4, !tbaa !34
  %55 = icmp eq ptr %1, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %58, i64 0, i32 95
  %60 = load float, ptr %59, align 4, !tbaa !375
  %61 = fcmp une float %60, 2.000000e+00
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ParticleData, ptr %64, i64 %67
  br label %69

69:                                               ; preds = %62, %56, %52
  %70 = phi ptr [ %68, %62 ], [ null, %56 ], [ %1, %52 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %117, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %15, align 8, !tbaa !66
  %74 = getelementptr inbounds %struct.ParticleSystem, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !49
  %76 = getelementptr inbounds %struct.ParticleSettings, ptr %75, i64 0, i32 8
  %77 = load i16, ptr %76, align 2, !tbaa !284
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !281
  %81 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 10
  %82 = load i32, ptr %81, align 4, !tbaa !282
  %83 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 11
  %84 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 12
  %85 = load float, ptr %84, align 8, !tbaa !286
  %86 = icmp eq ptr %18, null
  br i1 %86, label %112, label %87

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %18, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !199
  %90 = icmp eq ptr %89, null
  br i1 %90, label %112, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %18, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !100
  %94 = getelementptr inbounds %struct.ParticleSystem, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !49
  %96 = getelementptr inbounds %struct.ParticleSettings, ptr %95, i64 0, i32 9
  %97 = load i16, ptr %96, align 4, !tbaa !283
  %98 = icmp eq i16 %97, 2
  br i1 %98, label %99, label %111

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.ParticleSettings, ptr %95, i64 0, i32 8
  %101 = load i16, ptr %100, align 2, !tbaa !284
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load float, ptr %83, align 4, !tbaa !34
  store float %104, ptr %7, align 4, !tbaa !34
  %105 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 11, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = getelementptr inbounds float, ptr %7, i64 1
  store float %106, ptr %107, align 4, !tbaa !34
  %108 = getelementptr inbounds %struct.ParticleData, ptr %70, i64 0, i32 11, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %7, i64 2
  store float %109, ptr %110, align 4, !tbaa !34
  br label %153

111:                                              ; preds = %99, %91
  call void @psys_particle_on_dm(ptr noundef nonnull %89, i32 noundef %78, i32 noundef %80, i32 noundef %82, ptr noundef nonnull %83, float noundef %85, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %153

112:                                              ; preds = %87, %72
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %113 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %113, align 4, !tbaa !34
  %114 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %114, align 4, !tbaa !34
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %115 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %115, align 4, !tbaa !34
  %116 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %116, align 4, !tbaa !34
  br label %153

117:                                              ; preds = %69
  %118 = load i32, ptr %2, align 4, !tbaa !259
  %119 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4
  %120 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 5
  %121 = load float, ptr %120, align 4, !tbaa !320
  %122 = icmp eq ptr %18, null
  br i1 %122, label %148, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %18, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !199
  %126 = icmp eq ptr %125, null
  br i1 %126, label %148, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %18, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !100
  %130 = getelementptr inbounds %struct.ParticleSystem, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !49
  %132 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 9
  %133 = load i16, ptr %132, align 4, !tbaa !283
  %134 = icmp eq i16 %133, 2
  br i1 %134, label %135, label %147

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 8
  %137 = load i16, ptr %136, align 2, !tbaa !284
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load float, ptr %119, align 4, !tbaa !34
  store float %140, ptr %7, align 4, !tbaa !34
  %141 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !34
  %143 = getelementptr inbounds float, ptr %7, i64 1
  store float %142, ptr %143, align 4, !tbaa !34
  %144 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !34
  %146 = getelementptr inbounds float, ptr %7, i64 2
  store float %145, ptr %146, align 4, !tbaa !34
  br label %153

147:                                              ; preds = %135, %127
  call void @psys_particle_on_dm(ptr noundef nonnull %125, i32 noundef 1, i32 noundef %118, i32 noundef -2, ptr noundef nonnull %119, float noundef %121, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %153

148:                                              ; preds = %123, %117
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %149 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %149, align 4, !tbaa !34
  %150 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %150, align 4, !tbaa !34
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %151 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %151, align 4, !tbaa !34
  %152 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %152, align 4, !tbaa !34
  br label %153

153:                                              ; preds = %148, %147, %139, %112, %111, %103
  %154 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !49
  %156 = getelementptr inbounds %struct.ParticleSettings, ptr %155, i64 0, i32 12
  %157 = load i16, ptr %156, align 2, !tbaa !509
  %158 = icmp eq i16 %157, 2
  br i1 %158, label %159, label %301

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %160) #17
  call void @transpose_m3(ptr noundef nonnull %11) #17
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %8) #17
  %161 = load float, ptr %8, align 4, !tbaa !34
  %162 = getelementptr inbounds float, ptr %8, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !34
  %164 = fmul float %163, %163
  %165 = call float @llvm.fmuladd.f32(float %161, float %161, float %164)
  %166 = getelementptr inbounds float, ptr %8, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !34
  %168 = call float @llvm.fmuladd.f32(float %167, float %167, float %165)
  %169 = fcmp ogt float %168, 0x38AA95A5C0000000
  br i1 %169, label %170, label %179

170:                                              ; preds = %159
  %171 = call float @sqrtf(float noundef %168) #17
  %172 = fdiv float 1.000000e+00, %171
  %173 = load float, ptr %8, align 4, !tbaa !34
  %174 = fmul float %173, %172
  store float %174, ptr %8, align 4, !tbaa !34
  %175 = load float, ptr %162, align 4, !tbaa !34
  %176 = fmul float %172, %175
  store float %176, ptr %162, align 4, !tbaa !34
  %177 = load float, ptr %166, align 4, !tbaa !34
  %178 = fmul float %172, %177
  br label %180

179:                                              ; preds = %159
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %162, align 4, !tbaa !34
  br label %180

180:                                              ; preds = %170, %179
  %181 = phi float [ 0.000000e+00, %179 ], [ %178, %170 ]
  store float %181, ptr %166, align 4, !tbaa !34
  %182 = load float, ptr %8, align 4, !tbaa !34
  %183 = load float, ptr %9, align 4, !tbaa !34
  %184 = load float, ptr %162, align 4, !tbaa !34
  %185 = load float, ptr %31, align 4, !tbaa !34
  %186 = fmul float %184, %185
  %187 = call float @llvm.fmuladd.f32(float %182, float %183, float %186)
  %188 = load float, ptr %37, align 4, !tbaa !34
  %189 = call float @llvm.fmuladd.f32(float %181, float %188, float %187)
  %190 = call float @llvm.fabs.f32(float %189)
  %191 = fpext float %190 to double
  %192 = fcmp ogt double %191, 0x3FEFFFFDE7210BE9
  br i1 %192, label %193, label %202

193:                                              ; preds = %180
  %194 = fmul float %184, 0.000000e+00
  %195 = call float @llvm.fmuladd.f32(float %182, float -1.000000e+00, float %194)
  %196 = call float @llvm.fmuladd.f32(float %181, float 0.000000e+00, float %195)
  %197 = call float @llvm.fabs.f32(float %196)
  %198 = fpext float %197 to double
  %199 = fcmp ogt double %198, 0x3FEFFFFDE7210BE9
  %200 = select i1 %199, float 0.000000e+00, float 1.000000e+00
  %201 = select i1 %199, float 1.000000e+00, float 0.000000e+00
  store float %200, ptr %8, align 4, !tbaa !34
  store float %201, ptr %162, align 4, !tbaa !34
  store float 0.000000e+00, ptr %166, align 4, !tbaa !34
  br label %202

202:                                              ; preds = %193, %180
  %203 = load float, ptr %162, align 4, !tbaa !34
  %204 = load float, ptr %166, align 4, !tbaa !34
  %205 = fneg float %204
  %206 = fmul float %185, %205
  %207 = call float @llvm.fmuladd.f32(float %203, float %188, float %206)
  store float %207, ptr %10, align 4, !tbaa !34
  %208 = load float, ptr %8, align 4, !tbaa !34
  %209 = fneg float %208
  %210 = fmul float %188, %209
  %211 = call float @llvm.fmuladd.f32(float %204, float %183, float %210)
  %212 = getelementptr inbounds float, ptr %10, i64 1
  store float %211, ptr %212, align 4, !tbaa !34
  %213 = fneg float %203
  %214 = fmul float %183, %213
  %215 = call float @llvm.fmuladd.f32(float %208, float %185, float %214)
  %216 = getelementptr inbounds float, ptr %10, i64 2
  store float %215, ptr %216, align 4, !tbaa !34
  %217 = fmul float %211, %211
  %218 = call float @llvm.fmuladd.f32(float %207, float %207, float %217)
  %219 = call float @llvm.fmuladd.f32(float %215, float %215, float %218)
  %220 = fcmp ogt float %219, 0x38AA95A5C0000000
  br i1 %220, label %221, label %230

221:                                              ; preds = %202
  %222 = call float @sqrtf(float noundef %219) #17
  %223 = fdiv float 1.000000e+00, %222
  %224 = load float, ptr %10, align 4, !tbaa !34
  %225 = fmul float %224, %223
  store float %225, ptr %10, align 4, !tbaa !34
  %226 = load float, ptr %212, align 4, !tbaa !34
  %227 = fmul float %223, %226
  store float %227, ptr %212, align 4, !tbaa !34
  %228 = load float, ptr %216, align 4, !tbaa !34
  %229 = fmul float %223, %228
  br label %231

230:                                              ; preds = %202
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %212, align 4, !tbaa !34
  br label %231

231:                                              ; preds = %221, %230
  %232 = phi float [ 0.000000e+00, %230 ], [ %229, %221 ]
  store float %232, ptr %216, align 4, !tbaa !34
  %233 = load ptr, ptr %154, align 8, !tbaa !49
  %234 = getelementptr inbounds %struct.ParticleSettings, ptr %233, i64 0, i32 78
  %235 = load float, ptr %234, align 8, !tbaa !564
  %236 = fcmp une float %235, 0.000000e+00
  br i1 %236, label %237, label %268

237:                                              ; preds = %231
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #17
  %238 = getelementptr inbounds %struct.ParticleSettings, ptr %233, i64 0, i32 80
  %239 = load float, ptr %238, align 8, !tbaa !565
  %240 = fcmp une float %239, 0.000000e+00
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !48
  %244 = ptrtoint ptr %70 to i64
  %245 = ptrtoint ptr %243 to i64
  %246 = sub i64 %244, %245
  %247 = sdiv exact i64 %246, 200
  %248 = trunc i64 %247 to i32
  %249 = add i32 %248, 20
  %250 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 23
  %251 = load i32, ptr %250, align 4, !tbaa !215
  %252 = srem i32 %251, 1024
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !38
  %256 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %253
  %257 = load i32, ptr %256, align 4, !tbaa !38
  %258 = mul i32 %249, %257
  %259 = add i32 %258, %255
  %260 = and i32 %259, 1023
  %261 = zext nneg i32 %260 to i64
  %262 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %261
  %263 = load float, ptr %262, align 4, !tbaa !34
  %264 = call float @llvm.fmuladd.f32(float %239, float %263, float %235)
  br label %265

265:                                              ; preds = %241, %237
  %266 = phi float [ %264, %241 ], [ %235, %237 ]
  %267 = fmul float %266, 0x400921FB60000000
  call void @axis_angle_to_quat(ptr noundef nonnull %12, ptr noundef nonnull %9, float noundef %267) #17
  call void @mul_qt_v3(ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #17
  br label %268

268:                                              ; preds = %265, %231
  %269 = load float, ptr %31, align 4, !tbaa !34
  %270 = load float, ptr %216, align 4, !tbaa !34
  %271 = load float, ptr %37, align 4, !tbaa !34
  %272 = load float, ptr %212, align 4, !tbaa !34
  %273 = fneg float %271
  %274 = fmul float %272, %273
  %275 = call float @llvm.fmuladd.f32(float %269, float %270, float %274)
  store float %275, ptr %8, align 4, !tbaa !34
  %276 = load float, ptr %10, align 4, !tbaa !34
  %277 = load float, ptr %9, align 4, !tbaa !34
  %278 = fneg float %277
  %279 = fmul float %270, %278
  %280 = call float @llvm.fmuladd.f32(float %271, float %276, float %279)
  store float %280, ptr %162, align 4, !tbaa !34
  %281 = fneg float %269
  %282 = fmul float %276, %281
  %283 = call float @llvm.fmuladd.f32(float %277, float %272, float %282)
  store float %283, ptr %166, align 4, !tbaa !34
  call void @unit_m4(ptr noundef %4) #17
  %284 = load float, ptr %9, align 4, !tbaa !34
  store float %284, ptr %4, align 4, !tbaa !34
  %285 = load float, ptr %31, align 4, !tbaa !34
  %286 = getelementptr inbounds float, ptr %4, i64 1
  store float %285, ptr %286, align 4, !tbaa !34
  %287 = load float, ptr %37, align 4, !tbaa !34
  %288 = getelementptr inbounds float, ptr %4, i64 2
  store float %287, ptr %288, align 4, !tbaa !34
  %289 = getelementptr inbounds [4 x float], ptr %4, i64 1
  %290 = load float, ptr %10, align 4, !tbaa !34
  store float %290, ptr %289, align 4, !tbaa !34
  %291 = load float, ptr %212, align 4, !tbaa !34
  %292 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 1
  store float %291, ptr %292, align 4, !tbaa !34
  %293 = load float, ptr %216, align 4, !tbaa !34
  %294 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 2
  store float %293, ptr %294, align 4, !tbaa !34
  %295 = getelementptr inbounds [4 x float], ptr %4, i64 2
  %296 = load float, ptr %8, align 4, !tbaa !34
  store float %296, ptr %295, align 4, !tbaa !34
  %297 = load float, ptr %162, align 4, !tbaa !34
  %298 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 1
  store float %297, ptr %298, align 4, !tbaa !34
  %299 = load float, ptr %166, align 4, !tbaa !34
  %300 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 2
  store float %299, ptr %300, align 4, !tbaa !34
  br label %303

301:                                              ; preds = %153
  %302 = getelementptr inbounds %struct.ParticleKey, ptr %70, i64 0, i32 2
  call void @quat_to_mat4(ptr noundef %4, ptr noundef nonnull %302) #17
  br label %303

303:                                              ; preds = %301, %268
  store float %54, ptr %5, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @psys_make_billboard(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #13 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  store float 1.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 1
  %12 = load float, ptr %11, align 8, !tbaa !34
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp ueq float %13, 0x7FF0000000000000
  br i1 %14, label %40, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ueq float %18, 0x7FF0000000000000
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 1, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !34
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ueq float %23, 0x7FF0000000000000
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = fcmp ueq float %28, 0x7FF0000000000000
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = fcmp ueq float %33, 0x7FF0000000000000
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fcmp ueq float %38, 0x7FF0000000000000
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %30, %25, %20, %15, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %42, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %44, align 4, !tbaa !34
  br label %457

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 13
  %47 = load i16, ptr %46, align 8, !tbaa !566
  %48 = icmp slt i16 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = sext i16 %47 to i64
  %51 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %50
  store float 1.000000e+00, ptr %51, align 4, !tbaa !34
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !568
  %55 = icmp ne i32 %54, 0
  %56 = icmp eq i16 %47, 3
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %130

58:                                               ; preds = %52
  %59 = load ptr, ptr %0, align 8, !tbaa !569
  %60 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47, i64 0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fmul float %63, %63
  %65 = tail call float @llvm.fmuladd.f32(float %61, float %61, float %64)
  %66 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47, i64 0, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %67, float %65)
  %69 = fcmp ogt float %68, 0x38AA95A5C0000000
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = tail call float @sqrtf(float noundef %68) #17
  %72 = fdiv float 1.000000e+00, %71
  %73 = load float, ptr %60, align 4, !tbaa !34
  %74 = fmul float %73, %72
  store float %74, ptr %1, align 4, !tbaa !34
  %75 = load float, ptr %62, align 4, !tbaa !34
  %76 = fmul float %72, %75
  store float %76, ptr %7, align 4, !tbaa !34
  %77 = load float, ptr %66, align 4, !tbaa !34
  %78 = fmul float %72, %77
  br label %80

79:                                               ; preds = %58
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  br label %80

80:                                               ; preds = %70, %79
  %81 = phi float [ 0.000000e+00, %79 ], [ %78, %70 ]
  store float %81, ptr %8, align 4, !tbaa !34
  %82 = load ptr, ptr %0, align 8, !tbaa !569
  %83 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 47, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 47, i64 1, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fmul float %86, %86
  %88 = tail call float @llvm.fmuladd.f32(float %84, float %84, float %87)
  %89 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 47, i64 1, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %88)
  %92 = fcmp ogt float %91, 0x38AA95A5C0000000
  br i1 %92, label %93, label %102

93:                                               ; preds = %80
  %94 = tail call float @sqrtf(float noundef %91) #17
  %95 = fdiv float 1.000000e+00, %94
  %96 = load float, ptr %83, align 4, !tbaa !34
  %97 = fmul float %96, %95
  store float %97, ptr %2, align 4, !tbaa !34
  %98 = load float, ptr %85, align 4, !tbaa !34
  %99 = fmul float %95, %98
  store float %99, ptr %9, align 4, !tbaa !34
  %100 = load float, ptr %89, align 4, !tbaa !34
  %101 = fmul float %95, %100
  br label %103

102:                                              ; preds = %80
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  br label %103

103:                                              ; preds = %93, %102
  %104 = phi float [ 0.000000e+00, %102 ], [ %101, %93 ]
  store float %104, ptr %10, align 4, !tbaa !34
  %105 = load ptr, ptr %0, align 8, !tbaa !569
  %106 = getelementptr inbounds %struct.Object, ptr %105, i64 0, i32 47, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = getelementptr inbounds %struct.Object, ptr %105, i64 0, i32 47, i64 2, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = fmul float %109, %109
  %111 = tail call float @llvm.fmuladd.f32(float %107, float %107, float %110)
  %112 = getelementptr inbounds %struct.Object, ptr %105, i64 0, i32 47, i64 2, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !34
  %114 = tail call float @llvm.fmuladd.f32(float %113, float %113, float %111)
  %115 = fcmp ogt float %114, 0x38AA95A5C0000000
  br i1 %115, label %116, label %127

116:                                              ; preds = %103
  %117 = tail call float @sqrtf(float noundef %114) #17
  %118 = fdiv float 1.000000e+00, %117
  %119 = load float, ptr %106, align 4, !tbaa !34
  %120 = fmul float %119, %118
  store float %120, ptr %3, align 4, !tbaa !34
  %121 = load float, ptr %108, align 4, !tbaa !34
  %122 = fmul float %118, %121
  %123 = getelementptr inbounds float, ptr %3, i64 1
  store float %122, ptr %123, align 4, !tbaa !34
  %124 = load float, ptr %112, align 4, !tbaa !34
  %125 = fmul float %118, %124
  %126 = getelementptr inbounds float, ptr %3, i64 2
  store float %125, ptr %126, align 4, !tbaa !34
  br label %370

127:                                              ; preds = %103
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %128 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %128, align 4, !tbaa !34
  %129 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %129, align 4, !tbaa !34
  br label %370

130:                                              ; preds = %52
  %131 = icmp eq i16 %47, 4
  br i1 %131, label %132, label %245

132:                                              ; preds = %130
  %133 = fmul float %32, %32
  %134 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %133)
  %135 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %134)
  %136 = fcmp ogt float %135, 0x38AA95A5C0000000
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = tail call float @sqrtf(float noundef %135) #17
  %139 = fdiv float 1.000000e+00, %138
  %140 = load float, ptr %26, align 4, !tbaa !34
  %141 = fmul float %140, %139
  %142 = load float, ptr %31, align 4, !tbaa !34
  %143 = fmul float %139, %142
  %144 = load float, ptr %36, align 4, !tbaa !34
  %145 = fmul float %139, %144
  br label %146

146:                                              ; preds = %132, %137
  %147 = phi float [ %145, %137 ], [ 0.000000e+00, %132 ]
  %148 = phi float [ %143, %137 ], [ 0.000000e+00, %132 ]
  %149 = phi float [ %141, %137 ], [ 0.000000e+00, %132 ]
  %150 = load ptr, ptr %0, align 8, !tbaa !569
  %151 = getelementptr inbounds %struct.Object, ptr %150, i64 0, i32 47, i64 3
  %152 = load float, ptr %151, align 4, !tbaa !34
  %153 = load float, ptr %11, align 4, !tbaa !34
  %154 = fsub float %152, %153
  store float %154, ptr %3, align 4, !tbaa !34
  %155 = getelementptr inbounds %struct.Object, ptr %150, i64 0, i32 47, i64 3, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !34
  %157 = load float, ptr %16, align 4, !tbaa !34
  %158 = fsub float %156, %157
  %159 = getelementptr inbounds float, ptr %3, i64 1
  store float %158, ptr %159, align 4, !tbaa !34
  %160 = getelementptr inbounds %struct.Object, ptr %150, i64 0, i32 47, i64 3, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !34
  %162 = load float, ptr %21, align 4, !tbaa !34
  %163 = fsub float %161, %162
  %164 = getelementptr inbounds float, ptr %3, i64 2
  store float %163, ptr %164, align 4, !tbaa !34
  %165 = load i32, ptr %53, align 8, !tbaa !568
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %146
  %168 = fmul float %148, %158
  %169 = tail call float @llvm.fmuladd.f32(float %154, float %149, float %168)
  %170 = tail call float @llvm.fmuladd.f32(float %163, float %147, float %169)
  %171 = fneg float %170
  %172 = tail call float @llvm.fmuladd.f32(float %149, float %171, float %154)
  store float %172, ptr %3, align 4, !tbaa !34
  %173 = tail call float @llvm.fmuladd.f32(float %148, float %171, float %158)
  store float %173, ptr %159, align 4, !tbaa !34
  %174 = tail call float @llvm.fmuladd.f32(float %147, float %171, float %163)
  store float %174, ptr %164, align 4, !tbaa !34
  br label %175

175:                                              ; preds = %167, %146
  %176 = load float, ptr %3, align 4, !tbaa !34
  %177 = load float, ptr %159, align 4, !tbaa !34
  %178 = fmul float %177, %177
  %179 = tail call float @llvm.fmuladd.f32(float %176, float %176, float %178)
  %180 = load float, ptr %164, align 4, !tbaa !34
  %181 = tail call float @llvm.fmuladd.f32(float %180, float %180, float %179)
  %182 = fcmp ogt float %181, 0x38AA95A5C0000000
  br i1 %182, label %183, label %192

183:                                              ; preds = %175
  %184 = tail call float @sqrtf(float noundef %181) #17
  %185 = fdiv float 1.000000e+00, %184
  %186 = load float, ptr %3, align 4, !tbaa !34
  %187 = fmul float %186, %185
  store float %187, ptr %3, align 4, !tbaa !34
  %188 = load float, ptr %159, align 4, !tbaa !34
  %189 = fmul float %185, %188
  store float %189, ptr %159, align 4, !tbaa !34
  %190 = load float, ptr %164, align 4, !tbaa !34
  %191 = fmul float %185, %190
  br label %193

192:                                              ; preds = %175
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %159, align 4, !tbaa !34
  br label %193

193:                                              ; preds = %183, %192
  %194 = phi float [ 0.000000e+00, %192 ], [ %191, %183 ]
  store float %194, ptr %164, align 4, !tbaa !34
  %195 = load float, ptr %159, align 4, !tbaa !34
  %196 = fneg float %147
  %197 = fmul float %195, %196
  %198 = tail call float @llvm.fmuladd.f32(float %148, float %194, float %197)
  store float %198, ptr %1, align 4, !tbaa !34
  %199 = load float, ptr %3, align 4, !tbaa !34
  %200 = load float, ptr %164, align 4, !tbaa !34
  %201 = fneg float %149
  %202 = fmul float %200, %201
  %203 = tail call float @llvm.fmuladd.f32(float %147, float %199, float %202)
  store float %203, ptr %7, align 4, !tbaa !34
  %204 = load float, ptr %159, align 4, !tbaa !34
  %205 = load float, ptr %3, align 4, !tbaa !34
  %206 = fneg float %148
  %207 = fmul float %205, %206
  %208 = tail call float @llvm.fmuladd.f32(float %149, float %204, float %207)
  store float %208, ptr %8, align 4, !tbaa !34
  %209 = fmul float %203, %203
  %210 = tail call float @llvm.fmuladd.f32(float %198, float %198, float %209)
  %211 = tail call float @llvm.fmuladd.f32(float %208, float %208, float %210)
  %212 = fcmp ogt float %211, 0x38AA95A5C0000000
  br i1 %212, label %213, label %222

213:                                              ; preds = %193
  %214 = tail call float @sqrtf(float noundef %211) #17
  %215 = fdiv float 1.000000e+00, %214
  %216 = load float, ptr %1, align 4, !tbaa !34
  %217 = fmul float %216, %215
  store float %217, ptr %1, align 4, !tbaa !34
  %218 = load float, ptr %7, align 4, !tbaa !34
  %219 = fmul float %215, %218
  store float %219, ptr %7, align 4, !tbaa !34
  %220 = load float, ptr %8, align 4, !tbaa !34
  %221 = fmul float %215, %220
  br label %223

222:                                              ; preds = %193
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  br label %223

223:                                              ; preds = %213, %222
  %224 = phi float [ 0.000000e+00, %222 ], [ %221, %213 ]
  store float %224, ptr %8, align 4, !tbaa !34
  %225 = load float, ptr %159, align 4, !tbaa !34
  %226 = load float, ptr %164, align 4, !tbaa !34
  %227 = load float, ptr %7, align 4, !tbaa !34
  %228 = fneg float %226
  %229 = fmul float %227, %228
  %230 = tail call float @llvm.fmuladd.f32(float %225, float %224, float %229)
  store float %230, ptr %2, align 4, !tbaa !34
  %231 = load float, ptr %164, align 4, !tbaa !34
  %232 = load float, ptr %1, align 4, !tbaa !34
  %233 = load float, ptr %3, align 4, !tbaa !34
  %234 = load float, ptr %8, align 4, !tbaa !34
  %235 = fneg float %233
  %236 = fmul float %234, %235
  %237 = tail call float @llvm.fmuladd.f32(float %231, float %232, float %236)
  store float %237, ptr %9, align 4, !tbaa !34
  %238 = load float, ptr %3, align 4, !tbaa !34
  %239 = load float, ptr %7, align 4, !tbaa !34
  %240 = load float, ptr %159, align 4, !tbaa !34
  %241 = load float, ptr %1, align 4, !tbaa !34
  %242 = fneg float %240
  %243 = fmul float %241, %242
  %244 = tail call float @llvm.fmuladd.f32(float %238, float %239, float %243)
  store float %244, ptr %10, align 4, !tbaa !34
  br label %370

245:                                              ; preds = %130
  %246 = load ptr, ptr %0, align 8, !tbaa !569
  %247 = getelementptr inbounds %struct.Object, ptr %246, i64 0, i32 47, i64 3
  %248 = load float, ptr %247, align 4, !tbaa !34
  %249 = fsub float %248, %12
  store float %249, ptr %3, align 4, !tbaa !34
  %250 = getelementptr inbounds %struct.Object, ptr %246, i64 0, i32 47, i64 3, i64 1
  %251 = load float, ptr %250, align 4, !tbaa !34
  %252 = load float, ptr %16, align 4, !tbaa !34
  %253 = fsub float %251, %252
  %254 = getelementptr inbounds float, ptr %3, i64 1
  store float %253, ptr %254, align 4, !tbaa !34
  %255 = getelementptr inbounds %struct.Object, ptr %246, i64 0, i32 47, i64 3, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !34
  %257 = load float, ptr %21, align 4, !tbaa !34
  %258 = fsub float %256, %257
  %259 = getelementptr inbounds float, ptr %3, i64 2
  store float %258, ptr %259, align 4, !tbaa !34
  br i1 %55, label %260, label %263

260:                                              ; preds = %245
  %261 = sext i16 %47 to i64
  %262 = getelementptr inbounds float, ptr %3, i64 %261
  store float 0.000000e+00, ptr %262, align 4, !tbaa !34
  br label %263

263:                                              ; preds = %260, %245
  %264 = load float, ptr %3, align 4, !tbaa !34
  %265 = load float, ptr %254, align 4, !tbaa !34
  %266 = fmul float %265, %265
  %267 = tail call float @llvm.fmuladd.f32(float %264, float %264, float %266)
  %268 = load float, ptr %259, align 4, !tbaa !34
  %269 = tail call float @llvm.fmuladd.f32(float %268, float %268, float %267)
  %270 = fcmp ogt float %269, 0x38AA95A5C0000000
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = tail call float @sqrtf(float noundef %269) #17
  %273 = fdiv float 1.000000e+00, %272
  %274 = load float, ptr %3, align 4, !tbaa !34
  %275 = fmul float %274, %273
  store float %275, ptr %3, align 4, !tbaa !34
  %276 = load float, ptr %254, align 4, !tbaa !34
  %277 = fmul float %273, %276
  store float %277, ptr %254, align 4, !tbaa !34
  %278 = load float, ptr %259, align 4, !tbaa !34
  %279 = fmul float %273, %278
  br label %281

280:                                              ; preds = %263
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %254, align 4, !tbaa !34
  br label %281

281:                                              ; preds = %271, %280
  %282 = phi float [ 0.000000e+00, %280 ], [ %279, %271 ]
  store float %282, ptr %259, align 4, !tbaa !34
  %283 = load i16, ptr %46, align 8, !tbaa !566
  %284 = icmp slt i16 %283, 3
  br i1 %284, label %285, label %305

285:                                              ; preds = %281
  %286 = getelementptr inbounds float, ptr %6, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !34
  %288 = getelementptr inbounds float, ptr %6, i64 2
  %289 = load float, ptr %288, align 4, !tbaa !34
  %290 = load float, ptr %254, align 4, !tbaa !34
  %291 = fneg float %289
  %292 = fmul float %290, %291
  %293 = tail call float @llvm.fmuladd.f32(float %287, float %282, float %292)
  store float %293, ptr %1, align 4, !tbaa !34
  %294 = load float, ptr %3, align 4, !tbaa !34
  %295 = load float, ptr %6, align 4, !tbaa !34
  %296 = load float, ptr %259, align 4, !tbaa !34
  %297 = fneg float %295
  %298 = fmul float %296, %297
  %299 = tail call float @llvm.fmuladd.f32(float %289, float %294, float %298)
  store float %299, ptr %7, align 4, !tbaa !34
  %300 = load float, ptr %254, align 4, !tbaa !34
  %301 = load float, ptr %3, align 4, !tbaa !34
  %302 = fneg float %287
  %303 = fmul float %301, %302
  %304 = tail call float @llvm.fmuladd.f32(float %295, float %300, float %303)
  br label %330

305:                                              ; preds = %281
  %306 = load ptr, ptr %0, align 8, !tbaa !569
  %307 = getelementptr inbounds %struct.Object, ptr %306, i64 0, i32 47, i64 1
  %308 = getelementptr inbounds %struct.Object, ptr %306, i64 0, i32 47, i64 1, i64 1
  %309 = load float, ptr %308, align 4, !tbaa !34
  %310 = getelementptr inbounds %struct.Object, ptr %306, i64 0, i32 47, i64 1, i64 2
  %311 = load float, ptr %310, align 4, !tbaa !34
  %312 = load float, ptr %254, align 4, !tbaa !34
  %313 = fneg float %311
  %314 = fmul float %312, %313
  %315 = tail call float @llvm.fmuladd.f32(float %309, float %282, float %314)
  store float %315, ptr %1, align 4, !tbaa !34
  %316 = load float, ptr %310, align 4, !tbaa !34
  %317 = load float, ptr %3, align 4, !tbaa !34
  %318 = load float, ptr %307, align 4, !tbaa !34
  %319 = load float, ptr %259, align 4, !tbaa !34
  %320 = fneg float %318
  %321 = fmul float %319, %320
  %322 = tail call float @llvm.fmuladd.f32(float %316, float %317, float %321)
  store float %322, ptr %7, align 4, !tbaa !34
  %323 = load float, ptr %307, align 4, !tbaa !34
  %324 = load float, ptr %254, align 4, !tbaa !34
  %325 = load float, ptr %308, align 4, !tbaa !34
  %326 = load float, ptr %3, align 4, !tbaa !34
  %327 = fneg float %325
  %328 = fmul float %326, %327
  %329 = tail call float @llvm.fmuladd.f32(float %323, float %324, float %328)
  br label %330

330:                                              ; preds = %305, %285
  %331 = phi float [ %329, %305 ], [ %304, %285 ]
  store float %331, ptr %8, align 4, !tbaa !34
  %332 = load float, ptr %1, align 4, !tbaa !34
  %333 = load float, ptr %7, align 4, !tbaa !34
  %334 = fmul float %333, %333
  %335 = tail call float @llvm.fmuladd.f32(float %332, float %332, float %334)
  %336 = tail call float @llvm.fmuladd.f32(float %331, float %331, float %335)
  %337 = fcmp ogt float %336, 0x38AA95A5C0000000
  br i1 %337, label %338, label %347

338:                                              ; preds = %330
  %339 = tail call float @sqrtf(float noundef %336) #17
  %340 = fdiv float 1.000000e+00, %339
  %341 = load float, ptr %1, align 4, !tbaa !34
  %342 = fmul float %341, %340
  store float %342, ptr %1, align 4, !tbaa !34
  %343 = load float, ptr %7, align 4, !tbaa !34
  %344 = fmul float %340, %343
  store float %344, ptr %7, align 4, !tbaa !34
  %345 = load float, ptr %8, align 4, !tbaa !34
  %346 = fmul float %340, %345
  br label %348

347:                                              ; preds = %330
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  br label %348

348:                                              ; preds = %338, %347
  %349 = phi float [ 0.000000e+00, %347 ], [ %346, %338 ]
  store float %349, ptr %8, align 4, !tbaa !34
  %350 = load float, ptr %254, align 4, !tbaa !34
  %351 = load float, ptr %259, align 4, !tbaa !34
  %352 = load float, ptr %7, align 4, !tbaa !34
  %353 = fneg float %351
  %354 = fmul float %352, %353
  %355 = tail call float @llvm.fmuladd.f32(float %350, float %349, float %354)
  store float %355, ptr %2, align 4, !tbaa !34
  %356 = load float, ptr %259, align 4, !tbaa !34
  %357 = load float, ptr %1, align 4, !tbaa !34
  %358 = load float, ptr %3, align 4, !tbaa !34
  %359 = load float, ptr %8, align 4, !tbaa !34
  %360 = fneg float %358
  %361 = fmul float %359, %360
  %362 = tail call float @llvm.fmuladd.f32(float %356, float %357, float %361)
  store float %362, ptr %9, align 4, !tbaa !34
  %363 = load float, ptr %3, align 4, !tbaa !34
  %364 = load float, ptr %7, align 4, !tbaa !34
  %365 = load float, ptr %254, align 4, !tbaa !34
  %366 = load float, ptr %1, align 4, !tbaa !34
  %367 = fneg float %365
  %368 = fmul float %366, %367
  %369 = tail call float @llvm.fmuladd.f32(float %363, float %364, float %368)
  store float %369, ptr %10, align 4, !tbaa !34
  br label %370

370:                                              ; preds = %127, %116, %223, %348
  %371 = load float, ptr %1, align 4, !tbaa !34
  %372 = load float, ptr %7, align 4, !tbaa !34
  %373 = load float, ptr %8, align 4, !tbaa !34
  %374 = load float, ptr %2, align 4, !tbaa !34
  %375 = load float, ptr %9, align 4, !tbaa !34
  %376 = load float, ptr %10, align 4, !tbaa !34
  %377 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 5
  %378 = load float, ptr %377, align 8, !tbaa !570
  %379 = fmul float %378, 0x400921FB60000000
  %380 = tail call float @cosf(float noundef %379) #17
  %381 = load float, ptr %1, align 4, !tbaa !34
  %382 = fmul float %380, %381
  store float %382, ptr %1, align 4, !tbaa !34
  %383 = load float, ptr %7, align 4, !tbaa !34
  %384 = fmul float %380, %383
  store float %384, ptr %7, align 4, !tbaa !34
  %385 = load float, ptr %8, align 4, !tbaa !34
  %386 = fmul float %380, %385
  store float %386, ptr %8, align 4, !tbaa !34
  %387 = load float, ptr %377, align 8, !tbaa !570
  %388 = fmul float %387, 0x400921FB60000000
  %389 = tail call float @sinf(float noundef %388) #17
  %390 = fmul float %374, %389
  %391 = fmul float %375, %389
  %392 = fmul float %376, %389
  %393 = load float, ptr %1, align 4, !tbaa !34
  %394 = fadd float %393, %390
  store float %394, ptr %1, align 4, !tbaa !34
  %395 = load float, ptr %7, align 4, !tbaa !34
  %396 = fadd float %391, %395
  store float %396, ptr %7, align 4, !tbaa !34
  %397 = load float, ptr %8, align 4, !tbaa !34
  %398 = fadd float %392, %397
  store float %398, ptr %8, align 4, !tbaa !34
  %399 = load float, ptr %377, align 8, !tbaa !570
  %400 = fmul float %399, 0x400921FB60000000
  %401 = tail call float @cosf(float noundef %400) #17
  %402 = load float, ptr %2, align 4, !tbaa !34
  %403 = fmul float %401, %402
  store float %403, ptr %2, align 4, !tbaa !34
  %404 = load float, ptr %9, align 4, !tbaa !34
  %405 = fmul float %401, %404
  store float %405, ptr %9, align 4, !tbaa !34
  %406 = load float, ptr %10, align 4, !tbaa !34
  %407 = fmul float %401, %406
  store float %407, ptr %10, align 4, !tbaa !34
  %408 = load float, ptr %377, align 8, !tbaa !570
  %409 = fmul float %408, 0x400921FB60000000
  %410 = tail call float @sinf(float noundef %409) #17
  %411 = load float, ptr %2, align 4, !tbaa !34
  %412 = fmul float %371, %410
  %413 = fsub float %411, %412
  store float %413, ptr %2, align 4, !tbaa !34
  %414 = load float, ptr %9, align 4, !tbaa !34
  %415 = fmul float %372, %410
  %416 = fsub float %414, %415
  store float %416, ptr %9, align 4, !tbaa !34
  %417 = load float, ptr %10, align 4, !tbaa !34
  %418 = fmul float %373, %410
  %419 = fsub float %417, %418
  store float %419, ptr %10, align 4, !tbaa !34
  %420 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 4
  %421 = load float, ptr %420, align 8, !tbaa !34
  %422 = load float, ptr %1, align 4, !tbaa !34
  %423 = fmul float %421, %422
  store float %423, ptr %1, align 4, !tbaa !34
  %424 = load float, ptr %7, align 4, !tbaa !34
  %425 = fmul float %421, %424
  store float %425, ptr %7, align 4, !tbaa !34
  %426 = load float, ptr %8, align 4, !tbaa !34
  %427 = fmul float %421, %426
  store float %427, ptr %8, align 4, !tbaa !34
  %428 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 4, i64 1
  %429 = load float, ptr %428, align 4, !tbaa !34
  %430 = load float, ptr %2, align 4, !tbaa !34
  %431 = fmul float %429, %430
  store float %431, ptr %2, align 4, !tbaa !34
  %432 = load float, ptr %9, align 4, !tbaa !34
  %433 = fmul float %429, %432
  store float %433, ptr %9, align 4, !tbaa !34
  %434 = load float, ptr %10, align 4, !tbaa !34
  %435 = fmul float %429, %434
  store float %435, ptr %10, align 4, !tbaa !34
  %436 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 3
  %437 = load float, ptr %436, align 8, !tbaa !34
  %438 = load float, ptr %11, align 4, !tbaa !34
  %439 = load float, ptr %1, align 4, !tbaa !34
  %440 = tail call float @llvm.fmuladd.f32(float %439, float %437, float %438)
  store float %440, ptr %4, align 4, !tbaa !34
  %441 = load float, ptr %16, align 4, !tbaa !34
  %442 = load float, ptr %7, align 4, !tbaa !34
  %443 = tail call float @llvm.fmuladd.f32(float %442, float %437, float %441)
  %444 = getelementptr inbounds float, ptr %4, i64 1
  store float %443, ptr %444, align 4, !tbaa !34
  %445 = load float, ptr %21, align 4, !tbaa !34
  %446 = load float, ptr %8, align 4, !tbaa !34
  %447 = tail call float @llvm.fmuladd.f32(float %446, float %437, float %445)
  %448 = getelementptr inbounds float, ptr %4, i64 2
  store float %447, ptr %448, align 4, !tbaa !34
  %449 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 3, i64 1
  %450 = load float, ptr %449, align 4, !tbaa !34
  %451 = load float, ptr %2, align 4, !tbaa !34
  %452 = tail call float @llvm.fmuladd.f32(float %451, float %450, float %440)
  store float %452, ptr %4, align 4, !tbaa !34
  %453 = load float, ptr %9, align 4, !tbaa !34
  %454 = tail call float @llvm.fmuladd.f32(float %453, float %450, float %443)
  store float %454, ptr %444, align 4, !tbaa !34
  %455 = load float, ptr %10, align 4, !tbaa !34
  %456 = tail call float @llvm.fmuladd.f32(float %455, float %450, float %447)
  store float %456, ptr %448, align 4, !tbaa !34
  br label %457

457:                                              ; preds = %370, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @psys_apply_hair_lattice(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca %struct.ParticleSimulationData, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %3, %23
  %15 = phi ptr [ %24, %23 ], [ %12, %3 ]
  %16 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !98
  %18 = icmp eq i32 %17, 19
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %14
  %24 = load ptr, ptr %15, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !102

26:                                               ; preds = %19, %23, %3
  %27 = phi ptr [ null, %3 ], [ %15, %19 ], [ null, %23 ]
  %28 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 3
  store ptr %27, ptr %28, align 8, !tbaa !285
  %29 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %6)
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 15
  store ptr %29, ptr %30, align 8, !tbaa !343
  %31 = icmp eq ptr %29, null
  br i1 %31, label %94, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %27, i64 0, i32 2
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %41 = getelementptr inbounds [4 x float], ptr %5, i64 3
  %42 = getelementptr inbounds float, ptr %4, i64 1
  %43 = getelementptr inbounds [4 x float], ptr %5, i64 3, i64 1
  %44 = getelementptr inbounds float, ptr %4, i64 2
  %45 = getelementptr inbounds [4 x float], ptr %5, i64 3, i64 2
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %47

47:                                               ; preds = %38, %84
  %48 = phi i32 [ 0, %38 ], [ %85, %84 ]
  %49 = phi ptr [ %34, %38 ], [ %86, %84 ]
  %50 = load ptr, ptr %39, align 8, !tbaa !199
  %51 = load ptr, ptr %40, align 8, !tbaa !49
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %51, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %54 = icmp eq ptr %50, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  call void @unit_m4(ptr noundef nonnull %5) #17
  br label %68

56:                                               ; preds = %47
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %50, ptr noundef %49, ptr noundef nonnull %5, i32 noundef 0)
  %57 = sext i16 %53 to i32
  %58 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !281
  %60 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 0, i32 10
  %61 = load i32, ptr %60, align 4, !tbaa !282
  %62 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 0, i32 11
  %63 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 0, i32 12
  %64 = load float, ptr %63, align 8, !tbaa !286
  call void @psys_particle_on_dm(ptr noundef nonnull %50, i32 noundef %57, i32 noundef %59, i32 noundef %61, ptr noundef nonnull %62, float noundef %64, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %65 = load float, ptr %4, align 4, !tbaa !34
  store float %65, ptr %41, align 16, !tbaa !34
  %66 = load float, ptr %42, align 4, !tbaa !34
  store float %66, ptr %43, align 4, !tbaa !34
  %67 = load float, ptr %44, align 4, !tbaa !34
  store float %67, ptr %45, align 8, !tbaa !34
  br label %68

68:                                               ; preds = %55, %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %46, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  %69 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %70 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !146
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !145
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi i32 [ %80, %76 ], [ 0, %73 ]
  %78 = phi ptr [ %81, %76 ], [ %75, %73 ]
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %78) #17
  %79 = load ptr, ptr %30, align 8, !tbaa !343
  call void @calc_latt_deform(ptr noundef %79, ptr noundef %78, float noundef 1.000000e+00) #17
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef %78) #17
  %80 = add nuw nsw i32 %77, 1
  %81 = getelementptr inbounds %struct.HairKey, ptr %78, i64 1
  %82 = load i32, ptr %70, align 8, !tbaa !146
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %76, label %84, !llvm.loop !571

84:                                               ; preds = %76, %68
  %85 = add nuw nsw i32 %48, 1
  %86 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 1
  %87 = load i32, ptr %35, align 8, !tbaa !43
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %47, label %89, !llvm.loop !572

89:                                               ; preds = %84, %32
  %90 = load ptr, ptr %30, align 8, !tbaa !343
  call void @end_latt_deform(ptr noundef %90) #17
  store ptr null, ptr %30, align 8, !tbaa !343
  %91 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %92 = load i32, ptr %91, align 4, !tbaa !60
  %93 = or i32 %92, 2048
  store i32 %93, ptr %91, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  br label %94

94:                                               ; preds = %89, %26
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #6

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #2

declare void @interp_v4_v4v4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_strand_normal(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %8 = load i32, ptr %7, align 4, !tbaa !573
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 66
  %12 = load float, ptr %11, align 8, !tbaa !577
  %13 = fcmp ogt float %12, 0.000000e+00
  br i1 %13, label %14, label %122

14:                                               ; preds = %10
  br i1 %9, label %76, label %15

15:                                               ; preds = %4, %14
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %3, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fneg float %21
  %25 = fmul float %23, %24
  %26 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %25)
  %27 = load float, ptr %3, align 4, !tbaa !34
  %28 = load float, ptr %1, align 4, !tbaa !34
  %29 = fneg float %28
  %30 = fmul float %19, %29
  %31 = tail call float @llvm.fmuladd.f32(float %21, float %27, float %30)
  %32 = fneg float %17
  %33 = fmul float %27, %32
  %34 = tail call float @llvm.fmuladd.f32(float %28, float %23, float %33)
  %35 = fneg float %19
  %36 = fmul float %31, %35
  %37 = tail call float @llvm.fmuladd.f32(float %23, float %34, float %36)
  store float %37, ptr %5, align 4, !tbaa !34
  %38 = fneg float %27
  %39 = fmul float %34, %38
  %40 = tail call float @llvm.fmuladd.f32(float %19, float %26, float %39)
  %41 = getelementptr inbounds float, ptr %5, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = fneg float %23
  %43 = fmul float %26, %42
  %44 = tail call float @llvm.fmuladd.f32(float %27, float %31, float %43)
  %45 = getelementptr inbounds float, ptr %5, i64 2
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = fmul float %17, %40
  %47 = tail call float @llvm.fmuladd.f32(float %37, float %28, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %44, float %21, float %47)
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %53, label %50

50:                                               ; preds = %15
  %51 = fcmp ogt float %48, 1.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %15, %50, %52
  %54 = phi float [ 1.000000e+00, %52 ], [ %48, %50 ], [ 0.000000e+00, %15 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %1, float noundef %54) #17
  %55 = load float, ptr %6, align 4, !tbaa !34
  %56 = getelementptr inbounds float, ptr %6, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fmul float %57, %57
  %59 = call float @llvm.fmuladd.f32(float %55, float %55, float %58)
  %60 = getelementptr inbounds float, ptr %6, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = call float @llvm.fmuladd.f32(float %61, float %61, float %59)
  %63 = fcmp ogt float %62, 0x38AA95A5C0000000
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = call float @sqrtf(float noundef %62) #17
  %66 = fdiv float 1.000000e+00, %65
  %67 = load float, ptr %6, align 4, !tbaa !34
  %68 = fmul float %67, %66
  store float %68, ptr %6, align 4, !tbaa !34
  %69 = load float, ptr %56, align 4, !tbaa !34
  %70 = fmul float %66, %69
  store float %70, ptr %56, align 4, !tbaa !34
  %71 = load float, ptr %60, align 4, !tbaa !34
  %72 = fmul float %66, %71
  br label %74

73:                                               ; preds = %53
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  store float 0.000000e+00, ptr %56, align 4, !tbaa !34
  br label %74

74:                                               ; preds = %64, %73
  %75 = phi float [ 0.000000e+00, %73 ], [ %72, %64 ]
  store float %75, ptr %60, align 4, !tbaa !34
  br label %84

76:                                               ; preds = %14
  %77 = load float, ptr %3, align 4, !tbaa !34
  store float %77, ptr %6, align 4, !tbaa !34
  %78 = getelementptr inbounds float, ptr %3, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds float, ptr %6, i64 1
  store float %79, ptr %80, align 4, !tbaa !34
  %81 = getelementptr inbounds float, ptr %3, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = getelementptr inbounds float, ptr %6, i64 2
  store float %82, ptr %83, align 4, !tbaa !34
  br label %84

84:                                               ; preds = %76, %74
  %85 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 66
  %86 = load float, ptr %85, align 8, !tbaa !577
  %87 = fcmp ogt float %86, 0.000000e+00
  %88 = fcmp ogt float %86, %2
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = fsub float %86, %2
  %92 = fdiv float %91, %86
  call void @interp_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %1, float noundef %92) #17
  %93 = load float, ptr %6, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %6, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = fmul float %95, %95
  %97 = call float @llvm.fmuladd.f32(float %93, float %93, float %96)
  %98 = getelementptr inbounds float, ptr %6, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = call float @llvm.fmuladd.f32(float %99, float %99, float %97)
  %101 = fcmp ogt float %100, 0x38AA95A5C0000000
  br i1 %101, label %102, label %111

102:                                              ; preds = %90
  %103 = call float @sqrtf(float noundef %100) #17
  %104 = fdiv float 1.000000e+00, %103
  %105 = load float, ptr %6, align 4, !tbaa !34
  %106 = fmul float %105, %104
  store float %106, ptr %6, align 4, !tbaa !34
  %107 = load float, ptr %94, align 4, !tbaa !34
  %108 = fmul float %104, %107
  store float %108, ptr %94, align 4, !tbaa !34
  %109 = load float, ptr %98, align 4, !tbaa !34
  %110 = fmul float %104, %109
  br label %112

111:                                              ; preds = %90
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  store float 0.000000e+00, ptr %94, align 4, !tbaa !34
  br label %112

112:                                              ; preds = %102, %111
  %113 = phi float [ 0.000000e+00, %111 ], [ %110, %102 ]
  store float %113, ptr %98, align 4, !tbaa !34
  br label %114

114:                                              ; preds = %112, %84
  %115 = load float, ptr %6, align 4, !tbaa !34
  store float %115, ptr %3, align 4, !tbaa !34
  %116 = getelementptr inbounds float, ptr %6, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !34
  %118 = getelementptr inbounds float, ptr %3, i64 1
  store float %117, ptr %118, align 4, !tbaa !34
  %119 = getelementptr inbounds float, ptr %6, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !34
  %121 = getelementptr inbounds float, ptr %3, i64 2
  store float %120, ptr %121, align 4, !tbaa !34
  br label %122

122:                                              ; preds = %10, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  ret void
}

declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_ptcache_make_particle_key(ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #2

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_rough(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = fcmp une float %5, 0.000000e+00
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = load float, ptr %0, align 4, !tbaa !34
  %11 = fadd float %10, -1.500000e+00
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fadd float %11, %13
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fmul float %5, 1.500000e+00
  %20 = fcmp olt float %18, %19
  br i1 %20, label %70, label %21

21:                                               ; preds = %9, %7
  %22 = load float, ptr %0, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %22, %2
  %28 = fmul float %24, %2
  %29 = fmul float %26, %2
  %30 = tail call float @BLI_gTurbulence(float noundef %4, float noundef %27, float noundef %28, float noundef %29, i32 noundef 2, i32 noundef 0, i32 noundef 2) #17
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 2.000000e+00, float -1.000000e+00)
  %32 = tail call float @BLI_gTurbulence(float noundef %4, float noundef %28, float noundef %29, float noundef %27, i32 noundef 2, i32 noundef 0, i32 noundef 2) #17
  %33 = tail call float @llvm.fmuladd.f32(float %32, float 2.000000e+00, float -1.000000e+00)
  %34 = tail call float @BLI_gTurbulence(float noundef %4, float noundef %29, float noundef %27, float noundef %28, i32 noundef 2, i32 noundef 0, i32 noundef 2) #17
  %35 = tail call float @llvm.fmuladd.f32(float %34, float 2.000000e+00, float -1.000000e+00)
  %36 = fmul float %31, %3
  %37 = load float, ptr %1, align 4, !tbaa !34
  %38 = load float, ptr %6, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %37, float %36, float %38)
  store float %39, ptr %6, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %6, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %36, float %43)
  store float %44, ptr %42, align 4, !tbaa !34
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %6, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %36, float %48)
  store float %49, ptr %47, align 4, !tbaa !34
  %50 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %51 = fmul float %33, %3
  %52 = load float, ptr %50, align 4, !tbaa !34
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %51, float %39)
  store float %53, ptr %6, align 4, !tbaa !34
  %54 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %51, float %44)
  store float %56, ptr %42, align 4, !tbaa !34
  %57 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %51, float %49)
  store float %59, ptr %47, align 4, !tbaa !34
  %60 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %61 = fmul float %35, %3
  %62 = load float, ptr %60, align 4, !tbaa !34
  %63 = tail call float @llvm.fmuladd.f32(float %62, float %61, float %53)
  store float %63, ptr %6, align 4, !tbaa !34
  %64 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %61, float %56)
  store float %66, ptr %42, align 4, !tbaa !34
  %67 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %61, float %59)
  store float %69, ptr %47, align 4, !tbaa !34
  br label %70

70:                                               ; preds = %9, %21
  ret void
}

declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree willreturn }
attributes #17 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !39, i64 320}
!44 = !{!"ParticleSystem", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !46, i64 72, !46, i64 88, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !46, i64 152, !36, i64 168, !36, i64 232, !35, i64 296, !35, i64 300, !35, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !47, i64 340, !47, i64 342, !47, i64 344, !47, i64 346, !36, i64 348, !36, i64 540, !47, i64 564, !47, i64 566, !45, i64 568, !45, i64 576, !46, i64 584, !45, i64 600, !45, i64 608, !39, i64 616, !39, i64 620, !45, i64 624, !45, i64 632, !45, i64 640, !35, i64 648, !35, i64 652}
!45 = !{!"any pointer", !36, i64 0}
!46 = !{!"ListBase", !45, i64 0, !45, i64 8}
!47 = !{!"short", !36, i64 0}
!48 = !{!44, !45, i64 24}
!49 = !{!44, !45, i64 16}
!50 = !{!51, !47, i64 196}
!51 = !{!"ParticleData", !52, i64 0, !52, i64 56, !45, i64 112, !45, i64 120, !45, i64 128, !39, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !39, i64 152, !39, i64 156, !36, i64 160, !35, i64 176, !35, i64 180, !35, i64 184, !39, i64 188, !39, i64 192, !47, i64 196, !47, i64 198}
!52 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !35, i64 52}
!53 = !{!51, !47, i64 198}
!54 = !{!55, !39, i64 152}
!55 = !{!"ParticleSettings", !56, i64 0, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !39, i64 152, !39, i64 156, !47, i64 160, !47, i64 162, !47, i64 164, !47, i64 166, !47, i64 168, !47, i64 170, !47, i64 172, !47, i64 174, !39, i64 176, !39, i64 180, !47, i64 184, !47, i64 186, !47, i64 188, !47, i64 190, !47, i64 192, !47, i64 194, !47, i64 196, !47, i64 198, !47, i64 200, !47, i64 202, !47, i64 204, !47, i64 206, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !35, i64 232, !35, i64 236, !36, i64 240, !36, i64 248, !35, i64 256, !35, i64 260, !35, i64 264, !47, i64 268, !47, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !36, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !47, i64 340, !36, i64 342, !35, i64 348, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !36, i64 376, !35, i64 388, !35, i64 392, !35, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !36, i64 416, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !39, i64 444, !39, i64 448, !35, i64 452, !35, i64 456, !35, i64 460, !35, i64 464, !35, i64 468, !35, i64 472, !35, i64 476, !35, i64 480, !35, i64 484, !35, i64 488, !35, i64 492, !35, i64 496, !35, i64 500, !35, i64 504, !35, i64 508, !35, i64 512, !35, i64 516, !35, i64 520, !35, i64 524, !35, i64 528, !35, i64 532, !35, i64 536, !35, i64 540, !35, i64 544, !35, i64 548, !36, i64 552, !35, i64 560, !35, i64 564, !39, i64 568, !39, i64 572, !36, i64 576, !45, i64 720, !46, i64 728, !45, i64 744, !45, i64 752, !45, i64 760, !45, i64 768, !45, i64 776, !45, i64 784, !47, i64 792, !36, i64 794}
!56 = !{!"ID", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !36, i64 32, !47, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !45, i64 112}
!57 = distinct !{!57, !41, !42}
!58 = distinct !{!58, !41, !42}
!59 = !{!45, !45, i64 0}
!60 = !{!44, !39, i64 316}
!61 = distinct !{!61, !41, !42}
!62 = distinct !{!62, !41, !42}
!63 = distinct !{!63, !41, !42}
!64 = !{!65, !45, i64 0}
!65 = !{!"ParticleSimulationData", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !35, i64 40}
!66 = !{!65, !45, i64 16}
!67 = !{!68, !45, i64 168}
!68 = !{!"Scene", !56, i64 0, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !46, i64 152, !45, i64 168, !45, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !69, i64 280, !78, i64 4264, !46, i64 4296, !46, i64 4312, !45, i64 4328, !45, i64 4336, !45, i64 4344, !45, i64 4352, !45, i64 4360, !45, i64 4368, !47, i64 4376, !47, i64 4378, !39, i64 4380, !46, i64 4384, !79, i64 4400, !80, i64 4416, !83, i64 4600, !45, i64 4608, !84, i64 4616, !45, i64 4640, !85, i64 4648, !85, i64 4656, !71, i64 4664, !72, i64 4824, !86, i64 4888, !45, i64 4952}
!69 = !{!"RenderData", !70, i64 0, !45, i64 248, !45, i64 256, !73, i64 264, !74, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !35, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !47, i64 432, !47, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !39, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !39, i64 484, !39, i64 488, !47, i64 492, !47, i64 494, !39, i64 496, !39, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !75, i64 544, !75, i64 560, !76, i64 576, !46, i64 592, !47, i64 608, !47, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !39, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !35, i64 660, !35, i64 664, !47, i64 668, !47, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !39, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !47, i64 2524, !47, i64 2526, !35, i64 2528, !35, i64 2532, !47, i64 2536, !47, i64 2538, !35, i64 2540, !47, i64 2544, !47, i64 2546, !39, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !35, i64 2560, !35, i64 2564, !45, i64 2568, !39, i64 2576, !35, i64 2580, !36, i64 2584, !77, i64 2616, !39, i64 3976, !39, i64 3980}
!70 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !71, i64 24, !72, i64 184}
!71 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !45, i64 144, !45, i64 152}
!72 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!73 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !47, i64 48, !47, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!74 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !35, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !45, i64 64}
!75 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!76 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!77 = !{!"BakeData", !70, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!78 = !{!"AudioData", !39, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !39, i64 16, !47, i64 20, !47, i64 22, !35, i64 24, !35, i64 28}
!79 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!80 = !{!"GameData", !79, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !81, i64 40, !47, i64 64, !47, i64 66, !35, i64 68, !82, i64 72, !35, i64 128, !35, i64 132, !39, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!81 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !35, i64 8, !35, i64 12, !45, i64 16}
!82 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !39, i64 40, !35, i64 44, !35, i64 48, !47, i64 52, !47, i64 54}
!83 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!84 = !{!"PhysicsSettings", !36, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!85 = !{!"long", !36, i64 0}
!86 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!87 = !{!88, !45, i64 32}
!88 = !{!"Base", !45, i64 0, !45, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !47, i64 28, !47, i64 30, !45, i64 32}
!89 = !{!90, !39, i64 432}
!90 = !{!"Object", !56, i64 0, !45, i64 120, !45, i64 128, !47, i64 136, !47, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !45, i64 304, !91, i64 312, !45, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !39, i64 432, !39, i64 436, !45, i64 440, !45, i64 448, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !39, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !35, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !39, i64 1144, !39, i64 1148, !45, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !45, i64 1240, !45, i64 1248, !45, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !35, i64 1268, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !85, i64 1304, !85, i64 1312, !39, i64 1320, !39, i64 1324, !46, i64 1328, !46, i64 1344, !45, i64 1360, !45, i64 1368, !45, i64 1376, !36, i64 1384, !45, i64 1392, !46, i64 1400, !45, i64 1416}
!91 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!92 = !{!44, !45, i64 40}
!93 = !{!44, !45, i64 576}
!94 = !{!95, !45, i64 1304}
!95 = !{!"PointCache", !45, i64 0, !45, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !47, i64 60, !47, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !45, i64 1280, !46, i64 1288, !45, i64 1304, !45, i64 1312}
!96 = !{!44, !45, i64 568}
!97 = !{!65, !45, i64 8}
!98 = !{!99, !39, i64 16}
!99 = !{!"ModifierData", !45, i64 0, !45, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !45, i64 96, !45, i64 104}
!100 = !{!101, !45, i64 112}
!101 = !{!"ParticleSystemModifierData", !99, i64 0, !45, i64 112, !45, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !47, i64 140, !47, i64 142}
!102 = distinct !{!102, !41, !42}
!103 = !{!104, !45, i64 112}
!104 = !{!"LatticeModifierData", !99, i64 0, !45, i64 112, !36, i64 120, !35, i64 184, !36, i64 188}
!105 = !{!99, !45, i64 0}
!106 = distinct !{!106, !41, !42}
!107 = distinct !{!107, !41, !42}
!108 = distinct !{!108, !41, !42}
!109 = !{}
!110 = !{!101, !39, i64 20}
!111 = !{!55, !47, i64 160}
!112 = !{!113, !39, i64 308}
!113 = !{!"PTCacheEdit", !46, i64 0, !45, i64 16, !45, i64 24, !114, i64 32, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !46, i64 280, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !36, i64 312, !36, i64 315}
!114 = !{!"PTCacheID", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192}
!115 = !{!55, !47, i64 192}
!116 = !{!55, !45, i64 720}
!117 = !{!118, !45, i64 120}
!118 = !{!"Group", !56, i64 0, !46, i64 120, !39, i64 136, !36, i64 140}
!119 = !{!55, !45, i64 728}
!120 = !{!121, !45, i64 16}
!121 = !{!"ParticleDupliWeight", !45, i64 0, !45, i64 8, !45, i64 16, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30}
!122 = !{!121, !45, i64 0}
!123 = distinct !{!123, !41, !42}
!124 = !{!125, !45, i64 16}
!125 = !{!"GroupObject", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !47, i64 32, !36, i64 34}
!126 = distinct !{!126, !41, !42}
!127 = !{!121, !47, i64 24}
!128 = distinct !{!128, !41, !42}
!129 = !{!121, !47, i64 26}
!130 = distinct !{!130, !41, !42}
!131 = !{!68, !39, i64 4628}
!132 = !{!55, !45, i64 144}
!133 = !{!134, !35, i64 64}
!134 = !{!"EffectorWeights", !45, i64 0, !36, i64 8, !35, i64 64, !47, i64 68, !36, i64 70, !39, i64 76}
!135 = !{!55, !45, i64 776}
!136 = !{!55, !45, i64 784}
!137 = !{!55, !45, i64 128}
!138 = !{!55, !45, i64 136}
!139 = !{!140, !45, i64 16}
!140 = !{!"MTex", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !45, i64 8, !45, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !47, i64 120, !47, i64 122, !47, i64 124, !47, i64 126, !47, i64 128, !47, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!141 = !{!142, !39, i64 100}
!142 = !{!"Tex", !56, i64 0, !45, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !47, i64 232, !47, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !39, i64 252, !39, i64 256, !47, i64 260, !47, i64 262, !47, i64 264, !47, i64 266, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !143, i64 296, !45, i64 336, !45, i64 344, !45, i64 352, !45, i64 360, !45, i64 368, !45, i64 376, !45, i64 384, !45, i64 392, !45, i64 400, !36, i64 408, !36, i64 409}
!143 = !{!"ImageUser", !45, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !47, i64 28, !47, i64 30, !47, i64 32, !47, i64 34, !39, i64 36}
!144 = distinct !{!144, !41, !42}
!145 = !{!51, !45, i64 112}
!146 = !{!51, !39, i64 136}
!147 = distinct !{!147, !41, !42}
!148 = !{!44, !45, i64 104}
!149 = !{!44, !45, i64 112}
!150 = !{!151, !45, i64 1680}
!151 = !{!"DerivedMesh", !152, i64 0, !152, i64 200, !152, i64 400, !152, i64 600, !152, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !45, i64 1032, !45, i64 1040, !39, i64 1048, !35, i64 1052, !39, i64 1056, !39, i64 1060, !45, i64 1064, !36, i64 1072, !45, i64 1080, !45, i64 1088, !45, i64 1096, !45, i64 1104, !45, i64 1112, !45, i64 1120, !45, i64 1128, !45, i64 1136, !45, i64 1144, !45, i64 1152, !45, i64 1160, !45, i64 1168, !45, i64 1176, !45, i64 1184, !45, i64 1192, !45, i64 1200, !45, i64 1208, !45, i64 1216, !45, i64 1224, !45, i64 1232, !45, i64 1240, !45, i64 1248, !45, i64 1256, !45, i64 1264, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !45, i64 1304, !45, i64 1312, !45, i64 1320, !45, i64 1328, !45, i64 1336, !45, i64 1344, !45, i64 1352, !45, i64 1360, !45, i64 1368, !45, i64 1376, !45, i64 1384, !45, i64 1392, !45, i64 1400, !45, i64 1408, !45, i64 1416, !45, i64 1424, !45, i64 1432, !45, i64 1440, !45, i64 1448, !45, i64 1456, !45, i64 1464, !45, i64 1472, !45, i64 1480, !45, i64 1488, !45, i64 1496, !45, i64 1504, !45, i64 1512, !45, i64 1520, !45, i64 1528, !45, i64 1536, !45, i64 1544, !45, i64 1552, !45, i64 1560, !45, i64 1568, !45, i64 1576, !45, i64 1584, !45, i64 1592, !45, i64 1600, !45, i64 1608, !45, i64 1616, !45, i64 1624, !45, i64 1632, !45, i64 1640, !45, i64 1648, !45, i64 1656, !45, i64 1664, !45, i64 1672, !45, i64 1680}
!152 = !{!"CustomData", !45, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !45, i64 184, !45, i64 192}
!153 = !{!44, !45, i64 120}
!154 = !{!51, !45, i64 120}
!155 = distinct !{!155, !41, !42}
!156 = !{!113, !45, i64 272}
!157 = !{!158, !45, i64 16}
!158 = !{!"LinkData", !45, i64 0, !45, i64 8, !45, i64 16}
!159 = distinct !{!159, !41, !42}
!160 = !{!113, !39, i64 304}
!161 = !{!44, !45, i64 56}
!162 = !{!44, !39, i64 332}
!163 = !{!44, !45, i64 64}
!164 = !{!44, !39, i64 336}
!165 = !{!44, !45, i64 32}
!166 = !{!44, !39, i64 328}
!167 = distinct !{!167, !41, !42}
!168 = !{!51, !45, i64 128}
!169 = !{!44, !45, i64 640}
!170 = !{!171, !45, i64 32}
!171 = !{!"ParticleDrawData", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!172 = !{!171, !45, i64 0}
!173 = !{!171, !45, i64 16}
!174 = !{!171, !45, i64 48}
!175 = !{!171, !39, i64 80}
!176 = !{!171, !39, i64 72}
!177 = !{!44, !45, i64 48}
!178 = distinct !{!178, !41, !42}
!179 = !{!90, !47, i64 952}
!180 = !{!55, !39, i64 100}
!181 = !{!44, !45, i64 632}
!182 = !{!44, !45, i64 624}
!183 = !{!44, !45, i64 608}
!184 = !{!185, !45, i64 0}
!185 = !{!"ParticleRenderData", !45, i64 0, !45, i64 8, !45, i64 16, !46, i64 24, !46, i64 40, !39, i64 56, !39, i64 60, !39, i64 64, !45, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !36, i64 92, !36, i64 156, !36, i64 220, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !45, i64 304, !45, i64 312, !45, i64 320}
!186 = !{!185, !39, i64 56}
!187 = !{!185, !45, i64 8}
!188 = !{!44, !45, i64 72}
!189 = !{!185, !45, i64 24}
!190 = !{!44, !45, i64 80}
!191 = !{!185, !45, i64 32}
!192 = !{!185, !39, i64 60}
!193 = !{!185, !45, i64 16}
!194 = !{!44, !45, i64 88}
!195 = !{!185, !45, i64 40}
!196 = !{!44, !45, i64 96}
!197 = !{!185, !45, i64 48}
!198 = !{!185, !39, i64 64}
!199 = !{!101, !45, i64 120}
!200 = !{!185, !45, i64 72}
!201 = !{!101, !39, i64 128}
!202 = !{!185, !39, i64 80}
!203 = !{!101, !39, i64 132}
!204 = !{!185, !39, i64 84}
!205 = !{!101, !39, i64 136}
!206 = !{!185, !39, i64 88}
!207 = !{!185, !39, i64 284}
!208 = !{!185, !39, i64 288}
!209 = !{!185, !39, i64 296}
!210 = !{!55, !47, i64 210}
!211 = !{!44, !47, i64 340}
!212 = !{!185, !45, i64 304}
!213 = !{!151, !39, i64 1020}
!214 = !{!101, !47, i64 140}
!215 = !{!44, !39, i64 308}
!216 = distinct !{!216, !41, !42}
!217 = !{!218, !45, i64 48}
!218 = !{!"ParticleThreadContext", !65, i64 0, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !39, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !35, i64 112, !45, i64 120, !45, i64 128, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !45, i64 152, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !35, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240}
!219 = !{!218, !45, i64 8}
!220 = !{!90, !45, i64 296}
!221 = !{!218, !45, i64 16}
!222 = !{!55, !39, i64 176}
!223 = !{!55, !47, i64 268}
!224 = !{!151, !45, i64 1168}
!225 = !{!151, !45, i64 1184}
!226 = !{!151, !45, i64 1120}
!227 = !{!228, !39, i64 1296}
!228 = !{!"Mesh", !56, i64 0, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !152, i64 280, !152, i64 480, !152, i64 680, !152, i64 880, !152, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !39, i64 1344, !47, i64 1348, !47, i64 1350, !35, i64 1352, !39, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !47, i64 1366, !45, i64 1368}
!229 = !{!151, !45, i64 1336}
!230 = !{!151, !45, i64 1352}
!231 = !{!185, !39, i64 292}
!232 = !{!185, !45, i64 312}
!233 = !{!185, !45, i64 320}
!234 = !{!218, !45, i64 120}
!235 = !{!236, !39, i64 4}
!236 = !{!"ParticleRenderElem", !39, i64 0, !39, i64 4, !39, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24}
!237 = distinct !{!237, !41, !42}
!238 = !{!239, !39, i64 0}
!239 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !47, i64 16, !36, i64 18, !36, i64 19}
!240 = !{!239, !39, i64 4}
!241 = !{!239, !39, i64 8}
!242 = !{!239, !39, i64 12}
!243 = distinct !{!243, !41, !42}
!244 = distinct !{!244, !41, !42}
!245 = !{!55, !47, i64 270}
!246 = !{!55, !35, i64 272}
!247 = !{!55, !35, i64 280}
!248 = !{!55, !35, i64 276}
!249 = !{!236, !35, i64 16}
!250 = !{!236, !39, i64 8}
!251 = !{!236, !35, i64 24}
!252 = !{!236, !35, i64 20}
!253 = !{!236, !35, i64 12}
!254 = !{!236, !39, i64 0}
!255 = distinct !{!255, !41, !42}
!256 = !{!218, !45, i64 128}
!257 = distinct !{!257, !41, !42}
!258 = distinct !{!258, !41, !42}
!259 = !{!260, !39, i64 0}
!260 = !{!"ChildParticle", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 24, !36, i64 40, !35, i64 56, !35, i64 60}
!261 = !{!262, !39, i64 16}
!262 = !{!"PTCacheMem", !45, i64 0, !45, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !36, i64 96, !46, i64 160}
!263 = distinct !{!263, !41, !42}
!264 = !{!47, !47, i64 0}
!265 = !{!239, !36, i64 19}
!266 = !{!36, !36, i64 0}
!267 = !{!151, !45, i64 1200}
!268 = !{!269, !45, i64 8}
!269 = !{!"LinkNode", !45, i64 0, !45, i64 8}
!270 = !{!271, !39, i64 4}
!271 = !{!"MPoly", !39, i64 0, !39, i64 4, !47, i64 8, !36, i64 10, !36, i64 11}
!272 = !{!269, !45, i64 0}
!273 = distinct !{!273, !41, !42}
!274 = distinct !{!274, !41, !42}
!275 = !{!151, !45, i64 1320}
!276 = !{!151, !45, i64 1528}
!277 = !{!151, !45, i64 1544}
!278 = !{!151, !45, i64 1304}
!279 = !{!151, !39, i64 1024}
!280 = !{!151, !45, i64 1104}
!281 = !{!51, !39, i64 152}
!282 = !{!51, !39, i64 156}
!283 = !{!55, !47, i64 164}
!284 = !{!55, !47, i64 162}
!285 = !{!65, !45, i64 24}
!286 = !{!51, !35, i64 176}
!287 = !{!288, !45, i64 48}
!288 = !{!"EffectorCache", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !36, i64 64, !36, i64 80, !35, i64 92, !36, i64 96, !35, i64 108, !39, i64 112}
!289 = !{!290, !47, i64 6}
!290 = !{!"PartDeflect", !39, i64 0, !47, i64 4, !47, i64 6, !47, i64 8, !47, i64 10, !47, i64 12, !47, i64 14, !47, i64 16, !47, i64 18, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !45, i64 128, !45, i64 136, !35, i64 144, !39, i64 148, !45, i64 152}
!291 = !{!288, !45, i64 56}
!292 = !{!293, !35, i64 48}
!293 = !{!"EffectorData", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !36, i64 64, !36, i64 76, !45, i64 88}
!294 = !{!295, !35, i64 12}
!295 = !{!"GuideEffectorData", !36, i64 0, !35, i64 12}
!296 = distinct !{!296, !41, !42}
!297 = distinct !{!297, !41, !42}
!298 = !{!290, !35, i64 120}
!299 = !{!288, !45, i64 24}
!300 = !{!290, !39, i64 0}
!301 = !{!302, !45, i64 168}
!302 = !{!"Curve", !56, i64 0, !45, i64 120, !45, i64 128, !46, i64 136, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !47, i64 244, !47, i64 246, !47, i64 248, !47, i64 250, !35, i64 252, !35, i64 256, !39, i64 260, !47, i64 264, !47, i64 266, !39, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !47, i64 284, !47, i64 286, !47, i64 288, !47, i64 290, !39, i64 292, !39, i64 296, !36, i64 300, !47, i64 304, !36, i64 306, !36, i64 307, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !45, i64 368, !45, i64 376, !36, i64 384, !45, i64 448, !45, i64 456, !45, i64 464, !45, i64 472, !45, i64 480, !39, i64 488, !39, i64 492, !45, i64 496, !303, i64 504, !35, i64 512, !35, i64 516, !35, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!303 = !{!"CharInfo", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 5, !47, i64 6}
!304 = !{!288, !45, i64 16}
!305 = !{!302, !39, i64 268}
!306 = !{!290, !35, i64 108}
!307 = !{!290, !35, i64 112}
!308 = !{!290, !35, i64 116}
!309 = !{!290, !47, i64 14}
!310 = !{!290, !47, i64 16}
!311 = !{!290, !35, i64 100}
!312 = !{!290, !35, i64 104}
!313 = distinct !{!313, !41, !42}
!314 = !{!44, !47, i64 564}
!315 = distinct !{!315, !41, !42}
!316 = distinct !{!316, !41, !42}
!317 = !{!55, !35, i64 452}
!318 = !{!55, !39, i64 444}
!319 = !{!55, !39, i64 448}
!320 = !{!260, !35, i64 56}
!321 = distinct !{!321, !41, !42}
!322 = !{!260, !39, i64 4}
!323 = distinct !{!323, !41, !42}
!324 = !{!325, !45, i64 0}
!325 = !{!"ParticleThread", !45, i64 0, !45, i64 8, !45, i64 16, !39, i64 24, !39, i64 28}
!326 = !{!55, !47, i64 198}
!327 = !{!325, !39, i64 28}
!328 = !{!68, !45, i64 264}
!329 = !{!330, !47, i64 0}
!330 = !{!"ParticleEditSettings", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !36, i64 8, !45, i64 120, !35, i64 128, !35, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !45, i64 152, !45, i64 160}
!331 = !{!330, !39, i64 144}
!332 = !{!55, !47, i64 188}
!333 = !{!55, !47, i64 200}
!334 = !{!218, !39, i64 160}
!335 = !{!325, !45, i64 16}
!336 = distinct !{!336, !41, !42}
!337 = !{!218, !39, i64 164}
!338 = !{!218, !39, i64 168}
!339 = !{!218, !39, i64 172}
!340 = !{!218, !39, i64 176}
!341 = !{!218, !39, i64 180}
!342 = !{!218, !35, i64 184}
!343 = !{!44, !45, i64 136}
!344 = !{!218, !45, i64 192}
!345 = !{!218, !45, i64 200}
!346 = !{!218, !45, i64 208}
!347 = !{!218, !45, i64 216}
!348 = !{!218, !45, i64 224}
!349 = !{!218, !45, i64 232}
!350 = !{!218, !45, i64 240}
!351 = distinct !{!351, !41, !42}
!352 = distinct !{!352, !41, !42}
!353 = distinct !{!353, !41, !42}
!354 = distinct !{!354, !41, !42}
!355 = distinct !{!355, !41, !42}
!356 = !{!325, !39, i64 24}
!357 = !{!218, !45, i64 0}
!358 = !{!55, !35, i64 540}
!359 = !{!55, !35, i64 544}
!360 = !{!55, !35, i64 536}
!361 = distinct !{!361, !41, !42}
!362 = !{!113, !45, i64 24}
!363 = !{!364, !47, i64 12}
!364 = !{!"PTCacheEditPoint", !45, i64 0, !39, i64 8, !47, i64 12}
!365 = distinct !{!365, !41, !42}
!366 = !{!367, !39, i64 56}
!367 = !{!"ParticleCacheKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !35, i64 52, !39, i64 56}
!368 = distinct !{!368, !41, !42}
!369 = distinct !{!369, !41, !42}
!370 = !{!218, !45, i64 24}
!371 = distinct !{!371, !41, !42}
!372 = !{!373, !35, i64 12}
!373 = !{!"ParticleTexture", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56}
!374 = distinct !{!374, !41, !42}
!375 = !{!55, !35, i64 468}
!376 = !{!55, !35, i64 464}
!377 = !{!367, !35, i64 52}
!378 = distinct !{!378, !41, !42}
!379 = !{!373, !35, i64 44}
!380 = distinct !{!380, !41, !42}
!381 = !{!218, !45, i64 56}
!382 = !{!55, !47, i64 196}
!383 = !{!373, !35, i64 32}
!384 = distinct !{!384, !41, !42}
!385 = distinct !{!385, !41, !42}
!386 = !{!95, !45, i64 1288}
!387 = !{!55, !47, i64 212}
!388 = !{!55, !35, i64 440}
!389 = !{!390, !39, i64 40}
!390 = !{!"ParticleInterpolationData", !36, i64 0, !45, i64 16, !36, i64 24, !39, i64 40, !36, i64 48, !45, i64 64, !45, i64 72, !45, i64 80, !36, i64 88, !35, i64 104, !35, i64 108, !39, i64 112}
!391 = !{!390, !45, i64 64}
!392 = !{!390, !45, i64 80}
!393 = !{!390, !39, i64 112}
!394 = !{!390, !45, i64 16}
!395 = !{!390, !35, i64 104}
!396 = !{!55, !35, i64 560}
!397 = !{!390, !35, i64 108}
!398 = !{!55, !35, i64 564}
!399 = !{!52, !35, i64 52}
!400 = distinct !{!400, !41, !42}
!401 = distinct !{!401, !41, !42}
!402 = !{!44, !45, i64 600}
!403 = !{i32 0, i32 2}
!404 = distinct !{!404, !41, !42}
!405 = distinct !{!405, !41, !42}
!406 = distinct !{!406, !41, !42}
!407 = distinct !{!407, !41, !42}
!408 = !{!373, !35, i64 56}
!409 = !{!373, !35, i64 52}
!410 = !{!373, !35, i64 48}
!411 = !{!373, !35, i64 40}
!412 = !{!373, !35, i64 36}
!413 = !{!373, !35, i64 28}
!414 = !{!373, !35, i64 24}
!415 = !{!373, !35, i64 20}
!416 = !{!373, !35, i64 16}
!417 = !{!373, !35, i64 8}
!418 = !{!373, !35, i64 0}
!419 = !{!373, !35, i64 4}
!420 = !{!140, !47, i64 2}
!421 = !{!140, !35, i64 156}
!422 = !{!140, !47, i64 6}
!423 = !{!140, !47, i64 0}
!424 = !{!140, !45, i64 8}
!425 = !{!228, !45, i64 128}
!426 = !{!427, !39, i64 96}
!427 = !{!"BoundBox", !36, i64 0, !39, i64 96, !39, i64 100}
!428 = !{!51, !35, i64 140}
!429 = !{!51, !35, i64 148}
!430 = !{!140, !35, i64 248}
!431 = !{!140, !35, i64 280}
!432 = !{!140, !35, i64 272}
!433 = !{!140, !35, i64 284}
!434 = !{!140, !35, i64 288}
!435 = !{!140, !35, i64 292}
!436 = !{!140, !35, i64 276}
!437 = !{!140, !35, i64 260}
!438 = !{!140, !35, i64 252}
!439 = distinct !{!439, !41, !42}
!440 = !{!364, !45, i64 0}
!441 = !{!364, !39, i64 8}
!442 = !{!443, !45, i64 24}
!443 = !{!"PTCacheEditKey", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !36, i64 32, !35, i64 44, !35, i64 48, !47, i64 52}
!444 = !{!262, !45, i64 0}
!445 = !{!95, !39, i64 28}
!446 = !{!95, !39, i64 32}
!447 = distinct !{!447, !41, !42}
!448 = distinct !{!448, !41, !42}
!449 = !{!450, !35, i64 12}
!450 = !{!"HairKey", !36, i64 0, !35, i64 12, !35, i64 16, !47, i64 20, !47, i64 22}
!451 = !{!51, !39, i64 192}
!452 = !{!443, !45, i64 8}
!453 = distinct !{!453, !41, !42}
!454 = !{!55, !47, i64 168}
!455 = !{!44, !45, i64 152}
!456 = !{!457, !45, i64 0}
!457 = !{!"ParticleTarget", !45, i64 0, !45, i64 8, !45, i64 16, !39, i64 24, !47, i64 28, !47, i64 30, !35, i64 32, !35, i64 36}
!458 = !{!457, !35, i64 32}
!459 = distinct !{!459, !41, !42}
!460 = !{!457, !45, i64 8}
!461 = !{!457, !35, i64 36}
!462 = !{!44, !45, i64 160}
!463 = distinct !{!463, !41, !42}
!464 = distinct !{!464, !41, !42}
!465 = !{!443, !45, i64 0}
!466 = !{!262, !45, i64 8}
!467 = !{!55, !35, i64 300}
!468 = !{!65, !45, i64 32}
!469 = !{!55, !35, i64 312}
!470 = !{!113, !45, i64 232}
!471 = !{!113, !39, i64 296}
!472 = distinct !{!472, !41, !42}
!473 = !{!330, !47, i64 6}
!474 = !{!450, !35, i64 16}
!475 = distinct !{!475, !41, !42}
!476 = !{!443, !47, i64 52}
!477 = distinct !{!477, !41, !42}
!478 = distinct !{!478, !41, !42}
!479 = distinct !{!479, !41, !42}
!480 = !{!90, !47, i64 136}
!481 = distinct !{!481, !41, !42}
!482 = !{!68, !39, i64 680}
!483 = !{!44, !35, i64 296}
!484 = !{!485, !45, i64 0}
!485 = !{!"Global", !45, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !46, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !47, i64 2084, !47, i64 2086, !47, i64 2088, !36, i64 2090, !47, i64 2092, !39, i64 2096, !39, i64 2100, !36, i64 2104, !39, i64 2108, !39, i64 2112, !36, i64 2116}
!486 = !{!55, !47, i64 184}
!487 = !{!55, !47, i64 226}
!488 = !{!55, !47, i64 224}
!489 = !{!55, !47, i64 230}
!490 = !{!55, !35, i64 284}
!491 = !{!55, !35, i64 288}
!492 = !{!55, !35, i64 292}
!493 = !{!55, !35, i64 308}
!494 = !{!55, !39, i64 324}
!495 = !{!55, !39, i64 332}
!496 = !{!55, !35, i64 304}
!497 = !{!55, !47, i64 216}
!498 = !{!55, !47, i64 202}
!499 = !{!55, !47, i64 204}
!500 = !{!55, !47, i64 206}
!501 = !{!55, !47, i64 208}
!502 = !{!55, !47, i64 222}
!503 = !{!55, !35, i64 496}
!504 = !{!55, !47, i64 174}
!505 = !{!55, !35, i64 348}
!506 = !{!55, !35, i64 404}
!507 = !{!55, !35, i64 408}
!508 = !{!55, !35, i64 456}
!509 = !{!55, !47, i64 170}
!510 = !{!55, !47, i64 172}
!511 = !{!55, !35, i64 476}
!512 = !{!55, !35, i64 480}
!513 = !{!55, !35, i64 484}
!514 = !{!55, !35, i64 504}
!515 = !{!55, !35, i64 512}
!516 = !{!55, !35, i64 524}
!517 = !{!55, !35, i64 528}
!518 = !{!55, !35, i64 532}
!519 = !{!55, !39, i64 572}
!520 = !{!55, !35, i64 264}
!521 = !{!55, !47, i64 792}
!522 = !{!523, !39, i64 140}
!523 = !{!"SmokeModifierData", !99, i64 0, !45, i64 112, !45, i64 120, !45, i64 128, !35, i64 136, !39, i64 140}
!524 = !{!523, !45, i64 120}
!525 = !{!526, !45, i64 16}
!526 = !{!"SmokeFlowSettings", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !39, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !39, i64 92, !35, i64 96, !35, i64 100, !39, i64 104, !36, i64 108, !47, i64 172, !47, i64 174, !47, i64 176, !47, i64 178, !39, i64 180}
!527 = !{!528, !45, i64 120}
!528 = !{!"DynamicPaintModifierData", !99, i64 0, !45, i64 112, !45, i64 120, !39, i64 128, !39, i64 132}
!529 = !{!530, !45, i64 16}
!530 = !{!"DynamicPaintBrushSettings", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !39, i64 32, !39, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !45, i64 72, !45, i64 80, !47, i64 88, !47, i64 90, !47, i64 92, !47, i64 94, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108}
!531 = !{!90, !45, i64 1224}
!532 = distinct !{!532, !41, !42}
!533 = !{!55, !45, i64 24}
!534 = distinct !{!534, !41, !42}
!535 = distinct !{!535, !41, !42}
!536 = !{!90, !45, i64 24}
!537 = distinct !{!537, !41, !42}
!538 = distinct !{!538, !41, !42}
!539 = distinct !{!539, !41, !42}
!540 = distinct !{!540, !41, !42}
!541 = !{!55, !35, i64 296}
!542 = !{!51, !35, i64 144}
!543 = !{!55, !35, i64 460}
!544 = distinct !{!544, !41, !42}
!545 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 8, !59, i64 24, i64 8, !59, i64 32, i64 8, !59, i64 40, i64 4, !34}
!546 = distinct !{!546, !41, !42}
!547 = distinct !{!547, !41, !42}
!548 = !{i64 0, i64 12, !266, i64 12, i64 12, !266, i64 24, i64 16, !266, i64 40, i64 12, !266, i64 52, i64 4, !34, i64 56, i64 4, !38}
!549 = !{!140, !35, i64 268}
!550 = !{!140, !35, i64 256}
!551 = !{!140, !35, i64 264}
!552 = distinct !{!552, !41, !42}
!553 = !{!55, !35, i64 500}
!554 = !{!55, !35, i64 508}
!555 = !{!55, !35, i64 520}
!556 = !{!55, !35, i64 472}
!557 = !{!55, !35, i64 488}
!558 = !{!55, !35, i64 492}
!559 = !{!55, !47, i64 220}
!560 = !{!55, !35, i64 516}
!561 = !{!51, !35, i64 52}
!562 = !{!51, !35, i64 108}
!563 = !{!68, !47, i64 820}
!564 = !{!55, !35, i64 392}
!565 = !{!55, !35, i64 400}
!566 = !{!567, !47, i64 88}
!567 = !{!"ParticleBillboardData", !45, i64 0, !36, i64 8, !36, i64 20, !36, i64 32, !36, i64 40, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !47, i64 88, !47, i64 90, !47, i64 92, !47, i64 94}
!568 = !{!567, !39, i64 72}
!569 = !{!567, !45, i64 0}
!570 = !{!567, !35, i64 48}
!571 = distinct !{!571, !41, !42}
!572 = distinct !{!572, !41, !42}
!573 = !{!574, !39, i64 396}
!574 = !{!"Material", !56, i64 0, !45, i64 120, !47, i64 128, !47, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !575, i64 224, !576, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !47, i64 356, !47, i64 358, !47, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !47, i64 372, !47, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !47, i64 392, !47, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !47, i64 412, !47, i64 414, !47, i64 416, !47, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !39, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !47, i64 544, !47, i64 546, !47, i64 548, !36, i64 550, !36, i64 551, !47, i64 552, !47, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !47, i64 588, !47, i64 590, !45, i64 592, !45, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !47, i64 612, !47, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !45, i64 768, !45, i64 776, !45, i64 784, !45, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !47, i64 820, !47, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !47, i64 876, !47, i64 878, !39, i64 880, !47, i64 884, !47, i64 886, !36, i64 888, !47, i64 904, !47, i64 906, !47, i64 908, !47, i64 910, !47, i64 912, !36, i64 914, !45, i64 920, !46, i64 928}
!575 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !47, i64 64, !47, i64 66, !47, i64 68, !47, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!576 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!577 = !{!574, !35, i64 448}
