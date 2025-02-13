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
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
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
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
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
%struct.ParticleInterpolationData = type { [2 x ptr], ptr, [2 x ptr], i32, [2 x ptr], ptr, ptr, ptr, [2 x ptr], float, float, i32 }
%struct.ParticleTexture = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.PTCacheEditPoint = type { ptr, i32, i16 }
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
@__const.psys_cache_paths.col = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00], align 16
@.str.9 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ParticleSystem %i\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ParticleSystem\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"psys_copy_tex\00", align 1
@__const.psys_get_dupli_path_transform.xvec = private unnamed_addr constant [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@__const.do_kink.kink = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@__const.do_kink.q1 = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@__const.do_kink.y_vec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 4
@__const.do_kink.z_vec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"PathCacheArray\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"PathCacheLinkData\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ParticleCacheKey\00", align 1
@get_pointcache_keys_for_time.pm = internal unnamed_addr global ptr null, align 8
@str = private unnamed_addr constant [37 x i8] c"\09NO CD_ORIGSPACE, error out of range\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_init_rng() local_unnamed_addr #0 {
  tail call void @BLI_srandom(i32 noundef 5831) #23
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %3 = tail call float @BLI_frand() #23
  %4 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %2
  store float %3, ptr %4, align 4, !tbaa !34
  %5 = tail call i32 @BLI_rand() #23
  %6 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %2
  store i32 %5, ptr %6, align 4, !tbaa !38
  %7 = tail call i32 @BLI_rand() #23
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

; Function Attrs: optsize
declare void @BLI_srandom(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_rand() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_particles(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 5
  br label %11

11:                                               ; preds = %5, %32
  %12 = phi i32 [ 0, %5 ], [ %33, %32 ]
  %13 = phi i32 [ 0, %5 ], [ %34, %32 ]
  %14 = phi ptr [ %7, %5 ], [ %35, %32 ]
  %15 = getelementptr inbounds %struct.ParticleData, ptr %14, i64 0, i32 17
  %16 = load i16, ptr %15, align 4, !tbaa !49
  %17 = and i16 %16, 3
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ParticleData, ptr %14, i64 0, i32 18
  %21 = load i16, ptr %20, align 2, !tbaa !52
  switch i16 %21, label %30 [
    i16 2, label %22
    i16 1, label %26
  ]

22:                                               ; preds = %19
  %23 = load i32, ptr %10, align 8, !tbaa !53
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %30

26:                                               ; preds = %19
  %27 = load i32, ptr %10, align 8, !tbaa !53
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19, %22, %26
  %31 = add nsw i32 %12, 1
  br label %32

32:                                               ; preds = %11, %30, %26, %22
  %33 = phi i32 [ %12, %11 ], [ %12, %22 ], [ %12, %26 ], [ %31, %30 ]
  %34 = add nuw nsw i32 %13, 1
  %35 = getelementptr inbounds %struct.ParticleData, ptr %14, i64 1
  %36 = icmp eq i32 %34, %3
  br i1 %36, label %37, label %11, !llvm.loop !56

37:                                               ; preds = %32, %1
  %38 = phi i32 [ 0, %1 ], [ %33, %32 ]
  ret i32 %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_particles_mod(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 5
  br label %13

13:                                               ; preds = %7, %37
  %14 = phi i32 [ 0, %7 ], [ %38, %37 ]
  %15 = phi i32 [ 0, %7 ], [ %39, %37 ]
  %16 = phi ptr [ %9, %7 ], [ %40, %37 ]
  %17 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 0, i32 17
  %18 = load i16, ptr %17, align 4, !tbaa !49
  %19 = and i16 %18, 3
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 0, i32 18
  %23 = load i16, ptr %22, align 2, !tbaa !52
  switch i16 %23, label %32 [
    i16 2, label %24
    i16 1, label %28
  ]

24:                                               ; preds = %21
  %25 = load i32, ptr %12, align 8, !tbaa !53
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %32

28:                                               ; preds = %21
  %29 = load i32, ptr %12, align 8, !tbaa !53
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %21, %24, %28
  %33 = srem i32 %15, %1
  %34 = icmp eq i32 %33, %2
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %14, %35
  br label %37

37:                                               ; preds = %32, %13, %28, %24
  %38 = phi i32 [ %14, %13 ], [ %14, %24 ], [ %14, %28 ], [ %36, %32 ]
  %39 = add nuw nsw i32 %15, 1
  %40 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 1
  %41 = icmp eq i32 %39, %5
  br i1 %41, label %42, label %13, !llvm.loop !57

42:                                               ; preds = %37, %3
  %43 = phi i32 [ 0, %3 ], [ %38, %37 ]
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @psys_get_current(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !59
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !60

14:                                               ; preds = %5, %9, %1
  %15 = phi ptr [ null, %1 ], [ null, %5 ], [ %7, %9 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @psys_get_current_num(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3, %14
  %8 = phi ptr [ %16, %14 ], [ %5, %3 ]
  %9 = phi i16 [ %15, %14 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !59
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add i16 %9, 1
  %16 = load ptr, ptr %8, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !61

18:                                               ; preds = %7, %14, %3, %1
  %19 = phi i16 [ 0, %1 ], [ 0, %3 ], [ %9, %7 ], [ %15, %14 ]
  ret i16 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_set_current_num(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %19, %8 ], [ %6, %4 ]
  %10 = phi i16 [ %18, %8 ], [ 0, %4 ]
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, %1
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 25
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = and i32 %14, -2
  %16 = zext i1 %12 to i32
  %17 = or disjoint i32 %15, %16
  store i32 %17, ptr %13, align 4, !tbaa !59
  %18 = add i16 %10, 1
  %19 = load ptr, ptr %9, align 8, !tbaa !58
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !62

21:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @psys_create_lattice_deform_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = tail call i32 @psys_in_edit_mode(ptr noundef %2, ptr noundef %4) #24, !range !66
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @psys_get_modifier(ptr noundef %9, ptr noundef %4) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %7, %17
  %13 = phi ptr [ %18, %17 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %12, !llvm.loop !71

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.LatticeModifierData, ptr %13, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @init_latt_deform(ptr noundef nonnull %22, ptr noundef null) #23
  br label %26

26:                                               ; preds = %17, %7, %20, %24, %1
  %27 = phi ptr [ null, %1 ], [ %25, %24 ], [ null, %20 ], [ null, %7 ], [ null, %17 ]
  ret ptr %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @psys_in_edit_mode(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @psys_get_current(ptr noundef nonnull %8) #24
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.PointCache, ptr %22, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20, %16
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  %29 = icmp eq ptr %28, null
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %26, %20, %13, %6, %2
  %32 = phi i32 [ 0, %20 ], [ 0, %13 ], [ 0, %6 ], [ 0, %2 ], [ %30, %26 ]
  ret i32 %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @psys_get_modifier(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %6, %11
  %16 = load ptr, ptr %7, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !106

18:                                               ; preds = %11, %15, %2
  %19 = phi ptr [ null, %2 ], [ null, %15 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @init_latt_deform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_disable_all(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = or i32 %8, 8192
  store i32 %9, ptr %7, align 4, !tbaa !59
  %10 = load ptr, ptr %6, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !107

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_enable_all(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = and i32 %8, -8193
  store i32 %9, ptr %7, align 4, !tbaa !59
  %10 = load ptr, ptr %6, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !108

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @psys_check_enabled(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 25
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = and i32 %4, 8448
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef nonnull %1) #24
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = icmp ne ptr %14, null
  %16 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = getelementptr inbounds %struct.ModifierData, ptr %12, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !109
  br i1 %18, label %21, label %24

21:                                               ; preds = %11
  %22 = and i32 %20, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %27

24:                                               ; preds = %11
  %25 = and i32 %20, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %24, %21, %2, %7, %27
  %29 = phi i32 [ 1, %27 ], [ 0, %7 ], [ 0, %2 ], [ 0, %21 ], [ 0, %24 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @psys_check_edited(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !110
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !59
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %24

18:                                               ; preds = %5, %1
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18, %14
  %25 = phi ptr [ %16, %14 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %25, i64 0, i32 14
  %27 = load i32, ptr %26, align 4, !tbaa !111
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %18, %9, %14
  %31 = phi i32 [ 1, %9 ], [ 0, %14 ], [ 0, %18 ], [ %29, %24 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_check_group_weights(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 21
  %3 = load i16, ptr %2, align 8, !tbaa !114
  %4 = icmp eq i16 %3, 8
  br i1 %4, label %5, label %73

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 122
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Group, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %73, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %13, %26
  %18 = phi ptr [ %24, %26 ], [ %15, %13 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !115
  %20 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !117
  %22 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef %19, ptr noundef %21) #23
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %18, align 8, !tbaa !119
  br i1 %23, label %25, label %26

25:                                               ; preds = %17
  tail call void @BLI_freelinkN(ptr noundef nonnull %14, ptr noundef nonnull %18) #23
  br label %26

26:                                               ; preds = %17, %25
  %27 = icmp eq ptr %24, null
  br i1 %27, label %28, label %17, !llvm.loop !120

28:                                               ; preds = %26
  %29 = load ptr, ptr %6, align 8, !tbaa !115
  %30 = getelementptr inbounds %struct.Group, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %13, %28
  %34 = phi ptr [ %11, %13 ], [ %31, %28 ]
  br label %35

35:                                               ; preds = %33, %53
  %36 = phi ptr [ %54, %53 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.GroupObject, ptr %36, i64 0, i32 2
  br label %38

38:                                               ; preds = %35, %42
  %39 = phi ptr [ %40, %42 ], [ %14, %35 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %40, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !117
  %45 = load ptr, ptr %37, align 8, !tbaa !121
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %53, label %38, !llvm.loop !123

47:                                               ; preds = %38
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %49 = tail call ptr %48(i64 noundef 32, ptr noundef nonnull @.str) #23
  %50 = load ptr, ptr %37, align 8, !tbaa !121
  %51 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %49, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !117
  %52 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %49, i64 0, i32 3
  store i16 1, ptr %52, align 8, !tbaa !124
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %49) #23
  br label %53

53:                                               ; preds = %42, %47
  %54 = load ptr, ptr %36, align 8, !tbaa !58
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %35, !llvm.loop !125

56:                                               ; preds = %53, %28
  br label %57

57:                                               ; preds = %56, %61
  %58 = phi ptr [ %59, %61 ], [ %14, %56 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !58
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %59, i64 0, i32 4
  %63 = load i16, ptr %62, align 2, !tbaa !126
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %57, label %75, !llvm.loop !127

66:                                               ; preds = %57
  %67 = load ptr, ptr %14, align 8, !tbaa !116
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %67, i64 0, i32 4
  %71 = load i16, ptr %70, align 2, !tbaa !126
  %72 = or i16 %71, 1
  store i16 %72, ptr %70, align 2, !tbaa !126
  br label %75

73:                                               ; preds = %9, %5, %1
  %74 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  tail call void @BLI_freelistN(ptr noundef nonnull %74) #23
  br label %75

75:                                               ; preds = %61, %69, %66, %73
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @psys_uses_gravity(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 40, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !128
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = getelementptr inbounds %struct.EffectorWeights, ptr %15, i64 0, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !130
  %18 = fcmp une float %17, 0.000000e+00
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %7, %1
  %21 = phi i32 [ 0, %7 ], [ 0, %1 ], [ %19, %13 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_particlesettings_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #23
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 128
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  tail call void @free_partdeflect(ptr noundef %3) #23
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 129
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  tail call void @free_partdeflect(ptr noundef %5) #23
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %10(ptr noundef nonnull %7) #23
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  tail call void @BLI_freelistN(ptr noundef nonnull %12) #23
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  tail call void @boid_free_settings(ptr noundef %14) #23
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  tail call fastcc void @fluid_free_settings(ptr noundef %16) #24
  br label %17

17:                                               ; preds = %11, %32
  %18 = phi i64 [ 0, %11 ], [ %33, %32 ]
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !138
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !138
  br label %30

30:                                               ; preds = %22, %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %31(ptr noundef nonnull %20) #23
  br label %32

32:                                               ; preds = %17, %30
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, 18
  br i1 %34, label %35, label %17, !llvm.loop !141

35:                                               ; preds = %32
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_partdeflect(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @boid_free_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fluid_free_settings(ptr noundef %0) unnamed_addr #0 !PGOFuncName !142 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %4(ptr noundef nonnull %0) #23
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_hair(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %7, %20
  %11 = phi i32 [ %21, %20 ], [ %5, %7 ]
  %12 = phi i32 [ %23, %20 ], [ 0, %7 ]
  %13 = phi ptr [ %24, %20 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %18(ptr noundef nonnull %15) #23
  %19 = load i32, ptr %4, align 8, !tbaa !42
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %19, %17 ], [ %11, %10 ]
  store ptr null, ptr %14, align 8, !tbaa !143
  %22 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 5
  store i32 0, ptr %22, align 8, !tbaa !144
  %23 = add nuw nsw i32 %12, 1
  %24 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 1
  %25 = icmp slt i32 %23, %21
  br i1 %25, label %10, label %26, !llvm.loop !145

26:                                               ; preds = %20, %3
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 25
  %28 = load i32, ptr %27, align 4, !tbaa !59
  %29 = and i32 %28, -513
  store i32 %29, ptr %27, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !146
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 41
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %36) #23
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  store ptr null, ptr %37, align 8, !tbaa !100
  %38 = load ptr, ptr %30, align 8, !tbaa !146
  %39 = getelementptr inbounds %struct.ClothModifierData, ptr %38, i64 0, i32 5
  store ptr null, ptr %39, align 8, !tbaa !147
  %40 = getelementptr inbounds %struct.ClothModifierData, ptr %38, i64 0, i32 6
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %40) #24
  %41 = load ptr, ptr %30, align 8, !tbaa !146
  tail call void @modifier_free(ptr noundef %41) #23
  store ptr null, ptr %30, align 8, !tbaa !146
  %42 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %36) #23
  store ptr %42, ptr %37, align 8, !tbaa !100
  br label %44

43:                                               ; preds = %33
  tail call void @cloth_free_modifier(ptr noundef nonnull %31) #23
  br label %44

44:                                               ; preds = %35, %43, %26
  %45 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !149
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %46, i64 0, i32 95
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  tail call void %50(ptr noundef nonnull %46) #23
  br label %51

51:                                               ; preds = %48, %44
  store ptr null, ptr %45, align 8, !tbaa !149
  %52 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !153
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %53, i64 0, i32 95
  %57 = load ptr, ptr %56, align 8, !tbaa !150
  tail call void %57(ptr noundef nonnull %53) #23
  br label %58

58:                                               ; preds = %55, %51
  store ptr null, ptr %52, align 8, !tbaa !153
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !154 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @modifier_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cloth_free_modifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_keyed_keys(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 8, !tbaa !110
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleData, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !155
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %16(ptr noundef nonnull %13) #23
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %20, %30
  %23 = phi i32 [ %31, %30 ], [ 0, %20 ]
  %24 = phi ptr [ %32, %30 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !155
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  store ptr null, ptr %25, align 8, !tbaa !155
  %29 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 0, i32 5
  store i32 0, ptr %29, align 8, !tbaa !144
  br label %30

30:                                               ; preds = %22, %28
  %31 = add nuw nsw i32 %23, 1
  %32 = getelementptr inbounds %struct.ParticleData, ptr %24, i64 1
  %33 = icmp eq i32 %31, %18
  br i1 %33, label %34, label %22, !llvm.loop !156

34:                                               ; preds = %30, %15, %7, %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_free_path_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 10
  tail call fastcc void @psys_free_path_cache_buffers(ptr noundef %6, ptr noundef nonnull %7) #24
  store ptr null, ptr %5, align 8, !tbaa !157
  %8 = getelementptr inbounds %struct.PTCacheEdit, ptr %1, i64 0, i32 13
  store i32 0, ptr %8, align 8, !tbaa !158
  br label %9

9:                                                ; preds = %4, %2
  %10 = icmp eq ptr %0, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 9
  tail call fastcc void @psys_free_path_cache_buffers(ptr noundef %13, ptr noundef nonnull %14) #24
  store ptr null, ptr %12, align 8, !tbaa !159
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 29
  store i32 0, ptr %15, align 4, !tbaa !160
  tail call fastcc void @free_child_path_cache(ptr noundef nonnull %0) #24
  br label %16

16:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_free_path_cache_buffers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !161 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %5(ptr noundef nonnull %0) #23
  br label %6

6:                                                ; preds = %4, %2
  %7 = load ptr, ptr %1, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.LinkData, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  tail call void %11(ptr noundef %13) #23
  %14 = load ptr, ptr %10, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !164

16:                                               ; preds = %9, %6
  tail call void @BLI_freelistN(ptr noundef nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_child_path_cache(ptr noundef %0) unnamed_addr #0 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 10
  tail call fastcc void @psys_free_path_cache_buffers(ptr noundef %3, ptr noundef nonnull %4) #24
  store ptr null, ptr %2, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 30
  store i32 0, ptr %5, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_free_children(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %6(ptr noundef nonnull %3) #23
  store ptr null, ptr %2, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 28
  store i32 0, ptr %7, align 8, !tbaa !169
  br label %8

8:                                                ; preds = %5, %1
  tail call fastcc void @free_child_path_cache(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_free_particles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 7
  %9 = load i16, ptr %8, align 8, !tbaa !110
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11, %25
  %16 = phi i32 [ %26, %25 ], [ %13, %11 ]
  %17 = phi i32 [ %27, %25 ], [ 0, %11 ]
  %18 = phi ptr [ %28, %25 ], [ %3, %11 ]
  %19 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !143
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %23(ptr noundef nonnull %20) #23
  %24 = load i32, ptr %12, align 8, !tbaa !42
  br label %25

25:                                               ; preds = %15, %22
  %26 = phi i32 [ %16, %15 ], [ %24, %22 ]
  %27 = add nuw nsw i32 %17, 1
  %28 = getelementptr inbounds %struct.ParticleData, ptr %18, i64 1
  %29 = icmp slt i32 %27, %26
  br i1 %29, label %15, label %30, !llvm.loop !170

30:                                               ; preds = %25
  %31 = load ptr, ptr %2, align 8, !tbaa !47
  br label %32

32:                                               ; preds = %30, %11, %5
  %33 = phi ptr [ %31, %30 ], [ %3, %11 ], [ %3, %5 ]
  %34 = getelementptr inbounds %struct.ParticleData, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !155
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %38(ptr noundef nonnull %35) #23
  %39 = load ptr, ptr %2, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %33, %32 ]
  %42 = getelementptr inbounds %struct.ParticleData, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !171
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %46(ptr noundef nonnull %43) #23
  %47 = load ptr, ptr %2, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi ptr [ %47, %45 ], [ %41, %40 ]
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %50(ptr noundef %49) #23
  store ptr null, ptr %2, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  store i32 0, ptr %51, align 8, !tbaa !42
  br label %52

52:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_free_pdd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 48
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleDrawData, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %10(ptr noundef nonnull %7) #23
  %11 = load ptr, ptr %2, align 8, !tbaa !172
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.ParticleDrawData, ptr %13, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !173
  %15 = load ptr, ptr %13, align 8, !tbaa !175
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %18(ptr noundef nonnull %15) #23
  %19 = load ptr, ptr %2, align 8, !tbaa !172
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %13, %12 ]
  store ptr null, ptr %21, align 8, !tbaa !175
  %22 = getelementptr inbounds %struct.ParticleDrawData, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !176
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %26(ptr noundef nonnull %23) #23
  %27 = load ptr, ptr %2, align 8, !tbaa !172
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %27, %25 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.ParticleDrawData, ptr %29, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !176
  %31 = getelementptr inbounds %struct.ParticleDrawData, ptr %29, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !177
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %35(ptr noundef nonnull %32) #23
  %36 = load ptr, ptr %2, align 8, !tbaa !172
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %36, %34 ], [ %29, %28 ]
  %39 = getelementptr inbounds %struct.ParticleDrawData, ptr %38, i64 0, i32 6
  store ptr null, ptr %39, align 8, !tbaa !177
  %40 = getelementptr inbounds %struct.ParticleDrawData, ptr %38, i64 0, i32 11
  store i32 0, ptr %40, align 8, !tbaa !178
  %41 = getelementptr inbounds %struct.ParticleDrawData, ptr %38, i64 0, i32 9
  store i32 0, ptr %41, align 8, !tbaa !179
  br label %42

42:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  tail call void @psys_free_path_cache(ptr noundef nonnull %1, ptr noundef null) #24
  tail call void @free_hair(ptr poison, ptr noundef nonnull %1, i32 noundef 1) #24
  tail call void @psys_free_particles(ptr noundef nonnull %1) #24
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !180
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef nonnull %6) #23
  br label %13

13:                                               ; preds = %12, %8, %4
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !168
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %18(ptr noundef nonnull %15) #23
  store ptr null, ptr %14, align 8, !tbaa !168
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  store i32 0, ptr %19, align 8, !tbaa !169
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20, %34
  %25 = phi ptr [ %35, %34 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %27, i64 0, i32 21
  %31 = load i16, ptr %30, align 8, !tbaa !114
  %32 = add i16 %31, -7
  %33 = icmp ult i16 %32, 2
  br i1 %33, label %41, label %34

34:                                               ; preds = %29, %24
  %35 = load ptr, ptr %25, align 8, !tbaa !58
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24, !llvm.loop !181

37:                                               ; preds = %34, %20
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 55
  %39 = load i16, ptr %38, align 8, !tbaa !182
  %40 = and i16 %39, -2049
  store i16 %40, ptr %38, align 8, !tbaa !182
  br label %41

41:                                               ; preds = %29, %37
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 6
  %47 = load i32, ptr %46, align 4, !tbaa !183
  %48 = add nsw i32 %47, -1
  store i32 %48, ptr %46, align 4, !tbaa !183
  store ptr null, ptr %42, align 8, !tbaa !48
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 41
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %50) #23
  %51 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  store ptr null, ptr %51, align 8, !tbaa !100
  %52 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 17
  tail call void @BLI_freelistN(ptr noundef nonnull %52) #23
  %53 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 47
  %54 = load ptr, ptr %53, align 8, !tbaa !184
  tail call void @BLI_bvhtree_free(ptr noundef %54) #23
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 46
  %56 = load ptr, ptr %55, align 8, !tbaa !185
  tail call void @BLI_kdtree_free(ptr noundef %56) #23
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 43
  %58 = load ptr, ptr %57, align 8, !tbaa !186
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %61(ptr noundef nonnull %58) #23
  br label %62

62:                                               ; preds = %60, %49
  %63 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 42
  tail call void @pdEndEffectors(ptr noundef nonnull %63) #23
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 48
  %65 = load ptr, ptr %64, align 8, !tbaa !172
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  tail call void @psys_free_pdd(ptr noundef nonnull %1) #24
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %69 = load ptr, ptr %64, align 8, !tbaa !172
  tail call void %68(ptr noundef %69) #23
  br label %70

70:                                               ; preds = %67, %62
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %71(ptr noundef nonnull %1) #23
  br label %72

72:                                               ; preds = %70, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_render_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %1) #24
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %14 = tail call ptr %13(i64 noundef 328, ptr noundef nonnull @.str.1) #23
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  store ptr %16, ptr %14, align 8, !tbaa !187
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  %18 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 5
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  %20 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 1
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9
  %22 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 3
  %23 = load <2 x ptr>, ptr %21, align 8, !tbaa !58
  store <2 x ptr> %23, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 29
  %25 = load <2 x i32>, ptr %17, align 8, !tbaa !38
  store <2 x i32> %25, ptr %18, align 8, !tbaa !38
  %26 = load <2 x ptr>, ptr %19, align 8, !tbaa !58
  store <2 x ptr> %26, ptr %20, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10
  %28 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 4
  %29 = load <2 x ptr>, ptr %27, align 8, !tbaa !58
  store <2 x ptr> %29, ptr %28, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 30
  %31 = load i32, ptr %30, align 8, !tbaa !167
  %32 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 7
  store i32 %31, ptr %32, align 8, !tbaa !189
  %33 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %8, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !190
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %12
  %37 = tail call ptr @CDDM_copy(ptr noundef nonnull %34) #23
  %38 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 8
  store ptr %37, ptr %38, align 8, !tbaa !191
  br label %39

39:                                               ; preds = %36, %12
  %40 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %8, i64 0, i32 3
  %41 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 9
  %42 = load <2 x i32>, ptr %40, align 8, !tbaa !38
  store <2 x i32> %42, ptr %41, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %8, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !192
  %45 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 11
  store i32 %44, ptr %45, align 8, !tbaa !193
  store ptr null, ptr %15, align 8, !tbaa !168
  store i32 0, ptr %30, align 8, !tbaa !167
  store i32 0, ptr %24, align 4, !tbaa !160
  store i32 0, ptr %17, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %21) #24
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %27) #24
  %46 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 14
  tail call void @copy_m4_m4(ptr noundef nonnull %46, ptr noundef %3) #23
  %47 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 13
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %47, ptr noundef %2, ptr noundef nonnull %48) #23
  %49 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 12
  tail call void @mul_m4_m4m4(ptr noundef nonnull %49, ptr noundef %3, ptr noundef nonnull %47) #23
  %50 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 15
  store i32 %4, ptr %50, align 4, !tbaa !194
  %51 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 16
  store i32 %5, ptr %51, align 8, !tbaa !195
  %52 = getelementptr inbounds %struct.ParticleRenderData, ptr %14, i64 0, i32 18
  store i32 %6, ptr %52, align 8, !tbaa !196
  store ptr %14, ptr %9, align 8, !tbaa !103
  %53 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.ParticleSettings, ptr %54, i64 0, i32 30
  %56 = load i16, ptr %55, align 2, !tbaa !197
  %57 = icmp eq i16 %56, 100
  br i1 %57, label %66, label %58

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %54, i64 0, i32 7
  %60 = load i16, ptr %59, align 8, !tbaa !110
  %61 = icmp eq i16 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 31
  %64 = load i16, ptr %63, align 4, !tbaa !198
  %65 = or i16 %64, 16
  store i16 %65, ptr %63, align 4, !tbaa !198
  br label %66

66:                                               ; preds = %39, %58, %62, %7
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_render_restore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @psys_get_modifier(ptr noundef %0, ptr noundef %1) #24
  %4 = tail call float @psys_get_current_display_percentage(ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %13(ptr noundef nonnull %10) #23
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 10
  store i32 1, ptr %19, align 4, !tbaa !200
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 95
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  tail call void %21(ptr noundef nonnull %16) #23
  br label %22

22:                                               ; preds = %18, %14
  tail call void @psys_free_path_cache(ptr noundef nonnull %1, ptr noundef null) #24
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %27(ptr noundef nonnull %24) #23
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %6, align 8, !tbaa !187
  store ptr %29, ptr %23, align 8, !tbaa !168
  %30 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 5
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  %32 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 1
  %33 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  %34 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 3
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 9
  %36 = load <2 x ptr>, ptr %34, align 8, !tbaa !58
  store <2 x ptr> %36, ptr %35, align 8, !tbaa !58
  %37 = load <2 x i32>, ptr %30, align 8, !tbaa !38
  store <2 x i32> %37, ptr %31, align 8, !tbaa !38
  %38 = load <2 x ptr>, ptr %32, align 8, !tbaa !58
  store <2 x ptr> %38, ptr %33, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 4
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 10
  %41 = load <2 x ptr>, ptr %39, align 8, !tbaa !58
  store <2 x ptr> %41, ptr %40, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !189
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 30
  store i32 %43, ptr %44, align 8, !tbaa !167
  %45 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !191
  store ptr %46, ptr %15, align 8, !tbaa !190
  %47 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 9
  %48 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %3, i64 0, i32 3
  %49 = load <2 x i32>, ptr %47, align 8, !tbaa !38
  store <2 x i32> %49, ptr %48, align 8, !tbaa !38
  %50 = getelementptr inbounds %struct.ParticleRenderData, ptr %6, i64 0, i32 11
  %51 = load i32, ptr %50, align 8, !tbaa !193
  %52 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %3, i64 0, i32 5
  store i32 %51, ptr %52, align 8, !tbaa !192
  %53 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %3, i64 0, i32 6
  %54 = load i16, ptr %53, align 4, !tbaa !201
  %55 = and i16 %54, -3
  store i16 %55, ptr %53, align 4, !tbaa !201
  %56 = icmp eq ptr %46, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %28
  tail call void @psys_calc_dmcache(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %1) #23
  br label %58

58:                                               ; preds = %57, %28
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %59(ptr noundef nonnull %6) #23
  store ptr null, ptr %5, align 8, !tbaa !103
  %60 = tail call float @psys_get_current_display_percentage(ptr noundef nonnull %1) #23
  %61 = fcmp une float %60, %4
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %64 = load i32, ptr %63, align 8, !tbaa !42
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  br label %69

69:                                               ; preds = %66, %69
  %70 = phi i32 [ %79, %69 ], [ 0, %66 ]
  %71 = phi ptr [ %80, %69 ], [ %68, %66 ]
  %72 = tail call fastcc float @psys_frand(ptr noundef nonnull %1, i32 noundef %70) #24
  %73 = fcmp ogt float %72, %60
  %74 = getelementptr inbounds %struct.ParticleData, ptr %71, i64 0, i32 17
  %75 = load i16, ptr %74, align 4, !tbaa !49
  %76 = and i16 %75, -3
  %77 = select i1 %73, i16 2, i16 0
  %78 = or disjoint i16 %76, %77
  store i16 %78, ptr %74, align 4, !tbaa !49
  %79 = add nuw nsw i32 %70, 1
  %80 = getelementptr inbounds %struct.ParticleData, ptr %71, i64 1
  %81 = icmp eq i32 %79, %64
  br i1 %81, label %82, label %69, !llvm.loop !202

82:                                               ; preds = %69, %62, %58, %2
  ret void
}

; Function Attrs: optsize
declare float @psys_get_current_display_percentage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_calc_dmcache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @psys_frand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !203 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !204
  %5 = srem i32 %4, 1024
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = mul i32 %10, %1
  %12 = add i32 %11, %8
  %13 = and i32 %12, 1023
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !34
  ret float %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @psys_render_simplify_distribution(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !205
  %11 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !207
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !208
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !209
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 21
  %20 = load i16, ptr %19, align 8, !tbaa !114
  %21 = icmp eq i16 %20, 6
  br i1 %21, label %22, label %356

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !210
  %25 = and i32 %24, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %356, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 39
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  %30 = icmp eq ptr %29, null
  br i1 %30, label %356, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ParticleRenderData, ptr %29, i64 0, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !196
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %356

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 48
  %37 = load i16, ptr %36, align 4, !tbaa !211
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %356, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 31
  %42 = load ptr, ptr %41, align 8, !tbaa !212
  %43 = tail call ptr %42(ptr noundef %10) #23
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 33
  %45 = load ptr, ptr %44, align 8, !tbaa !213
  %46 = tail call ptr %45(ptr noundef %10) #23
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 25
  %48 = load ptr, ptr %47, align 8, !tbaa !214
  %49 = tail call i32 %48(ptr noundef %10) #23
  %50 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 30
  %51 = load i32, ptr %50, align 8, !tbaa !215
  %52 = icmp eq i32 %49, 0
  %53 = icmp eq i32 %51, 0
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %356, label %55

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 52
  %57 = load ptr, ptr %56, align 8, !tbaa !217
  %58 = tail call ptr %57(ptr noundef nonnull %10, i32 noundef 7) #23
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 54
  %60 = load ptr, ptr %59, align 8, !tbaa !218
  %61 = tail call ptr %60(ptr noundef nonnull %10, i32 noundef 7) #23
  %62 = icmp eq ptr %58, null
  %63 = select i1 %62, ptr null, ptr %61
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %65 = sext i32 %51 to i64
  %66 = shl nsw i64 %65, 2
  %67 = tail call ptr %64(i64 noundef %66, ptr noundef nonnull @.str.2) #23
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %69 = mul nsw i64 %65, 12
  %70 = tail call ptr %68(i64 noundef %69, ptr noundef nonnull @.str.3) #23
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %72 = tail call ptr %71(i64 noundef %66, ptr noundef nonnull @.str.2) #23
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %74 = mul nsw i64 %65, 28
  %75 = tail call ptr %73(i64 noundef %74, ptr noundef nonnull @.str.4) #23
  %76 = getelementptr inbounds %struct.ParticleRenderData, ptr %29, i64 0, i32 19
  %77 = load ptr, ptr %76, align 8, !tbaa !199
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %55
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %80(ptr noundef nonnull %77) #23
  br label %81

81:                                               ; preds = %79, %55
  %82 = getelementptr inbounds %struct.ParticleRenderData, ptr %29, i64 0, i32 17
  store i32 1, ptr %82, align 4, !tbaa !219
  store ptr %75, ptr %76, align 8, !tbaa !199
  %83 = getelementptr inbounds %struct.ParticleRenderData, ptr %29, i64 0, i32 20
  store ptr %58, ptr %83, align 8, !tbaa !220
  %84 = getelementptr inbounds %struct.ParticleRenderData, ptr %29, i64 0, i32 21
  store ptr %63, ptr %84, align 8, !tbaa !221
  %85 = icmp sgt i32 %1, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 10
  %88 = zext nneg i32 %1 to i64
  %89 = load ptr, ptr %87, align 8, !tbaa !222
  br label %92

90:                                               ; preds = %106, %81
  %91 = icmp sgt i32 %49, 0
  br i1 %91, label %113, label %109

92:                                               ; preds = %86, %106
  %93 = phi i64 [ 0, %86 ], [ %107, %106 ]
  %94 = getelementptr inbounds i32, ptr %89, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !38
  br i1 %62, label %98, label %96

96:                                               ; preds = %92
  %97 = tail call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %58, ptr noundef %61, i32 noundef %95) #24
  br label %98

98:                                               ; preds = %92, %96
  %99 = phi i32 [ %97, %96 ], [ %95, %92 ]
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = sext i32 %99 to i64
  %103 = getelementptr inbounds %struct.ParticleRenderElem, ptr %75, i64 %102, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !223
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %103, align 4, !tbaa !223
  br label %106

106:                                              ; preds = %98, %101
  %107 = add nuw nsw i64 %93, 1
  %108 = icmp eq i64 %107, %88
  br i1 %108, label %90, label %92, !llvm.loop !225

109:                                              ; preds = %152, %90
  %110 = icmp sgt i32 %51, 0
  br i1 %110, label %111, label %168

111:                                              ; preds = %109
  %112 = zext nneg i32 %51 to i64
  br label %156

113:                                              ; preds = %90, %152
  %114 = phi ptr [ %154, %152 ], [ %46, %90 ]
  %115 = phi i32 [ %153, %152 ], [ 0, %90 ]
  br i1 %62, label %119, label %116

116:                                              ; preds = %113
  %117 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %58, ptr noundef %61, i32 noundef %115) #24
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %152, label %119

119:                                              ; preds = %113, %116
  %120 = phi i32 [ %117, %116 ], [ %115, %113 ]
  %121 = load i32, ptr %114, align 4, !tbaa !226
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.MVert, ptr %43, i64 %122
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %123) #24
  %124 = getelementptr inbounds %struct.MFace, ptr %114, i64 0, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !228
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.MVert, ptr %43, i64 %126
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %127) #24
  %128 = getelementptr inbounds %struct.MFace, ptr %114, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !229
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.MVert, ptr %43, i64 %130
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %131) #24
  %132 = sext i32 %120 to i64
  %133 = getelementptr inbounds [3 x float], ptr %70, i64 %132
  call fastcc void @add_v3_v3(ptr noundef %133, ptr noundef nonnull %4) #24
  call fastcc void @add_v3_v3(ptr noundef %133, ptr noundef nonnull %5) #24
  call fastcc void @add_v3_v3(ptr noundef %133, ptr noundef nonnull %6) #24
  %134 = getelementptr inbounds %struct.MFace, ptr %114, i64 0, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !230
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %119
  %138 = zext i32 %135 to i64
  %139 = getelementptr inbounds %struct.MVert, ptr %43, i64 %138
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %139) #24
  call fastcc void @add_v3_v3(ptr noundef %133, ptr noundef nonnull %7) #24
  %140 = call float @area_quad_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  br label %143

141:                                              ; preds = %119
  %142 = call float @area_tri_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  br label %143

143:                                              ; preds = %137, %141
  %144 = phi float [ %140, %137 ], [ %142, %141 ]
  %145 = phi i32 [ 4, %137 ], [ 3, %141 ]
  %146 = getelementptr inbounds float, ptr %67, i64 %132
  %147 = load float, ptr %146, align 4, !tbaa !34
  %148 = fadd float %144, %147
  store float %148, ptr %146, align 4, !tbaa !34
  %149 = getelementptr inbounds i32, ptr %72, i64 %132
  %150 = load i32, ptr %149, align 4, !tbaa !38
  %151 = add nsw i32 %150, %145
  store i32 %151, ptr %149, align 4, !tbaa !38
  br label %152

152:                                              ; preds = %143, %116
  %153 = add nuw nsw i32 %115, 1
  %154 = getelementptr inbounds %struct.MFace, ptr %114, i64 1
  %155 = icmp eq i32 %153, %49
  br i1 %155, label %109, label %113, !llvm.loop !231

156:                                              ; preds = %111, %165
  %157 = phi i64 [ 0, %111 ], [ %166, %165 ]
  %158 = getelementptr inbounds i32, ptr %72, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !38
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = getelementptr inbounds [3 x float], ptr %70, i64 %157
  %163 = sitofp i32 %159 to float
  %164 = fdiv float 1.000000e+00, %163
  call fastcc void @mul_v3_fl(ptr noundef %162, float noundef %164) #24
  br label %165

165:                                              ; preds = %156, %161
  %166 = add nuw nsw i64 %157, 1
  %167 = icmp eq i64 %166, %112
  br i1 %167, label %168, label %156, !llvm.loop !232

168:                                              ; preds = %165, %109
  call void @BKE_mesh_texspace_get(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #23
  %169 = load float, ptr %3, align 4, !tbaa !34
  %170 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !34
  %172 = fadd float %169, %171
  %173 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !34
  %175 = fadd float %172, %174
  %176 = fdiv float %175, 3.000000e+00
  %177 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 49
  %178 = load i16, ptr %177, align 2, !tbaa !233
  %179 = sitofp i16 %178 to float
  %180 = fdiv float %176, %179
  %181 = fmul float %180, %180
  %182 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 50
  %183 = load float, ptr %182, align 8, !tbaa !234
  %184 = fmul float %183, 5.000000e-01
  %185 = fpext float %184 to double
  %186 = call double @log(double noundef %185) #23
  %187 = fdiv double 0xBFE62E42FEFA39EF, %186
  %188 = fptrunc double %187 to float
  %189 = load i16, ptr %36, align 4, !tbaa !211
  %190 = and i16 %189, 2
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %168
  %193 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 52
  %194 = load float, ptr %193, align 8, !tbaa !235
  %195 = fsub float 1.000000e+00, %194
  %196 = fpext float %195 to double
  %197 = call double @pow(double noundef %196, double noundef 5.000000e+00) #23
  br label %198

198:                                              ; preds = %168, %192
  %199 = phi double [ %197, %192 ], [ 1.000000e+00, %168 ]
  br i1 %110, label %200, label %293

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.ParticleSettings, ptr %18, i64 0, i32 51
  %202 = zext nneg i32 %51 to i64
  br label %203

203:                                              ; preds = %200, %281
  %204 = phi i64 [ 0, %200 ], [ %290, %281 ]
  %205 = phi ptr [ %75, %200 ], [ %291, %281 ]
  %206 = load ptr, ptr %15, align 8, !tbaa !209
  %207 = getelementptr inbounds [3 x float], ptr %70, i64 %204
  %208 = getelementptr inbounds float, ptr %67, i64 %204
  %209 = load float, ptr %208, align 4, !tbaa !34
  %210 = call fastcc float @psys_render_projected_area(ptr noundef %206, ptr noundef %207, float noundef %209, double noundef %199, ptr noundef nonnull %8) #24
  %211 = fmul float %181, %210
  %212 = load float, ptr %208, align 4, !tbaa !34
  %213 = fdiv float %211, %212
  %214 = fcmp olt float %213, 1.000000e+00
  %215 = load float, ptr %8, align 4
  %216 = fcmp olt float %215, 1.000000e+00
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %218, label %278

218:                                              ; preds = %203
  %219 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !223
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %278, label %222

222:                                              ; preds = %218
  br i1 %214, label %223, label %226

223:                                              ; preds = %222
  %224 = call float @powf(float noundef %213, float noundef %188) #23
  %225 = load i32, ptr %219, align 4, !tbaa !223
  br label %226

226:                                              ; preds = %222, %223
  %227 = phi i32 [ %225, %223 ], [ %220, %222 ]
  %228 = phi float [ %224, %223 ], [ 1.000000e+00, %222 ]
  %229 = fmul float %215, %228
  %230 = sitofp i32 %227 to float
  %231 = fdiv float 1.000000e+00, %230
  %232 = fcmp ogt float %229, %231
  %233 = select i1 %232, float %229, float %231
  %234 = load float, ptr %201, align 4, !tbaa !236
  %235 = fsub float %233, %234
  %236 = fcmp olt float %235, 0.000000e+00
  %237 = fadd float %234, %233
  br i1 %236, label %242, label %238

238:                                              ; preds = %226
  %239 = fcmp ogt float %237, 1.000000e+00
  %240 = fsub float 1.000000e+00, %233
  %241 = select i1 %239, float %240, float %234
  br label %242

242:                                              ; preds = %226, %238
  %243 = phi float [ %241, %238 ], [ %233, %226 ]
  %244 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 4
  store float %243, ptr %244, align 4, !tbaa !237
  %245 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 2
  store i32 1, ptr %245, align 4, !tbaa !238
  %246 = fcmp olt float %237, 1.000000e+00
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = fdiv float 1.000000e+00, %233
  %249 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 6
  store float %248, ptr %249, align 4, !tbaa !239
  br label %259

250:                                              ; preds = %242
  %251 = fmul float %243, %243
  %252 = fdiv float %251, %234
  %253 = fsub float 1.000000e+00, %252
  %254 = fdiv float 1.000000e+00, %253
  %255 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 6
  store float %254, ptr %255, align 4, !tbaa !239
  %256 = fdiv float %243, %234
  %257 = fsub float 1.000000e+00, %256
  %258 = fmul float %257, %254
  br label %259

259:                                              ; preds = %247, %250
  %260 = phi ptr [ %255, %250 ], [ %249, %247 ]
  %261 = phi float [ %258, %250 ], [ 0.000000e+00, %247 ]
  %262 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 5
  %263 = call float @sqrtf(float noundef %261) #23
  store float %263, ptr %262, align 4, !tbaa !240
  %264 = load float, ptr %260, align 4, !tbaa !239
  %265 = call float @sqrtf(float noundef %264) #23
  %266 = load i32, ptr %219, align 4, !tbaa !223
  %267 = call fastcc i32 @min_ii(i32 noundef %266) #24
  %268 = sitofp i32 %267 to float
  %269 = load float, ptr %262, align 4, !tbaa !240
  %270 = fcmp ogt float %269, %268
  %271 = select i1 %270, float %268, float %269
  %272 = fcmp ogt float %265, %268
  %273 = select i1 %272, float %268, float %265
  store float %273, ptr %260, align 4, !tbaa !239
  %274 = load float, ptr %244, align 4, !tbaa !237
  %275 = fadd float %233, %274
  %276 = fcmp ogt float %275, 1.000000e+00
  br i1 %276, label %277, label %281

277:                                              ; preds = %259
  br label %281

278:                                              ; preds = %203, %218
  %279 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 6
  store float 1.000000e+00, ptr %279, align 4, !tbaa !239
  %280 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 2
  store i32 0, ptr %280, align 4, !tbaa !238
  br label %281

281:                                              ; preds = %259, %277, %278
  %282 = phi float [ %271, %277 ], [ %271, %259 ], [ 1.000000e+00, %278 ]
  %283 = phi float [ 1.000000e+00, %277 ], [ %275, %259 ], [ %213, %278 ]
  %284 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 3
  store float %283, ptr %284, align 4, !tbaa !241
  %285 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 5
  %286 = call float @sqrtf(float noundef %282) #23
  store float %286, ptr %285, align 4, !tbaa !240
  %287 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 0, i32 6
  %288 = load float, ptr %287, align 4, !tbaa !239
  %289 = call float @sqrtf(float noundef %288) #23
  store float %289, ptr %287, align 4, !tbaa !239
  store i32 0, ptr %205, align 4, !tbaa !242
  %290 = add nuw nsw i64 %204, 1
  %291 = getelementptr inbounds %struct.ParticleRenderElem, ptr %205, i64 1
  %292 = icmp eq i64 %290, %202
  br i1 %292, label %293, label %203, !llvm.loop !243

293:                                              ; preds = %281, %198
  %294 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %294(ptr noundef %67) #23
  %295 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %295(ptr noundef %70) #23
  %296 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %296(ptr noundef %72) #23
  %297 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %298 = sext i32 %1 to i64
  %299 = shl nsw i64 %298, 2
  %300 = call ptr %297(i64 noundef %299, ptr noundef nonnull @.str.5) #23
  %301 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 11
  store ptr %300, ptr %301, align 8, !tbaa !244
  br i1 %85, label %302, label %306

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.ParticleThreadContext, ptr %0, i64 0, i32 10
  %304 = zext nneg i32 %1 to i64
  %305 = load ptr, ptr %303, align 8, !tbaa !222
  br label %308

306:                                              ; preds = %345, %293
  %307 = phi i32 [ 0, %293 ], [ %346, %345 ]
  br i1 %110, label %350, label %356

308:                                              ; preds = %302, %345
  %309 = phi i64 [ 0, %302 ], [ %348, %345 ]
  %310 = phi i32 [ 0, %302 ], [ %347, %345 ]
  %311 = phi i32 [ 0, %302 ], [ %346, %345 ]
  %312 = getelementptr inbounds i32, ptr %305, i64 %309
  %313 = load i32, ptr %312, align 4, !tbaa !38
  br i1 %62, label %316, label %314

314:                                              ; preds = %308
  %315 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %58, ptr noundef %61, i32 noundef %313) #24
  br label %316

316:                                              ; preds = %308, %314
  %317 = phi i32 [ %315, %314 ], [ %313, %308 ]
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %343, label %319

319:                                              ; preds = %316
  %320 = sext i32 %317 to i64
  %321 = getelementptr inbounds %struct.ParticleRenderElem, ptr %75, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !242
  %323 = add nsw i32 %322, 1
  store i32 %323, ptr %321, align 4, !tbaa !242
  %324 = sitofp i32 %322 to double
  %325 = getelementptr inbounds %struct.ParticleRenderElem, ptr %75, i64 %320, i32 3
  %326 = load float, ptr %325, align 4, !tbaa !241
  %327 = getelementptr inbounds %struct.ParticleRenderElem, ptr %75, i64 %320, i32 1
  %328 = load i32, ptr %327, align 4, !tbaa !223
  %329 = sitofp i32 %328 to float
  %330 = fmul float %326, %329
  %331 = call float @llvm.ceil.f32(float %330)
  %332 = fpext float %331 to double
  %333 = fcmp olt double %324, %332
  br i1 %333, label %334, label %341

334:                                              ; preds = %319
  %335 = getelementptr inbounds i32, ptr %305, i64 %309
  %336 = load i32, ptr %335, align 4, !tbaa !38
  %337 = sext i32 %311 to i64
  %338 = getelementptr inbounds i32, ptr %305, i64 %337
  store i32 %336, ptr %338, align 4, !tbaa !38
  %339 = getelementptr inbounds i32, ptr %300, i64 %337
  store i32 %310, ptr %339, align 4, !tbaa !38
  %340 = add nsw i32 %311, 1
  br label %345

341:                                              ; preds = %319
  %342 = add nsw i32 %310, 1
  br label %345

343:                                              ; preds = %316
  %344 = add nsw i32 %310, 1
  br label %345

345:                                              ; preds = %343, %341, %334
  %346 = phi i32 [ %340, %334 ], [ %311, %341 ], [ %311, %343 ]
  %347 = phi i32 [ 0, %334 ], [ %342, %341 ], [ %344, %343 ]
  %348 = add nuw nsw i64 %309, 1
  %349 = icmp eq i64 %348, %304
  br i1 %349, label %306, label %308, !llvm.loop !245

350:                                              ; preds = %306, %350
  %351 = phi ptr [ %354, %350 ], [ %75, %306 ]
  %352 = phi i32 [ %353, %350 ], [ 0, %306 ]
  store i32 0, ptr %351, align 4, !tbaa !242
  %353 = add nuw nsw i32 %352, 1
  %354 = getelementptr inbounds %struct.ParticleRenderElem, ptr %351, i64 1
  %355 = icmp eq i32 %353, %51
  br i1 %355, label %356, label %350, !llvm.loop !246

356:                                              ; preds = %350, %306, %40, %35, %31, %27, %2, %22
  %357 = phi i32 [ %1, %22 ], [ %1, %2 ], [ %1, %27 ], [ 0, %31 ], [ %1, %35 ], [ %1, %40 ], [ %307, %306 ], [ %307, %350 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  ret i32 %357
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !247 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !38
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !248 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !249 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !250 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @psys_render_projected_area(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, double noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !251 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 39
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #24
  %12 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.ParticleRenderData, ptr %11, i64 0, i32 13
  call void @mul_m4_v4(ptr noundef nonnull %13, ptr noundef nonnull %6) #23
  %14 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #24
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #23
  %15 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %16 = load float, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ParticleRenderData, ptr %11, i64 0, i32 14
  %18 = getelementptr inbounds %struct.ParticleRenderData, ptr %11, i64 0, i32 14, i64 2, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.ParticleRenderData, ptr %11, i64 0, i32 14, i64 3, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = call float @llvm.fmuladd.f32(float %16, float %19, float %21)
  %23 = getelementptr inbounds %struct.ParticleRenderData, ptr %11, i64 0, i32 15
  %24 = load i32, ptr %23, align 4, !tbaa !194
  %25 = sitofp i32 %24 to float
  %26 = load float, ptr %9, align 4, !tbaa !34
  %27 = fmul float %26, %25
  %28 = load float, ptr %17, align 4, !tbaa !34
  %29 = fmul float %27, %28
  %30 = getelementptr inbounds %struct.ParticleRenderData, ptr %11, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !195
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fmul float %34, %32
  %36 = getelementptr inbounds %struct.ParticleRenderData, ptr %11, i64 0, i32 14, i64 1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fmul float %35, %37
  %39 = fmul float %38, %38
  %40 = call float @llvm.fmuladd.f32(float %29, float %29, float %39)
  %41 = call float @llvm.sqrt.f32(float %40)
  %42 = fdiv float %41, %22
  %43 = fmul float %42, %2
  %44 = fmul float %42, %43
  call void @mul_m4_v4(ptr noundef nonnull %17, ptr noundef nonnull %6) #23
  %45 = load float, ptr %12, align 4, !tbaa !34
  %46 = fcmp une float %45, 0.000000e+00
  br i1 %46, label %47, label %57

47:                                               ; preds = %5
  %48 = load <2 x i32>, ptr %23, align 4, !tbaa !38
  %49 = sitofp <2 x i32> %48 to <2 x float>
  %50 = fmul <2 x float> %49, <float 5.000000e-01, float 5.000000e-01>
  %51 = load <2 x float>, ptr %6, align 16, !tbaa !34
  %52 = insertelement <2 x float> poison, float %45, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = fdiv <2 x float> %51, %53
  %55 = fadd <2 x float> %54, <float 1.000000e+00, float 1.000000e+00>
  %56 = fmul <2 x float> %50, %55
  store <2 x float> %56, ptr %6, align 16, !tbaa !34
  br label %57

57:                                               ; preds = %47, %5
  %58 = fdiv float %44, 0x400921FB60000000
  %59 = call float @sqrtf(float noundef %58) #23
  store float 1.000000e+00, ptr %4, align 4, !tbaa !34
  %60 = load float, ptr %6, align 16, !tbaa !34
  %61 = fadd float %59, %60
  %62 = fcmp olt float %61, 0.000000e+00
  %63 = load i32, ptr %23, align 4, !tbaa !194
  %64 = sitofp i32 %63 to float
  br i1 %62, label %65, label %67

65:                                               ; preds = %57
  %66 = fneg float %61
  br label %72

67:                                               ; preds = %57
  %68 = fsub float %60, %59
  %69 = fcmp ogt float %68, %64
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = fsub float %68, %64
  br label %72

72:                                               ; preds = %65, %70
  %73 = phi float [ %71, %70 ], [ %66, %65 ]
  %74 = call fastcc float @psys_render_viewport_falloff(double noundef %3, float noundef %73, float noundef %64) #24
  %75 = load float, ptr %4, align 4, !tbaa !34
  %76 = fmul float %74, %75
  store float %76, ptr %4, align 4, !tbaa !34
  br label %77

77:                                               ; preds = %72, %67
  %78 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = fadd float %59, %79
  %81 = fcmp olt float %80, 0.000000e+00
  %82 = load i32, ptr %30, align 8, !tbaa !195
  %83 = sitofp i32 %82 to float
  br i1 %81, label %84, label %86

84:                                               ; preds = %77
  %85 = fneg float %80
  br label %91

86:                                               ; preds = %77
  %87 = fsub float %79, %59
  %88 = fcmp ogt float %87, %83
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = fsub float %87, %83
  br label %91

91:                                               ; preds = %84, %89
  %92 = phi float [ %85, %84 ], [ %90, %89 ]
  %93 = call fastcc float @psys_render_viewport_falloff(double noundef %3, float noundef %92, float noundef %83) #24
  %94 = load float, ptr %4, align 4, !tbaa !34
  %95 = fmul float %93, %94
  store float %95, ptr %4, align 4, !tbaa !34
  br label %96

96:                                               ; preds = %91, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  ret float %44
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0) unnamed_addr #10 !PGOFuncName !252 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 10)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @psys_render_simplify_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 48
  %11 = load i16, ptr %10, align 4, !tbaa !211
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %72, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !219
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !220
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !221
  %25 = load i32, ptr %1, align 4, !tbaa !253
  %26 = tail call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %20, ptr noundef %24, i32 noundef %25) #24
  br label %29

27:                                               ; preds = %18
  %28 = load i32, ptr %1, align 4, !tbaa !253
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %26, %22 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %72, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ParticleRenderData, ptr %5, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = sext i32 %30 to i64
  %36 = getelementptr inbounds %struct.ParticleRenderElem, ptr %34, i64 %35
  %37 = getelementptr inbounds %struct.ParticleRenderElem, ptr %34, i64 %35, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !241
  %39 = getelementptr inbounds %struct.ParticleRenderElem, ptr %34, i64 %35, i32 4
  %40 = load float, ptr %39, align 4, !tbaa !237
  %41 = getelementptr inbounds %struct.ParticleRenderElem, ptr %34, i64 %35, i32 5
  %42 = load float, ptr %41, align 4, !tbaa !240
  %43 = getelementptr inbounds %struct.ParticleRenderElem, ptr %34, i64 %35, i32 6
  %44 = load float, ptr %43, align 4, !tbaa !239
  %45 = getelementptr inbounds %struct.ParticleRenderElem, ptr %34, i64 %35, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !238
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %36, align 4, !tbaa !242
  br i1 %47, label %67, label %49

49:                                               ; preds = %32
  %50 = sitofp i32 %48 to float
  %51 = fadd float %50, 5.000000e-01
  %52 = getelementptr inbounds %struct.ParticleRenderElem, ptr %34, i64 %35, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !223
  %54 = sitofp i32 %53 to float
  %55 = fdiv float %51, %54
  %56 = fsub float %38, %40
  %57 = fcmp olt float %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = fadd float %38, %40
  %60 = fcmp ult float %55, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = fsub float %59, %55
  %63 = fmul float %40, 2.000000e+00
  %64 = fdiv float %62, %63
  %65 = fsub float %44, %42
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %64, float %42)
  br label %67

67:                                               ; preds = %58, %49, %32, %61
  %68 = phi float [ %64, %61 ], [ 1.000000e+00, %32 ], [ 1.000000e+00, %49 ], [ 0.000000e+00, %58 ]
  %69 = phi float [ %66, %61 ], [ %42, %32 ], [ %44, %49 ], [ %42, %58 ]
  store float %69, ptr %2, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %2, i64 1
  store float %68, ptr %70, align 4, !tbaa !34
  %71 = add nsw i32 %48, 1
  store i32 %71, ptr %36, align 4, !tbaa !242
  br label %72

72:                                               ; preds = %29, %14, %3, %7, %67
  %73 = phi i8 [ 1, %67 ], [ 0, %7 ], [ 0, %3 ], [ 0, %14 ], [ 0, %29 ]
  ret i8 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_interpolate_particle(i16 noundef signext %0, ptr noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %8 = sext i16 %0 to i32
  %9 = icmp slt i16 %0, 0
  %10 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 1
  br i1 %9, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 1, i32 1
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 2
  %15 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 2, i32 1
  tail call void @interp_cubic_v3(ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %2) #23
  br label %28

16:                                               ; preds = %5
  call void @key_curve_position_weights(float noundef %2, ptr noundef nonnull %6, i32 noundef %8) #23
  %17 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 2
  %18 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 3
  call void @interp_v3_v3v3v3v3(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %6) #23
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  %21 = fcmp ogt float %2, 0x3FEFF7CEE0000000
  %22 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 1
  br i1 %21, label %23, label %25

23:                                               ; preds = %20
  %24 = fadd float %2, 0xBF50624DE0000000
  call void @key_curve_position_weights(float noundef %24, ptr noundef nonnull %6, i32 noundef %8) #23
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %6) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %22, ptr noundef %3, ptr noundef nonnull %7) #24
  br label %27

25:                                               ; preds = %20
  %26 = fadd float %2, 0x3F50624DE0000000
  call void @key_curve_position_weights(float noundef %26, ptr noundef nonnull %6, i32 noundef %8) #23
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %6) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %22, ptr noundef nonnull %7, ptr noundef %3) #24
  br label %27

27:                                               ; preds = %25, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  br label %28

28:                                               ; preds = %16, %27, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  ret void
}

; Function Attrs: optsize
declare void @interp_cubic_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !255 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @psys_get_dietime_from_cache(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %7, i32 noundef %1) #23
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PTCacheMem, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !256
  %13 = uitofp i32 %12 to float
  br label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.PTCacheMem, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !258

18:                                               ; preds = %14, %2, %10
  %19 = phi float [ %13, %10 ], [ 1.000000e+07, %2 ], [ 1.000000e+07, %14 ]
  ret float %19
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_mem_index_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_interpolate_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = alloca [3 x float], align 8
  %13 = alloca [3 x float], align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #25
  %19 = load i32, ptr %1, align 4, !tbaa !226
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %0, i64 %20
  %22 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !228
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.MVert, ptr %0, i64 %24
  %26 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !229
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MVert, ptr %0, i64 %28
  %30 = getelementptr inbounds %struct.MVert, ptr %0, i64 %20, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %14, ptr noundef nonnull %30) #24
  %31 = getelementptr inbounds %struct.MVert, ptr %0, i64 %24, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %15, ptr noundef nonnull %31) #24
  %32 = getelementptr inbounds %struct.MVert, ptr %0, i64 %28, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %16, ptr noundef nonnull %32) #24
  %33 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !230
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %11
  %37 = zext i32 %34 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %0, i64 %37
  %39 = getelementptr inbounds %struct.MVert, ptr %0, i64 %37, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %17, ptr noundef nonnull %39) #24
  tail call void @interp_v3_v3v3v3v3(ptr noundef %5, ptr noundef %21, ptr noundef %25, ptr noundef %29, ptr noundef nonnull %38, ptr noundef %4) #23
  %40 = icmp eq ptr %6, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 6
  %43 = load i8, ptr %42, align 1, !tbaa !259
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %4) #23
  br label %59

47:                                               ; preds = %41
  %48 = tail call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %21, ptr noundef %25, ptr noundef %29, ptr noundef nonnull %38) #23
  br label %59

49:                                               ; preds = %11
  tail call void @interp_v3_v3v3v3(ptr noundef %5, ptr noundef %21, ptr noundef %25, ptr noundef %29, ptr noundef %4) #23
  %50 = icmp eq ptr %6, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 6
  %53 = load i8, ptr %52, align 1, !tbaa !259
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  call void @interp_v3_v3v3v3(ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %4) #23
  br label %59

57:                                               ; preds = %51
  %58 = tail call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %21, ptr noundef %25, ptr noundef %29) #23
  br label %59

59:                                               ; preds = %49, %57, %56, %36, %47, %46
  %60 = phi ptr [ %38, %46 ], [ %38, %47 ], [ %38, %36 ], [ null, %56 ], [ null, %57 ], [ null, %49 ]
  %61 = icmp ne ptr %7, null
  %62 = icmp ne ptr %8, null
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %151

64:                                               ; preds = %59
  %65 = icmp eq ptr %2, null
  br i1 %65, label %66, label %96

66:                                               ; preds = %64
  %67 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 1
  %68 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 2
  %69 = getelementptr inbounds float, ptr %18, i64 1
  %70 = load float, ptr %21, align 4, !tbaa !34
  %71 = getelementptr inbounds float, ptr %21, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %21, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %18, ptr noundef nonnull %69, float noundef %70, float noundef %72, float noundef %74) #23
  %75 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 1, i64 1
  %76 = load float, ptr %25, align 4, !tbaa !34
  %77 = getelementptr inbounds float, ptr %25, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = getelementptr inbounds float, ptr %25, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %67, ptr noundef nonnull %75, float noundef %76, float noundef %78, float noundef %80) #23
  %81 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 2, i64 1
  %82 = load float, ptr %29, align 4, !tbaa !34
  %83 = getelementptr inbounds float, ptr %29, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = getelementptr inbounds float, ptr %29, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %68, ptr noundef nonnull %81, float noundef %82, float noundef %84, float noundef %86) #23
  %87 = icmp eq ptr %60, null
  br i1 %87, label %111, label %88

88:                                               ; preds = %66
  %89 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 3
  %90 = getelementptr inbounds [4 x [2 x float]], ptr %18, i64 0, i64 3, i64 1
  %91 = load float, ptr %60, align 4, !tbaa !34
  %92 = getelementptr inbounds float, ptr %60, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %60, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !34
  call void @map_to_sphere(ptr noundef nonnull %89, ptr noundef nonnull %90, float noundef %91, float noundef %93, float noundef %95) #23
  br label %101

96:                                               ; preds = %64
  %97 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 1
  %98 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 2
  %99 = getelementptr inbounds [4 x [2 x float]], ptr %2, i64 0, i64 3
  %100 = icmp eq ptr %60, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %88, %96
  %102 = phi ptr [ %89, %88 ], [ %99, %96 ]
  %103 = phi ptr [ %68, %88 ], [ %98, %96 ]
  %104 = phi ptr [ %18, %88 ], [ %2, %96 ]
  %105 = load <2 x float>, ptr %103, align 4, !tbaa !34
  %106 = load <2 x float>, ptr %104, align 4, !tbaa !34
  %107 = shufflevector <2 x float> %106, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %108 = load <2 x float>, ptr %102, align 4, !tbaa !34
  %109 = shufflevector <2 x float> %105, <2 x float> %108, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %110 = fsub <4 x float> %109, %107
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %29, ptr noundef %21) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %60, ptr noundef %21) #24
  br label %121

111:                                              ; preds = %66, %96
  %112 = phi ptr [ %98, %96 ], [ %68, %66 ]
  %113 = phi ptr [ %97, %96 ], [ %67, %66 ]
  %114 = phi ptr [ %2, %96 ], [ %18, %66 ]
  %115 = load <2 x float>, ptr %113, align 4, !tbaa !34
  %116 = load <2 x float>, ptr %114, align 4, !tbaa !34
  %117 = shufflevector <2 x float> %116, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %118 = load <2 x float>, ptr %112, align 4, !tbaa !34
  %119 = shufflevector <2 x float> %115, <2 x float> %118, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %120 = fsub <4 x float> %119, %117
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %25, ptr noundef %21) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef %29, ptr noundef %21) #24
  br label %121

121:                                              ; preds = %111, %101
  %122 = phi <4 x float> [ %110, %101 ], [ %120, %111 ]
  %123 = extractelement <4 x float> %122, i64 2
  %124 = fneg float %123
  %125 = load <2 x float>, ptr %13, align 8, !tbaa !34
  %126 = load <2 x float>, ptr %12, align 8, !tbaa !34
  %127 = insertelement <2 x float> poison, float %124, i64 0
  %128 = shufflevector <2 x float> %127, <2 x float> poison, <2 x i32> zeroinitializer
  %129 = fmul <2 x float> %126, %128
  %130 = shufflevector <4 x float> %122, <4 x float> poison, <2 x i32> zeroinitializer
  %131 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %130, <2 x float> %125, <2 x float> %129)
  store <2 x float> %131, ptr %8, align 4, !tbaa !34
  %132 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %133 = load float, ptr %132, align 8, !tbaa !34
  %134 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %135 = load float, ptr %134, align 8, !tbaa !34
  %136 = fmul float %135, %124
  %137 = extractelement <4 x float> %122, i64 0
  %138 = call float @llvm.fmuladd.f32(float %137, float %133, float %136)
  %139 = getelementptr inbounds float, ptr %8, i64 2
  store float %138, ptr %139, align 4, !tbaa !34
  %140 = extractelement <4 x float> %122, i64 3
  %141 = fneg float %140
  %142 = insertelement <2 x float> poison, float %141, i64 0
  %143 = shufflevector <2 x float> %142, <2 x float> poison, <2 x i32> zeroinitializer
  %144 = fmul <2 x float> %126, %143
  %145 = shufflevector <4 x float> %122, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %146 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %145, <2 x float> %125, <2 x float> %144)
  store <2 x float> %146, ptr %7, align 4, !tbaa !34
  %147 = fmul float %135, %141
  %148 = extractelement <4 x float> %122, i64 1
  %149 = call float @llvm.fmuladd.f32(float %148, float %133, float %147)
  %150 = getelementptr inbounds float, ptr %7, i64 2
  store float %149, ptr %150, align 4, !tbaa !34
  br label %151

151:                                              ; preds = %121, %59
  %152 = icmp eq ptr %9, null
  br i1 %152, label %182, label %153

153:                                              ; preds = %151
  %154 = icmp eq ptr %3, null
  br i1 %154, label %177, label %155

155:                                              ; preds = %153
  %156 = load i32, ptr %1, align 4, !tbaa !226
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [3 x float], ptr %3, i64 %157
  %159 = load i32, ptr %22, align 4, !tbaa !228
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [3 x float], ptr %3, i64 %160
  %162 = load i32, ptr %26, align 4, !tbaa !229
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [3 x float], ptr %3, i64 %163
  %165 = load i32, ptr %33, align 4, !tbaa !230
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %155
  %168 = zext i32 %165 to i64
  %169 = getelementptr inbounds [3 x float], ptr %3, i64 %168
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %9, ptr noundef nonnull %158, ptr noundef nonnull %161, ptr noundef nonnull %164, ptr noundef nonnull %169, ptr noundef %4) #23
  %170 = icmp eq ptr %10, null
  br i1 %170, label %182, label %171

171:                                              ; preds = %167
  %172 = call float @normal_quad_v3(ptr noundef nonnull %10, ptr noundef nonnull %158, ptr noundef nonnull %161, ptr noundef nonnull %164, ptr noundef nonnull %169) #23
  br label %182

173:                                              ; preds = %155
  call void @interp_v3_v3v3v3(ptr noundef nonnull %9, ptr noundef nonnull %158, ptr noundef nonnull %161, ptr noundef nonnull %164, ptr noundef %4) #23
  %174 = icmp eq ptr %10, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %173
  %176 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %158, ptr noundef nonnull %161, ptr noundef nonnull %164) #23
  br label %182

177:                                              ; preds = %153
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %5) #24
  %178 = icmp ne ptr %10, null
  %179 = icmp ne ptr %6, null
  %180 = and i1 %179, %178
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %6) #24
  br label %182

182:                                              ; preds = %173, %175, %167, %171, %181, %177, %151
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !260 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !261
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !261
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @psys_interpolate_uvs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #8 {
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
  store float %57, ptr %58, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @psys_interpolate_mcol(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #13 {
  %5 = getelementptr inbounds %struct.MCol, ptr %0, i64 1
  %6 = getelementptr inbounds %struct.MCol, ptr %0, i64 2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %92, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MCol, ptr %0, i64 3
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load i8, ptr %0, align 1, !tbaa !262
  %12 = uitofp i8 %11 to float
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load i8, ptr %5, align 1, !tbaa !262
  %16 = uitofp i8 %15 to float
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %17)
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = load i8, ptr %6, align 1, !tbaa !262
  %22 = uitofp i8 %21 to float
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %18)
  %24 = getelementptr inbounds float, ptr %2, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load i8, ptr %9, align 1, !tbaa !262
  %27 = uitofp i8 %26 to float
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %27, float %23)
  %29 = fptosi float %28 to i32
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %3, align 1, !tbaa !262
  %31 = load float, ptr %2, align 4, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %0, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !262
  %34 = uitofp i8 %33 to float
  %35 = load float, ptr %13, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 1
  %37 = load i8, ptr %36, align 1, !tbaa !262
  %38 = uitofp i8 %37 to float
  %39 = fmul float %35, %38
  %40 = tail call float @llvm.fmuladd.f32(float %31, float %34, float %39)
  %41 = load float, ptr %19, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 1
  %43 = load i8, ptr %42, align 1, !tbaa !262
  %44 = uitofp i8 %43 to float
  %45 = tail call float @llvm.fmuladd.f32(float %41, float %44, float %40)
  %46 = load float, ptr %24, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.MCol, ptr %0, i64 3, i32 1
  %48 = load i8, ptr %47, align 1, !tbaa !262
  %49 = uitofp i8 %48 to float
  %50 = tail call float @llvm.fmuladd.f32(float %46, float %49, float %45)
  %51 = fptosi float %50 to i32
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %52, ptr %53, align 1, !tbaa !262
  %54 = load float, ptr %2, align 4, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %0, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !262
  %57 = uitofp i8 %56 to float
  %58 = load float, ptr %13, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 2
  %60 = load i8, ptr %59, align 1, !tbaa !262
  %61 = uitofp i8 %60 to float
  %62 = fmul float %58, %61
  %63 = tail call float @llvm.fmuladd.f32(float %54, float %57, float %62)
  %64 = load float, ptr %19, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 2
  %66 = load i8, ptr %65, align 1, !tbaa !262
  %67 = uitofp i8 %66 to float
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %67, float %63)
  %69 = load float, ptr %24, align 4, !tbaa !34
  %70 = getelementptr inbounds %struct.MCol, ptr %0, i64 3, i32 2
  %71 = load i8, ptr %70, align 1, !tbaa !262
  %72 = uitofp i8 %71 to float
  %73 = tail call float @llvm.fmuladd.f32(float %69, float %72, float %68)
  %74 = fptosi float %73 to i32
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %75, ptr %76, align 1, !tbaa !262
  %77 = load float, ptr %2, align 4, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %0, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !262
  %80 = uitofp i8 %79 to float
  %81 = load float, ptr %13, align 4, !tbaa !34
  %82 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 3
  %83 = load i8, ptr %82, align 1, !tbaa !262
  %84 = uitofp i8 %83 to float
  %85 = fmul float %81, %84
  %86 = tail call float @llvm.fmuladd.f32(float %77, float %80, float %85)
  %87 = load float, ptr %19, align 4, !tbaa !34
  %88 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 3
  %89 = load i8, ptr %88, align 1, !tbaa !262
  %90 = uitofp i8 %89 to float
  %91 = tail call float @llvm.fmuladd.f32(float %87, float %90, float %86)
  br label %155

92:                                               ; preds = %4
  %93 = load float, ptr %2, align 4, !tbaa !34
  %94 = load i8, ptr %0, align 1, !tbaa !262
  %95 = uitofp i8 %94 to float
  %96 = getelementptr inbounds float, ptr %2, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = load i8, ptr %5, align 1, !tbaa !262
  %99 = uitofp i8 %98 to float
  %100 = fmul float %97, %99
  %101 = tail call float @llvm.fmuladd.f32(float %93, float %95, float %100)
  %102 = getelementptr inbounds float, ptr %2, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = load i8, ptr %6, align 1, !tbaa !262
  %105 = uitofp i8 %104 to float
  %106 = tail call float @llvm.fmuladd.f32(float %103, float %105, float %101)
  %107 = fptosi float %106 to i32
  %108 = trunc i32 %107 to i8
  store i8 %108, ptr %3, align 1, !tbaa !262
  %109 = load float, ptr %2, align 4, !tbaa !34
  %110 = getelementptr inbounds i8, ptr %0, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !262
  %112 = uitofp i8 %111 to float
  %113 = load float, ptr %96, align 4, !tbaa !34
  %114 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 1
  %115 = load i8, ptr %114, align 1, !tbaa !262
  %116 = uitofp i8 %115 to float
  %117 = fmul float %113, %116
  %118 = tail call float @llvm.fmuladd.f32(float %109, float %112, float %117)
  %119 = load float, ptr %102, align 4, !tbaa !34
  %120 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 1
  %121 = load i8, ptr %120, align 1, !tbaa !262
  %122 = uitofp i8 %121 to float
  %123 = tail call float @llvm.fmuladd.f32(float %119, float %122, float %118)
  %124 = fptosi float %123 to i32
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %125, ptr %126, align 1, !tbaa !262
  %127 = load float, ptr %2, align 4, !tbaa !34
  %128 = getelementptr inbounds i8, ptr %0, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !262
  %130 = uitofp i8 %129 to float
  %131 = load float, ptr %96, align 4, !tbaa !34
  %132 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 2
  %133 = load i8, ptr %132, align 1, !tbaa !262
  %134 = uitofp i8 %133 to float
  %135 = fmul float %131, %134
  %136 = tail call float @llvm.fmuladd.f32(float %127, float %130, float %135)
  %137 = load float, ptr %102, align 4, !tbaa !34
  %138 = getelementptr inbounds %struct.MCol, ptr %0, i64 2, i32 2
  %139 = load i8, ptr %138, align 1, !tbaa !262
  %140 = uitofp i8 %139 to float
  %141 = tail call float @llvm.fmuladd.f32(float %137, float %140, float %136)
  %142 = fptosi float %141 to i32
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %143, ptr %144, align 1, !tbaa !262
  %145 = load float, ptr %2, align 4, !tbaa !34
  %146 = getelementptr inbounds i8, ptr %0, i64 3
  %147 = load i8, ptr %146, align 1, !tbaa !262
  %148 = uitofp i8 %147 to float
  %149 = load float, ptr %96, align 4, !tbaa !34
  %150 = getelementptr inbounds %struct.MCol, ptr %0, i64 1, i32 3
  %151 = load i8, ptr %150, align 1, !tbaa !262
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
  %161 = load i8, ptr %160, align 1, !tbaa !262
  %162 = uitofp i8 %161 to float
  %163 = tail call float @llvm.fmuladd.f32(float %159, float %162, float %158)
  %164 = fptosi float %163 to i32
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %165, ptr %166, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @psys_particle_dm_face_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = tail call ptr %10(ptr noundef %1, i32 noundef 7) #23
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 54
  %13 = load ptr, ptr %12, align 8, !tbaa !218
  %14 = tail call ptr %13(ptr noundef %1, i32 noundef 7) #23
  %15 = icmp eq ptr %11, null
  %16 = select i1 %15, ptr null, ptr %14
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !214
  %19 = tail call i32 %18(ptr noundef %1) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %92, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !263
  %24 = tail call ptr %23(ptr noundef nonnull %1) #23
  %25 = load ptr, ptr %9, align 8, !tbaa !217
  %26 = tail call ptr %25(ptr noundef nonnull %1, i32 noundef 13) #23
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, i1 true, i1 %15
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = icmp sgt i32 %19, %2
  br i1 %30, label %92, label %31

31:                                               ; preds = %29
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %92

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %35 = load i32, ptr %34, align 8, !tbaa !215
  %36 = icmp sgt i32 %35, %2
  br i1 %36, label %37, label %92

37:                                               ; preds = %33
  call fastcc void @psys_w_to_origspace(ptr noundef %3, ptr noundef nonnull %6) #24
  %38 = icmp eq ptr %4, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = icmp sgt i32 %19, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %39
  %42 = zext nneg i32 %19 to i64
  br label %66

43:                                               ; preds = %37, %63
  %44 = phi ptr [ %64, %63 ], [ %4, %37 ]
  %45 = getelementptr inbounds %struct.LinkNode, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !264
  %47 = ptrtoint ptr %46 to i64
  %48 = shl i64 %47, 32
  %49 = ashr exact i64 %48, 32
  %50 = getelementptr inbounds %struct.OrigSpaceFace, ptr %26, i64 %49
  %51 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %49, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !266
  %53 = icmp eq i32 %52, 4
  %54 = getelementptr inbounds [2 x float], ptr %50, i64 1
  %55 = getelementptr inbounds [2 x float], ptr %50, i64 2
  br i1 %53, label %56, label %60

56:                                               ; preds = %43
  %57 = getelementptr inbounds [2 x float], ptr %50, i64 3
  %58 = call i32 @isect_point_quad_v2(ptr noundef nonnull %6, ptr noundef %50, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %57) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %88

60:                                               ; preds = %43
  %61 = call i32 @isect_point_tri_v2(ptr noundef nonnull %6, ptr noundef %50, ptr noundef nonnull %54, ptr noundef nonnull %55) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %56, %60
  %64 = load ptr, ptr %44, align 8, !tbaa !268
  %65 = icmp eq ptr %64, null
  br i1 %65, label %92, label %43, !llvm.loop !269

66:                                               ; preds = %41, %85
  %67 = phi i64 [ 0, %41 ], [ %86, %85 ]
  %68 = trunc i64 %67 to i32
  %69 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef %11, ptr noundef %16, i32 noundef %68) #24
  %70 = icmp eq i32 %69, %2
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.OrigSpaceFace, ptr %26, i64 %67
  %73 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %67, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !266
  %75 = icmp eq i32 %74, 4
  %76 = getelementptr inbounds [2 x float], ptr %72, i64 1
  %77 = getelementptr inbounds [2 x float], ptr %72, i64 2
  br i1 %75, label %78, label %82

78:                                               ; preds = %71
  %79 = getelementptr inbounds [2 x float], ptr %72, i64 3
  %80 = call i32 @isect_point_quad_v2(ptr noundef nonnull %6, ptr noundef %72, ptr noundef nonnull %76, ptr noundef nonnull %77, ptr noundef nonnull %79) #23
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %92

82:                                               ; preds = %71
  %83 = call i32 @isect_point_tri_v2(ptr noundef nonnull %6, ptr noundef %72, ptr noundef nonnull %76, ptr noundef nonnull %77) #23
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78, %82, %66
  %86 = add nuw nsw i64 %67, 1
  %87 = icmp eq i64 %86, %42
  br i1 %87, label %92, label %66, !llvm.loop !270

88:                                               ; preds = %56
  %89 = trunc i64 %47 to i32
  br label %92

90:                                               ; preds = %60
  %91 = trunc i64 %47 to i32
  br label %92

92:                                               ; preds = %63, %85, %78, %82, %88, %90, %39, %33, %29, %5, %31
  %93 = phi i32 [ -1, %31 ], [ -1, %5 ], [ %2, %29 ], [ -1, %33 ], [ -1, %39 ], [ %89, %88 ], [ %91, %90 ], [ -1, %85 ], [ %68, %78 ], [ %68, %82 ], [ -1, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret i32 %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @psys_w_to_origspace(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 !PGOFuncName !271 {
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fadd float %4, %6
  store float %7, ptr %1, align 4, !tbaa !34
  %8 = load float, ptr %5, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 3
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %1, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @isect_point_tri_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_particle_on_dm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #25
  %16 = call fastcc i32 @psys_map_index_on_dm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %15, ptr noundef nonnull %14) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = icmp eq ptr %6, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %21, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !34
  br label %22

22:                                               ; preds = %20, %18
  %23 = icmp eq ptr %7, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %7, i64 2
  store float 1.000000e+00, ptr %25, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %24, %22
  %27 = icmp eq ptr %10, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds float, ptr %10, i64 2
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %10, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %28, %26
  %31 = icmp eq ptr %11, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  store <2 x float> zeroinitializer, ptr %11, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %11, i64 2
  store float 1.000000e+00, ptr %33, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %32, %30
  %35 = icmp eq ptr %8, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %37, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %8, align 4, !tbaa !34
  br label %38

38:                                               ; preds = %36, %34
  %39 = icmp eq ptr %9, null
  br i1 %39, label %94, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %41, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %9, align 4, !tbaa !34
  br label %94

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %44 = load ptr, ptr %43, align 8, !tbaa !272
  %45 = call ptr %44(ptr noundef %0, i32 noundef 14) #23
  %46 = icmp eq i32 %1, 0
  %47 = load i32, ptr %15, align 4
  br i1 %46, label %48, label %74

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %50 = load ptr, ptr %49, align 8, !tbaa !273
  call void %50(ptr noundef nonnull %0, i32 noundef %47, ptr noundef %6) #23
  %51 = icmp eq ptr %7, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %54 = load ptr, ptr %53, align 8, !tbaa !274
  call void %54(ptr noundef nonnull %0, i32 noundef %47, ptr noundef nonnull %7) #23
  %55 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #24
  br label %56

56:                                               ; preds = %52, %48
  %57 = icmp eq ptr %10, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  %59 = sext i32 %47 to i64
  %60 = getelementptr inbounds [3 x float], ptr %45, i64 %59
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %60) #24
  br label %61

61:                                               ; preds = %58, %56
  %62 = icmp eq ptr %11, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %65 = load ptr, ptr %64, align 8, !tbaa !274
  call void %65(ptr noundef nonnull %0, i32 noundef %47, ptr noundef nonnull %11) #23
  %66 = call fastcc float @normalize_v3(ptr noundef nonnull %11) #24
  br label %67

67:                                               ; preds = %63, %61
  %68 = icmp ne ptr %8, null
  %69 = icmp ne ptr %9, null
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %72, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %8, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %73, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %9, align 4, !tbaa !34
  br label %94

74:                                               ; preds = %42
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %76 = load ptr, ptr %75, align 8, !tbaa !275
  %77 = call ptr %76(ptr noundef nonnull %0, i32 noundef %47, i32 noundef 4) #23
  %78 = load ptr, ptr %43, align 8, !tbaa !272
  %79 = call ptr %78(ptr noundef nonnull %0, i32 noundef 0) #23
  %80 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %81 = call ptr @CustomData_get_layer(ptr noundef nonnull %80, i32 noundef 5) #23
  %82 = icmp eq ptr %81, null
  %83 = sext i32 %47 to i64
  %84 = getelementptr inbounds %struct.MTFace, ptr %81, i64 %83
  %85 = select i1 %82, ptr null, ptr %84
  %86 = icmp eq i32 %1, 2
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  call void @psys_interpolate_face(ptr noundef %79, ptr noundef %77, ptr noundef %85, ptr noundef %45, ptr noundef nonnull %14, ptr noundef %6, ptr noundef nonnull %13, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #24
  %88 = icmp eq ptr %7, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %87
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %13) #24
  br label %90

90:                                               ; preds = %89, %87
  %91 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #24
  %92 = fneg float %5
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef %92) #24
  call fastcc void @add_v3_v3(ptr noundef %6, ptr noundef nonnull %13) #24
  br label %94

93:                                               ; preds = %74
  call void @psys_interpolate_face(ptr noundef %79, ptr noundef %77, ptr noundef %85, ptr noundef %45, ptr noundef nonnull %14, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #24
  br label %94

94:                                               ; preds = %71, %67, %93, %90, %38, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @psys_map_index_on_dm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !276 {
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !277
  %12 = icmp ne i32 %11, 0
  %13 = icmp eq i32 %3, -2
  %14 = or i1 %13, %12
  %15 = icmp eq i32 %1, 0
  br i1 %14, label %16, label %29

16:                                               ; preds = %9
  br i1 %15, label %17, label %23

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  %20 = tail call i32 %19(ptr noundef nonnull %0) #23
  %21 = icmp sgt i32 %20, %2
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  store i32 %2, ptr %5, align 4, !tbaa !38
  br label %58

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !214
  %26 = tail call i32 %25(ptr noundef nonnull %0) #23
  %27 = icmp sgt i32 %26, %2
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  store i32 %2, ptr %5, align 4, !tbaa !38
  tail call fastcc void @copy_v4_v4(ptr noundef %6, ptr noundef %4) #24
  br label %58

29:                                               ; preds = %9
  %30 = icmp eq i32 %3, -1
  br i1 %15, label %31, label %38

31:                                               ; preds = %29
  br i1 %30, label %58, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %34 = load ptr, ptr %33, align 8, !tbaa !278
  %35 = tail call i32 %34(ptr noundef nonnull %0) #23
  %36 = icmp slt i32 %35, %3
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  store i32 %3, ptr %5, align 4, !tbaa !38
  br label %58

38:                                               ; preds = %29
  br i1 %30, label %58, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %41 = load ptr, ptr %40, align 8, !tbaa !214
  %42 = tail call i32 %41(ptr noundef nonnull %0) #23
  %43 = icmp sgt i32 %42, %3
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  store i32 %3, ptr %5, align 4, !tbaa !38
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %46 = load ptr, ptr %45, align 8, !tbaa !217
  %47 = tail call ptr %46(ptr noundef nonnull %0, i32 noundef 13) #23
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %49 = load ptr, ptr %48, align 8, !tbaa !275
  %50 = tail call ptr %49(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 4) #23
  %51 = icmp eq ptr %47, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %58

53:                                               ; preds = %44
  %54 = sext i32 %3 to i64
  %55 = getelementptr inbounds %struct.OrigSpaceFace, ptr %47, i64 %54
  %56 = getelementptr inbounds %struct.MFace, ptr %50, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !230
  tail call fastcc void @psys_origspace_to_w(ptr noundef nonnull %55, i32 noundef %57, ptr noundef %4, ptr noundef %6) #24
  br label %58

58:                                               ; preds = %52, %53, %28, %22, %37, %39, %38, %31, %32, %23, %17, %7
  %59 = phi i32 [ 0, %7 ], [ 0, %17 ], [ 0, %23 ], [ 0, %32 ], [ 0, %31 ], [ 0, %38 ], [ 0, %39 ], [ 1, %37 ], [ 1, %22 ], [ 1, %28 ], [ 1, %53 ], [ 1, %52 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !279 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #24
  ret float %2
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @psys_particle_value_from_verts(ptr noundef %0, i16 noundef signext %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %7 = sext i16 %1 to i32
  %8 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !280
  %10 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !281
  %12 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 11
  %13 = call fastcc i32 @psys_map_index_on_dm(ptr noundef %0, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, ptr %6, align 4, !tbaa !38
  %17 = call fastcc float @psys_interpolate_value_from_verts(ptr noundef %0, i16 noundef signext %1, i32 noundef %16, ptr noundef nonnull %5, ptr noundef %3) #24
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi float [ %17, %15 ], [ 0.000000e+00, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  ret float %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @psys_interpolate_value_from_verts(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4) unnamed_addr #0 !PGOFuncName !282 {
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i32 %2, -1
  %8 = or i1 %7, %6
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  switch i16 %1, label %38 [
    i16 0, label %10
    i16 1, label %14
    i16 2, label %14
  ]

10:                                               ; preds = %9
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds float, ptr %4, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !34
  br label %38

14:                                               ; preds = %9, %9
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %16 = load ptr, ptr %15, align 8, !tbaa !275
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef %2, i32 noundef 4) #23
  %18 = load i32, ptr %17, align 4, !tbaa !226
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds float, ptr %4, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !228
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds float, ptr %4, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !229
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %4, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !230
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %4, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = tail call fastcc float @interpolate_particle_value(float noundef %21, float noundef %26, float noundef %31, float noundef %36, ptr noundef %3, i32 noundef %33) #24
  br label %38

38:                                               ; preds = %9, %5, %14, %10
  %39 = phi float [ %37, %14 ], [ %13, %10 ], [ 0.000000e+00, %5 ], [ 0.000000e+00, %9 ]
  ret float %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_particle_on_emitter(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
  %13 = icmp eq ptr %0, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 9
  %24 = load i16, ptr %23, align 4, !tbaa !283
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 8
  %28 = load i16, ptr %27, align 2, !tbaa !284
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %6, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %4) #24
  br label %33

33:                                               ; preds = %32, %30
  %34 = icmp eq ptr %10, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %4) #24
  br label %38

36:                                               ; preds = %26, %18
  tail call void @psys_particle_on_dm(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #24
  br label %38

37:                                               ; preds = %14, %12
  tail call fastcc void @psys_particle_on_shape(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #24
  br label %38

38:                                               ; preds = %33, %35, %37, %36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @psys_particle_on_shape(ptr noundef writeonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #8 !PGOFuncName !285 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %8 = icmp eq ptr %0, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %7) #24
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %7) #24
  br label %13

13:                                               ; preds = %12, %10
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %7) #24
  br label %16

16:                                               ; preds = %15, %13
  %17 = icmp eq ptr %3, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #24
  br label %19

19:                                               ; preds = %18, %16
  %20 = icmp eq ptr %4, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #24
  br label %22

22:                                               ; preds = %21, %19
  %23 = icmp eq ptr %5, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #24
  br label %25

25:                                               ; preds = %24, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @precalc_guides(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EffectedPoint, align 8
  %4 = alloca %struct.ParticleKey, align 4
  %5 = alloca %struct.EffectorData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #25
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = icmp eq ptr %1, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 3
  %24 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 1
  %25 = getelementptr inbounds %struct.EffectorData, ptr %5, i64 0, i32 4
  br label %26

26:                                               ; preds = %17, %77
  %27 = phi i64 [ 0, %17 ], [ %78, %77 ]
  %28 = phi ptr [ %19, %17 ], [ %79, %77 ]
  %29 = load ptr, ptr %20, align 8, !tbaa !286
  %30 = load ptr, ptr %6, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.ParticleSettings, ptr %32, i64 0, i32 8
  %34 = load i16, ptr %33, align 2, !tbaa !284
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !280
  %38 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 0, i32 10
  %39 = load i32, ptr %38, align 4, !tbaa !281
  %40 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 0, i32 11
  %41 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 0, i32 12
  %42 = load float, ptr %41, align 8, !tbaa !287
  call void @psys_particle_on_emitter(ptr noundef %29, i32 noundef %35, i32 noundef %37, i32 noundef %39, ptr noundef nonnull %40, float noundef %42, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %43 = load ptr, ptr %21, align 8, !tbaa !67
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %44, ptr noundef nonnull %4) #23
  %45 = load ptr, ptr %21, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %46, ptr noundef nonnull %22) #23
  call void @pd_point_from_particle(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %47 = load ptr, ptr %1, align 8, !tbaa !58
  %48 = icmp eq ptr %47, null
  br i1 %48, label %77, label %49

49:                                               ; preds = %26, %74
  %50 = phi ptr [ %75, %74 ], [ %47, %26 ]
  %51 = getelementptr inbounds %struct.EffectorCache, ptr %50, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !288
  %53 = getelementptr inbounds %struct.PartDeflect, ptr %52, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !290
  %55 = icmp eq i16 %54, 5
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.EffectorCache, ptr %50, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !292
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %62 = load i32, ptr %14, align 8, !tbaa !42
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 4
  %65 = call ptr %61(i64 noundef %64, ptr noundef nonnull @.str.7) #23
  store ptr %65, ptr %57, align 8, !tbaa !292
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi ptr [ %65, %60 ], [ %58, %56 ]
  %68 = getelementptr inbounds %struct.GuideEffectorData, ptr %67, i64 %27
  %69 = getelementptr inbounds %struct.EffectorCache, ptr %50, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %4, ptr noundef nonnull %69) #24
  %70 = getelementptr inbounds %struct.EffectorCache, ptr %50, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %70) #24
  %71 = call fastcc float @len_v3(ptr noundef nonnull %23) #24
  store float %71, ptr %25, align 8, !tbaa !293
  call fastcc void @copy_v3_v3(ptr noundef %68, ptr noundef nonnull %23) #24
  %72 = call float @effector_falloff(ptr noundef nonnull %50, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %11) #23
  %73 = getelementptr inbounds %struct.GuideEffectorData, ptr %67, i64 %27, i32 1
  store float %72, ptr %73, align 4, !tbaa !295
  br label %74

74:                                               ; preds = %49, %66
  %75 = load ptr, ptr %50, align 8, !tbaa !58
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %49, !llvm.loop !297

77:                                               ; preds = %74, %26
  %78 = add nuw nsw i64 %27, 1
  %79 = getelementptr inbounds %struct.ParticleData, ptr %28, i64 1
  %80 = load i32, ptr %14, align 8, !tbaa !42
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %26, label %83, !llvm.loop !298

83:                                               ; preds = %77, %13, %2
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pd_point_from_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !299 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #24
  %3 = tail call float @sqrtf(float noundef %2) #23
  ret float %3
}

; Function Attrs: optsize
declare float @effector_falloff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @do_guides(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ParticleKey, align 4
  %6 = alloca %struct.ParticleKey, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #25
  %16 = icmp eq ptr %0, null
  br i1 %16, label %139, label %17

17:                                               ; preds = %4
  %18 = load ptr, ptr %0, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %139, label %20

20:                                               ; preds = %17
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %23 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %24

24:                                               ; preds = %20, %122
  %25 = phi ptr [ %18, %20 ], [ %124, %122 ]
  %26 = phi float [ 0.000000e+00, %20 ], [ %123, %122 ]
  %27 = getelementptr inbounds %struct.EffectorCache, ptr %25, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !288
  %29 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 2
  %30 = load i16, ptr %29, align 2, !tbaa !290
  %31 = icmp eq i16 %30, 5
  br i1 %31, label %32, label %122

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.EffectorCache, ptr %25, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !292
  %35 = getelementptr inbounds %struct.GuideEffectorData, ptr %34, i64 %21
  %36 = getelementptr inbounds %struct.GuideEffectorData, ptr %34, i64 %21, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !295
  %38 = fcmp ugt float %37, 0.000000e+00
  br i1 %38, label %39, label %122

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 34
  %41 = load float, ptr %40, align 8, !tbaa !300
  %42 = fsub float 1.000000e+00, %41
  %43 = fdiv float %3, %42
  %44 = fcmp ogt float %43, 1.000000e+00
  br i1 %44, label %122, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.EffectorCache, ptr %25, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !301
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !208
  %50 = load i32, ptr %28, align 8, !tbaa !302
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = fmul float %37, %43
  %55 = call i32 @where_on_path(ptr noundef nonnull %47, float noundef %54, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %14) #23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %139, label %60

57:                                               ; preds = %45
  %58 = call i32 @where_on_path(ptr noundef nonnull %47, float noundef %43, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %14) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %139, label %60

60:                                               ; preds = %57, %53
  %61 = load ptr, ptr %46, align 8, !tbaa !301
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %62, ptr noundef nonnull %9) #23
  %63 = load ptr, ptr %46, align 8, !tbaa !301
  %64 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %10) #23
  %65 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %35) #24
  %66 = fcmp une float %43, 0.000000e+00
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.EffectorCache, ptr %25, i64 0, i32 9
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %68, ptr noundef nonnull %10) #24
  %69 = call fastcc float @dot_v3v3(ptr noundef nonnull %68, ptr noundef nonnull %10) #24
  %70 = call fastcc float @len_v3(ptr noundef nonnull %68) #24
  %71 = fdiv float %69, %70
  %72 = call fastcc float @saacos(float noundef %71) #24
  call void @axis_angle_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef %72) #23
  call void @mul_qt_v3(ptr noundef nonnull %11, ptr noundef nonnull %15) #23
  %73 = load float, ptr %22, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.EffectorCache, ptr %25, i64 0, i32 8, i64 3
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fsub float %73, %75
  call void @axis_angle_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef %76) #23
  call void @mul_qt_v3(ptr noundef nonnull %11, ptr noundef nonnull %15) #23
  br label %77

77:                                               ; preds = %67, %60
  %78 = getelementptr inbounds %struct.Curve, ptr %49, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !303
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.EffectorCache, ptr %25, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !306
  %84 = load float, ptr %36, align 4, !tbaa !295
  %85 = fmul float %43, %84
  %86 = fmul float %85, 1.000000e+02
  %87 = fptosi float %86 to i32
  %88 = call float @BKE_displist_calc_taper(ptr noundef %83, ptr noundef nonnull %79, i32 noundef %87, i32 noundef 100) #23
  br label %96

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.Curve, ptr %49, i64 0, i32 23
  %91 = load i32, ptr %90, align 4, !tbaa !307
  %92 = and i32 %91, 4096
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load float, ptr %13, align 4, !tbaa !34
  br label %96

96:                                               ; preds = %81, %94
  %97 = phi float [ %95, %94 ], [ %88, %81 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %15, float noundef %97) #24
  br label %98

98:                                               ; preds = %96, %89
  store float 0.000000e+00, ptr %23, align 8, !tbaa !34
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %15) #24
  %99 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 31
  %100 = load float, ptr %99, align 4, !tbaa !308
  %101 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 32
  %102 = load float, ptr %101, align 8, !tbaa !309
  %103 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 33
  %104 = load float, ptr %103, align 4, !tbaa !310
  %105 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 6
  %106 = load i16, ptr %105, align 2, !tbaa !311
  %107 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 7
  %108 = load i16, ptr %107, align 8, !tbaa !312
  call fastcc void @do_kink(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, float noundef %43, float noundef %100, float noundef %102, float noundef %104, float noundef 0.000000e+00, i16 noundef signext %106, i16 noundef signext %108, ptr noundef null, i32 noundef 0) #24
  %109 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 29
  %110 = load float, ptr %109, align 4, !tbaa !313
  %111 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 30
  %112 = load float, ptr %111, align 8, !tbaa !314
  %113 = call fastcc float @do_clump(ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %43, float noundef %110, float noundef %112, float noundef 1.000000e+00) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %5) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %9) #24
  %114 = load float, ptr %36, align 4, !tbaa !295
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %7, ptr noundef nonnull %15, float noundef %114) #24
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %10, float noundef %114) #24
  %115 = fadd float %26, %114
  %116 = load i32, ptr %28, align 8, !tbaa !302
  %117 = and i32 %116, 65536
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %98
  %120 = load float, ptr %14, align 4, !tbaa !34
  %121 = fmul float %115, %120
  br label %122

122:                                              ; preds = %98, %119, %39, %32, %24
  %123 = phi float [ %26, %24 ], [ %26, %32 ], [ %26, %39 ], [ %121, %119 ], [ %115, %98 ]
  %124 = load ptr, ptr %25, align 8, !tbaa !58
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %24, !llvm.loop !315

126:                                              ; preds = %122
  %127 = fcmp une float %123, 0.000000e+00
  br i1 %127, label %128, label %139

128:                                              ; preds = %126
  %129 = fcmp ule float %123, 1.000000e+00
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = fdiv float 1.000000e+00, %123
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %131) #24
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi float [ 1.000000e+00, %130 ], [ %123, %128 ]
  %134 = fcmp olt float %123, 0.000000e+00
  %135 = select i1 %134, float 0.000000e+00, float %133
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %7, float noundef %135) #23
  %136 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #24
  %137 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %138 = call fastcc float @len_v3(ptr noundef nonnull %137) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %138) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %137, ptr noundef nonnull %8) #24
  br label %139

139:                                              ; preds = %57, %53, %17, %4, %126, %132
  %140 = phi i32 [ 1, %132 ], [ 0, %126 ], [ 0, %4 ], [ 0, %17 ], [ 0, %53 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #25
  ret i32 %140
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !316 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !34
  %15 = load float, ptr %8, align 4, !tbaa !34
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = load float, ptr %6, align 4, !tbaa !34
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = load float, ptr %10, align 4, !tbaa !34
  %25 = load float, ptr %4, align 4, !tbaa !34
  %26 = load float, ptr %2, align 4, !tbaa !34
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !317 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #16 !PGOFuncName !318 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #23
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_displist_calc_taper(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_kink(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i16 noundef signext %8, i16 noundef signext %9, ptr noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !319 {
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
  %24 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_kink.kink, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) @__const.do_kink.q1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #25
  %25 = icmp eq ptr %1, null
  %26 = icmp eq i16 %8, 0
  %27 = or i1 %25, %26
  br i1 %27, label %147, label %28

28:                                               ; preds = %12
  %29 = fcmp olt float %3, 0.000000e+00
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = fcmp ogt float %3, 1.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %28, %30, %32
  %34 = phi float [ 1.000000e+00, %32 ], [ %3, %30 ], [ 0.000000e+00, %28 ]
  %35 = fcmp une float %5, 0.000000e+00
  %36 = icmp ne i16 %8, 4
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = fcmp olt float %5, 0.000000e+00
  %40 = fpext float %34 to double
  %41 = fadd float %5, 1.000000e+00
  %42 = fsub float 1.000000e+00, %5
  %43 = fdiv float 1.000000e+00, %42
  %44 = select i1 %39, float %41, float %43
  %45 = fpext float %44 to double
  %46 = tail call double @pow(double noundef %40, double noundef %45) #23
  %47 = fptrunc double %46 to float
  br label %48

48:                                               ; preds = %38, %33
  %49 = phi float [ %34, %33 ], [ %47, %38 ]
  %50 = fmul float %49, %4
  %51 = fmul float %50, 0x400921FB60000000
  %52 = icmp eq i32 %11, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = tail call float @llvm.fabs.f32(float %51)
  %55 = fcmp ogt float %54, 0x400921FB60000000
  %56 = select i1 %55, float 0x400921FB60000000, float %54
  %57 = fmul float %56, 5.000000e-01
  %58 = tail call float @sinf(float noundef %57) #23
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi float [ %58, %53 ], [ 1.000000e+00, %48 ]
  %61 = icmp eq i16 %8, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %0) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %1, ptr noundef %0) #24
  br label %82

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #25
  %64 = sext i16 %9 to i64
  %65 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %64
  store float 1.000000e+00, ptr %65, align 4, !tbaa !34
  %66 = icmp eq ptr %10, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  call void @mul_mat3_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %13) #23
  br label %68

68:                                               ; preds = %67, %63
  %69 = icmp eq ptr %2, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %13) #23
  br label %71

71:                                               ; preds = %68, %70
  %72 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %72) #23
  call fastcc void @sub_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %17) #24
  %73 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %0) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %1, ptr noundef %0) #24
  switch i16 %8, label %143 [
    i16 1, label %74
    i16 2, label %82
    i16 3, label %90
    i16 4, label %95
  ]

74:                                               ; preds = %71
  call fastcc void @negate_v3(ptr noundef nonnull %14) #24
  %75 = fcmp ogt float %7, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #25
  call void @project_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %14, ptr noundef nonnull %72) #23
  %77 = fneg float %7
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %14, ptr noundef nonnull %18, float noundef %77) #24
  call void @project_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %14, ptr noundef nonnull %13) #23
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %14, ptr noundef nonnull %18, float noundef %77) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #25
  br label %78

78:                                               ; preds = %76, %74
  call void @axis_angle_to_quat(ptr noundef nonnull %15, ptr noundef nonnull %13, float noundef 0x3FF921FB60000000) #23
  call void @mul_qt_v3(ptr noundef nonnull %15, ptr noundef nonnull %14) #23
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %14, ptr noundef nonnull %13, float noundef %6) #24
  %79 = fcmp une float %51, 0.000000e+00
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  call void @axis_angle_to_quat(ptr noundef nonnull %15, ptr noundef nonnull %72, float noundef %51) #23
  call void @mul_qt_v3(ptr noundef nonnull %15, ptr noundef nonnull %14) #23
  br label %81

81:                                               ; preds = %80, %78
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef nonnull %14) #24
  br label %143

82:                                               ; preds = %62, %71
  %83 = fcmp ogt float %7, 0.000000e+00
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #25
  %85 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %14, ptr noundef nonnull %85) #23
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %19, float noundef %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #25
  br label %86

86:                                               ; preds = %84, %82
  %87 = fneg float %6
  %88 = call float @sinf(float noundef %51) #23
  %89 = fmul float %88, %87
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %14, float noundef %89) #24
  br label %143

90:                                               ; preds = %71
  %91 = call float @sinf(float noundef %51) #23
  %92 = fmul float %91, %6
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %13, float noundef %92) #24
  %93 = fcmp ogt float %7, 0.000000e+00
  br i1 %93, label %94, label %143

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #25
  call void @project_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %14, ptr noundef nonnull %13) #23
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %20, float noundef %7) #24
  call void @project_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %14, ptr noundef nonnull %72) #23
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %20, float noundef %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #25
  br label %143

95:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_kink.y_vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %22, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_kink.z_vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #25
  br i1 %69, label %97, label %96

96:                                               ; preds = %95
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %21) #23
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %22) #23
  br label %97

97:                                               ; preds = %96, %95
  call fastcc void @negate_v3(ptr noundef nonnull %14) #24
  %98 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %14) #24
  %99 = call fastcc float @dot_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %23) #24
  %100 = fcmp ogt float %99, 5.000000e-01
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %21) #24
  %102 = call float @cosf(float noundef %51) #23
  %103 = fmul float %102, %6
  call fastcc void @mul_v3_fl(ptr noundef nonnull %21, float noundef %103) #24
  %104 = fmul float %6, 5.000000e-01
  %105 = fmul float %51, 2.000000e+00
  %106 = call float @sinf(float noundef %105) #23
  %107 = fmul float %104, %106
  br label %129

108:                                              ; preds = %97
  %109 = call fastcc float @dot_v3v3(ptr noundef nonnull %22, ptr noundef nonnull %23) #24
  %110 = fcmp ogt float %109, 0.000000e+00
  %111 = fmul float %6, 5.000000e-01
  br i1 %110, label %112, label %120

112:                                              ; preds = %108
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %24, ptr noundef nonnull %22, float noundef 0x3FEBB67B00000000) #24
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %24, ptr noundef nonnull %21, float noundef -5.000000e-01) #24
  %113 = fneg float %6
  %114 = fadd float %51, 0x3FF0C15240000000
  %115 = call float @cosf(float noundef %114) #23
  %116 = fmul float %115, %113
  call fastcc void @mul_v3_fl(ptr noundef nonnull %21, float noundef %116) #24
  %117 = call float @llvm.fmuladd.f32(float %51, float 2.000000e+00, float 0x3FE0C15240000000)
  %118 = call float @cosf(float noundef %117) #23
  %119 = fmul float %111, %118
  br label %129

120:                                              ; preds = %108
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %24, ptr noundef nonnull %22, float noundef 0xBFEBB67B00000000) #24
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %24, ptr noundef nonnull %21, float noundef -5.000000e-01) #24
  %121 = fadd float %51, 0x3FE0C15240000000
  %122 = call float @sinf(float noundef %121) #23
  %123 = fneg float %122
  %124 = fmul float %123, %6
  call fastcc void @mul_v3_fl(ptr noundef nonnull %21, float noundef %124) #24
  %125 = call float @llvm.fmuladd.f32(float %51, float 2.000000e+00, float 0x3FF0C15240000000)
  %126 = call float @sinf(float noundef %125) #23
  %127 = fneg float %126
  %128 = fmul float %111, %127
  br label %129

129:                                              ; preds = %112, %120, %101
  %130 = phi float [ %119, %112 ], [ %128, %120 ], [ %107, %101 ]
  %131 = phi float [ %111, %112 ], [ %111, %120 ], [ %104, %101 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %22, float noundef %130) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %24, float noundef %6) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %1) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %24) #24
  %132 = call fastcc float @normalize_v3(ptr noundef nonnull %14) #24
  %133 = fcmp olt float %132, %131
  %134 = select i1 %133, float %132, float %131
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %134) #24
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %24, ptr noundef nonnull %1, ptr noundef nonnull %21) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %22) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %14) #24
  %135 = fadd float %5, 1.000000e+00
  %136 = fmul float %135, 0x401921FB60000000
  %137 = fcmp olt float %51, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = fdiv float %51, %136
  %140 = call float @sqrtf(float noundef %139) #9
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %24, float noundef %140) #23
  br label %142

141:                                              ; preds = %129
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %24) #24
  br label %142

142:                                              ; preds = %141, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #25
  br label %143

143:                                              ; preds = %90, %94, %71, %142, %86, %81
  %144 = fcmp olt float %60, 1.000000e+00
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  call void @interp_v3_v3v3(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %16, float noundef %60) #23
  br label %147

146:                                              ; preds = %143
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %16) #24
  br label %147

147:                                              ; preds = %145, %146, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @do_clump(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !320 {
  %7 = icmp ne ptr %1, null
  %8 = fcmp une float %3, 0.000000e+00
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = fcmp olt float %4, 0.000000e+00
  %12 = fadd float %4, 1.000000e+00
  %13 = tail call float @llvm.fmuladd.f32(float %4, float 9.000000e+00, float 1.000000e+00)
  %14 = select i1 %11, float %12, float %13
  %15 = fcmp olt float %3, 0.000000e+00
  %16 = fpext float %2 to double
  %17 = fneg float %3
  %18 = fpext float %2 to double
  %19 = fsub double 1.000000e+00, %18
  %20 = select i1 %15, double %19, double %16
  %21 = select i1 %15, float %17, float %3
  %22 = fmul float %21, %5
  %23 = fpext float %14 to double
  %24 = tail call double @pow(double noundef %20, double noundef %23) #23
  %25 = fptrunc double %24 to float
  %26 = fmul float %22, %25
  tail call void @interp_v3_v3v3(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %1, float noundef %26) #23
  br label %27

27:                                               ; preds = %10, %6
  %28 = phi float [ %26, %10 ], [ 0.000000e+00, %6 ]
  ret float %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !321 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @psys_cache_vgroup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 36, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !261
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %12 = load ptr, ptr %11, align 8, !tbaa !272
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 2) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !278
  %18 = tail call i32 %17(ptr noundef nonnull %0) #23
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.8) #23
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 37
  %24 = load i16, ptr %23, align 4, !tbaa !322
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
  %39 = load i16, ptr %7, align 2, !tbaa !261
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %40, -1
  %42 = tail call float @defvert_find_weight(ptr noundef nonnull %38, i32 noundef %41) #23
  %43 = fsub float 1.000000e+00, %42
  %44 = getelementptr inbounds float, ptr %22, i64 %37
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %57, label %36, !llvm.loop !323

47:                                               ; preds = %34, %47
  %48 = phi i64 [ 0, %34 ], [ %55, %47 ]
  %49 = getelementptr inbounds %struct.MDeformVert, ptr %13, i64 %48
  %50 = load i16, ptr %7, align 2, !tbaa !261
  %51 = sext i16 %50 to i32
  %52 = add nsw i32 %51, -1
  %53 = tail call float @defvert_find_weight(ptr noundef nonnull %49, i32 noundef %52) #23
  %54 = getelementptr inbounds float, ptr %22, i64 %48
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %35
  br i1 %56, label %57, label %47, !llvm.loop !324

57:                                               ; preds = %36, %47, %30, %33, %10, %5, %3
  %58 = phi ptr [ null, %3 ], [ null, %5 ], [ null, %10 ], [ %22, %33 ], [ %22, %30 ], [ %22, %47 ], [ %22, %36 ]
  ret ptr %58
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_find_parents(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 28
  %9 = load i32, ptr %8, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 91
  %12 = load float, ptr %11, align 4, !tbaa !325
  %13 = fmul float %12, %10
  %14 = fmul float %13, 0x3FD3333340000000
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = icmp ne ptr %17, null
  %19 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 89
  %24 = load i32, ptr %23, align 4, !tbaa !326
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 90
  %28 = load i32, ptr %27, align 8, !tbaa !327
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
  %40 = load i32, ptr %39, align 8, !tbaa !42
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %38)
  %42 = tail call ptr @BLI_kdtree_new(i32 noundef %41) #23
  %43 = load ptr, ptr %4, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !168
  %46 = icmp sgt i32 %41, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi ptr [ %45, %47 ], [ %58, %49 ]
  %51 = phi i32 [ 0, %47 ], [ %57, %49 ]
  %52 = load ptr, ptr %48, align 8, !tbaa !286
  %53 = load i32, ptr %50, align 4, !tbaa !253
  %54 = getelementptr inbounds %struct.ChildParticle, ptr %50, i64 0, i32 4
  %55 = getelementptr inbounds %struct.ChildParticle, ptr %50, i64 0, i32 5
  %56 = load float, ptr %55, align 4, !tbaa !328
  call void @psys_particle_on_emitter(ptr noundef %52, i32 noundef 1, i32 noundef %53, i32 noundef -2, ptr noundef nonnull %54, float noundef %56, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #24
  call void @BLI_kdtree_insert(ptr noundef %42, i32 noundef %51, ptr noundef nonnull %3) #23
  %57 = add nuw nsw i32 %51, 1
  %58 = getelementptr inbounds %struct.ChildParticle, ptr %50, i64 1
  %59 = icmp eq i32 %57, %41
  br i1 %59, label %60, label %49, !llvm.loop !329

60:                                               ; preds = %49, %37
  %61 = phi i32 [ 0, %37 ], [ %41, %49 ]
  %62 = phi ptr [ %45, %37 ], [ %58, %49 ]
  call void @BLI_kdtree_balance(ptr noundef %42) #23
  %63 = icmp slt i32 %61, %9
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %62, %64 ], [ %77, %66 ]
  %68 = phi i32 [ %61, %64 ], [ %76, %66 ]
  %69 = load ptr, ptr %65, align 8, !tbaa !286
  %70 = load i32, ptr %67, align 4, !tbaa !253
  %71 = getelementptr inbounds %struct.ChildParticle, ptr %67, i64 0, i32 4
  %72 = getelementptr inbounds %struct.ChildParticle, ptr %67, i64 0, i32 5
  %73 = load float, ptr %72, align 4, !tbaa !328
  call void @psys_particle_on_emitter(ptr noundef %69, i32 noundef 1, i32 noundef %70, i32 noundef -2, ptr noundef nonnull %71, float noundef %73, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #24
  %74 = call i32 @BLI_kdtree_find_nearest(ptr noundef %42, ptr noundef nonnull %3, ptr noundef null) #23
  %75 = getelementptr inbounds %struct.ChildParticle, ptr %67, i64 0, i32 1
  store i32 %74, ptr %75, align 4, !tbaa !330
  %76 = add nuw i32 %68, 1
  %77 = getelementptr inbounds %struct.ChildParticle, ptr %67, i64 1
  %78 = icmp eq i32 %76, %9
  br i1 %78, label %79, label %66, !llvm.loop !331

79:                                               ; preds = %66, %60
  call void @BLI_kdtree_free(ptr noundef %42) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_cache_child_paths(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %80

11:                                               ; preds = %3
  %12 = tail call ptr @psys_threads_create(ptr noundef nonnull %0) #23
  %13 = load ptr, ptr %0, align 8, !tbaa !63
  %14 = tail call fastcc i32 @psys_threads_init_path(ptr noundef %12, ptr noundef %13, float noundef %1, i32 noundef %2) #24, !range !66
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @psys_threads_free(ptr noundef %12) #23
  br label %80

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 8, !tbaa !332
  %19 = getelementptr inbounds %struct.ParticleThreadContext, ptr %18, i64 0, i32 20
  %20 = load i32, ptr %19, align 4, !tbaa !334
  %21 = getelementptr inbounds %struct.ParticleThreadContext, ptr %18, i64 0, i32 21
  %22 = load i32, ptr %21, align 8, !tbaa !335
  %23 = icmp eq i32 %2, 0
  %24 = load ptr, ptr %5, align 8, !tbaa !65
  br i1 %23, label %33, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %24, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !166
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %24, i64 0, i32 30
  %31 = load i32, ptr %30, align 8, !tbaa !167
  %32 = icmp eq i32 %20, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %29, %25, %17
  tail call fastcc void @free_child_path_cache(ptr noundef %24) #24
  %34 = load ptr, ptr %5, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %34, i64 0, i32 10
  %36 = getelementptr inbounds %struct.ParticleThreadContext, ptr %18, i64 0, i32 19
  %37 = load i32, ptr %36, align 8, !tbaa !336
  %38 = add nsw i32 %37, 1
  %39 = tail call fastcc ptr @psys_alloc_path_cache_buffers(ptr noundef nonnull %35, i32 noundef %20, i32 noundef %38) #24
  %40 = load ptr, ptr %5, align 8, !tbaa !65
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %40, i64 0, i32 8
  store ptr %39, ptr %41, align 8, !tbaa !166
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %40, i64 0, i32 30
  store i32 %20, ptr %42, align 8, !tbaa !167
  br label %43

43:                                               ; preds = %29, %33
  %44 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !337
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = icmp eq i32 %22, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %47
  call void @BLI_init_threads(ptr noundef nonnull %4, ptr noundef nonnull @exec_child_path_cache, i32 noundef %45) #23
  %50 = zext nneg i32 %45 to i64
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %56, %51 ]
  %53 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !332
  %55 = getelementptr inbounds %struct.ParticleThreadContext, ptr %54, i64 0, i32 22
  store i32 1, ptr %55, align 4, !tbaa !338
  call void @BLI_insert_thread(ptr noundef nonnull %4, ptr noundef nonnull %53) #23
  %56 = add nuw nsw i64 %52, 1
  %57 = icmp eq i64 %56, %50
  br i1 %57, label %58, label %51, !llvm.loop !339

58:                                               ; preds = %51
  call void @BLI_end_threads(ptr noundef nonnull %4) #23
  %59 = call i32 @llvm.smax.i32(i32 %45, i32 1)
  %60 = zext nneg i32 %59 to i64
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ 0, %58 ], [ %66, %61 ]
  %63 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !332
  %65 = getelementptr inbounds %struct.ParticleThreadContext, ptr %64, i64 0, i32 22
  store i32 0, ptr %65, align 4, !tbaa !338
  %66 = add nuw nsw i64 %62, 1
  %67 = icmp eq i64 %66, %60
  br i1 %67, label %68, label %61, !llvm.loop !340

68:                                               ; preds = %61, %47
  call void @BLI_init_threads(ptr noundef nonnull %4, ptr noundef nonnull @exec_child_path_cache, i32 noundef %45) #23
  %69 = call i32 @llvm.smax.i32(i32 %45, i32 1)
  %70 = zext nneg i32 %69 to i64
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi i64 [ 0, %68 ], [ %74, %71 ]
  %73 = getelementptr inbounds %struct.ParticleThread, ptr %12, i64 %72
  call void @BLI_insert_thread(ptr noundef nonnull %4, ptr noundef nonnull %73) #23
  %74 = add nuw nsw i64 %72, 1
  %75 = icmp eq i64 %74, %70
  br i1 %75, label %76, label %71, !llvm.loop !341

76:                                               ; preds = %71
  call void @BLI_end_threads(ptr noundef nonnull %4) #23
  br label %79

77:                                               ; preds = %43
  %78 = tail call ptr @exec_child_path_cache(ptr noundef nonnull %12) #24
  br label %79

79:                                               ; preds = %77, %76
  call void @psys_threads_free(ptr noundef nonnull %12) #23
  br label %80

80:                                               ; preds = %3, %79, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare ptr @psys_threads_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @psys_threads_init_path(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !342 {
  %5 = load ptr, ptr %0, align 8, !tbaa !332
  %6 = getelementptr inbounds %struct.ParticleSimulationData, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !209
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 24
  %11 = load i16, ptr %10, align 2, !tbaa !343
  %12 = sext i16 %11 to i32
  %13 = tail call double @ldexp(double 1.000000e+00, i32 %12) #25
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 28
  %15 = load i32, ptr %14, align 8, !tbaa !169
  %16 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !337
  %18 = tail call i32 @psys_in_edit_mode(ptr noundef %1, ptr noundef %7) #24, !range !66
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !344
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %22, i64 0, i32 18
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 39
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %23, align 8, !tbaa !345
  %33 = freeze i16 %32
  %34 = and i16 %33, 16
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %35, i32 0, i32 %15
  br label %37

37:                                               ; preds = %31, %27, %20
  %38 = phi i32 [ %15, %20 ], [ %15, %27 ], [ %36, %31 ]
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %22, i64 0, i32 18, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !347
  %41 = tail call double @ldexp(double 1.000000e+00, i32 %40) #25
  br label %42

42:                                               ; preds = %37, %4
  %43 = phi double [ %41, %37 ], [ %13, %4 ]
  %44 = phi i32 [ %38, %37 ], [ %15, %4 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %78, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 19
  %48 = load i16, ptr %47, align 4, !tbaa !348
  %49 = icmp eq i16 %48, 2
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = sitofp i32 %44 to float
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 91
  %53 = load float, ptr %52, align 4, !tbaa !325
  %54 = fmul float %53, %51
  %55 = fmul float %54, 0x3FD3333340000000
  %56 = fptosi float %55 to i32
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 39
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = icmp ne ptr %58, null
  %60 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %61 = icmp ne i8 %60, 0
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 89
  %65 = load i32, ptr %64, align 4, !tbaa !326
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 90
  %69 = load i32, ptr %68, align 8, !tbaa !327
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = sitofp i32 %65 to float
  %73 = sitofp i32 %69 to float
  %74 = fdiv float %72, %73
  %75 = sitofp i32 %56 to float
  %76 = fmul float %74, %75
  %77 = fptosi float %76 to i32
  br label %78

78:                                               ; preds = %63, %67, %71, %50, %46, %42
  %79 = phi i32 [ 0, %46 ], [ 0, %42 ], [ 1, %50 ], [ 1, %71 ], [ 1, %67 ], [ 1, %63 ]
  %80 = phi i32 [ 0, %46 ], [ 0, %42 ], [ %56, %50 ], [ %77, %71 ], [ %56, %67 ], [ %56, %63 ]
  %81 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 39
  %82 = load ptr, ptr %81, align 8, !tbaa !103
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 25
  %86 = load i16, ptr %85, align 8, !tbaa !349
  %87 = sext i16 %86 to i32
  %88 = tail call double @ldexp(double 1.000000e+00, i32 %87) #25
  br label %98

89:                                               ; preds = %78
  %90 = sitofp i32 %44 to float
  %91 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 30
  %92 = load i16, ptr %91, align 2, !tbaa !197
  %93 = sitofp i16 %92 to float
  %94 = fmul float %90, %93
  %95 = fdiv float %94, 1.000000e+02
  %96 = fptosi float %95 to i32
  %97 = tail call i32 @llvm.smin.i32(i32 %80, i32 %96)
  br label %98

98:                                               ; preds = %89, %84
  %99 = phi double [ %88, %84 ], [ %43, %89 ]
  %100 = phi i32 [ %44, %84 ], [ %96, %89 ]
  %101 = phi i32 [ %80, %84 ], [ %97, %89 ]
  %102 = fptosi double %99 to i32
  %103 = icmp eq i32 %100, 0
  br i1 %103, label %162, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %6, align 8, !tbaa !209
  %106 = getelementptr inbounds %struct.ParticleSystem, ptr %105, i64 0, i32 23
  %107 = load i32, ptr %106, align 4, !tbaa !204
  %108 = add nsw i32 %107, 31415926
  %109 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 17
  %110 = load i32, ptr %109, align 8, !tbaa !350
  %111 = icmp ne i32 %110, 0
  %112 = icmp slt i32 %100, 10000
  %113 = or i1 %112, %111
  %114 = select i1 %113, i32 1, i32 %17
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %104
  %117 = zext nneg i32 %114 to i64
  br label %118

118:                                              ; preds = %116, %118
  %119 = phi i64 [ 0, %116 ], [ %123, %118 ]
  %120 = tail call ptr @BLI_rng_new(i32 noundef %108) #23
  %121 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %119, i32 2
  store ptr %120, ptr %121, align 8, !tbaa !351
  %122 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 %119, i32 4
  store i32 %114, ptr %122, align 4, !tbaa !337
  %123 = add nuw nsw i64 %119, 1
  %124 = icmp eq i64 %123, %117
  br i1 %124, label %125, label %118, !llvm.loop !352

125:                                              ; preds = %118, %104
  %126 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 18
  store i32 %79, ptr %126, align 4, !tbaa !353
  %127 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 19
  store i32 %102, ptr %127, align 8, !tbaa !336
  %128 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 20
  store i32 %100, ptr %128, align 4, !tbaa !334
  %129 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 21
  store i32 %101, ptr %129, align 8, !tbaa !335
  %130 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 22
  store i32 0, ptr %130, align 4, !tbaa !338
  %131 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 23
  store float %2, ptr %131, align 8, !tbaa !354
  store i32 %3, ptr %109, align 8, !tbaa !350
  %132 = tail call ptr @psys_create_lattice_deform_data(ptr noundef %5) #24
  %133 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 15
  store ptr %132, ptr %133, align 8, !tbaa !355
  %134 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !205
  %136 = tail call ptr @psys_cache_vgroup(ptr noundef %135, ptr noundef %7, i32 noundef 2) #24
  %137 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 24
  store ptr %136, ptr %137, align 8, !tbaa !356
  %138 = load ptr, ptr %134, align 8, !tbaa !205
  %139 = tail call ptr @psys_cache_vgroup(ptr noundef %138, ptr noundef %7, i32 noundef 3) #24
  %140 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 25
  store ptr %139, ptr %140, align 8, !tbaa !357
  %141 = load ptr, ptr %134, align 8, !tbaa !205
  %142 = tail call ptr @psys_cache_vgroup(ptr noundef %141, ptr noundef %7, i32 noundef 4) #24
  %143 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 26
  store ptr %142, ptr %143, align 8, !tbaa !358
  %144 = load ptr, ptr %134, align 8, !tbaa !205
  %145 = tail call ptr @psys_cache_vgroup(ptr noundef %144, ptr noundef %7, i32 noundef 5) #24
  %146 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 27
  store ptr %145, ptr %146, align 8, !tbaa !359
  %147 = load ptr, ptr %134, align 8, !tbaa !205
  %148 = tail call ptr @psys_cache_vgroup(ptr noundef %147, ptr noundef %7, i32 noundef 6) #24
  %149 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 28
  store ptr %148, ptr %149, align 8, !tbaa !360
  %150 = load ptr, ptr %134, align 8, !tbaa !205
  %151 = tail call ptr @psys_cache_vgroup(ptr noundef %150, ptr noundef %7, i32 noundef 7) #24
  %152 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 29
  store ptr %151, ptr %152, align 8, !tbaa !361
  %153 = load ptr, ptr %8, align 8, !tbaa !48
  %154 = getelementptr inbounds %struct.ParticleSettings, ptr %153, i64 0, i32 5
  %155 = load i32, ptr %154, align 8, !tbaa !53
  %156 = and i32 %155, 134217728
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %125
  %159 = load ptr, ptr %134, align 8, !tbaa !205
  %160 = tail call ptr @psys_cache_vgroup(ptr noundef %159, ptr noundef nonnull %7, i32 noundef 11) #24
  %161 = getelementptr inbounds %struct.ParticleThreadContext, ptr %5, i64 0, i32 30
  store ptr %160, ptr %161, align 8, !tbaa !362
  br label %162

162:                                              ; preds = %125, %158, %98
  %163 = phi i32 [ 0, %98 ], [ 1, %158 ], [ 1, %125 ]
  ret i32 %163
}

; Function Attrs: optsize
declare void @psys_threads_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @psys_alloc_path_cache_buffers(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !363 {
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %6 = zext nneg i32 %4 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.14) #23
  %9 = sext i32 %2 to i64
  %10 = mul nsw i64 %9, 60
  br label %11

11:                                               ; preds = %3, %36
  %12 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %13 = sub i32 %4, %12
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 1024)
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %16 = tail call ptr %15(i64 noundef 24, ptr noundef nonnull @.str.15) #23
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %18 = sext i32 %14 to i64
  %19 = mul i64 %10, %18
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.16) #23
  %21 = getelementptr inbounds %struct.LinkData, ptr %16, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !162
  %22 = icmp sgt i32 %13, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %11
  %24 = sext i32 %12 to i64
  %25 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr ptr, ptr %8, i64 %24
  br label %28

28:                                               ; preds = %23, %28
  %29 = phi i64 [ 0, %23 ], [ %34, %28 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !162
  %31 = mul nsw i64 %29, %9
  %32 = getelementptr inbounds %struct.ParticleCacheKey, ptr %30, i64 %31
  %33 = getelementptr ptr, ptr %27, i64 %29
  store ptr %32, ptr %33, align 8, !tbaa !58
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %28, !llvm.loop !364

36:                                               ; preds = %28, %11
  %37 = add nsw i32 %14, %12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %16) #23
  %38 = icmp slt i32 %37, %4
  br i1 %38, label %11, label %39, !llvm.loop !365

39:                                               ; preds = %36
  ret ptr %8
}

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @exec_child_path_cache(ptr nocapture noundef readonly %0) #0 !PGOFuncName !366 {
  %2 = load ptr, ptr %0, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.ParticleSimulationData, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !209
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !166
  %7 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 20
  %8 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !337
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 22
  %13 = load i32, ptr %12, align 4, !tbaa !338
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !335
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds %struct.ParticleThreadContext, ptr %2, i64 0, i32 21
  %21 = select i1 %14, ptr %7, ptr %20
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi ptr [ %21, %18 ], [ %7, %1 ]
  %24 = phi i32 [ %19, %18 ], [ 0, %1 ]
  %25 = load i32, ptr %23, align 4, !tbaa !38
  %26 = getelementptr inbounds %struct.ParticleThread, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !367
  %28 = add nsw i32 %27, %24
  %29 = icmp slt i32 %28, %25
  br i1 %29, label %30, label %48

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !168
  %33 = sext i32 %24 to i64
  %34 = getelementptr inbounds %struct.ChildParticle, ptr %32, i64 %33
  %35 = sext i32 %27 to i64
  %36 = getelementptr inbounds %struct.ChildParticle, ptr %34, i64 %35
  br label %37

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %44, %37 ], [ %28, %30 ]
  %39 = phi ptr [ %46, %37 ], [ %36, %30 ]
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds ptr, ptr %6, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  tail call fastcc void @psys_thread_create_path(ptr noundef nonnull %0, ptr noundef %39, ptr noundef %42, i32 noundef %38) #24
  %43 = load i32, ptr %8, align 4, !tbaa !337
  %44 = add nsw i32 %43, %38
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.ChildParticle, ptr %39, i64 %45
  %47 = icmp slt i32 %44, %25
  br i1 %47, label %37, label %48, !llvm.loop !368

48:                                               ; preds = %37, %22
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_cache_paths(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ParticleKey, align 4
  %4 = alloca %struct.ParticleInterpolationData, align 8
  %5 = alloca %struct.ParticleTexture, align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !286
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  br label %24

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = tail call ptr @psys_get_modifier(ptr noundef %20, ptr noundef %22) #24
  br label %24

24:                                               ; preds = %15, %18
  %25 = phi ptr [ %22, %18 ], [ %17, %15 ]
  %26 = phi ptr [ %23, %18 ], [ %13, %15 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !344
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %29, i64 0, i32 18
  %31 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 7
  %35 = load i16, ptr %34, align 8, !tbaa !110
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 25
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !153
  br label %45

45:                                               ; preds = %24, %37, %42
  %46 = phi ptr [ %44, %42 ], [ null, %37 ], [ null, %24 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.psys_cache_paths.col, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #25
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 39
  %48 = load ptr, ptr %47, align 8, !tbaa !103
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 25
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 24
  %52 = select i1 %49, ptr %51, ptr %50
  %53 = load i16, ptr %52, align 2, !tbaa !261
  %54 = sext i16 %53 to i32
  %55 = tail call double @ldexp(double 1.000000e+00, i32 %54) #25
  %56 = fptosi double %55 to i32
  %57 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 26
  %58 = load i32, ptr %57, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 25
  %60 = load i32, ptr %59, align 4, !tbaa !59
  %61 = and i32 %60, 1024
  %62 = and i32 %60, 1536
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 40
  %66 = load ptr, ptr %65, align 8, !tbaa !100
  %67 = icmp eq ptr %66, null
  br i1 %67, label %406, label %68

68:                                               ; preds = %45, %64
  %69 = load ptr, ptr %0, align 8, !tbaa !63
  %70 = tail call i32 @psys_in_edit_mode(ptr noundef %69, ptr noundef nonnull %25) #24, !range !66
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %47, align 8, !tbaa !103
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !99
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i16, ptr %30, align 8, !tbaa !345
  %81 = and i16 %80, 16
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %406, label %83

83:                                               ; preds = %75, %72, %79, %68
  %84 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 40
  %85 = load ptr, ptr %84, align 8, !tbaa !100
  %86 = getelementptr inbounds %struct.PointCache, ptr %85, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !369
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %32, align 8, !tbaa !48
  %91 = getelementptr inbounds %struct.ParticleSettings, ptr %90, i64 0, i32 7
  %92 = load i16, ptr %91, align 8, !tbaa !110
  %93 = icmp ne i16 %92, 2
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi i1 [ false, %83 ], [ %93, %89 ]
  %96 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !99
  tail call void @psys_free_path_cache(ptr noundef nonnull %25, ptr noundef %97) #24
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 9
  %99 = add i32 %56, 1
  %100 = tail call fastcc ptr @psys_alloc_path_cache_buffers(ptr noundef nonnull %98, i32 noundef %58, i32 noundef %99) #24
  %101 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 7
  store ptr %100, ptr %101, align 8, !tbaa !159
  %102 = tail call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %0) #24
  %103 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 15
  store ptr %102, ptr %103, align 8, !tbaa !355
  %104 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !67
  %106 = load ptr, ptr %32, align 8, !tbaa !48
  %107 = getelementptr inbounds %struct.ParticleSettings, ptr %106, i64 0, i32 31
  %108 = load i16, ptr %107, align 4, !tbaa !370
  %109 = tail call ptr @give_current_material(ptr noundef %105, i16 noundef signext %108) #23
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %94
  %112 = load ptr, ptr %32, align 8, !tbaa !48
  %113 = getelementptr inbounds %struct.ParticleSettings, ptr %112, i64 0, i32 23
  %114 = load i16, ptr %113, align 4, !tbaa !371
  %115 = icmp eq i16 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %117) #24
  br label %118

118:                                              ; preds = %116, %111, %94
  %119 = load i32, ptr %59, align 4, !tbaa !59
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load ptr, ptr %32, align 8, !tbaa !48
  %124 = getelementptr inbounds %struct.ParticleSettings, ptr %123, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !53
  %126 = and i32 %125, 134217728
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %26, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !190
  %131 = tail call ptr @psys_cache_vgroup(ptr noundef %130, ptr noundef nonnull %25, i32 noundef 11) #24
  br label %132

132:                                              ; preds = %128, %122
  %133 = phi ptr [ %131, %128 ], [ null, %122 ]
  %134 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 28
  %135 = load i32, ptr %134, align 8, !tbaa !169
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %26, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !190
  %140 = tail call ptr @psys_cache_vgroup(ptr noundef %139, ptr noundef nonnull %25, i32 noundef 2) #24
  br label %141

141:                                              ; preds = %132, %137, %118
  %142 = phi ptr [ %133, %132 ], [ %133, %137 ], [ null, %118 ]
  %143 = phi ptr [ null, %132 ], [ %140, %137 ], [ null, %118 ]
  %144 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 8
  %145 = load i16, ptr %144, align 2, !tbaa !284
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %26, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !190
  tail call void @DM_ensure_tessface(ptr noundef %149) #23
  br label %150

150:                                              ; preds = %147, %141
  %151 = load i32, ptr %57, align 8, !tbaa !42
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %393

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !47
  %156 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 28
  %157 = getelementptr inbounds %struct.ParticleTexture, ptr %5, i64 0, i32 8
  %158 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 88
  %159 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 23
  %160 = icmp eq ptr %143, null
  %161 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %26, i64 0, i32 2
  %162 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 3
  %163 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %164 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 7
  %165 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 11
  %166 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 1
  %167 = sext i32 %99 to i64
  %168 = mul nsw i64 %167, 60
  %169 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 2
  %170 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %171 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1
  %172 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %173 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 15
  %174 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 9
  %175 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 117
  %176 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 10
  %177 = icmp slt i32 %56, 0
  %178 = sitofp i32 %56 to float
  %179 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 4
  %180 = icmp eq ptr %46, null
  %181 = icmp ne i32 %61, 0
  %182 = select i1 %181, i1 true, i1 %95
  %183 = icmp eq ptr %142, null
  %184 = icmp slt i32 %56, 1
  br label %185

185:                                              ; preds = %153, %386
  %186 = phi i64 [ 0, %153 ], [ %388, %386 ]
  %187 = phi ptr [ %155, %153 ], [ %389, %386 ]
  %188 = phi float [ 1.000000e+00, %153 ], [ %387, %386 ]
  %189 = getelementptr inbounds %struct.ParticleData, ptr %187, i64 0, i32 17
  %190 = load i16, ptr %189, align 4, !tbaa !49
  %191 = and i16 %190, 3
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %193, label %386

193:                                              ; preds = %185
  %194 = load i32, ptr %156, align 8, !tbaa !169
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  call void @psys_get_texture(ptr noundef nonnull %0, ptr noundef nonnull %187, ptr noundef nonnull %5, i32 noundef 16, float noundef 0.000000e+00) #24
  %197 = load float, ptr %157, align 4, !tbaa !372
  %198 = load float, ptr %158, align 8, !tbaa !374
  %199 = load i32, ptr %159, align 4, !tbaa !204
  %200 = trunc i64 %186 to i32
  %201 = add nsw i32 %199, %200
  %202 = call fastcc float @psys_frand(ptr noundef nonnull %25, i32 noundef %201) #24
  %203 = fneg float %198
  %204 = call float @llvm.fmuladd.f32(float %203, float %202, float 1.000000e+00)
  %205 = fmul float %197, %204
  br i1 %160, label %211, label %206

206:                                              ; preds = %196
  %207 = load ptr, ptr %161, align 8, !tbaa !190
  %208 = load i16, ptr %144, align 2, !tbaa !284
  %209 = call float @psys_particle_value_from_verts(ptr noundef %207, i16 noundef signext %208, ptr noundef nonnull %187, ptr noundef nonnull %143) #24
  %210 = fmul float %205, %209
  br label %211

211:                                              ; preds = %196, %206, %193
  %212 = phi float [ %188, %193 ], [ %210, %206 ], [ %205, %196 ]
  store i32 %61, ptr %162, align 8, !tbaa !375
  br i1 %95, label %213, label %215

213:                                              ; preds = %211
  %214 = load ptr, ptr %84, align 8, !tbaa !100
  br label %215

215:                                              ; preds = %211, %213
  %216 = phi ptr [ %214, %213 ], [ null, %211 ]
  store ptr %216, ptr %163, align 8, !tbaa !377
  store ptr null, ptr %164, align 8, !tbaa !378
  %217 = load ptr, ptr %32, align 8, !tbaa !48
  %218 = getelementptr inbounds %struct.ParticleSettings, ptr %217, i64 0, i32 5
  %219 = load i32, ptr %218, align 8, !tbaa !53
  %220 = and i32 %219, 1024
  store i32 %220, ptr %165, align 8, !tbaa !379
  store ptr %46, ptr %166, align 8, !tbaa !380
  %221 = getelementptr inbounds ptr, ptr %100, i64 %186
  %222 = load ptr, ptr %221, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr align 4 %222, i8 0, i64 %168, i1 false)
  %223 = load ptr, ptr %221, align 8, !tbaa !58
  %224 = getelementptr inbounds %struct.ParticleCacheKey, ptr %223, i64 0, i32 5
  store i32 %56, ptr %224, align 4, !tbaa !381
  %225 = load ptr, ptr %31, align 8, !tbaa !65
  call fastcc void @init_particle_interpolation(ptr noundef %225, ptr noundef nonnull %187, ptr noundef nonnull %4) #24
  %226 = load ptr, ptr %104, align 8, !tbaa !67
  %227 = load ptr, ptr %161, align 8, !tbaa !190
  %228 = load ptr, ptr %32, align 8, !tbaa !48
  %229 = getelementptr inbounds %struct.ParticleSettings, ptr %228, i64 0, i32 8
  %230 = load i16, ptr %229, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %226, ptr noundef %227, i16 noundef signext %230, ptr noundef nonnull %187, ptr noundef nonnull %8) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %169) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %170, ptr noundef nonnull %171) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %172, ptr noundef nonnull %8) #24
  %231 = load i32, ptr %173, align 8, !tbaa !210
  %232 = and i32 %231, 32
  %233 = icmp eq i32 %232, 0
  %234 = load float, ptr %174, align 8, !tbaa !383
  %235 = load <2 x float>, ptr %175, align 8, !tbaa !34
  br i1 %233, label %244, label %236

236:                                              ; preds = %215
  %237 = load float, ptr %176, align 4, !tbaa !384
  %238 = insertelement <2 x float> %235, float %237, i64 1
  %239 = insertelement <2 x float> poison, float %234, i64 0
  %240 = insertelement <2 x float> %235, float %234, i64 0
  %241 = fcmp olt <2 x float> %238, %240
  %242 = insertelement <2 x float> %239, float %237, i64 1
  %243 = select <2 x i1> %241, <2 x float> %242, <2 x float> %235
  br label %252

244:                                              ; preds = %215
  %245 = load float, ptr %176, align 4, !tbaa !384
  %246 = fsub float %245, %234
  %247 = insertelement <2 x float> poison, float %246, i64 0
  %248 = shufflevector <2 x float> %247, <2 x float> poison, <2 x i32> zeroinitializer
  %249 = insertelement <2 x float> poison, float %234, i64 0
  %250 = shufflevector <2 x float> %249, <2 x float> poison, <2 x i32> zeroinitializer
  %251 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %235, <2 x float> %248, <2 x float> %250)
  br label %252

252:                                              ; preds = %244, %236
  %253 = phi <2 x float> [ %243, %236 ], [ %251, %244 ]
  %254 = extractelement <2 x float> %253, i64 0
  %255 = extractelement <2 x float> %253, i64 1
  %256 = fcmp ult float %254, %255
  br i1 %256, label %260, label %257

257:                                              ; preds = %252
  %258 = load ptr, ptr %221, align 8, !tbaa !58
  %259 = getelementptr inbounds %struct.ParticleCacheKey, ptr %258, i64 0, i32 5
  store i32 -1, ptr %259, align 4, !tbaa !381
  br label %386

260:                                              ; preds = %252
  br i1 %177, label %289, label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr %221, align 8, !tbaa !58
  %263 = fsub float %255, %254
  %264 = call float @llvm.fmuladd.f32(float %212, float %263, float %254)
  %265 = fsub float %264, %254
  %266 = trunc i64 %186 to i32
  br label %267

267:                                              ; preds = %261, %284
  %268 = phi ptr [ %262, %261 ], [ %287, %284 ]
  %269 = phi i32 [ 0, %261 ], [ %286, %284 ]
  %270 = sitofp i32 %269 to float
  %271 = fdiv float %270, %178
  %272 = call float @llvm.fmuladd.f32(float %271, float %265, float %254)
  %273 = fneg float %272
  store float %273, ptr %179, align 4, !tbaa !385
  call fastcc void @do_particle_interpolation(ptr noundef %25, i32 noundef %266, ptr noundef %187, float noundef %272, ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  call fastcc void @copy_v3_v3(ptr noundef %268, ptr noundef nonnull %3) #24
  br i1 %180, label %277, label %274

274:                                              ; preds = %267
  %275 = load ptr, ptr %104, align 8, !tbaa !67
  %276 = getelementptr inbounds %struct.Object, ptr %275, i64 0, i32 47
  br label %282

277:                                              ; preds = %267
  br i1 %182, label %284, label %278

278:                                              ; preds = %277
  %279 = load i32, ptr %59, align 4, !tbaa !59
  %280 = and i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %278, %274
  %283 = phi ptr [ %276, %274 ], [ %8, %278 ]
  call void @mul_m4_v3(ptr noundef nonnull %283, ptr noundef %268) #23
  br label %284

284:                                              ; preds = %282, %277, %278
  %285 = getelementptr inbounds %struct.ParticleCacheKey, ptr %268, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %285, ptr noundef nonnull %6) #24
  %286 = add nuw i32 %269, 1
  %287 = getelementptr inbounds %struct.ParticleCacheKey, ptr %268, i64 1
  %288 = icmp eq i32 %269, %56
  br i1 %288, label %289, label %267, !llvm.loop !386

289:                                              ; preds = %284, %260
  %290 = load i32, ptr %59, align 4, !tbaa !59
  %291 = and i32 %290, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %359

293:                                              ; preds = %289
  %294 = load ptr, ptr %32, align 8, !tbaa !48
  %295 = getelementptr inbounds %struct.ParticleSettings, ptr %294, i64 0, i32 5
  %296 = load i32, ptr %295, align 8, !tbaa !53
  %297 = and i32 %296, 134217728
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %319

299:                                              ; preds = %293
  br i1 %183, label %305, label %300

300:                                              ; preds = %299
  %301 = load ptr, ptr %161, align 8, !tbaa !190
  %302 = getelementptr inbounds %struct.ParticleSettings, ptr %294, i64 0, i32 8
  %303 = load i16, ptr %302, align 2, !tbaa !284
  %304 = call float @psys_particle_value_from_verts(ptr noundef %301, i16 noundef signext %303, ptr noundef %187, ptr noundef nonnull %142) #24
  br label %305

305:                                              ; preds = %300, %299
  %306 = phi float [ %304, %300 ], [ 1.000000e+00, %299 ]
  %307 = load ptr, ptr %221, align 8, !tbaa !58
  %308 = getelementptr inbounds %struct.ParticleCacheKey, ptr %307, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %308, ptr noundef %307) #24
  %309 = call fastcc float @len_v3(ptr noundef nonnull %11) #24
  store float %309, ptr %10, align 4, !tbaa !34
  br i1 %184, label %319, label %310

310:                                              ; preds = %305
  %311 = load ptr, ptr %221, align 8, !tbaa !58
  %312 = trunc i64 %186 to i32
  br label %313

313:                                              ; preds = %310, %313
  %314 = phi ptr [ %316, %313 ], [ %311, %310 ]
  %315 = phi i32 [ %317, %313 ], [ 1, %310 ]
  %316 = getelementptr inbounds %struct.ParticleCacheKey, ptr %314, i64 1
  call fastcc void @do_path_effectors(ptr noundef nonnull %0, i32 noundef %312, ptr noundef nonnull %316, i32 noundef %315, i32 noundef %56, float noundef %306, ptr noundef nonnull %10, ptr noundef nonnull %11) #24
  %317 = add nuw i32 %315, 1
  %318 = icmp eq i32 %315, %56
  br i1 %318, label %319, label %313, !llvm.loop !387

319:                                              ; preds = %313, %305, %293
  %320 = load ptr, ptr %31, align 8, !tbaa !65
  %321 = getelementptr inbounds %struct.ParticleSystem, ptr %320, i64 0, i32 42
  %322 = load ptr, ptr %321, align 8, !tbaa !388
  %323 = icmp eq ptr %322, null
  br i1 %323, label %346, label %324

324:                                              ; preds = %319
  %325 = load ptr, ptr %32, align 8, !tbaa !48
  %326 = getelementptr inbounds %struct.ParticleSettings, ptr %325, i64 0, i32 5
  %327 = load i32, ptr %326, align 8, !tbaa !53
  %328 = and i32 %327, 134217728
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %324
  br i1 %177, label %381, label %331

331:                                              ; preds = %330
  %332 = load ptr, ptr %221, align 8, !tbaa !58
  %333 = trunc i64 %186 to i32
  br label %334

334:                                              ; preds = %331, %334
  %335 = phi ptr [ %344, %334 ], [ %332, %331 ]
  %336 = phi i32 [ %343, %334 ], [ 0, %331 ]
  %337 = load ptr, ptr %31, align 8, !tbaa !65
  %338 = getelementptr inbounds %struct.ParticleSystem, ptr %337, i64 0, i32 42
  %339 = load ptr, ptr %338, align 8, !tbaa !388
  %340 = sitofp i32 %336 to float
  %341 = fdiv float %340, %178
  %342 = call i32 @do_guides(ptr noundef %339, ptr noundef %335, i32 noundef %333, float noundef %341) #24, !range !66
  %343 = add nuw i32 %336, 1
  %344 = getelementptr inbounds %struct.ParticleCacheKey, ptr %335, i64 1
  %345 = icmp eq i32 %336, %56
  br i1 %345, label %346, label %334, !llvm.loop !389

346:                                              ; preds = %334, %324, %319
  %347 = load ptr, ptr %103, align 8, !tbaa !355
  %348 = icmp eq ptr %347, null
  br i1 %348, label %359, label %349

349:                                              ; preds = %346
  br i1 %177, label %381, label %350

350:                                              ; preds = %349
  %351 = load ptr, ptr %221, align 8, !tbaa !58
  br label %352

352:                                              ; preds = %350, %352
  %353 = phi ptr [ %357, %352 ], [ %351, %350 ]
  %354 = phi i32 [ %356, %352 ], [ 0, %350 ]
  %355 = load ptr, ptr %103, align 8, !tbaa !355
  call void @calc_latt_deform(ptr noundef %355, ptr noundef %353, float noundef 1.000000e+00) #23
  %356 = add nuw i32 %354, 1
  %357 = getelementptr inbounds %struct.ParticleCacheKey, ptr %353, i64 1
  %358 = icmp eq i32 %354, %56
  br i1 %358, label %359, label %352, !llvm.loop !390

359:                                              ; preds = %352, %346, %289
  %360 = load ptr, ptr %221, align 8, !tbaa !58
  br i1 %184, label %383, label %361

361:                                              ; preds = %359, %375
  %362 = phi ptr [ %364, %375 ], [ %360, %359 ]
  %363 = phi i32 [ %379, %375 ], [ 1, %359 ]
  %364 = getelementptr inbounds %struct.ParticleCacheKey, ptr %362, i64 1
  %365 = getelementptr inbounds %struct.ParticleCacheKey, ptr %362, i64 -1
  call fastcc void @cache_key_incremental_rotation(ptr noundef nonnull %364, ptr noundef nonnull %362, ptr noundef nonnull %365, ptr noundef nonnull %7, i32 noundef %363) #24
  %366 = icmp eq i32 %363, %56
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.ParticleCacheKey, ptr %362, i64 1, i32 2
  %369 = getelementptr %struct.ParticleCacheKey, ptr %362, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %368, ptr noundef %369) #23
  br label %370

370:                                              ; preds = %367, %361
  %371 = getelementptr inbounds %struct.ParticleCacheKey, ptr %362, i64 1, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %371, ptr noundef nonnull %364, ptr noundef nonnull %362) #24
  %372 = icmp eq i32 %363, 1
  br i1 %372, label %373, label %375

373:                                              ; preds = %370
  %374 = getelementptr %struct.ParticleCacheKey, ptr %362, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %374, ptr noundef nonnull %371) #24
  br label %375

375:                                              ; preds = %373, %370
  %376 = sitofp i32 %363 to float
  %377 = fdiv float %376, %178
  %378 = getelementptr inbounds %struct.ParticleCacheKey, ptr %362, i64 1, i32 4
  store float %377, ptr %378, align 4, !tbaa !391
  %379 = add nuw i32 %363, 1
  %380 = icmp eq i32 %363, %56
  br i1 %380, label %381, label %361, !llvm.loop !392

381:                                              ; preds = %375, %349, %330
  %382 = load ptr, ptr %221, align 8, !tbaa !58
  br label %383

383:                                              ; preds = %381, %359
  %384 = phi ptr [ %360, %359 ], [ %382, %381 ]
  %385 = getelementptr inbounds %struct.ParticleCacheKey, ptr %384, i64 0, i32 2
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %385, ptr noundef nonnull %9) #23
  br label %386

386:                                              ; preds = %185, %383, %257
  %387 = phi float [ %188, %185 ], [ %212, %257 ], [ %212, %383 ]
  %388 = add nuw nsw i64 %186, 1
  %389 = getelementptr inbounds %struct.ParticleData, ptr %187, i64 1
  %390 = load i32, ptr %57, align 8, !tbaa !42
  %391 = sext i32 %390 to i64
  %392 = icmp slt i64 %388, %391
  br i1 %392, label %185, label %393, !llvm.loop !393

393:                                              ; preds = %386, %150
  %394 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 29
  store i32 %58, ptr %394, align 4, !tbaa !160
  %395 = load ptr, ptr %103, align 8, !tbaa !355
  %396 = icmp eq ptr %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %393
  call void @end_latt_deform(ptr noundef nonnull %395) #23
  store ptr null, ptr %103, align 8, !tbaa !355
  br label %398

398:                                              ; preds = %397, %393
  %399 = icmp eq ptr %142, null
  br i1 %399, label %402, label %400

400:                                              ; preds = %398
  %401 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %401(ptr noundef nonnull %142) #23
  br label %402

402:                                              ; preds = %400, %398
  %403 = icmp eq ptr %143, null
  br i1 %403, label %406, label %404

404:                                              ; preds = %402
  %405 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %405(ptr noundef nonnull %143) #23
  br label %406

406:                                              ; preds = %402, %404, %79, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_get_texture(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  %19 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 14
  store float 1.000000e+00, ptr %19, align 4, !tbaa !394
  %20 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 10
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 8
  %22 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 7
  %23 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 6
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 5
  %25 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 4
  %26 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 3
  %27 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 2
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %27, align 4, !tbaa !34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !395
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = ptrtoint ptr %1 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 200
  %34 = sitofp i64 %33 to float
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 26
  %36 = load i32, ptr %35, align 8, !tbaa !42
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %34, %37
  %39 = getelementptr inbounds %struct.ParticleTexture, ptr %2, i64 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !396
  %40 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %41 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  %42 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %43 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 8
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 9
  %46 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %47 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 11
  %48 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  %49 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 10
  %50 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 12
  %51 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 2
  %52 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 33
  %53 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 34
  %54 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 34, i64 1
  %55 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 34, i64 2
  %56 = getelementptr inbounds float, ptr %7, i64 1
  %57 = getelementptr inbounds float, ptr %7, i64 2
  %58 = getelementptr inbounds float, ptr %7, i64 3
  %59 = and i32 %3, 1
  %60 = and i32 %3, 2
  %61 = and i32 %3, 4
  %62 = and i32 %3, 8
  %63 = and i32 %3, 32
  %64 = and i32 %3, 64
  %65 = and i32 %3, 1024
  %66 = and i32 %3, 2048
  %67 = and i32 %3, 16
  br label %68

68:                                               ; preds = %5, %304
  %69 = phi ptr [ %18, %5 ], [ %307, %304 ]
  %70 = phi i32 [ 0, %5 ], [ %306, %304 ]
  %71 = phi i32 [ 0, %5 ], [ %305, %304 ]
  %72 = load ptr, ptr %69, align 8, !tbaa !58
  %73 = icmp eq ptr %72, null
  br i1 %73, label %304, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !136
  %77 = icmp eq ptr %76, null
  br i1 %77, label %304, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 1
  %80 = load i16, ptr %79, align 2, !tbaa !397
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %304, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 26
  %84 = load float, ptr %83, align 4, !tbaa !398
  %85 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 3
  %86 = load i16, ptr %85, align 2, !tbaa !399
  %87 = load i16, ptr %72, align 8, !tbaa !400
  switch i16 %87, label %171 [
    i16 16, label %88
    i16 8, label %95
    i16 32, label %96
    i16 8192, label %146
    i16 1, label %109
  ]

88:                                               ; preds = %82
  %89 = load i16, ptr %44, align 2, !tbaa !284
  %90 = add i16 %89, -1
  %91 = icmp ult i16 %90, 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i16, ptr %45, align 4, !tbaa !283
  %94 = icmp eq i16 %93, 2
  br i1 %94, label %95, label %102

95:                                               ; preds = %82, %88, %92
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %1) #24
  br label %171

96:                                               ; preds = %82
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %1) #24
  %97 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !401
  %99 = icmp eq ptr %98, null
  br i1 %99, label %171, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.Object, ptr %98, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %101, ptr noundef nonnull %9) #23
  br label %171

102:                                              ; preds = %92
  %103 = load ptr, ptr %46, align 8, !tbaa !286
  %104 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !190
  %106 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 6
  %107 = call fastcc i32 @get_particle_uv(ptr noundef %105, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %47, ptr noundef nonnull %106, ptr noundef nonnull %9) #24, !range !66
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %171

109:                                              ; preds = %82, %102
  %110 = load ptr, ptr %46, align 8, !tbaa !286
  %111 = load ptr, ptr %14, align 8, !tbaa !65
  %112 = getelementptr inbounds %struct.ParticleSystem, ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !48
  %114 = getelementptr inbounds %struct.ParticleSettings, ptr %113, i64 0, i32 8
  %115 = load i16, ptr %114, align 2, !tbaa !284
  %116 = sext i16 %115 to i32
  %117 = load i32, ptr %48, align 8, !tbaa !280
  %118 = load i32, ptr %49, align 4, !tbaa !281
  %119 = load float, ptr %50, align 8, !tbaa !287
  call void @psys_particle_on_emitter(ptr noundef %110, i32 noundef %116, i32 noundef %117, i32 noundef %118, ptr noundef nonnull %47, float noundef %119, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null) #24
  %120 = load ptr, ptr %51, align 8, !tbaa !402
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.BoundBox, ptr %120, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !403
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122, %109
  call void @BKE_mesh_texspace_calc(ptr noundef nonnull %13) #23
  br label %128

128:                                              ; preds = %127, %122
  call fastcc void @sub_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %52) #24
  %129 = load float, ptr %53, align 8, !tbaa !34
  %130 = fcmp une float %129, 0.000000e+00
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load float, ptr %9, align 4, !tbaa !34
  %133 = fdiv float %132, %129
  store float %133, ptr %9, align 4, !tbaa !34
  br label %134

134:                                              ; preds = %131, %128
  %135 = load float, ptr %54, align 4, !tbaa !34
  %136 = fcmp une float %135, 0.000000e+00
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load float, ptr %42, align 4, !tbaa !34
  %139 = fdiv float %138, %135
  store float %139, ptr %42, align 4, !tbaa !34
  br label %140

140:                                              ; preds = %137, %134
  %141 = load float, ptr %55, align 8, !tbaa !34
  %142 = fcmp une float %141, 0.000000e+00
  br i1 %142, label %143, label %171

143:                                              ; preds = %140
  %144 = load float, ptr %43, align 4, !tbaa !34
  %145 = fdiv float %144, %141
  store float %145, ptr %43, align 4, !tbaa !34
  br label %171

146:                                              ; preds = %82
  %147 = load float, ptr %40, align 4, !tbaa !405
  %148 = fsub float %4, %147
  %149 = fmul float %148, 2.000000e+00
  %150 = load float, ptr %41, align 4, !tbaa !406
  %151 = fsub float %150, %147
  %152 = fdiv float %149, %151
  %153 = fadd float %152, -1.000000e+00
  store float %153, ptr %9, align 4, !tbaa !34
  %154 = load ptr, ptr %14, align 8, !tbaa !65
  %155 = getelementptr inbounds %struct.ParticleSystem, ptr %154, i64 0, i32 26
  %156 = load i32, ptr %155, align 8, !tbaa !42
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %146
  %159 = getelementptr inbounds %struct.ParticleSystem, ptr %154, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !47
  %161 = ptrtoint ptr %160 to i64
  %162 = sub i64 %30, %161
  %163 = sdiv exact i64 %162, 200
  %164 = sitofp i64 %163 to float
  %165 = fmul float %164, 2.000000e+00
  %166 = sitofp i32 %156 to float
  %167 = fdiv float %165, %166
  %168 = fadd float %167, -1.000000e+00
  br label %169

169:                                              ; preds = %146, %158
  %170 = phi float [ %168, %158 ], [ 0.000000e+00, %146 ]
  store float %170, ptr %42, align 4, !tbaa !34
  store float 0.000000e+00, ptr %43, align 4, !tbaa !34
  br label %171

171:                                              ; preds = %82, %140, %143, %102, %96, %100, %169, %95
  %172 = call i32 @externtex(ptr noundef nonnull %72, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %58, i32 noundef 0, ptr noundef null) #23
  %173 = load i16, ptr %79, align 2, !tbaa !397
  %174 = zext i16 %173 to i32
  %175 = and i32 %59, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %201, label %177

177:                                              ; preds = %171
  %178 = and i32 %71, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 49
  %182 = load float, ptr %181, align 8, !tbaa !407
  %183 = fcmp olt float %182, 0.000000e+00
  %184 = call float @llvm.fabs.f32(float %182)
  %185 = fsub float 1.000000e+00, %184
  %186 = load float, ptr %39, align 4, !tbaa !396
  %187 = fmul float %186, %185
  %188 = load float, ptr %6, align 4
  %189 = fsub float 1.000000e+00, %188
  %190 = select i1 %183, float %189, float %188
  %191 = call float @llvm.fmuladd.f32(float %184, float %190, float %187)
  store float %191, ptr %39, align 4, !tbaa !396
  br label %201

192:                                              ; preds = %177
  %193 = load float, ptr %39, align 4, !tbaa !396
  %194 = load float, ptr %6, align 4, !tbaa !34
  %195 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 49
  %196 = load float, ptr %195, align 8, !tbaa !407
  %197 = sext i16 %86 to i32
  %198 = call float @texture_value_blend(float noundef %84, float noundef %193, float noundef %194, float noundef %196, i32 noundef %197) #23
  store float %198, ptr %39, align 4, !tbaa !396
  %199 = load i16, ptr %79, align 2, !tbaa !397
  %200 = zext i16 %199 to i32
  br label %201

201:                                              ; preds = %180, %192, %171
  %202 = phi i32 [ %174, %180 ], [ %200, %192 ], [ %174, %171 ]
  %203 = phi i32 [ 1, %180 ], [ %71, %192 ], [ %71, %171 ]
  %204 = and i32 %60, %202
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %201
  %207 = load float, ptr %27, align 4, !tbaa !408
  %208 = load float, ptr %6, align 4, !tbaa !34
  %209 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 57
  %210 = load float, ptr %209, align 8, !tbaa !409
  %211 = sext i16 %86 to i32
  %212 = call float @texture_value_blend(float noundef %84, float noundef %207, float noundef %208, float noundef %210, i32 noundef %211) #23
  store float %212, ptr %27, align 4, !tbaa !408
  %213 = load i16, ptr %79, align 2, !tbaa !397
  %214 = zext i16 %213 to i32
  br label %215

215:                                              ; preds = %206, %201
  %216 = phi i32 [ %214, %206 ], [ %202, %201 ]
  %217 = and i32 %61, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %215
  %220 = load float, ptr %26, align 4, !tbaa !410
  %221 = load float, ptr %6, align 4, !tbaa !34
  %222 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 55
  %223 = load float, ptr %222, align 8, !tbaa !411
  %224 = sext i16 %86 to i32
  %225 = call float @texture_value_blend(float noundef %84, float noundef %220, float noundef %221, float noundef %223, i32 noundef %224) #23
  store float %225, ptr %26, align 4, !tbaa !410
  %226 = load i16, ptr %79, align 2, !tbaa !397
  %227 = zext i16 %226 to i32
  br label %228

228:                                              ; preds = %219, %215
  %229 = phi i32 [ %227, %219 ], [ %216, %215 ]
  %230 = and i32 %62, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %228
  %233 = load float, ptr %25, align 4, !tbaa !412
  %234 = load float, ptr %6, align 4, !tbaa !34
  %235 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 58
  %236 = load float, ptr %235, align 4, !tbaa !413
  %237 = sext i16 %86 to i32
  %238 = call float @texture_value_blend(float noundef %84, float noundef %233, float noundef %234, float noundef %236, i32 noundef %237) #23
  store float %238, ptr %25, align 4, !tbaa !412
  %239 = load i16, ptr %79, align 2, !tbaa !397
  %240 = zext i16 %239 to i32
  br label %241

241:                                              ; preds = %232, %228
  %242 = phi i32 [ %240, %232 ], [ %229, %228 ]
  %243 = and i32 %63, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %241
  %246 = load float, ptr %2, align 4, !tbaa !395
  %247 = load float, ptr %6, align 4, !tbaa !34
  %248 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 59
  %249 = load float, ptr %248, align 8, !tbaa !414
  %250 = sext i16 %86 to i32
  %251 = call float @texture_value_blend(float noundef %84, float noundef %246, float noundef %247, float noundef %249, i32 noundef %250) #23
  store float %251, ptr %2, align 4, !tbaa !395
  %252 = load i16, ptr %79, align 2, !tbaa !397
  %253 = zext i16 %252 to i32
  br label %254

254:                                              ; preds = %245, %241
  %255 = phi i32 [ %253, %245 ], [ %242, %241 ]
  %256 = and i32 %64, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %254
  %259 = load float, ptr %22, align 4, !tbaa !415
  %260 = load float, ptr %6, align 4, !tbaa !34
  %261 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 60
  %262 = load float, ptr %261, align 4, !tbaa !416
  %263 = sext i16 %86 to i32
  %264 = call float @texture_value_blend(float noundef %84, float noundef %259, float noundef %260, float noundef %262, i32 noundef %263) #23
  store float %264, ptr %22, align 4, !tbaa !415
  %265 = load i16, ptr %79, align 2, !tbaa !397
  %266 = zext i16 %265 to i32
  br label %267

267:                                              ; preds = %258, %254
  %268 = phi i32 [ %266, %258 ], [ %255, %254 ]
  %269 = and i32 %65, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %267
  %272 = load float, ptr %23, align 4, !tbaa !417
  %273 = load float, ptr %6, align 4, !tbaa !34
  %274 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 56
  %275 = load float, ptr %274, align 4, !tbaa !418
  %276 = sext i16 %86 to i32
  %277 = call float @texture_value_blend(float noundef %84, float noundef %272, float noundef %273, float noundef %275, i32 noundef %276) #23
  store float %277, ptr %23, align 4, !tbaa !417
  %278 = load i16, ptr %79, align 2, !tbaa !397
  %279 = zext i16 %278 to i32
  br label %280

280:                                              ; preds = %271, %267
  %281 = phi i32 [ %279, %271 ], [ %268, %267 ]
  %282 = and i32 %66, %281
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %293, label %284

284:                                              ; preds = %280
  %285 = load float, ptr %24, align 4, !tbaa !419
  %286 = load float, ptr %6, align 4, !tbaa !34
  %287 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 52
  %288 = load float, ptr %287, align 4, !tbaa !420
  %289 = sext i16 %86 to i32
  %290 = call float @texture_value_blend(float noundef %84, float noundef %285, float noundef %286, float noundef %288, i32 noundef %289) #23
  store float %290, ptr %24, align 4, !tbaa !419
  %291 = load i16, ptr %79, align 2, !tbaa !397
  %292 = zext i16 %291 to i32
  br label %293

293:                                              ; preds = %284, %280
  %294 = phi i32 [ %292, %284 ], [ %281, %280 ]
  %295 = and i32 %67, %294
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %304, label %297

297:                                              ; preds = %293
  %298 = load float, ptr %21, align 4, !tbaa !372
  %299 = load float, ptr %6, align 4, !tbaa !34
  %300 = getelementptr inbounds %struct.MTex, ptr %72, i64 0, i32 50
  %301 = load float, ptr %300, align 4, !tbaa !421
  %302 = sext i16 %86 to i32
  %303 = call float @texture_value_blend(float noundef %84, float noundef %298, float noundef %299, float noundef %301, i32 noundef %302) #23
  store float %303, ptr %21, align 4, !tbaa !372
  br label %304

304:                                              ; preds = %293, %297, %68, %74, %78
  %305 = phi i32 [ %71, %78 ], [ %71, %74 ], [ %71, %68 ], [ %203, %297 ], [ %203, %293 ]
  %306 = add nuw nsw i32 %70, 1
  %307 = getelementptr inbounds ptr, ptr %69, i64 1
  %308 = icmp eq i32 %306, 18
  br i1 %308, label %309, label %68, !llvm.loop !422

309:                                              ; preds = %304
  %310 = icmp eq i32 %59, 0
  br i1 %310, label %323, label %311

311:                                              ; preds = %309
  %312 = load float, ptr %39, align 4, !tbaa !396
  %313 = fcmp olt float %312, 0.000000e+00
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = fadd float %312, 1.000000e+00
  store float %315, ptr %39, align 4, !tbaa !396
  br label %316

316:                                              ; preds = %314, %311
  %317 = phi float [ %315, %314 ], [ %312, %311 ]
  %318 = fcmp olt float %317, 0.000000e+00
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = fcmp ogt float %317, 1.000000e+00
  br i1 %320, label %321, label %323

321:                                              ; preds = %319, %316
  %322 = phi float [ 0.000000e+00, %316 ], [ 1.000000e+00, %319 ]
  store float %322, ptr %39, align 4, !tbaa !396
  br label %323

323:                                              ; preds = %321, %319, %309
  %324 = icmp eq i32 %60, 0
  br i1 %324, label %337, label %325

325:                                              ; preds = %323
  %326 = load float, ptr %27, align 4, !tbaa !408
  %327 = fcmp olt float %326, 0.000000e+00
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = fadd float %326, 1.000000e+00
  store float %329, ptr %27, align 4, !tbaa !408
  br label %330

330:                                              ; preds = %328, %325
  %331 = phi float [ %329, %328 ], [ %326, %325 ]
  %332 = fcmp olt float %331, 0.000000e+00
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = fcmp ogt float %331, 1.000000e+00
  br i1 %334, label %335, label %337

335:                                              ; preds = %333, %330
  %336 = phi float [ 0.000000e+00, %330 ], [ 1.000000e+00, %333 ]
  store float %336, ptr %27, align 4, !tbaa !408
  br label %337

337:                                              ; preds = %335, %333, %323
  %338 = icmp eq i32 %61, 0
  br i1 %338, label %351, label %339

339:                                              ; preds = %337
  %340 = load float, ptr %26, align 4, !tbaa !410
  %341 = fcmp olt float %340, 0.000000e+00
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = fadd float %340, 1.000000e+00
  store float %343, ptr %26, align 4, !tbaa !410
  br label %344

344:                                              ; preds = %342, %339
  %345 = phi float [ %343, %342 ], [ %340, %339 ]
  %346 = fcmp olt float %345, 0.000000e+00
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = fcmp ogt float %345, 1.000000e+00
  br i1 %348, label %349, label %351

349:                                              ; preds = %347, %344
  %350 = phi float [ 0.000000e+00, %344 ], [ 1.000000e+00, %347 ]
  store float %350, ptr %26, align 4, !tbaa !410
  br label %351

351:                                              ; preds = %349, %347, %337
  %352 = icmp eq i32 %62, 0
  br i1 %352, label %365, label %353

353:                                              ; preds = %351
  %354 = load float, ptr %25, align 4, !tbaa !412
  %355 = fcmp olt float %354, 0.000000e+00
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = fadd float %354, 1.000000e+00
  store float %357, ptr %25, align 4, !tbaa !412
  br label %358

358:                                              ; preds = %356, %353
  %359 = phi float [ %357, %356 ], [ %354, %353 ]
  %360 = fcmp olt float %359, 0.000000e+00
  br i1 %360, label %363, label %361

361:                                              ; preds = %358
  %362 = fcmp ogt float %359, 1.000000e+00
  br i1 %362, label %363, label %365

363:                                              ; preds = %361, %358
  %364 = phi float [ 0.000000e+00, %358 ], [ 1.000000e+00, %361 ]
  store float %364, ptr %25, align 4, !tbaa !412
  br label %365

365:                                              ; preds = %363, %361, %351
  %366 = icmp eq i32 %63, 0
  br i1 %366, label %374, label %367

367:                                              ; preds = %365
  %368 = load float, ptr %2, align 4, !tbaa !395
  %369 = fcmp olt float %368, -1.000000e+00
  br i1 %369, label %372, label %370

370:                                              ; preds = %367
  %371 = fcmp ogt float %368, 1.000000e+00
  br i1 %371, label %372, label %374

372:                                              ; preds = %370, %367
  %373 = phi float [ -1.000000e+00, %367 ], [ 1.000000e+00, %370 ]
  store float %373, ptr %2, align 4, !tbaa !395
  br label %374

374:                                              ; preds = %372, %370, %365
  %375 = icmp eq i32 %64, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %374
  %377 = load float, ptr %22, align 4, !tbaa !415
  %378 = fcmp olt float %377, -1.000000e+00
  br i1 %378, label %381, label %379

379:                                              ; preds = %376
  %380 = fcmp ogt float %377, 1.000000e+00
  br i1 %380, label %381, label %383

381:                                              ; preds = %379, %376
  %382 = phi float [ -1.000000e+00, %376 ], [ 1.000000e+00, %379 ]
  store float %382, ptr %22, align 4, !tbaa !415
  br label %383

383:                                              ; preds = %381, %379, %374
  %384 = icmp eq i32 %65, 0
  br i1 %384, label %392, label %385

385:                                              ; preds = %383
  %386 = load float, ptr %23, align 4, !tbaa !417
  %387 = fcmp olt float %386, -1.000000e+00
  br i1 %387, label %390, label %388

388:                                              ; preds = %385
  %389 = fcmp ogt float %386, 1.000000e+00
  br i1 %389, label %390, label %392

390:                                              ; preds = %388, %385
  %391 = phi float [ -1.000000e+00, %385 ], [ 1.000000e+00, %388 ]
  store float %391, ptr %23, align 4, !tbaa !417
  br label %392

392:                                              ; preds = %390, %388, %383
  %393 = icmp eq i32 %66, 0
  br i1 %393, label %406, label %394

394:                                              ; preds = %392
  %395 = load float, ptr %24, align 4, !tbaa !419
  %396 = fcmp olt float %395, 0.000000e+00
  br i1 %396, label %397, label %399

397:                                              ; preds = %394
  %398 = fadd float %395, 1.000000e+00
  store float %398, ptr %24, align 4, !tbaa !419
  br label %399

399:                                              ; preds = %397, %394
  %400 = phi float [ %398, %397 ], [ %395, %394 ]
  %401 = fcmp olt float %400, 0.000000e+00
  br i1 %401, label %404, label %402

402:                                              ; preds = %399
  %403 = fcmp ogt float %400, 1.000000e+00
  br i1 %403, label %404, label %406

404:                                              ; preds = %402, %399
  %405 = phi float [ 0.000000e+00, %399 ], [ 1.000000e+00, %402 ]
  store float %405, ptr %24, align 4, !tbaa !419
  br label %406

406:                                              ; preds = %404, %402, %392
  %407 = icmp eq i32 %67, 0
  br i1 %407, label %420, label %408

408:                                              ; preds = %406
  %409 = load float, ptr %21, align 4, !tbaa !372
  %410 = fcmp olt float %409, 0.000000e+00
  br i1 %410, label %411, label %413

411:                                              ; preds = %408
  %412 = fadd float %409, 1.000000e+00
  store float %412, ptr %21, align 4, !tbaa !372
  br label %413

413:                                              ; preds = %411, %408
  %414 = phi float [ %412, %411 ], [ %409, %408 ]
  %415 = fcmp olt float %414, 0.000000e+00
  br i1 %415, label %418, label %416

416:                                              ; preds = %413
  %417 = fcmp ogt float %414, 1.000000e+00
  br i1 %417, label %418, label %420

418:                                              ; preds = %416, %413
  %419 = phi float [ 0.000000e+00, %413 ], [ 1.000000e+00, %416 ]
  store float %419, ptr %21, align 4, !tbaa !372
  br label %420

420:                                              ; preds = %418, %416, %406
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_particle_interpolation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !423 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !378
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !424
  %11 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 8
  store ptr %10, ptr %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !426
  %14 = icmp sgt i32 %13, 1
  %15 = getelementptr inbounds %struct.PTCacheEditKey, ptr %10, i64 1
  %16 = select i1 %14, ptr %15, ptr null
  %17 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 8, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !58
  %18 = load ptr, ptr %7, align 8, !tbaa !424
  %19 = getelementptr inbounds %struct.PTCacheEditKey, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !427
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %21, ptr %22, align 8, !tbaa !383
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds %struct.PTCacheEditKey, ptr %18, i64 %23
  %25 = getelementptr %struct.PTCacheEditKey, ptr %24, i64 -1, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !427
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %27, ptr %28, align 4, !tbaa !384
  br label %123

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !375
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !155
  %36 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 4
  store ptr %35, ptr %36, align 8, !tbaa !58
  %37 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !144
  %39 = icmp sgt i32 %38, 1
  %40 = getelementptr inbounds %struct.ParticleKey, ptr %35, i64 1
  %41 = select i1 %39, ptr %40, ptr null
  %42 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 4, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.ParticleKey, ptr %35, i64 0, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !385
  %45 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %44, ptr %45, align 8, !tbaa !383
  %46 = sext i32 %38 to i64
  %47 = getelementptr inbounds %struct.ParticleKey, ptr %35, i64 %46
  %48 = getelementptr %struct.ParticleKey, ptr %47, i64 -1, i32 4
  %49 = load float, ptr %48, align 4, !tbaa !385
  %50 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %49, ptr %50, align 4, !tbaa !384
  br label %123

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !377
  %54 = icmp eq ptr %53, null
  br i1 %54, label %98, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 6
  tail call fastcc void @get_pointcache_keys_for_time(ptr noundef nonnull %53, ptr noundef nonnull %56, i32 noundef -1, float noundef 0.000000e+00, ptr noundef null, ptr noundef null) #24
  %57 = icmp eq ptr %1, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 6
  %60 = load float, ptr %59, align 4, !tbaa !405
  %61 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %60, ptr %61, align 8, !tbaa !383
  %62 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 8
  %63 = load float, ptr %62, align 4, !tbaa !406
  %64 = load ptr, ptr %52, align 8, !tbaa !377
  br label %74

65:                                               ; preds = %55
  %66 = load ptr, ptr %52, align 8, !tbaa !377
  %67 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !429
  %69 = sitofp i32 %68 to float
  %70 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %69, ptr %70, align 8, !tbaa !383
  %71 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !430
  %73 = sitofp i32 %72 to float
  br label %74

74:                                               ; preds = %65, %58
  %75 = phi ptr [ %64, %58 ], [ %66, %65 ]
  %76 = phi ptr [ %61, %58 ], [ %70, %65 ]
  %77 = phi float [ %63, %58 ], [ %73, %65 ]
  %78 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %77, ptr %78, align 4, !tbaa !384
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !47
  %81 = ptrtoint ptr %1 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 200
  %85 = trunc i64 %84 to i32
  %86 = call fastcc i32 @get_pointcache_times_for_particle(ptr noundef %75, i32 noundef %85, ptr noundef nonnull %4, ptr noundef nonnull %5) #24, !range !66
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %74
  %89 = load float, ptr %76, align 8, !tbaa !383
  %90 = load float, ptr %4, align 4, !tbaa !34
  %91 = fcmp ogt float %89, %90
  %92 = select i1 %91, float %89, float %90
  store float %92, ptr %76, align 8, !tbaa !383
  %93 = load float, ptr %78, align 4, !tbaa !384
  %94 = load float, ptr %5, align 4, !tbaa !34
  %95 = fcmp olt float %93, %94
  %96 = select i1 %95, float %93, float %94
  store float %96, ptr %78, align 4, !tbaa !384
  br label %97

97:                                               ; preds = %88, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %123

98:                                               ; preds = %51
  %99 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !143
  store ptr %100, ptr %2, align 8, !tbaa !58
  %101 = getelementptr inbounds %struct.HairKey, ptr %100, i64 1
  %102 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 1
  store ptr %101, ptr %102, align 8, !tbaa !58
  %103 = getelementptr inbounds %struct.HairKey, ptr %100, i64 0, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !431
  %105 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 9
  store float %104, ptr %105, align 8, !tbaa !383
  %106 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !144
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.HairKey, ptr %100, i64 %108
  %110 = getelementptr %struct.HairKey, ptr %109, i64 -1, i32 1
  %111 = load float, ptr %110, align 4, !tbaa !431
  %112 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 10
  store float %111, ptr %112, align 4, !tbaa !384
  %113 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !380
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %98
  %117 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 16
  %118 = load i32, ptr %117, align 8, !tbaa !433
  %119 = tail call ptr @CDDM_get_vert(ptr noundef nonnull %114, i32 noundef %118) #23
  %120 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 2
  store ptr %119, ptr %120, align 8, !tbaa !58
  %121 = getelementptr inbounds %struct.MVert, ptr %119, i64 1
  %122 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %2, i64 0, i32 2, i64 1
  store ptr %121, ptr %122, align 8, !tbaa !58
  br label %123

123:                                              ; preds = %98, %116, %33, %97, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_mat_hair_to_global(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  call void @psys_mat_hair_to_object(ptr poison, ptr noundef %1, i16 noundef signext %2, ptr noundef %3, ptr noundef nonnull %6) #24
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_particle_interpolation(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !434 {
  %7 = alloca [4 x %struct.ParticleKey], align 16
  %8 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !424
  %13 = getelementptr inbounds %struct.PTCacheEditKey, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !435
  %15 = icmp ne ptr %14, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  %16 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %17 = load float, ptr %16, align 4, !tbaa !385
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = fneg float %17
  br label %36

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.PTCacheEditKey, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !427
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %9, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !426
  %29 = sext i32 %28 to i64
  %30 = getelementptr %struct.PTCacheEditKey, ptr %23, i64 %29
  %31 = getelementptr %struct.PTCacheEditKey, ptr %30, i64 -1, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !427
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %33, %26
  %35 = tail call float @llvm.fmuladd.f32(float %3, float %34, float %26)
  br label %36

36:                                               ; preds = %21, %19
  %37 = phi float [ %20, %19 ], [ %35, %21 ]
  %38 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = getelementptr inbounds %struct.PTCacheEditKey, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !427
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fcmp olt float %42, %37
  br i1 %43, label %44, label %51

44:                                               ; preds = %36, %44
  %45 = phi ptr [ %46, %44 ], [ %39, %36 ]
  %46 = getelementptr inbounds %struct.PTCacheEditKey, ptr %45, i64 1
  store ptr %46, ptr %38, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.PTCacheEditKey, ptr %45, i64 1, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !427
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fcmp olt float %49, %37
  br i1 %50, label %44, label %51, !llvm.loop !436

51:                                               ; preds = %44, %36
  %52 = phi ptr [ %39, %36 ], [ %46, %44 ]
  %53 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %54 = getelementptr inbounds %struct.PTCacheEditKey, ptr %52, i64 -1
  store ptr %54, ptr %53, align 8, !tbaa !58
  br label %206

55:                                               ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  %56 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !375
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %152, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4
  %61 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %60, align 8, !tbaa !58
  tail call void @copy_particle_key(ptr noundef %5, ptr noundef %65, i32 noundef 1) #24
  br label %398

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %68 = load float, ptr %67, align 4, !tbaa !385
  %69 = fcmp olt float %68, 0.000000e+00
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = fneg float %68
  br label %84

72:                                               ; preds = %66
  %73 = load ptr, ptr %60, align 8, !tbaa !58
  %74 = getelementptr inbounds %struct.ParticleKey, ptr %73, i64 0, i32 4
  %75 = load float, ptr %74, align 4, !tbaa !385
  %76 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !144
  %78 = sext i32 %77 to i64
  %79 = getelementptr %struct.ParticleKey, ptr %73, i64 %78
  %80 = getelementptr %struct.ParticleKey, ptr %79, i64 -1, i32 4
  %81 = load float, ptr %80, align 4, !tbaa !385
  %82 = fsub float %81, %75
  %83 = tail call float @llvm.fmuladd.f32(float %3, float %82, float %75)
  br label %84

84:                                               ; preds = %72, %70
  %85 = phi float [ %71, %70 ], [ %83, %72 ]
  %86 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.ParticleSettings, ptr %87, i64 0, i32 11
  %89 = load i16, ptr %88, align 8, !tbaa !437
  %90 = icmp eq i16 %89, 2
  br i1 %90, label %91, label %127

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 25
  %93 = load i32, ptr %92, align 4, !tbaa !59
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !438
  %99 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 6
  %100 = load float, ptr %99, align 4, !tbaa !405
  br label %101

101:                                              ; preds = %105, %96
  %102 = phi ptr [ %98, %96 ], [ %103, %105 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !439
  %104 = icmp eq ptr %103, null
  br i1 %104, label %121, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.ParticleTarget, ptr %103, i64 0, i32 6
  %107 = load float, ptr %106, align 8, !tbaa !441
  %108 = fadd float %100, %107
  %109 = fcmp olt float %108, %85
  br i1 %109, label %101, label %110, !llvm.loop !442

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ParticleTarget, ptr %103, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !443
  %113 = getelementptr inbounds %struct.ParticleTarget, ptr %112, i64 0, i32 6
  %114 = load float, ptr %113, align 8, !tbaa !441
  %115 = fadd float %100, %114
  %116 = getelementptr inbounds %struct.ParticleTarget, ptr %112, i64 0, i32 7
  %117 = load float, ptr %116, align 4, !tbaa !444
  %118 = fadd float %115, %117
  %119 = fcmp ogt float %118, %85
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  br label %127

121:                                              ; preds = %101
  %122 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 17, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !445
  %124 = getelementptr inbounds %struct.ParticleTarget, ptr %123, i64 0, i32 6
  %125 = load float, ptr %124, align 8, !tbaa !441
  %126 = fadd float %100, %125
  br label %127

127:                                              ; preds = %121, %120, %110, %91, %84
  %128 = phi float [ %85, %91 ], [ %85, %84 ], [ %115, %120 ], [ %85, %110 ], [ %126, %121 ]
  %129 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 6
  %130 = load float, ptr %129, align 4, !tbaa !405
  %131 = fcmp olt float %128, %130
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 8
  %134 = load float, ptr %133, align 4, !tbaa !406
  %135 = fcmp ogt float %128, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %127, %132, %136
  %138 = phi float [ %134, %136 ], [ %128, %132 ], [ %130, %127 ]
  %139 = getelementptr inbounds %struct.ParticleKey, ptr %62, i64 0, i32 4
  %140 = load float, ptr %139, align 4, !tbaa !385
  %141 = fcmp olt float %140, %138
  br i1 %141, label %142, label %149

142:                                              ; preds = %137, %142
  %143 = phi ptr [ %144, %142 ], [ %62, %137 ]
  %144 = getelementptr inbounds %struct.ParticleKey, ptr %143, i64 1
  %145 = getelementptr inbounds %struct.ParticleKey, ptr %143, i64 1, i32 4
  %146 = load float, ptr %145, align 4, !tbaa !385
  %147 = fcmp olt float %146, %138
  br i1 %147, label %142, label %148, !llvm.loop !446

148:                                              ; preds = %142
  store ptr %144, ptr %61, align 8, !tbaa !58
  br label %149

149:                                              ; preds = %148, %137
  %150 = phi ptr [ %144, %148 ], [ %62, %137 ]
  %151 = getelementptr inbounds %struct.ParticleKey, ptr %150, i64 -1
  store ptr %151, ptr %60, align 8, !tbaa !58
  br label %206

152:                                              ; preds = %55
  %153 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !377
  %155 = icmp eq ptr %154, null
  %156 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %157 = load float, ptr %156, align 4, !tbaa !385
  %158 = fcmp olt float %157, 0.000000e+00
  br i1 %155, label %169, label %159

159:                                              ; preds = %152
  br i1 %158, label %160, label %162

160:                                              ; preds = %159
  %161 = fneg float %157
  br label %216

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 6
  %164 = load float, ptr %163, align 4, !tbaa !405
  %165 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 8
  %166 = load float, ptr %165, align 4, !tbaa !406
  %167 = fsub float %166, %164
  %168 = tail call float @llvm.fmuladd.f32(float %3, float %167, float %164)
  br label %216

169:                                              ; preds = %152
  br i1 %158, label %170, label %172

170:                                              ; preds = %169
  %171 = fneg float %157
  br label %184

172:                                              ; preds = %169
  %173 = load ptr, ptr %4, align 8, !tbaa !58
  %174 = getelementptr inbounds %struct.HairKey, ptr %173, i64 0, i32 1
  %175 = load float, ptr %174, align 4, !tbaa !431
  %176 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 5
  %177 = load i32, ptr %176, align 8, !tbaa !144
  %178 = sext i32 %177 to i64
  %179 = getelementptr %struct.HairKey, ptr %173, i64 %178
  %180 = getelementptr %struct.HairKey, ptr %179, i64 -1, i32 1
  %181 = load float, ptr %180, align 4, !tbaa !431
  %182 = fsub float %181, %175
  %183 = tail call float @llvm.fmuladd.f32(float %3, float %182, float %175)
  br label %184

184:                                              ; preds = %172, %170
  %185 = phi float [ %171, %170 ], [ %183, %172 ]
  %186 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !58
  %188 = getelementptr inbounds %struct.HairKey, ptr %187, i64 0, i32 1
  %189 = load float, ptr %188, align 4, !tbaa !431
  %190 = fcmp olt float %189, %185
  br i1 %190, label %191, label %203

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !58
  br label %194

194:                                              ; preds = %191, %194
  %195 = phi ptr [ %193, %191 ], [ %198, %194 ]
  %196 = phi ptr [ %187, %191 ], [ %197, %194 ]
  %197 = getelementptr inbounds %struct.HairKey, ptr %196, i64 1
  %198 = getelementptr inbounds %struct.MVert, ptr %195, i64 1
  %199 = getelementptr inbounds %struct.HairKey, ptr %196, i64 1, i32 1
  %200 = load float, ptr %199, align 4, !tbaa !431
  %201 = fcmp olt float %200, %185
  br i1 %201, label %194, label %202, !llvm.loop !447

202:                                              ; preds = %194
  store ptr %197, ptr %186, align 8, !tbaa !58
  store ptr %198, ptr %192, align 8, !tbaa !58
  br label %203

203:                                              ; preds = %202, %184
  %204 = phi ptr [ %197, %202 ], [ %187, %184 ]
  %205 = getelementptr inbounds %struct.HairKey, ptr %204, i64 -1
  store ptr %205, ptr %4, align 8, !tbaa !58
  br label %206

206:                                              ; preds = %149, %203, %51
  %207 = phi i1 [ %15, %51 ], [ false, %149 ], [ false, %203 ]
  %208 = phi float [ %37, %51 ], [ %138, %149 ], [ %185, %203 ]
  br i1 %10, label %216, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %211 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %212 = load ptr, ptr %211, align 8, !tbaa !58
  call fastcc void @edit_to_particle(ptr noundef nonnull %210, ptr noundef %212) #24
  %213 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %214 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !58
  call fastcc void @edit_to_particle(ptr noundef nonnull %213, ptr noundef %215) #24
  br label %257

216:                                              ; preds = %162, %160, %206
  %217 = phi float [ %208, %206 ], [ %168, %162 ], [ %161, %160 ]
  %218 = phi i1 [ %207, %206 ], [ false, %162 ], [ false, %160 ]
  %219 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !380
  %221 = icmp eq ptr %220, null
  br i1 %221, label %232, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2
  %224 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !58
  %226 = getelementptr inbounds %struct.MVert, ptr %225, i64 -1
  store ptr %226, ptr %223, align 8, !tbaa !58
  %227 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %228 = load ptr, ptr %4, align 8, !tbaa !58
  call fastcc void @mvert_to_particle(ptr noundef nonnull %227, ptr noundef nonnull %226, ptr noundef %228) #24
  %229 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %230 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !58
  call fastcc void @mvert_to_particle(ptr noundef nonnull %229, ptr noundef %225, ptr noundef %231) #24
  br label %257

232:                                              ; preds = %216
  %233 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 3
  %234 = load i32, ptr %233, align 8, !tbaa !375
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %238 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %237, ptr noundef nonnull align 4 dereferenceable(56) %239, i64 56, i1 false)
  %240 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %241 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 4, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %240, ptr noundef nonnull align 4 dereferenceable(56) %242, i64 56, i1 false)
  br label %257

243:                                              ; preds = %232
  %244 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %245 = load ptr, ptr %244, align 8, !tbaa !377
  %246 = icmp eq ptr %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 6
  %249 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %250 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  call fastcc void @get_pointcache_keys_for_time(ptr noundef nonnull %245, ptr noundef nonnull %248, i32 noundef %1, float noundef %217, ptr noundef nonnull %249, ptr noundef nonnull %250) #24
  br label %257

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 1
  %253 = load ptr, ptr %4, align 8, !tbaa !58
  call fastcc void @hair_to_particle(ptr noundef nonnull %252, ptr noundef %253) #24
  %254 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 2
  %255 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !58
  call fastcc void @hair_to_particle(ptr noundef nonnull %254, ptr noundef %256) #24
  br label %257

257:                                              ; preds = %222, %247, %251, %236, %209
  %258 = phi float [ %217, %222 ], [ %217, %247 ], [ %217, %251 ], [ %217, %236 ], [ %208, %209 ]
  %259 = phi i1 [ %218, %222 ], [ %218, %247 ], [ %218, %251 ], [ %218, %236 ], [ %207, %209 ]
  %260 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 3
  %261 = load i32, ptr %260, align 8, !tbaa !375
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %341

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %265 = load ptr, ptr %264, align 8, !tbaa !377
  %266 = icmp ne ptr %265, null
  %267 = select i1 %266, i1 true, i1 %259
  br i1 %267, label %341, label %268

268:                                              ; preds = %263
  br i1 %10, label %277, label %269

269:                                              ; preds = %268
  %270 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8
  %271 = load ptr, ptr %270, align 8, !tbaa !58
  %272 = load ptr, ptr %9, align 8, !tbaa !424
  %273 = icmp eq ptr %271, %272
  br i1 %273, label %276, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.PTCacheEditKey, ptr %271, i64 -1
  call fastcc void @edit_to_particle(ptr noundef nonnull %7, ptr noundef nonnull %275) #24
  br label %296

276:                                              ; preds = %269
  call fastcc void @edit_to_particle(ptr noundef nonnull %7, ptr noundef %271) #24
  br label %296

277:                                              ; preds = %268
  %278 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !380
  %280 = icmp eq ptr %279, null
  %281 = load ptr, ptr %4, align 8, !tbaa !58
  %282 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !143
  %284 = icmp eq ptr %281, %283
  br i1 %280, label %292, label %285

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !58
  br i1 %284, label %291, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.MVert, ptr %287, i64 -1
  %290 = getelementptr inbounds %struct.HairKey, ptr %281, i64 -1
  call fastcc void @mvert_to_particle(ptr noundef nonnull %7, ptr noundef nonnull %289, ptr noundef nonnull %290) #24
  br label %310

291:                                              ; preds = %285
  call fastcc void @mvert_to_particle(ptr noundef nonnull %7, ptr noundef %287, ptr noundef %281) #24
  br label %310

292:                                              ; preds = %277
  br i1 %284, label %295, label %293

293:                                              ; preds = %292
  %294 = getelementptr inbounds %struct.HairKey, ptr %281, i64 -1
  call fastcc void @hair_to_particle(ptr noundef nonnull %7, ptr noundef nonnull %294) #24
  br label %327

295:                                              ; preds = %292
  call fastcc void @hair_to_particle(ptr noundef nonnull %7, ptr noundef %281) #24
  br label %327

296:                                              ; preds = %276, %274
  %297 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 8, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !58
  %299 = load ptr, ptr %9, align 8, !tbaa !424
  %300 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %9, i64 0, i32 1
  %301 = load i32, ptr %300, align 8, !tbaa !426
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.PTCacheEditKey, ptr %299, i64 %302
  %304 = getelementptr inbounds %struct.PTCacheEditKey, ptr %303, i64 -1
  %305 = icmp eq ptr %298, %304
  %306 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3
  br i1 %305, label %309, label %307

307:                                              ; preds = %296
  %308 = getelementptr inbounds %struct.PTCacheEditKey, ptr %298, i64 1
  call fastcc void @edit_to_particle(ptr noundef nonnull %306, ptr noundef nonnull %308) #24
  br label %341

309:                                              ; preds = %296
  call fastcc void @edit_to_particle(ptr noundef nonnull %306, ptr noundef %298) #24
  br label %341

310:                                              ; preds = %288, %291
  %311 = phi ptr [ %281, %291 ], [ %283, %288 ]
  %312 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !58
  %314 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 5
  %315 = load i32, ptr %314, align 8, !tbaa !144
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.HairKey, ptr %311, i64 %316
  %318 = getelementptr inbounds %struct.HairKey, ptr %317, i64 -1
  %319 = icmp eq ptr %313, %318
  %320 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3
  %321 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 2, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !58
  br i1 %319, label %326, label %323

323:                                              ; preds = %310
  %324 = getelementptr inbounds %struct.MVert, ptr %322, i64 1
  %325 = getelementptr inbounds %struct.HairKey, ptr %313, i64 1
  call fastcc void @mvert_to_particle(ptr noundef nonnull %320, ptr noundef nonnull %324, ptr noundef nonnull %325) #24
  br label %341

326:                                              ; preds = %310
  call fastcc void @mvert_to_particle(ptr noundef nonnull %320, ptr noundef %322, ptr noundef %313) #24
  br label %341

327:                                              ; preds = %295, %293
  %328 = phi ptr [ %283, %293 ], [ %281, %295 ]
  %329 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !58
  %331 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 5
  %332 = load i32, ptr %331, align 8, !tbaa !144
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.HairKey, ptr %328, i64 %333
  %335 = getelementptr inbounds %struct.HairKey, ptr %334, i64 -1
  %336 = icmp eq ptr %330, %335
  %337 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 3
  br i1 %336, label %340, label %338

338:                                              ; preds = %327
  %339 = getelementptr inbounds %struct.HairKey, ptr %330, i64 1
  call fastcc void @hair_to_particle(ptr noundef nonnull %337, ptr noundef nonnull %339) #24
  br label %341

340:                                              ; preds = %327
  call fastcc void @hair_to_particle(ptr noundef nonnull %337, ptr noundef %330) #24
  br label %341

341:                                              ; preds = %309, %307, %338, %340, %323, %326, %263, %257
  %342 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 4
  %343 = load float, ptr %342, align 4, !tbaa !385
  %344 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 4
  %345 = load float, ptr %344, align 4, !tbaa !385
  %346 = fsub float %343, %345
  %347 = fsub float %258, %345
  %348 = fdiv float %347, %346
  %349 = load i32, ptr %260, align 8, !tbaa !375
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %341
  %352 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %353 = load ptr, ptr %352, align 8, !tbaa !377
  %354 = icmp ne ptr %353, null
  %355 = select i1 %354, i1 true, i1 %259
  br i1 %355, label %356, label %374

356:                                              ; preds = %351, %341
  %357 = fmul float %346, 0x3FA47AE140000000
  %358 = icmp eq ptr %0, null
  br i1 %358, label %364, label %359

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !48
  %362 = getelementptr inbounds %struct.ParticleSettings, ptr %361, i64 0, i32 57
  %363 = load float, ptr %362, align 4, !tbaa !448
  br label %364

364:                                              ; preds = %359, %356
  %365 = phi float [ %363, %359 ], [ 1.000000e+00, %356 ]
  %366 = fmul float %357, %365
  %367 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %367, float noundef %366) #24
  %368 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %368, float noundef %366) #24
  %369 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 2
  %370 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 1, i32 2
  %371 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %7, i64 0, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %369, ptr noundef nonnull %370, ptr noundef nonnull %371, float noundef %348) #23
  %372 = load i32, ptr %260, align 8, !tbaa !375
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %385

374:                                              ; preds = %351, %364
  %375 = phi float [ %366, %364 ], [ 1.000000e+00, %351 ]
  %376 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %377 = load ptr, ptr %376, align 8, !tbaa !377
  %378 = icmp ne ptr %377, null
  %379 = select i1 %378, i1 true, i1 %259
  br i1 %379, label %385, label %380

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 11
  %382 = load i32, ptr %381, align 8, !tbaa !379
  %383 = icmp eq i32 %382, 0
  %384 = select i1 %383, i16 1, i16 2
  br label %385

385:                                              ; preds = %364, %374, %380
  %386 = phi float [ %375, %380 ], [ %375, %374 ], [ %366, %364 ]
  %387 = phi i16 [ %384, %380 ], [ -1, %374 ], [ -1, %364 ]
  call void @psys_interpolate_particle(i16 noundef signext %387, ptr noundef nonnull %7, float noundef %348, ptr noundef %5, i32 noundef 1) #24
  %388 = load i32, ptr %260, align 8, !tbaa !375
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %4, i64 0, i32 5
  %392 = load ptr, ptr %391, align 8, !tbaa !377
  %393 = icmp ne ptr %392, null
  %394 = select i1 %393, i1 true, i1 %259
  br i1 %394, label %395, label %398

395:                                              ; preds = %390, %385
  %396 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1
  %397 = fdiv float 1.000000e+00, %386
  call fastcc void @mul_v3_fl(ptr noundef nonnull %396, float noundef %397) #24
  br label %398

398:                                              ; preds = %395, %390, %64
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_path_effectors(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !449 {
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.ParticleKey, align 4
  %11 = alloca %struct.EffectedPoint, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #25
  %12 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 -1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %19) #24
  %20 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 1
  %21 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %21) #24
  %22 = getelementptr inbounds %struct.ParticleKey, ptr %10, i64 0, i32 2
  %23 = getelementptr %struct.ParticleCacheKey, ptr %2, i64 -1, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %22, ptr noundef %23) #23
  %24 = load ptr, ptr %12, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 %27
  call void @pd_point_from_particle(ptr noundef nonnull %0, ptr noundef %28, ptr noundef nonnull %10, ptr noundef nonnull %11) #23
  %29 = load ptr, ptr %12, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 42
  %31 = load ptr, ptr %30, align 8, !tbaa !388
  %32 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !450
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !129
  call void @pdDoEffectors(ptr noundef %31, ptr noundef %33, ptr noundef %37, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef null) #23
  %38 = sitofp i32 %3 to float
  %39 = sitofp i32 %4 to float
  %40 = fdiv float %38, %39
  %41 = load ptr, ptr %12, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %43, i64 0, i32 60
  %45 = load float, ptr %44, align 8, !tbaa !451
  %46 = fmul float %45, 1.000000e+02
  %47 = call float @powf(float noundef %40, float noundef %46) #23
  %48 = fmul float %47, %5
  %49 = fdiv float %48, %39
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %49) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %7) #24
  %50 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #24
  %51 = icmp slt i32 %3, %4
  br i1 %51, label %52, label %56

52:                                               ; preds = %18
  %53 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef %7, ptr noundef nonnull %53, ptr noundef %2) #24
  %54 = load float, ptr %6, align 4, !tbaa !34
  call fastcc void @madd_v3_v3v3fl(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %9, float noundef %54) #24
  %55 = call fastcc float @len_v3(ptr noundef %7) #24
  store float %55, ptr %6, align 4, !tbaa !34
  br label %58

56:                                               ; preds = %18
  %57 = load float, ptr %6, align 4, !tbaa !34
  call fastcc void @madd_v3_v3v3fl(ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %9, float noundef %57) #24
  br label %58

58:                                               ; preds = %52, %56, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  ret void
}

; Function Attrs: optsize
declare void @calc_latt_deform(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cache_key_incremental_rotation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !452 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #25
  switch i32 %4, label %12 [
    i32 0, label %24
    i32 1, label %9
  ]

9:                                                ; preds = %5
  tail call fastcc void @sub_v3_v3v3(ptr noundef %3, ptr noundef %0, ptr noundef %1) #24
  %10 = tail call fastcc float @normalize_v3(ptr noundef %3) #24
  %11 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2
  tail call void @unit_qt(ptr noundef nonnull %11) #23
  br label %24

12:                                               ; preds = %5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1) #24
  %13 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #24
  %14 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef %3) #24
  %15 = fcmp ogt float %14, 0x3FEFFFFDE0000000
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %17, ptr noundef nonnull %18) #24
  br label %23

19:                                               ; preds = %12
  %20 = tail call fastcc float @saacos(float noundef %14) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %6) #24
  call void @axis_angle_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %20) #23
  %21 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %22) #23
  br label %23

23:                                               ; preds = %19, %16
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %6) #24
  br label %24

24:                                               ; preds = %23, %9, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  ret void
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_cache_edit_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ParticleInterpolationData, align 8
  %6 = alloca %struct.ParticleKey, align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca %struct.ParticleSimulationData, align 8
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !157
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !344
  %19 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !453
  %21 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %20) #24
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  br label %26

26:                                               ; preds = %4, %23
  %27 = phi ptr [ %25, %23 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 18, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !347
  %30 = tail call double @ldexp(double 1.000000e+00, i32 %29) #25
  %31 = fptosi double %30 to i32
  %32 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 11
  %33 = load i32, ptr %32, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  %34 = tail call i32 @llvm.smax.i32(i32 %31, i32 4)
  %35 = icmp eq ptr %16, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !158
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %36, %26
  %41 = load ptr, ptr %19, align 8, !tbaa !453
  tail call void @psys_free_path_cache(ptr noundef %41, ptr noundef nonnull %2) #24
  %42 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 10
  %43 = add nuw nsw i32 %34, 1
  %44 = tail call fastcc ptr @psys_alloc_path_cache_buffers(ptr noundef nonnull %42, i32 noundef %33, i32 noundef %43) #24
  store ptr %44, ptr %15, align 8, !tbaa !157
  %45 = icmp sgt i32 %33, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !455
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i32 [ %55, %49 ], [ 0, %46 ]
  %51 = phi ptr [ %56, %49 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %51, i64 0, i32 2
  %53 = load i16, ptr %52, align 4, !tbaa !456
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 4, !tbaa !456
  %55 = add nuw nsw i32 %50, 1
  %56 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %51, i64 1
  %57 = icmp eq i32 %55, %33
  br i1 %57, label %58, label %49, !llvm.loop !457

58:                                               ; preds = %49, %40, %36
  %59 = phi ptr [ %16, %36 ], [ %44, %40 ], [ %44, %49 ]
  %60 = phi i1 [ true, %36 ], [ false, %40 ], [ false, %49 ]
  %61 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 18, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !458
  %63 = icmp eq i16 %62, 6
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 15
  %66 = load <2 x i8>, ptr %65, align 8, !tbaa !262
  %67 = uitofp <2 x i8> %66 to <2 x float>
  %68 = fdiv <2 x float> %67, <float 2.550000e+02, float 2.550000e+02>
  store <2 x float> %68, ptr %10, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 15, i64 2
  %70 = load i8, ptr %69, align 2, !tbaa !262
  %71 = uitofp i8 %70 to float
  %72 = fdiv float %71, 2.550000e+02
  %73 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %72, ptr %73, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 16
  %75 = load <2 x i8>, ptr %74, align 1, !tbaa !262
  %76 = uitofp <2 x i8> %75 to <2 x float>
  %77 = fdiv <2 x float> %76, <float 2.550000e+02, float 2.550000e+02>
  store <2 x float> %77, ptr %11, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 16, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !262
  %80 = uitofp i8 %79 to float
  %81 = fdiv float %80, 2.550000e+02
  %82 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %81, ptr %82, align 8, !tbaa !34
  br label %83

83:                                               ; preds = %58, %64
  %84 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 2
  %85 = icmp slt i32 %33, 1
  br i1 %85, label %299, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %84, align 8, !tbaa !455
  %88 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 13
  %89 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 3
  %90 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 5
  %91 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 7
  %92 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 2
  %93 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 11
  %94 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 1
  %95 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %96 = add nuw i32 %34, 1
  %97 = zext nneg i32 %96 to i64
  %98 = mul nuw nsw i64 %97, 60
  %99 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %21, i64 0, i32 2
  %100 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  %101 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  %102 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  %104 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 9
  %105 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 10
  %106 = sitofp i32 %34 to float
  %107 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 4
  %108 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 25
  %109 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 8
  %110 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %5, i64 0, i32 8, i64 1
  %111 = zext nneg i32 %33 to i64
  br label %112

112:                                              ; preds = %86, %292
  %113 = phi i64 [ 0, %86 ], [ %293, %292 ]
  %114 = phi ptr [ %87, %86 ], [ %297, %292 ]
  %115 = phi ptr [ %27, %86 ], [ %296, %292 ]
  %116 = load i32, ptr %88, align 8, !tbaa !158
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %114, i64 0, i32 2
  %120 = load i16, ptr %119, align 4, !tbaa !456
  %121 = and i16 %120, 2
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %292, label %123

123:                                              ; preds = %118, %112
  %124 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %114, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !426
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %292, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %114, align 8, !tbaa !424
  store i32 0, ptr %89, align 8, !tbaa !375
  store ptr null, ptr %90, align 8, !tbaa !377
  store ptr %114, ptr %91, align 8, !tbaa !378
  br i1 %22, label %134, label %129

129:                                              ; preds = %127
  %130 = load ptr, ptr %92, align 8, !tbaa !48
  %131 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 5
  %132 = load i32, ptr %131, align 8, !tbaa !53
  %133 = and i32 %132, 1024
  br label %134

134:                                              ; preds = %127, %129
  %135 = phi i32 [ %133, %129 ], [ 0, %127 ]
  store i32 %135, ptr %93, align 8, !tbaa !379
  store ptr null, ptr %94, align 8, !tbaa !380
  %136 = load i16, ptr %61, align 2, !tbaa !458
  %137 = icmp eq i16 %136, 6
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  store ptr null, ptr %5, align 8, !tbaa !58
  %139 = getelementptr inbounds %struct.ParticleData, ptr %115, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !143
  store ptr %140, ptr %95, align 8, !tbaa !58
  br label %141

141:                                              ; preds = %138, %134
  %142 = getelementptr inbounds ptr, ptr %59, i64 %113
  %143 = load ptr, ptr %142, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %143, i8 0, i64 %98, i1 false)
  %144 = load ptr, ptr %142, align 8, !tbaa !58
  %145 = getelementptr inbounds %struct.ParticleCacheKey, ptr %144, i64 0, i32 5
  store i32 %34, ptr %145, align 4, !tbaa !381
  call fastcc void @init_particle_interpolation(ptr noundef %20, ptr noundef %115, ptr noundef nonnull %5) #24
  br i1 %22, label %151, label %146

146:                                              ; preds = %141
  %147 = load ptr, ptr %99, align 8, !tbaa !190
  %148 = load ptr, ptr %92, align 8, !tbaa !48
  %149 = getelementptr inbounds %struct.ParticleSettings, ptr %148, i64 0, i32 8
  %150 = load i16, ptr %149, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %1, ptr noundef %147, i16 noundef signext %150, ptr noundef %115, ptr noundef nonnull %7) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %100) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %101, ptr noundef nonnull %102) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %103, ptr noundef nonnull %7) #24
  br label %151

151:                                              ; preds = %146, %141
  %152 = load float, ptr %104, align 8, !tbaa !383
  %153 = load float, ptr %105, align 4, !tbaa !384
  %154 = fcmp ult float %152, %153
  %155 = load ptr, ptr %142, align 8, !tbaa !58
  br i1 %154, label %158, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.ParticleCacheKey, ptr %155, i64 0, i32 5
  store i32 -1, ptr %157, align 4, !tbaa !381
  br label %292

158:                                              ; preds = %151
  %159 = fsub float %153, %152
  %160 = getelementptr %struct.PTCacheEditKey, ptr %128, i64 0, i32 7
  %161 = trunc i64 %113 to i32
  br label %162

162:                                              ; preds = %158, %279
  %163 = phi ptr [ %155, %158 ], [ %282, %279 ]
  %164 = phi i32 [ 0, %158 ], [ %281, %279 ]
  %165 = sitofp i32 %164 to float
  %166 = fdiv float %165, %106
  %167 = call float @llvm.fmuladd.f32(float %166, float %159, float %152)
  %168 = fneg float %167
  store float %168, ptr %107, align 4, !tbaa !385
  call fastcc void @do_particle_interpolation(ptr noundef %20, i32 noundef %161, ptr noundef %115, float noundef %167, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  call fastcc void @copy_v3_v3(ptr noundef %163, ptr noundef nonnull %6) #24
  br i1 %22, label %185, label %169

169:                                              ; preds = %162
  %170 = load i32, ptr %108, align 4, !tbaa !59
  %171 = and i32 %170, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %169
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %163) #23
  %174 = icmp eq i32 %164, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 -1
  %177 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 -2
  call fastcc void @cache_key_incremental_rotation(ptr noundef %163, ptr noundef nonnull %176, ptr noundef nonnull %177, ptr noundef nonnull %9, i32 noundef %164) #24
  %178 = icmp eq i32 %164, %34
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 2
  %181 = getelementptr %struct.ParticleCacheKey, ptr %163, i64 -1, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %180, ptr noundef %181) #23
  br label %182

182:                                              ; preds = %179, %175
  %183 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %183, ptr noundef %163, ptr noundef nonnull %176) #24
  %184 = icmp eq i32 %164, 1
  br i1 %184, label %194, label %188

185:                                              ; preds = %169, %162
  %186 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 1
  store <2 x float> zeroinitializer, ptr %186, align 4, !tbaa !34
  %187 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 1, i64 2
  store float 1.000000e+00, ptr %187, align 4, !tbaa !34
  br label %188

188:                                              ; preds = %182, %185
  %189 = load i16, ptr %61, align 2, !tbaa !458
  %190 = icmp eq i16 %189, 6
  br i1 %190, label %198, label %234

191:                                              ; preds = %173
  %192 = load i16, ptr %61, align 2, !tbaa !458
  %193 = icmp eq i16 %192, 6
  br i1 %193, label %200, label %234

194:                                              ; preds = %182
  %195 = getelementptr %struct.ParticleCacheKey, ptr %163, i64 -1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %195, ptr noundef nonnull %183) #24
  %196 = load i16, ptr %61, align 2, !tbaa !458
  %197 = icmp eq i16 %196, 6
  br i1 %197, label %205, label %234

198:                                              ; preds = %188
  %199 = icmp eq i32 %164, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %191, %198
  %201 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 3
  %202 = load ptr, ptr %95, align 8, !tbaa !58
  %203 = getelementptr inbounds %struct.HairKey, ptr %202, i64 0, i32 2
  %204 = load float, ptr %203, align 4, !tbaa !459
  call void @weight_to_rgb(ptr noundef nonnull %201, float noundef %204) #23
  br label %224

205:                                              ; preds = %194, %198
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  %206 = load ptr, ptr %109, align 8, !tbaa !58
  %207 = getelementptr inbounds %struct.PTCacheEditKey, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !427
  %209 = load float, ptr %208, align 4, !tbaa !34
  %210 = fsub float %167, %209
  %211 = load ptr, ptr %110, align 8, !tbaa !58
  %212 = getelementptr inbounds %struct.PTCacheEditKey, ptr %211, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !427
  %214 = load float, ptr %213, align 4, !tbaa !34
  %215 = fsub float %214, %209
  %216 = fdiv float %210, %215
  %217 = load ptr, ptr %5, align 8, !tbaa !58
  %218 = getelementptr inbounds %struct.HairKey, ptr %217, i64 0, i32 2
  %219 = load float, ptr %218, align 4, !tbaa !459
  call void @weight_to_rgb(ptr noundef nonnull %12, float noundef %219) #23
  %220 = load ptr, ptr %95, align 8, !tbaa !58
  %221 = getelementptr inbounds %struct.HairKey, ptr %220, i64 0, i32 2
  %222 = load float, ptr %221, align 4, !tbaa !459
  call void @weight_to_rgb(ptr noundef nonnull %13, float noundef %222) #23
  %223 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %223, ptr noundef nonnull %12, ptr noundef nonnull %13, float noundef %216) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  br label %224

224:                                              ; preds = %205, %200
  %225 = load ptr, ptr %95, align 8, !tbaa !58
  br label %226

226:                                              ; preds = %226, %224
  %227 = phi ptr [ %231, %226 ], [ %225, %224 ]
  %228 = getelementptr inbounds %struct.HairKey, ptr %227, i64 0, i32 1
  %229 = load float, ptr %228, align 4, !tbaa !431
  %230 = fcmp olt float %229, %167
  %231 = getelementptr inbounds %struct.HairKey, ptr %227, i64 1
  br i1 %230, label %226, label %232, !llvm.loop !460

232:                                              ; preds = %226
  store ptr %227, ptr %95, align 8, !tbaa !58
  %233 = getelementptr inbounds %struct.HairKey, ptr %227, i64 -1
  store ptr %233, ptr %5, align 8, !tbaa !58
  br label %279

234:                                              ; preds = %191, %194, %188
  %235 = load ptr, ptr %109, align 8, !tbaa !58
  %236 = load ptr, ptr %114, align 8, !tbaa !424
  %237 = ptrtoint ptr %235 to i64
  %238 = ptrtoint ptr %236 to i64
  %239 = sub i64 %237, %238
  %240 = getelementptr i8, ptr %160, i64 %239
  %241 = load i16, ptr %240, align 4, !tbaa !461
  %242 = and i16 %241, 1
  %243 = icmp eq i16 %242, 0
  %244 = load ptr, ptr %110, align 8, !tbaa !58
  %245 = ptrtoint ptr %244 to i64
  %246 = sub i64 %245, %238
  %247 = getelementptr i8, ptr %160, i64 %246
  %248 = load i16, ptr %247, align 4, !tbaa !461
  %249 = and i16 %248, 1
  %250 = icmp eq i16 %249, 0
  br i1 %243, label %265, label %251

251:                                              ; preds = %234
  br i1 %250, label %254, label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %253, ptr noundef nonnull %10) #24
  br label %279

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.PTCacheEditKey, ptr %235, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !427
  %257 = load float, ptr %256, align 4, !tbaa !34
  %258 = fsub float %167, %257
  %259 = getelementptr inbounds %struct.PTCacheEditKey, ptr %244, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !427
  %261 = load float, ptr %260, align 4, !tbaa !34
  %262 = fsub float %261, %257
  %263 = fdiv float %258, %262
  %264 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %264, ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %263) #23
  br label %279

265:                                              ; preds = %234
  br i1 %250, label %277, label %266

266:                                              ; preds = %265
  %267 = getelementptr inbounds %struct.PTCacheEditKey, ptr %235, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !427
  %269 = load float, ptr %268, align 4, !tbaa !34
  %270 = fsub float %167, %269
  %271 = getelementptr inbounds %struct.PTCacheEditKey, ptr %244, i64 0, i32 3
  %272 = load ptr, ptr %271, align 8, !tbaa !427
  %273 = load float, ptr %272, align 4, !tbaa !34
  %274 = fsub float %273, %269
  %275 = fdiv float %270, %274
  %276 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %276, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef %275) #23
  br label %279

277:                                              ; preds = %265
  %278 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %278, ptr noundef nonnull %11) #24
  br label %279

279:                                              ; preds = %254, %252, %277, %266, %232
  %280 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 4
  store float %167, ptr %280, align 4, !tbaa !391
  %281 = add nuw i32 %164, 1
  %282 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 1
  %283 = icmp eq i32 %164, %34
  br i1 %283, label %284, label %162, !llvm.loop !462

284:                                              ; preds = %279
  br i1 %22, label %292, label %285

285:                                              ; preds = %284
  %286 = load i32, ptr %108, align 4, !tbaa !59
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load ptr, ptr %142, align 8, !tbaa !58
  %291 = getelementptr inbounds %struct.ParticleCacheKey, ptr %290, i64 0, i32 2
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %291, ptr noundef nonnull %8) #23
  br label %292

292:                                              ; preds = %284, %285, %289, %123, %118, %156
  %293 = add nuw nsw i64 %113, 1
  %294 = icmp ne ptr %115, null
  %295 = zext i1 %294 to i64
  %296 = getelementptr inbounds %struct.ParticleData, ptr %115, i64 %295
  %297 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %114, i64 1
  %298 = icmp eq i64 %293, %111
  br i1 %298, label %299, label %112, !llvm.loop !463

299:                                              ; preds = %292, %83
  %300 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 13
  store i32 %33, ptr %300, align 8, !tbaa !158
  br i1 %22, label %307, label %301

301:                                              ; preds = %299
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %14) #25
  %302 = getelementptr inbounds i8, ptr %14, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %302, i8 0, i64 16, i1 false)
  store ptr %0, ptr %14, align 8, !tbaa !63
  %303 = getelementptr inbounds %struct.ParticleSimulationData, ptr %14, i64 0, i32 1
  store ptr %1, ptr %303, align 8, !tbaa !67
  %304 = getelementptr inbounds %struct.ParticleSimulationData, ptr %14, i64 0, i32 2
  store ptr %20, ptr %304, align 8, !tbaa !65
  %305 = call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %20) #24
  %306 = getelementptr inbounds %struct.ParticleSimulationData, ptr %14, i64 0, i32 3
  store ptr %305, ptr %306, align 8, !tbaa !286
  call void @psys_cache_child_paths(ptr noundef nonnull %14, float noundef %3, i32 noundef 1) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %14) #25
  br label %307

307:                                              ; preds = %301, %299
  %308 = or i1 %60, %85
  br i1 %308, label %320, label %309

309:                                              ; preds = %307
  %310 = load ptr, ptr %84, align 8, !tbaa !455
  br label %311

311:                                              ; preds = %309, %311
  %312 = phi i32 [ %317, %311 ], [ 0, %309 ]
  %313 = phi ptr [ %318, %311 ], [ %310, %309 ]
  %314 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %313, i64 0, i32 2
  %315 = load i16, ptr %314, align 4, !tbaa !456
  %316 = and i16 %315, -3
  store i16 %316, ptr %314, align 4, !tbaa !456
  %317 = add nuw nsw i32 %312, 1
  %318 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %313, i64 1
  %319 = icmp eq i32 %317, %33
  br i1 %319, label %320, label %311, !llvm.loop !464

320:                                              ; preds = %311, %307
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #25
  ret void
}

; Function Attrs: optsize
declare void @weight_to_rgb(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_particle_key(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(56) %1, i64 56, i1 false)
  br label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !385
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(56) %1, i64 52, i1 false)
  store float %8, ptr %7, align 4, !tbaa !385
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_get_from_key(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef %0) #24
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq ptr %2, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %11) #24
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 2
  tail call void @copy_qt_qt(ptr noundef nonnull %3, ptr noundef nonnull %15) #23
  br label %16

16:                                               ; preds = %14, %12
  %17 = icmp eq ptr %4, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !385
  store float %20, ptr %4, align 4, !tbaa !34
  br label %21

21:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_mat_hair_to_object(ptr nocapture readnone %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @unit_m4(ptr noundef %4) #23
  br label %19

9:                                                ; preds = %5
  tail call fastcc void @psys_face_mat(ptr noundef null, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, i32 noundef 0) #24
  %10 = sext i16 %2 to i32
  %11 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !280
  %13 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !281
  %15 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 11
  %16 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 12
  %17 = load float, ptr %16, align 8, !tbaa !287
  call void @psys_particle_on_dm(ptr noundef nonnull %1, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %15, float noundef %17, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %18 = getelementptr inbounds [4 x float], ptr %4, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %6) #24
  br label %19

19:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_face_mat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !465 {
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #25
  %7 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !281
  %9 = icmp ugt i32 %8, -3
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !280
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %20, label %14

14:                                               ; preds = %5, %10
  %15 = phi i32 [ %12, %10 ], [ %8, %5 ]
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %17 = load ptr, ptr %16, align 8, !tbaa !214
  %18 = tail call i32 %17(ptr noundef %1) #23
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %10
  tail call void @unit_m4(ptr noundef %3) #23
  br label %67

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 48
  %23 = load ptr, ptr %22, align 8, !tbaa !275
  %24 = tail call ptr %23(ptr noundef nonnull %1, i32 noundef %15, i32 noundef 4) #23
  %25 = load ptr, ptr %22, align 8, !tbaa !275
  %26 = tail call ptr %25(ptr noundef nonnull %1, i32 noundef %15, i32 noundef 13) #23
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !272
  %31 = tail call ptr %30(ptr noundef nonnull %1, i32 noundef 14) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %24, align 4, !tbaa !226
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [3 x float], ptr %31, i64 %35
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %36) #24
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %38 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !228
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [3 x float], ptr %31, i64 %40
  call fastcc void @copy_v3_v3(ptr noundef nonnull %37, ptr noundef nonnull %41) #24
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %43 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !229
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [3 x float], ptr %31, i64 %45
  call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %46) #24
  %47 = tail call ptr @DM_get_vert_data_layer(ptr noundef nonnull %1, i32 noundef 7) #23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !208
  call void @BKE_mesh_orco_verts_transform(ptr noundef %51, ptr noundef nonnull %6, i32 noundef 3, i32 noundef 1) #23
  br label %64

52:                                               ; preds = %28, %21
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 76
  %54 = load ptr, ptr %53, align 8, !tbaa !273
  %55 = load i32, ptr %24, align 4, !tbaa !226
  call void %54(ptr noundef nonnull %1, i32 noundef %55, ptr noundef nonnull %6) #23
  %56 = load ptr, ptr %53, align 8, !tbaa !273
  %57 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !228
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call void %56(ptr noundef nonnull %1, i32 noundef %58, ptr noundef nonnull %59) #23
  %60 = load ptr, ptr %53, align 8, !tbaa !273
  %61 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !229
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call void %60(ptr noundef nonnull %1, i32 noundef %62, ptr noundef nonnull %63) #23
  br label %64

64:                                               ; preds = %33, %49, %52
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @triatomat(ptr noundef nonnull %6, ptr noundef nonnull %65, ptr noundef nonnull %66, ptr noundef %26, ptr noundef %3) #24
  br label %67

67:                                               ; preds = %64, %20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_mat_hair_to_orco(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  tail call fastcc void @psys_face_mat(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef 1) #24
  %8 = sext i16 %2 to i32
  %9 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !280
  %11 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !281
  %13 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 11
  %14 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 12
  %15 = load float, ptr %14, align 8, !tbaa !287
  call void @psys_particle_on_dm(ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, float noundef %15, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #24
  %16 = call ptr @DM_get_vert_data_layer(ptr noundef %1, i32 noundef 7) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !208
  call void @BKE_mesh_orco_verts_transform(ptr noundef %20, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 1) #23
  br label %21

21:                                               ; preds = %18, %5
  %22 = getelementptr inbounds [4 x float], ptr %4, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  ret void
}

; Function Attrs: optsize
declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_orco_verts_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_vec_rot_to_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #25
  call fastcc void @psys_face_mat(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0) #24
  call void @transpose_m4(ptr noundef nonnull %4) #23
  call void @mul_mat3_m4_v3(ptr noundef nonnull %4, ptr noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @transpose_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @object_add_particle_system(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !466
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %57

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 25
  %16 = load i32, ptr %15, align 4, !tbaa !59
  %17 = and i32 %16, -2
  store i32 %17, ptr %15, align 4, !tbaa !59
  %18 = load ptr, ptr %14, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !467

20:                                               ; preds = %13, %9
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %22 = tail call ptr %21(i64 noundef 656, ptr noundef nonnull @.str.9) #23
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 41
  %24 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %23) #23
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 40
  store ptr %24, ptr %25, align 8, !tbaa !100
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %22) #23
  %26 = tail call ptr @psys_new_settings(ptr noundef nonnull @.str.10, ptr noundef null) #24
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !48
  %28 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #23
  %29 = icmp sgt i32 %28, 1
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 18
  br i1 %29, label %31, label %34

31:                                               ; preds = %20
  %32 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #23
  %33 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %30, i64 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %32) #23
  br label %36

34:                                               ; preds = %20
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull @.str.12, i64 noundef 64) #23
  br label %36

36:                                               ; preds = %34, %31
  %37 = tail call ptr @modifier_new(i32 noundef 19) #23
  %38 = icmp eq ptr %2, null
  %39 = getelementptr inbounds %struct.ModifierData, ptr %37, i64 0, i32 6
  br i1 %38, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %39, ptr noundef nonnull %2, i64 noundef 64) #23
  br label %45

42:                                               ; preds = %36
  %43 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #23
  %44 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %39, i64 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %43) #23
  br label %45

45:                                               ; preds = %42, %40
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @modifier_unique_name(ptr noundef nonnull %46, ptr noundef %37) #23
  %47 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %37, i64 0, i32 1
  store ptr %22, ptr %47, align 8, !tbaa !104
  tail call void @BLI_addtail(ptr noundef nonnull %46, ptr noundef %37) #23
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 26
  store i32 0, ptr %48, align 8, !tbaa !42
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 25
  store i32 1, ptr %49, align 4, !tbaa !59
  %50 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !468
  %52 = add nsw i32 %51, 1
  %53 = sitofp i32 %52 to float
  %54 = tail call float @BKE_scene_frame_get_from_ctime(ptr noundef %0, float noundef %53) #23
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 20
  store float %54, ptr %55, align 8, !tbaa !469
  %56 = load ptr, ptr @G, align 8, !tbaa !470
  tail call void @DAG_relations_tag_update(ptr noundef %56) #23
  tail call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext 2) #23
  br label %57

57:                                               ; preds = %3, %5, %45
  %58 = phi ptr [ %37, %45 ], [ null, %5 ], [ null, %3 ]
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @psys_new_settings(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @G, align 8
  %5 = select i1 %3, ptr %4, ptr %1
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef %5, i16 noundef signext 16720, ptr noundef %0) #23
  tail call fastcc void @default_particle_settings(ptr noundef %6) #24
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_scene_frame_get_from_ctime(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @object_remove_particle_system(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @psys_get_current(ptr noundef %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 31) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SmokeModifierData, ptr %6, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !472
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SmokeModifierData, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !474
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !475
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr null, ptr %17, align 8, !tbaa !475
  br label %21

21:                                               ; preds = %8, %12, %16, %20, %5
  %22 = tail call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 40) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !477
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !479
  %31 = icmp eq ptr %30, %3
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %29, align 8, !tbaa !479
  br label %33

33:                                               ; preds = %24, %28, %32, %21
  %34 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %3) #24
  %35 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_remlink(ptr noundef nonnull %35, ptr noundef %34) #23
  tail call void @modifier_free(ptr noundef %34) #23
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  tail call void @BLI_remlink(ptr noundef nonnull %36, ptr noundef nonnull %3) #23
  tail call void @psys_free(ptr noundef %1, ptr noundef nonnull %3) #24
  %37 = load ptr, ptr %36, align 8, !tbaa !481
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %37, i64 0, i32 25
  %41 = load i32, ptr %40, align 4, !tbaa !59
  %42 = or i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !59
  br label %47

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %45 = load i32, ptr %44, align 8, !tbaa !96
  %46 = and i32 %45, -33
  store i32 %46, ptr %44, align 8, !tbaa !96
  br label %47

47:                                               ; preds = %43, %39
  %48 = load ptr, ptr @G, align 8, !tbaa !470
  tail call void @DAG_relations_tag_update(ptr noundef %48) #23
  tail call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext 2) #23
  br label %49

49:                                               ; preds = %2, %47
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @default_particle_settings(ptr noundef %0) unnamed_addr #0 !PGOFuncName !482 {
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 7
  store i16 0, ptr %2, align 8, !tbaa !110
  %3 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 9
  store i16 0, ptr %3, align 4, !tbaa !283
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 17
  store i16 10, ptr %4, align 8, !tbaa !483
  %5 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 21
  store i16 1, ptr %5, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 38
  store i16 1, ptr %6, align 2, !tbaa !484
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 37
  store i16 3, ptr %7, align 8, !tbaa !485
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 40
  store i16 1, ptr %8, align 2, !tbaa !486
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 5
  store i32 33152, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 54
  store <2 x float> <float 2.000000e+02, float 5.000000e+01>, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 59
  store float 1.000000e+00, ptr %11, align 4, !tbaa !487
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 63
  store i32 1000, ptr %12, align 4, !tbaa !488
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 65
  store i32 10, ptr %13, align 4, !tbaa !489
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 57
  store <2 x float> <float 1.000000e+00, float 0x3FC99999A0000000>, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 33
  store i16 1, ptr %15, align 8, !tbaa !490
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 11
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 24
  store <4 x i16> <i16 2, i16 3, i16 5, i16 5>, ptr %17, align 2, !tbaa !261
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 28
  store i16 5, ptr %18, align 2, !tbaa !491
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 29
  store i16 3, ptr %19, align 8, !tbaa !492
  %20 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 36
  store i16 2, ptr %20, align 2, !tbaa !493
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 102
  store float 1.000000e+00, ptr %21, align 8, !tbaa !494
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 30
  store i16 100, ptr %22, align 2, !tbaa !197
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 8
  store i16 1, ptr %23, align 2, !tbaa !284
  %24 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 69
  store float 1.000000e+00, ptr %24, align 4, !tbaa !495
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 81
  store <2 x float> <float 1.000000e+00, float 0x3FA99999A0000000>, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 92
  store float 1.000000e+00, ptr %26, align 8, !tbaa !496
  store <4 x i16> <i16 1, i16 2, i16 1, i16 0>, ptr %16, align 8, !tbaa !261
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 89
  store i32 10, ptr %27, align 4, !tbaa !326
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 90
  store i32 100, ptr %28, align 8, !tbaa !327
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 94
  store <2 x float> <float 0x3FC99999A0000000, float 0.000000e+00>, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 97
  store <2 x float> <float 0.000000e+00, float 0x3FC99999A0000000>, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 99
  store float 2.000000e+00, ptr %31, align 4, !tbaa !497
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 104
  store float 1.000000e+00, ptr %32, align 8, !tbaa !498
  %33 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 106
  store float 1.000000e+00, ptr %33, align 8, !tbaa !499
  %34 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 109
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 111
  store float 0.000000e+00, ptr %35, align 4, !tbaa !500
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 15
  store i32 8, ptr %36, align 8, !tbaa !210
  %37 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 116
  store float 5.000000e-01, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 117
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 44
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %39, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 120
  store i32 1, ptr %40, align 4, !tbaa !501
  %41 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 47
  store float 1.000000e+00, ptr %41, align 8, !tbaa !502
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 23
  store i16 1, ptr %42, align 4, !tbaa !371
  %43 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 49
  store i16 1920, ptr %43, align 2, !tbaa !233
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 50
  store <4 x float> <float 1.000000e+00, float 0x3FB99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00>, ptr %44, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !129
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #23
  store ptr %49, ptr %45, align 8, !tbaa !129
  br label %50

50:                                               ; preds = %48, %1
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 31
  store i16 1, ptr %51, align 4, !tbaa !370
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 130
  store i16 0, ptr %52, align 8, !tbaa !503
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_particlesettings_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #23
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 128
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = tail call ptr %3(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 128
  store ptr %6, ptr %7, align 8, !tbaa !132
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 129
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = tail call ptr %8(ptr noundef %10) #23
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 129
  store ptr %11, ptr %12, align 8, !tbaa !133
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = tail call ptr %13(ptr noundef %15) #23
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !129
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !135
  %21 = tail call ptr %18(ptr noundef %20) #23
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !135
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !134
  %25 = tail call ptr @boid_copy_settings(ptr noundef %24) #23
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !134
  br label %27

27:                                               ; preds = %1, %40
  %28 = phi i64 [ 0, %1 ], [ %41, %40 ]
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %34 = tail call ptr %33(i64 noundef 312, ptr noundef nonnull @.str.13) #23
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 121, i64 %28
  store ptr %34, ptr %35, align 8, !tbaa !58
  %36 = load ptr, ptr %29, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %34, ptr noundef nonnull align 8 dereferenceable(312) %36, i64 312, i1 false)
  %37 = load ptr, ptr %35, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.MTex, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !136
  tail call void @id_us_plus(ptr noundef %39) #23
  br label %40

40:                                               ; preds = %27, %32
  %41 = add nuw nsw i64 %28, 1
  %42 = icmp eq i64 %41, 18
  br i1 %42, label %43, label %27, !llvm.loop !504

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 123
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 123
  tail call void @BLI_duplicatelist(ptr noundef nonnull %44, ptr noundef nonnull %45) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @boid_copy_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_particlesettings_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !470
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !505
  %5 = icmp eq ptr %4, null
  br i1 %5, label %92, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !183
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #23
  tail call fastcc void @expand_local_particlesettings(ptr noundef nonnull %0) #24
  br label %92

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %20

15:                                               ; preds = %45, %27
  %16 = phi i8 [ %23, %27 ], [ %46, %45 ]
  %17 = phi i8 [ %22, %27 ], [ %47, %45 ]
  %18 = load ptr, ptr %21, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20, !llvm.loop !506

20:                                               ; preds = %11, %15
  %21 = phi ptr [ %18, %15 ], [ %13, %11 ]
  %22 = phi i8 [ %17, %15 ], [ 0, %11 ]
  %23 = phi i8 [ %16, %15 ], [ 0, %11 ]
  %24 = icmp eq i8 %22, 0
  %25 = icmp eq i8 %23, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 109
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %15, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  br label %33

33:                                               ; preds = %31, %45
  %34 = phi ptr [ %29, %31 ], [ %48, %45 ]
  %35 = phi i8 [ %22, %31 ], [ %47, %45 ]
  %36 = phi i8 [ %23, %31 ], [ %46, %45 ]
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load ptr, ptr %32, align 8, !tbaa !507
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, i8 1, i8 %36
  %44 = select i1 %42, i8 %35, i8 1
  br label %45

45:                                               ; preds = %40, %33
  %46 = phi i8 [ %36, %33 ], [ %43, %40 ]
  %47 = phi i8 [ %35, %33 ], [ %44, %40 ]
  %48 = load ptr, ptr %34, align 8, !tbaa !58
  %49 = icmp eq ptr %48, null
  br i1 %49, label %15, label %33, !llvm.loop !508

50:                                               ; preds = %15
  %51 = icmp ne i8 %16, 0
  %52 = icmp eq i8 %17, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #23
  tail call fastcc void @expand_local_particlesettings(ptr noundef %0) #24
  br label %92

55:                                               ; preds = %20, %50
  %56 = phi i8 [ %17, %50 ], [ %22, %20 ]
  %57 = phi i1 [ %51, %50 ], [ true, %20 ]
  %58 = icmp ne i8 %56, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %92

60:                                               ; preds = %55
  %61 = tail call ptr @BKE_particlesettings_copy(ptr noundef %0) #24
  %62 = getelementptr inbounds %struct.ID, ptr %61, i64 0, i32 6
  store i32 0, ptr %62, align 4, !tbaa !183
  %63 = load ptr, ptr %3, align 8, !tbaa !505
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %63, ptr noundef %61) #23
  %64 = load ptr, ptr %12, align 8, !tbaa !58
  %65 = icmp eq ptr %64, null
  br i1 %65, label %92, label %69

66:                                               ; preds = %89, %69
  %67 = load ptr, ptr %70, align 8, !tbaa !58
  %68 = icmp eq ptr %67, null
  br i1 %68, label %92, label %69, !llvm.loop !509

69:                                               ; preds = %60, %66
  %70 = phi ptr [ %67, %66 ], [ %64, %60 ]
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 109
  %72 = load ptr, ptr %71, align 8, !tbaa !58
  %73 = icmp eq ptr %72, null
  br i1 %73, label %66, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.ID, ptr %70, i64 0, i32 3
  br label %76

76:                                               ; preds = %74, %89
  %77 = phi ptr [ %72, %74 ], [ %90, %89 ]
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !48
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load ptr, ptr %75, align 8, !tbaa !507
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  store ptr %61, ptr %78, align 8, !tbaa !48
  %85 = load i32, ptr %62, align 4, !tbaa !183
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %62, align 4, !tbaa !183
  %87 = load i32, ptr %7, align 4, !tbaa !183
  %88 = add nsw i32 %87, -1
  store i32 %88, ptr %7, align 4, !tbaa !183
  br label %89

89:                                               ; preds = %76, %81, %84
  %90 = load ptr, ptr %77, align 8, !tbaa !58
  %91 = icmp eq ptr %90, null
  br i1 %91, label %66, label %76, !llvm.loop !510

92:                                               ; preds = %66, %11, %60, %54, %55, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_local_particlesettings(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !511 {
  %2 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 122
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  tail call void @id_lib_extern(ptr noundef %3) #23
  br label %4

4:                                                ; preds = %1, %12
  %5 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  tail call void @id_lib_extern(ptr noundef %11) #23
  br label %12

12:                                               ; preds = %4, %9
  %13 = add nuw nsw i64 %5, 1
  %14 = icmp eq i64 %13, 18
  br i1 %14, label %15, label %4, !llvm.loop !512

15:                                               ; preds = %12
  ret void
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @get_particle_uv(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !PGOFuncName !513 {
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %8 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %7, i32 noundef 5, ptr noundef %4) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %7, i32 noundef 5) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %15 = icmp eq ptr %1, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !281
  %19 = icmp ugt i32 %18, -3
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !280
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi i32 [ %22, %20 ], [ %18, %16 ]
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %26 = load ptr, ptr %25, align 8, !tbaa !214
  %27 = tail call i32 %26(ptr noundef %0) #23
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23, %13
  %30 = phi i32 [ %2, %13 ], [ %24, %23 ]
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 48
  %34 = load ptr, ptr %33, align 8, !tbaa !275
  %35 = tail call ptr %34(ptr noundef %0, i32 noundef %30, i32 noundef 4) #23
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds %struct.MTFace, ptr %14, i64 %36
  %38 = getelementptr inbounds %struct.MFace, ptr %35, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !230
  tail call void @psys_interpolate_uvs(ptr noundef nonnull %37, i32 noundef %39, ptr noundef %3, ptr noundef %5) #24
  %40 = load <2 x float>, ptr %5, align 4, !tbaa !34
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  br label %42

42:                                               ; preds = %29, %23, %32
  %43 = phi <2 x float> [ %41, %32 ], [ zeroinitializer, %23 ], [ zeroinitializer, %29 ]
  store <2 x float> %43, ptr %5, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %44, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %42, %10
  %46 = phi i32 [ 0, %10 ], [ 1, %42 ]
  ret i32 %46
}

; Function Attrs: optsize
declare void @BKE_mesh_texspace_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !514 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: optsize
declare float @texture_value_blend(float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @psys_get_timestep(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 57
  %7 = load float, ptr %6, align 4, !tbaa !448
  %8 = fmul float %7, 0x3FA47AE140000000
  ret float %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local float @psys_get_child_time(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #18 {
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 19
  %9 = load i16, ptr %8, align 4, !tbaa !348
  %10 = icmp eq i16 %9, 2
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  br i1 %10, label %12, label %46

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
  %21 = load ptr, ptr %11, align 8, !tbaa !47
  %22 = zext nneg i32 %16 to i64
  %23 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 %22, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !405
  %25 = tail call float @llvm.fmuladd.f32(float %20, float %24, float %14)
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %12, !llvm.loop !515

28:                                               ; preds = %18, %12
  %29 = phi float [ %25, %18 ], [ %14, %12 ]
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 55
  %31 = load float, ptr %30, align 4, !tbaa !516
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 56
  %33 = load float, ptr %32, align 8, !tbaa !517
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !168
  %36 = ptrtoint ptr %1 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = lshr exact i64 %38, 6
  %40 = trunc i64 %39 to i32
  %41 = add i32 %40, 25
  %42 = tail call fastcc float @psys_frand(ptr noundef %0, i32 noundef %41) #24
  %43 = fneg float %33
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %42, float 1.000000e+00)
  %45 = fmul float %31, %44
  br label %55

46:                                               ; preds = %5
  %47 = load ptr, ptr %11, align 8, !tbaa !47
  %48 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !330
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ParticleData, ptr %47, i64 %50, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !405
  %53 = getelementptr inbounds %struct.ParticleData, ptr %47, i64 %50, i32 7
  %54 = load float, ptr %53, align 8, !tbaa !518
  br label %55

55:                                               ; preds = %46, %28
  %56 = phi float [ %45, %28 ], [ %54, %46 ]
  %57 = phi float [ %29, %28 ], [ %52, %46 ]
  %58 = icmp eq ptr %3, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store float %57, ptr %3, align 4, !tbaa !34
  br label %60

60:                                               ; preds = %59, %55
  %61 = icmp eq ptr %4, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = fadd float %56, %57
  store float %63, ptr %4, align 4, !tbaa !34
  br label %64

64:                                               ; preds = %62, %60
  %65 = fsub float %2, %57
  %66 = fdiv float %65, %56
  ret float %66
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @psys_get_child_size(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 19
  %8 = load i16, ptr %7, align 4, !tbaa !348
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 82
  br label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !330
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ParticleData, ptr %14, i64 %17, i32 13
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %12 ]
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 92
  %23 = load float, ptr %22, align 8, !tbaa !496
  %24 = fmul float %21, %23
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 93
  %26 = load float, ptr %25, align 4, !tbaa !519
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !168
  %31 = ptrtoint ptr %1 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = lshr exact i64 %33, 6
  %35 = trunc i64 %34 to i32
  %36 = add i32 %35, 26
  %37 = tail call fastcc float @psys_frand(ptr noundef nonnull %0, i32 noundef %36) #24
  %38 = fneg float %26
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %37, float 1.000000e+00)
  %40 = fmul float %24, %39
  br label %41

41:                                               ; preds = %28, %19
  %42 = phi float [ %40, %28 ], [ %24, %19 ]
  ret float %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ParticleTexture, align 4
  %6 = alloca [4 x %struct.ParticleKey], align 16
  %7 = alloca %struct.ParticleThreadContext, align 8
  %8 = alloca %struct.ParticleInterpolationData, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca %struct.ParticleCacheKey, align 4
  %13 = alloca %struct.ParticleCacheKey, align 4
  %14 = alloca %struct.ParticleKey, align 4
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !286
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  br label %29

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = tail call ptr @psys_get_modifier(ptr noundef %25, ptr noundef %27) #24
  br label %29

29:                                               ; preds = %18, %23
  %30 = phi ptr [ %25, %23 ], [ %22, %18 ]
  %31 = phi ptr [ %27, %23 ], [ %20, %18 ]
  %32 = phi ptr [ %28, %23 ], [ %16, %18 ]
  %33 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 31
  %38 = load i16, ptr %37, align 4, !tbaa !370
  %39 = tail call ptr @give_current_material(ptr noundef %30, i16 noundef signext %38) #23
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #25
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 26
  %41 = load i32, ptr %40, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 28
  %43 = load i32, ptr %42, align 8, !tbaa !169
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 11
  %45 = load i16, ptr %44, align 8, !tbaa !437
  %46 = and i16 %45, 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 25
  %50 = load i32, ptr %49, align 4, !tbaa !59
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %29, %48
  %54 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 7
  %55 = load i16, ptr %54, align 8, !tbaa !110
  %56 = icmp ne i16 %55, 2
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 1, %48 ], [ 0, %53 ]
  %59 = phi i1 [ true, %48 ], [ %56, %53 ]
  %60 = phi i1 [ false, %48 ], [ %56, %53 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %61 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 4
  %62 = load float, ptr %61, align 4, !tbaa !385
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = fcmp ogt float %62, 1.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %57, %64, %66
  %68 = phi float [ 1.000000e+00, %66 ], [ %62, %64 ], [ 0.000000e+00, %57 ]
  %69 = icmp sgt i32 %41, %1
  br i1 %69, label %70, label %153

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !159
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %12) #25
  %75 = sext i32 %1 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !58
  call fastcc void @interpolate_pathcache(ptr noundef %77, float noundef %68, ptr noundef nonnull %12) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %12) #24
  %78 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %79 = getelementptr inbounds %struct.ParticleCacheKey, ptr %12, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %78, ptr noundef nonnull %79) #24
  %80 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %81 = getelementptr inbounds %struct.ParticleCacheKey, ptr %12, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %80, ptr noundef nonnull %81) #23
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %12) #25
  br label %323

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  %85 = sext i32 %1 to i64
  %86 = getelementptr inbounds %struct.ParticleData, ptr %84, i64 %85
  %87 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %8, i64 0, i32 3
  store i32 %58, ptr %87, align 8, !tbaa !375
  br i1 %60, label %88, label %91

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 40
  %90 = load ptr, ptr %89, align 8, !tbaa !100
  br label %91

91:                                               ; preds = %82, %88
  %92 = phi ptr [ %90, %88 ], [ null, %82 ]
  %93 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %8, i64 0, i32 5
  store ptr %92, ptr %93, align 8, !tbaa !377
  %94 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %8, i64 0, i32 7
  store ptr null, ptr %94, align 8, !tbaa !378
  %95 = load ptr, ptr %34, align 8, !tbaa !48
  %96 = getelementptr inbounds %struct.ParticleSettings, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %96, align 8, !tbaa !53
  %98 = and i32 %97, 1024
  %99 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %8, i64 0, i32 11
  store i32 %98, ptr %99, align 8, !tbaa !379
  %100 = load ptr, ptr %0, align 8, !tbaa !63
  %101 = tail call i32 @psys_in_edit_mode(ptr noundef %100, ptr noundef nonnull %31) #24, !range !66
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 13
  %105 = load ptr, ptr %104, align 8, !tbaa !153
  br label %106

106:                                              ; preds = %91, %103
  %107 = phi ptr [ %105, %103 ], [ null, %91 ]
  %108 = getelementptr inbounds %struct.ParticleInterpolationData, ptr %8, i64 0, i32 1
  store ptr %107, ptr %108, align 8, !tbaa !380
  call fastcc void @init_particle_interpolation(ptr noundef nonnull %31, ptr noundef %86, ptr noundef nonnull %8) #24
  call fastcc void @do_particle_interpolation(ptr noundef nonnull %31, i32 noundef %1, ptr noundef %86, float noundef %68, ptr noundef nonnull %8, ptr noundef nonnull %2) #24
  %109 = load ptr, ptr %108, align 8, !tbaa !380
  %110 = icmp eq ptr %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %36, align 8, !tbaa !67
  %113 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %113, ptr noundef nonnull %2) #23
  %114 = load ptr, ptr %36, align 8, !tbaa !67
  %115 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 47
  %116 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %115, ptr noundef nonnull %116) #23
  br label %323

117:                                              ; preds = %106
  br i1 %59, label %323, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 25
  %120 = load i32, ptr %119, align 4, !tbaa !59
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %323

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.ParticleData, ptr %84, i64 %85, i32 17
  %125 = load i16, ptr %124, align 4, !tbaa !49
  %126 = and i16 %125, 8
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %323

128:                                              ; preds = %123
  %129 = load ptr, ptr %36, align 8, !tbaa !67
  %130 = load ptr, ptr %15, align 8, !tbaa !286
  %131 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !190
  %133 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 8
  %134 = load i16, ptr %133, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %129, ptr noundef %132, i16 noundef signext %134, ptr noundef nonnull %86, ptr noundef nonnull %11) #24
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %2) #23
  %135 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  call void @mul_mat3_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %135) #23
  %136 = load ptr, ptr %33, align 8, !tbaa !65
  %137 = getelementptr inbounds %struct.ParticleSystem, ptr %136, i64 0, i32 42
  %138 = load ptr, ptr %137, align 8, !tbaa !388
  %139 = icmp eq ptr %138, null
  br i1 %139, label %148, label %140

140:                                              ; preds = %128
  %141 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 5
  %142 = load i32, ptr %141, align 8, !tbaa !53
  %143 = and i32 %142, 1073741824
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load float, ptr %61, align 4, !tbaa !385
  %147 = call i32 @do_guides(ptr noundef nonnull %138, ptr noundef nonnull %2, i32 noundef %1, float noundef %146) #24, !range !66
  br label %148

148:                                              ; preds = %145, %140, %128
  %149 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 15
  %150 = load ptr, ptr %149, align 8, !tbaa !355
  %151 = icmp eq ptr %150, null
  br i1 %151, label %323, label %152

152:                                              ; preds = %148
  call void @calc_latt_deform(ptr noundef nonnull %150, ptr noundef nonnull %2, float noundef 1.000000e+00) #23
  br label %323

153:                                              ; preds = %67
  %154 = icmp eq i32 %43, 0
  br i1 %154, label %323, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 8
  %157 = load ptr, ptr %156, align 8, !tbaa !166
  %158 = icmp eq ptr %157, null
  br i1 %158, label %168, label %159

159:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %13) #25
  %160 = sub nsw i32 %1, %41
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %157, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !58
  call fastcc void @interpolate_pathcache(ptr noundef %163, float noundef %68, ptr noundef nonnull %13) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %13) #24
  %164 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %165 = getelementptr inbounds %struct.ParticleCacheKey, ptr %13, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %164, ptr noundef nonnull %165) #24
  %166 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %167 = getelementptr inbounds %struct.ParticleCacheKey, ptr %13, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %166, ptr noundef nonnull %167) #23
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %13) #25
  br label %323

168:                                              ; preds = %155
  %169 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 4
  %170 = load ptr, ptr %169, align 8, !tbaa !168
  %171 = sext i32 %1 to i64
  %172 = getelementptr inbounds %struct.ChildParticle, ptr %170, i64 %171
  %173 = sext i32 %41 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174
  br i1 %63, label %176, label %179

176:                                              ; preds = %168
  %177 = fneg float %62
  %178 = tail call float @psys_get_child_time(ptr noundef nonnull %31, ptr noundef %175, float noundef %177, ptr noundef null, ptr noundef null) #24
  br label %179

179:                                              ; preds = %168, %176
  %180 = phi float [ %178, %176 ], [ %68, %168 ]
  %181 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 19
  %182 = load i16, ptr %181, align 4, !tbaa !348
  %183 = icmp eq i16 %182, 2
  br i1 %183, label %184, label %218

184:                                              ; preds = %179, %189
  %185 = phi i64 [ %193, %189 ], [ 0, %179 ]
  %186 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 2, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !38
  %188 = icmp sgt i32 %187, -1
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load float, ptr %61, align 4, !tbaa !385
  %191 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %6, i64 0, i64 %185, i32 4
  store float %190, ptr %191, align 4, !tbaa !385
  %192 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 %185
  call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %187, ptr noundef nonnull %192, i8 noundef zeroext 1) #24
  %193 = add nuw nsw i64 %185, 1
  %194 = icmp eq i64 %193, 4
  br i1 %194, label %195, label %184, !llvm.loop !520

195:                                              ; preds = %189, %184
  %196 = load i32, ptr %175, align 4, !tbaa !253
  %197 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 5
  %198 = load float, ptr %197, align 4, !tbaa !328
  %199 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 4
  call void @psys_particle_on_emitter(ptr noundef %32, i32 noundef 1, i32 noundef %196, i32 noundef -2, ptr noundef nonnull %199, float noundef %198, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef null) #24
  %200 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 7
  %201 = load i16, ptr %200, align 8, !tbaa !110
  %202 = icmp eq i16 %201, 2
  br i1 %202, label %203, label %217

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !47
  %206 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !330
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.ParticleData, ptr %205, i64 %208
  %210 = load ptr, ptr %36, align 8, !tbaa !67
  %211 = load ptr, ptr %15, align 8, !tbaa !286
  %212 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !190
  %214 = load ptr, ptr %34, align 8, !tbaa !48
  %215 = getelementptr inbounds %struct.ParticleSettings, ptr %214, i64 0, i32 8
  %216 = load i16, ptr %215, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %210, ptr noundef %213, i16 noundef signext %216, ptr noundef %209, ptr noundef nonnull %11) #24
  br label %249

217:                                              ; preds = %195
  call void @unit_m4(ptr noundef nonnull %11) #23
  br label %249

218:                                              ; preds = %179
  %219 = load float, ptr %61, align 4, !tbaa !385
  %220 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 4
  store float %219, ptr %220, align 4, !tbaa !385
  %221 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !330
  call void @psys_get_particle_on_path(ptr noundef nonnull %0, i32 noundef %222, ptr noundef nonnull %6, i8 noundef zeroext 1) #24
  %223 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !47
  %225 = load i32, ptr %221, align 4, !tbaa !330
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 8
  %228 = load i16, ptr %227, align 2, !tbaa !284
  %229 = getelementptr inbounds %struct.ParticleData, ptr %224, i64 %226, i32 9
  %230 = load i32, ptr %229, align 8, !tbaa !280
  %231 = getelementptr inbounds %struct.ParticleData, ptr %224, i64 %226, i32 11
  %232 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 7
  %233 = load i16, ptr %232, align 8, !tbaa !110
  %234 = icmp eq i16 %233, 2
  br i1 %234, label %235, label %247

235:                                              ; preds = %218
  %236 = getelementptr inbounds %struct.ParticleData, ptr %224, i64 %226
  %237 = sext i16 %228 to i32
  %238 = getelementptr inbounds %struct.ParticleData, ptr %224, i64 %226, i32 12
  %239 = load float, ptr %238, align 8, !tbaa !287
  call void @psys_particle_on_emitter(ptr noundef %32, i32 noundef %237, i32 noundef %230, i32 noundef -2, ptr noundef nonnull %231, float noundef %239, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef null) #24
  %240 = load ptr, ptr %36, align 8, !tbaa !67
  %241 = load ptr, ptr %15, align 8, !tbaa !286
  %242 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !190
  %244 = load ptr, ptr %34, align 8, !tbaa !48
  %245 = getelementptr inbounds %struct.ParticleSettings, ptr %244, i64 0, i32 8
  %246 = load i16, ptr %245, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %240, ptr noundef %243, i16 noundef signext %246, ptr noundef %236, ptr noundef nonnull %11) #24
  br label %249

247:                                              ; preds = %218
  %248 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %248) #24
  call void @unit_m4(ptr noundef nonnull %11) #23
  br label %249

249:                                              ; preds = %203, %217, %235, %247
  %250 = phi ptr [ %231, %235 ], [ %231, %247 ], [ %199, %217 ], [ %199, %203 ]
  %251 = phi i32 [ %230, %235 ], [ %230, %247 ], [ %196, %217 ], [ %196, %203 ]
  %252 = phi i16 [ %228, %235 ], [ %228, %247 ], [ 1, %217 ], [ 1, %203 ]
  %253 = getelementptr inbounds i8, ptr %7, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %253, i8 0, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !521
  %254 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %32, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !190
  %256 = getelementptr inbounds %struct.ParticleThreadContext, ptr %7, i64 0, i32 1
  store ptr %255, ptr %256, align 8, !tbaa !205
  %257 = getelementptr inbounds %struct.ParticleThreadContext, ptr %7, i64 0, i32 2
  store ptr %39, ptr %257, align 8, !tbaa !522
  call fastcc void @get_child_modifier_parameters(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef nonnull %175, i16 noundef signext %252, i32 noundef %251, ptr noundef nonnull %250, ptr noundef nonnull %10, ptr noundef nonnull %5) #24
  br i1 %183, label %258, label %303

258:                                              ; preds = %249
  %259 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %260 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %261 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %262 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 2
  %263 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %264

264:                                              ; preds = %258, %275
  %265 = phi float [ 0.000000e+00, %258 ], [ %300, %275 ]
  %266 = phi float [ 0.000000e+00, %258 ], [ %296, %275 ]
  %267 = phi float [ 0.000000e+00, %258 ], [ %292, %275 ]
  %268 = phi float [ 0.000000e+00, %258 ], [ %288, %275 ]
  %269 = phi float [ 0.000000e+00, %258 ], [ %284, %275 ]
  %270 = phi float [ 0.000000e+00, %258 ], [ %280, %275 ]
  %271 = phi i64 [ 0, %258 ], [ %301, %275 ]
  %272 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 2, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !38
  %274 = icmp sgt i32 %273, -1
  br i1 %274, label %275, label %309

275:                                              ; preds = %264
  %276 = getelementptr inbounds %struct.ChildParticle, ptr %172, i64 %174, i32 3, i64 %271
  %277 = load float, ptr %276, align 4, !tbaa !34
  %278 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %6, i64 0, i64 %271
  %279 = load float, ptr %278, align 8, !tbaa !34
  %280 = call float @llvm.fmuladd.f32(float %277, float %279, float %270)
  store float %280, ptr %2, align 4, !tbaa !34
  %281 = load float, ptr %276, align 4, !tbaa !34
  %282 = getelementptr inbounds [3 x float], ptr %278, i64 0, i64 1
  %283 = load float, ptr %282, align 4, !tbaa !34
  %284 = call float @llvm.fmuladd.f32(float %281, float %283, float %269)
  store float %284, ptr %260, align 4, !tbaa !34
  %285 = load float, ptr %276, align 4, !tbaa !34
  %286 = getelementptr inbounds [3 x float], ptr %278, i64 0, i64 2
  %287 = load float, ptr %286, align 8, !tbaa !34
  %288 = call float @llvm.fmuladd.f32(float %285, float %287, float %268)
  store float %288, ptr %259, align 4, !tbaa !34
  %289 = load float, ptr %276, align 4, !tbaa !34
  %290 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %6, i64 0, i64 %271, i32 1
  %291 = load float, ptr %290, align 4, !tbaa !34
  %292 = call float @llvm.fmuladd.f32(float %289, float %291, float %267)
  store float %292, ptr %261, align 4, !tbaa !34
  %293 = load float, ptr %276, align 4, !tbaa !34
  %294 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %6, i64 0, i64 %271, i32 1, i64 1
  %295 = load float, ptr %294, align 8, !tbaa !34
  %296 = call float @llvm.fmuladd.f32(float %293, float %295, float %266)
  store float %296, ptr %263, align 4, !tbaa !34
  %297 = load float, ptr %276, align 4, !tbaa !34
  %298 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %6, i64 0, i64 %271, i32 1, i64 2
  %299 = load float, ptr %298, align 4, !tbaa !34
  %300 = call float @llvm.fmuladd.f32(float %297, float %299, float %265)
  store float %300, ptr %262, align 4, !tbaa !34
  %301 = add nuw nsw i64 %271, 1
  %302 = icmp eq i64 %301, 4
  br i1 %302, label %309, label %264, !llvm.loop !523

303:                                              ; preds = %249
  %304 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 2
  %305 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 95
  %306 = load float, ptr %305, align 4, !tbaa !524
  %307 = getelementptr inbounds %struct.ParticleSettings, ptr %35, i64 0, i32 94
  %308 = load float, ptr %307, align 8, !tbaa !525
  call fastcc void @offset_child(ptr noundef nonnull %175, ptr noundef nonnull %6, ptr noundef nonnull %304, ptr noundef %2, float noundef %306, float noundef %308) #24
  br label %309

309:                                              ; preds = %264, %275, %303
  %310 = icmp eq i8 %3, 0
  %311 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 2
  call fastcc void @do_child_modifiers(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %311, ptr noundef nonnull %175, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %2, float noundef %180) #24
  br i1 %310, label %323, label %312

312:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #25
  %313 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %314 = call fastcc float @len_v3(ptr noundef nonnull %313) #24
  %315 = fcmp ult float %180, 0x3F50624DE0000000
  %316 = getelementptr inbounds %struct.ParticleKey, ptr %14, i64 0, i32 4
  br i1 %315, label %319, label %317

317:                                              ; preds = %312
  %318 = fadd float %180, 0xBF50624DE0000000
  store float %318, ptr %316, align 4, !tbaa !385
  call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %14, i8 noundef zeroext 0) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %313, ptr noundef %2, ptr noundef nonnull %14) #24
  br label %321

319:                                              ; preds = %312
  %320 = fadd float %180, 0x3F50624DE0000000
  store float %320, ptr %316, align 4, !tbaa !385
  call void @psys_get_particle_on_path(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %14, i8 noundef zeroext 0) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %313, ptr noundef nonnull %14, ptr noundef %2) #24
  br label %321

321:                                              ; preds = %319, %317
  %322 = call fastcc float @normalize_v3(ptr noundef nonnull %313) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %313, float noundef %314) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #25
  br label %323

323:                                              ; preds = %309, %153, %321, %159, %74, %117, %118, %148, %152, %123, %111
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @interpolate_pathcache(ptr noundef %0, float noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !526 {
  %4 = getelementptr inbounds %struct.ParticleCacheKey, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !381
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ParticleCacheKey, ptr %0, i64 %6, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !391
  %9 = fmul float %8, %1
  %10 = icmp sgt i32 %5, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ParticleCacheKey, ptr %0, i64 0, i32 4
  %13 = load float, ptr %12, align 4, !tbaa !391
  br label %20

14:                                               ; preds = %3, %14
  %15 = phi ptr [ %19, %14 ], [ %0, %3 ]
  %16 = getelementptr inbounds %struct.ParticleCacheKey, ptr %15, i64 0, i32 4
  %17 = load float, ptr %16, align 4, !tbaa !391
  %18 = fcmp olt float %17, %9
  %19 = getelementptr inbounds %struct.ParticleCacheKey, ptr %15, i64 1
  br i1 %18, label %14, label %20

20:                                               ; preds = %14, %11
  %21 = phi float [ %13, %11 ], [ %17, %14 ]
  %22 = phi ptr [ %0, %11 ], [ %15, %14 ]
  %23 = fcmp oeq float %21, %9
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %2, ptr noundef nonnull align 4 dereferenceable(60) %22, i64 60, i1 false), !tbaa.struct !527
  br label %39

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ParticleCacheKey, ptr %22, i64 -1
  %27 = getelementptr %struct.ParticleCacheKey, ptr %22, i64 -1, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !391
  %29 = fsub float %9, %28
  %30 = fsub float %21, %28
  %31 = fdiv float %29, %30
  tail call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %26, ptr noundef nonnull %22, float noundef %31) #23
  %32 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 1
  %33 = getelementptr %struct.ParticleCacheKey, ptr %22, i64 -1, i32 1
  %34 = getelementptr inbounds %struct.ParticleCacheKey, ptr %22, i64 0, i32 1
  tail call void @interp_v3_v3v3(ptr noundef nonnull %32, ptr noundef %33, ptr noundef nonnull %34, float noundef %31) #23
  %35 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  %36 = getelementptr %struct.ParticleCacheKey, ptr %22, i64 -1, i32 2
  %37 = getelementptr inbounds %struct.ParticleCacheKey, ptr %22, i64 0, i32 2
  tail call void @interp_qt_qtqt(ptr noundef nonnull %35, ptr noundef %36, ptr noundef nonnull %37, float noundef %31) #23
  %38 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 4
  store float %9, ptr %38, align 4, !tbaa !391
  br label %39

39:                                               ; preds = %25, %24
  %40 = icmp eq ptr %22, %0
  %41 = getelementptr inbounds %struct.ParticleCacheKey, ptr %22, i64 -1
  %42 = icmp eq ptr %41, %0
  %43 = select i1 %40, i1 true, i1 %42
  %44 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 2
  %45 = getelementptr inbounds %struct.ParticleCacheKey, ptr %0, i64 0, i32 2
  br i1 %43, label %46, label %47

46:                                               ; preds = %39
  tail call void @copy_qt_qt(ptr noundef nonnull %44, ptr noundef nonnull %45) #23
  br label %48

47:                                               ; preds = %39
  tail call void @mul_qt_qtqt(ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %44) #23
  br label %48

48:                                               ; preds = %47, %46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_child_modifier_parameters(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !528 {
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !209
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = ptrtoint ptr %2 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 6
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !38
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 %24
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 20
  %27 = load float, ptr %26, align 8, !tbaa !469
  tail call fastcc void @get_cpa_texture(ptr noundef %19, ptr noundef %10, ptr noundef %0, ptr noundef %25, i32 noundef %17, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, float noundef %27) #24
  %28 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !410
  %30 = add nsw i32 %17, 24
  %31 = tail call fastcc float @psys_frand(ptr noundef %10, i32 noundef %30) #24
  %32 = fcmp olt float %29, %31
  br i1 %32, label %103, label %33

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 24
  %35 = load ptr, ptr %34, align 8, !tbaa !356
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %18, align 8, !tbaa !205
  %39 = tail call fastcc float @psys_interpolate_value_from_verts(ptr noundef %38, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %35) #24
  %40 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !372
  %42 = fmul float %39, %41
  store float %42, ptr %40, align 4, !tbaa !372
  br label %43

43:                                               ; preds = %37, %33
  %44 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 25
  %45 = load ptr, ptr %44, align 8, !tbaa !357
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %18, align 8, !tbaa !205
  %49 = tail call fastcc float @psys_interpolate_value_from_verts(ptr noundef %48, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %45) #24
  %50 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 9
  %51 = load float, ptr %50, align 4, !tbaa !529
  %52 = fmul float %49, %51
  store float %52, ptr %50, align 4, !tbaa !529
  br label %53

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 26
  %55 = load ptr, ptr %54, align 8, !tbaa !358
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %18, align 8, !tbaa !205
  %59 = tail call fastcc float @psys_interpolate_value_from_verts(ptr noundef %58, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %55) #24
  %60 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 10
  %61 = load float, ptr %60, align 4, !tbaa !530
  %62 = fmul float %59, %61
  store float %62, ptr %60, align 4, !tbaa !530
  br label %63

63:                                               ; preds = %57, %53
  %64 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 27
  %65 = load ptr, ptr %64, align 8, !tbaa !359
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %18, align 8, !tbaa !205
  %69 = tail call fastcc float @psys_interpolate_value_from_verts(ptr noundef %68, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %65) #24
  %70 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 12
  %71 = load float, ptr %70, align 4, !tbaa !531
  %72 = fmul float %69, %71
  store float %72, ptr %70, align 4, !tbaa !531
  br label %73

73:                                               ; preds = %67, %63
  %74 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 28
  %75 = load ptr, ptr %74, align 8, !tbaa !360
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %18, align 8, !tbaa !205
  %79 = tail call fastcc float @psys_interpolate_value_from_verts(ptr noundef %78, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %75) #24
  %80 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 13
  %81 = load float, ptr %80, align 4, !tbaa !532
  %82 = fmul float %79, %81
  store float %82, ptr %80, align 4, !tbaa !532
  br label %83

83:                                               ; preds = %77, %73
  %84 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 29
  %85 = load ptr, ptr %84, align 8, !tbaa !361
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %18, align 8, !tbaa !205
  %89 = tail call fastcc float @psys_interpolate_value_from_verts(ptr noundef %88, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %85) #24
  %90 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 14
  %91 = load float, ptr %90, align 4, !tbaa !394
  %92 = fmul float %89, %91
  store float %92, ptr %90, align 4, !tbaa !394
  br label %93

93:                                               ; preds = %87, %83
  %94 = getelementptr inbounds %struct.ParticleThreadContext, ptr %1, i64 0, i32 30
  %95 = load ptr, ptr %94, align 8, !tbaa !362
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %18, align 8, !tbaa !205
  %99 = tail call fastcc float @psys_interpolate_value_from_verts(ptr noundef %98, i16 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %95) #24
  %100 = getelementptr inbounds %struct.ParticleTexture, ptr %7, i64 0, i32 11
  %101 = load float, ptr %100, align 4, !tbaa !533
  %102 = fmul float %99, %101
  store float %102, ptr %100, align 4, !tbaa !533
  br label %103

103:                                              ; preds = %93, %97, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @offset_child(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !534 {
  %7 = getelementptr inbounds %struct.ChildParticle, ptr %0, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %7) #24
  tail call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %5) #24
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = fmul float %8, %4
  store float %9, ptr %3, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #24
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  tail call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 2
  tail call void @copy_qt_qt(ptr noundef nonnull %14, ptr noundef nonnull %2) #23
  br label %17

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 2
  tail call void @unit_qt(ptr noundef nonnull %16) #23
  br label %17

17:                                               ; preds = %15, %13
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_child_modifiers(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr noundef %7, float noundef %8) unnamed_addr #0 !PGOFuncName !535 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = ptrtoint ptr %4 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 6
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 99
  %24 = load float, ptr %23, align 4, !tbaa !497
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 103
  %26 = load float, ptr %25, align 4, !tbaa !536
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 105
  %28 = load float, ptr %27, align 4, !tbaa !537
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 108
  %30 = load float, ptr %29, align 8, !tbaa !538
  %31 = icmp eq ptr %1, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 10
  %34 = load float, ptr %33, align 4, !tbaa !530
  %35 = fmul float %24, %34
  %36 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 12
  %37 = load float, ptr %36, align 4, !tbaa !531
  %38 = fmul float %26, %37
  %39 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 13
  %40 = load float, ptr %39, align 4, !tbaa !532
  %41 = fmul float %28, %40
  %42 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 14
  %43 = load float, ptr %42, align 4, !tbaa !394
  %44 = fmul float %30, %43
  br label %45

45:                                               ; preds = %32, %9
  %46 = phi float [ %38, %32 ], [ %26, %9 ]
  %47 = phi float [ %41, %32 ], [ %28, %9 ]
  %48 = phi float [ %44, %32 ], [ %30, %9 ]
  %49 = phi float [ %35, %32 ], [ %24, %9 ]
  %50 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !53
  %52 = and i32 %51, 134217728
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 42
  %56 = load ptr, ptr %55, align 8, !tbaa !388
  %57 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !330
  %59 = tail call i32 @do_guides(ptr noundef %56, ptr noundef %7, i32 noundef %58, float noundef %8) #24, !range !66
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %45, %54
  %62 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 96
  %63 = load float, ptr %62, align 8, !tbaa !539
  %64 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 97
  %65 = load float, ptr %64, align 4, !tbaa !540
  br i1 %31, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ParticleTexture, ptr %1, i64 0, i32 9
  %68 = load float, ptr %67, align 4, !tbaa !529
  br label %69

69:                                               ; preds = %61, %66
  %70 = phi float [ %68, %66 ], [ 1.000000e+00, %61 ]
  %71 = tail call fastcc float @do_clump(ptr noundef %7, ptr noundef %2, float noundef %8, float noundef %63, float noundef %65, float noundef %70) #24
  %72 = fcmp une float %49, 0.000000e+00
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 98
  %75 = load float, ptr %74, align 8, !tbaa !541
  %76 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 102
  %77 = load float, ptr %76, align 8, !tbaa !494
  %78 = fneg float %77
  %79 = tail call float @llvm.fmuladd.f32(float %78, float %71, float 1.000000e+00)
  %80 = fmul float %75, %79
  %81 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 100
  %82 = load float, ptr %81, align 8, !tbaa !542
  %83 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 101
  %84 = load float, ptr %83, align 4, !tbaa !543
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 35
  %86 = load i16, ptr %85, align 4, !tbaa !544
  %87 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 36
  %88 = load i16, ptr %87, align 2, !tbaa !493
  %89 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !67
  %91 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 47
  %92 = load ptr, ptr %12, align 8, !tbaa !65
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.ParticleSettings, ptr %94, i64 0, i32 19
  %96 = load i16, ptr %95, align 4, !tbaa !348
  %97 = icmp eq i16 %96, 2
  %98 = zext i1 %97 to i32
  tail call fastcc void @do_kink(ptr noundef %7, ptr noundef %2, ptr noundef %3, float noundef %8, float noundef %49, float noundef %82, float noundef %80, float noundef %84, i16 noundef signext %86, i16 noundef signext %88, ptr noundef nonnull %91, i32 noundef %98) #24
  br label %99

99:                                               ; preds = %69, %73, %54
  %100 = fcmp ogt float %46, 0.000000e+00
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 104
  %103 = load float, ptr %102, align 8, !tbaa !498
  tail call fastcc void @do_rough(ptr noundef %5, ptr noundef %6, float noundef %8, float noundef %46, float noundef %103, float noundef 0.000000e+00, ptr noundef %7) #24
  br label %104

104:                                              ; preds = %101, %99
  %105 = fcmp ogt float %47, 0.000000e+00
  br i1 %105, label %106, label %113

106:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  %107 = load ptr, ptr %12, align 8, !tbaa !65
  %108 = add nsw i32 %22, 27
  call fastcc void @psys_frand_vec(ptr noundef %107, i32 noundef %108, ptr noundef nonnull %10) #24
  %109 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 106
  %110 = load float, ptr %109, align 8, !tbaa !499
  %111 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 107
  %112 = load float, ptr %111, align 4, !tbaa !545
  call fastcc void @do_rough(ptr noundef nonnull %10, ptr noundef %6, float noundef %8, float noundef %47, float noundef %110, float noundef %112, ptr noundef %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  br label %113

113:                                              ; preds = %106, %104
  %114 = fcmp ogt float %48, 0.000000e+00
  br i1 %114, label %115, label %120

115:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  %116 = load ptr, ptr %12, align 8, !tbaa !65
  %117 = add nsw i32 %22, 27
  call fastcc void @psys_frand_vec(ptr noundef %116, i32 noundef %117, ptr noundef nonnull %11) #24
  %118 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 109
  %119 = load float, ptr %118, align 4, !tbaa !546
  call fastcc void @do_rough_end(ptr noundef nonnull %11, ptr noundef %6, float noundef %8, float noundef %48, float noundef %119, ptr noundef %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  br label %120

120:                                              ; preds = %115, %113
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @psys_get_particle_state(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x %struct.ParticleKey], align 16
  %7 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = tail call float @psys_get_timestep(ptr noundef %0) #24
  %14 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 4
  %15 = load float, ptr %14, align 4, !tbaa !385
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load ptr, ptr %0, align 8, !tbaa !63
  %19 = tail call float @BKE_scene_frame_get(ptr noundef %18) #23
  br label %20

20:                                               ; preds = %4, %17
  %21 = phi float [ %19, %17 ], [ %15, %4 ]
  %22 = icmp sgt i32 %12, %1
  br i1 %22, label %87, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 28
  %25 = load i32, ptr %24, align 8, !tbaa !169
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %230, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 19
  %29 = load i16, ptr %28, align 4, !tbaa !348
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 25
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = and i32 %33, 1024
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %230, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !168
  %39 = sext i32 %1 to i64
  %40 = getelementptr inbounds %struct.ChildParticle, ptr %38, i64 %39
  %41 = sext i32 %12 to i64
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds %struct.ChildParticle, ptr %40, i64 %42
  %44 = tail call float @psys_get_child_time(ptr noundef nonnull %8, ptr noundef %43, float noundef %21, ptr noundef null, ptr noundef null) #24
  store float %44, ptr %14, align 4, !tbaa !385
  %45 = icmp eq i32 %3, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %36
  %47 = fcmp olt float %44, 0.000000e+00
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !53
  %51 = and i32 %50, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %230, label %53

53:                                               ; preds = %48, %46
  %54 = fcmp ogt float %44, 1.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !53
  %58 = and i32 %57, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %230, label %60

60:                                               ; preds = %53, %55, %36
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 53
  %62 = load float, ptr %61, align 4, !tbaa !547
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 54
  %64 = load float, ptr %63, align 8, !tbaa !548
  %65 = fsub float %64, %62
  %66 = add nsw i32 %1, 23
  %67 = tail call fastcc float @psys_frand(ptr noundef nonnull %8, i32 noundef %66) #24
  %68 = tail call float @llvm.fmuladd.f32(float %65, float %67, float %62)
  %69 = fsub float %21, %68
  %70 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 55
  %71 = load float, ptr %70, align 4, !tbaa !516
  %72 = add nsw i32 %1, 24
  %73 = tail call fastcc float @psys_frand(ptr noundef nonnull %8, i32 noundef %72) #24
  %74 = fmul float %71, %73
  %75 = fdiv float %69, %74
  store float %75, ptr %14, align 4, !tbaa !385
  tail call void @psys_get_particle_on_path(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  br label %230

76:                                               ; preds = %27
  %77 = load ptr, ptr %7, align 8, !tbaa !65
  %78 = getelementptr inbounds %struct.ParticleSystem, ptr %77, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !168
  %80 = sext i32 %1 to i64
  %81 = getelementptr inbounds %struct.ChildParticle, ptr %79, i64 %80
  %82 = sext i32 %12 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds %struct.ChildParticle, ptr %81, i64 %83
  %85 = getelementptr inbounds %struct.ChildParticle, ptr %81, i64 %83, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !330
  br label %89

87:                                               ; preds = %20
  %88 = load ptr, ptr %7, align 8, !tbaa !65
  br label %89

89:                                               ; preds = %87, %76
  %90 = phi i32 [ %1, %87 ], [ %86, %76 ]
  %91 = phi ptr [ %88, %87 ], [ %77, %76 ]
  %92 = phi ptr [ null, %87 ], [ %84, %76 ]
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %91, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !47
  %95 = sext i32 %90 to i64
  %96 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95
  %97 = icmp eq ptr %94, null
  br i1 %97, label %125, label %98

98:                                               ; preds = %89
  %99 = icmp eq i32 %3, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95, i32 8
  %102 = load float, ptr %101, align 4, !tbaa !406
  br label %121

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95, i32 6
  %105 = load float, ptr %104, align 4, !tbaa !405
  %106 = fcmp olt float %21, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %109 = load i32, ptr %108, align 8, !tbaa !53
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %230, label %112

112:                                              ; preds = %107, %103
  %113 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95, i32 8
  %114 = load float, ptr %113, align 4, !tbaa !406
  %115 = fcmp ult float %21, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !53
  %119 = and i32 %118, 64
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %230, label %121

121:                                              ; preds = %100, %112, %116
  %122 = phi float [ %102, %100 ], [ %114, %112 ], [ %114, %116 ]
  %123 = fcmp olt float %21, %122
  %124 = select i1 %123, float %21, float %122
  br label %125

125:                                              ; preds = %121, %89
  %126 = phi float [ %124, %121 ], [ %21, %89 ]
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %91, i64 0, i32 25
  %128 = load i32, ptr %127, align 4, !tbaa !59
  %129 = and i32 %128, 1024
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = fneg float %126
  store float %132, ptr %14, align 4, !tbaa !385
  tail call void @psys_get_particle_on_path(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  br label %230

133:                                              ; preds = %125
  %134 = icmp eq ptr %92, null
  br i1 %134, label %159, label %135

135:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #25
  %136 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95, i32 6
  %137 = load float, ptr %136, align 4, !tbaa !405
  %138 = fsub float %126, %137
  %139 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95, i32 7
  %140 = load float, ptr %139, align 8, !tbaa !518
  %141 = fdiv float %138, %140
  %142 = getelementptr inbounds %struct.ParticleKey, ptr %96, i64 0, i32 2
  %143 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 95
  %144 = load float, ptr %143, align 4, !tbaa !524
  %145 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 94
  %146 = load float, ptr %145, align 8, !tbaa !525
  tail call fastcc void @offset_child(ptr noundef nonnull %92, ptr noundef %96, ptr noundef nonnull %142, ptr noundef nonnull %2, float noundef %144, float noundef %146) #24
  %147 = fcmp olt float %141, 0.000000e+00
  br i1 %147, label %151, label %148

148:                                              ; preds = %135
  %149 = fcmp ogt float %141, 1.000000e+00
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %135, %148, %150
  %152 = phi float [ 1.000000e+00, %150 ], [ %141, %148 ], [ 0.000000e+00, %135 ]
  call void @unit_m4(ptr noundef nonnull %5) #23
  %153 = getelementptr inbounds %struct.ChildParticle, ptr %92, i64 0, i32 4
  call fastcc void @do_child_modifiers(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %96, ptr noundef nonnull %142, ptr noundef nonnull %92, ptr noundef nonnull %153, ptr noundef nonnull %5, ptr noundef nonnull %2, float noundef %152) #24
  %154 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 15
  %155 = load ptr, ptr %154, align 8, !tbaa !355
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  call void @calc_latt_deform(ptr noundef nonnull %155, ptr noundef nonnull %2, float noundef 1.000000e+00) #23
  br label %158

158:                                              ; preds = %157, %151
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #25
  br label %230

159:                                              ; preds = %133
  %160 = getelementptr inbounds %struct.ParticleKey, ptr %96, i64 0, i32 4
  %161 = load float, ptr %160, align 4, !tbaa !549
  %162 = fcmp oeq float %161, %126
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 11
  %165 = load i16, ptr %164, align 8, !tbaa !437
  switch i16 %165, label %167 [
    i16 0, label %166
    i16 2, label %166
  ]

166:                                              ; preds = %163, %163, %159
  tail call void @copy_particle_key(ptr noundef nonnull %2, ptr noundef nonnull %96, i32 noundef 1) #24
  br label %224

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95, i32 1
  %169 = getelementptr inbounds %struct.ParticleData, ptr %94, i64 %95, i32 1, i32 4
  %170 = load float, ptr %169, align 4, !tbaa !550
  %171 = fcmp oeq float %170, %126
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  tail call void @copy_particle_key(ptr noundef nonnull %2, ptr noundef nonnull %168, i32 noundef 1) #24
  br label %224

173:                                              ; preds = %167
  %174 = load ptr, ptr %0, align 8, !tbaa !63
  %175 = getelementptr inbounds %struct.Scene, ptr %174, i64 0, i32 22, i32 55
  %176 = load i16, ptr %175, align 4, !tbaa !551
  %177 = sitofp i16 %176 to float
  %178 = fadd float %161, 2.000000e+00
  %179 = load float, ptr %14, align 4, !tbaa !385
  %180 = fcmp ult float %178, %179
  %181 = fadd float %170, -2.000000e+00
  %182 = fcmp ugt float %181, %179
  %183 = or i1 %180, %182
  br i1 %183, label %213, label %184

184:                                              ; preds = %173
  %185 = fcmp oge float %170, %161
  %186 = fcmp olt float %170, 0.000000e+00
  %187 = or i1 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = fsub float %179, %161
  tail call void @copy_particle_key(ptr noundef nonnull %2, ptr noundef nonnull %96, i32 noundef 1) #24
  %190 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %191 = fdiv float %189, %177
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %190, float noundef %191) #24
  br label %224

192:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #25
  %193 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1
  call void @copy_particle_key(ptr noundef nonnull %193, ptr noundef nonnull %168, i32 noundef 1) #24
  %194 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2
  call void @copy_particle_key(ptr noundef nonnull %194, ptr noundef nonnull %96, i32 noundef 1) #24
  %195 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 4
  %196 = load float, ptr %195, align 4, !tbaa !385
  %197 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 4
  %198 = load float, ptr %197, align 4, !tbaa !385
  %199 = fsub float %196, %198
  %200 = fsub float %179, %198
  %201 = fdiv float %200, %199
  %202 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 1
  %203 = fmul float %13, %199
  call fastcc void @mul_v3_fl(ptr noundef nonnull %202, float noundef %203) #24
  %204 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %204, float noundef %203) #24
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %6, float noundef %201, ptr noundef nonnull %2, i32 noundef 1) #24
  %205 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %206 = fdiv float 1.000000e+00, %203
  call fastcc void @mul_v3_fl(ptr noundef nonnull %205, float noundef %206) #24
  %207 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  %208 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 3
  %209 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %207, ptr noundef nonnull %208, ptr noundef nonnull %209, float noundef %201) #23
  %210 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %211 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 1, i32 2
  %212 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %210, ptr noundef nonnull %211, ptr noundef nonnull %212, float noundef %201) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #25
  br label %224

213:                                              ; preds = %173
  %214 = fadd float %161, 1.000000e+00
  %215 = fcmp ult float %214, %179
  %216 = fadd float %161, -1.000000e+00
  %217 = fcmp ugt float %216, %179
  %218 = or i1 %215, %217
  br i1 %218, label %223, label %219

219:                                              ; preds = %213
  %220 = fsub float %179, %161
  tail call void @copy_particle_key(ptr noundef nonnull %2, ptr noundef nonnull %96, i32 noundef 1) #24
  %221 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %222 = fdiv float %220, %177
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %221, float noundef %222) #24
  br label %224

223:                                              ; preds = %213
  tail call void @copy_particle_key(ptr noundef nonnull %2, ptr noundef nonnull %96, i32 noundef 0) #24
  br label %224

224:                                              ; preds = %192, %188, %223, %219, %172, %166
  %225 = load ptr, ptr %7, align 8, !tbaa !65
  %226 = getelementptr inbounds %struct.ParticleSystem, ptr %225, i64 0, i32 15
  %227 = load ptr, ptr %226, align 8, !tbaa !355
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  call void @calc_latt_deform(ptr noundef nonnull %227, ptr noundef nonnull %2, float noundef 1.000000e+00) #23
  br label %230

230:                                              ; preds = %158, %229, %224, %107, %116, %48, %55, %31, %23, %131, %60
  %231 = phi i32 [ 1, %60 ], [ 1, %131 ], [ 0, %23 ], [ 0, %31 ], [ 0, %55 ], [ 0, %48 ], [ 0, %116 ], [ 0, %107 ], [ 1, %224 ], [ 1, %229 ], [ 1, %158 ]
  ret i32 %231
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #8 !PGOFuncName !552 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_get_dupli_texture(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  store <2 x float> zeroinitializer, ptr %5, align 4, !tbaa !34
  %9 = icmp eq ptr %4, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 19
  %12 = load i16, ptr %11, align 4, !tbaa !348
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 2
  %18 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %17, i32 noundef 5) #23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %15, align 8, !tbaa !190
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 48
  %23 = load ptr, ptr %22, align 8, !tbaa !275
  %24 = load i32, ptr %4, align 4, !tbaa !253
  %25 = tail call ptr %23(ptr noundef %21, i32 noundef %24, i32 noundef 4) #23
  %26 = load i32, ptr %4, align 4, !tbaa !253
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MTFace, ptr %18, i64 %27
  %29 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !230
  %31 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4
  tail call void @psys_interpolate_uvs(ptr noundef nonnull %28, i32 noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %5) #24
  br label %32

32:                                               ; preds = %20, %14
  %33 = load i32, ptr %4, align 4, !tbaa !253
  %34 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 4
  %35 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 5
  %36 = load float, ptr %35, align 4, !tbaa !328
  call void @psys_particle_on_emitter(ptr noundef nonnull %2, i32 noundef 1, i32 noundef %33, i32 noundef -2, ptr noundef nonnull %34, float noundef %36, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef null) #24
  br label %93

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = getelementptr inbounds %struct.ChildParticle, ptr %4, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !38
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ParticleData, ptr %39, i64 %42
  br label %44

44:                                               ; preds = %37, %7
  %45 = phi ptr [ %43, %37 ], [ %3, %7 ]
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 8
  %47 = load i16, ptr %46, align 2, !tbaa !284
  %48 = icmp eq i16 %47, 1
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !190
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %51, i64 0, i32 2
  %53 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %52, i32 noundef 5) #23
  %54 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 0, i32 10
  %55 = load i32, ptr %54, align 4, !tbaa !281
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !280
  br label %60

60:                                               ; preds = %57, %49
  %61 = phi i32 [ %59, %57 ], [ %55, %49 ]
  %62 = load ptr, ptr %50, align 8, !tbaa !190
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 25
  %64 = load ptr, ptr %63, align 8, !tbaa !214
  %65 = tail call i32 %64(ptr noundef %62) #23
  %66 = icmp slt i32 %61, %65
  %67 = select i1 %66, i32 %61, i32 -1
  %68 = icmp eq ptr %53, null
  %69 = icmp eq i32 %67, -1
  %70 = select i1 %68, i1 true, i1 %69
  %71 = icmp eq i32 %67, -2
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %60
  %74 = load ptr, ptr %50, align 8, !tbaa !190
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %74, i64 0, i32 48
  %76 = load ptr, ptr %75, align 8, !tbaa !275
  %77 = tail call ptr %76(ptr noundef %74, i32 noundef %67, i32 noundef 4) #23
  %78 = sext i32 %67 to i64
  %79 = getelementptr inbounds %struct.MTFace, ptr %53, i64 %78
  %80 = getelementptr inbounds %struct.MFace, ptr %77, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !230
  %82 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 0, i32 11
  tail call void @psys_interpolate_uvs(ptr noundef %79, i32 noundef %81, ptr noundef nonnull %82, ptr noundef nonnull %5) #24
  br label %83

83:                                               ; preds = %60, %73, %44
  %84 = load i16, ptr %46, align 2, !tbaa !284
  %85 = sext i16 %84 to i32
  %86 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !280
  %88 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 0, i32 10
  %89 = load i32, ptr %88, align 4, !tbaa !281
  %90 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 0, i32 11
  %91 = getelementptr inbounds %struct.ParticleData, ptr %45, i64 0, i32 12
  %92 = load float, ptr %91, align 8, !tbaa !287
  call void @psys_particle_on_emitter(ptr noundef %2, i32 noundef %85, i32 noundef %87, i32 noundef %89, ptr noundef nonnull %90, float noundef %92, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef null) #24
  br label %93

93:                                               ; preds = %83, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_get_dupli_path_transform(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [4 x float], align 16
  %13 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #25
  %19 = getelementptr inbounds %struct.ParticleCacheKey, ptr %3, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !381
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ParticleCacheKey, ptr %3, i64 %21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %22, ptr noundef %3) #24
  %23 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #24
  %24 = icmp eq ptr %1, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %27, i64 0, i32 95
  %29 = load float, ptr %28, align 4, !tbaa !524
  %30 = fcmp une float %29, 2.000000e+00
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !38
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ParticleData, ptr %33, i64 %36
  %38 = icmp eq ptr %33, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %6, %31
  %40 = phi ptr [ %37, %31 ], [ %1, %6 ]
  %41 = load ptr, ptr %15, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %43, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !284
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !280
  %49 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 0, i32 10
  %50 = load i32, ptr %49, align 4, !tbaa !281
  %51 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 0, i32 11
  %52 = getelementptr inbounds %struct.ParticleData, ptr %40, i64 0, i32 12
  %53 = load float, ptr %52, align 8, !tbaa !287
  call void @psys_particle_on_emitter(ptr noundef %18, i32 noundef %46, i32 noundef %48, i32 noundef %50, ptr noundef nonnull %51, float noundef %53, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #24
  br label %59

54:                                               ; preds = %25, %31
  %55 = load i32, ptr %2, align 4, !tbaa !253
  %56 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 4
  %57 = getelementptr inbounds %struct.ChildParticle, ptr %2, i64 0, i32 5
  %58 = load float, ptr %57, align 4, !tbaa !328
  call void @psys_particle_on_emitter(ptr noundef %18, i32 noundef 1, i32 noundef %55, i32 noundef -2, ptr noundef nonnull %56, float noundef %58, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #24
  br label %59

59:                                               ; preds = %54, %39
  %60 = phi ptr [ null, %54 ], [ %40, %39 ]
  %61 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %62, i64 0, i32 12
  %64 = load i16, ptr %63, align 2, !tbaa !553
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %66, label %109

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %67) #23
  call void @transpose_m3(ptr noundef nonnull %11) #23
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %8) #23
  %68 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #24
  %69 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %70 = call float @llvm.fabs.f32(float %69)
  %71 = fpext float %70 to double
  %72 = fcmp ogt double %71, 0x3FEFFFFDE7210BE9
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull @__const.psys_get_dupli_path_transform.xvec) #24
  %75 = call float @llvm.fabs.f32(float %74)
  %76 = fpext float %75 to double
  %77 = fcmp ogt double %76, 0x3FEFFFFDE7210BE9
  %78 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %79 = insertelement <2 x i1> poison, i1 %77, i64 0
  %80 = shufflevector <2 x i1> %79, <2 x i1> poison, <2 x i32> zeroinitializer
  %81 = select <2 x i1> %80, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> <float 1.000000e+00, float 0.000000e+00>
  store <2 x float> %81, ptr %8, align 8, !tbaa !34
  store float 0.000000e+00, ptr %78, align 8, !tbaa !34
  br label %82

82:                                               ; preds = %73, %66
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %83 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #24
  %84 = load ptr, ptr %61, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %84, i64 0, i32 78
  %86 = load float, ptr %85, align 8, !tbaa !554
  %87 = fcmp une float %86, 0.000000e+00
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #25
  %89 = getelementptr inbounds %struct.ParticleSettings, ptr %84, i64 0, i32 80
  %90 = load float, ptr %89, align 8, !tbaa !555
  %91 = fcmp une float %90, 0.000000e+00
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %16, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !47
  %95 = ptrtoint ptr %60 to i64
  %96 = ptrtoint ptr %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 200
  %99 = trunc i64 %98 to i32
  %100 = add i32 %99, 20
  %101 = call fastcc float @psys_frand(ptr noundef nonnull %16, i32 noundef %100) #24
  %102 = call float @llvm.fmuladd.f32(float %90, float %101, float %86)
  br label %103

103:                                              ; preds = %92, %88
  %104 = phi float [ %102, %92 ], [ %86, %88 ]
  %105 = fmul float %104, 0x400921FB60000000
  call void @axis_angle_to_quat(ptr noundef nonnull %12, ptr noundef nonnull %9, float noundef %105) #23
  call void @mul_qt_v3(ptr noundef nonnull %12, ptr noundef nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #25
  br label %106

106:                                              ; preds = %103, %82
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  call void @unit_m4(ptr noundef %4) #23
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %9) #24
  %107 = getelementptr inbounds [4 x float], ptr %4, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %107, ptr noundef nonnull %10) #24
  %108 = getelementptr inbounds [4 x float], ptr %4, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %108, ptr noundef nonnull %8) #24
  br label %111

109:                                              ; preds = %59
  %110 = getelementptr inbounds %struct.ParticleKey, ptr %60, i64 0, i32 2
  call void @quat_to_mat4(ptr noundef %4, ptr noundef nonnull %110) #23
  br label %111

111:                                              ; preds = %109, %106
  store float %23, ptr %5, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @psys_make_billboard(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #19 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 1
  %13 = load float, ptr %12, align 8, !tbaa !34
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ueq float %14, 0x7FF0000000000000
  br i1 %15, label %41, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ueq float %19, 0x7FF0000000000000
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 1, i64 2
  %23 = load float, ptr %22, align 8, !tbaa !34
  %24 = tail call float @llvm.fabs.f32(float %23)
  %25 = fcmp ueq float %24, 0x7FF0000000000000
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = tail call float @llvm.fabs.f32(float %28)
  %30 = fcmp ueq float %29, 0x7FF0000000000000
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ueq float %34, 0x7FF0000000000000
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 2, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fcmp ueq float %39, 0x7FF0000000000000
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31, %26, %21, %16, %5
  tail call fastcc void @zero_v3(ptr noundef nonnull %12) #24
  %42 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 2
  tail call fastcc void @zero_v3(ptr noundef nonnull %42) #24
  tail call fastcc void @zero_v3(ptr noundef nonnull %1) #24
  tail call fastcc void @zero_v3(ptr noundef nonnull %2) #24
  tail call fastcc void @zero_v3(ptr noundef %3) #24
  tail call fastcc void @zero_v3(ptr noundef %4) #24
  br label %124

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 13
  %45 = load i16, ptr %44, align 8, !tbaa !556
  %46 = icmp slt i16 %45, 3
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = sext i16 %45 to i64
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %48
  store float 1.000000e+00, ptr %49, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 9
  br label %81

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !558
  %54 = icmp ne i32 %53, 0
  %55 = icmp eq i16 %45, 3
  %56 = and i1 %55, %54
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load ptr, ptr %0, align 8, !tbaa !559
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47
  %60 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %59) #24
  %61 = load ptr, ptr %0, align 8, !tbaa !559
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47, i64 1
  %63 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %62) #24
  %64 = load ptr, ptr %0, align 8, !tbaa !559
  %65 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 47, i64 2
  %66 = tail call fastcc float @normalize_v3_v3(ptr noundef %3, ptr noundef nonnull %65) #24
  br label %101

67:                                               ; preds = %51
  %68 = icmp eq i16 %45, 4
  br i1 %68, label %69, label %81

69:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  %70 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %27) #24
  %71 = load ptr, ptr %0, align 8, !tbaa !559
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 47, i64 3
  tail call fastcc void @sub_v3_v3v3(ptr noundef %3, ptr noundef nonnull %72, ptr noundef nonnull %12) #24
  %73 = load i32, ptr %52, align 8, !tbaa !558
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = call fastcc float @dot_v3v3(ptr noundef %3, ptr noundef nonnull %9) #24
  %77 = fneg float %76
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %9, float noundef %77) #24
  br label %78

78:                                               ; preds = %75, %69
  %79 = tail call fastcc float @normalize_v3(ptr noundef %3) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef %3) #24
  %80 = tail call fastcc float @normalize_v3(ptr noundef nonnull %1) #24
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  br label %101

81:                                               ; preds = %47, %67
  %82 = phi ptr [ %50, %47 ], [ %52, %67 ]
  %83 = load ptr, ptr %0, align 8, !tbaa !559
  %84 = getelementptr inbounds %struct.Object, ptr %83, i64 0, i32 47, i64 3
  tail call fastcc void @sub_v3_v3v3(ptr noundef %3, ptr noundef nonnull %84, ptr noundef nonnull %12) #24
  %85 = load i32, ptr %82, align 8, !tbaa !558
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load i16, ptr %44, align 8, !tbaa !556
  %89 = sext i16 %88 to i64
  %90 = getelementptr inbounds float, ptr %3, i64 %89
  store float 0.000000e+00, ptr %90, align 4, !tbaa !34
  br label %91

91:                                               ; preds = %87, %81
  %92 = tail call fastcc float @normalize_v3(ptr noundef %3) #24
  %93 = load i16, ptr %44, align 8, !tbaa !556
  %94 = icmp slt i16 %93, 3
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %3) #24
  br label %99

96:                                               ; preds = %91
  %97 = load ptr, ptr %0, align 8, !tbaa !559
  %98 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 47, i64 1
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %1, ptr noundef nonnull %98, ptr noundef %3) #24
  br label %99

99:                                               ; preds = %96, %95
  %100 = tail call fastcc float @normalize_v3(ptr noundef nonnull %1) #24
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %1) #24
  br label %101

101:                                              ; preds = %78, %99, %57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %1) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %2) #24
  %102 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 5
  %103 = load float, ptr %102, align 8, !tbaa !560
  %104 = fmul float %103, 0x400921FB60000000
  %105 = tail call float @cosf(float noundef %104) #23
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %1, float noundef %105) #24
  %106 = load float, ptr %102, align 8, !tbaa !560
  %107 = fmul float %106, 0x400921FB60000000
  %108 = tail call float @sinf(float noundef %107) #23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %108) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %8) #24
  %109 = load float, ptr %102, align 8, !tbaa !560
  %110 = fmul float %109, 0x400921FB60000000
  %111 = tail call float @cosf(float noundef %110) #23
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %2, float noundef %111) #24
  %112 = load float, ptr %102, align 8, !tbaa !560
  %113 = fmul float %112, 0x400921FB60000000
  %114 = tail call float @sinf(float noundef %113) #23
  %115 = fneg float %114
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %115) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %7) #24
  %116 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 4
  %117 = load float, ptr %116, align 8, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %1, float noundef %117) #24
  %118 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 4, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %2, float noundef %119) #24
  %120 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 3
  %121 = load float, ptr %120, align 8, !tbaa !34
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef %4, ptr noundef nonnull %12, ptr noundef nonnull %1, float noundef %121) #24
  %122 = getelementptr inbounds %struct.ParticleBillboardData, ptr %0, i64 0, i32 3, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !34
  tail call fastcc void @madd_v3_v3fl(ptr noundef %4, ptr noundef nonnull %2, float noundef %123) #24
  br label %124

124:                                              ; preds = %101, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !561 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !562 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #24
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #23
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @psys_apply_hair_lattice(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ParticleSimulationData, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #25
  %7 = getelementptr inbounds i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 16, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !65
  %10 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %2) #24
  %11 = getelementptr inbounds %struct.ParticleSimulationData, ptr %4, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !286
  %12 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %4) #24
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 15
  store ptr %12, ptr %13, align 8, !tbaa !355
  %14 = icmp eq ptr %12, null
  br i1 %14, label %58, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %10, i64 0, i32 2
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  br label %24

24:                                               ; preds = %21, %46
  %25 = phi i32 [ 0, %21 ], [ %47, %46 ]
  %26 = phi ptr [ %17, %21 ], [ %48, %46 ]
  %27 = load ptr, ptr %22, align 8, !tbaa !190
  %28 = load ptr, ptr %23, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %1, ptr noundef %27, i16 noundef signext %30, ptr noundef %26, ptr noundef nonnull %5) #24
  %31 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #23
  %32 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !144
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i32 [ %42, %38 ], [ 0, %35 ]
  %40 = phi ptr [ %43, %38 ], [ %37, %35 ]
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef %40) #23
  %41 = load ptr, ptr %13, align 8, !tbaa !355
  call void @calc_latt_deform(ptr noundef %41, ptr noundef %40, float noundef 1.000000e+00) #23
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef %40) #23
  %42 = add nuw nsw i32 %39, 1
  %43 = getelementptr inbounds %struct.HairKey, ptr %40, i64 1
  %44 = load i32, ptr %32, align 8, !tbaa !144
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %38, label %46, !llvm.loop !563

46:                                               ; preds = %38, %24
  %47 = add nuw nsw i32 %25, 1
  %48 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 1
  %49 = load i32, ptr %18, align 8, !tbaa !42
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %24, label %51, !llvm.loop !564

51:                                               ; preds = %46
  %52 = load ptr, ptr %13, align 8, !tbaa !355
  br label %53

53:                                               ; preds = %51, %15
  %54 = phi ptr [ %52, %51 ], [ %12, %15 ]
  call void @end_latt_deform(ptr noundef %54) #23
  store ptr null, ptr %13, align 8, !tbaa !355
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %56 = load i32, ptr %55, align 4, !tbaa !59
  %57 = or i32 %56, 2048
  store i32 %57, ptr %55, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #25
  br label %58

58:                                               ; preds = %53, %3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @psys_render_viewport_falloff(double noundef %0, float noundef %1, float noundef %2) unnamed_addr #16 !PGOFuncName !565 {
  %4 = fdiv float %1, %2
  %5 = fpext float %4 to double
  %6 = tail call double @pow(double noundef %0, double noundef %5) #23
  %7 = fptrunc double %6 to float
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !566 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_origspace_to_w(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !567 {
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  %7 = load <2 x float>, ptr %0, align 4, !tbaa !34
  store <2 x float> %7, ptr %5, align 16, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 1
  %10 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  %11 = load <2 x float>, ptr %9, align 4, !tbaa !34
  store <2 x float> %11, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2
  %14 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  %15 = load <2 x float>, ptr %13, align 4, !tbaa !34
  store <2 x float> %15, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %16, align 16, !tbaa !34
  call fastcc void @psys_w_to_origspace(ptr noundef %2, ptr noundef nonnull %6) #24
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %17, align 4, !tbaa !34
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3
  %21 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  %22 = load <2 x float>, ptr %20, align 4, !tbaa !34
  store <2 x float> %22, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %23, align 4, !tbaa !34
  call void @interp_weights_poly_v3(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %6) #23
  br label %26

24:                                               ; preds = %4
  call void @interp_weights_poly_v3(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 3, ptr noundef nonnull %6) #23
  %25 = getelementptr inbounds float, ptr %3, i64 3
  store float 0.000000e+00, ptr %25, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %24, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #25
  ret void
}

; Function Attrs: optsize
declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @interpolate_particle_value(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #7 !PGOFuncName !568 {
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %4, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %9, %1
  %11 = tail call float @llvm.fmuladd.f32(float %7, float %0, float %10)
  %12 = getelementptr inbounds float, ptr %4, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %11)
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds float, ptr %4, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %3, float %14)
  br label %20

20:                                               ; preds = %16, %6
  %21 = phi float [ %19, %16 ], [ %14, %6 ]
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = fcmp ogt float %21, 1.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %20, %23, %25
  %27 = phi float [ 1.000000e+00, %25 ], [ %21, %23 ], [ 0.000000e+00, %20 ]
  ret float %27
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !569 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !570 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !571 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @psys_thread_create_path(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !572 {
  %5 = alloca [4 x ptr], align 16
  %6 = alloca %struct.ParticleTexture, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x [3 x float]], align 16
  %13 = alloca [4 x [3 x float]], align 16
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x float], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = load ptr, ptr %0, align 8, !tbaa !332
  %23 = getelementptr inbounds %struct.ParticleSimulationData, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !207
  %25 = getelementptr inbounds %struct.ParticleSimulationData, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !209
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !166
  %31 = load ptr, ptr %22, align 8, !tbaa !573
  %32 = tail call i32 @psys_in_edit_mode(ptr noundef %31, ptr noundef %26) #24, !range !66
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.PTCacheEdit, ptr %36, i64 0, i32 9
  br label %40

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 7
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi ptr [ %37, %34 ], [ %39, %38 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #25
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #25
  %43 = icmp eq ptr %42, null
  br i1 %43, label %506, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 18
  %46 = load i32, ptr %45, align 4, !tbaa !353
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  br i1 %47, label %220, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #25
  %55 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 113
  %56 = load float, ptr %55, align 4, !tbaa !574
  %57 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 114
  %58 = load float, ptr %57, align 8, !tbaa !575
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 91
  %60 = load float, ptr %59, align 4, !tbaa !325
  %61 = fcmp ogt float %60, 0.000000e+00
  br i1 %61, label %65, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 112
  %64 = load float, ptr %63, align 8, !tbaa !576
  br label %65

65:                                               ; preds = %50, %62
  %66 = phi float [ %64, %62 ], [ 0.000000e+00, %50 ]
  %67 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 17
  %68 = load i32, ptr %67, align 8, !tbaa !350
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 5
  br label %75

72:                                               ; preds = %80
  %73 = add nuw nsw i64 %76, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %212, label %75, !llvm.loop !577

75:                                               ; preds = %70, %72
  %76 = phi i64 [ 0, %70 ], [ %73, %72 ]
  %77 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 2, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !38
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %212

80:                                               ; preds = %75
  %81 = load ptr, ptr %71, align 8, !tbaa !99
  %82 = getelementptr inbounds %struct.PTCacheEdit, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !455
  %84 = zext nneg i32 %78 to i64
  %85 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %83, i64 %84, i32 2
  %86 = load i16, ptr %85, align 4, !tbaa !456
  %87 = and i16 %86, 2
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %72, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 19
  %91 = load i32, ptr %90, align 8, !tbaa !336
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %93, 60
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %94, i1 false)
  br label %95

95:                                               ; preds = %89, %65
  br label %96

96:                                               ; preds = %95, %106
  %97 = phi i64 [ %112, %106 ], [ 0, %95 ]
  %98 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 2, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !38
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = zext nneg i32 %99 to i64
  %103 = getelementptr inbounds ptr, ptr %42, i64 %102
  %104 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 3, i64 %97
  %105 = load float, ptr %104, align 4, !tbaa !34
  br label %106

106:                                              ; preds = %96, %101
  %107 = phi ptr [ %103, %101 ], [ %42, %96 ]
  %108 = phi float [ %105, %101 ], [ 0.000000e+00, %96 ]
  %109 = load ptr, ptr %107, align 8, !tbaa !58
  %110 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %97
  store ptr %109, ptr %110, align 8
  %111 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %97
  store float %108, ptr %111, align 4
  %112 = add nuw nsw i64 %97, 1
  %113 = icmp eq i64 %112, 4
  br i1 %113, label %114, label %96, !llvm.loop !578

114:                                              ; preds = %106
  %115 = fcmp ogt float %66, 0.000000e+00
  br i1 %115, label %116, label %197

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 5
  %118 = load ptr, ptr %5, align 16
  %119 = getelementptr inbounds %struct.ParticleCacheKey, ptr %118, i64 0, i32 5
  %120 = getelementptr %struct.ParticleCacheKey, ptr %118, i64 -1
  %121 = fcmp ogt float %58, %56
  %122 = fsub float %58, %56
  br label %129

123:                                              ; preds = %191
  %124 = insertelement <4 x float> poison, float %194, i64 0
  %125 = shufflevector <4 x float> %124, <4 x float> poison, <4 x i32> zeroinitializer
  %126 = load <4 x float>, ptr %17, align 16, !tbaa !34
  %127 = fdiv <4 x float> %126, %125
  store <4 x float> %127, ptr %17, align 16, !tbaa !34
  %128 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 3
  call void @interp_v4_v4v4(ptr noundef nonnull %17, ptr noundef nonnull %128, ptr noundef nonnull %17, float noundef %66) #23
  br label %197

129:                                              ; preds = %116, %191
  %130 = phi i64 [ 0, %116 ], [ %195, %191 ]
  %131 = phi float [ 0.000000e+00, %116 ], [ %194, %191 ]
  %132 = icmp eq i64 %130, 0
  br i1 %132, label %191, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %130
  %135 = load float, ptr %134, align 4, !tbaa !34
  %136 = fcmp ogt float %135, 0.000000e+00
  br i1 %136, label %137, label %191

137:                                              ; preds = %133
  %138 = load i32, ptr %117, align 8, !tbaa !53
  %139 = and i32 %138, 268435456
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %130
  %143 = load ptr, ptr %142, align 8, !tbaa !58
  %144 = tail call fastcc float @len_v3v3(ptr noundef %118, ptr noundef %143) #24
  %145 = load i32, ptr %119, align 4, !tbaa !381
  %146 = sext i32 %145 to i64
  %147 = getelementptr %struct.ParticleCacheKey, ptr %120, i64 %146
  %148 = getelementptr inbounds %struct.ParticleCacheKey, ptr %143, i64 0, i32 5
  %149 = load i32, ptr %148, align 4, !tbaa !381
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ParticleCacheKey, ptr %143, i64 %150
  %152 = getelementptr inbounds %struct.ParticleCacheKey, ptr %151, i64 -1
  %153 = tail call fastcc float @len_v3v3(ptr noundef nonnull %147, ptr noundef nonnull %152) #24
  %154 = fcmp ogt float %144, 0.000000e+00
  %155 = fdiv float %153, %144
  %156 = fadd float %155, -1.000000e+00
  %157 = select i1 %154, float %156, float 1.000000e+04
  br label %174

158:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #25
  %159 = load i32, ptr %119, align 4, !tbaa !381
  %160 = sext i32 %159 to i64
  %161 = getelementptr %struct.ParticleCacheKey, ptr %120, i64 %160
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %161, ptr noundef %118) #24
  %162 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %130
  %163 = load ptr, ptr %162, align 8, !tbaa !58
  %164 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 0, i32 5
  %165 = load i32, ptr %164, align 4, !tbaa !381
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ParticleCacheKey, ptr %163, i64 %166
  %168 = getelementptr inbounds %struct.ParticleCacheKey, ptr %167, i64 -1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %168, ptr noundef %163) #24
  %169 = call fastcc float @normalize_v3(ptr noundef nonnull %19) #24
  %170 = call fastcc float @normalize_v3(ptr noundef nonnull %20) #24
  %171 = call fastcc float @dot_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %20) #24
  %172 = tail call fastcc float @saacos(float noundef %171) #24
  %173 = fmul float %172, 0x404CA5DC20000000
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #25
  br label %174

174:                                              ; preds = %158, %141
  %175 = phi float [ %157, %141 ], [ %173, %158 ]
  %176 = fsub float %175, %56
  br i1 %121, label %179, label %177

177:                                              ; preds = %174
  %178 = fcmp ugt float %176, 0.000000e+00
  br i1 %178, label %186, label %191

179:                                              ; preds = %174
  %180 = fdiv float %176, %122
  %181 = fcmp olt float %180, 0.000000e+00
  br i1 %181, label %191, label %182

182:                                              ; preds = %179
  %183 = fcmp ogt float %180, 1.000000e+00
  br i1 %183, label %186, label %184

184:                                              ; preds = %182
  %185 = fcmp ogt float %180, 0.000000e+00
  br i1 %185, label %186, label %191

186:                                              ; preds = %177, %182, %184
  %187 = phi float [ %180, %184 ], [ 1.000000e+00, %182 ], [ 1.000000e+00, %177 ]
  %188 = fsub float 1.000000e+00, %187
  %189 = load float, ptr %134, align 4, !tbaa !34
  %190 = fmul float %189, %188
  store float %190, ptr %134, align 4, !tbaa !34
  br label %191

191:                                              ; preds = %177, %179, %184, %186, %133, %129
  %192 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %130
  %193 = load float, ptr %192, align 4, !tbaa !34
  %194 = fadd float %131, %193
  %195 = add nuw nsw i64 %130, 1
  %196 = icmp eq i64 %195, 4
  br i1 %196, label %123, label %129, !llvm.loop !579

197:                                              ; preds = %123, %114
  %198 = load i32, ptr %1, align 4, !tbaa !253
  %199 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 5
  %200 = load float, ptr %199, align 4, !tbaa !328
  %201 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 4
  %202 = getelementptr inbounds %struct.ParticleSimulationData, ptr %22, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !580
  call void @psys_particle_on_emitter(ptr noundef %203, i32 noundef 1, i32 noundef %198, i32 noundef -2, ptr noundef nonnull %201, float noundef %200, ptr noundef nonnull %18, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, ptr noundef null) #24
  %204 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %204, ptr noundef nonnull %18) #23
  br label %205

205:                                              ; preds = %197, %205
  %206 = phi i64 [ 0, %197 ], [ %210, %205 ]
  %207 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 %206
  %208 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %206
  %209 = load ptr, ptr %208, align 8, !tbaa !58
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %207, ptr noundef nonnull %18, ptr noundef %209) #24
  %210 = add nuw nsw i64 %206, 1
  %211 = icmp eq i64 %210, 4
  br i1 %211, label %213, label %205, !llvm.loop !581

212:                                              ; preds = %72, %75
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #25
  br label %506

213:                                              ; preds = %205
  %214 = load ptr, ptr %202, align 8, !tbaa !580
  %215 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !190
  %217 = load ptr, ptr %27, align 8, !tbaa !48
  %218 = getelementptr inbounds %struct.ParticleSettings, ptr %217, i64 0, i32 8
  %219 = load i16, ptr %218, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %24, ptr noundef %216, i16 noundef signext %219, ptr noundef %54, ptr noundef nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #25
  br label %274

220:                                              ; preds = %44
  %221 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !330
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 %223
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #25
  %225 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 17
  %226 = load i32, ptr %225, align 8, !tbaa !350
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %245, label %228

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.ParticleSystem, ptr %26, i64 0, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !99
  %231 = getelementptr inbounds %struct.PTCacheEdit, ptr %230, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !455
  %233 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %232, i64 %223, i32 2
  %234 = load i16, ptr %233, align 4, !tbaa !456
  %235 = and i16 %234, 2
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %273, label %237

237:                                              ; preds = %228
  %238 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 19
  %239 = load i32, ptr %238, align 8, !tbaa !336
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = mul nsw i64 %241, 60
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %242, i1 false)
  %243 = load i32, ptr %221, align 4, !tbaa !330
  %244 = sext i32 %243 to i64
  br label %245

245:                                              ; preds = %220, %237
  %246 = phi i64 [ %223, %220 ], [ %244, %237 ]
  %247 = getelementptr inbounds ptr, ptr %42, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !58
  store ptr %248, ptr %5, align 16, !tbaa !58
  %249 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 8
  %250 = load i16, ptr %249, align 2, !tbaa !284
  %251 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 %223, i32 9
  %252 = load i32, ptr %251, align 8, !tbaa !280
  %253 = getelementptr inbounds %struct.ParticleSimulationData, ptr %22, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !580
  %255 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !190
  %257 = getelementptr inbounds %struct.DerivedMesh, ptr %256, i64 0, i32 25
  %258 = load ptr, ptr %257, align 8, !tbaa !214
  %259 = tail call i32 %258(ptr noundef %256) #23
  %260 = icmp sgt i32 %252, %259
  %261 = select i1 %260, i32 0, i32 %252
  %262 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 %223, i32 11
  %263 = load ptr, ptr %253, align 8, !tbaa !580
  %264 = sext i16 %250 to i32
  %265 = getelementptr inbounds %struct.ParticleData, ptr %49, i64 %223, i32 12
  %266 = load float, ptr %265, align 8, !tbaa !287
  call void @psys_particle_on_emitter(ptr noundef %263, i32 noundef %264, i32 noundef %261, i32 noundef -2, ptr noundef nonnull %262, float noundef %266, ptr noundef nonnull %21, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, ptr noundef null) #24
  %267 = load ptr, ptr %253, align 8, !tbaa !580
  %268 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !190
  %270 = load ptr, ptr %27, align 8, !tbaa !48
  %271 = getelementptr inbounds %struct.ParticleSettings, ptr %270, i64 0, i32 8
  %272 = load i16, ptr %271, align 2, !tbaa !284
  call void @psys_mat_hair_to_global(ptr noundef %24, ptr noundef %269, i16 noundef signext %272, ptr noundef %224, ptr noundef nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #25
  br label %274

273:                                              ; preds = %228
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #25
  br label %506

274:                                              ; preds = %245, %213
  %275 = phi i16 [ 1, %213 ], [ %250, %245 ]
  %276 = phi i32 [ %198, %213 ], [ %261, %245 ]
  %277 = phi ptr [ %201, %213 ], [ %262, %245 ]
  %278 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 19
  %279 = load i32, ptr %278, align 8, !tbaa !336
  %280 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 0, i32 5
  store i32 %279, ptr %280, align 4, !tbaa !381
  call fastcc void @get_child_modifier_parameters(ptr noundef %28, ptr noundef nonnull %22, ptr noundef %1, i16 noundef signext %275, i32 noundef %276, ptr noundef nonnull %277, ptr noundef nonnull %8, ptr noundef nonnull %6) #24
  %281 = getelementptr inbounds %struct.ParticleTexture, ptr %6, i64 0, i32 3
  %282 = load float, ptr %281, align 4, !tbaa !410
  %283 = add nsw i32 %3, 24
  %284 = call fastcc float @psys_frand(ptr noundef nonnull %26, i32 noundef %283) #24
  %285 = fcmp olt float %282, %284
  br i1 %285, label %299, label %286

286:                                              ; preds = %274
  %287 = load i32, ptr %278, align 8, !tbaa !336
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %373, label %289

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 5
  %291 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 1
  %292 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 2
  %293 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 3
  %294 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  %295 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  %296 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  %297 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 95
  %298 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 94
  br label %300

299:                                              ; preds = %274
  store i32 -1, ptr %280, align 4, !tbaa !381
  br label %506

300:                                              ; preds = %289, %362
  %301 = phi i64 [ 0, %289 ], [ %369, %362 ]
  %302 = phi ptr [ %2, %289 ], [ %370, %362 ]
  %303 = phi ptr [ null, %289 ], [ %364, %362 ]
  %304 = load i32, ptr %45, align 4, !tbaa !353
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %347, label %306

306:                                              ; preds = %300
  call fastcc void @zero_v3(ptr noundef nonnull %302) #24
  %307 = getelementptr inbounds %struct.ParticleCacheKey, ptr %302, i64 0, i32 1
  call fastcc void @zero_v3(ptr noundef nonnull %307) #24
  %308 = getelementptr inbounds %struct.ParticleCacheKey, ptr %302, i64 0, i32 2
  call void @unit_qt(ptr noundef nonnull %308) #23
  %309 = icmp eq i64 %301, 0
  %310 = trunc i64 %301 to i32
  %311 = sitofp i32 %310 to float
  %312 = fneg float %311
  br label %313

313:                                              ; preds = %306, %330
  %314 = phi i64 [ 0, %306 ], [ %334, %330 ]
  %315 = getelementptr inbounds [4 x [3 x float]], ptr %13, i64 0, i64 %314
  %316 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 %314
  call fastcc void @copy_v3_v3(ptr noundef nonnull %315, ptr noundef nonnull %316) #24
  %317 = load i32, ptr %290, align 8, !tbaa !53
  %318 = and i32 %317, 268435456
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %330, label %320

320:                                              ; preds = %313
  %321 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %314
  %322 = load ptr, ptr %321, align 8, !tbaa !58
  br i1 %309, label %325, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.ParticleCacheKey, ptr %322, i64 %301, i32 2
  call void @mul_qt_v3(ptr noundef nonnull %324, ptr noundef nonnull %315) #23
  br label %325

325:                                              ; preds = %320, %323
  %326 = getelementptr inbounds %struct.ParticleCacheKey, ptr %322, i64 %301, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %315, ptr noundef nonnull %326) #23
  %327 = load i32, ptr %278, align 8, !tbaa !336
  %328 = sitofp i32 %327 to float
  %329 = fdiv float %312, %328
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %315, ptr noundef nonnull %11, float noundef %329) #24
  br label %330

330:                                              ; preds = %325, %313
  %331 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %314
  %332 = load ptr, ptr %331, align 8, !tbaa !58
  %333 = getelementptr inbounds %struct.ParticleCacheKey, ptr %332, i64 %301
  call fastcc void @add_v3_v3(ptr noundef nonnull %315, ptr noundef %333) #24
  %334 = add nuw nsw i64 %314, 1
  %335 = icmp eq i64 %334, 4
  br i1 %335, label %336, label %313, !llvm.loop !582

336:                                              ; preds = %330
  call void @interp_v3_v3v3v3v3(ptr noundef %302, ptr noundef nonnull %13, ptr noundef nonnull %291, ptr noundef nonnull %292, ptr noundef nonnull %293, ptr noundef nonnull %17) #23
  %337 = load ptr, ptr %5, align 16, !tbaa !58
  %338 = getelementptr inbounds %struct.ParticleCacheKey, ptr %337, i64 %301, i32 1
  %339 = load ptr, ptr %294, align 8, !tbaa !58
  %340 = getelementptr inbounds %struct.ParticleCacheKey, ptr %339, i64 %301, i32 1
  %341 = load ptr, ptr %295, align 16, !tbaa !58
  %342 = getelementptr inbounds %struct.ParticleCacheKey, ptr %341, i64 %301, i32 1
  %343 = load ptr, ptr %296, align 8, !tbaa !58
  %344 = getelementptr inbounds %struct.ParticleCacheKey, ptr %343, i64 %301, i32 1
  call void @interp_v3_v3v3v3v3(ptr noundef nonnull %307, ptr noundef nonnull %338, ptr noundef nonnull %340, ptr noundef nonnull %342, ptr noundef nonnull %344, ptr noundef nonnull %17) #23
  %345 = load ptr, ptr %5, align 16, !tbaa !58
  %346 = getelementptr inbounds %struct.ParticleCacheKey, ptr %345, i64 %301, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %308, ptr noundef nonnull %346) #23
  br label %362

347:                                              ; preds = %300
  %348 = icmp eq i64 %301, 0
  %349 = load ptr, ptr %5, align 16, !tbaa !58
  br i1 %348, label %353, label %350

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.ParticleCacheKey, ptr %349, i64 %301, i32 2
  %352 = getelementptr inbounds %struct.ParticleCacheKey, ptr %349, i64 0, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %351, ptr noundef nonnull %352) #23
  br label %355

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.ParticleCacheKey, ptr %349, i64 0, i32 2
  br label %355

355:                                              ; preds = %353, %350
  %356 = phi ptr [ %7, %350 ], [ %354, %353 ]
  %357 = getelementptr inbounds %struct.ParticleCacheKey, ptr %349, i64 %301
  %358 = load float, ptr %297, align 4, !tbaa !524
  %359 = load float, ptr %298, align 8, !tbaa !525
  call fastcc void @offset_child(ptr noundef %1, ptr noundef %357, ptr noundef nonnull %356, ptr noundef nonnull %302, float noundef %358, float noundef %359) #24
  %360 = trunc i64 %301 to i32
  %361 = sitofp i32 %360 to float
  br label %362

362:                                              ; preds = %355, %336
  %363 = phi float [ %361, %355 ], [ %311, %336 ]
  %364 = phi ptr [ %356, %355 ], [ %303, %336 ]
  %365 = load i32, ptr %278, align 8, !tbaa !336
  %366 = sitofp i32 %365 to float
  %367 = fdiv float %363, %366
  %368 = getelementptr inbounds %struct.ParticleCacheKey, ptr %302, i64 0, i32 4
  store float %367, ptr %368, align 4, !tbaa !391
  %369 = add nuw nsw i64 %301, 1
  %370 = getelementptr inbounds %struct.ParticleCacheKey, ptr %302, i64 1
  %371 = sext i32 %365 to i64
  %372 = icmp slt i64 %301, %371
  br i1 %372, label %300, label %373, !llvm.loop !583

373:                                              ; preds = %362, %286
  %374 = phi i32 [ %287, %286 ], [ %365, %362 ]
  %375 = phi ptr [ null, %286 ], [ %364, %362 ]
  %376 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 5
  %377 = load i32, ptr %376, align 8, !tbaa !53
  %378 = and i32 %377, 134217728
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %401, label %380

380:                                              ; preds = %373
  %381 = icmp slt i32 %374, 0
  br i1 %381, label %501, label %382

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 2
  %384 = getelementptr inbounds %struct.ParticleTexture, ptr %6, i64 0, i32 11
  br label %385

385:                                              ; preds = %382, %396
  %386 = phi i32 [ %374, %382 ], [ %399, %396 ]
  %387 = phi ptr [ %2, %382 ], [ %398, %396 ]
  %388 = phi i32 [ 0, %382 ], [ %397, %396 ]
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %385
  %391 = load i32, ptr %383, align 4, !tbaa !38
  %392 = load float, ptr %384, align 4, !tbaa !533
  call fastcc void @do_path_effectors(ptr noundef nonnull %22, i32 noundef %391, ptr noundef %387, i32 noundef %388, i32 noundef %386, float noundef %392, ptr noundef nonnull %15, ptr noundef nonnull %16) #24
  br label %396

393:                                              ; preds = %385
  %394 = getelementptr inbounds %struct.ParticleCacheKey, ptr %387, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %394, ptr noundef %387) #24
  %395 = call fastcc float @len_v3(ptr noundef nonnull %16) #24
  store float %395, ptr %15, align 4, !tbaa !34
  br label %396

396:                                              ; preds = %390, %393
  %397 = add nuw nsw i32 %388, 1
  %398 = getelementptr inbounds %struct.ParticleCacheKey, ptr %387, i64 1
  %399 = load i32, ptr %278, align 8, !tbaa !336
  %400 = icmp slt i32 %388, %399
  br i1 %400, label %385, label %401, !llvm.loop !584

401:                                              ; preds = %396, %373
  %402 = phi i32 [ %374, %373 ], [ %399, %396 ]
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %501, label %404

404:                                              ; preds = %401
  %405 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 21
  %406 = getelementptr inbounds %struct.ChildParticle, ptr %1, i64 0, i32 1
  %407 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 2
  %408 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 23
  %409 = getelementptr inbounds %struct.ParticleTexture, ptr %6, i64 0, i32 8
  br label %410

410:                                              ; preds = %404, %496
  %411 = phi i32 [ %402, %404 ], [ %499, %496 ]
  %412 = phi ptr [ %2, %404 ], [ %498, %496 ]
  %413 = phi ptr [ null, %404 ], [ %454, %496 ]
  %414 = phi ptr [ %375, %404 ], [ %453, %496 ]
  %415 = phi float [ 1.000000e+00, %404 ], [ %484, %496 ]
  %416 = phi i32 [ 0, %404 ], [ %497, %496 ]
  %417 = sitofp i32 %416 to float
  %418 = sitofp i32 %411 to float
  %419 = fdiv float %417, %418
  %420 = load i32, ptr %405, align 8, !tbaa !335
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %428, label %422

422:                                              ; preds = %410
  %423 = icmp sgt i32 %420, %3
  br i1 %423, label %452, label %424

424:                                              ; preds = %422
  %425 = load i32, ptr %406, align 4, !tbaa !330
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds ptr, ptr %30, i64 %426
  br label %434

428:                                              ; preds = %410
  %429 = load i32, ptr %406, align 4, !tbaa !330
  %430 = icmp sgt i32 %429, -1
  br i1 %430, label %431, label %437

431:                                              ; preds = %428
  %432 = zext nneg i32 %429 to i64
  %433 = getelementptr inbounds ptr, ptr %42, i64 %432
  br label %434

434:                                              ; preds = %431, %424
  %435 = phi ptr [ %427, %424 ], [ %433, %431 ]
  %436 = load ptr, ptr %435, align 8, !tbaa !58
  br label %437

437:                                              ; preds = %434, %428
  %438 = phi ptr [ %413, %428 ], [ %436, %434 ]
  %439 = icmp eq ptr %438, null
  br i1 %439, label %452, label %440

440:                                              ; preds = %437
  %441 = icmp eq i32 %416, 0
  br i1 %441, label %446, label %442

442:                                              ; preds = %440
  %443 = sext i32 %416 to i64
  %444 = getelementptr inbounds %struct.ParticleCacheKey, ptr %438, i64 %443, i32 2
  %445 = getelementptr inbounds %struct.ParticleCacheKey, ptr %438, i64 0, i32 2
  call void @mul_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %444, ptr noundef nonnull %445) #23
  br label %448

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.ParticleCacheKey, ptr %438, i64 0, i32 2
  br label %448

448:                                              ; preds = %446, %442
  %449 = phi i64 [ 0, %446 ], [ %443, %442 ]
  %450 = phi ptr [ %447, %446 ], [ %7, %442 ]
  %451 = getelementptr inbounds %struct.ParticleCacheKey, ptr %438, i64 %449
  br label %452

452:                                              ; preds = %422, %448, %437
  %453 = phi ptr [ %450, %448 ], [ %414, %437 ], [ %414, %422 ]
  %454 = phi ptr [ %451, %448 ], [ null, %437 ], [ null, %422 ]
  call fastcc void @do_child_modifiers(ptr noundef nonnull %22, ptr noundef nonnull %6, ptr noundef %454, ptr noundef %453, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %412, float noundef %419) #24
  %455 = icmp sgt i32 %416, 1
  br i1 %455, label %456, label %466

456:                                              ; preds = %452
  %457 = getelementptr %struct.ParticleCacheKey, ptr %412, i64 -1, i32 1
  %458 = getelementptr inbounds %struct.ParticleCacheKey, ptr %412, i64 -2
  call fastcc void @sub_v3_v3v3(ptr noundef %457, ptr noundef %412, ptr noundef nonnull %458) #24
  call fastcc void @mul_v3_fl(ptr noundef %457, float noundef 5.000000e-01) #24
  %459 = load ptr, ptr %407, align 8, !tbaa !522
  %460 = icmp eq ptr %459, null
  br i1 %460, label %466, label %461

461:                                              ; preds = %456
  %462 = load i16, ptr %408, align 4, !tbaa !371
  %463 = icmp eq i16 %462, 1
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = load float, ptr %14, align 4, !tbaa !34
  call fastcc void @get_strand_normal(ptr noundef nonnull %459, ptr noundef nonnull %9, float noundef %465, ptr noundef %457) #24
  br label %466

466:                                              ; preds = %456, %461, %464, %452
  %467 = load i32, ptr %278, align 8, !tbaa !336
  %468 = icmp eq i32 %416, %467
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = getelementptr inbounds %struct.ParticleCacheKey, ptr %412, i64 0, i32 1
  %471 = getelementptr inbounds %struct.ParticleCacheKey, ptr %412, i64 -1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %470, ptr noundef %412, ptr noundef nonnull %471) #24
  br label %472

472:                                              ; preds = %469, %466
  %473 = icmp eq i32 %416, 0
  br i1 %473, label %480, label %474

474:                                              ; preds = %472
  %475 = getelementptr inbounds %struct.ParticleCacheKey, ptr %412, i64 -1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %412, ptr noundef nonnull %475) #24
  %476 = load i32, ptr %278, align 8, !tbaa !336
  %477 = sitofp i32 %476 to float
  %478 = fdiv float 1.000000e+00, %477
  %479 = call fastcc i32 @check_path_length(i32 noundef %416, ptr noundef %2, ptr noundef %412, float noundef %415, ptr noundef nonnull %14, float noundef %478, ptr noundef nonnull %11) #24, !range !585
  br label %482

480:                                              ; preds = %472
  %481 = load float, ptr %409, align 4, !tbaa !372
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  br label %482

482:                                              ; preds = %480, %474
  %483 = phi i32 [ %479, %474 ], [ 0, %480 ]
  %484 = phi float [ %415, %474 ], [ %481, %480 ]
  %485 = load ptr, ptr %407, align 8, !tbaa !522
  %486 = icmp eq ptr %485, null
  br i1 %486, label %496, label %487

487:                                              ; preds = %482
  %488 = load i16, ptr %408, align 4, !tbaa !371
  %489 = icmp eq i16 %488, 1
  br i1 %489, label %490, label %496

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.ParticleCacheKey, ptr %412, i64 0, i32 3
  %492 = getelementptr inbounds %struct.Material, ptr %485, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %491, ptr noundef nonnull %492) #24
  %493 = load ptr, ptr %407, align 8, !tbaa !522
  %494 = load float, ptr %14, align 4, !tbaa !34
  %495 = getelementptr inbounds %struct.ParticleCacheKey, ptr %412, i64 0, i32 1
  call fastcc void @get_strand_normal(ptr noundef %493, ptr noundef nonnull %9, float noundef %494, ptr noundef nonnull %495) #24
  br label %496

496:                                              ; preds = %482, %487, %490
  %497 = add nsw i32 %483, 1
  %498 = getelementptr inbounds %struct.ParticleCacheKey, ptr %412, i64 1
  %499 = load i32, ptr %278, align 8, !tbaa !336
  %500 = icmp slt i32 %483, %499
  br i1 %500, label %410, label %501, !llvm.loop !586

501:                                              ; preds = %496, %380, %401
  %502 = getelementptr inbounds %struct.ParticleThreadContext, ptr %22, i64 0, i32 21
  %503 = load i32, ptr %502, align 8, !tbaa !335
  %504 = icmp sgt i32 %503, %3
  br i1 %504, label %505, label %506

505:                                              ; preds = %501
  store i32 -1, ptr %280, align 4, !tbaa !381
  br label %506

506:                                              ; preds = %273, %212, %501, %505, %40, %299
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !587 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #24
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  ret float %4
}

; Function Attrs: optsize
declare void @interp_v4_v4v4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_strand_normal(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !588 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 51
  %9 = load i32, ptr %8, align 4, !tbaa !589
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 66
  %13 = load float, ptr %12, align 8, !tbaa !593
  %14 = fcmp ogt float %13, 0.000000e+00
  br i1 %14, label %26, label %37

15:                                               ; preds = %4
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %3) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %5) #24
  %16 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef %1) #24
  %17 = fcmp olt float %16, 0.000000e+00
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = fcmp ogt float %16, 1.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %15, %18, %20
  %22 = phi float [ 1.000000e+00, %20 ], [ %16, %18 ], [ 0.000000e+00, %15 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, float noundef %22) #23
  %23 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #24
  %24 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 66
  %25 = load float, ptr %24, align 8, !tbaa !593
  br label %27

26:                                               ; preds = %11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %3) #24
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi float [ %13, %26 ], [ %25, %21 ]
  %29 = fcmp ogt float %28, 0.000000e+00
  %30 = fcmp ogt float %28, %2
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = fsub float %28, %2
  %34 = fdiv float %33, %28
  call void @interp_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %1, float noundef %34) #23
  %35 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #24
  br label %36

36:                                               ; preds = %32, %27
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %7) #24
  br label %37

37:                                               ; preds = %11, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @check_path_length(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, float noundef %3, ptr nocapture noundef %4, float noundef %5, ptr nocapture noundef %6) unnamed_addr #8 !PGOFuncName !594 {
  %8 = load float, ptr %4, align 4, !tbaa !34
  %9 = fadd float %8, %5
  %10 = fcmp ogt float %9, %3
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = fsub float %3, %8
  %13 = fdiv float %12, %5
  tail call fastcc void @mul_v3_fl(ptr noundef %6, float noundef %13) #24
  %14 = getelementptr inbounds %struct.ParticleCacheKey, ptr %2, i64 -1
  tail call fastcc void @add_v3_v3v3(ptr noundef %2, ptr noundef nonnull %14, ptr noundef %6) #24
  %15 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1, i64 0, i32 5
  store i32 %0, ptr %15, align 4, !tbaa !381
  br label %17

16:                                               ; preds = %7
  store float %9, ptr %4, align 4, !tbaa !34
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i32 [ 100000, %11 ], [ %0, %16 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_pointcache_keys_for_time(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !595 {
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !369
  store ptr %10, ptr %1, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !596
  store ptr %13, ptr %1, align 8, !tbaa !58
  br label %63

14:                                               ; preds = %6
  %15 = load ptr, ptr %1, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !596
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %17, %27
  %21 = phi ptr [ %28, %27 ], [ %18, %17 ]
  %22 = phi ptr [ %21, %27 ], [ %15, %17 ]
  %23 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !256
  %25 = uitofp i32 %24 to float
  %26 = fcmp olt float %25, %3
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  store ptr %21, ptr %1, align 8, !tbaa !58
  %28 = load ptr, ptr %21, align 8, !tbaa !596
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !597

30:                                               ; preds = %20, %27, %17
  %31 = phi ptr [ %15, %17 ], [ %21, %27 ], [ %22, %20 ]
  store ptr %31, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !58
  %32 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %31, i32 noundef %2) #23
  %33 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.PTCacheMem, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !598
  %36 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef %35, i32 noundef %2) #23
  %37 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.PTCacheMem, ptr %37, i64 0, i32 6
  %39 = getelementptr inbounds %struct.PTCacheMem, ptr %37, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !256
  %41 = uitofp i32 %40 to float
  tail call void @BKE_ptcache_make_particle_key(ptr noundef %5, i32 noundef %32, ptr noundef nonnull %38, float noundef %41) #23
  %42 = icmp slt i32 %36, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  tail call void @copy_particle_key(ptr noundef %4, ptr noundef %5, i32 noundef 1) #24
  br label %63

44:                                               ; preds = %30
  %45 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.PTCacheMem, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !598
  %48 = getelementptr inbounds %struct.PTCacheMem, ptr %47, i64 0, i32 6
  %49 = getelementptr inbounds %struct.PTCacheMem, ptr %47, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !256
  %51 = uitofp i32 %50 to float
  tail call void @BKE_ptcache_make_particle_key(ptr noundef %4, i32 noundef %36, ptr noundef nonnull %48, float noundef %51) #23
  br label %63

52:                                               ; preds = %14
  %53 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20
  %54 = load ptr, ptr %53, align 8, !tbaa !369
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  store ptr %54, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !58
  %57 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %54, i32 noundef %2) #23
  %58 = load ptr, ptr @get_pointcache_keys_for_time.pm, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.PTCacheMem, ptr %58, i64 0, i32 6
  %60 = getelementptr inbounds %struct.PTCacheMem, ptr %58, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !256
  %62 = uitofp i32 %61 to float
  tail call void @BKE_ptcache_make_particle_key(ptr noundef %5, i32 noundef %57, ptr noundef nonnull %59, float noundef %62) #23
  tail call void @copy_particle_key(ptr noundef %4, ptr noundef %5, i32 noundef 1) #24
  br label %63

63:                                               ; preds = %44, %43, %56, %52, %8, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @get_pointcache_times_for_particle(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !599 {
  %5 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %8, i32 noundef %1) #23
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %6, !llvm.loop !600

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.PTCacheMem, ptr %8, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !256
  %16 = uitofp i32 %15 to float
  store float %16, ptr %2, align 4, !tbaa !34
  br label %17

17:                                               ; preds = %6, %13
  %18 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17, %30
  %22 = phi ptr [ %32, %30 ], [ %19, %17 ]
  %23 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef nonnull %22, i32 noundef %1) #23
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !256
  %28 = uitofp i32 %27 to float
  store float %28, ptr %3, align 4, !tbaa !34
  %29 = zext i1 %9 to i32
  br label %34

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %21, !llvm.loop !601

34:                                               ; preds = %30, %17, %25
  %35 = phi i32 [ %29, %25 ], [ 0, %17 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: optsize
declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_make_particle_key(ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @edit_to_particle(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !602 {
  %3 = load ptr, ptr %1, align 8, !tbaa !603
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %3) #24
  %4 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !435
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #24
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.PTCacheEditKey, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  store float %12, ptr %13, align 4, !tbaa !385
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mvert_to_particle(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !604 {
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %1) #24
  %4 = getelementptr inbounds %struct.HairKey, ptr %2, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !431
  %6 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  store float %5, ptr %6, align 4, !tbaa !385
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @hair_to_particle(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !605 {
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %1) #24
  %3 = getelementptr inbounds %struct.HairKey, ptr %1, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !431
  %5 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  store float %4, ptr %5, align 4, !tbaa !385
  ret void
}

; Function Attrs: optsize
declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @triatomat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !606 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i64 60, i1 false)
  %6 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 3
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %4, i64 2
  %8 = tail call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  %9 = icmp eq ptr %3, null
  br i1 %9, label %68, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds [2 x float], ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = fsub float %12, %13
  %15 = getelementptr inbounds [2 x float], ptr %3, i64 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds [2 x float], ptr %3, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %21, %13
  %23 = getelementptr inbounds [2 x float], ptr %3, i64 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %18
  %26 = fneg float %25
  %27 = fmul float %14, %26
  %28 = tail call float @llvm.fmuladd.f32(float %22, float %19, float %27)
  %29 = fcmp une float %28, 0.000000e+00
  br i1 %29, label %30, label %65

30:                                               ; preds = %10
  %31 = fdiv float 1.000000e+00, %28
  %32 = fmul float %31, %26
  %33 = fmul float %19, %31
  %34 = load float, ptr %1, align 4, !tbaa !34
  %35 = load float, ptr %0, align 4, !tbaa !34
  %36 = fsub float %34, %35
  %37 = load float, ptr %2, align 4, !tbaa !34
  %38 = fsub float %37, %35
  %39 = fmul float %33, %38
  %40 = tail call float @llvm.fmuladd.f32(float %32, float %36, float %39)
  %41 = getelementptr inbounds [4 x float], ptr %4, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fsub float %43, %45
  %47 = getelementptr inbounds float, ptr %2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fsub float %48, %45
  %50 = fmul float %33, %49
  %51 = tail call float @llvm.fmuladd.f32(float %32, float %46, float %50)
  %52 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = getelementptr inbounds float, ptr %1, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds float, ptr %0, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = fsub float %54, %56
  %58 = getelementptr inbounds float, ptr %2, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fsub float %59, %56
  %61 = fmul float %33, %60
  %62 = tail call float @llvm.fmuladd.f32(float %32, float %57, float %61)
  %63 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 2
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = tail call fastcc float @normalize_v3(ptr noundef nonnull %41) #24
  br label %71

65:                                               ; preds = %10
  %66 = getelementptr inbounds [4 x float], ptr %4, i64 1
  %67 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 2
  store float 0.000000e+00, ptr %67, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %66, align 4, !tbaa !34
  br label %71

68:                                               ; preds = %5
  %69 = getelementptr inbounds [4 x float], ptr %4, i64 1
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %0) #24
  %70 = tail call fastcc float @normalize_v3(ptr noundef nonnull %69) #24
  br label %71

71:                                               ; preds = %30, %65, %68
  %72 = getelementptr inbounds [4 x float], ptr %4, i64 1
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %72, ptr noundef nonnull %7) #24
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_cpa_texture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef %8, float noundef %9) unnamed_addr #0 !PGOFuncName !607 {
  %11 = alloca float, align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  %15 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 14
  %16 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 13
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 12
  %18 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 10
  %19 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 9
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 4
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 3
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %8, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 88
  %23 = load float, ptr %22, align 8, !tbaa !374
  %24 = add nsw i32 %4, 26
  %25 = tail call fastcc float @psys_frand(ptr noundef %1, i32 noundef %24) #24
  %26 = fneg float %23
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %25, float 1.000000e+00)
  %28 = getelementptr inbounds %struct.ParticleTexture, ptr %8, i64 0, i32 8
  store float %27, ptr %28, align 4, !tbaa !372
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 111
  %30 = load float, ptr %29, align 4, !tbaa !500
  %31 = add nsw i32 %4, 27
  %32 = tail call fastcc float @psys_frand(ptr noundef %1, i32 noundef %31) #24
  %33 = fcmp olt float %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 110
  %36 = load float, ptr %35, align 8, !tbaa !608
  br label %37

37:                                               ; preds = %10, %34
  %38 = phi float [ %36, %34 ], [ 1.000000e+00, %10 ]
  %39 = fmul float %27, %38
  store float %39, ptr %28, align 4, !tbaa !372
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 8
  %41 = getelementptr inbounds %struct.ParticleSettings, ptr %2, i64 0, i32 9
  %42 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 6
  %43 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 8
  %44 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %45 = icmp eq ptr %6, null
  %46 = getelementptr inbounds float, ptr %12, i64 1
  %47 = getelementptr inbounds float, ptr %12, i64 2
  %48 = getelementptr inbounds float, ptr %12, i64 3
  br label %49

49:                                               ; preds = %37, %157
  %50 = phi ptr [ %14, %37 ], [ %159, %157 ]
  %51 = phi i32 [ 0, %37 ], [ %158, %157 ]
  %52 = load ptr, ptr %50, align 8, !tbaa !58
  %53 = icmp eq ptr %52, null
  br i1 %53, label %157, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !136
  %57 = icmp eq ptr %56, null
  br i1 %57, label %157, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !397
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %157, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 26
  %64 = load float, ptr %63, align 4, !tbaa !398
  %65 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !399
  %67 = load i16, ptr %52, align 8, !tbaa !400
  switch i16 %67, label %97 [
    i16 16, label %68
    i16 1, label %68
    i16 8, label %76
    i16 32, label %77
    i16 8192, label %89
  ]

68:                                               ; preds = %62, %62
  %69 = load i16, ptr %40, align 2, !tbaa !284
  %70 = add i16 %69, -1
  %71 = icmp ult i16 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i16, ptr %41, align 4, !tbaa !283
  %74 = icmp eq i16 %73, 2
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  switch i16 %67, label %97 [
    i16 8, label %76
    i16 1, label %88
    i16 16, label %83
  ]

76:                                               ; preds = %62, %68, %72, %75
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %3) #24
  br label %97

77:                                               ; preds = %62
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %3) #24
  %78 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !401
  %80 = icmp eq ptr %79, null
  br i1 %80, label %97, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %82, ptr noundef nonnull %13) #23
  br label %97

83:                                               ; preds = %75
  br i1 %45, label %88, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 6
  %86 = call fastcc i32 @get_particle_uv(ptr noundef %0, ptr noundef null, i32 noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %85, ptr noundef nonnull %13) #24, !range !66
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %75, %83, %84
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %7) #24
  br label %97

89:                                               ; preds = %62
  %90 = load float, ptr %42, align 4, !tbaa !405
  %91 = fsub float %9, %90
  %92 = fmul float %91, 2.000000e+00
  %93 = load float, ptr %43, align 4, !tbaa !406
  %94 = fsub float %93, %90
  %95 = fdiv float %92, %94
  %96 = fadd float %95, -1.000000e+00
  store float %96, ptr %13, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %44, align 4, !tbaa !34
  br label %97

97:                                               ; preds = %62, %84, %77, %81, %75, %89, %88, %76
  %98 = call i32 @externtex(ptr noundef nonnull %52, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef 0, ptr noundef null) #23
  %99 = load i16, ptr %59, align 2, !tbaa !397
  %100 = and i16 %99, 512
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load float, ptr %17, align 4, !tbaa !531
  %104 = load float, ptr %11, align 4, !tbaa !34
  %105 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 54
  %106 = load float, ptr %105, align 4, !tbaa !609
  %107 = sext i16 %66 to i32
  %108 = call float @texture_value_blend(float noundef %64, float noundef %103, float noundef %104, float noundef %106, i32 noundef %107) #23
  store float %108, ptr %15, align 4, !tbaa !394
  store float %108, ptr %16, align 4, !tbaa !532
  store float %108, ptr %17, align 4, !tbaa !531
  %109 = load i16, ptr %59, align 2, !tbaa !397
  br label %110

110:                                              ; preds = %102, %97
  %111 = phi i16 [ %109, %102 ], [ %99, %97 ]
  %112 = and i16 %111, 16
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load float, ptr %28, align 4, !tbaa !372
  %116 = load float, ptr %11, align 4, !tbaa !34
  %117 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 50
  %118 = load float, ptr %117, align 4, !tbaa !421
  %119 = sext i16 %66 to i32
  %120 = call float @texture_value_blend(float noundef %64, float noundef %115, float noundef %116, float noundef %118, i32 noundef %119) #23
  store float %120, ptr %28, align 4, !tbaa !372
  %121 = load i16, ptr %59, align 2, !tbaa !397
  br label %122

122:                                              ; preds = %114, %110
  %123 = phi i16 [ %121, %114 ], [ %111, %110 ]
  %124 = and i16 %123, 128
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load float, ptr %19, align 4, !tbaa !529
  %128 = load float, ptr %11, align 4, !tbaa !34
  %129 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 51
  %130 = load float, ptr %129, align 8, !tbaa !610
  %131 = sext i16 %66 to i32
  %132 = call float @texture_value_blend(float noundef %64, float noundef %127, float noundef %128, float noundef %130, i32 noundef %131) #23
  store float %132, ptr %19, align 4, !tbaa !529
  %133 = load i16, ptr %59, align 2, !tbaa !397
  br label %134

134:                                              ; preds = %126, %122
  %135 = phi i16 [ %133, %126 ], [ %123, %122 ]
  %136 = and i16 %135, 256
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load float, ptr %18, align 4, !tbaa !530
  %140 = load float, ptr %11, align 4, !tbaa !34
  %141 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 53
  %142 = load float, ptr %141, align 8, !tbaa !611
  %143 = sext i16 %66 to i32
  %144 = call float @texture_value_blend(float noundef %64, float noundef %139, float noundef %140, float noundef %142, i32 noundef %143) #23
  store float %144, ptr %18, align 4, !tbaa !530
  %145 = load i16, ptr %59, align 2, !tbaa !397
  br label %146

146:                                              ; preds = %138, %134
  %147 = phi i16 [ %145, %138 ], [ %135, %134 ]
  %148 = and i16 %147, 4
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %146
  %151 = load float, ptr %21, align 4, !tbaa !410
  %152 = load float, ptr %11, align 4, !tbaa !34
  %153 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 55
  %154 = load float, ptr %153, align 8, !tbaa !411
  %155 = sext i16 %66 to i32
  %156 = call float @texture_value_blend(float noundef %64, float noundef %151, float noundef %152, float noundef %154, i32 noundef %155) #23
  store float %156, ptr %21, align 4, !tbaa !410
  br label %157

157:                                              ; preds = %146, %150, %49, %54, %58
  %158 = add nuw nsw i32 %51, 1
  %159 = getelementptr inbounds ptr, ptr %50, i64 1
  %160 = icmp eq i32 %158, 18
  br i1 %160, label %161, label %49, !llvm.loop !612

161:                                              ; preds = %157
  %162 = load float, ptr %28, align 4, !tbaa !372
  %163 = fcmp olt float %162, 0.000000e+00
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = fadd float %162, 1.000000e+00
  store float %165, ptr %28, align 4, !tbaa !372
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi float [ %165, %164 ], [ %162, %161 ]
  %168 = fcmp olt float %167, 0.000000e+00
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = fcmp ogt float %167, 1.000000e+00
  br i1 %170, label %171, label %173

171:                                              ; preds = %169, %166
  %172 = phi float [ 0.000000e+00, %166 ], [ 1.000000e+00, %169 ]
  store float %172, ptr %28, align 4, !tbaa !372
  br label %173

173:                                              ; preds = %171, %169
  %174 = load float, ptr %19, align 4, !tbaa !529
  %175 = fcmp olt float %174, 0.000000e+00
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = fadd float %174, 1.000000e+00
  store float %177, ptr %19, align 4, !tbaa !529
  br label %178

178:                                              ; preds = %176, %173
  %179 = phi float [ %177, %176 ], [ %174, %173 ]
  %180 = fcmp olt float %179, 0.000000e+00
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = fcmp ogt float %179, 1.000000e+00
  br i1 %182, label %183, label %185

183:                                              ; preds = %181, %178
  %184 = phi float [ 0.000000e+00, %178 ], [ 1.000000e+00, %181 ]
  store float %184, ptr %19, align 4, !tbaa !529
  br label %185

185:                                              ; preds = %183, %181
  %186 = load float, ptr %18, align 4, !tbaa !530
  %187 = fcmp olt float %186, 0.000000e+00
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = fadd float %186, 1.000000e+00
  store float %189, ptr %18, align 4, !tbaa !530
  br label %190

190:                                              ; preds = %188, %185
  %191 = phi float [ %189, %188 ], [ %186, %185 ]
  %192 = fcmp olt float %191, 0.000000e+00
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = fcmp ogt float %191, 1.000000e+00
  br i1 %194, label %195, label %197

195:                                              ; preds = %193, %190
  %196 = phi float [ 0.000000e+00, %190 ], [ 1.000000e+00, %193 ]
  store float %196, ptr %18, align 4, !tbaa !530
  br label %197

197:                                              ; preds = %195, %193
  %198 = load float, ptr %17, align 4, !tbaa !531
  %199 = fcmp olt float %198, 0.000000e+00
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = fadd float %198, 1.000000e+00
  store float %201, ptr %17, align 4, !tbaa !531
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi float [ %201, %200 ], [ %198, %197 ]
  %204 = fcmp olt float %203, 0.000000e+00
  br i1 %204, label %207, label %205

205:                                              ; preds = %202
  %206 = fcmp ogt float %203, 1.000000e+00
  br i1 %206, label %207, label %209

207:                                              ; preds = %205, %202
  %208 = phi float [ 0.000000e+00, %202 ], [ 1.000000e+00, %205 ]
  store float %208, ptr %17, align 4, !tbaa !531
  br label %209

209:                                              ; preds = %207, %205
  %210 = load float, ptr %21, align 4, !tbaa !410
  %211 = fcmp olt float %210, 0.000000e+00
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = fadd float %210, 1.000000e+00
  store float %213, ptr %21, align 4, !tbaa !410
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi float [ %213, %212 ], [ %210, %209 ]
  %216 = fcmp olt float %215, 0.000000e+00
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = fcmp ogt float %215, 1.000000e+00
  br i1 %218, label %219, label %221

219:                                              ; preds = %217, %214
  %220 = phi float [ 0.000000e+00, %214 ], [ 1.000000e+00, %217 ]
  store float %220, ptr %21, align 4, !tbaa !410
  br label %221

221:                                              ; preds = %219, %217
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_rough(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !PGOFuncName !613 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  %9 = fcmp une float %5, 0.000000e+00
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = fadd float %11, -1.500000e+00
  %13 = getelementptr inbounds float, ptr %0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fadd float %15, %17
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fmul float %5, 1.500000e+00
  %21 = fcmp olt float %19, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %10, %7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %0) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %2) #24
  %23 = load float, ptr %8, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = tail call float @BLI_gTurbulence(float noundef %4, float noundef %23, float noundef %25, float noundef %27, i32 noundef 2, i32 noundef 0, i32 noundef 2) #23
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 2.000000e+00, float -1.000000e+00)
  %30 = tail call float @BLI_gTurbulence(float noundef %4, float noundef %25, float noundef %27, float noundef %23, i32 noundef 2, i32 noundef 0, i32 noundef 2) #23
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 2.000000e+00, float -1.000000e+00)
  %32 = tail call float @BLI_gTurbulence(float noundef %4, float noundef %27, float noundef %23, float noundef %25, i32 noundef 2, i32 noundef 0, i32 noundef 2) #23
  %33 = tail call float @llvm.fmuladd.f32(float %32, float 2.000000e+00, float -1.000000e+00)
  %34 = fmul float %29, %3
  tail call fastcc void @madd_v3_v3fl(ptr noundef %6, ptr noundef %1, float noundef %34) #24
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %36 = fmul float %31, %3
  tail call fastcc void @madd_v3_v3fl(ptr noundef %6, ptr noundef nonnull %35, float noundef %36) #24
  %37 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %38 = fmul float %33, %3
  tail call fastcc void @madd_v3_v3fl(ptr noundef %6, ptr noundef nonnull %37, float noundef %38) #24
  br label %39

39:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @psys_frand_vec(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !PGOFuncName !614 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !204
  %6 = srem i32 %5, 1024
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %7
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = mul i32 %11, %1
  %13 = add i32 %12, %9
  %14 = and i32 %13, 1023
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !34
  store float %17, ptr %2, align 4, !tbaa !34
  %18 = add i32 %1, 1
  %19 = mul i32 %11, %18
  %20 = add i32 %19, %9
  %21 = and i32 %20, 1023
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = add i32 %1, 2
  %27 = mul i32 %11, %26
  %28 = add i32 %27, %9
  %29 = and i32 %28, 1023
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %2, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @do_rough_end(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef %5) unnamed_addr #14 !PGOFuncName !615 {
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %8 = fpext float %2 to double
  %9 = fpext float %4 to double
  %10 = tail call double @pow(double noundef %8, double noundef %9) #23
  %11 = fptrunc double %10 to float
  %12 = fmul float %11, %3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef %0) #24
  %13 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %14 = load <2 x float>, ptr %7, align 8, !tbaa !34
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %15, ptr %7, align 8, !tbaa !34
  call fastcc void @mul_v2_fl(ptr noundef nonnull %7, float noundef %12) #24
  %16 = load float, ptr %7, align 8, !tbaa !34
  tail call fastcc void @madd_v3_v3fl(ptr noundef %5, ptr noundef %1, float noundef %16) #24
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %18 = load float, ptr %13, align 4, !tbaa !34
  tail call fastcc void @madd_v3_v3fl(ptr noundef %5, ptr noundef nonnull %17, float noundef %18) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  ret void
}

; Function Attrs: optsize
declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !616 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !617 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nofree willreturn }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !39, i64 320}
!43 = !{!"ParticleSystem", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !45, i64 72, !45, i64 88, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !45, i64 152, !36, i64 168, !36, i64 232, !35, i64 296, !35, i64 300, !35, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !46, i64 340, !46, i64 342, !46, i64 344, !46, i64 346, !36, i64 348, !36, i64 540, !46, i64 564, !46, i64 566, !44, i64 568, !44, i64 576, !45, i64 584, !44, i64 600, !44, i64 608, !39, i64 616, !39, i64 620, !44, i64 624, !44, i64 632, !44, i64 640, !35, i64 648, !35, i64 652}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"ListBase", !44, i64 0, !44, i64 8}
!46 = !{!"short", !36, i64 0}
!47 = !{!43, !44, i64 24}
!48 = !{!43, !44, i64 16}
!49 = !{!50, !46, i64 196}
!50 = !{!"ParticleData", !51, i64 0, !51, i64 56, !44, i64 112, !44, i64 120, !44, i64 128, !39, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !39, i64 152, !39, i64 156, !36, i64 160, !35, i64 176, !35, i64 180, !35, i64 184, !39, i64 188, !39, i64 192, !46, i64 196, !46, i64 198}
!51 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !35, i64 52}
!52 = !{!50, !46, i64 198}
!53 = !{!54, !39, i64 152}
!54 = !{!"ParticleSettings", !55, i64 0, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !39, i64 152, !39, i64 156, !46, i64 160, !46, i64 162, !46, i64 164, !46, i64 166, !46, i64 168, !46, i64 170, !46, i64 172, !46, i64 174, !39, i64 176, !39, i64 180, !46, i64 184, !46, i64 186, !46, i64 188, !46, i64 190, !46, i64 192, !46, i64 194, !46, i64 196, !46, i64 198, !46, i64 200, !46, i64 202, !46, i64 204, !46, i64 206, !46, i64 208, !46, i64 210, !46, i64 212, !46, i64 214, !46, i64 216, !46, i64 218, !46, i64 220, !46, i64 222, !46, i64 224, !46, i64 226, !46, i64 228, !46, i64 230, !35, i64 232, !35, i64 236, !36, i64 240, !36, i64 248, !35, i64 256, !35, i64 260, !35, i64 264, !46, i64 268, !46, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !36, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !46, i64 340, !36, i64 342, !35, i64 348, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !36, i64 376, !35, i64 388, !35, i64 392, !35, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !36, i64 416, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !39, i64 444, !39, i64 448, !35, i64 452, !35, i64 456, !35, i64 460, !35, i64 464, !35, i64 468, !35, i64 472, !35, i64 476, !35, i64 480, !35, i64 484, !35, i64 488, !35, i64 492, !35, i64 496, !35, i64 500, !35, i64 504, !35, i64 508, !35, i64 512, !35, i64 516, !35, i64 520, !35, i64 524, !35, i64 528, !35, i64 532, !35, i64 536, !35, i64 540, !35, i64 544, !35, i64 548, !36, i64 552, !35, i64 560, !35, i64 564, !39, i64 568, !39, i64 572, !36, i64 576, !44, i64 720, !45, i64 728, !44, i64 744, !44, i64 752, !44, i64 760, !44, i64 768, !44, i64 776, !44, i64 784, !46, i64 792, !36, i64 794}
!55 = !{!"ID", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !36, i64 32, !46, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !44, i64 112}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !41}
!58 = !{!44, !44, i64 0}
!59 = !{!43, !39, i64 316}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = !{!64, !44, i64 0}
!64 = !{!"ParticleSimulationData", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !35, i64 40}
!65 = !{!64, !44, i64 16}
!66 = !{i32 0, i32 2}
!67 = !{!64, !44, i64 8}
!68 = !{!69, !39, i64 16}
!69 = !{!"ModifierData", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !44, i64 96, !44, i64 104}
!70 = !{!69, !44, i64 0}
!71 = distinct !{!71, !41}
!72 = !{!73, !44, i64 112}
!73 = !{!"LatticeModifierData", !69, i64 0, !44, i64 112, !36, i64 120, !35, i64 184, !36, i64 188}
!74 = !{!75, !44, i64 168}
!75 = !{!"Scene", !55, i64 0, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !45, i64 152, !44, i64 168, !44, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !46, i64 244, !36, i64 246, !36, i64 247, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !76, i64 280, !85, i64 4264, !45, i64 4296, !45, i64 4312, !44, i64 4328, !44, i64 4336, !44, i64 4344, !44, i64 4352, !44, i64 4360, !44, i64 4368, !46, i64 4376, !46, i64 4378, !39, i64 4380, !45, i64 4384, !86, i64 4400, !87, i64 4416, !90, i64 4600, !44, i64 4608, !91, i64 4616, !44, i64 4640, !92, i64 4648, !92, i64 4656, !78, i64 4664, !79, i64 4824, !93, i64 4888, !44, i64 4952}
!76 = !{!"RenderData", !77, i64 0, !44, i64 248, !44, i64 256, !80, i64 264, !81, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !35, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !46, i64 432, !46, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !46, i64 456, !46, i64 458, !46, i64 460, !46, i64 462, !46, i64 464, !46, i64 466, !39, i64 468, !46, i64 472, !46, i64 474, !46, i64 476, !46, i64 478, !46, i64 480, !46, i64 482, !39, i64 484, !39, i64 488, !46, i64 492, !46, i64 494, !39, i64 496, !39, i64 500, !46, i64 504, !46, i64 506, !46, i64 508, !46, i64 510, !46, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !46, i64 528, !46, i64 530, !46, i64 532, !46, i64 534, !46, i64 536, !46, i64 538, !46, i64 540, !46, i64 542, !82, i64 544, !82, i64 560, !83, i64 576, !45, i64 592, !46, i64 608, !46, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !39, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !46, i64 648, !46, i64 650, !46, i64 652, !46, i64 654, !46, i64 656, !46, i64 658, !35, i64 660, !35, i64 664, !46, i64 668, !46, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !39, i64 1704, !46, i64 1708, !46, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !46, i64 2524, !46, i64 2526, !35, i64 2528, !35, i64 2532, !46, i64 2536, !46, i64 2538, !35, i64 2540, !46, i64 2544, !46, i64 2546, !39, i64 2548, !46, i64 2552, !46, i64 2554, !46, i64 2556, !46, i64 2558, !35, i64 2560, !35, i64 2564, !44, i64 2568, !39, i64 2576, !35, i64 2580, !36, i64 2584, !84, i64 2616, !39, i64 3976, !39, i64 3980}
!77 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !46, i64 8, !46, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !44, i64 144, !44, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!80 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !46, i64 48, !46, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!81 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !35, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !44, i64 64}
!82 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!83 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!84 = !{!"BakeData", !77, i64 0, !36, i64 248, !46, i64 1272, !46, i64 1274, !46, i64 1276, !46, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!85 = !{!"AudioData", !39, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !39, i64 16, !46, i64 20, !46, i64 22, !35, i64 24, !35, i64 28}
!86 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!87 = !{!"GameData", !86, i64 0, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !46, i64 32, !36, i64 34, !88, i64 40, !46, i64 64, !46, i64 66, !35, i64 68, !89, i64 72, !35, i64 128, !35, i64 132, !39, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !46, i64 156, !46, i64 158, !46, i64 160, !46, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!88 = !{!"GameDome", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !35, i64 8, !35, i64 12, !44, i64 16}
!89 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !39, i64 40, !35, i64 44, !35, i64 48, !46, i64 52, !46, i64 54}
!90 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !46, i64 6}
!91 = !{!"PhysicsSettings", !36, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!92 = !{!"long", !36, i64 0}
!93 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!94 = !{!95, !44, i64 32}
!95 = !{!"Base", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !46, i64 28, !46, i64 30, !44, i64 32}
!96 = !{!97, !39, i64 432}
!97 = !{!"Object", !55, i64 0, !44, i64 120, !44, i64 128, !46, i64 136, !46, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !98, i64 312, !44, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !39, i64 432, !39, i64 436, !44, i64 440, !44, i64 448, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !39, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !36, i64 966, !36, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !36, i64 1042, !36, i64 1043, !46, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !35, i64 1120, !46, i64 1124, !46, i64 1126, !36, i64 1128, !39, i64 1144, !39, i64 1148, !44, i64 1152, !36, i64 1160, !36, i64 1161, !46, i64 1162, !36, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !44, i64 1240, !44, i64 1248, !44, i64 1256, !36, i64 1264, !36, i64 1265, !46, i64 1266, !35, i64 1268, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !92, i64 1304, !92, i64 1312, !39, i64 1320, !39, i64 1324, !45, i64 1328, !45, i64 1344, !44, i64 1360, !44, i64 1368, !44, i64 1376, !36, i64 1384, !44, i64 1392, !45, i64 1400, !44, i64 1416}
!98 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!99 = !{!43, !44, i64 40}
!100 = !{!43, !44, i64 576}
!101 = !{!102, !44, i64 1304}
!102 = !{!"PointCache", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !46, i64 60, !46, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !44, i64 1280, !45, i64 1288, !44, i64 1304, !44, i64 1312}
!103 = !{!43, !44, i64 568}
!104 = !{!105, !44, i64 112}
!105 = !{!"ParticleSystemModifierData", !69, i64 0, !44, i64 112, !44, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !46, i64 140, !46, i64 142}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = !{!105, !39, i64 20}
!110 = !{!54, !46, i64 160}
!111 = !{!112, !39, i64 308}
!112 = !{!"PTCacheEdit", !45, i64 0, !44, i64 16, !44, i64 24, !113, i64 32, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !45, i64 280, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !36, i64 312, !36, i64 315}
!113 = !{!"PTCacheID", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192}
!114 = !{!54, !46, i64 192}
!115 = !{!54, !44, i64 720}
!116 = !{!54, !44, i64 728}
!117 = !{!118, !44, i64 16}
!118 = !{!"ParticleDupliWeight", !44, i64 0, !44, i64 8, !44, i64 16, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30}
!119 = !{!118, !44, i64 0}
!120 = distinct !{!120, !41}
!121 = !{!122, !44, i64 16}
!122 = !{!"GroupObject", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !46, i64 32, !36, i64 34}
!123 = distinct !{!123, !41}
!124 = !{!118, !46, i64 24}
!125 = distinct !{!125, !41}
!126 = !{!118, !46, i64 26}
!127 = distinct !{!127, !41}
!128 = !{!75, !39, i64 4628}
!129 = !{!54, !44, i64 144}
!130 = !{!131, !35, i64 64}
!131 = !{!"EffectorWeights", !44, i64 0, !36, i64 8, !35, i64 64, !46, i64 68, !36, i64 70, !39, i64 76}
!132 = !{!54, !44, i64 776}
!133 = !{!54, !44, i64 784}
!134 = !{!54, !44, i64 128}
!135 = !{!54, !44, i64 136}
!136 = !{!137, !44, i64 16}
!137 = !{!"MTex", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !44, i64 8, !44, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !46, i64 120, !46, i64 122, !46, i64 124, !46, i64 126, !46, i64 128, !46, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!138 = !{!139, !39, i64 100}
!139 = !{!"Tex", !55, i64 0, !44, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !46, i64 216, !46, i64 218, !46, i64 220, !46, i64 222, !46, i64 224, !46, i64 226, !46, i64 228, !46, i64 230, !46, i64 232, !46, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !39, i64 252, !39, i64 256, !46, i64 260, !46, i64 262, !46, i64 264, !46, i64 266, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !140, i64 296, !44, i64 336, !44, i64 344, !44, i64 352, !44, i64 360, !44, i64 368, !44, i64 376, !44, i64 384, !44, i64 392, !44, i64 400, !36, i64 408, !36, i64 409}
!140 = !{!"ImageUser", !44, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !46, i64 28, !46, i64 30, !46, i64 32, !46, i64 34, !39, i64 36}
!141 = distinct !{!141, !41}
!142 = !{!"particle.c:fluid_free_settings"}
!143 = !{!50, !44, i64 112}
!144 = !{!50, !39, i64 136}
!145 = distinct !{!145, !41}
!146 = !{!43, !44, i64 104}
!147 = !{!148, !44, i64 144}
!148 = !{!"ClothModifierData", !69, i64 0, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !45, i64 152}
!149 = !{!43, !44, i64 112}
!150 = !{!151, !44, i64 1680}
!151 = !{!"DerivedMesh", !152, i64 0, !152, i64 200, !152, i64 400, !152, i64 600, !152, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !44, i64 1032, !44, i64 1040, !39, i64 1048, !35, i64 1052, !39, i64 1056, !39, i64 1060, !44, i64 1064, !36, i64 1072, !44, i64 1080, !44, i64 1088, !44, i64 1096, !44, i64 1104, !44, i64 1112, !44, i64 1120, !44, i64 1128, !44, i64 1136, !44, i64 1144, !44, i64 1152, !44, i64 1160, !44, i64 1168, !44, i64 1176, !44, i64 1184, !44, i64 1192, !44, i64 1200, !44, i64 1208, !44, i64 1216, !44, i64 1224, !44, i64 1232, !44, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !44, i64 1304, !44, i64 1312, !44, i64 1320, !44, i64 1328, !44, i64 1336, !44, i64 1344, !44, i64 1352, !44, i64 1360, !44, i64 1368, !44, i64 1376, !44, i64 1384, !44, i64 1392, !44, i64 1400, !44, i64 1408, !44, i64 1416, !44, i64 1424, !44, i64 1432, !44, i64 1440, !44, i64 1448, !44, i64 1456, !44, i64 1464, !44, i64 1472, !44, i64 1480, !44, i64 1488, !44, i64 1496, !44, i64 1504, !44, i64 1512, !44, i64 1520, !44, i64 1528, !44, i64 1536, !44, i64 1544, !44, i64 1552, !44, i64 1560, !44, i64 1568, !44, i64 1576, !44, i64 1584, !44, i64 1592, !44, i64 1600, !44, i64 1608, !44, i64 1616, !44, i64 1624, !44, i64 1632, !44, i64 1640, !44, i64 1648, !44, i64 1656, !44, i64 1664, !44, i64 1672, !44, i64 1680}
!152 = !{!"CustomData", !44, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !44, i64 184, !44, i64 192}
!153 = !{!43, !44, i64 120}
!154 = !{!"particle.c:BLI_listbase_clear"}
!155 = !{!50, !44, i64 120}
!156 = distinct !{!156, !41}
!157 = !{!112, !44, i64 272}
!158 = !{!112, !39, i64 304}
!159 = !{!43, !44, i64 56}
!160 = !{!43, !39, i64 332}
!161 = !{!"particle.c:psys_free_path_cache_buffers"}
!162 = !{!163, !44, i64 16}
!163 = !{!"LinkData", !44, i64 0, !44, i64 8, !44, i64 16}
!164 = distinct !{!164, !41}
!165 = !{!"particle.c:free_child_path_cache"}
!166 = !{!43, !44, i64 64}
!167 = !{!43, !39, i64 336}
!168 = !{!43, !44, i64 32}
!169 = !{!43, !39, i64 328}
!170 = distinct !{!170, !41}
!171 = !{!50, !44, i64 128}
!172 = !{!43, !44, i64 640}
!173 = !{!174, !44, i64 32}
!174 = !{!"ParticleDrawData", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!175 = !{!174, !44, i64 0}
!176 = !{!174, !44, i64 16}
!177 = !{!174, !44, i64 48}
!178 = !{!174, !39, i64 80}
!179 = !{!174, !39, i64 72}
!180 = !{!43, !44, i64 48}
!181 = distinct !{!181, !41}
!182 = !{!97, !46, i64 952}
!183 = !{!54, !39, i64 100}
!184 = !{!43, !44, i64 632}
!185 = !{!43, !44, i64 624}
!186 = !{!43, !44, i64 608}
!187 = !{!188, !44, i64 0}
!188 = !{!"ParticleRenderData", !44, i64 0, !44, i64 8, !44, i64 16, !45, i64 24, !45, i64 40, !39, i64 56, !39, i64 60, !39, i64 64, !44, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !36, i64 92, !36, i64 156, !36, i64 220, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !44, i64 304, !44, i64 312, !44, i64 320}
!189 = !{!188, !39, i64 64}
!190 = !{!105, !44, i64 120}
!191 = !{!188, !44, i64 72}
!192 = !{!105, !39, i64 136}
!193 = !{!188, !39, i64 88}
!194 = !{!188, !39, i64 284}
!195 = !{!188, !39, i64 288}
!196 = !{!188, !39, i64 296}
!197 = !{!54, !46, i64 210}
!198 = !{!43, !46, i64 340}
!199 = !{!188, !44, i64 304}
!200 = !{!151, !39, i64 1020}
!201 = !{!105, !46, i64 140}
!202 = distinct !{!202, !41}
!203 = !{!"particle.c:psys_frand"}
!204 = !{!43, !39, i64 308}
!205 = !{!206, !44, i64 48}
!206 = !{!"ParticleThreadContext", !64, i64 0, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !39, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !35, i64 112, !44, i64 120, !44, i64 128, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !44, i64 152, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !35, i64 184, !44, i64 192, !44, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240}
!207 = !{!206, !44, i64 8}
!208 = !{!97, !44, i64 296}
!209 = !{!206, !44, i64 16}
!210 = !{!54, !39, i64 176}
!211 = !{!54, !46, i64 268}
!212 = !{!151, !44, i64 1168}
!213 = !{!151, !44, i64 1184}
!214 = !{!151, !44, i64 1120}
!215 = !{!216, !39, i64 1296}
!216 = !{!"Mesh", !55, i64 0, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192, !44, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !152, i64 280, !152, i64 480, !152, i64 680, !152, i64 880, !152, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !39, i64 1344, !46, i64 1348, !46, i64 1350, !35, i64 1352, !39, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !46, i64 1366, !44, i64 1368}
!217 = !{!151, !44, i64 1336}
!218 = !{!151, !44, i64 1352}
!219 = !{!188, !39, i64 292}
!220 = !{!188, !44, i64 312}
!221 = !{!188, !44, i64 320}
!222 = !{!206, !44, i64 120}
!223 = !{!224, !39, i64 4}
!224 = !{!"ParticleRenderElem", !39, i64 0, !39, i64 4, !39, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24}
!225 = distinct !{!225, !41}
!226 = !{!227, !39, i64 0}
!227 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !46, i64 16, !36, i64 18, !36, i64 19}
!228 = !{!227, !39, i64 4}
!229 = !{!227, !39, i64 8}
!230 = !{!227, !39, i64 12}
!231 = distinct !{!231, !41}
!232 = distinct !{!232, !41}
!233 = !{!54, !46, i64 270}
!234 = !{!54, !35, i64 272}
!235 = !{!54, !35, i64 280}
!236 = !{!54, !35, i64 276}
!237 = !{!224, !35, i64 16}
!238 = !{!224, !39, i64 8}
!239 = !{!224, !35, i64 24}
!240 = !{!224, !35, i64 20}
!241 = !{!224, !35, i64 12}
!242 = !{!224, !39, i64 0}
!243 = distinct !{!243, !41}
!244 = !{!206, !44, i64 128}
!245 = distinct !{!245, !41}
!246 = distinct !{!246, !41}
!247 = !{!"particle.c:DM_origindex_mface_mpoly"}
!248 = !{!"particle.c:copy_v3_v3"}
!249 = !{!"particle.c:add_v3_v3"}
!250 = !{!"particle.c:mul_v3_fl"}
!251 = !{!"particle.c:psys_render_projected_area"}
!252 = !{!"particle.c:min_ii"}
!253 = !{!254, !39, i64 0}
!254 = !{!"ChildParticle", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 24, !36, i64 40, !35, i64 56, !35, i64 60}
!255 = !{!"particle.c:sub_v3_v3v3"}
!256 = !{!257, !39, i64 16}
!257 = !{!"PTCacheMem", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !36, i64 96, !45, i64 160}
!258 = distinct !{!258, !41}
!259 = !{!227, !36, i64 19}
!260 = !{!"particle.c:normal_short_to_float_v3"}
!261 = !{!46, !46, i64 0}
!262 = !{!36, !36, i64 0}
!263 = !{!151, !44, i64 1200}
!264 = !{!265, !44, i64 8}
!265 = !{!"LinkNode", !44, i64 0, !44, i64 8}
!266 = !{!267, !39, i64 4}
!267 = !{!"MPoly", !39, i64 0, !39, i64 4, !46, i64 8, !36, i64 10, !36, i64 11}
!268 = !{!265, !44, i64 0}
!269 = distinct !{!269, !41}
!270 = distinct !{!270, !41}
!271 = !{!"particle.c:psys_w_to_origspace"}
!272 = !{!151, !44, i64 1320}
!273 = !{!151, !44, i64 1528}
!274 = !{!151, !44, i64 1544}
!275 = !{!151, !44, i64 1304}
!276 = !{!"particle.c:psys_map_index_on_dm"}
!277 = !{!151, !39, i64 1024}
!278 = !{!151, !44, i64 1104}
!279 = !{!"particle.c:normalize_v3"}
!280 = !{!50, !39, i64 152}
!281 = !{!50, !39, i64 156}
!282 = !{!"particle.c:psys_interpolate_value_from_verts"}
!283 = !{!54, !46, i64 164}
!284 = !{!54, !46, i64 162}
!285 = !{!"particle.c:psys_particle_on_shape"}
!286 = !{!64, !44, i64 24}
!287 = !{!50, !35, i64 176}
!288 = !{!289, !44, i64 48}
!289 = !{!"EffectorCache", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !36, i64 64, !36, i64 80, !35, i64 92, !36, i64 96, !35, i64 108, !39, i64 112}
!290 = !{!291, !46, i64 6}
!291 = !{!"PartDeflect", !39, i64 0, !46, i64 4, !46, i64 6, !46, i64 8, !46, i64 10, !46, i64 12, !46, i64 14, !46, i64 16, !46, i64 18, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !44, i64 128, !44, i64 136, !35, i64 144, !39, i64 148, !44, i64 152}
!292 = !{!289, !44, i64 56}
!293 = !{!294, !35, i64 48}
!294 = !{!"EffectorData", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !36, i64 64, !36, i64 76, !44, i64 88}
!295 = !{!296, !35, i64 12}
!296 = !{!"GuideEffectorData", !36, i64 0, !35, i64 12}
!297 = distinct !{!297, !41}
!298 = distinct !{!298, !41}
!299 = !{!"particle.c:len_v3"}
!300 = !{!291, !35, i64 120}
!301 = !{!289, !44, i64 24}
!302 = !{!291, !39, i64 0}
!303 = !{!304, !44, i64 168}
!304 = !{!"Curve", !55, i64 0, !44, i64 120, !44, i64 128, !45, i64 136, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192, !44, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !46, i64 244, !46, i64 246, !46, i64 248, !46, i64 250, !35, i64 252, !35, i64 256, !39, i64 260, !46, i64 264, !46, i64 266, !39, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !46, i64 284, !46, i64 286, !46, i64 288, !46, i64 290, !39, i64 292, !39, i64 296, !36, i64 300, !46, i64 304, !36, i64 306, !36, i64 307, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !44, i64 368, !44, i64 376, !36, i64 384, !44, i64 448, !44, i64 456, !44, i64 464, !44, i64 472, !44, i64 480, !39, i64 488, !39, i64 492, !44, i64 496, !305, i64 504, !35, i64 512, !35, i64 516, !35, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!305 = !{!"CharInfo", !46, i64 0, !46, i64 2, !36, i64 4, !36, i64 5, !46, i64 6}
!306 = !{!289, !44, i64 16}
!307 = !{!304, !39, i64 268}
!308 = !{!291, !35, i64 108}
!309 = !{!291, !35, i64 112}
!310 = !{!291, !35, i64 116}
!311 = !{!291, !46, i64 14}
!312 = !{!291, !46, i64 16}
!313 = !{!291, !35, i64 100}
!314 = !{!291, !35, i64 104}
!315 = distinct !{!315, !41}
!316 = !{!"particle.c:cross_v3_v3v3"}
!317 = !{!"particle.c:dot_v3v3"}
!318 = !{!"particle.c:saacos"}
!319 = !{!"particle.c:do_kink"}
!320 = !{!"particle.c:do_clump"}
!321 = !{!"particle.c:madd_v3_v3fl"}
!322 = !{!43, !46, i64 564}
!323 = distinct !{!323, !41}
!324 = distinct !{!324, !41}
!325 = !{!54, !35, i64 452}
!326 = !{!54, !39, i64 444}
!327 = !{!54, !39, i64 448}
!328 = !{!254, !35, i64 56}
!329 = distinct !{!329, !41}
!330 = !{!254, !39, i64 4}
!331 = distinct !{!331, !41}
!332 = !{!333, !44, i64 0}
!333 = !{!"ParticleThread", !44, i64 0, !44, i64 8, !44, i64 16, !39, i64 24, !39, i64 28}
!334 = !{!206, !39, i64 172}
!335 = !{!206, !39, i64 176}
!336 = !{!206, !39, i64 168}
!337 = !{!333, !39, i64 28}
!338 = !{!206, !39, i64 180}
!339 = distinct !{!339, !41}
!340 = distinct !{!340, !41}
!341 = distinct !{!341, !41}
!342 = !{!"particle.c:psys_threads_init_path"}
!343 = !{!54, !46, i64 198}
!344 = !{!75, !44, i64 264}
!345 = !{!346, !46, i64 0}
!346 = !{!"ParticleEditSettings", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !36, i64 8, !44, i64 120, !35, i64 128, !35, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !44, i64 152, !44, i64 160}
!347 = !{!346, !39, i64 144}
!348 = !{!54, !46, i64 188}
!349 = !{!54, !46, i64 200}
!350 = !{!206, !39, i64 160}
!351 = !{!333, !44, i64 16}
!352 = distinct !{!352, !41}
!353 = !{!206, !39, i64 164}
!354 = !{!206, !35, i64 184}
!355 = !{!43, !44, i64 136}
!356 = !{!206, !44, i64 192}
!357 = !{!206, !44, i64 200}
!358 = !{!206, !44, i64 208}
!359 = !{!206, !44, i64 216}
!360 = !{!206, !44, i64 224}
!361 = !{!206, !44, i64 232}
!362 = !{!206, !44, i64 240}
!363 = !{!"particle.c:psys_alloc_path_cache_buffers"}
!364 = distinct !{!364, !41}
!365 = distinct !{!365, !41}
!366 = !{!"particle.c:exec_child_path_cache"}
!367 = !{!333, !39, i64 24}
!368 = distinct !{!368, !41}
!369 = !{!102, !44, i64 1288}
!370 = !{!54, !46, i64 212}
!371 = !{!54, !46, i64 196}
!372 = !{!373, !35, i64 32}
!373 = !{!"ParticleTexture", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56}
!374 = !{!54, !35, i64 440}
!375 = !{!376, !39, i64 40}
!376 = !{!"ParticleInterpolationData", !36, i64 0, !44, i64 16, !36, i64 24, !39, i64 40, !36, i64 48, !44, i64 64, !44, i64 72, !44, i64 80, !36, i64 88, !35, i64 104, !35, i64 108, !39, i64 112}
!377 = !{!376, !44, i64 64}
!378 = !{!376, !44, i64 80}
!379 = !{!376, !39, i64 112}
!380 = !{!376, !44, i64 16}
!381 = !{!382, !39, i64 56}
!382 = !{!"ParticleCacheKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !35, i64 52, !39, i64 56}
!383 = !{!376, !35, i64 104}
!384 = !{!376, !35, i64 108}
!385 = !{!51, !35, i64 52}
!386 = distinct !{!386, !41}
!387 = distinct !{!387, !41}
!388 = !{!43, !44, i64 600}
!389 = distinct !{!389, !41}
!390 = distinct !{!390, !41}
!391 = !{!382, !35, i64 52}
!392 = distinct !{!392, !41}
!393 = distinct !{!393, !41}
!394 = !{!373, !35, i64 56}
!395 = !{!373, !35, i64 0}
!396 = !{!373, !35, i64 4}
!397 = !{!137, !46, i64 2}
!398 = !{!137, !35, i64 156}
!399 = !{!137, !46, i64 6}
!400 = !{!137, !46, i64 0}
!401 = !{!137, !44, i64 8}
!402 = !{!216, !44, i64 128}
!403 = !{!404, !39, i64 96}
!404 = !{!"BoundBox", !36, i64 0, !39, i64 96, !39, i64 100}
!405 = !{!50, !35, i64 140}
!406 = !{!50, !35, i64 148}
!407 = !{!137, !35, i64 248}
!408 = !{!373, !35, i64 8}
!409 = !{!137, !35, i64 280}
!410 = !{!373, !35, i64 12}
!411 = !{!137, !35, i64 272}
!412 = !{!373, !35, i64 16}
!413 = !{!137, !35, i64 284}
!414 = !{!137, !35, i64 288}
!415 = !{!373, !35, i64 28}
!416 = !{!137, !35, i64 292}
!417 = !{!373, !35, i64 24}
!418 = !{!137, !35, i64 276}
!419 = !{!373, !35, i64 20}
!420 = !{!137, !35, i64 260}
!421 = !{!137, !35, i64 252}
!422 = distinct !{!422, !41}
!423 = !{!"particle.c:init_particle_interpolation"}
!424 = !{!425, !44, i64 0}
!425 = !{!"PTCacheEditPoint", !44, i64 0, !39, i64 8, !46, i64 12}
!426 = !{!425, !39, i64 8}
!427 = !{!428, !44, i64 24}
!428 = !{!"PTCacheEditKey", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !36, i64 32, !35, i64 44, !35, i64 48, !46, i64 52}
!429 = !{!102, !39, i64 28}
!430 = !{!102, !39, i64 32}
!431 = !{!432, !35, i64 12}
!432 = !{!"HairKey", !36, i64 0, !35, i64 12, !35, i64 16, !46, i64 20, !46, i64 22}
!433 = !{!50, !39, i64 192}
!434 = !{!"particle.c:do_particle_interpolation"}
!435 = !{!428, !44, i64 8}
!436 = distinct !{!436, !41}
!437 = !{!54, !46, i64 168}
!438 = !{!43, !44, i64 152}
!439 = !{!440, !44, i64 0}
!440 = !{!"ParticleTarget", !44, i64 0, !44, i64 8, !44, i64 16, !39, i64 24, !46, i64 28, !46, i64 30, !35, i64 32, !35, i64 36}
!441 = !{!440, !35, i64 32}
!442 = distinct !{!442, !41}
!443 = !{!440, !44, i64 8}
!444 = !{!440, !35, i64 36}
!445 = !{!43, !44, i64 160}
!446 = distinct !{!446, !41}
!447 = distinct !{!447, !41}
!448 = !{!54, !35, i64 300}
!449 = !{!"particle.c:do_path_effectors"}
!450 = !{!64, !44, i64 32}
!451 = !{!54, !35, i64 312}
!452 = !{!"particle.c:cache_key_incremental_rotation"}
!453 = !{!112, !44, i64 232}
!454 = !{!112, !39, i64 296}
!455 = !{!112, !44, i64 24}
!456 = !{!425, !46, i64 12}
!457 = distinct !{!457, !41}
!458 = !{!346, !46, i64 6}
!459 = !{!432, !35, i64 16}
!460 = distinct !{!460, !41}
!461 = !{!428, !46, i64 52}
!462 = distinct !{!462, !41}
!463 = distinct !{!463, !41}
!464 = distinct !{!464, !41}
!465 = !{!"particle.c:psys_face_mat"}
!466 = !{!97, !46, i64 136}
!467 = distinct !{!467, !41}
!468 = !{!75, !39, i64 680}
!469 = !{!43, !35, i64 296}
!470 = !{!471, !44, i64 0}
!471 = !{!"Global", !44, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !45, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !36, i64 2090, !46, i64 2092, !39, i64 2096, !39, i64 2100, !36, i64 2104, !39, i64 2108, !39, i64 2112, !36, i64 2116}
!472 = !{!473, !39, i64 140}
!473 = !{!"SmokeModifierData", !69, i64 0, !44, i64 112, !44, i64 120, !44, i64 128, !35, i64 136, !39, i64 140}
!474 = !{!473, !44, i64 120}
!475 = !{!476, !44, i64 16}
!476 = !{!"SmokeFlowSettings", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !39, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !39, i64 92, !35, i64 96, !35, i64 100, !39, i64 104, !36, i64 108, !46, i64 172, !46, i64 174, !46, i64 176, !46, i64 178, !39, i64 180}
!477 = !{!478, !44, i64 120}
!478 = !{!"DynamicPaintModifierData", !69, i64 0, !44, i64 112, !44, i64 120, !39, i64 128, !39, i64 132}
!479 = !{!480, !44, i64 16}
!480 = !{!"DynamicPaintBrushSettings", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !39, i64 32, !39, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !44, i64 72, !44, i64 80, !46, i64 88, !46, i64 90, !46, i64 92, !46, i64 94, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108}
!481 = !{!97, !44, i64 1224}
!482 = !{!"particle.c:default_particle_settings"}
!483 = !{!54, !46, i64 184}
!484 = !{!54, !46, i64 226}
!485 = !{!54, !46, i64 224}
!486 = !{!54, !46, i64 230}
!487 = !{!54, !35, i64 308}
!488 = !{!54, !39, i64 324}
!489 = !{!54, !39, i64 332}
!490 = !{!54, !46, i64 216}
!491 = !{!54, !46, i64 206}
!492 = !{!54, !46, i64 208}
!493 = !{!54, !46, i64 222}
!494 = !{!54, !35, i64 496}
!495 = !{!54, !35, i64 348}
!496 = !{!54, !35, i64 456}
!497 = !{!54, !35, i64 484}
!498 = !{!54, !35, i64 504}
!499 = !{!54, !35, i64 512}
!500 = !{!54, !35, i64 532}
!501 = !{!54, !39, i64 572}
!502 = !{!54, !35, i64 264}
!503 = !{!54, !46, i64 792}
!504 = distinct !{!504, !41}
!505 = !{!54, !44, i64 24}
!506 = distinct !{!506, !41}
!507 = !{!97, !44, i64 24}
!508 = distinct !{!508, !41}
!509 = distinct !{!509, !41}
!510 = distinct !{!510, !41}
!511 = !{!"particle.c:expand_local_particlesettings"}
!512 = distinct !{!512, !41}
!513 = !{!"particle.c:get_particle_uv"}
!514 = !{!"particle.c:sub_v3_v3"}
!515 = distinct !{!515, !41}
!516 = !{!54, !35, i64 292}
!517 = !{!54, !35, i64 296}
!518 = !{!50, !35, i64 144}
!519 = !{!54, !35, i64 460}
!520 = distinct !{!520, !41}
!521 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58, i64 24, i64 8, !58, i64 32, i64 8, !58, i64 40, i64 4, !34}
!522 = !{!206, !44, i64 56}
!523 = distinct !{!523, !41}
!524 = !{!54, !35, i64 468}
!525 = !{!54, !35, i64 464}
!526 = !{!"particle.c:interpolate_pathcache"}
!527 = !{i64 0, i64 12, !262, i64 12, i64 12, !262, i64 24, i64 16, !262, i64 40, i64 12, !262, i64 52, i64 4, !34, i64 56, i64 4, !38}
!528 = !{!"particle.c:get_child_modifier_parameters"}
!529 = !{!373, !35, i64 36}
!530 = !{!373, !35, i64 40}
!531 = !{!373, !35, i64 48}
!532 = !{!373, !35, i64 52}
!533 = !{!373, !35, i64 44}
!534 = !{!"particle.c:offset_child"}
!535 = !{!"particle.c:do_child_modifiers"}
!536 = !{!54, !35, i64 500}
!537 = !{!54, !35, i64 508}
!538 = !{!54, !35, i64 520}
!539 = !{!54, !35, i64 472}
!540 = !{!54, !35, i64 476}
!541 = !{!54, !35, i64 480}
!542 = !{!54, !35, i64 488}
!543 = !{!54, !35, i64 492}
!544 = !{!54, !46, i64 220}
!545 = !{!54, !35, i64 516}
!546 = !{!54, !35, i64 524}
!547 = !{!54, !35, i64 284}
!548 = !{!54, !35, i64 288}
!549 = !{!50, !35, i64 52}
!550 = !{!50, !35, i64 108}
!551 = !{!75, !46, i64 820}
!552 = !{!"particle.c:madd_v3_v3v3fl"}
!553 = !{!54, !46, i64 170}
!554 = !{!54, !35, i64 392}
!555 = !{!54, !35, i64 400}
!556 = !{!557, !46, i64 88}
!557 = !{!"ParticleBillboardData", !44, i64 0, !36, i64 8, !36, i64 20, !36, i64 32, !36, i64 40, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !46, i64 88, !46, i64 90, !46, i64 92, !46, i64 94}
!558 = !{!557, !39, i64 72}
!559 = !{!557, !44, i64 0}
!560 = !{!557, !35, i64 48}
!561 = !{!"particle.c:zero_v3"}
!562 = !{!"particle.c:normalize_v3_v3"}
!563 = distinct !{!563, !41}
!564 = distinct !{!564, !41}
!565 = !{!"particle.c:psys_render_viewport_falloff"}
!566 = !{!"particle.c:copy_v4_v4"}
!567 = !{!"particle.c:psys_origspace_to_w"}
!568 = !{!"particle.c:interpolate_particle_value"}
!569 = !{!"particle.c:negate_v3"}
!570 = !{!"particle.c:add_v3_v3v3"}
!571 = !{!"particle.c:mul_v3_v3fl"}
!572 = !{!"particle.c:psys_thread_create_path"}
!573 = !{!206, !44, i64 0}
!574 = !{!54, !35, i64 540}
!575 = !{!54, !35, i64 544}
!576 = !{!54, !35, i64 536}
!577 = distinct !{!577, !41}
!578 = distinct !{!578, !41}
!579 = distinct !{!579, !41}
!580 = !{!206, !44, i64 24}
!581 = distinct !{!581, !41}
!582 = distinct !{!582, !41}
!583 = distinct !{!583, !41}
!584 = distinct !{!584, !41}
!585 = !{i32 1, i32 0}
!586 = distinct !{!586, !41}
!587 = !{!"particle.c:len_v3v3"}
!588 = !{!"particle.c:get_strand_normal"}
!589 = !{!590, !39, i64 396}
!590 = !{!"Material", !55, i64 0, !44, i64 120, !46, i64 128, !46, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !591, i64 224, !592, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !46, i64 356, !46, i64 358, !46, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !46, i64 372, !46, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !46, i64 392, !46, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !46, i64 412, !46, i64 414, !46, i64 416, !46, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !39, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !46, i64 544, !46, i64 546, !46, i64 548, !36, i64 550, !36, i64 551, !46, i64 552, !46, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !46, i64 588, !46, i64 590, !44, i64 592, !44, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !46, i64 612, !46, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !44, i64 768, !44, i64 776, !44, i64 784, !44, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !46, i64 820, !46, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !46, i64 876, !46, i64 878, !39, i64 880, !46, i64 884, !46, i64 886, !36, i64 888, !46, i64 904, !46, i64 906, !46, i64 908, !46, i64 910, !46, i64 912, !36, i64 914, !44, i64 920, !45, i64 928}
!591 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !46, i64 64, !46, i64 66, !46, i64 68, !46, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!592 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!593 = !{!590, !35, i64 448}
!594 = !{!"particle.c:check_path_length"}
!595 = !{!"particle.c:get_pointcache_keys_for_time"}
!596 = !{!257, !44, i64 0}
!597 = distinct !{!597, !41}
!598 = !{!257, !44, i64 8}
!599 = !{!"particle.c:get_pointcache_times_for_particle"}
!600 = distinct !{!600, !41}
!601 = distinct !{!601, !41}
!602 = !{!"particle.c:edit_to_particle"}
!603 = !{!428, !44, i64 0}
!604 = !{!"particle.c:mvert_to_particle"}
!605 = !{!"particle.c:hair_to_particle"}
!606 = !{!"particle.c:triatomat"}
!607 = !{!"particle.c:get_cpa_texture"}
!608 = !{!54, !35, i64 528}
!609 = !{!137, !35, i64 268}
!610 = !{!137, !35, i64 256}
!611 = !{!137, !35, i64 264}
!612 = distinct !{!612, !41}
!613 = !{!"particle.c:do_rough"}
!614 = !{!"particle.c:psys_frand_vec"}
!615 = !{!"particle.c:do_rough_end"}
!616 = !{!"particle.c:copy_v2_v2"}
!617 = !{!"particle.c:mul_v2_fl"}
